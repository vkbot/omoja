package com.android.server.net;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.net.ConnectivityManager;
import android.net.DataUsageRequest;
import android.net.INetworkManagementEventObserver;
import android.net.INetworkStatsService;
import android.net.INetworkStatsSession;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkIdentity;
import android.net.NetworkStack;
import android.net.NetworkState;
import android.net.NetworkStats;
import android.net.NetworkStatsHistory;
import android.net.NetworkTemplate;
import android.net.netstats.provider.INetworkStatsProvider;
import android.net.netstats.provider.INetworkStatsProviderCallback;
import android.os.BestClock;
import android.os.Binder;
import android.os.DropBoxManager;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.INetworkManagementService;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.provider.Settings;
import android.telephony.SubscriptionPlan;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.MathUtils;
import android.util.Slog;
import android.util.SparseIntArray;
import android.util.proto.ProtoOutputStream;
import com.android.internal.net.VpnInfo;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FileRotator;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.EventLogTags;
import com.android.server.LocalServices;
import com.android.server.NetworkManagementService;
import com.android.server.NetworkManagementSocketTagger;
import com.android.server.job.controllers.JobStatus;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.usage.AppStandbyController;
import com.android.server.utils.PriorityDump;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.Clock;
import java.time.ZoneOffset;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class NetworkStatsService extends INetworkStatsService.Stub {
    public static final String ACTION_NETWORK_STATS_POLL = "com.android.server.action.NETWORK_STATS_POLL";
    public static final String ACTION_NETWORK_STATS_UPDATED = "com.android.server.action.NETWORK_STATS_UPDATED";
    private static final int DEFAULT_PERFORM_POLL_DELAY_MS = 1000;
    private static final int DUMP_STATS_SESSION_COUNT = 20;
    private static final int FLAG_PERSIST_ALL = 3;
    private static final int FLAG_PERSIST_FORCE = 256;
    private static final int FLAG_PERSIST_NETWORK = 1;
    private static final int FLAG_PERSIST_UID = 2;
    private static final int MAX_STATS_PROVIDER_POLL_WAIT_TIME_MS = 100;
    private static final int MSG_BROADCAST_NETWORK_STATS_UPDATED = 4;
    private static final int MSG_PERFORM_POLL = 1;
    private static final int MSG_PERFORM_POLL_REGISTER_ALERT = 2;
    private static final int MSG_UPDATE_IFACES = 3;
    private static final long POLL_RATE_LIMIT_MS = 15000;
    private static final String PREFIX_DEV = "dev";
    private static final String PREFIX_UID = "uid";
    private static final String PREFIX_UID_TAG = "uid_tag";
    private static final String PREFIX_XT = "xt";
    private static final String TAG_NETSTATS_ERROR = "netstats_error";
    private static int TYPE_RX_BYTES;
    private static int TYPE_RX_PACKETS;
    private static int TYPE_TCP_RX_PACKETS;
    private static int TYPE_TCP_TX_PACKETS;
    private static int TYPE_TX_BYTES;
    private static int TYPE_TX_PACKETS;
    private String mActiveIface;
    private final AlarmManager mAlarmManager;
    private final File mBaseDir;
    private final Clock mClock;
    private final Context mContext;
    private final Dependencies mDeps;
    private NetworkStatsRecorder mDevRecorder;
    private long mGlobalAlertBytes;
    private final Handler mHandler;
    private long mLastStatsSessionPoll;
    private final INetworkManagementService mNetworkManager;
    private final NetworkStatsSubscriptionsMonitor mNetworkStatsSubscriptionsMonitor;
    private PendingIntent mPollIntent;
    private final NetworkStatsSettings mSettings;
    private final NetworkStatsFactory mStatsFactory;
    private final NetworkStatsObservers mStatsObservers;
    private final File mSystemDir;
    private volatile boolean mSystemReady;
    private NetworkStatsRecorder mUidRecorder;
    private NetworkStatsRecorder mUidTagRecorder;
    private final boolean mUseBpfTrafficStats;
    private final PowerManager.WakeLock mWakeLock;
    private NetworkStatsRecorder mXtRecorder;
    private NetworkStatsCollection mXtStatsCached;
    static final String TAG = "NetworkStats";
    static final boolean LOGD = Log.isLoggable(TAG, 3);
    static final boolean LOGV = Log.isLoggable(TAG, 2);
    private final Object mStatsLock = new Object();
    private final ArrayMap<String, NetworkIdentitySet> mActiveIfaces = new ArrayMap<>();
    private final ArrayMap<String, NetworkIdentitySet> mActiveUidIfaces = new ArrayMap<>();
    private String[] mMobileIfaces = new String[0];
    private Network[] mDefaultNetworks = new Network[0];
    private NetworkState[] mLastNetworkStates = null;
    private final DropBoxNonMonotonicObserver mNonMonotonicObserver = new DropBoxNonMonotonicObserver();
    private final CopyOnWriteArrayList<NetworkStatsProviderCallbackImpl> mStatsProviderCbList = new CopyOnWriteArrayList<>();
    private final Semaphore mStatsProviderSem = new Semaphore(0, true);
    private SparseIntArray mActiveUidCounterSet = new SparseIntArray();
    private NetworkStats mUidOperations = new NetworkStats(0, 10);
    private long mPersistThreshold = 2097152;
    private final SparseIntArray mOpenSessionCallsPerUid = new SparseIntArray();
    private BroadcastReceiver mTetherReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkStatsService.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NetworkStatsService.this.performPoll(1);
        }
    };
    private BroadcastReceiver mPollReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkStatsService.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws Throwable {
            NetworkStatsService.this.performPoll(3);
            NetworkStatsService.this.registerGlobalAlert();
        }
    };
    private BroadcastReceiver mRemovedReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkStatsService.4
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int uid = intent.getIntExtra("android.intent.extra.UID", -1);
            if (uid == -1) {
                return;
            }
            synchronized (NetworkStatsService.this.mStatsLock) {
                NetworkStatsService.this.mWakeLock.acquire();
                try {
                    NetworkStatsService.this.removeUidsLocked(uid);
                    NetworkStatsService.this.mWakeLock.release();
                } catch (Throwable th) {
                    NetworkStatsService.this.mWakeLock.release();
                    throw th;
                }
            }
        }
    };
    private BroadcastReceiver mUserReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkStatsService.5
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int userId = intent.getIntExtra("android.intent.extra.user_handle", -1);
            if (userId == -1) {
                return;
            }
            synchronized (NetworkStatsService.this.mStatsLock) {
                NetworkStatsService.this.mWakeLock.acquire();
                try {
                    NetworkStatsService.this.removeUserLocked(userId);
                    NetworkStatsService.this.mWakeLock.release();
                } catch (Throwable th) {
                    NetworkStatsService.this.mWakeLock.release();
                    throw th;
                }
            }
        }
    };
    private BroadcastReceiver mShutdownReceiver = new BroadcastReceiver() { // from class: com.android.server.net.NetworkStatsService.6
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (NetworkStatsService.this.mStatsLock) {
                NetworkStatsService.this.shutdownLocked();
            }
        }
    };
    private final INetworkManagementEventObserver mAlertObserver = new BaseNetworkObserver() { // from class: com.android.server.net.NetworkStatsService.7
        public void limitReached(String limitName, String iface) {
            NetworkStack.checkNetworkStackPermission(NetworkStatsService.this.mContext);
            if (NetworkManagementService.LIMIT_GLOBAL_ALERT.equals(limitName) && !NetworkStatsService.this.mHandler.hasMessages(2)) {
                NetworkStatsService.this.mHandler.sendEmptyMessageDelayed(2, NetworkStatsService.this.mSettings.getPollDelay());
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    @FunctionalInterface
    interface ThrowingConsumer<S, T extends Throwable> {
        void accept(S s) throws Throwable;
    }

    private static native long nativeGetIfaceStat(String str, int i, boolean z);

    private static native long nativeGetTotalStat(int i, boolean z);

    private static native long nativeGetUidStat(int i, int i2, boolean z);

    public interface NetworkStatsSettings {
        boolean getAugmentEnabled();

        boolean getCombineSubtypeEnabled();

        Config getDevConfig();

        long getDevPersistBytes(long j);

        long getGlobalAlertBytes(long j);

        long getPollDelay();

        long getPollInterval();

        boolean getSampleEnabled();

        Config getUidConfig();

        long getUidPersistBytes(long j);

        Config getUidTagConfig();

        long getUidTagPersistBytes(long j);

        Config getXtConfig();

        long getXtPersistBytes(long j);

        public static class Config {
            public final long bucketDuration;
            public final long deleteAgeMillis;
            public final long rotateAgeMillis;

            public Config(long bucketDuration, long rotateAgeMillis, long deleteAgeMillis) {
                this.bucketDuration = bucketDuration;
                this.rotateAgeMillis = rotateAgeMillis;
                this.deleteAgeMillis = deleteAgeMillis;
            }
        }
    }

    private static File getDefaultSystemDir() {
        return new File(Environment.getDataDirectory(), "system");
    }

    private static File getDefaultBaseDir() {
        File baseDir = new File(getDefaultSystemDir(), "netstats");
        baseDir.mkdirs();
        return baseDir;
    }

    private static Clock getDefaultClock() {
        return new BestClock(ZoneOffset.UTC, new Clock[]{SystemClock.currentNetworkTimeClock(), Clock.systemUTC()});
    }

    private final class NetworkStatsHandler extends Handler {
        NetworkStatsHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) throws Throwable {
            int i = msg.what;
            if (i == 1) {
                NetworkStatsService.this.performPoll(3);
                return;
            }
            if (i == 2) {
                NetworkStatsService.this.performPoll(1);
                NetworkStatsService.this.registerGlobalAlert();
                return;
            }
            if (i == 3) {
                if (NetworkStatsService.this.mLastNetworkStates != null) {
                    NetworkStatsService networkStatsService = NetworkStatsService.this;
                    networkStatsService.updateIfaces(networkStatsService.mDefaultNetworks, NetworkStatsService.this.mLastNetworkStates, NetworkStatsService.this.mActiveIface);
                    return;
                }
                return;
            }
            if (i == 4) {
                Intent updatedIntent = new Intent(NetworkStatsService.ACTION_NETWORK_STATS_UPDATED);
                updatedIntent.setFlags(1073741824);
                NetworkStatsService.this.mContext.sendBroadcastAsUser(updatedIntent, UserHandle.ALL, "android.permission.READ_NETWORK_USAGE_HISTORY");
            }
        }
    }

    public static NetworkStatsService create(Context context, INetworkManagementService networkManager) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        PowerManager.WakeLock wakeLock = powerManager.newWakeLock(1, TAG);
        NetworkStatsService service = new NetworkStatsService(context, networkManager, alarmManager, wakeLock, getDefaultClock(), new DefaultNetworkStatsSettings(context), new NetworkStatsFactory(), new NetworkStatsObservers(), getDefaultSystemDir(), getDefaultBaseDir(), new Dependencies());
        service.registerLocalService();
        return service;
    }

    NetworkStatsService(Context context, INetworkManagementService networkManager, AlarmManager alarmManager, PowerManager.WakeLock wakeLock, Clock clock, NetworkStatsSettings settings, NetworkStatsFactory factory, NetworkStatsObservers statsObservers, File systemDir, File baseDir, Dependencies deps) {
        Objects.requireNonNull(context, "missing Context");
        this.mContext = context;
        Objects.requireNonNull(networkManager, "missing INetworkManagementService");
        this.mNetworkManager = networkManager;
        Objects.requireNonNull(alarmManager, "missing AlarmManager");
        this.mAlarmManager = alarmManager;
        Objects.requireNonNull(clock, "missing Clock");
        this.mClock = clock;
        Objects.requireNonNull(settings, "missing NetworkStatsSettings");
        this.mSettings = settings;
        Objects.requireNonNull(wakeLock, "missing WakeLock");
        this.mWakeLock = wakeLock;
        Objects.requireNonNull(factory, "missing factory");
        this.mStatsFactory = factory;
        Objects.requireNonNull(statsObservers, "missing NetworkStatsObservers");
        this.mStatsObservers = statsObservers;
        Objects.requireNonNull(systemDir, "missing systemDir");
        this.mSystemDir = systemDir;
        Objects.requireNonNull(baseDir, "missing baseDir");
        this.mBaseDir = baseDir;
        this.mUseBpfTrafficStats = new File("/sys/fs/bpf/map_netd_app_uid_stats_map").exists();
        Objects.requireNonNull(deps, "missing Dependencies");
        Dependencies dependencies = deps;
        this.mDeps = dependencies;
        HandlerThread handlerThread = dependencies.makeHandlerThread();
        handlerThread.start();
        this.mHandler = new NetworkStatsHandler(handlerThread.getLooper());
        this.mNetworkStatsSubscriptionsMonitor = deps.makeSubscriptionsMonitor(this.mContext, new HandlerExecutor(this.mHandler), this);
    }

    public static class Dependencies {
        public HandlerThread makeHandlerThread() {
            return new HandlerThread(NetworkStatsService.TAG);
        }

        public NetworkStatsSubscriptionsMonitor makeSubscriptionsMonitor(Context context, Executor executor, final NetworkStatsService service) {
            return new NetworkStatsSubscriptionsMonitor(context, executor, new NetworkStatsSubscriptionsMonitor.Delegate() { // from class: com.android.server.net.-$$Lambda$NetworkStatsService$Dependencies$xTxLQFUqCkxdI612v5MhVoJ7OXE
                @Override // com.android.server.net.NetworkStatsSubscriptionsMonitor.Delegate
                public final void onCollapsedRatTypeChanged(String str, int i) {
                    service.handleOnCollapsedRatTypeChanged();
                }
            });
        }
    }

    private void registerLocalService() {
        LocalServices.addService(NetworkStatsManagerInternal.class, new NetworkStatsManagerInternalImpl());
    }

    public void systemReady() throws Throwable {
        synchronized (this.mStatsLock) {
            this.mSystemReady = true;
            this.mDevRecorder = buildRecorder(PREFIX_DEV, this.mSettings.getDevConfig(), false);
            this.mXtRecorder = buildRecorder(PREFIX_XT, this.mSettings.getXtConfig(), false);
            this.mUidRecorder = buildRecorder("uid", this.mSettings.getUidConfig(), false);
            this.mUidTagRecorder = buildRecorder(PREFIX_UID_TAG, this.mSettings.getUidTagConfig(), true);
            updatePersistThresholdsLocked();
            maybeUpgradeLegacyStatsLocked();
            this.mXtStatsCached = this.mXtRecorder.getOrLoadCompleteLocked();
            bootstrapStatsLocked();
        }
        IntentFilter tetherFilter = new IntentFilter("android.net.conn.TETHER_STATE_CHANGED");
        this.mContext.registerReceiver(this.mTetherReceiver, tetherFilter, null, this.mHandler);
        IntentFilter pollFilter = new IntentFilter(ACTION_NETWORK_STATS_POLL);
        this.mContext.registerReceiver(this.mPollReceiver, pollFilter, "android.permission.READ_NETWORK_USAGE_HISTORY", this.mHandler);
        IntentFilter removedFilter = new IntentFilter("android.intent.action.UID_REMOVED");
        this.mContext.registerReceiver(this.mRemovedReceiver, removedFilter, null, this.mHandler);
        IntentFilter userFilter = new IntentFilter("android.intent.action.USER_REMOVED");
        this.mContext.registerReceiver(this.mUserReceiver, userFilter, null, this.mHandler);
        IntentFilter shutdownFilter = new IntentFilter("android.intent.action.ACTION_SHUTDOWN");
        this.mContext.registerReceiver(this.mShutdownReceiver, shutdownFilter);
        try {
            this.mNetworkManager.registerObserver(this.mAlertObserver);
        } catch (RemoteException e) {
        }
        PendingIntent pollIntent = PendingIntent.getBroadcast(this.mContext, 0, new Intent(ACTION_NETWORK_STATS_POLL), 0);
        long currentRealtime = SystemClock.elapsedRealtime();
        this.mAlarmManager.setInexactRepeating(3, currentRealtime, this.mSettings.getPollInterval(), pollIntent);
        if (!this.mSettings.getCombineSubtypeEnabled()) {
            this.mNetworkStatsSubscriptionsMonitor.start();
        }
        registerGlobalAlert();
    }

    private NetworkStatsRecorder buildRecorder(String prefix, NetworkStatsSettings.Config config, boolean includeTags) {
        DropBoxManager dropBox = (DropBoxManager) this.mContext.getSystemService("dropbox");
        return new NetworkStatsRecorder(new FileRotator(this.mBaseDir, prefix, config.rotateAgeMillis, config.deleteAgeMillis), this.mNonMonotonicObserver, dropBox, prefix, config.bucketDuration, includeTags);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shutdownLocked() {
        this.mContext.unregisterReceiver(this.mTetherReceiver);
        this.mContext.unregisterReceiver(this.mPollReceiver);
        this.mContext.unregisterReceiver(this.mRemovedReceiver);
        this.mContext.unregisterReceiver(this.mUserReceiver);
        this.mContext.unregisterReceiver(this.mShutdownReceiver);
        if (!this.mSettings.getCombineSubtypeEnabled()) {
            this.mNetworkStatsSubscriptionsMonitor.stop();
        }
        long currentTime = this.mClock.millis();
        this.mDevRecorder.forcePersistLocked(currentTime);
        this.mXtRecorder.forcePersistLocked(currentTime);
        this.mUidRecorder.forcePersistLocked(currentTime);
        this.mUidTagRecorder.forcePersistLocked(currentTime);
        this.mSystemReady = false;
    }

    private void maybeUpgradeLegacyStatsLocked() throws Throwable {
        try {
            File file = new File(this.mSystemDir, "netstats.bin");
            if (file.exists()) {
                this.mDevRecorder.importLegacyNetworkLocked(file);
                file.delete();
            }
            File file2 = new File(this.mSystemDir, "netstats_xt.bin");
            if (file2.exists()) {
                file2.delete();
            }
            File file3 = new File(this.mSystemDir, "netstats_uid.bin");
            if (file3.exists()) {
                this.mUidRecorder.importLegacyUidLocked(file3);
                this.mUidTagRecorder.importLegacyUidLocked(file3);
                file3.delete();
            }
        } catch (IOException e) {
            Log.wtf(TAG, "problem during legacy upgrade", e);
        } catch (OutOfMemoryError e2) {
            Log.wtf(TAG, "problem during legacy upgrade", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerGlobalAlert() throws Throwable {
        try {
            this.mNetworkManager.setGlobalAlert(this.mGlobalAlertBytes);
        } catch (RemoteException e) {
        } catch (IllegalStateException e2) {
            Slog.w(TAG, "problem registering for global alert: " + e2);
        }
        invokeForAllStatsProviderCallbacks(new ThrowingConsumer() { // from class: com.android.server.net.-$$Lambda$NetworkStatsService$KVH4Y9nH53_gEfrhunDFp_O6ExY
            @Override // com.android.server.net.NetworkStatsService.ThrowingConsumer
            public final void accept(Object obj) throws RemoteException {
                this.f$0.lambda$registerGlobalAlert$0$NetworkStatsService((NetworkStatsService.NetworkStatsProviderCallbackImpl) obj);
            }
        });
    }

    public /* synthetic */ void lambda$registerGlobalAlert$0$NetworkStatsService(NetworkStatsProviderCallbackImpl cb) throws RemoteException {
        cb.mProvider.onSetAlert(this.mGlobalAlertBytes);
    }

    public INetworkStatsSession openSession() {
        return openSessionInternal(4, null);
    }

    public INetworkStatsSession openSessionForUsageStats(int flags, String callingPackage) {
        return openSessionInternal(flags, callingPackage);
    }

    private boolean isRateLimitedForPoll(int callingUid) {
        long lastCallTime;
        if (callingUid == 1000) {
            return false;
        }
        long now = SystemClock.elapsedRealtime();
        synchronized (this.mOpenSessionCallsPerUid) {
            int calls = this.mOpenSessionCallsPerUid.get(callingUid, 0);
            this.mOpenSessionCallsPerUid.put(callingUid, calls + 1);
            lastCallTime = this.mLastStatsSessionPoll;
            this.mLastStatsSessionPoll = now;
        }
        return now - lastCallTime < POLL_RATE_LIMIT_MS;
    }

    private INetworkStatsSession openSessionInternal(int flags, final String callingPackage) {
        final int usedFlags;
        final int callingUid = Binder.getCallingUid();
        if (isRateLimitedForPoll(callingUid)) {
            usedFlags = flags & (-2);
        } else {
            usedFlags = flags;
        }
        if ((usedFlags & 3) != 0) {
            long ident = Binder.clearCallingIdentity();
            try {
                performPoll(3);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }
        return new INetworkStatsSession.Stub() { // from class: com.android.server.net.NetworkStatsService.1
            private final int mAccessLevel;
            private final String mCallingPackage;
            private final int mCallingUid;
            private NetworkStatsCollection mUidComplete;
            private NetworkStatsCollection mUidTagComplete;

            {
                this.mCallingUid = callingUid;
                String str = callingPackage;
                this.mCallingPackage = str;
                this.mAccessLevel = NetworkStatsService.this.checkAccessLevel(str);
            }

            private NetworkStatsCollection getUidComplete() {
                NetworkStatsCollection networkStatsCollection;
                synchronized (NetworkStatsService.this.mStatsLock) {
                    if (this.mUidComplete == null) {
                        this.mUidComplete = NetworkStatsService.this.mUidRecorder.getOrLoadCompleteLocked();
                    }
                    networkStatsCollection = this.mUidComplete;
                }
                return networkStatsCollection;
            }

            private NetworkStatsCollection getUidTagComplete() {
                NetworkStatsCollection networkStatsCollection;
                synchronized (NetworkStatsService.this.mStatsLock) {
                    if (this.mUidTagComplete == null) {
                        this.mUidTagComplete = NetworkStatsService.this.mUidTagRecorder.getOrLoadCompleteLocked();
                    }
                    networkStatsCollection = this.mUidTagComplete;
                }
                return networkStatsCollection;
            }

            public int[] getRelevantUids() {
                return getUidComplete().getRelevantUids(this.mAccessLevel);
            }

            public NetworkStats getDeviceSummaryForNetwork(NetworkTemplate template, long start, long end) {
                return NetworkStatsService.this.internalGetSummaryForNetwork(template, usedFlags, start, end, this.mAccessLevel, this.mCallingUid);
            }

            public NetworkStats getSummaryForNetwork(NetworkTemplate template, long start, long end) {
                return NetworkStatsService.this.internalGetSummaryForNetwork(template, usedFlags, start, end, this.mAccessLevel, this.mCallingUid);
            }

            public NetworkStatsHistory getHistoryForNetwork(NetworkTemplate template, int fields) {
                return NetworkStatsService.this.internalGetHistoryForNetwork(template, usedFlags, fields, this.mAccessLevel, this.mCallingUid);
            }

            public NetworkStats getSummaryForAllUid(NetworkTemplate template, long start, long end, boolean includeTags) {
                try {
                    NetworkStats stats = getUidComplete().getSummary(template, start, end, this.mAccessLevel, this.mCallingUid);
                    if (includeTags) {
                        NetworkStats tagStats = getUidTagComplete().getSummary(template, start, end, this.mAccessLevel, this.mCallingUid);
                        stats.combineAllValues(tagStats);
                    }
                    return stats;
                } catch (NullPointerException e) {
                    Slog.wtf(NetworkStatsService.TAG, "NullPointerException in getSummaryForAllUid", e);
                    throw e;
                }
            }

            public NetworkStatsHistory getHistoryForUid(NetworkTemplate template, int uid, int set, int tag, int fields) {
                return tag == 0 ? getUidComplete().getHistory(template, null, uid, set, tag, fields, Long.MIN_VALUE, JobStatus.NO_LATEST_RUNTIME, this.mAccessLevel, this.mCallingUid) : getUidTagComplete().getHistory(template, null, uid, set, tag, fields, Long.MIN_VALUE, JobStatus.NO_LATEST_RUNTIME, this.mAccessLevel, this.mCallingUid);
            }

            public NetworkStatsHistory getHistoryIntervalForUid(NetworkTemplate template, int uid, int set, int tag, int fields, long start, long end) {
                if (tag == 0) {
                    return getUidComplete().getHistory(template, null, uid, set, tag, fields, start, end, this.mAccessLevel, this.mCallingUid);
                }
                if (uid == Binder.getCallingUid()) {
                    return getUidTagComplete().getHistory(template, null, uid, set, tag, fields, start, end, this.mAccessLevel, this.mCallingUid);
                }
                throw new SecurityException("Calling package " + this.mCallingPackage + " cannot access tag information from a different uid");
            }

            public void close() {
                this.mUidComplete = null;
                this.mUidTagComplete = null;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int checkAccessLevel(String callingPackage) {
        return NetworkStatsAccess.checkAccessLevel(this.mContext, Binder.getCallingUid(), callingPackage);
    }

    private SubscriptionPlan resolveSubscriptionPlan(NetworkTemplate template, int flags) {
        SubscriptionPlan plan = null;
        if ((flags & 4) != 0 && this.mSettings.getAugmentEnabled()) {
            if (LOGD) {
                Slog.d(TAG, "Resolving plan for " + template);
            }
            long token = Binder.clearCallingIdentity();
            try {
                plan = ((NetworkPolicyManagerInternal) LocalServices.getService(NetworkPolicyManagerInternal.class)).getSubscriptionPlan(template);
                Binder.restoreCallingIdentity(token);
                if (LOGD) {
                    Slog.d(TAG, "Resolved to plan " + plan);
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }
        return plan;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NetworkStats internalGetSummaryForNetwork(NetworkTemplate template, int flags, long start, long end, int accessLevel, int callingUid) throws Throwable {
        NetworkStatsHistory history = internalGetHistoryForNetwork(template, flags, -1, accessLevel, callingUid);
        long now = System.currentTimeMillis();
        NetworkStatsHistory.Entry entry = history.getValues(start, end, now, (NetworkStatsHistory.Entry) null);
        NetworkStats stats = new NetworkStats(end - start, 1);
        stats.insertEntry(new NetworkStats.Entry(NetworkStats.IFACE_ALL, -1, -1, 0, -1, -1, -1, entry.rxBytes, entry.rxPackets, entry.txBytes, entry.txPackets, entry.operations));
        return stats;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NetworkStatsHistory internalGetHistoryForNetwork(NetworkTemplate template, int flags, int fields, int accessLevel, int callingUid) throws Throwable {
        SubscriptionPlan augmentPlan = resolveSubscriptionPlan(template, flags);
        synchronized (this.mStatsLock) {
            try {
                try {
                    return this.mXtStatsCached.getHistory(template, augmentPlan, -1, -1, 0, fields, Long.MIN_VALUE, JobStatus.NO_LATEST_RUNTIME, accessLevel, callingUid);
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getNetworkTotalBytes(NetworkTemplate template, long start, long end) {
        assertSystemReady();
        return internalGetSummaryForNetwork(template, 4, start, end, 3, Binder.getCallingUid()).getTotalBytes();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NetworkStats getNetworkUidBytes(NetworkTemplate template, long start, long end) {
        NetworkStatsCollection uidComplete;
        assertSystemReady();
        synchronized (this.mStatsLock) {
            uidComplete = this.mUidRecorder.getOrLoadCompleteLocked();
        }
        return uidComplete.getSummary(template, start, end, 3, 1000);
    }

    public NetworkStats getDataLayerSnapshotForUid(int uid) throws RemoteException {
        if (Binder.getCallingUid() != uid) {
            Log.w(TAG, "Snapshots only available for calling UID");
            return new NetworkStats(SystemClock.elapsedRealtime(), 0);
        }
        NetworkStats networkLayer = readNetworkStatsUidDetail(uid, NetworkStats.INTERFACES_ALL, -1);
        networkLayer.spliceOperationsFrom(this.mUidOperations);
        NetworkStats dataLayer = new NetworkStats(networkLayer.getElapsedRealtime(), networkLayer.size());
        NetworkStats.Entry entry = null;
        for (int i = 0; i < networkLayer.size(); i++) {
            entry = networkLayer.getValues(i, entry);
            entry.iface = NetworkStats.IFACE_ALL;
            dataLayer.combineValues(entry);
        }
        return dataLayer;
    }

    public NetworkStats getDetailedUidStats(String[] requiredIfaces) {
        try {
            String[] ifacesToQuery = this.mStatsFactory.augmentWithStackedInterfaces(requiredIfaces);
            return getNetworkStatsUidDetail(ifacesToQuery);
        } catch (RemoteException e) {
            Log.wtf(TAG, "Error compiling UID stats", e);
            return new NetworkStats(0L, 0);
        }
    }

    public String[] getMobileIfaces() {
        return this.mMobileIfaces;
    }

    public void incrementOperationCount(int uid, int tag, int operationCount) throws Throwable {
        Object obj;
        if (Binder.getCallingUid() != uid) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.UPDATE_DEVICE_STATS", TAG);
        }
        if (operationCount < 0) {
            throw new IllegalArgumentException("operation count can only be incremented");
        }
        if (tag == 0) {
            throw new IllegalArgumentException("operation count must have specific tag");
        }
        Object obj2 = this.mStatsLock;
        synchronized (obj2) {
            try {
                try {
                    int set = this.mActiveUidCounterSet.get(uid, 0);
                    obj = obj2;
                    try {
                        this.mUidOperations.combineValues(this.mActiveIface, uid, set, tag, 0L, 0L, 0L, 0L, operationCount);
                        this.mUidOperations.combineValues(this.mActiveIface, uid, set, 0, 0L, 0L, 0L, 0L, operationCount);
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    obj = obj2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    void setUidForeground(int uid, boolean uidForeground) {
        synchronized (this.mStatsLock) {
            int set = uidForeground ? 1 : 0;
            int oldSet = this.mActiveUidCounterSet.get(uid, 0);
            if (oldSet != set) {
                this.mActiveUidCounterSet.put(uid, set);
                NetworkManagementSocketTagger.setKernelCounterSet(uid, set);
            }
        }
    }

    public void forceUpdateIfaces(Network[] defaultNetworks, NetworkState[] networkStates, String activeIface, VpnInfo[] vpnInfos) {
        NetworkStack.checkNetworkStackPermission(this.mContext);
        long token = Binder.clearCallingIdentity();
        try {
            updateIfaces(defaultNetworks, networkStates, activeIface);
            Binder.restoreCallingIdentity(token);
            this.mStatsFactory.updateVpnInfos(vpnInfos);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void forceUpdate() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.READ_NETWORK_USAGE_HISTORY", TAG);
        long token = Binder.clearCallingIdentity();
        try {
            performPoll(3);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void advisePersistThreshold(long thresholdBytes) throws Throwable {
        this.mPersistThreshold = MathUtils.constrain(thresholdBytes, 131072L, 2097152L);
        if (LOGV) {
            Slog.v(TAG, "advisePersistThreshold() given " + thresholdBytes + ", clamped to " + this.mPersistThreshold);
        }
        long oldGlobalAlertBytes = this.mGlobalAlertBytes;
        long currentTime = this.mClock.millis();
        synchronized (this.mStatsLock) {
            if (this.mSystemReady) {
                updatePersistThresholdsLocked();
                this.mDevRecorder.maybePersistLocked(currentTime);
                this.mXtRecorder.maybePersistLocked(currentTime);
                this.mUidRecorder.maybePersistLocked(currentTime);
                this.mUidTagRecorder.maybePersistLocked(currentTime);
                if (oldGlobalAlertBytes != this.mGlobalAlertBytes) {
                    registerGlobalAlert();
                }
            }
        }
    }

    public DataUsageRequest registerUsageCallback(String callingPackage, DataUsageRequest request, Messenger messenger, IBinder binder) {
        Objects.requireNonNull(callingPackage, "calling package is null");
        Objects.requireNonNull(request, "DataUsageRequest is null");
        Objects.requireNonNull(request.template, "NetworkTemplate is null");
        Objects.requireNonNull(messenger, "messenger is null");
        Objects.requireNonNull(binder, "binder is null");
        int callingUid = Binder.getCallingUid();
        int accessLevel = checkAccessLevel(callingPackage);
        long token = Binder.clearCallingIdentity();
        try {
            DataUsageRequest normalizedRequest = this.mStatsObservers.register(request, messenger, binder, callingUid, accessLevel);
            Binder.restoreCallingIdentity(token);
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(1));
            return normalizedRequest;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void unregisterUsageRequest(DataUsageRequest request) {
        Objects.requireNonNull(request, "DataUsageRequest is null");
        int callingUid = Binder.getCallingUid();
        long token = Binder.clearCallingIdentity();
        try {
            this.mStatsObservers.unregister(request, callingUid);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public long getUidStats(int uid, int type) {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 1000 && callingUid != uid) {
            return -1L;
        }
        return nativeGetUidStat(uid, type, checkBpfStatsEnable());
    }

    public long getIfaceStats(String iface, int type) {
        long nativeIfaceStats = nativeGetIfaceStat(iface, type, checkBpfStatsEnable());
        if (nativeIfaceStats == -1) {
            return nativeIfaceStats;
        }
        return getTetherStats(iface, type) + nativeIfaceStats;
    }

    public long getTotalStats(int type) {
        long nativeTotalStats = nativeGetTotalStat(type, checkBpfStatsEnable());
        if (nativeTotalStats == -1) {
            return nativeTotalStats;
        }
        return getTetherStats(NetworkStats.IFACE_ALL, type) + nativeTotalStats;
    }

    private long getTetherStats(String iface, int type) {
        HashSet<String> limitIfaces;
        long token = Binder.clearCallingIdentity();
        try {
            try {
                NetworkStats tetherSnapshot = getNetworkStatsTethering(0);
                Binder.restoreCallingIdentity(token);
                if (iface == NetworkStats.IFACE_ALL) {
                    limitIfaces = null;
                } else {
                    limitIfaces = new HashSet<>();
                    limitIfaces.add(iface);
                }
                NetworkStats.Entry entry = tetherSnapshot.getTotal((NetworkStats.Entry) null, limitIfaces);
                if (LOGD) {
                    Slog.d(TAG, "TetherStats: iface=" + iface + " type=" + type + " entry=" + entry);
                }
                if (type == 0) {
                    return entry.rxBytes;
                }
                if (type == 1) {
                    return entry.rxPackets;
                }
                if (type == 2) {
                    return entry.txBytes;
                }
                if (type != 3) {
                    return 0L;
                }
                return entry.txPackets;
            } catch (RemoteException e) {
                Slog.w(TAG, "Error get TetherStats: " + e);
                Binder.restoreCallingIdentity(token);
                return 0L;
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    private boolean checkBpfStatsEnable() {
        return this.mUseBpfTrafficStats;
    }

    private void updatePersistThresholdsLocked() {
        this.mDevRecorder.setPersistThreshold(this.mSettings.getDevPersistBytes(this.mPersistThreshold));
        this.mXtRecorder.setPersistThreshold(this.mSettings.getXtPersistBytes(this.mPersistThreshold));
        this.mUidRecorder.setPersistThreshold(this.mSettings.getUidPersistBytes(this.mPersistThreshold));
        this.mUidTagRecorder.setPersistThreshold(this.mSettings.getUidTagPersistBytes(this.mPersistThreshold));
        this.mGlobalAlertBytes = this.mSettings.getGlobalAlertBytes(this.mPersistThreshold);
    }

    public void handleOnCollapsedRatTypeChanged() {
        this.mHandler.removeMessages(3);
        Handler handler = this.mHandler;
        handler.sendMessageDelayed(handler.obtainMessage(3), this.mSettings.getPollDelay());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateIfaces(Network[] defaultNetworks, NetworkState[] networkStates, String activeIface) {
        synchronized (this.mStatsLock) {
            this.mWakeLock.acquire();
            try {
                this.mActiveIface = activeIface;
                updateIfacesLocked(defaultNetworks, networkStates);
                this.mWakeLock.release();
            } catch (Throwable th) {
                this.mWakeLock.release();
                throw th;
            }
        }
    }

    private void updateIfacesLocked(Network[] defaultNetworks, NetworkState[] states) throws Throwable {
        NetworkState[] networkStateArr = states;
        if (this.mSystemReady) {
            if (LOGV) {
                Slog.v(TAG, "updateIfacesLocked()");
            }
            performPollLocked(1);
            this.mActiveIfaces.clear();
            this.mActiveUidIfaces.clear();
            if (defaultNetworks != null) {
                this.mDefaultNetworks = defaultNetworks;
            }
            this.mLastNetworkStates = networkStateArr;
            boolean combineSubtypeEnabled = this.mSettings.getCombineSubtypeEnabled();
            ArraySet<String> mobileIfaces = new ArraySet<>();
            int length = networkStateArr.length;
            int i = 0;
            while (i < length) {
                NetworkState state = networkStateArr[i];
                if (state.networkInfo.isConnected()) {
                    boolean isMobile = ConnectivityManager.isNetworkTypeMobile(state.networkInfo.getType());
                    boolean isDefault = ArrayUtils.contains(this.mDefaultNetworks, state.network);
                    int subType = combineSubtypeEnabled ? -1 : getSubTypeForState(state);
                    NetworkIdentity ident = NetworkIdentity.buildNetworkIdentity(this.mContext, state, isDefault, subType);
                    String baseIface = state.linkProperties.getInterfaceName();
                    if (baseIface != null) {
                        findOrCreateNetworkIdentitySet(this.mActiveIfaces, baseIface).add(ident);
                        findOrCreateNetworkIdentitySet(this.mActiveUidIfaces, baseIface).add(ident);
                        if (state.networkCapabilities.hasCapability(4) && !ident.getMetered()) {
                            NetworkIdentity vtIdent = new NetworkIdentity(ident.getType(), ident.getSubType(), ident.getSubscriberId(), ident.getNetworkId(), ident.getRoaming(), true, true);
                            findOrCreateNetworkIdentitySet(this.mActiveIfaces, "vt_data0").add(vtIdent);
                            findOrCreateNetworkIdentitySet(this.mActiveUidIfaces, "vt_data0").add(vtIdent);
                        }
                        if (isMobile) {
                            mobileIfaces.add(baseIface);
                        }
                    }
                    List<LinkProperties> stackedLinks = state.linkProperties.getStackedLinks();
                    for (LinkProperties stackedLink : stackedLinks) {
                        String stackedIface = stackedLink.getInterfaceName();
                        if (stackedIface != null) {
                            findOrCreateNetworkIdentitySet(this.mActiveIfaces, stackedIface).add(ident);
                            findOrCreateNetworkIdentitySet(this.mActiveUidIfaces, stackedIface).add(ident);
                            if (isMobile) {
                                mobileIfaces.add(stackedIface);
                            }
                            this.mStatsFactory.noteStackedIface(stackedIface, baseIface);
                        }
                    }
                }
                i++;
                networkStateArr = states;
            }
            this.mMobileIfaces = (String[]) mobileIfaces.toArray(new String[mobileIfaces.size()]);
        }
    }

    private int getSubTypeForState(NetworkState state) {
        if (state.networkCapabilities.hasTransport(0)) {
            return this.mNetworkStatsSubscriptionsMonitor.getRatTypeForSubscriberId(state.subscriberId);
        }
        return 0;
    }

    private static <K> NetworkIdentitySet findOrCreateNetworkIdentitySet(ArrayMap<K, NetworkIdentitySet> map, K key) {
        NetworkIdentitySet ident = map.get(key);
        if (ident == null) {
            NetworkIdentitySet ident2 = new NetworkIdentitySet();
            map.put(key, ident2);
            return ident2;
        }
        return ident;
    }

    private void recordSnapshotLocked(long currentTime) throws Throwable {
        Trace.traceBegin(2097152L, "snapshotUid");
        NetworkStats uidSnapshot = getNetworkStatsUidDetail(NetworkStats.INTERFACES_ALL);
        Trace.traceEnd(2097152L);
        Trace.traceBegin(2097152L, "snapshotXt");
        NetworkStats xtSnapshot = readNetworkStatsSummaryXt();
        Trace.traceEnd(2097152L);
        Trace.traceBegin(2097152L, "snapshotDev");
        NetworkStats devSnapshot = readNetworkStatsSummaryDev();
        Trace.traceEnd(2097152L);
        Trace.traceBegin(2097152L, "snapshotTether");
        NetworkStats tetherSnapshot = getNetworkStatsTethering(0);
        Trace.traceEnd(2097152L);
        xtSnapshot.combineAllValues(tetherSnapshot);
        devSnapshot.combineAllValues(tetherSnapshot);
        Trace.traceBegin(2097152L, "snapshotStatsProvider");
        NetworkStats providersnapshot = getNetworkStatsFromProviders(0);
        Trace.traceEnd(2097152L);
        xtSnapshot.combineAllValues(providersnapshot);
        devSnapshot.combineAllValues(providersnapshot);
        Trace.traceBegin(2097152L, "recordDev");
        this.mDevRecorder.recordSnapshotLocked(devSnapshot, this.mActiveIfaces, currentTime);
        Trace.traceEnd(2097152L);
        Trace.traceBegin(2097152L, "recordXt");
        this.mXtRecorder.recordSnapshotLocked(xtSnapshot, this.mActiveIfaces, currentTime);
        Trace.traceEnd(2097152L);
        Trace.traceBegin(2097152L, "recordUid");
        this.mUidRecorder.recordSnapshotLocked(uidSnapshot, this.mActiveUidIfaces, currentTime);
        Trace.traceEnd(2097152L);
        Trace.traceBegin(2097152L, "recordUidTag");
        this.mUidTagRecorder.recordSnapshotLocked(uidSnapshot, this.mActiveUidIfaces, currentTime);
        Trace.traceEnd(2097152L);
        this.mStatsObservers.updateStats(xtSnapshot, uidSnapshot, new ArrayMap<>(this.mActiveIfaces), new ArrayMap<>(this.mActiveUidIfaces), currentTime);
    }

    private void bootstrapStatsLocked() throws Throwable {
        long currentTime = this.mClock.millis();
        try {
            recordSnapshotLocked(currentTime);
        } catch (RemoteException e) {
        } catch (IllegalStateException e2) {
            Slog.w(TAG, "problem reading network stats: " + e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performPoll(int flags) {
        synchronized (this.mStatsLock) {
            this.mWakeLock.acquire();
            try {
                performPollLocked(flags);
                this.mWakeLock.release();
            } catch (Throwable th) {
                this.mWakeLock.release();
                throw th;
            }
        }
    }

    private void performPollLocked(int flags) throws Throwable {
        if (this.mSystemReady) {
            if (LOGV) {
                Slog.v(TAG, "performPollLocked(flags=0x" + Integer.toHexString(flags) + ")");
            }
            Trace.traceBegin(2097152L, "performPollLocked");
            boolean persistNetwork = (flags & 1) != 0;
            boolean persistUid = (flags & 2) != 0;
            boolean persistForce = (flags & 256) != 0;
            Trace.traceBegin(2097152L, "provider.requestStatsUpdate");
            int registeredCallbackCount = this.mStatsProviderCbList.size();
            this.mStatsProviderSem.drainPermits();
            invokeForAllStatsProviderCallbacks(new ThrowingConsumer() { // from class: com.android.server.net.-$$Lambda$NetworkStatsService$xfTbcb80CcmFJlvul1xYQmewxlg
                @Override // com.android.server.net.NetworkStatsService.ThrowingConsumer
                public final void accept(Object obj) {
                    ((NetworkStatsService.NetworkStatsProviderCallbackImpl) obj).mProvider.onRequestStatsUpdate(0);
                }
            });
            try {
                this.mStatsProviderSem.tryAcquire(registeredCallbackCount, 100L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                Log.d(TAG, "requestStatsUpdate - providers responded " + this.mStatsProviderSem.availablePermits() + SliceClientPermissions.SliceAuthority.DELIMITER + registeredCallbackCount + " : " + e);
            }
            Trace.traceEnd(2097152L);
            long currentTime = this.mClock.millis();
            try {
                recordSnapshotLocked(currentTime);
                Trace.traceBegin(2097152L, "[persisting]");
                if (persistForce) {
                    this.mDevRecorder.forcePersistLocked(currentTime);
                    this.mXtRecorder.forcePersistLocked(currentTime);
                    this.mUidRecorder.forcePersistLocked(currentTime);
                    this.mUidTagRecorder.forcePersistLocked(currentTime);
                } else {
                    if (persistNetwork) {
                        this.mDevRecorder.maybePersistLocked(currentTime);
                        this.mXtRecorder.maybePersistLocked(currentTime);
                    }
                    if (persistUid) {
                        this.mUidRecorder.maybePersistLocked(currentTime);
                        this.mUidTagRecorder.maybePersistLocked(currentTime);
                    }
                }
                Trace.traceEnd(2097152L);
                if (this.mSettings.getSampleEnabled()) {
                    performSampleLocked();
                }
                Handler handler = this.mHandler;
                handler.sendMessage(handler.obtainMessage(4));
                Trace.traceEnd(2097152L);
            } catch (RemoteException e2) {
            } catch (IllegalStateException e3) {
                Log.wtf(TAG, "problem reading network stats", e3);
            }
        }
    }

    private void performSampleLocked() {
        long currentTime = this.mClock.millis();
        NetworkTemplate template = NetworkTemplate.buildTemplateMobileWildcard();
        NetworkStats.Entry devTotal = this.mDevRecorder.getTotalSinceBootLocked(template);
        NetworkStats.Entry xtTotal = this.mXtRecorder.getTotalSinceBootLocked(template);
        NetworkStats.Entry uidTotal = this.mUidRecorder.getTotalSinceBootLocked(template);
        EventLogTags.writeNetstatsMobileSample(devTotal.rxBytes, devTotal.rxPackets, devTotal.txBytes, devTotal.txPackets, xtTotal.rxBytes, xtTotal.rxPackets, xtTotal.txBytes, xtTotal.txPackets, uidTotal.rxBytes, uidTotal.rxPackets, uidTotal.txBytes, uidTotal.txPackets, currentTime);
        NetworkTemplate template2 = NetworkTemplate.buildTemplateWifiWildcard();
        NetworkStats.Entry devTotal2 = this.mDevRecorder.getTotalSinceBootLocked(template2);
        NetworkStats.Entry xtTotal2 = this.mXtRecorder.getTotalSinceBootLocked(template2);
        NetworkStats.Entry uidTotal2 = this.mUidRecorder.getTotalSinceBootLocked(template2);
        EventLogTags.writeNetstatsWifiSample(devTotal2.rxBytes, devTotal2.rxPackets, devTotal2.txBytes, devTotal2.txPackets, xtTotal2.rxBytes, xtTotal2.rxPackets, xtTotal2.txBytes, xtTotal2.txPackets, uidTotal2.rxBytes, uidTotal2.rxPackets, uidTotal2.txBytes, uidTotal2.txPackets, currentTime);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeUidsLocked(int... uids) throws Throwable {
        if (LOGV) {
            Slog.v(TAG, "removeUidsLocked() for UIDs " + Arrays.toString(uids));
        }
        performPollLocked(3);
        this.mUidRecorder.removeUidsLocked(uids);
        this.mUidTagRecorder.removeUidsLocked(uids);
        for (int uid : uids) {
            NetworkManagementSocketTagger.resetKernelUidStats(uid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeUserLocked(int userId) throws Throwable {
        if (LOGV) {
            Slog.v(TAG, "removeUserLocked() for userId=" + userId);
        }
        int[] uids = new int[0];
        List<ApplicationInfo> apps = this.mContext.getPackageManager().getInstalledApplications(4194816);
        for (ApplicationInfo app : apps) {
            int uid = UserHandle.getUid(userId, app.uid);
            uids = ArrayUtils.appendInt(uids, uid);
        }
        removeUidsLocked(uids);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class NetworkStatsManagerInternalImpl extends NetworkStatsManagerInternal {
        private NetworkStatsManagerInternalImpl() {
        }

        @Override // com.android.server.net.NetworkStatsManagerInternal
        public long getNetworkTotalBytes(NetworkTemplate template, long start, long end) {
            Trace.traceBegin(2097152L, "getNetworkTotalBytes");
            try {
                return NetworkStatsService.this.getNetworkTotalBytes(template, start, end);
            } finally {
                Trace.traceEnd(2097152L);
            }
        }

        @Override // com.android.server.net.NetworkStatsManagerInternal
        public NetworkStats getNetworkUidBytes(NetworkTemplate template, long start, long end) {
            Trace.traceBegin(2097152L, "getNetworkUidBytes");
            try {
                return NetworkStatsService.this.getNetworkUidBytes(template, start, end);
            } finally {
                Trace.traceEnd(2097152L);
            }
        }

        @Override // com.android.server.net.NetworkStatsManagerInternal
        public void setUidForeground(int uid, boolean uidForeground) {
            NetworkStatsService.this.setUidForeground(uid, uidForeground);
        }

        @Override // com.android.server.net.NetworkStatsManagerInternal
        public void advisePersistThreshold(long thresholdBytes) throws Throwable {
            NetworkStatsService.this.advisePersistThreshold(thresholdBytes);
        }

        @Override // com.android.server.net.NetworkStatsManagerInternal
        public void forceUpdate() {
            NetworkStatsService.this.forceUpdate();
        }

        @Override // com.android.server.net.NetworkStatsManagerInternal
        public void setStatsProviderLimitAsync(final String iface, final long quota) throws Throwable {
            if (NetworkStatsService.LOGV) {
                Slog.v(NetworkStatsService.TAG, "setStatsProviderLimitAsync(" + iface + "," + quota + ")");
            }
            NetworkStatsService.this.invokeForAllStatsProviderCallbacks(new ThrowingConsumer() { // from class: com.android.server.net.-$$Lambda$NetworkStatsService$NetworkStatsManagerInternalImpl$MWLBRMSsUTWVuMm3yJqH7bc-ZoI
                @Override // com.android.server.net.NetworkStatsService.ThrowingConsumer
                public final void accept(Object obj) {
                    ((NetworkStatsService.NetworkStatsProviderCallbackImpl) obj).mProvider.onSetLimit(iface, quota);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x026e A[Catch: all -> 0x02ac, TryCatch #8 {all -> 0x02ac, blocks: (B:115:0x02aa, B:94:0x01f2, B:95:0x0201, B:97:0x021a, B:98:0x0233, B:100:0x026e, B:102:0x0280, B:103:0x0290, B:108:0x0298, B:87:0x01d5, B:88:0x01db), top: B:121:0x01d5, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x0280 A[Catch: all -> 0x02ac, TryCatch #8 {all -> 0x02ac, blocks: (B:115:0x02aa, B:94:0x01f2, B:95:0x0201, B:97:0x021a, B:98:0x0233, B:100:0x026e, B:102:0x0280, B:103:0x0290, B:108:0x0298, B:87:0x01d5, B:88:0x01db), top: B:121:0x01d5, inners: #1 }] */
    /* JADX WARN: Code duplicated, block: B:121:0x01d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:0x00ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x00d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x00c2 A[Catch: all -> 0x00b5, TryCatch #4 {all -> 0x00b5, blocks: (B:45:0x00a6, B:47:0x00b0, B:48:0x00b3, B:53:0x00c2, B:54:0x00cc), top: B:126:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x010c A[Catch: all -> 0x0132, TryCatch #2 {all -> 0x0132, blocks: (B:61:0x0107, B:63:0x010c, B:65:0x011f, B:66:0x0130, B:78:0x0183, B:83:0x01b3), top: B:123:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:65:0x011f A[Catch: all -> 0x0132, TryCatch #2 {all -> 0x0132, blocks: (B:61:0x0107, B:63:0x010c, B:65:0x011f, B:66:0x0130, B:78:0x0183, B:83:0x01b3), top: B:123:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0150  */
    /* JADX WARN: Code duplicated, block: B:78:0x0183 A[Catch: all -> 0x0132, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0132, blocks: (B:61:0x0107, B:63:0x010c, B:65:0x011f, B:66:0x0130, B:78:0x0183, B:83:0x01b3), top: B:123:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:83:0x01b3 A[Catch: all -> 0x0132, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0132, blocks: (B:61:0x0107, B:63:0x010c, B:65:0x011f, B:66:0x0130, B:78:0x0183, B:83:0x01b3), top: B:123:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01e7 A[Catch: all -> 0x029b, TRY_LEAVE, TryCatch #7 {all -> 0x029b, blocks: (B:75:0x0154, B:76:0x017b, B:80:0x019f, B:81:0x01ab, B:85:0x01cf, B:86:0x01d4, B:89:0x01dc, B:92:0x01e7), top: B:131:0x0154 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x021a A[Catch: all -> 0x02ac, LOOP:4: B:96:0x0218->B:97:0x021a, LOOP_END, TryCatch #8 {all -> 0x02ac, blocks: (B:115:0x02aa, B:94:0x01f2, B:95:0x0201, B:97:0x021a, B:98:0x0233, B:100:0x026e, B:102:0x0280, B:103:0x0290, B:108:0x0298, B:87:0x01d5, B:88:0x01db), top: B:121:0x01d5, inners: #1 }] */
    protected void dump(FileDescriptor fd, PrintWriter rawWriter, String[] args) throws Throwable {
        Object obj;
        long end;
        long start;
        int i;
        int i2;
        SparseIntArray calls;
        int N;
        long[] values;
        int j;
        int end2;
        int j2;
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, rawWriter)) {
            HashSet<String> argSet = new HashSet<>();
            long duration = 86400000;
            for (String arg : args) {
                argSet.add(arg);
                if (arg.startsWith("--duration=")) {
                    try {
                        long duration2 = Long.parseLong(arg.substring(11));
                        duration = duration2;
                    } catch (NumberFormatException e) {
                    }
                }
            }
            boolean z = true;
            boolean poll = argSet.contains("--poll") || argSet.contains("poll");
            boolean checkin = argSet.contains("--checkin");
            boolean fullHistory = argSet.contains("--full") || argSet.contains("full");
            final boolean includeUid = argSet.contains("--uid") || argSet.contains("detail");
            if (!argSet.contains("--tag") && !argSet.contains("detail")) {
                z = false;
            }
            boolean includeTag = z;
            final IndentingPrintWriter pw = new IndentingPrintWriter(rawWriter, "  ");
            Object obj2 = this.mStatsLock;
            synchronized (obj2) {
                try {
                    if (args.length <= 0) {
                        if (poll) {
                            performPollLocked(259);
                            pw.println("Forced poll");
                            return;
                        }
                        if (checkin) {
                            end = System.currentTimeMillis();
                            start = end - duration;
                            pw.print("v1,");
                            pw.print(start / 1000);
                            pw.print(',');
                            pw.print(end / 1000);
                            pw.println();
                            pw.println(PREFIX_XT);
                            this.mXtRecorder.dumpCheckin(rawWriter, start, end);
                            if (includeUid) {
                                pw.println("uid");
                                this.mUidRecorder.dumpCheckin(rawWriter, start, end);
                            }
                            if (includeTag) {
                                pw.println("tag");
                                this.mUidTagRecorder.dumpCheckin(rawWriter, start, end);
                            }
                            return;
                        }
                        obj = obj2;
                        pw.println("Configs:");
                        pw.increaseIndent();
                        pw.printPair("netstats_combine_subtype_enabled", Boolean.valueOf(this.mSettings.getCombineSubtypeEnabled()));
                        pw.println();
                        pw.decreaseIndent();
                        pw.println("Active interfaces:");
                        pw.increaseIndent();
                        for (i = 0; i < this.mActiveIfaces.size(); i++) {
                            pw.printPair("iface", this.mActiveIfaces.keyAt(i));
                            pw.printPair("ident", this.mActiveIfaces.valueAt(i));
                            pw.println();
                        }
                        pw.decreaseIndent();
                        pw.println("Active UID interfaces:");
                        pw.increaseIndent();
                        for (i2 = 0; i2 < this.mActiveUidIfaces.size(); i2++) {
                            pw.printPair("iface", this.mActiveUidIfaces.keyAt(i2));
                            pw.printPair("ident", this.mActiveUidIfaces.valueAt(i2));
                            pw.println();
                        }
                        pw.decreaseIndent();
                        synchronized (this.mOpenSessionCallsPerUid) {
                            calls = this.mOpenSessionCallsPerUid.clone();
                            N = calls.size();
                            values = new long[N];
                            j = 0;
                            while (j < N) {
                                HashSet<String> argSet2 = argSet;
                                long duration3 = duration;
                                values[j] = (((long) calls.valueAt(j)) << 32) | ((long) calls.keyAt(j));
                                j++;
                                argSet = argSet2;
                                duration = duration3;
                            }
                            Arrays.sort(values);
                            pw.println("Top openSession callers (uid=count):");
                            pw.increaseIndent();
                            end2 = Math.max(0, N - 20);
                            for (j2 = N - 1; j2 >= end2; j2--) {
                                int uid = (int) (values[j2] & (-1));
                                int count = (int) (values[j2] >> 32);
                                pw.print(uid);
                                pw.print("=");
                                pw.println(count);
                            }
                            pw.decreaseIndent();
                            pw.println();
                            pw.println("Stats Providers:");
                            pw.increaseIndent();
                            invokeForAllStatsProviderCallbacks(new ThrowingConsumer() { // from class: com.android.server.net.-$$Lambda$NetworkStatsService$-IJG-2djYyEsmGNuCKyh0LuHG28
                                @Override // com.android.server.net.NetworkStatsService.ThrowingConsumer
                                public final void accept(Object obj3) throws RemoteException {
                                    NetworkStatsService.lambda$dump$2(pw, includeUid, (NetworkStatsService.NetworkStatsProviderCallbackImpl) obj3);
                                }
                            });
                            pw.decreaseIndent();
                            pw.println("Dev stats:");
                            pw.increaseIndent();
                            this.mDevRecorder.dumpLocked(pw, fullHistory);
                            pw.decreaseIndent();
                            pw.println("Xt stats:");
                            pw.increaseIndent();
                            this.mXtRecorder.dumpLocked(pw, fullHistory);
                            pw.decreaseIndent();
                            if (includeUid) {
                                pw.println("UID stats:");
                                pw.increaseIndent();
                                this.mUidRecorder.dumpLocked(pw, fullHistory);
                                pw.decreaseIndent();
                            }
                            if (includeTag) {
                                pw.println("UID tag stats:");
                                pw.increaseIndent();
                                this.mUidTagRecorder.dumpLocked(pw, fullHistory);
                                pw.decreaseIndent();
                            }
                            return;
                        }
                    }
                    try {
                        if (PriorityDump.PROTO_ARG.equals(args[0])) {
                            dumpProtoLocked(fd);
                            return;
                        }
                        if (poll) {
                            performPollLocked(259);
                            pw.println("Forced poll");
                            return;
                        }
                        try {
                            if (checkin) {
                                try {
                                    end = System.currentTimeMillis();
                                    start = end - duration;
                                    pw.print("v1,");
                                    try {
                                        pw.print(start / 1000);
                                        pw.print(',');
                                        pw.print(end / 1000);
                                        pw.println();
                                        pw.println(PREFIX_XT);
                                        this.mXtRecorder.dumpCheckin(rawWriter, start, end);
                                        if (includeUid) {
                                            pw.println("uid");
                                            this.mUidRecorder.dumpCheckin(rawWriter, start, end);
                                        }
                                        if (includeTag) {
                                            pw.println("tag");
                                            this.mUidTagRecorder.dumpCheckin(rawWriter, start, end);
                                        }
                                        return;
                                    } catch (Throwable th) {
                                        th = th;
                                        obj = obj2;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    obj = obj2;
                                }
                            } else {
                                obj = obj2;
                                try {
                                    pw.println("Configs:");
                                    pw.increaseIndent();
                                    pw.printPair("netstats_combine_subtype_enabled", Boolean.valueOf(this.mSettings.getCombineSubtypeEnabled()));
                                    pw.println();
                                    pw.decreaseIndent();
                                    pw.println("Active interfaces:");
                                    pw.increaseIndent();
                                    while (i < this.mActiveIfaces.size()) {
                                        pw.printPair("iface", this.mActiveIfaces.keyAt(i));
                                        pw.printPair("ident", this.mActiveIfaces.valueAt(i));
                                        pw.println();
                                    }
                                    pw.decreaseIndent();
                                    pw.println("Active UID interfaces:");
                                    pw.increaseIndent();
                                    while (i2 < this.mActiveUidIfaces.size()) {
                                        pw.printPair("iface", this.mActiveUidIfaces.keyAt(i2));
                                        pw.printPair("ident", this.mActiveUidIfaces.valueAt(i2));
                                        pw.println();
                                    }
                                    pw.decreaseIndent();
                                    synchronized (this.mOpenSessionCallsPerUid) {
                                        try {
                                            try {
                                                calls = this.mOpenSessionCallsPerUid.clone();
                                            } catch (Throwable th3) {
                                                th = th3;
                                                while (true) {
                                                    try {
                                                        throw th;
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                    }
                                                }
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                        }
                                    }
                                    N = calls.size();
                                    values = new long[N];
                                    j = 0;
                                    while (j < N) {
                                        HashSet<String> argSet3 = argSet;
                                        long duration4 = duration;
                                        values[j] = (((long) calls.valueAt(j)) << 32) | ((long) calls.keyAt(j));
                                        j++;
                                        argSet = argSet3;
                                        duration = duration4;
                                    }
                                    Arrays.sort(values);
                                    pw.println("Top openSession callers (uid=count):");
                                    pw.increaseIndent();
                                    end2 = Math.max(0, N - 20);
                                    while (j2 >= end2) {
                                        int uid2 = (int) (values[j2] & (-1));
                                        int count2 = (int) (values[j2] >> 32);
                                        pw.print(uid2);
                                        pw.print("=");
                                        pw.println(count2);
                                    }
                                    pw.decreaseIndent();
                                    pw.println();
                                    pw.println("Stats Providers:");
                                    pw.increaseIndent();
                                    invokeForAllStatsProviderCallbacks(new ThrowingConsumer() { // from class: com.android.server.net.-$$Lambda$NetworkStatsService$-IJG-2djYyEsmGNuCKyh0LuHG28
                                        @Override // com.android.server.net.NetworkStatsService.ThrowingConsumer
                                        public final void accept(Object obj3) throws RemoteException {
                                            NetworkStatsService.lambda$dump$2(pw, includeUid, (NetworkStatsService.NetworkStatsProviderCallbackImpl) obj3);
                                        }
                                    });
                                    pw.decreaseIndent();
                                    pw.println("Dev stats:");
                                    pw.increaseIndent();
                                    this.mDevRecorder.dumpLocked(pw, fullHistory);
                                    pw.decreaseIndent();
                                    pw.println("Xt stats:");
                                    pw.increaseIndent();
                                    this.mXtRecorder.dumpLocked(pw, fullHistory);
                                    pw.decreaseIndent();
                                    if (includeUid) {
                                        pw.println("UID stats:");
                                        pw.increaseIndent();
                                        this.mUidRecorder.dumpLocked(pw, fullHistory);
                                        pw.decreaseIndent();
                                    }
                                    if (includeTag) {
                                        pw.println("UID tag stats:");
                                        pw.increaseIndent();
                                        this.mUidTagRecorder.dumpLocked(pw, fullHistory);
                                        pw.decreaseIndent();
                                    }
                                    return;
                                } catch (Throwable th6) {
                                    th = th6;
                                }
                            }
                        } catch (Throwable th7) {
                            th = th7;
                        }
                    } catch (Throwable th8) {
                        th = th8;
                        obj = obj2;
                    }
                } catch (Throwable th9) {
                    th = th9;
                    obj = obj2;
                }
                throw th;
            }
        }
    }

    static /* synthetic */ void lambda$dump$2(IndentingPrintWriter pw, boolean includeUid, NetworkStatsProviderCallbackImpl cb) throws RemoteException {
        pw.println(cb.mTag + " Xt:");
        pw.increaseIndent();
        pw.print(cb.getCachedStats(0).toString());
        pw.decreaseIndent();
        if (includeUid) {
            pw.println(cb.mTag + " Uid:");
            pw.increaseIndent();
            pw.print(cb.getCachedStats(1).toString());
            pw.decreaseIndent();
        }
    }

    private void dumpProtoLocked(FileDescriptor fd) {
        ProtoOutputStream proto = new ProtoOutputStream(fd);
        dumpInterfaces(proto, 2246267895809L, this.mActiveIfaces);
        dumpInterfaces(proto, 2246267895810L, this.mActiveUidIfaces);
        this.mDevRecorder.dumpDebugLocked(proto, 1146756268035L);
        this.mXtRecorder.dumpDebugLocked(proto, 1146756268036L);
        this.mUidRecorder.dumpDebugLocked(proto, 1146756268037L);
        this.mUidTagRecorder.dumpDebugLocked(proto, 1146756268038L);
        proto.flush();
    }

    private static void dumpInterfaces(ProtoOutputStream proto, long tag, ArrayMap<String, NetworkIdentitySet> ifaces) {
        for (int i = 0; i < ifaces.size(); i++) {
            long start = proto.start(tag);
            proto.write(1138166333441L, ifaces.keyAt(i));
            ifaces.valueAt(i).dumpDebug(proto, 1146756268034L);
            proto.end(start);
        }
    }

    private NetworkStats readNetworkStatsSummaryDev() {
        try {
            return this.mStatsFactory.readNetworkStatsSummaryDev();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    private NetworkStats readNetworkStatsSummaryXt() {
        try {
            return this.mStatsFactory.readNetworkStatsSummaryXt();
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    private NetworkStats readNetworkStatsUidDetail(int uid, String[] ifaces, int tag) {
        try {
            return this.mStatsFactory.readNetworkStatsDetail(uid, ifaces, tag);
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    private NetworkStats getNetworkStatsUidDetail(String[] ifaces) throws Throwable {
        NetworkStats uidSnapshot = readNetworkStatsUidDetail(-1, ifaces, -1);
        NetworkStats tetherSnapshot = getNetworkStatsTethering(1);
        tetherSnapshot.filter(-1, ifaces, -1);
        this.mStatsFactory.apply464xlatAdjustments(uidSnapshot, tetherSnapshot);
        uidSnapshot.combineAllValues(tetherSnapshot);
        NetworkStats providerStats = getNetworkStatsFromProviders(1);
        providerStats.filter(-1, ifaces, -1);
        this.mStatsFactory.apply464xlatAdjustments(uidSnapshot, providerStats);
        uidSnapshot.combineAllValues(providerStats);
        uidSnapshot.combineAllValues(this.mUidOperations);
        return uidSnapshot;
    }

    private NetworkStats getNetworkStatsTethering(int how) throws RemoteException {
        try {
            return this.mNetworkManager.getNetworkStatsTethering(how);
        } catch (IllegalStateException e) {
            Log.wtf(TAG, "problem reading network stats", e);
            return new NetworkStats(0L, 10);
        }
    }

    private boolean checkAnyPermissionOf(String... permissions) {
        for (String permission : permissions) {
            if (this.mContext.checkCallingOrSelfPermission(permission) == 0) {
                return true;
            }
        }
        return false;
    }

    private void enforceAnyPermissionOf(String... permissions) {
        if (!checkAnyPermissionOf(permissions)) {
            throw new SecurityException("Requires one of the following permissions: " + String.join(", ", permissions) + ".");
        }
    }

    public INetworkStatsProviderCallback registerNetworkStatsProvider(String tag, INetworkStatsProvider provider) {
        enforceAnyPermissionOf("android.permission.NETWORK_STATS_PROVIDER", "android.permission.MAINLINE_NETWORK_STACK");
        Objects.requireNonNull(provider, "provider is null");
        Objects.requireNonNull(tag, "tag is null");
        try {
            NetworkStatsProviderCallbackImpl callback = new NetworkStatsProviderCallbackImpl(tag, provider, this.mStatsProviderSem, this.mAlertObserver, this.mStatsProviderCbList);
            this.mStatsProviderCbList.add(callback);
            Log.d(TAG, "registerNetworkStatsProvider from " + callback.mTag + " uid/pid=" + getCallingUid() + SliceClientPermissions.SliceAuthority.DELIMITER + getCallingPid());
            return callback;
        } catch (RemoteException e) {
            Log.e(TAG, "registerNetworkStatsProvider failed", e);
            return null;
        }
    }

    private NetworkStats getNetworkStatsFromProviders(final int how) throws Throwable {
        final NetworkStats ret = new NetworkStats(0L, 0);
        invokeForAllStatsProviderCallbacks(new ThrowingConsumer() { // from class: com.android.server.net.-$$Lambda$NetworkStatsService$InNd0bxX6ObmdmLP-_WGePLtUfE
            @Override // com.android.server.net.NetworkStatsService.ThrowingConsumer
            public final void accept(Object obj) {
                ret.combineAllValues(((NetworkStatsService.NetworkStatsProviderCallbackImpl) obj).getCachedStats(how));
            }
        });
        return ret;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokeForAllStatsProviderCallbacks(ThrowingConsumer<NetworkStatsProviderCallbackImpl, RemoteException> task) throws Throwable {
        for (NetworkStatsProviderCallbackImpl cb : this.mStatsProviderCbList) {
            try {
                task.accept(cb);
            } catch (RemoteException e) {
                Log.e(TAG, "Fail to broadcast to provider: " + cb.mTag, e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class NetworkStatsProviderCallbackImpl extends INetworkStatsProviderCallback.Stub implements IBinder.DeathRecipient {
        final INetworkManagementEventObserver mAlertObserver;
        final INetworkStatsProvider mProvider;
        private final Semaphore mSemaphore;
        final CopyOnWriteArrayList<NetworkStatsProviderCallbackImpl> mStatsProviderCbList;
        final String mTag;
        private final Object mProviderStatsLock = new Object();
        private final NetworkStats mIfaceStats = new NetworkStats(0, 0);
        private final NetworkStats mUidStats = new NetworkStats(0, 0);

        NetworkStatsProviderCallbackImpl(String tag, INetworkStatsProvider provider, Semaphore semaphore, INetworkManagementEventObserver alertObserver, CopyOnWriteArrayList<NetworkStatsProviderCallbackImpl> cbList) throws RemoteException {
            this.mTag = tag;
            this.mProvider = provider;
            provider.asBinder().linkToDeath(this, 0);
            this.mSemaphore = semaphore;
            this.mAlertObserver = alertObserver;
            this.mStatsProviderCbList = cbList;
        }

        public NetworkStats getCachedStats(int how) {
            NetworkStats stats;
            NetworkStats networkStatsClone;
            synchronized (this.mProviderStatsLock) {
                try {
                    if (how == 0) {
                        stats = this.mIfaceStats;
                    } else if (how == 1) {
                        stats = this.mUidStats;
                    } else {
                        throw new IllegalArgumentException("Invalid type: " + how);
                    }
                    networkStatsClone = stats.clone();
                } catch (Throwable th) {
                    throw th;
                }
            }
            return networkStatsClone;
        }

        public void notifyStatsUpdated(int token, NetworkStats ifaceStats, NetworkStats uidStats) {
            synchronized (this.mProviderStatsLock) {
                if (ifaceStats != null) {
                    try {
                        this.mIfaceStats.combineAllValues(ifaceStats);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (uidStats != null) {
                    this.mUidStats.combineAllValues(uidStats);
                }
            }
            this.mSemaphore.release();
        }

        public void notifyAlertReached() throws RemoteException {
            this.mAlertObserver.limitReached(NetworkManagementService.LIMIT_GLOBAL_ALERT, (String) null);
        }

        public void notifyLimitReached() {
            Log.d(NetworkStatsService.TAG, this.mTag + ": onLimitReached");
            ((NetworkPolicyManagerInternal) LocalServices.getService(NetworkPolicyManagerInternal.class)).onStatsProviderLimitReached(this.mTag);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Log.d(NetworkStatsService.TAG, this.mTag + ": binderDied");
            this.mStatsProviderCbList.remove(this);
        }

        public void unregister() {
            Log.d(NetworkStatsService.TAG, this.mTag + ": unregister");
            this.mStatsProviderCbList.remove(this);
        }
    }

    private void assertSystemReady() {
        if (!this.mSystemReady) {
            throw new IllegalStateException("System not ready");
        }
    }

    private class DropBoxNonMonotonicObserver implements NetworkStats.NonMonotonicObserver<String> {
        private DropBoxNonMonotonicObserver() {
        }

        public void foundNonMonotonic(NetworkStats left, int leftIndex, NetworkStats right, int rightIndex, String cookie) {
            Log.w(NetworkStatsService.TAG, "Found non-monotonic values; saving to dropbox");
            StringBuilder builder = new StringBuilder();
            builder.append("found non-monotonic " + cookie + " values at left[" + leftIndex + "] - right[" + rightIndex + "]\n");
            builder.append("left=");
            builder.append(left);
            builder.append('\n');
            builder.append("right=");
            builder.append(right);
            builder.append('\n');
            ((DropBoxManager) NetworkStatsService.this.mContext.getSystemService(DropBoxManager.class)).addText(NetworkStatsService.TAG_NETSTATS_ERROR, builder.toString());
        }

        public void foundNonMonotonic(NetworkStats stats, int statsIndex, String cookie) {
            Log.w(NetworkStatsService.TAG, "Found non-monotonic values; saving to dropbox");
            StringBuilder builder = new StringBuilder();
            builder.append("Found non-monotonic " + cookie + " values at [" + statsIndex + "]\n");
            builder.append("stats=");
            builder.append(stats);
            builder.append('\n');
            ((DropBoxManager) NetworkStatsService.this.mContext.getSystemService(DropBoxManager.class)).addText(NetworkStatsService.TAG_NETSTATS_ERROR, builder.toString());
        }
    }

    private static class DefaultNetworkStatsSettings implements NetworkStatsSettings {
        private final ContentResolver mResolver;

        public DefaultNetworkStatsSettings(Context context) {
            ContentResolver contentResolver = context.getContentResolver();
            Objects.requireNonNull(contentResolver);
            this.mResolver = contentResolver;
        }

        private long getGlobalLong(String name, long def) {
            return Settings.Global.getLong(this.mResolver, name, def);
        }

        private boolean getGlobalBoolean(String str, boolean z) {
            return Settings.Global.getInt(this.mResolver, str, z ? 1 : 0) != 0;
        }

        @Override // com.android.server.net.NetworkStatsService.NetworkStatsSettings
        public long getPollInterval() {
            return getGlobalLong("netstats_poll_interval", 1800000L);
        }

        @Override // com.android.server.net.NetworkStatsService.NetworkStatsSettings
        public long getPollDelay() {
            return 1000L;
        }

        @Override // com.android.server.net.NetworkStatsService.NetworkStatsSettings
        public long getGlobalAlertBytes(long def) {
            return getGlobalLong("netstats_global_alert_bytes", def);
        }

        @Override // com.android.server.net.NetworkStatsService.NetworkStatsSettings
        public boolean getSampleEnabled() {
            return getGlobalBoolean("netstats_sample_enabled", true);
        }

        @Override // com.android.server.net.NetworkStatsService.NetworkStatsSettings
        public boolean getAugmentEnabled() {
            return getGlobalBoolean("netstats_augment_enabled", true);
        }

        @Override // com.android.server.net.NetworkStatsService.NetworkStatsSettings
        public boolean getCombineSubtypeEnabled() {
            return getGlobalBoolean("netstats_combine_subtype_enabled", false);
        }

        @Override // com.android.server.net.NetworkStatsService.NetworkStatsSettings
        public NetworkStatsSettings.Config getDevConfig() {
            return new NetworkStatsSettings.Config(getGlobalLong("netstats_dev_bucket_duration", AppStandbyController.SettingsObserver.DEFAULT_STRONG_USAGE_TIMEOUT), getGlobalLong("netstats_dev_rotate_age", 1296000000L), getGlobalLong("netstats_dev_delete_age", 7776000000L));
        }

        @Override // com.android.server.net.NetworkStatsService.NetworkStatsSettings
        public NetworkStatsSettings.Config getXtConfig() {
            return getDevConfig();
        }

        @Override // com.android.server.net.NetworkStatsService.NetworkStatsSettings
        public NetworkStatsSettings.Config getUidConfig() {
            return new NetworkStatsSettings.Config(getGlobalLong("netstats_uid_bucket_duration", AppStandbyController.SettingsObserver.DEFAULT_SYSTEM_UPDATE_TIMEOUT), getGlobalLong("netstats_uid_rotate_age", 1296000000L), getGlobalLong("netstats_uid_delete_age", 7776000000L));
        }

        @Override // com.android.server.net.NetworkStatsService.NetworkStatsSettings
        public NetworkStatsSettings.Config getUidTagConfig() {
            return new NetworkStatsSettings.Config(getGlobalLong("netstats_uid_tag_bucket_duration", AppStandbyController.SettingsObserver.DEFAULT_SYSTEM_UPDATE_TIMEOUT), getGlobalLong("netstats_uid_tag_rotate_age", 432000000L), getGlobalLong("netstats_uid_tag_delete_age", 1296000000L));
        }

        @Override // com.android.server.net.NetworkStatsService.NetworkStatsSettings
        public long getDevPersistBytes(long def) {
            return getGlobalLong("netstats_dev_persist_bytes", def);
        }

        @Override // com.android.server.net.NetworkStatsService.NetworkStatsSettings
        public long getXtPersistBytes(long def) {
            return getDevPersistBytes(def);
        }

        @Override // com.android.server.net.NetworkStatsService.NetworkStatsSettings
        public long getUidPersistBytes(long def) {
            return getGlobalLong("netstats_uid_persist_bytes", def);
        }

        @Override // com.android.server.net.NetworkStatsService.NetworkStatsSettings
        public long getUidTagPersistBytes(long def) {
            return getGlobalLong("netstats_uid_tag_persist_bytes", def);
        }
    }
}
