package com.android.server;

import android.R;
import android.app.ActivityThread;
import android.app.AppCompatCallbacks;
import android.app.ApplicationErrorReport;
import android.app.ContextImpl;
import android.app.SystemServiceRegistry;
import android.app.usage.UsageStatsManagerInternal;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.database.sqlite.SQLiteCompatibilityWalFlags;
import android.database.sqlite.SQLiteGlobal;
import android.hardware.display.DisplayManagerInternal;
import android.net.ConnectivityModuleConnector;
import android.net.NetworkStackClient;
import android.os.BaseBundle;
import android.os.Binder;
import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.FactoryTest;
import android.os.FileUtils;
import android.os.IBinder;
import android.os.IIncidentManager;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Process;
import android.os.ServiceManager;
import android.os.StrictMode;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.DeviceConfig;
import android.sysprop.VoldProperties;
import android.text.TextUtils;
import android.util.EventLog;
import android.util.Pair;
import android.util.Slog;
import com.android.internal.os.BinderInternal;
import com.android.internal.os.RuntimeInit;
import com.android.internal.util.ConcurrentUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.am.ActivityManagerService;
import com.android.server.attention.AttentionManagerService;
import com.android.server.compat.PlatformCompat;
import com.android.server.compat.PlatformCompatNative;
import com.android.server.contentcapture.ContentCaptureManagerInternal;
import com.android.server.display.DisplayManagerService;
import com.android.server.gpu.GpuService;
import com.android.server.input.InputManagerService;
import com.android.server.lights.LightsService;
import com.android.server.media.MediaRouterService;
import com.android.server.net.NetworkPolicyManagerService;
import com.android.server.net.NetworkStatsService;
import com.android.server.om.OverlayManagerService;
import com.android.server.os.BugreportManagerService;
import com.android.server.os.DeviceIdentifiersPolicyService;
import com.android.server.pm.DataLoaderManagerService;
import com.android.server.pm.Installer;
import com.android.server.pm.OtaDexoptService;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.UserManagerService;
import com.android.server.pm.dex.SystemServerDexLoadReporter;
import com.android.server.power.PowerManagerService;
import com.android.server.power.ShutdownThread;
import com.android.server.power.ThermalManagerService;
import com.android.server.recoverysystem.RecoverySystemService;
import com.android.server.security.FileIntegrityService;
import com.android.server.timedetector.GnssTimeUpdateService;
import com.android.server.uri.UriGrantsManagerService;
import com.android.server.usage.UsageStatsService;
import com.android.server.utils.TimingsTraceAndSlog;
import com.android.server.webkit.WebViewUpdateService;
import com.android.server.wm.ActivityTaskManagerService;
import com.android.server.wm.WindowManagerGlobalLock;
import com.android.server.wm.WindowManagerService;
import dalvik.system.VMRuntime;
import java.io.File;
import java.io.IOException;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Timer;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public final class SystemServer {
    private static final String ACCESSIBILITY_MANAGER_SERVICE_CLASS = "com.android.server.accessibility.AccessibilityManagerService$Lifecycle";
    private static final String ACCOUNT_SERVICE_CLASS = "com.android.server.accounts.AccountManagerService$Lifecycle";
    private static final String ADB_SERVICE_CLASS = "com.android.server.adb.AdbService$Lifecycle";
    private static final String APPWIDGET_SERVICE_CLASS = "com.android.server.appwidget.AppWidgetService";
    private static final String APP_PREDICTION_MANAGER_SERVICE_CLASS = "com.android.server.appprediction.AppPredictionManagerService";
    private static final String AUTO_FILL_MANAGER_SERVICE_CLASS = "com.android.server.autofill.AutofillManagerService";
    private static final String BACKUP_MANAGER_SERVICE_CLASS = "com.android.server.backup.BackupManagerService$Lifecycle";
    private static final String BLOB_STORE_MANAGER_SERVICE_CLASS = "com.android.server.blob.BlobStoreManagerService";
    private static final String BLOCK_MAP_FILE = "/cache/recovery/block.map";
    private static final String CAR_SERVICE_HELPER_SERVICE_CLASS = "com.android.internal.car.CarServiceHelperService";
    private static final String COMPANION_DEVICE_MANAGER_SERVICE_CLASS = "com.android.server.companion.CompanionDeviceManagerService";
    private static final String CONTENT_CAPTURE_MANAGER_SERVICE_CLASS = "com.android.server.contentcapture.ContentCaptureManagerService";
    private static final String CONTENT_SERVICE_CLASS = "com.android.server.content.ContentService$Lifecycle";
    private static final String CONTENT_SUGGESTIONS_SERVICE_CLASS = "com.android.server.contentsuggestions.ContentSuggestionsManagerService";
    private static final int DEFAULT_SYSTEM_THEME = 16974852;
    private static final String DEVICE_IDLE_CONTROLLER_CLASS = "com.android.server.DeviceIdleController";
    private static final long EARLIEST_SUPPORTED_TIME = 86400000;
    private static final String ENCRYPTED_STATE = "1";
    private static final String ENCRYPTING_STATE = "trigger_restart_min_framework";
    private static final String ETHERNET_SERVICE_CLASS = "com.android.server.ethernet.EthernetService";
    private static final String GNSS_TIME_UPDATE_SERVICE_CLASS = "com.android.server.timedetector.GnssTimeUpdateService$Lifecycle";
    private static final String GSI_RUNNING_PROP = "ro.gsid.image_running";
    private static final String IOT_SERVICE_CLASS = "com.android.things.server.IoTSystemService";
    private static final String JOB_SCHEDULER_SERVICE_CLASS = "com.android.server.job.JobSchedulerService";
    private static final String LOCK_SETTINGS_SERVICE_CLASS = "com.android.server.locksettings.LockSettingsService$Lifecycle";
    private static final String LOWPAN_SERVICE_CLASS = "com.android.server.lowpan.LowpanService";
    private static final String MIDI_SERVICE_CLASS = "com.android.server.midi.MidiService$Lifecycle";
    private static final String PERSISTENT_DATA_BLOCK_PROP = "ro.frp.pst";
    private static final String PRINT_MANAGER_SERVICE_CLASS = "com.android.server.print.PrintManagerService";
    private static final String ROLLBACK_MANAGER_SERVICE_CLASS = "com.android.server.rollback.RollbackManagerService";
    private static final String SEARCH_MANAGER_SERVICE_CLASS = "com.android.server.search.SearchManagerService$Lifecycle";
    private static final String SLICE_MANAGER_SERVICE_CLASS = "com.android.server.slice.SliceManagerService$Lifecycle";
    private static final long SLOW_DELIVERY_THRESHOLD_MS = 200;
    private static final long SLOW_DISPATCH_THRESHOLD_MS = 100;
    private static final long SNAPSHOT_INTERVAL = 3600000;
    private static final String START_BLOB_STORE_SERVICE = "startBlobStoreManagerService";
    private static final String START_HIDL_SERVICES = "StartHidlServices";
    private static final String START_SENSOR_SERVICE = "StartSensorService";
    private static final String STATS_COMPANION_APEX_PATH = "/apex/com.android.os.statsd/javalib/service-statsd.jar";
    private static final String STATS_COMPANION_LIFECYCLE_CLASS = "com.android.server.stats.StatsCompanion$Lifecycle";
    private static final String STATS_PULL_ATOM_SERVICE_CLASS = "com.android.server.stats.pull.StatsPullAtomService";
    private static final String STORAGE_MANAGER_SERVICE_CLASS = "com.android.server.StorageManagerService$Lifecycle";
    private static final String STORAGE_STATS_SERVICE_CLASS = "com.android.server.usage.StorageStatsService$Lifecycle";
    private static final String SYSPROP_START_COUNT = "sys.system_server.start_count";
    private static final String SYSPROP_START_ELAPSED = "sys.system_server.start_elapsed";
    private static final String SYSPROP_START_UPTIME = "sys.system_server.start_uptime";
    private static final String SYSTEM_CAPTIONS_MANAGER_SERVICE_CLASS = "com.android.server.systemcaptions.SystemCaptionsManagerService";
    private static final String TAG = "SystemServer";
    private static final String TETHERING_CONNECTOR_CLASS = "android.net.ITetheringConnector";
    private static final String THERMAL_OBSERVER_CLASS = "com.google.android.clockwork.ThermalObserver";
    private static final String TIME_DETECTOR_SERVICE_CLASS = "com.android.server.timedetector.TimeDetectorService$Lifecycle";
    private static final String TIME_ZONE_DETECTOR_SERVICE_CLASS = "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle";
    private static final String TIME_ZONE_RULES_MANAGER_SERVICE_CLASS = "com.android.server.timezone.RulesManagerService$Lifecycle";
    private static final String UNCRYPT_PACKAGE_FILE = "/cache/recovery/uncrypt_file";
    private static final String USB_SERVICE_CLASS = "com.android.server.usb.UsbService$Lifecycle";
    private static final String VOICE_RECOGNITION_MANAGER_SERVICE_CLASS = "com.android.server.voiceinteraction.VoiceInteractionManagerService";
    private static final String WALLPAPER_SERVICE_CLASS = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle";
    private static final String WEAR_CONNECTIVITY_SERVICE_CLASS = "com.android.clockwork.connectivity.WearConnectivityService";
    private static final String WEAR_DISPLAY_SERVICE_CLASS = "com.google.android.clockwork.display.WearDisplayService";
    private static final String WEAR_GLOBAL_ACTIONS_SERVICE_CLASS = "com.android.clockwork.globalactions.GlobalActionsService";
    private static final String WEAR_LEFTY_SERVICE_CLASS = "com.google.android.clockwork.lefty.WearLeftyService";
    private static final String WEAR_POWER_SERVICE_CLASS = "com.android.clockwork.power.WearPowerService";
    private static final String WEAR_SIDEKICK_SERVICE_CLASS = "com.google.android.clockwork.sidekick.SidekickService";
    private static final String WEAR_TIME_SERVICE_CLASS = "com.google.android.clockwork.time.WearTimeService";
    private static final String WIFI_APEX_SERVICE_JAR_PATH = "/apex/com.android.wifi/javalib/service-wifi.jar";
    private static final String WIFI_AWARE_SERVICE_CLASS = "com.android.server.wifi.aware.WifiAwareService";
    private static final String WIFI_P2P_SERVICE_CLASS = "com.android.server.wifi.p2p.WifiP2pService";
    private static final String WIFI_RTT_SERVICE_CLASS = "com.android.server.wifi.rtt.RttService";
    private static final String WIFI_SCANNING_SERVICE_CLASS = "com.android.server.wifi.scanner.WifiScanningService";
    private static final String WIFI_SERVICE_CLASS = "com.android.server.wifi.WifiService";
    private static final int sMaxBinderThreads = 31;
    private static LinkedList<Pair<String, ApplicationErrorReport.CrashInfo>> sPendingWtfs;
    private ActivityManagerService mActivityManagerService;
    private ContentResolver mContentResolver;
    private DataLoaderManagerService mDataLoaderManagerService;
    private DisplayManagerService mDisplayManagerService;
    private EntropyMixer mEntropyMixer;
    private boolean mFirstBoot;
    private boolean mOnlyCore;
    private PackageManager mPackageManager;
    private PackageManagerService mPackageManagerService;
    private PowerManagerService mPowerManagerService;
    private Timer mProfilerSnapshotTimer;
    private final boolean mRuntimeRestart;
    private final long mRuntimeStartUptime;
    private Future<?> mSensorServiceStart;
    private Context mSystemContext;
    private SystemServiceManager mSystemServiceManager;
    private WebViewUpdateService mWebViewUpdateService;
    private WindowManagerGlobalLock mWindowManagerGlobalLock;
    private Future<?> mZygotePreload;
    private long mIncrementalServiceHandle = 0;
    private final int mFactoryTestMode = FactoryTest.getMode();
    private final int mStartCount = SystemProperties.getInt(SYSPROP_START_COUNT, 0) + 1;
    private final long mRuntimeStartElapsedTime = SystemClock.elapsedRealtime();

    private static native void initZygoteChildHeapProfiling();

    private static native void setIncrementalServiceSystemReady(long j);

    private static native void spawnFdLeakCheckThread();

    private static native void startHidlServices();

    private static native long startIncrementalService();

    private static native void startSensorService();

    public static void main(String[] args) throws Throwable {
        new SystemServer().run();
    }

    public SystemServer() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.mRuntimeStartUptime = jUptimeMillis;
        Process.setStartTimes(this.mRuntimeStartElapsedTime, jUptimeMillis);
        this.mRuntimeRestart = "1".equals(SystemProperties.get("sys.boot_completed"));
    }

    private void run() throws Throwable {
        TimingsTraceAndSlog t;
        TimingsTraceAndSlog t2 = new TimingsTraceAndSlog();
        try {
            if (!this.mRuntimeRestart) {
                try {
                    Debug.traceBootKpi("M - System Server start");
                } catch (Throwable th) {
                    th = th;
                    t = t2;
                    t.traceEnd();
                    throw th;
                }
            }
            t2.traceBegin("InitBeforeStartServices");
            SystemProperties.set(SYSPROP_START_COUNT, String.valueOf(this.mStartCount));
            SystemProperties.set(SYSPROP_START_ELAPSED, String.valueOf(this.mRuntimeStartElapsedTime));
            SystemProperties.set(SYSPROP_START_UPTIME, String.valueOf(this.mRuntimeStartUptime));
            EventLog.writeEvent(EventLogTags.SYSTEM_SERVER_START, Integer.valueOf(this.mStartCount), Long.valueOf(this.mRuntimeStartUptime), Long.valueOf(this.mRuntimeStartElapsedTime));
            String timezoneProperty = SystemProperties.get("persist.sys.timezone");
            if (timezoneProperty == null || timezoneProperty.isEmpty()) {
                Slog.w(TAG, "Timezone not set; setting to GMT.");
                SystemProperties.set("persist.sys.timezone", "GMT");
            }
            if (!SystemProperties.get("persist.sys.language").isEmpty()) {
                String languageTag = Locale.getDefault().toLanguageTag();
                SystemProperties.set("persist.sys.locale", languageTag);
                SystemProperties.set("persist.sys.language", "");
                SystemProperties.set("persist.sys.country", "");
                SystemProperties.set("persist.sys.localevar", "");
            }
            Binder.setWarnOnBlocking(true);
            PackageItemInfo.forceSafeLabels();
            SQLiteGlobal.sDefaultSyncMode = "FULL";
            SQLiteCompatibilityWalFlags.init((String) null);
            Slog.i(TAG, "Entered the Android system server!");
            long uptimeMillis = SystemClock.elapsedRealtime();
            EventLog.writeEvent(EventLogTags.BOOT_PROGRESS_SYSTEM_RUN, uptimeMillis);
            if (!this.mRuntimeRestart) {
                FrameworkStatsLog.write(240, 19, uptimeMillis);
            }
            SystemProperties.set("persist.sys.dalvik.vm.lib.2", VMRuntime.getRuntime().vmLibrary());
            VMRuntime.getRuntime().clearGrowthLimit();
            Build.ensureFingerprintProperty();
            Environment.setUserRequired(true);
            BaseBundle.setShouldDefuse(true);
            Parcel.setStackTraceParceling(true);
            BinderInternal.disableBackgroundScheduling(true);
            BinderInternal.setMaxThreads(31);
            Process.setThreadPriority(-2);
            Process.setCanSelfBackground(false);
            Looper.prepareMainLooper();
            Looper.getMainLooper().setSlowLogThresholdMs(SLOW_DISPATCH_THRESHOLD_MS, SLOW_DELIVERY_THRESHOLD_MS);
            SystemServiceRegistry.sEnableServiceNotFoundWtf = true;
            System.loadLibrary("android_servers");
            initZygoteChildHeapProfiling();
            if (Build.IS_DEBUGGABLE) {
                spawnFdLeakCheckThread();
            }
            performPendingShutdown();
            createSystemContext();
            ActivityThread.initializeMainlineModules();
            SystemServiceManager systemServiceManager = new SystemServiceManager(this.mSystemContext);
            this.mSystemServiceManager = systemServiceManager;
            t = t2;
            try {
                systemServiceManager.setStartInfo(this.mRuntimeRestart, this.mRuntimeStartElapsedTime, this.mRuntimeStartUptime);
                LocalServices.addService(SystemServiceManager.class, this.mSystemServiceManager);
                SystemServerInitThreadPool.start();
                if (Build.IS_DEBUGGABLE) {
                    String jvmtiAgent = SystemProperties.get("persist.sys.dalvik.jvmtiagent");
                    if (!jvmtiAgent.isEmpty()) {
                        int equalIndex = jvmtiAgent.indexOf(61);
                        String libraryPath = jvmtiAgent.substring(0, equalIndex);
                        String parameterList = jvmtiAgent.substring(equalIndex + 1, jvmtiAgent.length());
                        try {
                            Debug.attachJvmtiAgent(libraryPath, parameterList, null);
                        } catch (Exception e) {
                            Slog.e("System", "*************************************************");
                            Slog.e("System", "********** Failed to load jvmti plugin: " + jvmtiAgent);
                        }
                    }
                }
                t.traceEnd();
                RuntimeInit.setDefaultApplicationWtfHandler(new RuntimeInit.ApplicationWtfHandler() { // from class: com.android.server.-$$Lambda$SystemServer$-CPwHnC0JLmQ1R_LlAGbc_jvNjw
                    public final boolean handleApplicationWtf(IBinder iBinder, String str, boolean z, ApplicationErrorReport.ParcelableCrashInfo parcelableCrashInfo, int i) {
                        return SystemServer.handleEarlySystemWtf(iBinder, str, z, parcelableCrashInfo, i);
                    }
                });
                Debug.traceBootKpi("M - System Server , start services");
                try {
                    t.traceBegin("StartServices");
                    startBootstrapServices(t);
                    startCoreServices(t);
                    startOtherServices(t);
                    t.traceEnd();
                    StrictMode.initVmDefaults(null);
                    if (!this.mRuntimeRestart && !isFirstBootOrUpgrade()) {
                        long uptimeMillis2 = SystemClock.elapsedRealtime();
                        FrameworkStatsLog.write(240, 20, uptimeMillis2);
                        if (uptimeMillis2 > 60000) {
                            Slog.wtf(TimingsTraceAndSlog.SYSTEM_SERVER_TIMING_TAG, "SystemServer init took too long. uptimeMillis=" + uptimeMillis2);
                        }
                    }
                    if (!VMRuntime.hasBootImageSpaces()) {
                        Slog.wtf(TAG, "Runtime is not running with a boot image!");
                    }
                    Debug.traceBootKpi("M - System Server , thread loop");
                    Looper.loop();
                    throw new RuntimeException("Main thread loop unexpectedly exited");
                } catch (Throwable ex) {
                    try {
                        Slog.e("System", "******************************************");
                        Slog.e("System", "************ Failure starting system services", ex);
                        throw ex;
                    } catch (Throwable ex2) {
                        t.traceEnd();
                        throw ex2;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                t.traceEnd();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            t = t2;
        }
    }

    private boolean isFirstBootOrUpgrade() {
        return this.mPackageManagerService.isFirstBoot() || this.mPackageManagerService.isDeviceUpgrading();
    }

    private void reportWtf(String msg, Throwable e) {
        Slog.w(TAG, "***********************************************");
        Slog.wtf(TAG, "BOOT FAILURE " + msg, e);
    }

    private void performPendingShutdown() {
        final String reason;
        String shutdownAction = SystemProperties.get(ShutdownThread.SHUTDOWN_ACTION_PROPERTY, "");
        if (shutdownAction != null && shutdownAction.length() > 0) {
            final boolean reboot = shutdownAction.charAt(0) == '1';
            if (shutdownAction.length() > 1) {
                reason = shutdownAction.substring(1, shutdownAction.length());
            } else {
                reason = null;
            }
            if (reason != null && reason.startsWith("recovery-update")) {
                File packageFile = new File(UNCRYPT_PACKAGE_FILE);
                if (packageFile.exists()) {
                    String filename = null;
                    try {
                        filename = FileUtils.readTextFile(packageFile, 0, null);
                    } catch (IOException e) {
                        Slog.e(TAG, "Error reading uncrypt package file", e);
                    }
                    if (filename != null && filename.startsWith("/data") && !new File(BLOCK_MAP_FILE).exists()) {
                        Slog.e(TAG, "Can't find block map file, uncrypt failed or unexpected runtime restart?");
                        return;
                    }
                }
            }
            Runnable runnable = new Runnable() { // from class: com.android.server.SystemServer.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (this) {
                        ShutdownThread.rebootOrShutdown(null, reboot, reason);
                    }
                }
            };
            Message msg = Message.obtain(UiThread.getHandler(), runnable);
            msg.setAsynchronous(true);
            UiThread.getHandler().sendMessage(msg);
        }
    }

    private void createSystemContext() {
        ActivityThread activityThread = ActivityThread.systemMain();
        ContextImpl systemContext = activityThread.getSystemContext();
        this.mSystemContext = systemContext;
        systemContext.setTheme(16974852);
        activityThread.getSystemUiContext().setTheme(16974852);
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [android.os.IBinder, com.android.server.compat.PlatformCompat] */
    private void startBootstrapServices(TimingsTraceAndSlog t) {
        t.traceBegin("startBootstrapServices");
        t.traceBegin("StartWatchdog");
        Watchdog watchdog = Watchdog.getInstance();
        watchdog.start();
        t.traceEnd();
        Slog.i(TAG, "Reading configuration...");
        t.traceBegin("ReadingSystemConfig");
        SystemServerInitThreadPool.submit(new Runnable() { // from class: com.android.server.-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY
            @Override // java.lang.Runnable
            public final void run() {
                SystemConfig.getInstance();
            }
        }, "ReadingSystemConfig");
        t.traceEnd();
        t.traceBegin("PlatformCompat");
        ?? platformCompat = new PlatformCompat(this.mSystemContext);
        ServiceManager.addService("platform_compat", (IBinder) platformCompat);
        ServiceManager.addService("platform_compat_native", new PlatformCompatNative(platformCompat));
        AppCompatCallbacks.install(new long[0]);
        t.traceEnd();
        t.traceBegin("StartFileIntegrityService");
        this.mSystemServiceManager.startService(FileIntegrityService.class);
        t.traceEnd();
        t.traceBegin("StartInstaller");
        Installer installer = (Installer) this.mSystemServiceManager.startService(Installer.class);
        t.traceEnd();
        t.traceBegin("DeviceIdentifiersPolicyService");
        this.mSystemServiceManager.startService(DeviceIdentifiersPolicyService.class);
        t.traceEnd();
        t.traceBegin("UriGrantsManagerService");
        this.mSystemServiceManager.startService(UriGrantsManagerService.Lifecycle.class);
        t.traceEnd();
        t.traceBegin("StartActivityManager");
        ActivityTaskManagerService atm = ((ActivityTaskManagerService.Lifecycle) this.mSystemServiceManager.startService(ActivityTaskManagerService.Lifecycle.class)).getService();
        ActivityManagerService activityManagerServiceStartService = ActivityManagerService.Lifecycle.startService(this.mSystemServiceManager, atm);
        this.mActivityManagerService = activityManagerServiceStartService;
        activityManagerServiceStartService.setSystemServiceManager(this.mSystemServiceManager);
        this.mActivityManagerService.setInstaller(installer);
        this.mWindowManagerGlobalLock = atm.getGlobalLock();
        t.traceEnd();
        t.traceBegin("StartDataLoaderManagerService");
        this.mDataLoaderManagerService = (DataLoaderManagerService) this.mSystemServiceManager.startService(DataLoaderManagerService.class);
        t.traceEnd();
        t.traceBegin("StartIncrementalService");
        this.mIncrementalServiceHandle = startIncrementalService();
        t.traceEnd();
        t.traceBegin("StartPowerManager");
        this.mPowerManagerService = (PowerManagerService) this.mSystemServiceManager.startService(PowerManagerService.class);
        t.traceEnd();
        t.traceBegin("StartThermalManager");
        this.mSystemServiceManager.startService(ThermalManagerService.class);
        t.traceEnd();
        t.traceBegin("InitPowerManagement");
        this.mActivityManagerService.initPowerManagement();
        t.traceEnd();
        t.traceBegin("StartRecoverySystemService");
        this.mSystemServiceManager.startService(RecoverySystemService.Lifecycle.class);
        t.traceEnd();
        RescueParty.registerHealthObserver(this.mSystemContext);
        PackageWatchdog.getInstance(this.mSystemContext).noteBoot();
        t.traceBegin("StartLightsService");
        this.mSystemServiceManager.startService(LightsService.class);
        t.traceEnd();
        t.traceBegin("StartSidekickService");
        if (SystemProperties.getBoolean("config.enable_sidekick_graphics", false)) {
            this.mSystemServiceManager.startService(WEAR_SIDEKICK_SERVICE_CLASS);
        }
        t.traceEnd();
        t.traceBegin("StartDisplayManager");
        this.mDisplayManagerService = (DisplayManagerService) this.mSystemServiceManager.startService(DisplayManagerService.class);
        t.traceEnd();
        t.traceBegin("WaitForDisplay");
        this.mSystemServiceManager.startBootPhase(t, 100);
        t.traceEnd();
        String cryptState = (String) VoldProperties.decrypt().orElse("");
        boolean z = true;
        if (ENCRYPTING_STATE.equals(cryptState)) {
            Slog.w(TAG, "Detected encryption in progress - only parsing core apps");
            this.mOnlyCore = true;
        } else if ("1".equals(cryptState)) {
            Slog.w(TAG, "Device encrypted - only parsing core apps");
            this.mOnlyCore = true;
        }
        if (!this.mRuntimeRestart) {
            FrameworkStatsLog.write(240, 14, SystemClock.elapsedRealtime());
        }
        t.traceBegin("StartPackageManagerService");
        try {
            Debug.traceBootKpi("M - System Server ,StartPMS BEGAIN");
            Watchdog.getInstance().pauseWatchingCurrentThread("packagemanagermain");
            Context context = this.mSystemContext;
            if (this.mFactoryTestMode == 0) {
                z = false;
            }
            this.mPackageManagerService = PackageManagerService.main(context, installer, z, this.mOnlyCore);
            Debug.traceBootKpi("M - System Server ,StartPMS END");
            Watchdog.getInstance().resumeWatchingCurrentThread("packagemanagermain");
            SystemServerDexLoadReporter.configureSystemServerDexReporter(this.mPackageManagerService);
            this.mFirstBoot = this.mPackageManagerService.isFirstBoot();
            this.mPackageManager = this.mSystemContext.getPackageManager();
            t.traceEnd();
            if (!this.mRuntimeRestart && !isFirstBootOrUpgrade()) {
                FrameworkStatsLog.write(240, 15, SystemClock.elapsedRealtime());
            }
            if (!this.mOnlyCore) {
                boolean disableOtaDexopt = SystemProperties.getBoolean("config.disable_otadexopt", false);
                if (!disableOtaDexopt) {
                    t.traceBegin("StartOtaDexOptService");
                    try {
                        Watchdog.getInstance().pauseWatchingCurrentThread("moveab");
                        OtaDexoptService.main(this.mSystemContext, this.mPackageManagerService);
                    } catch (Throwable e) {
                        try {
                            reportWtf("starting OtaDexOptService", e);
                        } finally {
                            Watchdog.getInstance().resumeWatchingCurrentThread("moveab");
                            t.traceEnd();
                        }
                    }
                    Watchdog.getInstance().resumeWatchingCurrentThread("moveab");
                    t.traceEnd();
                }
            }
            t.traceBegin("StartUserManagerService");
            this.mSystemServiceManager.startService(UserManagerService.LifeCycle.class);
            t.traceEnd();
            t.traceBegin("InitAttributerCache");
            AttributeCache.init(this.mSystemContext);
            t.traceEnd();
            t.traceBegin("SetSystemProcess");
            this.mActivityManagerService.setSystemProcess();
            t.traceEnd();
            t.traceBegin("InitWatchdog");
            watchdog.init(this.mSystemContext, this.mActivityManagerService);
            t.traceEnd();
            this.mDisplayManagerService.setupSchedulerPolicies();
            t.traceBegin("StartOverlayManagerService");
            this.mSystemServiceManager.startService(new OverlayManagerService(this.mSystemContext));
            t.traceEnd();
            t.traceBegin("StartSensorPrivacyService");
            this.mSystemServiceManager.startService(new SensorPrivacyService(this.mSystemContext));
            t.traceEnd();
            if (SystemProperties.getInt("persist.sys.displayinset.top", 0) > 0) {
                this.mActivityManagerService.updateSystemUiContext();
                ((DisplayManagerInternal) LocalServices.getService(DisplayManagerInternal.class)).onOverlayChanged();
            }
            this.mSensorServiceStart = SystemServerInitThreadPool.submit(new Runnable() { // from class: com.android.server.-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4
                @Override // java.lang.Runnable
                public final void run() {
                    SystemServer.lambda$startBootstrapServices$0();
                }
            }, START_SENSOR_SERVICE);
        } catch (Throwable th) {
            Watchdog.getInstance().resumeWatchingCurrentThread("packagemanagermain");
            throw th;
        }
    }

    static /* synthetic */ void lambda$startBootstrapServices$0() {
        TimingsTraceAndSlog traceLog = TimingsTraceAndSlog.newAsyncLog();
        traceLog.traceBegin(START_SENSOR_SERVICE);
        startSensorService();
        traceLog.traceEnd();
    }

    private void startCoreServices(TimingsTraceAndSlog t) {
        t.traceBegin("startCoreServices");
        t.traceBegin("StartSystemConfigService");
        this.mSystemServiceManager.startService(SystemConfigService.class);
        t.traceEnd();
        t.traceBegin("StartBatteryService");
        this.mSystemServiceManager.startService(BatteryService.class);
        t.traceEnd();
        t.traceBegin("StartUsageService");
        this.mSystemServiceManager.startService(UsageStatsService.class);
        this.mActivityManagerService.setUsageStatsManager((UsageStatsManagerInternal) LocalServices.getService(UsageStatsManagerInternal.class));
        t.traceEnd();
        if (this.mPackageManager.hasSystemFeature("android.software.webview")) {
            t.traceBegin("StartWebViewUpdateService");
            this.mWebViewUpdateService = (WebViewUpdateService) this.mSystemServiceManager.startService(WebViewUpdateService.class);
            t.traceEnd();
        }
        t.traceBegin("StartCachedDeviceStateService");
        this.mSystemServiceManager.startService(CachedDeviceStateService.class);
        t.traceEnd();
        t.traceBegin("StartBinderCallsStatsService");
        this.mSystemServiceManager.startService(BinderCallsStatsService.LifeCycle.class);
        t.traceEnd();
        t.traceBegin("StartLooperStatsService");
        this.mSystemServiceManager.startService(LooperStatsService.Lifecycle.class);
        t.traceEnd();
        t.traceBegin("StartRollbackManagerService");
        this.mSystemServiceManager.startService(ROLLBACK_MANAGER_SERVICE_CLASS);
        t.traceEnd();
        t.traceBegin("StartBugreportManagerService");
        this.mSystemServiceManager.startService(BugreportManagerService.class);
        t.traceEnd();
        t.traceBegin(GpuService.TAG);
        this.mSystemServiceManager.startService(GpuService.class);
        t.traceEnd();
        t.traceEnd();
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x1042 */
    /* JADX WARN: Failed to apply debug info
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r5v54 ??, new type: com.android.server.statusbar.StatusBarManagerService
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyDebugInfo(TypeUpdate.java:77)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:137)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:133)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:75)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 8 more
     */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r5v54 ??, new type: java.lang.Object
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void startOtherServices(com.android.server.utils.TimingsTraceAndSlog r59) {
        /*
            Method dump skipped, instruction units count: 4302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.SystemServer.startOtherServices(com.android.server.utils.TimingsTraceAndSlog):void");
    }

    static /* synthetic */ void lambda$startOtherServices$1() {
        try {
            Slog.i(TAG, "SecondaryZygotePreload");
            TimingsTraceAndSlog traceLog = TimingsTraceAndSlog.newAsyncLog();
            traceLog.traceBegin("SecondaryZygotePreload");
            if (!Process.ZYGOTE_PROCESS.preloadDefault(Build.SUPPORTED_32_BIT_ABIS[0])) {
                Slog.e(TAG, "Unable to preload default resources");
            }
            traceLog.traceEnd();
        } catch (Exception ex) {
            Slog.e(TAG, "Exception preloading default resources", ex);
        }
    }

    static /* synthetic */ void lambda$startOtherServices$2() {
        TimingsTraceAndSlog traceLog = TimingsTraceAndSlog.newAsyncLog();
        traceLog.traceBegin(START_HIDL_SERVICES);
        startHidlServices();
        traceLog.traceEnd();
    }

    public /* synthetic */ void lambda$startOtherServices$5$SystemServer(TimingsTraceAndSlog t, Context context, WindowManagerService windowManagerF, boolean safeMode, ConnectivityService connectivityF, NetworkManagementService networkManagementF, NetworkPolicyManagerService networkPolicyF, IpSecService ipSecServiceF, NetworkStatsService networkStatsF, CountryDetectorService countryDetectorF, GnssTimeUpdateService gnssTimeUpdaterF, NetworkTimeUpdateService networkTimeUpdaterF, InputManagerService inputManagerF, TelephonyRegistry telephonyRegistryF, MediaRouterService mediaRouterF, MmsServiceBroker mmsServiceF) {
        Future<?> webviewPrep;
        CountDownLatch networkPolicyInitReadySignal;
        Slog.i(TAG, "Making services ready");
        t.traceBegin("StartActivityManagerReadyPhase");
        this.mSystemServiceManager.startBootPhase(t, SystemService.PHASE_ACTIVITY_MANAGER_READY);
        t.traceEnd();
        t.traceBegin("StartObservingNativeCrashes");
        try {
            this.mActivityManagerService.startObservingNativeCrashes();
        } catch (Throwable e) {
            reportWtf("observing native crashes", e);
        }
        t.traceEnd();
        if (!this.mOnlyCore && this.mWebViewUpdateService != null) {
            Future<?> webviewPrep2 = SystemServerInitThreadPool.submit(new Runnable() { // from class: com.android.server.-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startOtherServices$3$SystemServer();
                }
            }, "WebViewFactoryPreparation");
            webviewPrep = webviewPrep2;
        } else {
            webviewPrep = null;
        }
        if (this.mPackageManager.hasSystemFeature("android.hardware.type.automotive")) {
            t.traceBegin("StartCarServiceHelperService");
            this.mSystemServiceManager.startService(CAR_SERVICE_HELPER_SERVICE_CLASS);
            t.traceEnd();
        }
        Debug.traceBootKpi("M - AMS startSystemUi");
        t.traceBegin("StartSystemUI");
        try {
            startSystemUi(context, windowManagerF);
        } catch (Throwable e2) {
            reportWtf("starting System UI", e2);
        }
        t.traceEnd();
        if (safeMode) {
            t.traceBegin("EnableAirplaneModeInSafeMode");
            try {
                connectivityF.setAirplaneMode(true);
            } catch (Throwable e3) {
                reportWtf("enabling Airplane Mode during Safe Mode bootup", e3);
            }
            t.traceEnd();
        }
        t.traceBegin("MakeNetworkManagementServiceReady");
        if (networkManagementF != null) {
            try {
                networkManagementF.systemReady();
            } catch (Throwable e4) {
                reportWtf("making Network Managment Service ready", e4);
            }
        }
        if (networkPolicyF == null) {
            networkPolicyInitReadySignal = null;
        } else {
            CountDownLatch networkPolicyInitReadySignal2 = networkPolicyF.networkScoreAndNetworkManagementServiceReady();
            networkPolicyInitReadySignal = networkPolicyInitReadySignal2;
        }
        t.traceEnd();
        t.traceBegin("MakeIpSecServiceReady");
        if (ipSecServiceF != null) {
            try {
                ipSecServiceF.systemReady();
            } catch (Throwable e5) {
                reportWtf("making IpSec Service ready", e5);
            }
        }
        t.traceEnd();
        t.traceBegin("MakeNetworkStatsServiceReady");
        if (networkStatsF != null) {
            try {
                networkStatsF.systemReady();
            } catch (Throwable e6) {
                reportWtf("making Network Stats Service ready", e6);
            }
        }
        t.traceEnd();
        t.traceBegin("MakeConnectivityServiceReady");
        if (connectivityF != null) {
            try {
                connectivityF.systemReady();
            } catch (Throwable e7) {
                reportWtf("making Connectivity Service ready", e7);
            }
        }
        t.traceEnd();
        t.traceBegin("MakeNetworkPolicyServiceReady");
        if (networkPolicyF != null) {
            try {
                networkPolicyF.systemReady(networkPolicyInitReadySignal);
            } catch (Throwable e8) {
                reportWtf("making Network Policy Service ready", e8);
            }
        }
        t.traceEnd();
        this.mPackageManagerService.waitForAppDataPrepared();
        t.traceBegin("PhaseThirdPartyAppsCanStart");
        if (webviewPrep != null) {
            ConcurrentUtils.waitForFutureNoInterrupt(webviewPrep, "WebViewFactoryPreparation");
        }
        this.mSystemServiceManager.startBootPhase(t, SystemService.PHASE_THIRD_PARTY_APPS_CAN_START);
        t.traceEnd();
        t.traceBegin("StartNetworkStack");
        try {
            NetworkStackClient.getInstance().start();
        } catch (Throwable e9) {
            reportWtf("starting Network Stack", e9);
        }
        t.traceEnd();
        t.traceBegin("StartTethering");
        try {
            ConnectivityModuleConnector.getInstance().startModuleService(TETHERING_CONNECTOR_CLASS, "android.permission.MAINLINE_NETWORK_STACK", new ConnectivityModuleConnector.ModuleServiceCallback() { // from class: com.android.server.-$$Lambda$SystemServer$RfxLu1RawR4j0S9lEwPzwtODxaE
                @Override // android.net.ConnectivityModuleConnector.ModuleServiceCallback
                public final void onModuleServiceConnected(IBinder iBinder) {
                    ServiceManager.addService("tethering", iBinder, false, 6);
                }
            });
        } catch (Throwable e10) {
            reportWtf("starting Tethering", e10);
        }
        t.traceEnd();
        t.traceBegin("MakeCountryDetectionServiceReady");
        if (countryDetectorF != null) {
            try {
                countryDetectorF.systemRunning();
            } catch (Throwable e11) {
                reportWtf("Notifying CountryDetectorService running", e11);
            }
        }
        t.traceEnd();
        t.traceBegin("MakeGnssTimeUpdateReady");
        if (gnssTimeUpdaterF != null) {
            try {
                gnssTimeUpdaterF.systemRunning();
            } catch (Throwable e12) {
                reportWtf("Notifying GnssTimeService running", e12);
            }
        }
        t.traceEnd();
        t.traceBegin("MakeNetworkTimeUpdateReady");
        if (networkTimeUpdaterF != null) {
            try {
                networkTimeUpdaterF.systemRunning();
            } catch (Throwable e13) {
                reportWtf("Notifying NetworkTimeService running", e13);
            }
        }
        t.traceEnd();
        t.traceBegin("MakeInputManagerServiceReady");
        if (inputManagerF != null) {
            try {
                inputManagerF.systemRunning();
            } catch (Throwable e14) {
                reportWtf("Notifying InputManagerService running", e14);
            }
        }
        t.traceEnd();
        t.traceBegin("MakeTelephonyRegistryReady");
        if (telephonyRegistryF != null) {
            try {
                telephonyRegistryF.systemRunning();
            } catch (Throwable e15) {
                reportWtf("Notifying TelephonyRegistry running", e15);
            }
        }
        t.traceEnd();
        t.traceBegin("MakeMediaRouterServiceReady");
        if (mediaRouterF != null) {
            try {
                mediaRouterF.systemRunning();
            } catch (Throwable e16) {
                reportWtf("Notifying MediaRouterService running", e16);
            }
        }
        t.traceEnd();
        t.traceBegin("MakeMmsServiceReady");
        if (mmsServiceF != null) {
            try {
                mmsServiceF.systemRunning();
            } catch (Throwable e17) {
                reportWtf("Notifying MmsService running", e17);
            }
        }
        t.traceEnd();
        t.traceBegin("IncidentDaemonReady");
        try {
            IIncidentManager incident = IIncidentManager.Stub.asInterface(ServiceManager.getService("incident"));
            if (incident != null) {
                incident.systemRunning();
            }
        } catch (Throwable e18) {
            reportWtf("Notifying incident daemon running", e18);
        }
        t.traceEnd();
        if (this.mIncrementalServiceHandle != 0) {
            t.traceBegin("MakeIncrementalServiceReady");
            setIncrementalServiceSystemReady(this.mIncrementalServiceHandle);
            t.traceEnd();
        }
    }

    public /* synthetic */ void lambda$startOtherServices$3$SystemServer() {
        Slog.i(TAG, "WebViewFactoryPreparation");
        TimingsTraceAndSlog traceLog = TimingsTraceAndSlog.newAsyncLog();
        traceLog.traceBegin("WebViewFactoryPreparation");
        ConcurrentUtils.waitForFutureNoInterrupt(this.mZygotePreload, "Zygote preload");
        this.mZygotePreload = null;
        this.mWebViewUpdateService.prepareWebViewInSystemServer();
        traceLog.traceEnd();
    }

    private boolean deviceHasConfigString(Context context, int resId) {
        String serviceName = context.getString(resId);
        return !TextUtils.isEmpty(serviceName);
    }

    private void startSystemCaptionsManagerService(Context context, TimingsTraceAndSlog t) {
        if (!deviceHasConfigString(context, R.string.config_dozeDoubleTapSensorType)) {
            Slog.d(TAG, "SystemCaptionsManagerService disabled because resource is not overlaid");
            return;
        }
        t.traceBegin("StartSystemCaptionsManagerService");
        this.mSystemServiceManager.startService(SYSTEM_CAPTIONS_MANAGER_SERVICE_CLASS);
        t.traceEnd();
    }

    private void startContentCaptureService(Context context, TimingsTraceAndSlog t) {
        ActivityManagerService activityManagerService;
        boolean explicitlyEnabled = false;
        String settings = DeviceConfig.getProperty("content_capture", "service_explicitly_enabled");
        if (settings != null && !settings.equalsIgnoreCase(BatteryService.HealthServiceWrapper.INSTANCE_VENDOR)) {
            explicitlyEnabled = Boolean.parseBoolean(settings);
            if (explicitlyEnabled) {
                Slog.d(TAG, "ContentCaptureService explicitly enabled by DeviceConfig");
            } else {
                Slog.d(TAG, "ContentCaptureService explicitly disabled by DeviceConfig");
                return;
            }
        }
        if (!explicitlyEnabled && !deviceHasConfigString(context, R.string.config_deviceSpecificDeviceStatePolicyProvider)) {
            Slog.d(TAG, "ContentCaptureService disabled because resource is not overlaid");
            return;
        }
        t.traceBegin("StartContentCaptureService");
        this.mSystemServiceManager.startService(CONTENT_CAPTURE_MANAGER_SERVICE_CLASS);
        ContentCaptureManagerInternal ccmi = (ContentCaptureManagerInternal) LocalServices.getService(ContentCaptureManagerInternal.class);
        if (ccmi != null && (activityManagerService = this.mActivityManagerService) != null) {
            activityManagerService.setContentCaptureManager(ccmi);
        }
        t.traceEnd();
    }

    private void startAttentionService(Context context, TimingsTraceAndSlog t) {
        if (!AttentionManagerService.isServiceConfigured(context)) {
            Slog.d(TAG, "AttentionService is not configured on this device");
            return;
        }
        t.traceBegin("StartAttentionManagerService");
        this.mSystemServiceManager.startService(AttentionManagerService.class);
        t.traceEnd();
    }

    private static void startSystemUi(Context context, WindowManagerService windowManager) {
        PackageManagerInternal pm = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        Intent intent = new Intent();
        intent.setComponent(pm.getSystemUiServiceComponent());
        intent.addFlags(256);
        context.startServiceAsUser(intent, UserHandle.SYSTEM);
        windowManager.onSystemUiStarted();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean handleEarlySystemWtf(IBinder app, String tag, boolean system, ApplicationErrorReport.ParcelableCrashInfo crashInfo, int immediateCallerPid) {
        int myPid = Process.myPid();
        com.android.server.am.EventLogTags.writeAmWtf(UserHandle.getUserId(1000), myPid, "system_server", -1, tag, crashInfo.exceptionMessage);
        FrameworkStatsLog.write(80, 1000, tag, "system_server", myPid, 3);
        synchronized (SystemServer.class) {
            if (sPendingWtfs == null) {
                sPendingWtfs = new LinkedList<>();
            }
            sPendingWtfs.add(new Pair<>(tag, crashInfo));
        }
        return false;
    }
}
