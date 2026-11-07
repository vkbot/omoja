package com.android.server.location;

import android.R;
import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.location.Address;
import android.location.Criteria;
import android.location.GeocoderParams;
import android.location.Geofence;
import android.location.GnssMeasurementCorrections;
import android.location.GnssRequest;
import android.location.IBatchedLocationCallback;
import android.location.IGnssAntennaInfoListener;
import android.location.IGnssMeasurementsListener;
import android.location.IGnssNavigationMessageListener;
import android.location.IGnssStatusListener;
import android.location.IGpsGeofenceHardware;
import android.location.ILocationListener;
import android.location.ILocationManager;
import android.location.Location;
import android.location.LocationManager;
import android.location.LocationManagerInternal;
import android.location.LocationProvider;
import android.location.LocationRequest;
import android.location.LocationTime;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.IBinder;
import android.os.ICancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.os.PowerManagerInternal;
import android.os.PowerSaveState;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.EventLog;
import android.util.Log;
import android.util.SparseArray;
import android.util.TimeUtils;
import com.android.internal.content.PackageMonitor;
import com.android.internal.location.ProviderProperties;
import com.android.internal.location.ProviderRequest;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.PendingIntentUtils;
import com.android.server.SystemService;
import com.android.server.hdmi.HdmiCecKeycode;
import com.android.server.job.controllers.JobStatus;
import com.android.server.location.gnss.GnssManagerService;
import com.android.server.notification.SnoozeHelper;
import com.android.server.pm.permission.PermissionManagerServiceInternal;
import java.io.ByteArrayOutputStream;
import java.io.FileDescriptor;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
import java.util.function.Function;

/* JADX INFO: loaded from: classes.dex */
public class LocationManagerService extends ILocationManager.Stub {
    private static final String ATTRIBUTION_TAG = "LocationService";
    private static final long FASTEST_COARSE_INTERVAL_MS = 600000;
    private static final String FUSED_LOCATION_SERVICE_ACTION = "com.android.location.service.FusedLocationProvider";
    private static final long HIGH_POWER_INTERVAL_MS = 300000;
    private static final long MAX_CURRENT_LOCATION_AGE_MS = 10000;
    private static final int MAX_PROVIDER_SCHEDULING_JITTER_MS = 100;
    private static final String NETWORK_LOCATION_SERVICE_ACTION = "com.android.location.service.v3.NetworkLocationProvider";
    private static final String WAKELOCK_KEY = "*location*";
    private final AppForegroundHelper mAppForegroundHelper;
    private final AppOpsHelper mAppOpsHelper;
    private int mBatterySaverMode;
    private final Context mContext;
    private String mExtraLocationControllerPackage;
    private boolean mExtraLocationControllerPackageEnabled;
    private GeocoderProxy mGeocodeProvider;
    private GeofenceManager mGeofenceManager;
    private volatile GnssManagerService mGnssManagerService;
    private final Handler mHandler;
    private final LocalService mLocalService;
    private final LocationUsageLogger mLocationUsageLogger;
    private final Object mLock;
    private final PassiveLocationProviderManager mPassiveManager;
    private PowerManager mPowerManager;
    private final CopyOnWriteArrayList<LocationProviderManager> mProviderManagers;
    private final HashMap<Object, Receiver> mReceivers;
    private final HashMap<String, ArrayList<UpdateRecord>> mRecordsByProvider;
    private final LocationRequestStatistics mRequestStatistics;
    private final SettingsHelper mSettingsHelper;
    private final UserInfoHelper mUserInfoHelper;
    public static final String TAG = "LocationManagerService";
    public static final boolean D = Log.isLoggable(TAG, 3);
    private static final LocationRequest DEFAULT_LOCATION_REQUEST = new LocationRequest();

    public static class Lifecycle extends SystemService {
        private final LocationManagerService mService;
        private final UserInfoHelper mUserInfoHelper;

        public Lifecycle(Context context) {
            super(context);
            this.mUserInfoHelper = new SystemUserInfoHelper(context);
            this.mService = new LocationManagerService(context, this.mUserInfoHelper);
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            LocationManager.invalidateLocalLocationEnabledCaches();
            publishBinderService("location", this.mService);
            ((LocationManager) this.mService.mContext.getSystemService(LocationManager.class)).disableLocalLocationEnabledCaches();
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            if (phase == 500) {
                this.mService.onSystemReady();
            } else if (phase == 600) {
                this.mService.onSystemThirdPartyAppsCanStart();
            }
        }

        @Override // com.android.server.SystemService
        public void onUserStarting(SystemService.TargetUser user) {
            this.mUserInfoHelper.dispatchOnUserStarted(user.getUserIdentifier());
        }

        @Override // com.android.server.SystemService
        public void onUserSwitching(SystemService.TargetUser from, SystemService.TargetUser to) {
            this.mUserInfoHelper.dispatchOnCurrentUserChanged(from.getUserIdentifier(), to.getUserIdentifier());
        }

        @Override // com.android.server.SystemService
        public void onUserStopped(SystemService.TargetUser user) {
            this.mUserInfoHelper.dispatchOnUserStopped(user.getUserIdentifier());
        }

        private static class SystemUserInfoHelper extends UserInfoHelper {
            SystemUserInfoHelper(Context context) {
                super(context);
            }
        }
    }

    private LocationManagerService(Context context, UserInfoHelper userInfoHelper) {
        this.mLock = new Object();
        this.mGnssManagerService = null;
        this.mProviderManagers = new CopyOnWriteArrayList<>();
        this.mReceivers = new HashMap<>();
        this.mRecordsByProvider = new HashMap<>();
        this.mRequestStatistics = new LocationRequestStatistics();
        this.mContext = context.createAttributionContext(ATTRIBUTION_TAG);
        this.mHandler = FgThread.getHandler();
        LocalService localService = new LocalService();
        this.mLocalService = localService;
        LocalServices.addService(LocationManagerInternal.class, localService);
        this.mAppOpsHelper = new AppOpsHelper(this.mContext);
        this.mUserInfoHelper = userInfoHelper;
        this.mSettingsHelper = new SettingsHelper(this.mContext, this.mHandler);
        this.mAppForegroundHelper = new AppForegroundHelper(this.mContext);
        this.mLocationUsageLogger = new LocationUsageLogger();
        PassiveLocationProviderManager passiveLocationProviderManager = new PassiveLocationProviderManager();
        this.mPassiveManager = passiveLocationProviderManager;
        this.mProviderManagers.add(passiveLocationProviderManager);
        this.mPassiveManager.setRealProvider(new PassiveProvider(this.mContext));
        PermissionManagerServiceInternal permissionManagerInternal = (PermissionManagerServiceInternal) LocalServices.getService(PermissionManagerServiceInternal.class);
        permissionManagerInternal.setLocationPackagesProvider(new PermissionManagerServiceInternal.PackagesProvider() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$nzVFoCdmIONeiXrvXa4GDW2BD7s
            @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.PackagesProvider
            public final String[] getPackages(int i) {
                return this.f$0.lambda$new$0$LocationManagerService(i);
            }
        });
        permissionManagerInternal.setLocationExtraPackagesProvider(new PermissionManagerServiceInternal.PackagesProvider() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$6OCuateQj_yVMsW-SFSfx_8hszQ
            @Override // com.android.server.pm.permission.PermissionManagerServiceInternal.PackagesProvider
            public final String[] getPackages(int i) {
                return this.f$0.lambda$new$1$LocationManagerService(i);
            }
        });
    }

    public /* synthetic */ String[] lambda$new$0$LocationManagerService(int userId) {
        return this.mContext.getResources().getStringArray(R.array.config_displayWhiteBalanceHighLightAmbientBrightnesses);
    }

    public /* synthetic */ String[] lambda$new$1$LocationManagerService(int userId) {
        return this.mContext.getResources().getStringArray(R.array.config_displayWhiteBalanceHighLightAmbientBiasesStrong);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSystemReady() {
        this.mAppOpsHelper.onSystemReady();
        this.mUserInfoHelper.onSystemReady();
        this.mSettingsHelper.onSystemReady();
        this.mAppForegroundHelper.onSystemReady();
        synchronized (this.mLock) {
            this.mPowerManager = (PowerManager) this.mContext.getSystemService(PowerManager.class);
            this.mGeofenceManager = new GeofenceManager(this.mContext, this.mSettingsHelper);
            this.mContext.getPackageManager().addOnPermissionsChangeListener(new PackageManager.OnPermissionsChangedListener() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$AZ-sFaR-D5V4QO0E44ITib-_Pl0
                public final void onPermissionsChanged(int i) {
                    this.f$0.lambda$onSystemReady$3$LocationManagerService(i);
                }
            });
            ((PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class)).registerLowPowerModeObserver(1, new Consumer() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$_lFMOHyrWj6WiqyBQsMWkc1X03E
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$onSystemReady$5$LocationManagerService((PowerSaveState) obj);
                }
            });
            this.mBatterySaverMode = this.mPowerManager.getLocationPowerSaveMode();
            this.mAppOpsHelper.addListener(new AppOpsHelper.LocationAppOpListener() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$SdJCjgY1BwQ-VOtT2s6dcqDrOkA
                @Override // com.android.server.location.AppOpsHelper.LocationAppOpListener
                public final void onAppOpsChanged(String str) {
                    this.f$0.onAppOpChanged(str);
                }
            });
            this.mSettingsHelper.addOnLocationEnabledChangedListener(new SettingsHelper.UserSettingChangedListener() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$Jsn9f_NWM0cs884cOI1fOaFZw8M
                @Override // com.android.server.location.SettingsHelper.UserSettingChangedListener
                public final void onSettingChanged(int i) {
                    this.f$0.onLocationModeChanged(i);
                }
            });
            this.mSettingsHelper.addOnBackgroundThrottleIntervalChangedListener(new SettingsHelper.GlobalSettingChangedListener() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$Cw7xwIE70-6c85ztm6T7WScKZRA
                @Override // com.android.server.location.SettingsHelper.GlobalSettingChangedListener
                public final void onSettingChanged() {
                    this.f$0.onBackgroundThrottleIntervalChanged();
                }
            });
            this.mSettingsHelper.addOnBackgroundThrottlePackageWhitelistChangedListener(new SettingsHelper.GlobalSettingChangedListener() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$fqo6KrQPiessbxGobdg5DXwHuPc
                @Override // com.android.server.location.SettingsHelper.GlobalSettingChangedListener
                public final void onSettingChanged() {
                    this.f$0.onBackgroundThrottleWhitelistChanged();
                }
            });
            this.mSettingsHelper.addOnIgnoreSettingsPackageWhitelistChangedListener(new SettingsHelper.GlobalSettingChangedListener() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$ZMNjuBZeNXZ1-aQV1f9Cim6fRag
                @Override // com.android.server.location.SettingsHelper.GlobalSettingChangedListener
                public final void onSettingChanged() {
                    this.f$0.onIgnoreSettingsWhitelistChanged();
                }
            });
            PackageMonitor packageMonitor = new PackageMonitor() { // from class: com.android.server.location.LocationManagerService.1
                public void onPackageDisappeared(String packageName, int reason) {
                    synchronized (LocationManagerService.this.mLock) {
                        LocationManagerService.this.onPackageDisappeared(packageName);
                    }
                }
            };
            packageMonitor.register(this.mContext, (UserHandle) null, true, this.mHandler);
            this.mUserInfoHelper.addListener(new UserInfoHelper.UserListener() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$r1HQs34pMDdwthhOWsKVe7pybhc
                @Override // com.android.server.location.UserInfoHelper.UserListener
                public final void onUserChanged(int i, int i2) {
                    this.f$0.onUserChanged(i, i2);
                }
            });
            this.mAppForegroundHelper.addListener(new AppForegroundHelper.AppForegroundListener() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$VbEiHJaYRYQKq-KAS1hQcxjIX3w
                @Override // com.android.server.location.AppForegroundHelper.AppForegroundListener
                public final void onAppForegroundChanged(int i, boolean z) {
                    this.f$0.onAppForegroundChanged(i, z);
                }
            });
            IntentFilter screenIntentFilter = new IntentFilter();
            screenIntentFilter.addAction("android.intent.action.SCREEN_OFF");
            screenIntentFilter.addAction("android.intent.action.SCREEN_ON");
            this.mContext.registerReceiverAsUser(new BroadcastReceiver() { // from class: com.android.server.location.LocationManagerService.2
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    if ("android.intent.action.SCREEN_ON".equals(intent.getAction()) || "android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                        LocationManagerService.this.onScreenStateChanged();
                    }
                }
            }, UserHandle.ALL, screenIntentFilter, null, this.mHandler);
            for (int userId : this.mUserInfoHelper.getCurrentUserIds()) {
                onUserChanged(userId, 2);
            }
        }
    }

    public /* synthetic */ void lambda$onSystemReady$3$LocationManagerService(int uid) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$HF50oc8JIzIfijGBFKSCGnMQ53g
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onSystemReady$2$LocationManagerService();
            }
        });
    }

    public /* synthetic */ void lambda$onSystemReady$2$LocationManagerService() {
        synchronized (this.mLock) {
            onPermissionsChangedLocked();
        }
    }

    public /* synthetic */ void lambda$onSystemReady$5$LocationManagerService(final PowerSaveState state) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$6S6V_wdmdYj0ww0_eUe-fkY-Tp4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onSystemReady$4$LocationManagerService(state);
            }
        });
    }

    public /* synthetic */ void lambda$onSystemReady$4$LocationManagerService(PowerSaveState state) {
        synchronized (this.mLock) {
            onBatterySaverModeChangedLocked(state.locationMode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSystemThirdPartyAppsCanStart() {
        synchronized (this.mLock) {
            initializeProvidersLocked();
        }
        initializeGnss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAppOpChanged(String packageName) {
        synchronized (this.mLock) {
            for (Receiver receiver : this.mReceivers.values()) {
                if (receiver.mCallerIdentity.packageName.equals(packageName)) {
                    receiver.updateMonitoring(true);
                }
            }
            HashSet<String> affectedProviders = new HashSet<>(this.mRecordsByProvider.size());
            for (Map.Entry<String, ArrayList<UpdateRecord>> entry : this.mRecordsByProvider.entrySet()) {
                String provider = entry.getKey();
                for (UpdateRecord record : entry.getValue()) {
                    if (record.mReceiver.mCallerIdentity.packageName.equals(packageName)) {
                        affectedProviders.add(provider);
                    }
                }
            }
            for (String provider2 : affectedProviders) {
                applyRequirementsLocked(provider2);
            }
        }
    }

    private void onPermissionsChangedLocked() {
        for (LocationProviderManager manager : this.mProviderManagers) {
            applyRequirementsLocked(manager);
        }
    }

    private void onBatterySaverModeChangedLocked(int newLocationMode) {
        if (this.mBatterySaverMode == newLocationMode) {
            return;
        }
        if (D) {
            Log.d(TAG, "Battery Saver location mode changed from " + PowerManager.locationPowerSaveModeToString(this.mBatterySaverMode) + " to " + PowerManager.locationPowerSaveModeToString(newLocationMode));
        }
        this.mBatterySaverMode = newLocationMode;
        for (LocationProviderManager manager : this.mProviderManagers) {
            applyRequirementsLocked(manager);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onScreenStateChanged() {
        synchronized (this.mLock) {
            if (this.mBatterySaverMode == 4) {
                for (LocationProviderManager manager : this.mProviderManagers) {
                    applyRequirementsLocked(manager);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLocationModeChanged(int userId) {
        boolean enabled = this.mSettingsHelper.isLocationEnabled(userId);
        LocationManager.invalidateLocalLocationEnabledCaches();
        if (D) {
            Log.d(TAG, "[u" + userId + "] location enabled = " + enabled);
        }
        Intent intent = new Intent("android.location.MODE_CHANGED").putExtra("android.location.extra.LOCATION_ENABLED", enabled).addFlags(1073741824).addFlags(AudioFormat.EVRC);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.of(userId));
        synchronized (this.mLock) {
            for (LocationProviderManager manager : this.mProviderManagers) {
                manager.onEnabledChangedLocked(userId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPackageDisappeared(String packageName) {
        synchronized (this.mLock) {
            ArrayList<Receiver> deadReceivers = null;
            for (Receiver receiver : this.mReceivers.values()) {
                if (receiver.mCallerIdentity.packageName.equals(packageName)) {
                    if (deadReceivers == null) {
                        deadReceivers = new ArrayList<>();
                    }
                    deadReceivers.add(receiver);
                }
            }
            if (deadReceivers != null) {
                Iterator<Receiver> it = deadReceivers.iterator();
                while (it.hasNext()) {
                    removeUpdatesLocked(it.next());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAppForegroundChanged(int uid, boolean foreground) {
        synchronized (this.mLock) {
            HashSet<String> affectedProviders = new HashSet<>(this.mRecordsByProvider.size());
            for (Map.Entry<String, ArrayList<UpdateRecord>> entry : this.mRecordsByProvider.entrySet()) {
                String provider = entry.getKey();
                for (UpdateRecord record : entry.getValue()) {
                    if (record.mReceiver.mCallerIdentity.uid == uid && record.mIsForegroundUid != foreground) {
                        record.updateForeground(foreground);
                        if (!isThrottlingExempt(record.mReceiver.mCallerIdentity)) {
                            affectedProviders.add(provider);
                        }
                    }
                }
            }
            for (String provider2 : affectedProviders) {
                applyRequirementsLocked(provider2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBackgroundThrottleIntervalChanged() {
        synchronized (this.mLock) {
            for (LocationProviderManager manager : this.mProviderManagers) {
                applyRequirementsLocked(manager);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBackgroundThrottleWhitelistChanged() {
        synchronized (this.mLock) {
            for (LocationProviderManager manager : this.mProviderManagers) {
                applyRequirementsLocked(manager);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onIgnoreSettingsWhitelistChanged() {
        synchronized (this.mLock) {
            for (LocationProviderManager manager : this.mProviderManagers) {
                applyRequirementsLocked(manager);
            }
        }
    }

    private void initializeProvidersLocked() {
        LocationProviderProxy networkProvider = LocationProviderProxy.createAndRegister(this.mContext, NETWORK_LOCATION_SERVICE_ACTION, R.bool.config_cecQuerySadAacEnabled_allowed, R.string.config_mobile_hotspot_provision_app_no_ui);
        if (networkProvider != null) {
            LocationProviderManager networkManager = new LocationProviderManager("network");
            this.mProviderManagers.add(networkManager);
            networkManager.setRealProvider(networkProvider);
        } else {
            Log.w(TAG, "no network location provider found");
        }
        Preconditions.checkState(!this.mContext.getPackageManager().queryIntentServicesAsUser(new Intent(FUSED_LOCATION_SERVICE_ACTION), 1572864, 0).isEmpty(), "Unable to find a direct boot aware fused location provider");
        LocationProviderProxy fusedProvider = LocationProviderProxy.createAndRegister(this.mContext, FUSED_LOCATION_SERVICE_ACTION, R.bool.config_cecPowerControlMode_userConfigurable, R.string.config_headlineFontFamilyMedium);
        if (fusedProvider != null) {
            LocationProviderManager fusedManager = new LocationProviderManager("fused");
            this.mProviderManagers.add(fusedManager);
            fusedManager.setRealProvider(fusedProvider);
        } else {
            Log.e(TAG, "no fused location provider found");
        }
        GeocoderProxy geocoderProxyCreateAndRegister = GeocoderProxy.createAndRegister(this.mContext);
        this.mGeocodeProvider = geocoderProxyCreateAndRegister;
        if (geocoderProxyCreateAndRegister == null) {
            Log.e(TAG, "no geocoder provider found");
        }
        HardwareActivityRecognitionProxy hardwareActivityRecognitionProxy = HardwareActivityRecognitionProxy.createAndRegister(this.mContext);
        if (hardwareActivityRecognitionProxy == null) {
            Log.e(TAG, "unable to bind ActivityRecognitionProxy");
        }
        String[] testProviderStrings = this.mContext.getResources().getStringArray(R.array.config_hideWhenDisabled_packageNames);
        for (String testProviderString : testProviderStrings) {
            String[] fragments = testProviderString.split(",");
            String name = fragments[0].trim();
            ProviderProperties properties = new ProviderProperties(Boolean.parseBoolean(fragments[1]), Boolean.parseBoolean(fragments[2]), Boolean.parseBoolean(fragments[3]), Boolean.parseBoolean(fragments[4]), Boolean.parseBoolean(fragments[5]), Boolean.parseBoolean(fragments[6]), Boolean.parseBoolean(fragments[7]), Integer.parseInt(fragments[8]), Integer.parseInt(fragments[9]));
            LocationProviderManager manager = getLocationProviderManager(name);
            if (manager == null) {
                manager = new LocationProviderManager(name);
                this.mProviderManagers.add(manager);
            }
            manager.setMockProvider(new MockProvider(properties));
        }
    }

    private void initializeGnss() {
        if (GnssManagerService.isGnssSupported()) {
            this.mGnssManagerService = new GnssManagerService(this.mContext, this.mAppOpsHelper, this.mSettingsHelper, this.mAppForegroundHelper, this.mLocationUsageLogger);
            this.mGnssManagerService.onSystemReady();
            LocationProviderManager gnssManager = new LocationProviderManager("gps");
            synchronized (this.mLock) {
                this.mProviderManagers.add(gnssManager);
            }
            gnssManager.setRealProvider(this.mGnssManagerService.getGnssLocationProvider());
            IGpsGeofenceHardware gpsGeofenceHardware = this.mGnssManagerService.getGpsGeofenceProxy();
            if (gpsGeofenceHardware != null) {
                GeofenceProxy provider = GeofenceProxy.createAndBind(this.mContext, gpsGeofenceHardware);
                if (provider == null) {
                    Log.e(TAG, "unable to bind to GeofenceProxy");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUserChanged(int userId, int change) {
        if (change == 1) {
            synchronized (this.mLock) {
                for (LocationProviderManager manager : this.mProviderManagers) {
                    manager.onEnabledChangedLocked(userId);
                }
            }
            return;
        }
        if (change == 2) {
            synchronized (this.mLock) {
                for (LocationProviderManager manager2 : this.mProviderManagers) {
                    manager2.onUserStarted(userId);
                }
            }
            return;
        }
        if (change == 3) {
            synchronized (this.mLock) {
                for (LocationProviderManager manager3 : this.mProviderManagers) {
                    manager3.onUserStopped(userId);
                }
            }
        }
    }

    class LocationProviderManager implements AbstractLocationProvider.Listener {
        private final SparseArray<Boolean> mEnabled;
        private final SparseArray<Location> mLastCoarseLocation;
        private final SparseArray<Location> mLastLocation;
        private final LocationFudger mLocationFudger;
        private final String mName;
        protected final MockableLocationProvider mProvider;

        private LocationProviderManager(String name) {
            this.mName = name;
            this.mLocationFudger = new LocationFudger(LocationManagerService.this.mSettingsHelper.getCoarseLocationAccuracyM());
            this.mEnabled = new SparseArray<>(2);
            this.mLastLocation = new SparseArray<>(2);
            this.mLastCoarseLocation = new SparseArray<>(2);
            this.mProvider = new MockableLocationProvider(LocationManagerService.this.mLock, this);
        }

        public String getName() {
            return this.mName;
        }

        public boolean hasProvider() {
            return this.mProvider.getProvider() != null;
        }

        public void setRealProvider(AbstractLocationProvider provider) {
            this.mProvider.setRealProvider(provider);
        }

        public void setMockProvider(MockProvider provider) {
            synchronized (LocationManagerService.this.mLock) {
                this.mProvider.setMockProvider(provider);
                if (provider == null) {
                    for (int i = 0; i < this.mLastLocation.size(); i++) {
                        Location lastLocation = this.mLastLocation.valueAt(i);
                        if (lastLocation != null && lastLocation.isFromMockProvider()) {
                            this.mLastLocation.setValueAt(i, null);
                        }
                    }
                    for (int i2 = 0; i2 < this.mLastCoarseLocation.size(); i2++) {
                        Location lastCoarseLocation = this.mLastCoarseLocation.valueAt(i2);
                        if (lastCoarseLocation != null && lastCoarseLocation.isFromMockProvider()) {
                            this.mLastCoarseLocation.setValueAt(i2, null);
                        }
                    }
                    this.mLocationFudger.resetOffsets();
                }
            }
        }

        public Set<String> getPackages() {
            return this.mProvider.getState().providerPackageNames;
        }

        public ProviderProperties getProperties() {
            return this.mProvider.getState().properties;
        }

        public Location getLastLocation(int userId, int permissionlevel) {
            synchronized (LocationManagerService.this.mLock) {
                try {
                    if (permissionlevel == 1) {
                        return this.mLastCoarseLocation.get(userId);
                    }
                    if (permissionlevel == 2) {
                        return this.mLastLocation.get(userId);
                    }
                    throw new AssertionError();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void injectLastLocation(Location location, int userId) {
            synchronized (LocationManagerService.this.mLock) {
                if (this.mLastLocation.get(userId) == null) {
                    setLastLocation(location, userId);
                }
            }
        }

        private void setLastLocation(Location location, int userId) {
            synchronized (LocationManagerService.this.mLock) {
                this.mLastLocation.put(userId, location);
                long timeDeltaMs = JobStatus.NO_LATEST_RUNTIME;
                Location coarseLocation = this.mLastCoarseLocation.get(userId);
                if (coarseLocation != null) {
                    timeDeltaMs = TimeUnit.NANOSECONDS.toMillis(location.getElapsedRealtimeNanos()) - TimeUnit.NANOSECONDS.toMillis(coarseLocation.getElapsedRealtimeNanos());
                }
                if (timeDeltaMs > 600000) {
                    this.mLastCoarseLocation.put(userId, this.mLocationFudger.createCoarse(location));
                }
            }
        }

        public void setMockProviderAllowed(boolean enabled) {
            synchronized (LocationManagerService.this.mLock) {
                if (!this.mProvider.isMock()) {
                    throw new IllegalArgumentException(this.mName + " provider is not a test provider");
                }
                this.mProvider.setMockProviderAllowed(enabled);
            }
        }

        public void setMockProviderLocation(Location location) {
            synchronized (LocationManagerService.this.mLock) {
                if (!this.mProvider.isMock()) {
                    throw new IllegalArgumentException(this.mName + " provider is not a test provider");
                }
                String locationProvider = location.getProvider();
                if (!TextUtils.isEmpty(locationProvider) && !this.mName.equals(locationProvider)) {
                    EventLog.writeEvent(1397638484, "33091107", Integer.valueOf(Binder.getCallingUid()), this.mName + "!=" + locationProvider);
                }
                this.mProvider.setMockProviderLocation(location);
            }
        }

        public List<LocationRequest> getMockProviderRequests() {
            List<LocationRequest> list;
            synchronized (LocationManagerService.this.mLock) {
                if (!this.mProvider.isMock()) {
                    throw new IllegalArgumentException(this.mName + " provider is not a test provider");
                }
                list = this.mProvider.getCurrentRequest().locationRequests;
            }
            return list;
        }

        public void setRequest(ProviderRequest request) {
            this.mProvider.setRequest(request);
        }

        public void sendExtraCommand(int uid, int pid, String command, Bundle extras) {
            this.mProvider.sendExtraCommand(uid, pid, command, extras);
        }

        @Override // com.android.server.location.AbstractLocationProvider.Listener
        public void onReportLocation(Location location) {
            if (!location.isFromMockProvider() && location.getLatitude() == 0.0d && location.getLongitude() == 0.0d) {
                Log.w(LocationManagerService.TAG, "blocking 0,0 location from " + this.mName + " provider");
                return;
            }
            if (!location.isComplete()) {
                Log.w(LocationManagerService.TAG, "blocking incomplete location from " + this.mName + " provider");
                return;
            }
            boolean locationSettingsIgnored = this.mProvider.getCurrentRequest().locationSettingsIgnored;
            for (int userId : LocationManagerService.this.mUserInfoHelper.getCurrentUserIds()) {
                if (locationSettingsIgnored || isEnabled(userId)) {
                    setLastLocation(location, userId);
                }
            }
            LocationManagerService.this.handleLocationChangedLocked(this, location, this.mLocationFudger.createCoarse(location));
        }

        @Override // com.android.server.location.AbstractLocationProvider.Listener
        public void onReportLocation(List<Location> locations) {
            if (LocationManagerService.this.mGnssManagerService != null && "gps".equals(this.mName)) {
                LocationManagerService.this.mGnssManagerService.onReportLocation(locations);
            }
        }

        @Override // com.android.server.location.AbstractLocationProvider.Listener
        public void onStateChanged(AbstractLocationProvider.State oldState, AbstractLocationProvider.State newState) {
            if (oldState.allowed != newState.allowed) {
                onEnabledChangedLocked(-1);
            }
        }

        public void onUserStarted(int userId) {
            synchronized (LocationManagerService.this.mLock) {
                this.mEnabled.put(userId, null);
                onEnabledChangedLocked(userId);
            }
        }

        public void onUserStopped(int userId) {
            synchronized (LocationManagerService.this.mLock) {
                this.mEnabled.remove(userId);
                this.mLastLocation.remove(userId);
                this.mLastCoarseLocation.remove(userId);
            }
        }

        public boolean isEnabled(final int userId) {
            boolean zBooleanValue;
            boolean z = false;
            if (userId != -10000) {
                synchronized (LocationManagerService.this.mLock) {
                    Boolean enabled = this.mEnabled.get(userId);
                    if (enabled == null) {
                        if (this.mProvider.getState().allowed && LocationManagerService.this.mUserInfoHelper.isCurrentUserId(userId) && LocationManagerService.this.mSettingsHelper.isLocationEnabled(userId)) {
                            z = true;
                        }
                        enabled = Boolean.valueOf(z);
                        Log.w(LocationManagerService.TAG, this.mName + " provider saw user " + userId + " unexpectedly");
                        LocationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$LocationProviderManager$1C6AYbcesVkgZGaI6Vwd2mH57AE
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$isEnabled$0$LocationManagerService$LocationProviderManager(userId);
                            }
                        });
                    }
                    zBooleanValue = enabled.booleanValue();
                }
                return zBooleanValue;
            }
            return false;
        }

        public /* synthetic */ void lambda$isEnabled$0$LocationManagerService$LocationProviderManager(int userId) {
            synchronized (LocationManagerService.this.mLock) {
                onEnabledChangedLocked(userId);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onEnabledChangedLocked(int userId) {
            if (userId == -10000) {
                return;
            }
            int i = 0;
            if (userId == -1) {
                int[] currentUserIds = LocationManagerService.this.mUserInfoHelper.getCurrentUserIds();
                int length = currentUserIds.length;
                while (i < length) {
                    int currentUserId = currentUserIds[i];
                    onEnabledChangedLocked(currentUserId);
                    i++;
                }
                return;
            }
            if (this.mProvider.getState().allowed && LocationManagerService.this.mUserInfoHelper.isCurrentUserId(userId) && LocationManagerService.this.mSettingsHelper.isLocationEnabled(userId)) {
                i = 1;
            }
            boolean z = i;
            Boolean wasEnabled = this.mEnabled.get(userId);
            if (wasEnabled != null && wasEnabled.booleanValue() == z) {
                return;
            }
            this.mEnabled.put(userId, Boolean.valueOf(z));
            if (LocationManagerService.D) {
                Log.d(LocationManagerService.TAG, "[u" + userId + "] " + this.mName + " provider enabled = " + z);
            }
            if (z == 0 && !this.mProvider.getCurrentRequest().locationSettingsIgnored) {
                this.mLastLocation.put(userId, null);
                this.mLastCoarseLocation.put(userId, null);
            }
            LocationManagerService.this.mSettingsHelper.setLocationProviderAllowed(this.mName, z, userId);
            if (wasEnabled != null && !"fused".equals(this.mName) && !"passive".equals(this.mName)) {
                Intent intent = new Intent("android.location.PROVIDERS_CHANGED").putExtra("android.location.extra.PROVIDER_NAME", this.mName).putExtra("android.location.extra.PROVIDER_ENABLED", z).addFlags(1073741824).addFlags(AudioFormat.EVRC);
                LocationManagerService.this.mContext.sendBroadcastAsUser(intent, UserHandle.of(userId));
            }
            LocationManagerService.this.updateProviderEnabledLocked(this, z);
        }

        public void dump(FileDescriptor fd, IndentingPrintWriter pw, String[] args) {
            synchronized (LocationManagerService.this.mLock) {
                pw.print(this.mName + " provider");
                if (this.mProvider.isMock()) {
                    pw.print(" [mock]");
                }
                pw.println(":");
                pw.increaseIndent();
                int[] userIds = LocationManagerService.this.mUserInfoHelper.getCurrentUserIds();
                if (userIds.length == 1) {
                    int userId = userIds[0];
                    pw.println("last location=" + this.mLastLocation.get(userId));
                    pw.println("last coarse location=" + this.mLastCoarseLocation.get(userId));
                    pw.println("enabled=" + isEnabled(userId));
                } else {
                    for (int userId2 : userIds) {
                        pw.println("user " + userId2 + ":");
                        pw.increaseIndent();
                        pw.println("last location=" + this.mLastLocation.get(userId2));
                        pw.println("last coarse location=" + this.mLastCoarseLocation.get(userId2));
                        pw.println("enabled=" + isEnabled(userId2));
                        pw.decreaseIndent();
                    }
                }
            }
            this.mProvider.dump(fd, pw, args);
            pw.decreaseIndent();
        }
    }

    class PassiveLocationProviderManager extends LocationProviderManager {
        private PassiveLocationProviderManager() {
            super("passive");
        }

        @Override // com.android.server.location.LocationManagerService.LocationProviderManager
        public void setRealProvider(AbstractLocationProvider provider) {
            Preconditions.checkArgument(provider instanceof PassiveProvider);
            super.setRealProvider(provider);
        }

        @Override // com.android.server.location.LocationManagerService.LocationProviderManager
        public void setMockProvider(MockProvider provider) {
            if (provider != null) {
                throw new IllegalArgumentException("Cannot mock the passive provider");
            }
        }

        public void updateLocation(Location location) {
            synchronized (LocationManagerService.this.mLock) {
                PassiveProvider passiveProvider = (PassiveProvider) this.mProvider.getProvider();
                Preconditions.checkState(passiveProvider != null);
                long identity = Binder.clearCallingIdentity();
                try {
                    passiveProvider.updateLocation(location);
                    Binder.restoreCallingIdentity(identity);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            }
        }
    }

    private final class Receiver extends LocationManagerServiceUtils.LinkedListenerBase implements PendingIntent.OnFinished {
        private static final long WAKELOCK_TIMEOUT_MILLIS = 60000;
        private final boolean mHideFromAppOps;
        private final Object mKey;
        private final ILocationListener mListener;
        private boolean mOpHighPowerMonitoring;
        private boolean mOpMonitoring;
        private int mPendingBroadcasts;
        final PendingIntent mPendingIntent;
        final HashMap<String, UpdateRecord> mUpdateRecords;
        PowerManager.WakeLock mWakeLock;
        final WorkSource mWorkSource;

        private Receiver(ILocationListener listener, PendingIntent intent, CallerIdentity identity, WorkSource workSource, boolean hideFromAppOps) {
            super(identity);
            this.mUpdateRecords = new HashMap<>();
            this.mListener = listener;
            this.mPendingIntent = intent;
            if (listener != null) {
                this.mKey = listener.asBinder();
            } else {
                this.mKey = intent;
            }
            if (workSource != null && workSource.isEmpty()) {
                workSource = null;
            }
            this.mWorkSource = workSource;
            this.mHideFromAppOps = hideFromAppOps;
            updateMonitoring(true);
            this.mWakeLock = LocationManagerService.this.mPowerManager.newWakeLock(1, LocationManagerService.WAKELOCK_KEY);
            this.mWakeLock.setWorkSource(workSource == null ? new WorkSource(this.mCallerIdentity.uid, this.mCallerIdentity.packageName) : workSource);
            this.mWakeLock.setReferenceCounted(false);
        }

        public boolean equals(Object otherObj) {
            return (otherObj instanceof Receiver) && this.mKey.equals(((Receiver) otherObj).mKey);
        }

        public int hashCode() {
            return this.mKey.hashCode();
        }

        @Override // com.android.server.location.LocationManagerServiceUtils.LinkedListenerBase
        public String toString() {
            StringBuilder s = new StringBuilder();
            s.append("Reciever[");
            s.append(Integer.toHexString(System.identityHashCode(this)));
            if (this.mListener != null) {
                s.append(" listener");
            } else {
                s.append(" intent");
            }
            for (String p : this.mUpdateRecords.keySet()) {
                s.append(" ");
                s.append(this.mUpdateRecords.get(p).toString());
            }
            s.append(" monitoring location: ");
            s.append(this.mOpMonitoring);
            s.append("]");
            return s.toString();
        }

        public void updateMonitoring(boolean allow) {
            if (this.mHideFromAppOps) {
                return;
            }
            boolean requestingLocation = false;
            boolean requestingHighPowerLocation = false;
            if (allow) {
                for (UpdateRecord updateRecord : this.mUpdateRecords.values()) {
                    LocationProviderManager manager = LocationManagerService.this.getLocationProviderManager(updateRecord.mProvider);
                    if (manager != null && (manager.isEnabled(UserHandle.getUserId(this.mCallerIdentity.uid)) || LocationManagerService.this.isSettingsExempt(updateRecord))) {
                        requestingLocation = true;
                        ProviderProperties properties = manager.getProperties();
                        if (properties != null && properties.mPowerRequirement == 3 && updateRecord.mRequest.getInterval() < 300000) {
                            requestingHighPowerLocation = true;
                            break;
                        }
                    }
                }
            }
            this.mOpMonitoring = updateMonitoring(requestingLocation, this.mOpMonitoring, false);
            boolean wasHighPowerMonitoring = this.mOpHighPowerMonitoring;
            boolean zUpdateMonitoring = updateMonitoring(requestingHighPowerLocation, this.mOpHighPowerMonitoring, true);
            this.mOpHighPowerMonitoring = zUpdateMonitoring;
            if (zUpdateMonitoring != wasHighPowerMonitoring) {
                long identity = Binder.clearCallingIdentity();
                try {
                    Intent intent = new Intent("android.location.HIGH_POWER_REQUEST_CHANGE");
                    LocationManagerService.this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
                } finally {
                    Binder.restoreCallingIdentity(identity);
                }
            }
        }

        private boolean updateMonitoring(boolean allowMonitoring, boolean currentlyMonitoring, boolean highPower) {
            if (!currentlyMonitoring) {
                if (allowMonitoring) {
                    return !highPower ? LocationManagerService.this.mAppOpsHelper.startLocationMonitoring(this.mCallerIdentity) : LocationManagerService.this.mAppOpsHelper.startHighPowerLocationMonitoring(this.mCallerIdentity);
                }
            } else if (!allowMonitoring || !LocationManagerService.this.mAppOpsHelper.checkLocationAccess(this.mCallerIdentity)) {
                if (!highPower) {
                    LocationManagerService.this.mAppOpsHelper.stopLocationMonitoring(this.mCallerIdentity);
                    return false;
                }
                LocationManagerService.this.mAppOpsHelper.stopHighPowerLocationMonitoring(this.mCallerIdentity);
                return false;
            }
            return currentlyMonitoring;
        }

        public boolean isListener() {
            return this.mListener != null;
        }

        public boolean isPendingIntent() {
            return this.mPendingIntent != null;
        }

        public ILocationListener getListener() {
            ILocationListener iLocationListener = this.mListener;
            if (iLocationListener != null) {
                return iLocationListener;
            }
            throw new IllegalStateException("Request for non-existent listener");
        }

        public boolean callLocationChangedLocked(Location location) {
            ILocationListener iLocationListener = this.mListener;
            if (iLocationListener != null) {
                try {
                    iLocationListener.onLocationChanged(new Location(location));
                    incrementPendingBroadcastsLocked();
                    return true;
                } catch (RemoteException e) {
                    return false;
                }
            }
            Intent locationChanged = new Intent();
            locationChanged.putExtra("location", new Location(location));
            try {
                this.mPendingIntent.send(LocationManagerService.this.mContext, 0, locationChanged, this, LocationManagerService.this.mHandler, CallerIdentity.asPermission(this.mCallerIdentity.permissionLevel), PendingIntentUtils.createDontSendToRestrictedAppsBundle(null));
                incrementPendingBroadcastsLocked();
                return true;
            } catch (PendingIntent.CanceledException e2) {
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean callProviderEnabledLocked(String provider, boolean enabled) {
            updateMonitoring(true);
            ILocationListener iLocationListener = this.mListener;
            if (iLocationListener != null) {
                try {
                    if (enabled) {
                        iLocationListener.onProviderEnabled(provider);
                    } else {
                        iLocationListener.onProviderDisabled(provider);
                    }
                    incrementPendingBroadcastsLocked();
                } catch (RemoteException e) {
                    return false;
                }
            } else {
                Intent providerIntent = new Intent();
                providerIntent.putExtra("providerEnabled", enabled);
                try {
                    this.mPendingIntent.send(LocationManagerService.this.mContext, 0, providerIntent, this, LocationManagerService.this.mHandler, CallerIdentity.asPermission(this.mCallerIdentity.permissionLevel), PendingIntentUtils.createDontSendToRestrictedAppsBundle(null));
                    incrementPendingBroadcastsLocked();
                } catch (PendingIntent.CanceledException e2) {
                    return false;
                }
            }
            return true;
        }

        public void callRemovedLocked() {
            ILocationListener iLocationListener = this.mListener;
            if (iLocationListener != null) {
                try {
                    iLocationListener.onRemoved();
                } catch (RemoteException e) {
                }
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (LocationManagerService.this.mLock) {
                LocationManagerService.this.removeUpdatesLocked(this);
                clearPendingBroadcastsLocked();
            }
        }

        @Override // android.app.PendingIntent.OnFinished
        public void onSendFinished(PendingIntent pendingIntent, Intent intent, int resultCode, String resultData, Bundle resultExtras) {
            synchronized (LocationManagerService.this.mLock) {
                decrementPendingBroadcastsLocked();
            }
        }

        private void incrementPendingBroadcastsLocked() {
            this.mPendingBroadcasts++;
            long identity = Binder.clearCallingIdentity();
            try {
                this.mWakeLock.acquire(60000L);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void decrementPendingBroadcastsLocked() {
            int i = this.mPendingBroadcasts - 1;
            this.mPendingBroadcasts = i;
            if (i == 0) {
                long identity = Binder.clearCallingIdentity();
                try {
                    if (this.mWakeLock.isHeld()) {
                        this.mWakeLock.release();
                    }
                } finally {
                    Binder.restoreCallingIdentity(identity);
                }
            }
        }

        public void clearPendingBroadcastsLocked() {
            if (this.mPendingBroadcasts > 0) {
                this.mPendingBroadcasts = 0;
                long identity = Binder.clearCallingIdentity();
                try {
                    if (this.mWakeLock.isHeld()) {
                        this.mWakeLock.release();
                    }
                } finally {
                    Binder.restoreCallingIdentity(identity);
                }
            }
        }
    }

    public void locationCallbackFinished(ILocationListener listener) {
        synchronized (this.mLock) {
            Receiver receiver = this.mReceivers.get(listener.asBinder());
            if (receiver != null) {
                receiver.decrementPendingBroadcastsLocked();
            }
        }
    }

    public int getGnssYearOfHardware() {
        if (this.mGnssManagerService == null) {
            return 0;
        }
        return this.mGnssManagerService.getGnssYearOfHardware();
    }

    public String getGnssHardwareModelName() {
        return this.mGnssManagerService == null ? "" : this.mGnssManagerService.getGnssHardwareModelName();
    }

    public int getGnssBatchSize(String packageName) {
        if (this.mGnssManagerService == null) {
            return 0;
        }
        return this.mGnssManagerService.getGnssBatchSize(packageName);
    }

    public boolean addGnssBatchingCallback(IBatchedLocationCallback callback, String packageName, String featureId) {
        return this.mGnssManagerService != null && this.mGnssManagerService.addGnssBatchingCallback(callback, packageName, featureId);
    }

    public void removeGnssBatchingCallback() {
        if (this.mGnssManagerService != null) {
            this.mGnssManagerService.removeGnssBatchingCallback();
        }
    }

    public boolean startGnssBatch(long periodNanos, boolean wakeOnFifoFull, String packageName, String featureId) {
        return this.mGnssManagerService != null && this.mGnssManagerService.startGnssBatch(periodNanos, wakeOnFifoFull, packageName, featureId);
    }

    public void flushGnssBatch(String packageName) {
        if (this.mGnssManagerService != null) {
            this.mGnssManagerService.flushGnssBatch(packageName);
        }
    }

    public boolean stopGnssBatch() {
        return this.mGnssManagerService != null && this.mGnssManagerService.stopGnssBatch();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LocationProviderManager getLocationProviderManager(String providerName) {
        for (LocationProviderManager manager : this.mProviderManagers) {
            if (providerName.equals(manager.getName())) {
                return manager;
            }
        }
        return null;
    }

    public List<String> getAllProviders() {
        ArrayList<String> providers = new ArrayList<>(this.mProviderManagers.size());
        for (LocationProviderManager manager : this.mProviderManagers) {
            if (!"fused".equals(manager.getName())) {
                providers.add(manager.getName());
            }
        }
        return providers;
    }

    public List<String> getProviders(Criteria criteria, boolean enabledOnly) {
        ArrayList<String> providers;
        if (!CallerIdentity.checkCallingOrSelfLocationPermission(this.mContext)) {
            return Collections.emptyList();
        }
        synchronized (this.mLock) {
            providers = new ArrayList<>(this.mProviderManagers.size());
            for (LocationProviderManager manager : this.mProviderManagers) {
                String name = manager.getName();
                if (!"fused".equals(name) && (!enabledOnly || manager.isEnabled(UserHandle.getCallingUserId()))) {
                    if (criteria == null || LocationProvider.propertiesMeetCriteria(name, manager.getProperties(), criteria)) {
                        providers.add(name);
                    }
                }
            }
        }
        return providers;
    }

    public String getBestProvider(Criteria criteria, boolean enabledOnly) {
        List<String> providers;
        synchronized (this.mLock) {
            providers = getProviders(criteria, enabledOnly);
            if (providers.isEmpty()) {
                providers = getProviders(null, enabledOnly);
            }
        }
        if (providers.isEmpty()) {
            return null;
        }
        if (providers.contains("gps")) {
            return "gps";
        }
        if (providers.contains("network")) {
            return "network";
        }
        return providers.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProviderEnabledLocked(LocationProviderManager manager, boolean enabled) {
        ArrayList<Receiver> deadReceivers = null;
        ArrayList<UpdateRecord> records = this.mRecordsByProvider.get(manager.getName());
        if (records != null) {
            for (UpdateRecord record : records) {
                if (this.mUserInfoHelper.isCurrentUserId(UserHandle.getUserId(record.mReceiver.mCallerIdentity.uid)) && !isSettingsExempt(record) && !record.mReceiver.callProviderEnabledLocked(manager.getName(), enabled)) {
                    if (deadReceivers == null) {
                        deadReceivers = new ArrayList<>();
                    }
                    deadReceivers.add(record.mReceiver);
                }
            }
        }
        if (deadReceivers != null) {
            for (int i = deadReceivers.size() - 1; i >= 0; i--) {
                removeUpdatesLocked(deadReceivers.get(i));
            }
        }
        applyRequirementsLocked(manager);
    }

    private void applyRequirementsLocked(String providerName) {
        LocationProviderManager manager = getLocationProviderManager(providerName);
        if (manager != null) {
            applyRequirementsLocked(manager);
        }
    }

    private void applyRequirementsLocked(LocationProviderManager manager) {
        boolean isForegroundOnlyMode;
        boolean z;
        ArrayList<UpdateRecord> records = this.mRecordsByProvider.get(manager.getName());
        ProviderRequest.Builder providerRequest = new ProviderRequest.Builder();
        if (this.mProviderManagers.contains(manager) && records != null && !records.isEmpty()) {
            long backgroundThrottleInterval = this.mSettingsHelper.getBackgroundThrottleIntervalMs();
            ArrayList<LocationRequest> requests = new ArrayList<>(records.size());
            boolean z2 = false;
            boolean z3 = true;
            boolean isForegroundOnlyMode2 = this.mBatterySaverMode == 3;
            boolean shouldThrottleRequests = this.mBatterySaverMode == 4 && !this.mPowerManager.isInteractive();
            providerRequest.setLowPowerMode(true);
            for (UpdateRecord record : records) {
                CallerIdentity identity = record.mReceiver.mCallerIdentity;
                if (this.mUserInfoHelper.isCurrentUserId(identity.userId) && this.mAppOpsHelper.checkLocationAccess(identity)) {
                    boolean isBatterySaverDisablingLocation = (shouldThrottleRequests || (isForegroundOnlyMode2 && !record.mIsForegroundUid)) ? z3 : z2;
                    if (!manager.isEnabled(identity.userId) || isBatterySaverDisablingLocation) {
                        if (!isSettingsExempt(record)) {
                            backgroundThrottleInterval = backgroundThrottleInterval;
                        } else {
                            providerRequest.setLocationSettingsIgnored(z3);
                            providerRequest.setLowPowerMode(z2);
                        }
                    }
                    LocationRequest locationRequest = record.mRealRequest;
                    long interval = locationRequest.getInterval();
                    if (providerRequest.isLocationSettingsIgnored()) {
                        isForegroundOnlyMode = isForegroundOnlyMode2;
                    } else {
                        isForegroundOnlyMode = isForegroundOnlyMode2;
                        if (!isThrottlingExempt(record.mReceiver.mCallerIdentity)) {
                            if (!record.mIsForegroundUid) {
                                interval = Math.max(interval, backgroundThrottleInterval);
                            }
                            if (interval != locationRequest.getInterval()) {
                                locationRequest = new LocationRequest(locationRequest);
                                locationRequest.setInterval(interval);
                            }
                        }
                    }
                    record.mRequest = locationRequest;
                    long backgroundThrottleInterval2 = backgroundThrottleInterval;
                    record.mReceiver.updateMonitoring(true);
                    requests.add(locationRequest);
                    if (locationRequest.isLowPowerMode()) {
                        z = false;
                    } else {
                        z = false;
                        providerRequest.setLowPowerMode(false);
                    }
                    if (interval < providerRequest.getInterval()) {
                        providerRequest.setInterval(interval);
                    }
                    z3 = true;
                    z2 = z;
                    isForegroundOnlyMode2 = isForegroundOnlyMode;
                    backgroundThrottleInterval = backgroundThrottleInterval2;
                }
            }
            providerRequest.setLocationRequests(requests);
            if (providerRequest.getInterval() < JobStatus.NO_LATEST_RUNTIME) {
                long thresholdInterval = ((providerRequest.getInterval() + 1000) * 3) / 2;
                for (UpdateRecord record2 : records) {
                    if (this.mUserInfoHelper.isCurrentUserId(UserHandle.getUserId(record2.mReceiver.mCallerIdentity.uid))) {
                        LocationRequest locationRequest2 = record2.mRequest;
                        if (providerRequest.getLocationRequests().contains(locationRequest2) && locationRequest2.getInterval() <= thresholdInterval) {
                            if (record2.mReceiver.mWorkSource == null || !isValidWorkSource(record2.mReceiver.mWorkSource)) {
                                providerRequest.getWorkSource().add(record2.mReceiver.mCallerIdentity.uid, record2.mReceiver.mCallerIdentity.packageName);
                            } else {
                                providerRequest.getWorkSource().add(record2.mReceiver.mWorkSource);
                            }
                        }
                    }
                }
            }
        }
        manager.setRequest(providerRequest.build());
    }

    private static boolean isValidWorkSource(WorkSource workSource) {
        if (workSource.size() > 0) {
            return workSource.getPackageName(0) != null;
        }
        List<WorkSource.WorkChain> workChains = workSource.getWorkChains();
        return (workChains == null || workChains.isEmpty() || workChains.get(0).getAttributionTag() == null) ? false : true;
    }

    public String[] getBackgroundThrottlingWhitelist() {
        return (String[]) this.mSettingsHelper.getBackgroundThrottlePackageWhitelist().toArray(new String[0]);
    }

    public String[] getIgnoreSettingsWhitelist() {
        return (String[]) this.mSettingsHelper.getIgnoreSettingsPackageWhitelist().toArray(new String[0]);
    }

    private boolean isThrottlingExempt(CallerIdentity callerIdentity) {
        if (callerIdentity.uid == 1000 || this.mSettingsHelper.getBackgroundThrottlePackageWhitelist().contains(callerIdentity.packageName)) {
            return true;
        }
        return this.mLocalService.isProviderPackage(callerIdentity.packageName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSettingsExempt(UpdateRecord record) {
        if (!record.mRealRequest.isLocationSettingsIgnored()) {
            return false;
        }
        if (this.mSettingsHelper.getIgnoreSettingsPackageWhitelist().contains(record.mReceiver.mCallerIdentity.packageName)) {
            return true;
        }
        return this.mLocalService.isProviderPackage(record.mReceiver.mCallerIdentity.packageName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class UpdateRecord {
        private long mExpirationRealtimeMs;
        private boolean mIsForegroundUid;
        private Location mLastFixBroadcast;
        final String mProvider;
        private final LocationRequest mRealRequest;
        private final Receiver mReceiver;
        LocationRequest mRequest;
        private Throwable mStackTrace;

        private UpdateRecord(String provider, LocationRequest request, Receiver receiver) {
            if (Build.IS_DEBUGGABLE) {
                Preconditions.checkState(Thread.holdsLock(LocationManagerService.this.mLock));
            }
            this.mExpirationRealtimeMs = request.getExpirationRealtimeMs(SystemClock.elapsedRealtime());
            this.mProvider = provider;
            this.mRealRequest = request;
            this.mRequest = request;
            this.mReceiver = receiver;
            this.mIsForegroundUid = LocationManagerService.this.mAppForegroundHelper.isAppForeground(this.mReceiver.mCallerIdentity.uid);
            if (LocationManagerService.D && receiver.mCallerIdentity.pid == Process.myPid()) {
                this.mStackTrace = new Throwable();
            }
            ArrayList<UpdateRecord> records = (ArrayList) LocationManagerService.this.mRecordsByProvider.computeIfAbsent(provider, new Function() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$UpdateRecord$25fPpeMCBEQaIl696puDTixFEtA
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return LocationManagerService.UpdateRecord.lambda$new$0((String) obj);
                }
            });
            if (!records.contains(this)) {
                records.add(this);
            }
            LocationManagerService.this.mRequestStatistics.startRequesting(this.mReceiver.mCallerIdentity.packageName, this.mReceiver.mCallerIdentity.featureId, provider, request.getInterval(), this.mIsForegroundUid);
        }

        static /* synthetic */ ArrayList lambda$new$0(String k) {
            return new ArrayList();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateForeground(boolean isForeground) {
            this.mIsForegroundUid = isForeground;
            LocationManagerService.this.mRequestStatistics.updateForeground(this.mReceiver.mCallerIdentity.packageName, this.mReceiver.mCallerIdentity.featureId, this.mProvider, isForeground);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void disposeLocked(boolean removeReceiver) {
            if (Build.IS_DEBUGGABLE) {
                Preconditions.checkState(Thread.holdsLock(LocationManagerService.this.mLock));
            }
            CallerIdentity identity = this.mReceiver.mCallerIdentity;
            LocationManagerService.this.mRequestStatistics.stopRequesting(identity.packageName, identity.featureId, this.mProvider);
            LocationManagerService.this.mLocationUsageLogger.logLocationApiUsage(1, 1, identity.packageName, this.mRealRequest, this.mReceiver.isListener(), this.mReceiver.isPendingIntent(), null, LocationManagerService.this.mAppForegroundHelper.getImportance(this.mReceiver.mCallerIdentity.uid));
            ArrayList<UpdateRecord> globalRecords = (ArrayList) LocationManagerService.this.mRecordsByProvider.get(this.mProvider);
            if (globalRecords != null) {
                globalRecords.remove(this);
            }
            if (removeReceiver) {
                HashMap<String, UpdateRecord> receiverRecords = this.mReceiver.mUpdateRecords;
                receiverRecords.remove(this.mProvider);
                if (receiverRecords.size() == 0) {
                    LocationManagerService.this.removeUpdatesLocked(this.mReceiver);
                }
            }
        }

        public String toString() {
            StringBuilder b = new StringBuilder("UpdateRecord[");
            b.append(this.mProvider);
            b.append(" ");
            b.append(this.mReceiver.mCallerIdentity);
            b.append(" ");
            if (!this.mIsForegroundUid) {
                b.append("(background) ");
            }
            b.append(this.mRealRequest);
            b.append(" ");
            b.append(this.mReceiver.mWorkSource);
            if (this.mStackTrace != null) {
                ByteArrayOutputStream tmp = new ByteArrayOutputStream();
                this.mStackTrace.printStackTrace(new PrintStream(tmp));
                b.append("\n\n");
                b.append(tmp.toString());
                b.append("\n");
            }
            b.append("]");
            return b.toString();
        }
    }

    private Receiver getReceiverLocked(ILocationListener listener, CallerIdentity identity, WorkSource workSource, boolean hideFromAppOps) {
        IBinder binder = listener.asBinder();
        Receiver receiver = this.mReceivers.get(binder);
        if (receiver == null && identity != null) {
            receiver = new Receiver(listener, null, identity, workSource, hideFromAppOps);
            if (!receiver.linkToListenerDeathNotificationLocked(receiver.getListener().asBinder())) {
                return null;
            }
            this.mReceivers.put(binder, receiver);
        }
        return receiver;
    }

    private Receiver getReceiverLocked(PendingIntent intent, CallerIdentity identity, WorkSource workSource, boolean hideFromAppOps) {
        Receiver receiver = this.mReceivers.get(intent);
        if (receiver == null && identity != null) {
            Receiver receiver2 = new Receiver(null, intent, identity, workSource, hideFromAppOps);
            this.mReceivers.put(intent, receiver2);
            return receiver2;
        }
        return receiver;
    }

    private LocationRequest createSanitizedRequest(LocationRequest request, CallerIdentity identity, boolean callerHasLocationHardwarePermission) {
        LocationRequest sanitizedRequest = new LocationRequest(request);
        if (!callerHasLocationHardwarePermission) {
            sanitizedRequest.setLowPowerMode(false);
        }
        if (identity.permissionLevel < 2) {
            int quality = sanitizedRequest.getQuality();
            if (quality == 100) {
                sanitizedRequest.setQuality(HdmiCecKeycode.CEC_KEYCODE_RESTORE_VOLUME_FUNCTION);
            } else if (quality == 203) {
                sanitizedRequest.setQuality(201);
            }
            if (sanitizedRequest.getInterval() < 600000) {
                sanitizedRequest.setInterval(600000L);
            }
            if (sanitizedRequest.getFastestInterval() < 600000) {
                sanitizedRequest.setFastestInterval(600000L);
            }
        }
        if (sanitizedRequest.getFastestInterval() > sanitizedRequest.getInterval()) {
            sanitizedRequest.setFastestInterval(request.getInterval());
        }
        return sanitizedRequest;
    }

    /* JADX WARN: Code duplicated, block: B:63:0x0114  */
    /* JADX WARN: Code duplicated, block: B:65:0x011a  */
    public void requestLocationUpdates(LocationRequest request, ILocationListener listener, PendingIntent intent, String packageName, String featureId, String listenerId) throws Throwable {
        LocationRequest request2;
        String listenerId2;
        Receiver receiver;
        if (request != null) {
            request2 = request;
        } else {
            request2 = DEFAULT_LOCATION_REQUEST;
        }
        if (listenerId == null && intent != null) {
            listenerId2 = AppOpsManager.toReceiverId(intent);
        } else {
            listenerId2 = listenerId;
        }
        if (isExemptLocationPermission(packageName)) {
            String mFlag = getLocationPermissionFlag(packageName);
            Log.i(TAG, "requestLocationUpdates mFlag value is:" + mFlag);
            if (!mFlag.equals(SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION) || mFlag.equals("")) {
                if (listener != null) {
                    removeUpdates(listener, null);
                    return;
                }
                return;
            }
        }
        CallerIdentity identity = CallerIdentity.fromBinder(this.mContext, packageName, featureId, listenerId2);
        identity.enforceLocationPermission();
        WorkSource workSource = request2.getWorkSource();
        if (workSource != null && !workSource.isEmpty()) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.UPDATE_DEVICE_STATS", null);
        }
        boolean hideFromAppOps = request2.getHideFromAppOps();
        if (hideFromAppOps) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.UPDATE_APP_OPS_STATS", null);
        }
        if (request2.isLocationSettingsIgnored()) {
            this.mContext.enforceCallingOrSelfPermission("android.permission.WRITE_SECURE_SETTINGS", null);
        }
        boolean callerHasLocationHardwarePermission = this.mContext.checkCallingPermission("android.permission.LOCATION_HARDWARE") == 0;
        LocationRequest sanitizedRequest = createSanitizedRequest(request2, identity, callerHasLocationHardwarePermission);
        if (intent == null && listener == null) {
            throw new IllegalArgumentException("need either listener or intent");
        }
        if (intent != null && listener != null) {
            throw new IllegalArgumentException("cannot register both listener and intent");
        }
        this.mLocationUsageLogger.logLocationApiUsage(0, 1, packageName, request2, listener != null, intent != null, null, this.mAppForegroundHelper.getImportance(identity.uid));
        synchronized (this.mLock) {
            try {
                if (intent != null) {
                    try {
                        receiver = getReceiverLocked(intent, identity, workSource, hideFromAppOps);
                        if (receiver != null) {
                            requestLocationUpdatesLocked(sanitizedRequest, receiver);
                        }
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                }
                try {
                    receiver = getReceiverLocked(listener, identity, workSource, hideFromAppOps);
                    if (receiver != null) {
                        requestLocationUpdatesLocked(sanitizedRequest, receiver);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    private void requestLocationUpdatesLocked(LocationRequest request, Receiver receiver) {
        if (request == null) {
            request = DEFAULT_LOCATION_REQUEST;
        }
        String name = request.getProvider();
        if (name == null) {
            throw new IllegalArgumentException("provider name must not be null");
        }
        LocationProviderManager manager = getLocationProviderManager(name);
        if (manager == null) {
            throw new IllegalArgumentException("provider doesn't exist: " + name);
        }
        UpdateRecord record = new UpdateRecord(name, request, receiver);
        UpdateRecord oldRecord = receiver.mUpdateRecords.put(name, record);
        if (oldRecord != null) {
            oldRecord.disposeLocked(false);
        }
        long identity = Binder.clearCallingIdentity();
        try {
            int userId = UserHandle.getUserId(receiver.mCallerIdentity.uid);
            if (!manager.isEnabled(userId) && !isSettingsExempt(record)) {
                receiver.callProviderEnabledLocked(name, false);
            }
            applyRequirementsLocked(name);
            receiver.updateMonitoring(true);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void removeUpdates(ILocationListener listener, PendingIntent intent) {
        Receiver receiver;
        if (intent == null && listener == null) {
            throw new IllegalArgumentException("need either listener or intent");
        }
        if (intent != null && listener != null) {
            throw new IllegalArgumentException("cannot register both listener and intent");
        }
        synchronized (this.mLock) {
            try {
                if (intent != null) {
                    receiver = getReceiverLocked(intent, (CallerIdentity) null, (WorkSource) null, false);
                } else {
                    receiver = getReceiverLocked(listener, (CallerIdentity) null, (WorkSource) null, false);
                }
                if (receiver != null) {
                    removeUpdatesLocked(receiver);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeUpdatesLocked(Receiver receiver) {
        if (D) {
            Log.i(TAG, "remove " + Integer.toHexString(System.identityHashCode(receiver)));
        }
        if (this.mReceivers.remove(receiver.mKey) != null && receiver.isListener()) {
            receiver.unlinkFromListenerDeathNotificationLocked(receiver.getListener().asBinder());
            receiver.clearPendingBroadcastsLocked();
        }
        receiver.updateMonitoring(false);
        HashSet<String> providers = new HashSet<>();
        HashMap<String, UpdateRecord> oldRecords = receiver.mUpdateRecords;
        if (oldRecords != null) {
            for (UpdateRecord record : oldRecords.values()) {
                record.disposeLocked(false);
            }
            providers.addAll(oldRecords.keySet());
        }
        for (String provider : providers) {
            applyRequirementsLocked(provider);
        }
    }

    public Location getLastLocation(LocationRequest request, String packageName, String featureId) {
        if (isExemptLocationPermission(packageName)) {
            String mFlag = getLocationPermissionFlag(packageName);
            Log.i(TAG, "mFlag value is:" + mFlag);
            if (!mFlag.equals(SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION) || mFlag.equals("")) {
                Log.i(TAG, "This app will not get location");
                return null;
            }
        }
        if (request == null) {
            request = DEFAULT_LOCATION_REQUEST;
        }
        CallerIdentity identity = CallerIdentity.fromBinderUnsafe(this.mContext, packageName, featureId);
        identity.enforceLocationPermission();
        if (this.mSettingsHelper.isLocationPackageBlacklisted(identity.userId, identity.packageName) || !this.mUserInfoHelper.isCurrentUserId(identity.userId)) {
            return null;
        }
        synchronized (this.mLock) {
            LocationProviderManager manager = getLocationProviderManager(request.getProvider());
            if (manager == null) {
                return null;
            }
            if (!manager.isEnabled(identity.userId) && !request.isLocationSettingsIgnored()) {
                return null;
            }
            if (!this.mAppOpsHelper.noteLocationAccess(identity)) {
                return null;
            }
            Location location = manager.getLastLocation(identity.userId, identity.permissionLevel);
            return location != null ? new Location(location) : null;
        }
    }

    public ICancellationSignal getCurrentLocation(LocationRequest locationRequest, final ILocationListener listener, String packageName, String featureId, String listenerId) throws Throwable {
        ICancellationSignal remoteCancellationSignal = CancellationSignal.createTransport();
        Location lastLocation = getLastLocation(locationRequest, packageName, featureId);
        if (lastLocation != null) {
            long locationAgeMs = TimeUnit.NANOSECONDS.toMillis(SystemClock.elapsedRealtimeNanos() - lastLocation.getElapsedRealtimeNanos());
            if (locationAgeMs < 10000) {
                try {
                    listener.onLocationChanged(lastLocation);
                    return remoteCancellationSignal;
                } catch (RemoteException e) {
                    Log.w(TAG, e);
                    return null;
                }
            }
            if (!this.mAppForegroundHelper.isAppForeground(Binder.getCallingUid()) && locationAgeMs < this.mSettingsHelper.getBackgroundThrottleIntervalMs()) {
                return null;
            }
        }
        requestLocationUpdates(locationRequest, listener, null, packageName, featureId, listenerId);
        CancellationSignal cancellationSignal = CancellationSignal.fromTransport(remoteCancellationSignal);
        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: com.android.server.location.-$$Lambda$LocationManagerService$9pdv9aW0E5m2TQuRDMJXW1ZgLBE
            @Override // android.os.CancellationSignal.OnCancelListener
            public final void onCancel() {
                this.f$0.lambda$getCurrentLocation$6$LocationManagerService(listener);
            }
        });
        return remoteCancellationSignal;
    }

    public /* synthetic */ void lambda$getCurrentLocation$6$LocationManagerService(ILocationListener listener) {
        removeUpdates(listener, null);
    }

    public LocationTime getGnssTimeMillis() {
        synchronized (this.mLock) {
            LocationProviderManager gpsManager = getLocationProviderManager("gps");
            if (gpsManager == null) {
                return null;
            }
            Location location = gpsManager.getLastLocation(UserHandle.getCallingUserId(), 2);
            if (location == null) {
                return null;
            }
            long currentNanos = SystemClock.elapsedRealtimeNanos();
            long deltaMs = TimeUnit.NANOSECONDS.toMillis(location.getElapsedRealtimeAgeNanos(currentNanos));
            return new LocationTime(location.getTime() + deltaMs, currentNanos);
        }
    }

    public void injectLocation(Location location) {
        this.mContext.enforceCallingPermission("android.permission.LOCATION_HARDWARE", null);
        this.mContext.enforceCallingPermission("android.permission.ACCESS_FINE_LOCATION", null);
        Preconditions.checkArgument(location.isComplete());
        int userId = UserHandle.getCallingUserId();
        synchronized (this.mLock) {
            LocationProviderManager manager = getLocationProviderManager(location.getProvider());
            if (manager != null && manager.isEnabled(userId)) {
                Objects.requireNonNull(location);
                manager.injectLastLocation(location, userId);
            }
        }
    }

    public void requestGeofence(LocationRequest request, Geofence geofence, PendingIntent intent, String packageName, String featureId) {
        LocationRequest request2;
        if (request != null) {
            request2 = request;
        } else {
            request2 = DEFAULT_LOCATION_REQUEST;
        }
        CallerIdentity identity = CallerIdentity.fromBinder(this.mContext, packageName, featureId, AppOpsManager.toReceiverId(intent));
        identity.enforceLocationPermission();
        Objects.requireNonNull(intent);
        boolean callerHasLocationHardwarePermission = this.mContext.checkCallingPermission("android.permission.LOCATION_HARDWARE") == 0;
        LocationRequest sanitizedRequest = createSanitizedRequest(request2, identity, callerHasLocationHardwarePermission);
        if (D) {
            Log.d(TAG, "requestGeofence: " + sanitizedRequest + " " + geofence + " " + intent);
        }
        if (identity.userId != 0) {
            Log.w(TAG, "proximity alerts are currently available only to the primary user");
        } else {
            this.mLocationUsageLogger.logLocationApiUsage(0, 4, packageName, request2, false, true, geofence, this.mAppForegroundHelper.getImportance(identity.uid));
            this.mGeofenceManager.addFence(sanitizedRequest, geofence, intent, identity);
        }
    }

    public void removeGeofence(Geofence geofence, PendingIntent intent, String packageName) {
        if (intent == null) {
            throw new IllegalArgumentException("invalid pending intent: " + ((Object) null));
        }
        if (D) {
            Log.d(TAG, "removeGeofence: " + geofence + " " + intent);
        }
        this.mLocationUsageLogger.logLocationApiUsage(1, 4, packageName, null, false, true, geofence, this.mAppForegroundHelper.getImportance(Binder.getCallingUid()));
        long identity = Binder.clearCallingIdentity();
        try {
            this.mGeofenceManager.removeFence(geofence, intent);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public boolean registerGnssStatusCallback(IGnssStatusListener listener, String packageName, String featureId) {
        return this.mGnssManagerService != null && this.mGnssManagerService.registerGnssStatusCallback(listener, packageName, featureId);
    }

    public void unregisterGnssStatusCallback(IGnssStatusListener listener) {
        if (this.mGnssManagerService != null) {
            this.mGnssManagerService.unregisterGnssStatusCallback(listener);
        }
    }

    public boolean addGnssMeasurementsListener(GnssRequest request, IGnssMeasurementsListener listener, String packageName, String featureId) {
        return this.mGnssManagerService != null && this.mGnssManagerService.addGnssMeasurementsListener(request, listener, packageName, featureId);
    }

    public void removeGnssMeasurementsListener(IGnssMeasurementsListener listener) {
        if (this.mGnssManagerService != null) {
            this.mGnssManagerService.removeGnssMeasurementsListener(listener);
        }
    }

    public void injectGnssMeasurementCorrections(GnssMeasurementCorrections measurementCorrections, String packageName) {
        if (this.mGnssManagerService != null) {
            this.mGnssManagerService.injectGnssMeasurementCorrections(measurementCorrections, packageName);
        }
    }

    public long getGnssCapabilities() {
        if (this.mGnssManagerService == null) {
            return -1L;
        }
        return this.mGnssManagerService.getGnssCapabilities();
    }

    public boolean addGnssAntennaInfoListener(IGnssAntennaInfoListener listener, String packageName, String featureId) {
        return this.mGnssManagerService != null && this.mGnssManagerService.addGnssAntennaInfoListener(listener, packageName, featureId);
    }

    public void removeGnssAntennaInfoListener(IGnssAntennaInfoListener listener) {
        if (this.mGnssManagerService != null) {
            this.mGnssManagerService.removeGnssAntennaInfoListener(listener);
        }
    }

    public boolean addGnssNavigationMessageListener(IGnssNavigationMessageListener listener, String packageName, String featureId) {
        return this.mGnssManagerService != null && this.mGnssManagerService.addGnssNavigationMessageListener(listener, packageName, featureId);
    }

    public void removeGnssNavigationMessageListener(IGnssNavigationMessageListener listener) {
        if (this.mGnssManagerService != null) {
            this.mGnssManagerService.removeGnssNavigationMessageListener(listener);
        }
    }

    public boolean sendExtraCommand(String provider, String command, Bundle extras) {
        CallerIdentity.enforceCallingOrSelfLocationPermission(this.mContext);
        this.mContext.enforceCallingOrSelfPermission("android.permission.ACCESS_LOCATION_EXTRA_COMMANDS", null);
        Objects.requireNonNull(provider);
        LocationProviderManager manager = getLocationProviderManager(provider);
        if (manager != null) {
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            Objects.requireNonNull(command);
            manager.sendExtraCommand(callingUid, callingPid, command, extras);
        }
        this.mLocationUsageLogger.logLocationApiUsage(0, 5, provider);
        this.mLocationUsageLogger.logLocationApiUsage(1, 5, provider);
        return true;
    }

    public ProviderProperties getProviderProperties(String providerName) {
        LocationProviderManager manager = getLocationProviderManager(providerName);
        if (manager == null) {
            return null;
        }
        return manager.getProperties();
    }

    public boolean isProviderPackage(String packageName) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.READ_DEVICE_CONFIG", null);
        return this.mLocalService.isProviderPackage(packageName);
    }

    public List<String> getProviderPackages(String providerName) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.READ_DEVICE_CONFIG", null);
        LocationProviderManager manager = getLocationProviderManager(providerName);
        return manager == null ? Collections.emptyList() : new ArrayList(manager.getPackages());
    }

    public void setExtraLocationControllerPackage(String packageName) {
        this.mContext.enforceCallingPermission("android.permission.LOCATION_HARDWARE", "android.permission.LOCATION_HARDWARE permission required");
        synchronized (this.mLock) {
            this.mExtraLocationControllerPackage = packageName;
        }
    }

    public String getExtraLocationControllerPackage() {
        String str;
        synchronized (this.mLock) {
            str = this.mExtraLocationControllerPackage;
        }
        return str;
    }

    public void setExtraLocationControllerPackageEnabled(boolean enabled) {
        this.mContext.enforceCallingPermission("android.permission.LOCATION_HARDWARE", "android.permission.LOCATION_HARDWARE permission required");
        synchronized (this.mLock) {
            this.mExtraLocationControllerPackageEnabled = enabled;
        }
    }

    public boolean isExtraLocationControllerPackageEnabled() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mExtraLocationControllerPackageEnabled && this.mExtraLocationControllerPackage != null;
        }
        return z;
    }

    public void setLocationEnabledForUser(boolean enabled, int userId) {
        int userId2 = ActivityManager.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, false, false, "setLocationEnabledForUser", null);
        this.mContext.enforceCallingOrSelfPermission("android.permission.WRITE_SECURE_SETTINGS", null);
        LocationManager.invalidateLocalLocationEnabledCaches();
        this.mSettingsHelper.setLocationEnabled(enabled, userId2);
    }

    public boolean isLocationEnabledForUser(int userId) {
        return this.mSettingsHelper.isLocationEnabled(ActivityManager.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, false, false, "isLocationEnabledForUser", null));
    }

    public boolean isProviderEnabledForUser(String provider, int userId) {
        int userId2 = ActivityManager.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, false, false, "isProviderEnabledForUser", null);
        if ("fused".equals(provider)) {
            return false;
        }
        return this.mLocalService.isProviderEnabledForUser(provider, userId2);
    }

    private static boolean shouldBroadcastSafeLocked(Location loc, Location lastLoc, UpdateRecord record, long now) {
        if (lastLoc != null) {
            long minTime = record.mRealRequest.getFastestInterval();
            long deltaMs = TimeUnit.NANOSECONDS.toMillis(loc.getElapsedRealtimeNanos() - lastLoc.getElapsedRealtimeNanos());
            if (deltaMs < minTime - 100) {
                return false;
            }
            double minDistance = record.mRealRequest.getSmallestDisplacement();
            return (minDistance <= 0.0d || ((double) loc.distanceTo(lastLoc)) > minDistance) && record.mRealRequest.getNumUpdates() > 0 && record.mExpirationRealtimeMs >= now;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleLocationChangedLocked(LocationProviderManager manager, Location fineLocation, Location coarseLocation) {
        Location location;
        if (!this.mProviderManagers.contains(manager)) {
            Log.w(TAG, "received location from unknown provider: " + manager.getName());
            return;
        }
        PassiveLocationProviderManager passiveLocationProviderManager = this.mPassiveManager;
        if (manager != passiveLocationProviderManager) {
            passiveLocationProviderManager.updateLocation(fineLocation);
        }
        long now = SystemClock.elapsedRealtime();
        ArrayList<UpdateRecord> records = this.mRecordsByProvider.get(manager.getName());
        if (records == null || records.size() == 0) {
            return;
        }
        ArrayList<Receiver> deadReceivers = null;
        ArrayList<UpdateRecord> deadUpdateRecords = null;
        for (UpdateRecord r : records) {
            Receiver receiver = r.mReceiver;
            CallerIdentity identity = receiver.mCallerIdentity;
            boolean receiverDead = false;
            if (manager.isEnabled(identity.userId) || isSettingsExempt(r)) {
                if (this.mUserInfoHelper.isCurrentUserId(identity.userId) || isProviderPackage(identity.packageName)) {
                    if (this.mSettingsHelper.isLocationPackageBlacklisted(identity.userId, identity.packageName)) {
                        continue;
                    } else {
                        int i = identity.permissionLevel;
                        if (i == 1) {
                            location = coarseLocation;
                        } else if (i == 2) {
                            location = fineLocation;
                        } else {
                            throw new AssertionError();
                        }
                        if (shouldBroadcastSafeLocked(location, r.mLastFixBroadcast, r, now)) {
                            r.mLastFixBroadcast = location;
                            if (this.mAppOpsHelper.noteLocationAccess(receiver.mCallerIdentity)) {
                                if (!receiver.callLocationChangedLocked(location)) {
                                    receiverDead = true;
                                }
                                r.mRealRequest.decrementNumUpdates();
                            }
                        }
                        if (r.mRealRequest.getNumUpdates() <= 0 || r.mExpirationRealtimeMs < now) {
                            r.mReceiver.callRemovedLocked();
                            if (deadUpdateRecords == null) {
                                deadUpdateRecords = new ArrayList<>();
                            }
                            deadUpdateRecords.add(r);
                        }
                        if (receiverDead) {
                            if (deadReceivers == null) {
                                deadReceivers = new ArrayList<>();
                            }
                            if (!deadReceivers.contains(receiver)) {
                                deadReceivers.add(receiver);
                            }
                        }
                    }
                }
            }
        }
        if (deadReceivers != null) {
            Iterator<Receiver> it = deadReceivers.iterator();
            while (it.hasNext()) {
                removeUpdatesLocked(it.next());
            }
        }
        if (deadUpdateRecords != null) {
            Iterator<UpdateRecord> it2 = deadUpdateRecords.iterator();
            while (it2.hasNext()) {
                it2.next().disposeLocked(true);
            }
            applyRequirementsLocked(manager);
        }
    }

    public boolean geocoderIsPresent() {
        return this.mGeocodeProvider != null;
    }

    public String getFromLocation(double latitude, double longitude, int maxResults, GeocoderParams params, List<Address> addrs) {
        GeocoderProxy geocoderProxy = this.mGeocodeProvider;
        if (geocoderProxy != null) {
            return geocoderProxy.getFromLocation(latitude, longitude, maxResults, params, addrs);
        }
        return null;
    }

    public String getFromLocationName(String locationName, double lowerLeftLatitude, double lowerLeftLongitude, double upperRightLatitude, double upperRightLongitude, int maxResults, GeocoderParams params, List<Address> addrs) {
        GeocoderProxy geocoderProxy = this.mGeocodeProvider;
        if (geocoderProxy != null) {
            return geocoderProxy.getFromLocationName(locationName, lowerLeftLatitude, lowerLeftLongitude, upperRightLatitude, upperRightLongitude, maxResults, params, addrs);
        }
        return null;
    }

    public void addTestProvider(String provider, ProviderProperties properties, String packageName, String featureId) {
        CallerIdentity identity = CallerIdentity.fromBinderUnsafe(this.mContext, packageName, featureId);
        if (!this.mAppOpsHelper.noteMockLocationAccess(identity)) {
            return;
        }
        synchronized (this.mLock) {
            LocationProviderManager manager = getLocationProviderManager(provider);
            if (manager == null) {
                manager = new LocationProviderManager(provider);
                this.mProviderManagers.add(manager);
            }
            manager.setMockProvider(new MockProvider(properties));
        }
    }

    public void removeTestProvider(String provider, String packageName, String featureId) {
        CallerIdentity identity = CallerIdentity.fromBinderUnsafe(this.mContext, packageName, featureId);
        if (!this.mAppOpsHelper.noteMockLocationAccess(identity)) {
            return;
        }
        synchronized (this.mLock) {
            LocationProviderManager manager = getLocationProviderManager(provider);
            if (manager == null) {
                return;
            }
            manager.setMockProvider(null);
            if (!manager.hasProvider()) {
                this.mProviderManagers.remove(manager);
            }
        }
    }

    public void setTestProviderLocation(String provider, Location location, String packageName, String featureId) {
        CallerIdentity identity = CallerIdentity.fromBinderUnsafe(this.mContext, packageName, featureId);
        if (!this.mAppOpsHelper.noteMockLocationAccess(identity)) {
            return;
        }
        Preconditions.checkArgument(location.isComplete(), "incomplete location object, missing timestamp or accuracy?");
        LocationProviderManager manager = getLocationProviderManager(provider);
        if (manager == null) {
            throw new IllegalArgumentException("provider doesn't exist: " + provider);
        }
        manager.setMockProviderLocation(location);
    }

    public void setTestProviderEnabled(String provider, boolean enabled, String packageName, String featureId) {
        CallerIdentity identity = CallerIdentity.fromBinderUnsafe(this.mContext, packageName, featureId);
        if (!this.mAppOpsHelper.noteMockLocationAccess(identity)) {
            return;
        }
        LocationProviderManager manager = getLocationProviderManager(provider);
        if (manager == null) {
            throw new IllegalArgumentException("provider doesn't exist: " + provider);
        }
        manager.setMockProviderAllowed(enabled);
    }

    public List<LocationRequest> getTestProviderCurrentRequests(String provider) {
        LocationProviderManager manager = getLocationProviderManager(provider);
        if (manager == null) {
            throw new IllegalArgumentException("provider doesn't exist: " + provider);
        }
        return manager.getMockProviderRequests();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int handleShellCommand(ParcelFileDescriptor in, ParcelFileDescriptor out, ParcelFileDescriptor err, String[] args) {
        return new LocationShellCommand(this).exec(this, in.getFileDescriptor(), out.getFileDescriptor(), err.getFileDescriptor(), args);
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (!DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            return;
        }
        PrintWriter indentingPrintWriter = new IndentingPrintWriter(pw, "  ");
        synchronized (this.mLock) {
            if (this.mGnssManagerService != null && args.length > 0 && args[0].equals("--gnssmetrics")) {
                this.mGnssManagerService.dump(fd, pw, args);
                return;
            }
            indentingPrintWriter.println("Location Manager State:");
            indentingPrintWriter.increaseIndent();
            indentingPrintWriter.print("Current System Time: " + TimeUtils.logTimeOfDay(System.currentTimeMillis()));
            indentingPrintWriter.println(", Current Elapsed Time: " + TimeUtils.formatDuration(SystemClock.elapsedRealtime()));
            indentingPrintWriter.println("User Info:");
            indentingPrintWriter.increaseIndent();
            this.mUserInfoHelper.dump(fd, indentingPrintWriter, args);
            indentingPrintWriter.decreaseIndent();
            indentingPrintWriter.println("Location Settings:");
            indentingPrintWriter.increaseIndent();
            this.mSettingsHelper.dump(fd, indentingPrintWriter, args);
            indentingPrintWriter.decreaseIndent();
            indentingPrintWriter.println("Battery Saver Location Mode: " + PowerManager.locationPowerSaveModeToString(this.mBatterySaverMode));
            indentingPrintWriter.println("Location Listeners:");
            indentingPrintWriter.increaseIndent();
            for (Receiver receiver : this.mReceivers.values()) {
                indentingPrintWriter.println(receiver);
            }
            indentingPrintWriter.decreaseIndent();
            indentingPrintWriter.println("Active Records by Provider:");
            indentingPrintWriter.increaseIndent();
            for (Map.Entry<String, ArrayList<UpdateRecord>> entry : this.mRecordsByProvider.entrySet()) {
                indentingPrintWriter.println(entry.getKey() + ":");
                indentingPrintWriter.increaseIndent();
                for (UpdateRecord record : entry.getValue()) {
                    indentingPrintWriter.println(record);
                }
                indentingPrintWriter.decreaseIndent();
            }
            indentingPrintWriter.decreaseIndent();
            indentingPrintWriter.println("Historical Records by Provider:");
            indentingPrintWriter.increaseIndent();
            TreeMap<LocationRequestStatistics.PackageProviderKey, LocationRequestStatistics.PackageStatistics> sorted = new TreeMap<>(this.mRequestStatistics.statistics);
            for (Map.Entry<LocationRequestStatistics.PackageProviderKey, LocationRequestStatistics.PackageStatistics> entry2 : sorted.entrySet()) {
                indentingPrintWriter.println(entry2.getKey() + ": " + entry2.getValue());
            }
            indentingPrintWriter.decreaseIndent();
            this.mRequestStatistics.history.dump(indentingPrintWriter);
            if (this.mGeofenceManager != null) {
                indentingPrintWriter.println("Geofences:");
                indentingPrintWriter.increaseIndent();
                this.mGeofenceManager.dump(indentingPrintWriter);
                indentingPrintWriter.decreaseIndent();
            }
            if (this.mExtraLocationControllerPackage != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Location Controller Extra Package: ");
                sb.append(this.mExtraLocationControllerPackage);
                sb.append(this.mExtraLocationControllerPackageEnabled ? " [enabled]" : "[disabled]");
                indentingPrintWriter.println(sb.toString());
            }
            indentingPrintWriter.println("Location Providers:");
            indentingPrintWriter.increaseIndent();
            for (LocationProviderManager manager : this.mProviderManagers) {
                manager.dump(fd, indentingPrintWriter, args);
            }
            indentingPrintWriter.decreaseIndent();
            synchronized (this.mLock) {
                if (this.mGnssManagerService != null) {
                    indentingPrintWriter.println("GNSS:");
                    indentingPrintWriter.increaseIndent();
                    this.mGnssManagerService.dump(fd, indentingPrintWriter, args);
                    indentingPrintWriter.decreaseIndent();
                }
            }
        }
    }

    private class LocalService extends LocationManagerInternal {
        private LocalService() {
        }

        public boolean isProviderEnabledForUser(String provider, int userId) {
            synchronized (LocationManagerService.this.mLock) {
                LocationProviderManager manager = LocationManagerService.this.getLocationProviderManager(provider);
                if (manager == null) {
                    return false;
                }
                return manager.isEnabled(userId);
            }
        }

        public boolean isProviderPackage(String packageName) {
            for (LocationProviderManager manager : LocationManagerService.this.mProviderManagers) {
                if (manager.getPackages().contains(packageName)) {
                    return true;
                }
            }
            return false;
        }

        public void sendNiResponse(int notifId, int userResponse) {
            if (LocationManagerService.this.mGnssManagerService != null) {
                LocationManagerService.this.mGnssManagerService.sendNiResponse(notifId, userResponse);
            }
        }
    }

    private String getLocationPermissionFlag(String packageName) {
        if ("0".equals("")) {
            return "0";
        }
        String flag = SystemProperties.get("persist." + packageName, "0");
        Log.d(TAG, "Value of " + packageName + " is:" + flag);
        return flag;
    }

    private boolean isExemptLocationPermission(String packageName) {
        boolean isExempt = false;
        String[] mPermissionExempt = this.mContext.getResources().getStringArray(R.array.config_nightDisplayColorTemperatureCoefficients);
        if (mPermissionExempt.length != 0) {
            for (String str : mPermissionExempt) {
                if (str.equals(packageName)) {
                    isExempt = true;
                }
            }
        }
        return isExempt;
    }
}
