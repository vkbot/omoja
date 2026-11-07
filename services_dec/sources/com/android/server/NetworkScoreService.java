package com.android.server;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.database.ContentObserver;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.INetworkRecommendationProvider;
import android.net.INetworkScoreCache;
import android.net.INetworkScoreService;
import android.net.NetworkKey;
import android.net.NetworkScorerAppData;
import android.net.ScoredNetwork;
import android.net.Uri;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiScanner;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import com.android.internal.content.PackageMonitor;
import com.android.internal.util.DumpUtils;
import com.android.server.pm.permission.PermissionManagerServiceInternal;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.function.UnaryOperator;

/* JADX INFO: loaded from: classes.dex */
public class NetworkScoreService extends INetworkScoreService.Stub {
    private static final boolean DBG;
    private static final String TAG = "NetworkScoreService";
    private static final boolean VERBOSE;
    private final Context mContext;
    private final Handler mHandler;
    private BroadcastReceiver mLocationModeReceiver;
    private final NetworkScorerAppManager mNetworkScorerAppManager;
    private NetworkScorerPackageMonitor mPackageMonitor;
    private final Object mPackageMonitorLock;
    private final DispatchingContentObserver mRecommendationSettingsObserver;
    private final Map<Integer, RemoteCallbackList<INetworkScoreCache>> mScoreCaches;
    private final Function<NetworkScorerAppData, ScoringServiceConnection> mServiceConnProducer;
    private ScoringServiceConnection mServiceConnection;
    private final Object mServiceConnectionLock;
    private final ContentObserver mUseOpenWifiPackageObserver;
    private BroadcastReceiver mUserIntentReceiver;

    static {
        DBG = Build.IS_DEBUGGABLE && Log.isLoggable(TAG, 3);
        VERBOSE = Build.IS_DEBUGGABLE && Log.isLoggable(TAG, 2);
    }

    public static final class Lifecycle extends SystemService {
        private final NetworkScoreService mService;

        public Lifecycle(Context context) {
            super(context);
            this.mService = new NetworkScoreService(context);
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            Log.i(NetworkScoreService.TAG, "Registering network_score");
            publishBinderService("network_score", this.mService);
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            if (phase == 500) {
                this.mService.systemReady();
            } else if (phase == 1000) {
                this.mService.systemRunning();
            }
        }
    }

    private class NetworkScorerPackageMonitor extends PackageMonitor {
        final String mPackageToWatch;

        private NetworkScorerPackageMonitor(String packageToWatch) {
            this.mPackageToWatch = packageToWatch;
        }

        public void onPackageAdded(String packageName, int uid) {
            evaluateBinding(packageName, true);
        }

        public void onPackageRemoved(String packageName, int uid) {
            evaluateBinding(packageName, true);
        }

        public void onPackageModified(String packageName) {
            evaluateBinding(packageName, false);
        }

        public boolean onHandleForceStop(Intent intent, String[] packages, int uid, boolean doit) {
            if (doit) {
                for (String packageName : packages) {
                    evaluateBinding(packageName, true);
                }
            }
            return super.onHandleForceStop(intent, packages, uid, doit);
        }

        public void onPackageUpdateFinished(String packageName, int uid) {
            evaluateBinding(packageName, true);
        }

        private void evaluateBinding(String changedPackageName, boolean forceUnbind) {
            if (this.mPackageToWatch.equals(changedPackageName)) {
                if (NetworkScoreService.DBG) {
                    Log.d(NetworkScoreService.TAG, "Evaluating binding for: " + changedPackageName + ", forceUnbind=" + forceUnbind);
                }
                NetworkScorerAppData activeScorer = NetworkScoreService.this.mNetworkScorerAppManager.getActiveScorer();
                if (activeScorer == null) {
                    if (NetworkScoreService.DBG) {
                        Log.d(NetworkScoreService.TAG, "No active scorers available.");
                    }
                    NetworkScoreService.this.refreshBinding();
                    return;
                }
                if (forceUnbind) {
                    NetworkScoreService.this.unbindFromScoringServiceIfNeeded();
                }
                if (NetworkScoreService.DBG) {
                    Log.d(NetworkScoreService.TAG, "Binding to " + activeScorer.getRecommendationServiceComponent() + " if needed.");
                }
                NetworkScoreService.this.bindToScoringServiceIfNeeded(activeScorer);
            }
        }
    }

    public static class DispatchingContentObserver extends ContentObserver {
        private final Context mContext;
        private final Handler mHandler;
        private final Map<Uri, Integer> mUriEventMap;

        public DispatchingContentObserver(Context context, Handler handler) {
            super(handler);
            this.mContext = context;
            this.mHandler = handler;
            this.mUriEventMap = new ArrayMap();
        }

        void observe(Uri uri, int what) {
            this.mUriEventMap.put(uri, Integer.valueOf(what));
            ContentResolver resolver = this.mContext.getContentResolver();
            resolver.registerContentObserver(uri, false, this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            onChange(selfChange, null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            if (NetworkScoreService.DBG) {
                Log.d(NetworkScoreService.TAG, String.format("onChange(%s, %s)", Boolean.valueOf(selfChange), uri));
            }
            Integer what = this.mUriEventMap.get(uri);
            if (what != null) {
                this.mHandler.obtainMessage(what.intValue()).sendToTarget();
                return;
            }
            Log.w(NetworkScoreService.TAG, "No matching event to send for URI = " + uri);
        }
    }

    public NetworkScoreService(Context context) {
        this(context, new NetworkScorerAppManager(context), new Function() { // from class: com.android.server.-$$Lambda$QTLvklqCTz22VSzZPEWJs-o0bv4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new NetworkScoreService.ScoringServiceConnection((NetworkScorerAppData) obj);
            }
        }, Looper.myLooper());
    }

    NetworkScoreService(Context context, NetworkScorerAppManager networkScoreAppManager, Function<NetworkScorerAppData, ScoringServiceConnection> serviceConnProducer, Looper looper) {
        this.mPackageMonitorLock = new Object();
        this.mServiceConnectionLock = new Object();
        this.mUserIntentReceiver = new BroadcastReceiver() { // from class: com.android.server.NetworkScoreService.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                int userId = intent.getIntExtra("android.intent.extra.user_handle", -10000);
                if (NetworkScoreService.DBG) {
                    Log.d(NetworkScoreService.TAG, "Received " + action + " for userId " + userId);
                }
                if (userId != -10000 && "android.intent.action.USER_UNLOCKED".equals(action)) {
                    NetworkScoreService.this.onUserUnlocked(userId);
                }
            }
        };
        this.mLocationModeReceiver = new BroadcastReceiver() { // from class: com.android.server.NetworkScoreService.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if ("android.location.MODE_CHANGED".equals(action)) {
                    NetworkScoreService.this.refreshBinding();
                }
            }
        };
        this.mContext = context;
        this.mNetworkScorerAppManager = networkScoreAppManager;
        this.mScoreCaches = new ArrayMap();
        IntentFilter filter = new IntentFilter("android.intent.action.USER_UNLOCKED");
        this.mContext.registerReceiverAsUser(this.mUserIntentReceiver, UserHandle.SYSTEM, filter, null, null);
        this.mHandler = new ServiceHandler(looper);
        IntentFilter locationModeFilter = new IntentFilter("android.location.MODE_CHANGED");
        this.mContext.registerReceiverAsUser(this.mLocationModeReceiver, UserHandle.SYSTEM, locationModeFilter, null, this.mHandler);
        this.mRecommendationSettingsObserver = new DispatchingContentObserver(context, this.mHandler);
        this.mServiceConnProducer = serviceConnProducer;
        this.mUseOpenWifiPackageObserver = new ContentObserver(this.mHandler) { // from class: com.android.server.NetworkScoreService.3
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange, Uri uri, int userId) {
                Uri useOpenWifiPkgUri = Settings.Global.getUriFor("use_open_wifi_package");
                if (useOpenWifiPkgUri.equals(uri)) {
                    String useOpenWifiPackage = Settings.Global.getString(NetworkScoreService.this.mContext.getContentResolver(), "use_open_wifi_package");
                    if (!TextUtils.isEmpty(useOpenWifiPackage)) {
                        ((PermissionManagerServiceInternal) LocalServices.getService(PermissionManagerServiceInternal.class)).grantDefaultPermissionsToDefaultUseOpenWifiApp(useOpenWifiPackage, userId);
                    }
                }
            }
        };
        this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("use_open_wifi_package"), false, this.mUseOpenWifiPackageObserver);
        ((PermissionManagerServiceInternal) LocalServices.getService(PermissionManagerServiceInternal.class)).setUseOpenWifiAppPackagesProvider(new PermissionManagerServiceInternal.PackagesProvider() { // from class: com.android.server.-$$Lambda$NetworkScoreService$vwytA23Qz3U83FJaKiA52aJ1mts
            @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.PackagesProvider
            public final String[] getPackages(int i) {
                return this.f$0.lambda$new$0$NetworkScoreService(i);
            }
        });
    }

    public /* synthetic */ String[] lambda$new$0$NetworkScoreService(int userId) {
        String useOpenWifiPackage = Settings.Global.getString(this.mContext.getContentResolver(), "use_open_wifi_package");
        if (!TextUtils.isEmpty(useOpenWifiPackage)) {
            return new String[]{useOpenWifiPackage};
        }
        return null;
    }

    void systemReady() {
        if (DBG) {
            Log.d(TAG, "systemReady");
        }
        registerRecommendationSettingsObserver();
    }

    void systemRunning() {
        if (DBG) {
            Log.d(TAG, "systemRunning");
        }
    }

    void onUserUnlocked(int userId) {
        if (DBG) {
            Log.d(TAG, "onUserUnlocked(" + userId + ")");
        }
        refreshBinding();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshBinding() {
        if (DBG) {
            Log.d(TAG, "refreshBinding()");
        }
        this.mNetworkScorerAppManager.updateState();
        this.mNetworkScorerAppManager.migrateNetworkScorerAppSettingIfNeeded();
        registerPackageMonitorIfNeeded();
        bindToScoringServiceIfNeeded();
    }

    private void registerRecommendationSettingsObserver() {
        Uri packageNameUri = Settings.Global.getUriFor("network_recommendations_package");
        this.mRecommendationSettingsObserver.observe(packageNameUri, 1);
        Uri settingUri = Settings.Global.getUriFor("network_recommendations_enabled");
        this.mRecommendationSettingsObserver.observe(settingUri, 2);
    }

    private void registerPackageMonitorIfNeeded() {
        if (DBG) {
            Log.d(TAG, "registerPackageMonitorIfNeeded()");
        }
        NetworkScorerAppData appData = this.mNetworkScorerAppManager.getActiveScorer();
        synchronized (this.mPackageMonitorLock) {
            if (this.mPackageMonitor != null && (appData == null || !appData.getRecommendationServicePackageName().equals(this.mPackageMonitor.mPackageToWatch))) {
                if (DBG) {
                    Log.d(TAG, "Unregistering package monitor for " + this.mPackageMonitor.mPackageToWatch);
                }
                this.mPackageMonitor.unregister();
                this.mPackageMonitor = null;
            }
            if (appData != null && this.mPackageMonitor == null) {
                NetworkScorerPackageMonitor networkScorerPackageMonitor = new NetworkScorerPackageMonitor(appData.getRecommendationServicePackageName());
                this.mPackageMonitor = networkScorerPackageMonitor;
                networkScorerPackageMonitor.register(this.mContext, null, UserHandle.SYSTEM, false);
                if (DBG) {
                    Log.d(TAG, "Registered package monitor for " + this.mPackageMonitor.mPackageToWatch);
                }
            }
        }
    }

    private void bindToScoringServiceIfNeeded() {
        if (DBG) {
            Log.d(TAG, "bindToScoringServiceIfNeeded");
        }
        NetworkScorerAppData scorerData = this.mNetworkScorerAppManager.getActiveScorer();
        bindToScoringServiceIfNeeded(scorerData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindToScoringServiceIfNeeded(NetworkScorerAppData appData) {
        if (DBG) {
            Log.d(TAG, "bindToScoringServiceIfNeeded(" + appData + ")");
        }
        if (appData != null) {
            synchronized (this.mServiceConnectionLock) {
                if (this.mServiceConnection != null && !this.mServiceConnection.getAppData().equals(appData)) {
                    unbindFromScoringServiceIfNeeded();
                }
                if (this.mServiceConnection == null) {
                    this.mServiceConnection = this.mServiceConnProducer.apply(appData);
                }
                this.mServiceConnection.bind(this.mContext);
            }
            return;
        }
        unbindFromScoringServiceIfNeeded();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unbindFromScoringServiceIfNeeded() {
        if (DBG) {
            Log.d(TAG, "unbindFromScoringServiceIfNeeded");
        }
        synchronized (this.mServiceConnectionLock) {
            if (this.mServiceConnection != null) {
                this.mServiceConnection.unbind(this.mContext);
                if (DBG) {
                    Log.d(TAG, "Disconnected from: " + this.mServiceConnection.getAppData().getRecommendationServiceComponent());
                }
            }
            this.mServiceConnection = null;
        }
        clearInternal();
    }

    public boolean updateScores(ScoredNetwork[] networks) {
        RemoteCallbackList<INetworkScoreCache> callbackList;
        if (!isCallerActiveScorer(getCallingUid())) {
            throw new SecurityException("Caller with UID " + getCallingUid() + " is not the active scorer.");
        }
        long token = Binder.clearCallingIdentity();
        try {
            Map<Integer, List<ScoredNetwork>> networksByType = new ArrayMap<>();
            for (ScoredNetwork network : networks) {
                List<ScoredNetwork> networkList = networksByType.get(Integer.valueOf(network.networkKey.type));
                if (networkList == null) {
                    networkList = new ArrayList<>();
                    networksByType.put(Integer.valueOf(network.networkKey.type), networkList);
                }
                networkList.add(network);
            }
            Iterator<Map.Entry<Integer, List<ScoredNetwork>>> it = networksByType.entrySet().iterator();
            while (true) {
                boolean isEmpty = true;
                if (it.hasNext()) {
                    Map.Entry<Integer, List<ScoredNetwork>> entry = it.next();
                    synchronized (this.mScoreCaches) {
                        callbackList = this.mScoreCaches.get(entry.getKey());
                        if (callbackList != null && callbackList.getRegisteredCallbackCount() != 0) {
                            isEmpty = false;
                        }
                    }
                    if (isEmpty) {
                        if (Log.isLoggable(TAG, 2)) {
                            Log.v(TAG, "No scorer registered for type " + entry.getKey() + ", discarding");
                        }
                    } else {
                        BiConsumer<INetworkScoreCache, Object> consumer = FilteringCacheUpdatingConsumer.create(this.mContext, entry.getValue(), entry.getKey().intValue());
                        sendCacheUpdateCallback(consumer, Collections.singleton(callbackList));
                    }
                } else {
                    Binder.restoreCallingIdentity(token);
                    return true;
                }
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    static class FilteringCacheUpdatingConsumer implements BiConsumer<INetworkScoreCache, Object> {
        private final Context mContext;
        private UnaryOperator<List<ScoredNetwork>> mCurrentNetworkFilter;
        private final int mNetworkType;
        private UnaryOperator<List<ScoredNetwork>> mScanResultsFilter;
        private final List<ScoredNetwork> mScoredNetworkList;

        static FilteringCacheUpdatingConsumer create(Context context, List<ScoredNetwork> scoredNetworkList, int networkType) {
            return new FilteringCacheUpdatingConsumer(context, scoredNetworkList, networkType, null, null);
        }

        FilteringCacheUpdatingConsumer(Context context, List<ScoredNetwork> scoredNetworkList, int networkType, UnaryOperator<List<ScoredNetwork>> currentNetworkFilter, UnaryOperator<List<ScoredNetwork>> scanResultsFilter) {
            this.mContext = context;
            this.mScoredNetworkList = scoredNetworkList;
            this.mNetworkType = networkType;
            this.mCurrentNetworkFilter = currentNetworkFilter;
            this.mScanResultsFilter = scanResultsFilter;
        }

        @Override // java.util.function.BiConsumer
        public void accept(INetworkScoreCache networkScoreCache, Object cookie) {
            int filterType = 0;
            if (cookie instanceof Integer) {
                filterType = ((Integer) cookie).intValue();
            }
            try {
                List<ScoredNetwork> filteredNetworkList = filterScores(this.mScoredNetworkList, filterType);
                if (!filteredNetworkList.isEmpty()) {
                    networkScoreCache.updateScores(filteredNetworkList);
                }
            } catch (RemoteException e) {
                if (NetworkScoreService.VERBOSE) {
                    Log.v(NetworkScoreService.TAG, "Unable to update scores of type " + this.mNetworkType, e);
                }
            }
        }

        private List<ScoredNetwork> filterScores(List<ScoredNetwork> scoredNetworkList, int filterType) {
            if (filterType == 0) {
                return scoredNetworkList;
            }
            if (filterType == 1) {
                if (this.mCurrentNetworkFilter == null) {
                    this.mCurrentNetworkFilter = new CurrentNetworkScoreCacheFilter(new WifiInfoSupplier(this.mContext));
                }
                return (List) this.mCurrentNetworkFilter.apply(scoredNetworkList);
            }
            if (filterType == 2) {
                if (this.mScanResultsFilter == null) {
                    this.mScanResultsFilter = new ScanResultsScoreCacheFilter(new ScanResultsSupplier(this.mContext));
                }
                return (List) this.mScanResultsFilter.apply(scoredNetworkList);
            }
            Log.w(NetworkScoreService.TAG, "Unknown filter type: " + filterType);
            return scoredNetworkList;
        }
    }

    private static class WifiInfoSupplier implements Supplier<WifiInfo> {
        private final Context mContext;

        WifiInfoSupplier(Context context) {
            this.mContext = context;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.function.Supplier
        public WifiInfo get() {
            WifiManager wifiManager = (WifiManager) this.mContext.getSystemService(WifiManager.class);
            if (wifiManager != null) {
                return wifiManager.getConnectionInfo();
            }
            Log.w(NetworkScoreService.TAG, "WifiManager is null, failed to return the WifiInfo.");
            return null;
        }
    }

    private static class ScanResultsSupplier implements Supplier<List<ScanResult>> {
        private final Context mContext;

        ScanResultsSupplier(Context context) {
            this.mContext = context;
        }

        @Override // java.util.function.Supplier
        public List<ScanResult> get() {
            WifiScanner wifiScanner = (WifiScanner) this.mContext.getSystemService(WifiScanner.class);
            if (wifiScanner != null) {
                return wifiScanner.getSingleScanResults();
            }
            Log.w(NetworkScoreService.TAG, "WifiScanner is null, failed to return scan results.");
            return Collections.emptyList();
        }
    }

    static class CurrentNetworkScoreCacheFilter implements UnaryOperator<List<ScoredNetwork>> {
        private final NetworkKey mCurrentNetwork;

        CurrentNetworkScoreCacheFilter(Supplier<WifiInfo> wifiInfoSupplier) {
            this.mCurrentNetwork = NetworkKey.createFromWifiInfo(wifiInfoSupplier.get());
        }

        @Override // java.util.function.Function
        public List<ScoredNetwork> apply(List<ScoredNetwork> scoredNetworks) {
            if (this.mCurrentNetwork == null || scoredNetworks.isEmpty()) {
                return Collections.emptyList();
            }
            for (int i = 0; i < scoredNetworks.size(); i++) {
                ScoredNetwork scoredNetwork = scoredNetworks.get(i);
                if (scoredNetwork.networkKey.equals(this.mCurrentNetwork)) {
                    return Collections.singletonList(scoredNetwork);
                }
            }
            return Collections.emptyList();
        }
    }

    static class ScanResultsScoreCacheFilter implements UnaryOperator<List<ScoredNetwork>> {
        private final Set<NetworkKey> mScanResultKeys;

        ScanResultsScoreCacheFilter(Supplier<List<ScanResult>> resultsSupplier) {
            List<ScanResult> scanResults = resultsSupplier.get();
            int size = scanResults.size();
            this.mScanResultKeys = new ArraySet(size);
            for (int i = 0; i < size; i++) {
                ScanResult scanResult = scanResults.get(i);
                NetworkKey key = NetworkKey.createFromScanResult(scanResult);
                if (key != null) {
                    this.mScanResultKeys.add(key);
                }
            }
        }

        @Override // java.util.function.Function
        public List<ScoredNetwork> apply(List<ScoredNetwork> scoredNetworks) {
            if (this.mScanResultKeys.isEmpty() || scoredNetworks.isEmpty()) {
                return Collections.emptyList();
            }
            List<ScoredNetwork> filteredScores = new ArrayList<>();
            for (int i = 0; i < scoredNetworks.size(); i++) {
                ScoredNetwork scoredNetwork = scoredNetworks.get(i);
                if (this.mScanResultKeys.contains(scoredNetwork.networkKey)) {
                    filteredScores.add(scoredNetwork);
                }
            }
            return filteredScores;
        }
    }

    public boolean clearScores() {
        enforceSystemOrIsActiveScorer(getCallingUid());
        long token = Binder.clearCallingIdentity();
        try {
            clearInternal();
            return true;
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public boolean setActiveScorer(String packageName) {
        enforceSystemOrHasScoreNetworks();
        return this.mNetworkScorerAppManager.setActiveScorer(packageName);
    }

    public boolean isCallerActiveScorer(int callingUid) {
        boolean z;
        synchronized (this.mServiceConnectionLock) {
            z = this.mServiceConnection != null && this.mServiceConnection.getAppData().packageUid == callingUid;
        }
        return z;
    }

    private void enforceSystemOnly() throws SecurityException {
        this.mContext.enforceCallingOrSelfPermission("android.permission.REQUEST_NETWORK_SCORES", "Caller must be granted REQUEST_NETWORK_SCORES.");
    }

    private void enforceSystemOrHasScoreNetworks() throws SecurityException {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.REQUEST_NETWORK_SCORES") != 0 && this.mContext.checkCallingOrSelfPermission("android.permission.SCORE_NETWORKS") != 0) {
            throw new SecurityException("Caller is neither the system process or a network scorer.");
        }
    }

    private void enforceSystemOrIsActiveScorer(int callingUid) throws SecurityException {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.REQUEST_NETWORK_SCORES") != 0 && !isCallerActiveScorer(callingUid)) {
            throw new SecurityException("Caller is neither the system process or the active network scorer.");
        }
    }

    public String getActiveScorerPackage() {
        enforceSystemOrHasScoreNetworks();
        NetworkScorerAppData appData = this.mNetworkScorerAppManager.getActiveScorer();
        if (appData == null) {
            return null;
        }
        return appData.getRecommendationServicePackageName();
    }

    public NetworkScorerAppData getActiveScorer() {
        enforceSystemOnly();
        return this.mNetworkScorerAppManager.getActiveScorer();
    }

    public List<NetworkScorerAppData> getAllValidScorers() {
        enforceSystemOnly();
        return this.mNetworkScorerAppManager.getAllValidScorers();
    }

    public void disableScoring() {
        enforceSystemOrIsActiveScorer(getCallingUid());
    }

    private void clearInternal() {
        sendCacheUpdateCallback(new BiConsumer<INetworkScoreCache, Object>() { // from class: com.android.server.NetworkScoreService.4
            @Override // java.util.function.BiConsumer
            public void accept(INetworkScoreCache networkScoreCache, Object cookie) {
                try {
                    networkScoreCache.clearScores();
                } catch (RemoteException e) {
                    if (Log.isLoggable(NetworkScoreService.TAG, 2)) {
                        Log.v(NetworkScoreService.TAG, "Unable to clear scores", e);
                    }
                }
            }
        }, getScoreCacheLists());
    }

    public void registerNetworkScoreCache(int networkType, INetworkScoreCache scoreCache, int filterType) {
        enforceSystemOnly();
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mScoreCaches) {
                RemoteCallbackList<INetworkScoreCache> callbackList = this.mScoreCaches.get(Integer.valueOf(networkType));
                if (callbackList == null) {
                    callbackList = new RemoteCallbackList<>();
                    this.mScoreCaches.put(Integer.valueOf(networkType), callbackList);
                }
                if (!callbackList.register(scoreCache, Integer.valueOf(filterType))) {
                    if (callbackList.getRegisteredCallbackCount() == 0) {
                        this.mScoreCaches.remove(Integer.valueOf(networkType));
                    }
                    if (Log.isLoggable(TAG, 2)) {
                        Log.v(TAG, "Unable to register NetworkScoreCache for type " + networkType);
                    }
                }
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void unregisterNetworkScoreCache(int networkType, INetworkScoreCache scoreCache) {
        enforceSystemOnly();
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mScoreCaches) {
                RemoteCallbackList<INetworkScoreCache> callbackList = this.mScoreCaches.get(Integer.valueOf(networkType));
                if (callbackList == null || !callbackList.unregister(scoreCache)) {
                    if (Log.isLoggable(TAG, 2)) {
                        Log.v(TAG, "Unable to unregister NetworkScoreCache for type " + networkType);
                    }
                } else if (callbackList.getRegisteredCallbackCount() == 0) {
                    this.mScoreCaches.remove(Integer.valueOf(networkType));
                }
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public boolean requestScores(NetworkKey[] networks) {
        enforceSystemOnly();
        long token = Binder.clearCallingIdentity();
        try {
            INetworkRecommendationProvider provider = getRecommendationProvider();
            if (provider != null) {
                try {
                    provider.requestScores(networks);
                    Binder.restoreCallingIdentity(token);
                    return true;
                } catch (RemoteException e) {
                    Log.w(TAG, "Failed to request scores.", e);
                }
            }
            Binder.restoreCallingIdentity(token);
            return false;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    protected void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, writer)) {
            long token = Binder.clearCallingIdentity();
            try {
                NetworkScorerAppData currentScorer = this.mNetworkScorerAppManager.getActiveScorer();
                if (currentScorer == null) {
                    writer.println("Scoring is disabled.");
                    Binder.restoreCallingIdentity(token);
                    return;
                }
                writer.println("Current scorer: " + currentScorer);
                synchronized (this.mServiceConnectionLock) {
                    if (this.mServiceConnection != null) {
                        this.mServiceConnection.dump(fd, writer, args);
                    } else {
                        writer.println("ScoringServiceConnection: null");
                    }
                }
                writer.flush();
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }
    }

    private Collection<RemoteCallbackList<INetworkScoreCache>> getScoreCacheLists() {
        ArrayList arrayList;
        synchronized (this.mScoreCaches) {
            arrayList = new ArrayList(this.mScoreCaches.values());
        }
        return arrayList;
    }

    private void sendCacheUpdateCallback(BiConsumer<INetworkScoreCache, Object> consumer, Collection<RemoteCallbackList<INetworkScoreCache>> remoteCallbackLists) {
        for (RemoteCallbackList<INetworkScoreCache> callbackList : remoteCallbackLists) {
            synchronized (callbackList) {
                int count = callbackList.beginBroadcast();
                for (int i = 0; i < count; i++) {
                    try {
                        consumer.accept((INetworkScoreCache) callbackList.getBroadcastItem(i), callbackList.getBroadcastCookie(i));
                    } catch (Throwable th) {
                        callbackList.finishBroadcast();
                        throw th;
                    }
                }
                callbackList.finishBroadcast();
            }
        }
    }

    private INetworkRecommendationProvider getRecommendationProvider() {
        synchronized (this.mServiceConnectionLock) {
            if (this.mServiceConnection != null) {
                return this.mServiceConnection.getRecommendationProvider();
            }
            return null;
        }
    }

    public static class ScoringServiceConnection implements ServiceConnection {
        private final NetworkScorerAppData mAppData;
        private volatile boolean mBound = false;
        private volatile boolean mConnected = false;
        private volatile INetworkRecommendationProvider mRecommendationProvider;

        ScoringServiceConnection(NetworkScorerAppData appData) {
            this.mAppData = appData;
        }

        public void bind(Context context) {
            if (!this.mBound) {
                Intent service = new Intent("android.net.action.RECOMMEND_NETWORKS");
                service.setComponent(this.mAppData.getRecommendationServiceComponent());
                this.mBound = context.bindServiceAsUser(service, this, AudioFormat.AAC_MAIN, UserHandle.SYSTEM);
                if (this.mBound) {
                    if (NetworkScoreService.DBG) {
                        Log.d(NetworkScoreService.TAG, "ScoringServiceConnection bound.");
                    }
                } else {
                    Log.w(NetworkScoreService.TAG, "Bind call failed for " + service);
                    context.unbindService(this);
                }
            }
        }

        public void unbind(Context context) {
            try {
                if (this.mBound) {
                    this.mBound = false;
                    context.unbindService(this);
                    if (NetworkScoreService.DBG) {
                        Log.d(NetworkScoreService.TAG, "ScoringServiceConnection unbound.");
                    }
                }
            } catch (RuntimeException e) {
                Log.e(NetworkScoreService.TAG, "Unbind failed.", e);
            }
            this.mConnected = false;
            this.mRecommendationProvider = null;
        }

        public NetworkScorerAppData getAppData() {
            return this.mAppData;
        }

        public INetworkRecommendationProvider getRecommendationProvider() {
            return this.mRecommendationProvider;
        }

        public String getPackageName() {
            return this.mAppData.getRecommendationServiceComponent().getPackageName();
        }

        public boolean isAlive() {
            return this.mBound && this.mConnected;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            if (NetworkScoreService.DBG) {
                Log.d(NetworkScoreService.TAG, "ScoringServiceConnection: " + name.flattenToString());
            }
            this.mConnected = true;
            this.mRecommendationProvider = INetworkRecommendationProvider.Stub.asInterface(service);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            if (NetworkScoreService.DBG) {
                Log.d(NetworkScoreService.TAG, "ScoringServiceConnection, disconnected: " + name.flattenToString());
            }
            this.mConnected = false;
            this.mRecommendationProvider = null;
        }

        public void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
            writer.println("ScoringServiceConnection: " + this.mAppData.getRecommendationServiceComponent() + ", bound: " + this.mBound + ", connected: " + this.mConnected);
        }
    }

    public final class ServiceHandler extends Handler {
        public static final int MSG_RECOMMENDATIONS_PACKAGE_CHANGED = 1;
        public static final int MSG_RECOMMENDATION_ENABLED_SETTING_CHANGED = 2;

        public ServiceHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int what = msg.what;
            if (what == 1 || what == 2) {
                NetworkScoreService.this.refreshBinding();
                return;
            }
            Log.w(NetworkScoreService.TAG, "Unknown message: " + what);
        }
    }
}
