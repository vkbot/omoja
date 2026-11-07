package com.android.server.power;

import android.R;
import android.app.ActivityManager;
import android.app.SynchronousUserSwitchObserver;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.hardware.SensorManager;
import android.hardware.SystemSensorManager;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.display.AmbientDisplayConfiguration;
import android.hardware.display.DisplayManagerInternal;
import android.net.Uri;
import android.os.BatteryManager;
import android.os.BatteryManagerInternal;
import android.os.BatterySaverPolicyConfig;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.IPowerManager;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManagerInternal;
import android.os.PowerSaveState;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.WorkSource;
import android.provider.Settings;
import android.service.dreams.DreamManagerInternal;
import android.service.vr.IVrManager;
import android.service.vr.IVrStateCallbacks;
import android.sysprop.InitProperties;
import android.util.KeyValueListParser;
import android.util.PrintWriterPrinter;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import android.view.Display;
import android.view.KeyEvent;
import com.android.internal.BrightnessSynchronizer;
import com.android.internal.app.IAppOpsService;
import com.android.internal.app.IBatteryStats;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.DumpUtils;
import com.android.server.EventLogTags;
import com.android.server.LockGuard;
import com.android.server.ServiceThread;
import com.android.server.SystemService;
import com.android.server.Watchdog;
import com.android.server.am.BatteryStatsService;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.job.controllers.JobStatus;
import com.android.server.lights.LightsManager;
import com.android.server.lights.LogicalLight;
import com.android.server.notification.SnoozeHelper;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.power.backlight.AutoBackLightController;
import com.android.server.power.backlight.BackLightConfig;
import com.android.server.power.backlight.BackLightSettings;
import com.android.server.power.batterysaver.BatterySaverController;
import com.android.server.power.batterysaver.BatterySaverPolicy;
import com.android.server.power.batterysaver.BatterySaverStateMachine;
import com.android.server.power.batterysaver.BatterySavingStats;
import com.android.server.utils.PriorityDump;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class PowerManagerService extends SystemService implements Watchdog.Monitor {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_SPEW = false;
    private static final int DEFAULT_DOUBLE_TAP_TO_WAKE = 0;
    private static final int DEFAULT_SCREEN_OFF_TIMEOUT = 15000;
    private static final int DEFAULT_SLEEP_TIMEOUT = -1;
    private static final int DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED = 8;
    private static final int DIRTY_ATTENTIVE = 16384;
    private static final int DIRTY_BATTERY_STATE = 256;
    private static final int DIRTY_BOOT_COMPLETED = 16;
    private static final int DIRTY_DOCK_STATE = 1024;
    private static final int DIRTY_IS_POWERED = 64;
    private static final int DIRTY_PROXIMITY_POSITIVE = 512;
    private static final int DIRTY_QUIESCENT = 4096;
    private static final int DIRTY_SCREEN_BRIGHTNESS_BOOST = 2048;
    private static final int DIRTY_SETTINGS = 32;
    private static final int DIRTY_STAY_ON = 128;
    private static final int DIRTY_USER_ACTIVITY = 4;
    private static final int DIRTY_VR_MODE_CHANGED = 8192;
    private static final int DIRTY_WAKEFULNESS = 2;
    private static final int DIRTY_WAKE_LOCKS = 1;
    private static final int HALT_MODE_REBOOT = 1;
    private static final int HALT_MODE_REBOOT_SAFE_MODE = 2;
    private static final int HALT_MODE_SHUTDOWN = 0;
    private static final float INVALID_BRIGHTNESS_IN_CONFIG = -2.0f;
    static final long MIN_LONG_WAKE_CHECK_INTERVAL = 60000;
    private static final int MSG_ATTENTIVE_TIMEOUT = 5;
    private static final int MSG_CHECK_FOR_LONG_WAKELOCKS = 4;
    private static final int MSG_SANDMAN = 2;
    private static final int MSG_SCREEN_BRIGHTNESS_BOOST_TIMEOUT = 3;
    private static final int MSG_USER_ACTIVITY_TIMEOUT = 1;
    private static final int POWER_FEATURE_DOUBLE_TAP_TO_WAKE = 1;
    private static final String REASON_BATTERY_THERMAL_STATE = "shutdown,thermal,battery";
    private static final String REASON_LOW_BATTERY = "shutdown,battery";
    private static final String REASON_REBOOT = "reboot";
    private static final String REASON_SHUTDOWN = "shutdown";
    private static final String REASON_THERMAL_SHUTDOWN = "shutdown,thermal";
    private static final String REASON_USERREQUESTED = "shutdown,userrequested";
    private static final int SCREEN_BRIGHTNESS_BOOST_TIMEOUT = 5000;
    private static final int SCREEN_ON_LATENCY_WARNING_MS = 200;
    private static final String SYSTEM_PROPERTY_DISABLE_AUTOSUSPEND = "sys.disable_auto_suspend";
    private static final String SYSTEM_PROPERTY_QUIESCENT = "ro.boot.quiescent";
    private static final String SYSTEM_PROPERTY_REBOOT_REASON = "sys.boot.reason";
    private static final String SYSTEM_PROPERTY_RETAIL_DEMO_ENABLED = "sys.retaildemo.enabled";
    private static final String TAG = "PowerManagerService";
    private static final String TRACE_SCREEN_ON = "Screen turning on";
    private static final int USER_ACTIVITY_SCREEN_BRIGHT = 1;
    private static final int USER_ACTIVITY_SCREEN_DIM = 2;
    private static final int USER_ACTIVITY_SCREEN_DREAM = 4;
    private static final int WAKE_LOCK_BUTTON_BRIGHT = 8;
    private static final int WAKE_LOCK_CPU = 1;
    private static final int WAKE_LOCK_DOZE = 64;
    private static final int WAKE_LOCK_DRAW = 128;
    private static final int WAKE_LOCK_PROXIMITY_SCREEN_OFF = 16;
    private static final int WAKE_LOCK_SCREEN_BRIGHT = 2;
    private static final int WAKE_LOCK_SCREEN_DIM = 4;
    private static final int WAKE_LOCK_STAY_AWAKE = 32;
    private static boolean sQuiescent;
    private boolean mAlwaysOnEnabled;
    private final AmbientDisplayConfiguration mAmbientDisplayConfiguration;
    private final AmbientDisplaySuppressionController mAmbientDisplaySuppressionController;
    private IAppOpsService mAppOps;
    private final AttentionDetector mAttentionDetector;
    private LogicalLight mAttentionLight;
    private int mAttentiveTimeoutConfig;
    private long mAttentiveTimeoutSetting;
    private long mAttentiveWarningDurationConfig;
    final AutoBackLightController mAutoBackLightController;
    final BackLightConfig mBackLightConfig;
    private int mBatteryLevel;
    private boolean mBatteryLevelLow;
    private int mBatteryLevelWhenDreamStarted;
    private BatteryManagerInternal mBatteryManagerInternal;
    private final BatterySaverController mBatterySaverController;
    private final BatterySaverPolicy mBatterySaverPolicy;
    private final BatterySaverStateMachine mBatterySaverStateMachine;
    private final BatterySavingStats mBatterySavingStats;
    private IBatteryStats mBatteryStats;
    private final BinderService mBinderService;
    private boolean mBootCompleted;
    private final Clock mClock;
    final Constants mConstants;
    private final Context mContext;
    private boolean mDecoupleHalAutoSuspendModeFromDisplayConfig;
    private boolean mDecoupleHalInteractiveModeFromDisplayConfig;
    private boolean mDeviceIdleMode;
    int[] mDeviceIdleTempWhitelist;
    int[] mDeviceIdleWhitelist;
    private int mDirty;
    private boolean mDisableAutoSuspend;
    private DisplayManagerInternal mDisplayManagerInternal;
    private final DisplayManagerInternal.DisplayPowerCallbacks mDisplayPowerCallbacks;
    private final DisplayManagerInternal.DisplayPowerRequest mDisplayPowerRequest;
    private boolean mDisplayReady;
    private final SuspendBlocker mDisplaySuspendBlocker;
    private int mDockState;
    private boolean mDoubleTapWakeEnabled;
    private boolean mDozeAfterScreenOff;
    private int mDozeScreenBrightnessOverrideFromDreamManager;
    private float mDozeScreenBrightnessOverrideFromDreamManagerFloat;
    private int mDozeScreenStateOverrideFromDreamManager;
    private boolean mDozeStartInProgress;
    private boolean mDrawWakeLockOverrideFromSidekick;
    private DreamManagerInternal mDreamManager;
    private boolean mDreamsActivateOnDockSetting;
    private boolean mDreamsActivateOnSleepSetting;
    private boolean mDreamsActivatedOnDockByDefaultConfig;
    private boolean mDreamsActivatedOnSleepByDefaultConfig;
    private int mDreamsBatteryLevelDrainCutoffConfig;
    private int mDreamsBatteryLevelMinimumWhenNotPoweredConfig;
    private int mDreamsBatteryLevelMinimumWhenPoweredConfig;
    private boolean mDreamsEnabledByDefaultConfig;
    private boolean mDreamsEnabledOnBatteryConfig;
    private boolean mDreamsEnabledSetting;
    private boolean mDreamsSupportedConfig;
    private boolean mForceSuspendActive;
    private int mForegroundProfile;
    private boolean mHalAutoSuspendModeEnabled;
    private boolean mHalInteractiveModeEnabled;
    private final Handler mHandler;
    private final ServiceThread mHandlerThread;
    private boolean mHoldingDisplaySuspendBlocker;
    private boolean mHoldingWakeLockSuspendBlocker;
    private InattentiveSleepWarningController mInattentiveSleepWarningOverlayController;
    private final Injector mInjector;
    private boolean mIsPowered;
    private boolean mIsVrModeEnabled;
    private long mLastInteractivePowerHintTime;
    private long mLastScreenBrightnessBoostTime;
    private int mLastSleepReason;
    private long mLastSleepTime;
    private long mLastUserActivityTime;
    private long mLastUserActivityTimeNoChangeLights;
    private int mLastWakeReason;
    private long mLastWakeTime;
    private long mLastWarningAboutUserActivityPermission;
    private boolean mLightDeviceIdleMode;
    final BackLightSettings mLightSettings;
    private LightsManager mLightsManager;
    private final LocalService mLocalService;
    private final Object mLock;
    private long mMaximumScreenDimDurationConfig;
    private float mMaximumScreenDimRatioConfig;
    private long mMaximumScreenOffTimeoutFromDeviceAdmin;
    private long mMinimumScreenOffTimeoutConfig;
    private final NativeWrapper mNativeWrapper;
    private Notifier mNotifier;
    private long mNotifyLongDispatched;
    private long mNotifyLongNextCheck;
    private long mNotifyLongScheduled;
    private long mOverriddenTimeout;
    private int mPlugType;
    private WindowManagerPolicy mPolicy;
    private final SparseArray<ProfilePowerState> mProfilePowerState;
    private boolean mProximityPositive;
    private boolean mRequestWaitForNegativeProximity;
    private boolean mSandmanScheduled;
    private boolean mSandmanSummoned;
    private boolean mScreenBrightnessBoostInProgress;
    public final float mScreenBrightnessDefault;
    public final float mScreenBrightnessDefaultVr;
    public final float mScreenBrightnessDim;
    public final float mScreenBrightnessDoze;
    public final float mScreenBrightnessMaximum;
    public final float mScreenBrightnessMaximumVr;
    public final float mScreenBrightnessMinimum;
    public final float mScreenBrightnessMinimumVr;
    private int mScreenBrightnessModeSetting;
    private float mScreenBrightnessOverrideFromWindowManager;
    private float mScreenBrightnessSettingDefault;
    private float mScreenBrightnessSettingMaximum;
    private float mScreenBrightnessSettingMinimum;
    private long mScreenOffTimeoutSetting;
    private SettingsObserver mSettingsObserver;
    private long mSleepTimeoutSetting;
    private boolean mStayOn;
    private int mStayOnWhilePluggedInSetting;
    private boolean mSupportsDoubleTapWakeConfig;
    private final ArrayList<SuspendBlocker> mSuspendBlockers;
    private boolean mSuspendWhenScreenOffDueToProximityConfig;
    private final SystemPropertiesWrapper mSystemProperties;
    private boolean mSystemReady;
    private boolean mTheaterModeEnabled;
    private final SparseArray<UidState> mUidState;
    private boolean mUidsChanged;
    private boolean mUidsChanging;
    private int mUserActivitySummary;
    private long mUserActivityTimeoutOverrideFromWindowManager;
    private int mUserId;
    private boolean mUserInactiveOverrideFromWindowManager;
    private final IVrStateCallbacks mVrStateCallbacks;
    private int mWakeLockSummary;
    private final SuspendBlocker mWakeLockSuspendBlocker;
    private final ArrayList<WakeLock> mWakeLocks;
    private boolean mWakeUpWhenPluggedOrUnpluggedConfig;
    private boolean mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig;
    private boolean mWakefulnessChanging;
    private int mWakefulnessRaw;
    private WirelessChargerDetector mWirelessChargerDetector;

    interface Clock {
        long uptimeMillis();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface HaltMode {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeAcquireSuspendBlocker(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean nativeForceSuspend();

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeInit();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeReleaseSuspendBlocker(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeSendPowerHint(int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeSetAutoSuspend(boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeSetFeature(int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeSetInteractive(boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeSetPowerBoost(int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean nativeSetPowerMode(int i, boolean z);

    static /* synthetic */ int access$2076(PowerManagerService x0, int x1) {
        int i = x0.mDirty | x1;
        x0.mDirty = i;
        return i;
    }

    private final class ForegroundProfileObserver extends SynchronousUserSwitchObserver {
        private ForegroundProfileObserver() {
        }

        public void onUserSwitching(int newUserId) throws RemoteException {
            synchronized (PowerManagerService.this.mLock) {
                PowerManagerService.this.mUserId = newUserId;
            }
        }

        public void onForegroundProfileSwitch(int newProfileId) throws RemoteException {
            long now = PowerManagerService.this.mClock.uptimeMillis();
            synchronized (PowerManagerService.this.mLock) {
                PowerManagerService.this.mForegroundProfile = newProfileId;
                PowerManagerService.this.maybeUpdateForegroundProfileLastActivityLocked(now);
            }
        }
    }

    private static final class ProfilePowerState {
        long mLastUserActivityTime;
        boolean mLockingNotified;
        long mScreenOffTimeout;
        final int mUserId;
        int mWakeLockSummary;

        public ProfilePowerState(int userId, long screenOffTimeout, long now) {
            this.mUserId = userId;
            this.mScreenOffTimeout = screenOffTimeout;
            this.mLastUserActivityTime = now;
        }
    }

    private final class Constants extends ContentObserver {
        private static final boolean DEFAULT_NO_CACHED_WAKE_LOCKS = true;
        private static final String KEY_NO_CACHED_WAKE_LOCKS = "no_cached_wake_locks";
        public boolean NO_CACHED_WAKE_LOCKS;
        private final KeyValueListParser mParser;
        private ContentResolver mResolver;

        public Constants(Handler handler) {
            super(handler);
            this.NO_CACHED_WAKE_LOCKS = true;
            this.mParser = new KeyValueListParser(',');
        }

        public void start(ContentResolver resolver) {
            this.mResolver = resolver;
            resolver.registerContentObserver(Settings.Global.getUriFor("power_manager_constants"), false, this);
            updateConstants();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            updateConstants();
        }

        private void updateConstants() {
            synchronized (PowerManagerService.this.mLock) {
                try {
                    this.mParser.setString(Settings.Global.getString(this.mResolver, "power_manager_constants"));
                } catch (IllegalArgumentException e) {
                    Slog.e(PowerManagerService.TAG, "Bad alarm manager settings", e);
                }
                this.NO_CACHED_WAKE_LOCKS = this.mParser.getBoolean(KEY_NO_CACHED_WAKE_LOCKS, true);
            }
        }

        void dump(PrintWriter pw) {
            pw.println("  Settings power_manager_constants:");
            pw.print("    ");
            pw.print(KEY_NO_CACHED_WAKE_LOCKS);
            pw.print("=");
            pw.println(this.NO_CACHED_WAKE_LOCKS);
        }

        void dumpProto(ProtoOutputStream proto) {
            long constantsToken = proto.start(1146756268033L);
            proto.write(1133871366145L, this.NO_CACHED_WAKE_LOCKS);
            proto.end(constantsToken);
        }
    }

    private void clearMegaPowerStatus(ContentResolver resolver) {
        Settings.System.putIntForUser(resolver, "mega_android_power_status", -1, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updateBackLightStateInternal(String backLightName, int state, int userHandle) {
        boolean result = false;
        ContentResolver cr = this.mContext.getContentResolver();
        synchronized (this.mLock) {
            String backupSettings = this.mLightSettings.mSettingBackUpMap.get(backLightName);
            if (state != 0) {
                if (state == 1) {
                    int backupValue = this.mLightSettings.getBackUpBrightnessValue(backupSettings, userHandle);
                    Slog.w(TAG, "update light state to on, backuped value: " + backupValue + ", for " + backLightName);
                    result = Settings.System.putIntForUser(cr, backLightName, backupValue, userHandle);
                    StringBuilder sb = new StringBuilder();
                    sb.append("update light state to on, result: ");
                    sb.append(result);
                    Slog.w(TAG, sb.toString());
                }
            } else {
                int currentValue = Settings.System.getIntForUser(cr, backLightName, 1, userHandle);
                Slog.w(TAG, "update light state to off, current brightness: " + currentValue + ", target: 0, for " + backLightName);
                this.mLightSettings.setBackUpBrightnessValue(backupSettings, currentValue, userHandle);
                result = Settings.System.putIntForUser(cr, backLightName, 0, userHandle);
                Slog.w(TAG, "update light state to off, result: " + result);
            }
        }
        return result;
    }

    public static class NativeWrapper {
        public void nativeInit(PowerManagerService service) {
            service.nativeInit();
        }

        public void nativeAcquireSuspendBlocker(String name) {
            PowerManagerService.nativeAcquireSuspendBlocker(name);
        }

        public void nativeReleaseSuspendBlocker(String name) {
            PowerManagerService.nativeReleaseSuspendBlocker(name);
        }

        public void nativeSetInteractive(boolean enable) {
            PowerManagerService.nativeSetInteractive(enable);
        }

        public void nativeSetAutoSuspend(boolean enable) {
            PowerManagerService.nativeSetAutoSuspend(enable);
        }

        public void nativeSendPowerHint(int hintId, int data) {
            PowerManagerService.nativeSendPowerHint(hintId, data);
        }

        public void nativeSetPowerBoost(int boost, int durationMs) {
            PowerManagerService.nativeSetPowerBoost(boost, durationMs);
        }

        public boolean nativeSetPowerMode(int mode, boolean enabled) {
            return PowerManagerService.nativeSetPowerMode(mode, enabled);
        }

        public void nativeSetFeature(int featureId, int data) {
            PowerManagerService.nativeSetFeature(featureId, data);
        }

        public boolean nativeForceSuspend() {
            return PowerManagerService.nativeForceSuspend();
        }
    }

    static class Injector {
        Injector() {
        }

        Notifier createNotifier(Looper looper, Context context, IBatteryStats batteryStats, SuspendBlocker suspendBlocker, WindowManagerPolicy policy) {
            return new Notifier(looper, context, batteryStats, suspendBlocker, policy);
        }

        SuspendBlocker createSuspendBlocker(PowerManagerService service, String name) {
            Objects.requireNonNull(service);
            SuspendBlockerImpl suspendBlockerImpl = service.new SuspendBlockerImpl(name);
            service.mSuspendBlockers.add(suspendBlockerImpl);
            return suspendBlockerImpl;
        }

        BatterySaverPolicy createBatterySaverPolicy(Object lock, Context context, BatterySavingStats batterySavingStats) {
            return new BatterySaverPolicy(lock, context, batterySavingStats);
        }

        BatterySaverController createBatterySaverController(Object lock, Context context, BatterySaverPolicy batterySaverPolicy, BatterySavingStats batterySavingStats) {
            return new BatterySaverController(lock, context, BackgroundThread.get().getLooper(), batterySaverPolicy, batterySavingStats);
        }

        BatterySaverStateMachine createBatterySaverStateMachine(Object lock, Context context, BatterySaverController batterySaverController) {
            return new BatterySaverStateMachine(lock, context, batterySaverController);
        }

        NativeWrapper createNativeWrapper() {
            return new NativeWrapper();
        }

        WirelessChargerDetector createWirelessChargerDetector(SensorManager sensorManager, SuspendBlocker suspendBlocker, Handler handler) {
            return new WirelessChargerDetector(sensorManager, suspendBlocker, handler);
        }

        AmbientDisplayConfiguration createAmbientDisplayConfiguration(Context context) {
            return new AmbientDisplayConfiguration(context);
        }

        AmbientDisplaySuppressionController createAmbientDisplaySuppressionController(Context context) {
            return new AmbientDisplaySuppressionController(context);
        }

        InattentiveSleepWarningController createInattentiveSleepWarningController() {
            return new InattentiveSleepWarningController();
        }

        public SystemPropertiesWrapper createSystemPropertiesWrapper() {
            return new SystemPropertiesWrapper() { // from class: com.android.server.power.PowerManagerService.Injector.1
                @Override // com.android.server.power.SystemPropertiesWrapper
                public String get(String key, String def) {
                    return SystemProperties.get(key, def);
                }

                @Override // com.android.server.power.SystemPropertiesWrapper
                public void set(String key, String val) {
                    SystemProperties.set(key, val);
                }
            };
        }

        Clock createClock() {
            return new Clock() { // from class: com.android.server.power.-$$Lambda$mJs78oyYBMDErllGe4sx87OZns8
                @Override // com.android.server.power.PowerManagerService.Clock
                public final long uptimeMillis() {
                    return SystemClock.uptimeMillis();
                }
            };
        }

        Handler createHandler(Looper looper, Handler.Callback callback) {
            return new Handler(looper, callback, true);
        }

        void invalidateIsInteractiveCaches() {
            PowerManager.invalidateIsInteractiveCaches();
        }
    }

    public PowerManagerService(Context context) {
        this(context, new Injector());
    }

    PowerManagerService(Context context, Injector injector) {
        super(context);
        this.mLock = LockGuard.installNewLock(1);
        this.mSuspendBlockers = new ArrayList<>();
        this.mWakeLocks = new ArrayList<>();
        this.mDisplayPowerRequest = new DisplayManagerInternal.DisplayPowerRequest();
        this.mDockState = 0;
        this.mMaximumScreenOffTimeoutFromDeviceAdmin = JobStatus.NO_LATEST_RUNTIME;
        this.mScreenBrightnessOverrideFromWindowManager = Float.NaN;
        this.mOverriddenTimeout = -1L;
        this.mUserActivityTimeoutOverrideFromWindowManager = -1L;
        this.mDozeScreenStateOverrideFromDreamManager = 0;
        this.mDozeScreenBrightnessOverrideFromDreamManager = -1;
        this.mDozeScreenBrightnessOverrideFromDreamManagerFloat = Float.NaN;
        this.mLastWarningAboutUserActivityPermission = Long.MIN_VALUE;
        this.mDeviceIdleWhitelist = new int[0];
        this.mDeviceIdleTempWhitelist = new int[0];
        this.mUidState = new SparseArray<>();
        this.mProfilePowerState = new SparseArray<>();
        this.mDisplayPowerCallbacks = new DisplayManagerInternal.DisplayPowerCallbacks() { // from class: com.android.server.power.PowerManagerService.1
            private int mDisplayState = 0;

            public void onStateChanged() {
                synchronized (PowerManagerService.this.mLock) {
                    PowerManagerService.access$2076(PowerManagerService.this, 8);
                    PowerManagerService.this.updatePowerStateLocked();
                }
            }

            public void onProximityPositive() {
                synchronized (PowerManagerService.this.mLock) {
                    PowerManagerService.this.mProximityPositive = true;
                    PowerManagerService.access$2076(PowerManagerService.this, 512);
                    PowerManagerService.this.updatePowerStateLocked();
                }
            }

            public void onProximityNegative() {
                synchronized (PowerManagerService.this.mLock) {
                    PowerManagerService.this.mProximityPositive = false;
                    PowerManagerService.access$2076(PowerManagerService.this, 512);
                    PowerManagerService.this.userActivityNoUpdateLocked(PowerManagerService.this.mClock.uptimeMillis(), 0, 0, 1000);
                    PowerManagerService.this.updatePowerStateLocked();
                }
            }

            public void onDisplayStateChange(int state) {
                synchronized (PowerManagerService.this.mLock) {
                    if (this.mDisplayState != state) {
                        this.mDisplayState = state;
                        PowerManagerService.this.setPowerModeInternal(9, !Display.isActiveState(state));
                        if (state == 1) {
                            if (!PowerManagerService.this.mDecoupleHalInteractiveModeFromDisplayConfig) {
                                PowerManagerService.this.setHalInteractiveModeLocked(false);
                            }
                            if (!PowerManagerService.this.mDecoupleHalAutoSuspendModeFromDisplayConfig) {
                                PowerManagerService.this.setHalAutoSuspendModeLocked(true);
                            }
                        } else {
                            if (!PowerManagerService.this.mDecoupleHalAutoSuspendModeFromDisplayConfig) {
                                PowerManagerService.this.setHalAutoSuspendModeLocked(false);
                            }
                            if (!PowerManagerService.this.mDecoupleHalInteractiveModeFromDisplayConfig) {
                                PowerManagerService.this.setHalInteractiveModeLocked(true);
                            }
                        }
                    }
                }
            }

            public void acquireSuspendBlocker() {
                PowerManagerService.this.mDisplaySuspendBlocker.acquire();
            }

            public void releaseSuspendBlocker() {
                PowerManagerService.this.mDisplaySuspendBlocker.release();
            }

            public String toString() {
                String str;
                synchronized (this) {
                    str = "state=" + Display.stateToString(this.mDisplayState);
                }
                return str;
            }
        };
        this.mVrStateCallbacks = new IVrStateCallbacks.Stub() { // from class: com.android.server.power.PowerManagerService.4
            public void onVrStateChanged(boolean z) {
                PowerManagerService.this.powerHintInternal(7, z ? 1 : 0);
                synchronized (PowerManagerService.this.mLock) {
                    if (PowerManagerService.this.mIsVrModeEnabled != z) {
                        PowerManagerService.this.setVrModeEnabled(z);
                        PowerManagerService.access$2076(PowerManagerService.this, 8192);
                        PowerManagerService.this.updatePowerStateLocked();
                    }
                }
            }
        };
        this.mContext = context;
        this.mBinderService = new BinderService();
        this.mLocalService = new LocalService();
        this.mNativeWrapper = injector.createNativeWrapper();
        this.mSystemProperties = injector.createSystemPropertiesWrapper();
        this.mClock = injector.createClock();
        this.mInjector = injector;
        ServiceThread serviceThread = new ServiceThread(TAG, -4, false);
        this.mHandlerThread = serviceThread;
        serviceThread.start();
        this.mHandler = injector.createHandler(this.mHandlerThread.getLooper(), new PowerManagerHandlerCallback());
        this.mConstants = new Constants(this.mHandler);
        this.mBackLightConfig = new BackLightConfig();
        this.mLightSettings = new BackLightSettings(this.mContext, this.mHandler, this.mLock, this.mBackLightConfig);
        this.mAutoBackLightController = new AutoBackLightController(this.mHandler);
        this.mAmbientDisplayConfiguration = this.mInjector.createAmbientDisplayConfiguration(context);
        this.mAmbientDisplaySuppressionController = this.mInjector.createAmbientDisplaySuppressionController(context);
        this.mAttentionDetector = new AttentionDetector(new Runnable() { // from class: com.android.server.power.-$$Lambda$PowerManagerService$FUW_os-Z9SregUE_DR9vDwaRuXo
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onUserAttention();
            }
        }, this.mLock);
        BatterySavingStats batterySavingStats = new BatterySavingStats(this.mLock);
        this.mBatterySavingStats = batterySavingStats;
        BatterySaverPolicy batterySaverPolicyCreateBatterySaverPolicy = this.mInjector.createBatterySaverPolicy(this.mLock, this.mContext, batterySavingStats);
        this.mBatterySaverPolicy = batterySaverPolicyCreateBatterySaverPolicy;
        BatterySaverController batterySaverControllerCreateBatterySaverController = this.mInjector.createBatterySaverController(this.mLock, this.mContext, batterySaverPolicyCreateBatterySaverPolicy, this.mBatterySavingStats);
        this.mBatterySaverController = batterySaverControllerCreateBatterySaverController;
        this.mBatterySaverStateMachine = this.mInjector.createBatterySaverStateMachine(this.mLock, this.mContext, batterySaverControllerCreateBatterySaverController);
        this.mInattentiveSleepWarningOverlayController = this.mInjector.createInattentiveSleepWarningController();
        float min = this.mContext.getResources().getFloat(R.dimen.config_letterboxDefaultMinAspectRatioForUnresizableApps);
        float max = this.mContext.getResources().getFloat(R.dimen.config_letterboxBookModePositionMultiplier);
        float def = this.mContext.getResources().getFloat(R.dimen.config_inCallNotificationVolume);
        float doze = this.mContext.getResources().getFloat(R.dimen.config_hoverTapSlop);
        float dim = this.mContext.getResources().getFloat(R.dimen.config_horizontalScrollFactor);
        if (min == INVALID_BRIGHTNESS_IN_CONFIG || max == INVALID_BRIGHTNESS_IN_CONFIG || def == INVALID_BRIGHTNESS_IN_CONFIG) {
            this.mScreenBrightnessMinimum = BrightnessSynchronizer.brightnessIntToFloat(this.mContext.getResources().getInteger(R.integer.config_letterboxDefaultPositionForVerticalReachability), 1, 255, 0.0f, 1.0f);
            this.mScreenBrightnessMaximum = BrightnessSynchronizer.brightnessIntToFloat(this.mContext.getResources().getInteger(R.integer.config_letterboxDefaultPositionForTabletopModeReachability), 1, 255, 0.0f, 1.0f);
            this.mScreenBrightnessDefault = BrightnessSynchronizer.brightnessIntToFloat(this.mContext.getResources().getInteger(R.integer.config_letterboxDefaultPositionForHorizontalReachability), 1, 255, 0.0f, 1.0f);
        } else {
            this.mScreenBrightnessMinimum = min;
            this.mScreenBrightnessMaximum = max;
            this.mScreenBrightnessDefault = def;
        }
        if (doze == INVALID_BRIGHTNESS_IN_CONFIG) {
            this.mScreenBrightnessDoze = BrightnessSynchronizer.brightnessIntToFloat(this.mContext.getResources().getInteger(R.integer.button_pressed_animation_delay), 1, 255, 0.0f, 1.0f);
        } else {
            this.mScreenBrightnessDoze = doze;
        }
        if (dim == INVALID_BRIGHTNESS_IN_CONFIG) {
            this.mScreenBrightnessDim = BrightnessSynchronizer.brightnessIntToFloat(this.mContext.getResources().getInteger(R.integer.config_keyguardDrawnTimeout), 1, 255, 0.0f, 1.0f);
        } else {
            this.mScreenBrightnessDim = dim;
        }
        float vrMin = this.mContext.getResources().getFloat(R.dimen.config_letterboxBackgroundWallpaperBlurRadius);
        float vrMax = this.mContext.getResources().getFloat(R.dimen.config_letterboxBackgroundWallaperDarkScrimAlpha);
        float vrDef = this.mContext.getResources().getFloat(R.dimen.config_keyboardHapticFeedbackFixedAmplitude);
        if (vrMin == INVALID_BRIGHTNESS_IN_CONFIG || vrMax == INVALID_BRIGHTNESS_IN_CONFIG || vrDef == INVALID_BRIGHTNESS_IN_CONFIG) {
            this.mScreenBrightnessMinimumVr = BrightnessSynchronizer.brightnessIntToFloat(this.mContext.getResources().getInteger(R.integer.config_letterboxDefaultPositionForBookModeReachability), 1, 255, 0.0f, 1.0f);
            this.mScreenBrightnessMaximumVr = BrightnessSynchronizer.brightnessIntToFloat(this.mContext.getResources().getInteger(R.integer.config_letterboxBackgroundType), 1, 255, 0.0f, 1.0f);
            this.mScreenBrightnessDefaultVr = BrightnessSynchronizer.brightnessIntToFloat(this.mContext.getResources().getInteger(R.integer.config_letterboxActivityCornersRadius), 1, 255, 0.0f, 1.0f);
        } else {
            this.mScreenBrightnessMinimumVr = vrMin;
            this.mScreenBrightnessMaximumVr = vrMax;
            this.mScreenBrightnessDefaultVr = vrDef;
        }
        synchronized (this.mLock) {
            this.mWakeLockSuspendBlocker = this.mInjector.createSuspendBlocker(this, "PowerManagerService.WakeLocks");
            SuspendBlocker suspendBlockerCreateSuspendBlocker = this.mInjector.createSuspendBlocker(this, "PowerManagerService.Display");
            this.mDisplaySuspendBlocker = suspendBlockerCreateSuspendBlocker;
            if (suspendBlockerCreateSuspendBlocker != null) {
                suspendBlockerCreateSuspendBlocker.acquire();
                this.mHoldingDisplaySuspendBlocker = true;
            }
            this.mHalAutoSuspendModeEnabled = false;
            this.mHalInteractiveModeEnabled = true;
            this.mWakefulnessRaw = 1;
            sQuiescent = this.mSystemProperties.get(SYSTEM_PROPERTY_QUIESCENT, "0").equals(SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION) || ((Boolean) InitProperties.userspace_reboot_in_progress().orElse(false)).booleanValue();
            this.mDisableAutoSuspend = this.mSystemProperties.get(SYSTEM_PROPERTY_DISABLE_AUTOSUSPEND, SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION).equals(SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
            this.mNativeWrapper.nativeInit(this);
            this.mNativeWrapper.nativeSetAutoSuspend(false);
            this.mNativeWrapper.nativeSetInteractive(true);
            this.mNativeWrapper.nativeSetFeature(1, 0);
            this.mInjector.invalidateIsInteractiveCaches();
        }
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("power", this.mBinderService, false, 9);
        publishLocalService(PowerManagerInternal.class, this.mLocalService);
        Watchdog.getInstance().addMonitor(this);
        Watchdog.getInstance().addThread(this.mHandler);
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        synchronized (this.mLock) {
            try {
                if (phase == 600) {
                    incrementBootCount();
                } else if (phase == 1000) {
                    long now = this.mClock.uptimeMillis();
                    this.mBootCompleted = true;
                    this.mDirty |= 16;
                    this.mBatterySaverStateMachine.onBootCompleted();
                    userActivityNoUpdateLocked(now, 0, 0, 1000);
                    if (sQuiescent) {
                        goToSleepNoUpdateLocked(this.mClock.uptimeMillis(), 10, 1, 1000);
                    }
                    updatePowerStateLocked();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void systemReady(IAppOpsService appOps) {
        synchronized (this.mLock) {
            this.mSystemReady = true;
            this.mAppOps = appOps;
            this.mDreamManager = (DreamManagerInternal) getLocalService(DreamManagerInternal.class);
            this.mDisplayManagerInternal = (DisplayManagerInternal) getLocalService(DisplayManagerInternal.class);
            this.mPolicy = (WindowManagerPolicy) getLocalService(WindowManagerPolicy.class);
            this.mBatteryManagerInternal = (BatteryManagerInternal) getLocalService(BatteryManagerInternal.class);
            this.mAttentionDetector.systemReady(this.mContext);
            PowerManager pm = (PowerManager) this.mContext.getSystemService("power");
            this.mScreenBrightnessSettingMinimum = pm.getBrightnessConstraint(0);
            this.mScreenBrightnessSettingMaximum = pm.getBrightnessConstraint(1);
            this.mScreenBrightnessSettingDefault = pm.getBrightnessConstraint(2);
            SensorManager sensorManager = new SystemSensorManager(this.mContext, this.mHandler.getLooper());
            this.mBatteryStats = BatteryStatsService.getService();
            this.mNotifier = this.mInjector.createNotifier(Looper.getMainLooper(), this.mContext, this.mBatteryStats, this.mInjector.createSuspendBlocker(this, "PowerManagerService.Broadcasts"), this.mPolicy);
            this.mWirelessChargerDetector = this.mInjector.createWirelessChargerDetector(sensorManager, this.mInjector.createSuspendBlocker(this, "PowerManagerService.WirelessChargerDetector"), this.mHandler);
            this.mSettingsObserver = new SettingsObserver(this.mHandler);
            LightsManager lightsManager = (LightsManager) getLocalService(LightsManager.class);
            this.mLightsManager = lightsManager;
            this.mAttentionLight = lightsManager.getLight(5);
            this.mDisplayManagerInternal.initPowerManagement(this.mDisplayPowerCallbacks, this.mHandler, sensorManager);
            try {
                ForegroundProfileObserver observer = new ForegroundProfileObserver();
                ActivityManager.getService().registerUserSwitchObserver(observer, TAG);
            } catch (RemoteException e) {
            }
            readConfigurationLocked();
            updateSettingsLocked();
            this.mDirty |= 256;
            updatePowerStateLocked();
        }
        ContentResolver resolver = this.mContext.getContentResolver();
        this.mConstants.start(resolver);
        this.mBackLightConfig.start();
        this.mLightSettings.start(resolver, this.mBackLightConfig);
        this.mAutoBackLightController.start(resolver, this.mBackLightConfig, this.mLightSettings, this.mContext, this.mScreenBrightnessSettingDefault);
        clearMegaPowerStatus(resolver);
        this.mBatterySaverController.systemReady();
        this.mBatterySaverPolicy.systemReady();
        resolver.registerContentObserver(Settings.Secure.getUriFor("screensaver_enabled"), false, this.mSettingsObserver, -1);
        resolver.registerContentObserver(Settings.Secure.getUriFor("screensaver_activate_on_sleep"), false, this.mSettingsObserver, -1);
        resolver.registerContentObserver(Settings.Secure.getUriFor("screensaver_activate_on_dock"), false, this.mSettingsObserver, -1);
        resolver.registerContentObserver(Settings.System.getUriFor("screen_off_timeout"), false, this.mSettingsObserver, -1);
        resolver.registerContentObserver(Settings.Secure.getUriFor("sleep_timeout"), false, this.mSettingsObserver, -1);
        resolver.registerContentObserver(Settings.Secure.getUriFor("attentive_timeout"), false, this.mSettingsObserver, -1);
        resolver.registerContentObserver(Settings.Global.getUriFor("stay_on_while_plugged_in"), false, this.mSettingsObserver, -1);
        resolver.registerContentObserver(Settings.System.getUriFor("screen_auto_brightness_adj"), false, this.mSettingsObserver, -1);
        resolver.registerContentObserver(Settings.Global.getUriFor("theater_mode_on"), false, this.mSettingsObserver, -1);
        resolver.registerContentObserver(Settings.Secure.getUriFor("doze_always_on"), false, this.mSettingsObserver, -1);
        resolver.registerContentObserver(Settings.Secure.getUriFor("double_tap_to_wake"), false, this.mSettingsObserver, -1);
        resolver.registerContentObserver(Settings.Global.getUriFor("device_demo_mode"), false, this.mSettingsObserver, 0);
        IVrManager vrManager = IVrManager.Stub.asInterface(getBinderService("vrmanager"));
        if (vrManager != null) {
            try {
                vrManager.registerListener(this.mVrStateCallbacks);
            } catch (RemoteException e2) {
                Slog.e(TAG, "Failed to register VR mode state listener: " + e2);
            }
        }
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.BATTERY_CHANGED");
        filter.setPriority(1000);
        this.mContext.registerReceiver(new BatteryReceiver(), filter, null, this.mHandler);
        IntentFilter filter2 = new IntentFilter();
        filter2.addAction("android.intent.action.DREAMING_STARTED");
        filter2.addAction("android.intent.action.DREAMING_STOPPED");
        this.mContext.registerReceiver(new DreamReceiver(), filter2, null, this.mHandler);
        IntentFilter filter3 = new IntentFilter();
        filter3.addAction("android.intent.action.USER_SWITCHED");
        this.mContext.registerReceiver(new UserSwitchedReceiver(), filter3, null, this.mHandler);
        IntentFilter filter4 = new IntentFilter();
        filter4.addAction("android.intent.action.DOCK_EVENT");
        this.mContext.registerReceiver(new DockReceiver(), filter4, null, this.mHandler);
    }

    void readConfigurationLocked() {
        Resources resources = this.mContext.getResources();
        this.mDecoupleHalAutoSuspendModeFromDisplayConfig = resources.getBoolean(R.bool.config_cecQuerySadMpeg2_userConfigurable);
        this.mDecoupleHalInteractiveModeFromDisplayConfig = resources.getBoolean(R.bool.config_cecQuerySadOnebitaudioDisabled_allowed);
        this.mWakeUpWhenPluggedOrUnpluggedConfig = resources.getBoolean(R.bool.config_cecSetMenuLanguageEnabled_default);
        this.mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig = resources.getBoolean(R.bool.config_appCompatUserAppAspectRatioSettingsIsEnabled);
        this.mSuspendWhenScreenOffDueToProximityConfig = resources.getBoolean(R.bool.config_cecRcProfileTv_userConfigurable);
        this.mAttentiveTimeoutConfig = resources.getInteger(R.integer.config_audio_alarm_min_vol);
        this.mAttentiveWarningDurationConfig = resources.getInteger(R.integer.config_audio_notif_vol_default);
        this.mDreamsSupportedConfig = resources.getBoolean(R.bool.config_cecHdmiCecVersion14b_allowed);
        this.mDreamsEnabledByDefaultConfig = resources.getBoolean(R.bool.config_cecHdmiCecControlEnabled_default);
        this.mDreamsActivatedOnSleepByDefaultConfig = resources.getBoolean(R.bool.config_cecHdmiCecControlEnabled_allowed);
        this.mDreamsActivatedOnDockByDefaultConfig = resources.getBoolean(R.bool.config_cecHdmiCecControlDisabled_default);
        this.mDreamsEnabledOnBatteryConfig = resources.getBoolean(R.bool.config_cecHdmiCecEnabled_userConfigurable);
        this.mDreamsBatteryLevelMinimumWhenPoweredConfig = resources.getInteger(R.integer.config_defaultRefreshRate);
        this.mDreamsBatteryLevelMinimumWhenNotPoweredConfig = resources.getInteger(R.integer.config_defaultPreventScreenTimeoutForMillis);
        this.mDreamsBatteryLevelDrainCutoffConfig = resources.getInteger(R.integer.config_defaultPictureInPictureGravity);
        this.mDozeAfterScreenOff = resources.getBoolean(R.bool.config_carrier_vt_available);
        this.mMinimumScreenOffTimeoutConfig = resources.getInteger(R.integer.config_doubleTapPowerGestureMode);
        this.mMaximumScreenDimDurationConfig = resources.getInteger(R.integer.config_dockedStackDividerSnapMode);
        this.mMaximumScreenDimRatioConfig = resources.getFraction(R.fraction.config_maximumScreenDimRatio, 1, 1);
        this.mSupportsDoubleTapWakeConfig = resources.getBoolean(R.bool.config_cecRcProfileSourceTopMenuNotHandled_allowed);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v36, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v37 */
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
    private void updateSettingsLocked() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        this.mDreamsEnabledSetting = Settings.Secure.getIntForUser(contentResolver, "screensaver_enabled", this.mDreamsEnabledByDefaultConfig ? 1 : 0, -2) != 0;
        this.mDreamsActivateOnSleepSetting = Settings.Secure.getIntForUser(contentResolver, "screensaver_activate_on_sleep", this.mDreamsActivatedOnSleepByDefaultConfig ? 1 : 0, -2) != 0;
        this.mDreamsActivateOnDockSetting = Settings.Secure.getIntForUser(contentResolver, "screensaver_activate_on_dock", this.mDreamsActivatedOnDockByDefaultConfig ? 1 : 0, -2) != 0;
        this.mScreenOffTimeoutSetting = Settings.System.getIntForUser(contentResolver, "screen_off_timeout", 15000, -2);
        this.mSleepTimeoutSetting = Settings.Secure.getIntForUser(contentResolver, "sleep_timeout", -1, -2);
        this.mAttentiveTimeoutSetting = Settings.Secure.getIntForUser(contentResolver, "attentive_timeout", this.mAttentiveTimeoutConfig, -2);
        this.mStayOnWhilePluggedInSetting = Settings.Global.getInt(contentResolver, "stay_on_while_plugged_in", 1);
        this.mTheaterModeEnabled = Settings.Global.getInt(this.mContext.getContentResolver(), "theater_mode_on", 0) == 1;
        this.mAlwaysOnEnabled = this.mAmbientDisplayConfiguration.alwaysOnEnabled(-2);
        if (this.mSupportsDoubleTapWakeConfig) {
            ?? r1 = Settings.Secure.getIntForUser(contentResolver, "double_tap_to_wake", 0, -2) != 0 ? 1 : 0;
            if (r1 != this.mDoubleTapWakeEnabled) {
                this.mDoubleTapWakeEnabled = r1;
                this.mNativeWrapper.nativeSetFeature(1, r1);
            }
        }
        String str = UserManager.isDeviceInDemoMode(this.mContext) ? SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION : "0";
        if (!str.equals(this.mSystemProperties.get(SYSTEM_PROPERTY_RETAIL_DEMO_ENABLED, null))) {
            this.mSystemProperties.set(SYSTEM_PROPERTY_RETAIL_DEMO_ENABLED, str);
        }
        this.mScreenBrightnessModeSetting = Settings.System.getIntForUser(contentResolver, "screen_brightness_mode", 0, -2);
        this.mDirty |= 32;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSettingsChangedLocked() {
        updateSettingsLocked();
        updatePowerStateLocked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void acquireWakeLockInternal(IBinder lock, int flags, String tag, String packageName, WorkSource ws, String historyTag, int uid, int pid) throws RemoteException {
        Object obj;
        UidState state;
        WakeLock wakeLock;
        boolean notifyAcquire;
        Object obj2 = this.mLock;
        synchronized (obj2) {
            try {
                try {
                    int index = findWakeLockIndexLocked(lock);
                    if (index < 0) {
                        UidState state2 = this.mUidState.get(uid);
                        if (state2 != null) {
                            state = state2;
                        } else {
                            UidState state3 = new UidState(uid);
                            state3.mProcState = 20;
                            this.mUidState.put(uid, state3);
                            state = state3;
                        }
                        state.mNumWakeLocks++;
                        obj = obj2;
                        try {
                            wakeLock = new WakeLock(lock, flags, tag, packageName, ws, historyTag, uid, pid, state);
                            try {
                                lock.linkToDeath(wakeLock, 0);
                                this.mWakeLocks.add(wakeLock);
                                setWakeLockDisabledStateLocked(wakeLock);
                                notifyAcquire = true;
                            } catch (RemoteException e) {
                                throw new IllegalArgumentException("Wake lock is already dead.");
                            }
                        } catch (Throwable th) {
                            ex = th;
                            throw ex;
                        }
                    } else {
                        WakeLock wakeLock2 = this.mWakeLocks.get(index);
                        if (!wakeLock2.hasSameProperties(flags, tag, ws, uid, pid)) {
                            notifyWakeLockChangingLocked(wakeLock2, flags, tag, packageName, uid, pid, ws, historyTag);
                            wakeLock2.updateProperties(flags, tag, packageName, ws, historyTag, uid, pid);
                        }
                        notifyAcquire = false;
                        obj = obj2;
                        wakeLock = wakeLock2;
                    }
                    applyWakeLockFlagsOnAcquireLocked(wakeLock, uid);
                    this.mDirty |= 1;
                    updatePowerStateLocked();
                    if (notifyAcquire) {
                        notifyWakeLockAcquiredLocked(wakeLock);
                    }
                } catch (Throwable th2) {
                    ex = th2;
                }
            } catch (Throwable th3) {
                ex = th3;
                obj = obj2;
            }
        }
    }

    private static boolean isScreenLock(WakeLock wakeLock) {
        int i = wakeLock.mFlags & 65535;
        if (i == 6 || i == 10 || i == 26) {
            return true;
        }
        return false;
    }

    private static WorkSource.WorkChain getFirstNonEmptyWorkChain(WorkSource workSource) {
        if (workSource.getWorkChains() == null) {
            return null;
        }
        for (WorkSource.WorkChain workChain : workSource.getWorkChains()) {
            if (workChain.getSize() > 0) {
                return workChain;
            }
        }
        return null;
    }

    private void applyWakeLockFlagsOnAcquireLocked(WakeLock wakeLock, int uid) throws Throwable {
        String opPackageName;
        int opUid;
        if ((wakeLock.mFlags & AudioFormat.EVRC) != 0 && isScreenLock(wakeLock)) {
            if (wakeLock.mWorkSource != null && !wakeLock.mWorkSource.isEmpty()) {
                WorkSource workSource = wakeLock.mWorkSource;
                WorkSource.WorkChain workChain = getFirstNonEmptyWorkChain(workSource);
                if (workChain != null) {
                    opPackageName = workChain.getAttributionTag();
                    opUid = workChain.getAttributionUid();
                } else {
                    String opPackageName2 = workSource.getPackageName(0) != null ? workSource.getPackageName(0) : wakeLock.mPackageName;
                    String str = opPackageName2;
                    opUid = workSource.getUid(0);
                    opPackageName = str;
                }
            } else {
                opPackageName = wakeLock.mPackageName;
                opUid = wakeLock.mOwnerUid;
            }
            wakeUpNoUpdateLocked(this.mClock.uptimeMillis(), 2, wakeLock.mTag, opUid, opPackageName, opUid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseWakeLockInternal(IBinder lock, int flags) {
        synchronized (this.mLock) {
            int index = findWakeLockIndexLocked(lock);
            if (index < 0) {
                return;
            }
            WakeLock wakeLock = this.mWakeLocks.get(index);
            if ((flags & 1) != 0) {
                this.mRequestWaitForNegativeProximity = true;
            }
            wakeLock.mLock.unlinkToDeath(wakeLock, 0);
            removeWakeLockLocked(wakeLock, index);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWakeLockDeath(WakeLock wakeLock) {
        synchronized (this.mLock) {
            int index = this.mWakeLocks.indexOf(wakeLock);
            if (index < 0) {
                return;
            }
            removeWakeLockLocked(wakeLock, index);
        }
    }

    private void removeWakeLockLocked(WakeLock wakeLock, int index) {
        this.mWakeLocks.remove(index);
        UidState state = wakeLock.mUidState;
        state.mNumWakeLocks--;
        if (state.mNumWakeLocks <= 0 && state.mProcState == 20) {
            this.mUidState.remove(state.mUid);
        }
        notifyWakeLockReleasedLocked(wakeLock);
        applyWakeLockFlagsOnReleaseLocked(wakeLock);
        this.mDirty |= 1;
        updatePowerStateLocked();
    }

    private void applyWakeLockFlagsOnReleaseLocked(WakeLock wakeLock) {
        if ((wakeLock.mFlags & AudioFormat.APTX) != 0 && isScreenLock(wakeLock)) {
            userActivityNoUpdateLocked(this.mClock.uptimeMillis(), 0, 1, wakeLock.mOwnerUid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWakeLockWorkSourceInternal(IBinder lock, WorkSource ws, String historyTag, int callingUid) throws Throwable {
        synchronized (this.mLock) {
            try {
                try {
                    int index = findWakeLockIndexLocked(lock);
                    try {
                        if (index >= 0) {
                            try {
                                WakeLock wakeLock = this.mWakeLocks.get(index);
                                if (!wakeLock.hasSameWorkSource(ws)) {
                                    notifyWakeLockChangingLocked(wakeLock, wakeLock.mFlags, wakeLock.mTag, wakeLock.mPackageName, wakeLock.mOwnerUid, wakeLock.mOwnerPid, ws, historyTag);
                                    wakeLock.mHistoryTag = historyTag;
                                    wakeLock.updateWorkSource(ws);
                                }
                                return;
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append("Wake lock not active: ");
                        try {
                            sb.append(lock);
                            sb.append(" from uid ");
                            sb.append(callingUid);
                            throw new IllegalArgumentException(sb.toString());
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        }
    }

    private int findWakeLockIndexLocked(IBinder lock) {
        int count = this.mWakeLocks.size();
        for (int i = 0; i < count; i++) {
            if (this.mWakeLocks.get(i).mLock == lock) {
                return i;
            }
        }
        return -1;
    }

    private void notifyWakeLockAcquiredLocked(WakeLock wakeLock) {
        if (this.mSystemReady && !wakeLock.mDisabled) {
            wakeLock.mNotifiedAcquired = true;
            this.mNotifier.onWakeLockAcquired(wakeLock.mFlags, wakeLock.mTag, wakeLock.mPackageName, wakeLock.mOwnerUid, wakeLock.mOwnerPid, wakeLock.mWorkSource, wakeLock.mHistoryTag);
            restartNofifyLongTimerLocked(wakeLock);
        }
    }

    private void enqueueNotifyLongMsgLocked(long time) {
        this.mNotifyLongScheduled = time;
        Message msg = this.mHandler.obtainMessage(4);
        msg.setAsynchronous(true);
        this.mHandler.sendMessageAtTime(msg, time);
    }

    private void restartNofifyLongTimerLocked(WakeLock wakeLock) {
        wakeLock.mAcquireTime = this.mClock.uptimeMillis();
        if ((wakeLock.mFlags & 65535) == 1 && this.mNotifyLongScheduled == 0) {
            enqueueNotifyLongMsgLocked(wakeLock.mAcquireTime + 60000);
        }
    }

    private void notifyWakeLockLongStartedLocked(WakeLock wakeLock) {
        if (this.mSystemReady && !wakeLock.mDisabled) {
            wakeLock.mNotifiedLong = true;
            this.mNotifier.onLongPartialWakeLockStart(wakeLock.mTag, wakeLock.mOwnerUid, wakeLock.mWorkSource, wakeLock.mHistoryTag);
        }
    }

    private void notifyWakeLockLongFinishedLocked(WakeLock wakeLock) {
        if (wakeLock.mNotifiedLong) {
            wakeLock.mNotifiedLong = false;
            this.mNotifier.onLongPartialWakeLockFinish(wakeLock.mTag, wakeLock.mOwnerUid, wakeLock.mWorkSource, wakeLock.mHistoryTag);
        }
    }

    private void notifyWakeLockChangingLocked(WakeLock wakeLock, int flags, String tag, String packageName, int uid, int pid, WorkSource ws, String historyTag) {
        if (this.mSystemReady && wakeLock.mNotifiedAcquired) {
            this.mNotifier.onWakeLockChanging(wakeLock.mFlags, wakeLock.mTag, wakeLock.mPackageName, wakeLock.mOwnerUid, wakeLock.mOwnerPid, wakeLock.mWorkSource, wakeLock.mHistoryTag, flags, tag, packageName, uid, pid, ws, historyTag);
            notifyWakeLockLongFinishedLocked(wakeLock);
            restartNofifyLongTimerLocked(wakeLock);
        }
    }

    private void notifyWakeLockReleasedLocked(WakeLock wakeLock) {
        if (this.mSystemReady && wakeLock.mNotifiedAcquired) {
            wakeLock.mNotifiedAcquired = false;
            wakeLock.mAcquireTime = 0L;
            this.mNotifier.onWakeLockReleased(wakeLock.mFlags, wakeLock.mTag, wakeLock.mPackageName, wakeLock.mOwnerUid, wakeLock.mOwnerPid, wakeLock.mWorkSource, wakeLock.mHistoryTag);
            notifyWakeLockLongFinishedLocked(wakeLock);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isWakeLockLevelSupportedInternal(int level) {
        synchronized (this.mLock) {
            boolean z = true;
            try {
                if (level != 1 && level != 6 && level != 10 && level != 26) {
                    if (level == 32) {
                        if (!this.mSystemReady || !this.mDisplayManagerInternal.isProximitySensorAvailable()) {
                            z = false;
                        }
                        return z;
                    }
                    if (level != 64 && level != 128) {
                        return false;
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void userActivityFromNative(long eventTime, int event, int flags) {
        userActivityInternal(eventTime, event, flags, 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void userActivityInternal(long eventTime, int event, int flags, int uid) {
        synchronized (this.mLock) {
            if (userActivityNoUpdateLocked(eventTime, event, flags, uid)) {
                updatePowerStateLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUserAttention() {
        synchronized (this.mLock) {
            if (userActivityNoUpdateLocked(this.mClock.uptimeMillis(), 4, 0, 1000)) {
                updatePowerStateLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean userActivityNoUpdateLocked(long eventTime, int event, int flags, int uid) {
        if (eventTime < this.mLastSleepTime || eventTime < this.mLastWakeTime || !this.mSystemReady) {
            return false;
        }
        Trace.traceBegin(131072L, "userActivity");
        try {
            if (eventTime > this.mLastInteractivePowerHintTime) {
                powerHintInternal(2, 0);
                this.mLastInteractivePowerHintTime = eventTime;
            }
            this.mNotifier.onUserActivity(event, uid);
            this.mAttentionDetector.onUserActivity(eventTime, event);
            if (this.mUserInactiveOverrideFromWindowManager) {
                this.mUserInactiveOverrideFromWindowManager = false;
                this.mOverriddenTimeout = -1L;
            }
            if (getWakefulnessLocked() != 0 && getWakefulnessLocked() != 3 && (flags & 2) == 0) {
                maybeUpdateForegroundProfileLastActivityLocked(eventTime);
                if ((flags & 1) != 0) {
                    if (eventTime > this.mLastUserActivityTimeNoChangeLights && eventTime > this.mLastUserActivityTime) {
                        this.mLastUserActivityTimeNoChangeLights = eventTime;
                        int i = this.mDirty | 4;
                        this.mDirty = i;
                        if (event == 1) {
                            this.mDirty = i | 4096;
                        }
                        return true;
                    }
                } else if (eventTime > this.mLastUserActivityTime) {
                    this.mLastUserActivityTime = eventTime;
                    int i2 = this.mDirty | 4;
                    this.mDirty = i2;
                    if (event == 1) {
                        this.mDirty = i2 | 4096;
                    }
                    return true;
                }
                return false;
            }
            return false;
        } finally {
            Trace.traceEnd(131072L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeUpdateForegroundProfileLastActivityLocked(long eventTime) {
        ProfilePowerState profile = this.mProfilePowerState.get(this.mForegroundProfile);
        if (profile != null && eventTime > profile.mLastUserActivityTime) {
            profile.mLastUserActivityTime = eventTime;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wakeUpInternal(long eventTime, int reason, String details, int uid, String opPackageName, int opUid) {
        synchronized (this.mLock) {
            if (wakeUpNoUpdateLocked(eventTime, reason, details, uid, opPackageName, opUid)) {
                updatePowerStateLocked();
            }
        }
    }

    private boolean wakeUpNoUpdateLocked(long eventTime, int reason, String details, int reasonUid, String opPackageName, int opUid) throws Throwable {
        if (eventTime < this.mLastSleepTime || getWakefulnessLocked() == 1 || this.mForceSuspendActive || !this.mSystemReady) {
            return false;
        }
        Trace.asyncTraceBegin(131072L, TRACE_SCREEN_ON, 0);
        Trace.traceBegin(131072L, "wakeUp");
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("Waking up from ");
            sb.append(PowerManagerInternal.wakefulnessToString(getWakefulnessLocked()));
            sb.append(" (uid=");
            try {
                sb.append(reasonUid);
                sb.append(", reason=");
                sb.append(PowerManager.wakeReasonToString(reason));
                sb.append(", details=");
                try {
                    sb.append(details);
                    sb.append(")...");
                    Slog.i(TAG, sb.toString());
                    this.mLastWakeTime = eventTime;
                    this.mLastWakeReason = reason;
                    setWakefulnessLocked(1, reason, eventTime);
                    this.mNotifier.onWakeUp(reason, details, reasonUid, opPackageName, opUid);
                    userActivityNoUpdateLocked(eventTime, 0, 0, reasonUid);
                    if (sQuiescent) {
                        this.mDirty |= 4096;
                    }
                    Trace.traceEnd(131072L);
                    return true;
                } catch (Throwable th) {
                    th = th;
                    Trace.traceEnd(131072L);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goToSleepInternal(long eventTime, int reason, int flags, int uid) {
        synchronized (this.mLock) {
            if (goToSleepNoUpdateLocked(eventTime, reason, flags, uid)) {
                updatePowerStateLocked();
            }
        }
    }

    private boolean goToSleepNoUpdateLocked(long eventTime, int reason, int flags, int uid) {
        if (eventTime < this.mLastWakeTime || getWakefulnessLocked() == 0 || getWakefulnessLocked() == 3 || !this.mSystemReady || !this.mBootCompleted) {
            return false;
        }
        Trace.traceBegin(131072L, "goToSleep");
        try {
            int reason2 = Math.min(10, Math.max(reason, 0));
            Slog.i(TAG, "Going to sleep due to " + PowerManager.sleepReasonToString(reason2) + " (uid " + uid + ")...");
            this.mLastSleepTime = eventTime;
            this.mLastSleepReason = reason2;
            this.mSandmanSummoned = true;
            this.mDozeStartInProgress = true;
            setWakefulnessLocked(3, reason2, eventTime);
            int numWakeLocksCleared = 0;
            int numWakeLocks = this.mWakeLocks.size();
            for (int i = 0; i < numWakeLocks; i++) {
                WakeLock wakeLock = this.mWakeLocks.get(i);
                int i2 = wakeLock.mFlags & 65535;
                if (i2 == 6 || i2 == 10 || i2 == 26) {
                    numWakeLocksCleared++;
                }
            }
            EventLogTags.writePowerSleepRequested(numWakeLocksCleared);
            if ((flags & 1) != 0) {
                reallyGoToSleepNoUpdateLocked(eventTime, uid);
            }
            return true;
        } finally {
            Trace.traceEnd(131072L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void napInternal(long eventTime, int uid) {
        synchronized (this.mLock) {
            if (napNoUpdateLocked(eventTime, uid)) {
                updatePowerStateLocked();
            }
        }
    }

    private boolean napNoUpdateLocked(long eventTime, int uid) {
        if (eventTime < this.mLastWakeTime || getWakefulnessLocked() != 1 || !this.mBootCompleted || !this.mSystemReady) {
            return false;
        }
        Trace.traceBegin(131072L, "nap");
        try {
            Slog.i(TAG, "Nap time (uid " + uid + ")...");
            this.mSandmanSummoned = true;
            setWakefulnessLocked(2, 0, eventTime);
            return true;
        } finally {
            Trace.traceEnd(131072L);
        }
    }

    private boolean reallyGoToSleepNoUpdateLocked(long eventTime, int uid) {
        if (eventTime < this.mLastWakeTime || getWakefulnessLocked() == 0 || !this.mBootCompleted || !this.mSystemReady) {
            return false;
        }
        Trace.traceBegin(131072L, "reallyGoToSleep");
        try {
            Slog.i(TAG, "Sleeping (uid " + uid + ")...");
            setWakefulnessLocked(0, 2, eventTime);
            return true;
        } finally {
            Trace.traceEnd(131072L);
        }
    }

    void setWakefulnessLocked(int wakefulness, int reason, long eventTime) {
        if (getWakefulnessLocked() != wakefulness) {
            this.mInjector.invalidateIsInteractiveCaches();
            this.mWakefulnessRaw = wakefulness;
            this.mWakefulnessChanging = true;
            this.mDirty |= 2;
            this.mDozeStartInProgress = (getWakefulnessLocked() == 3) & this.mDozeStartInProgress;
            Notifier notifier = this.mNotifier;
            if (notifier != null) {
                notifier.onWakefulnessChangeStarted(wakefulness, reason, eventTime);
            }
            this.mAttentionDetector.onWakefulnessChangeStarted(wakefulness);
        }
    }

    int getWakefulnessLocked() {
        return this.mWakefulnessRaw;
    }

    private void logSleepTimeoutRecapturedLocked() {
        long now = this.mClock.uptimeMillis();
        long savedWakeTimeMs = this.mOverriddenTimeout - now;
        if (savedWakeTimeMs >= 0) {
            EventLogTags.writePowerSoftSleepRequested(savedWakeTimeMs);
            this.mOverriddenTimeout = -1L;
        }
    }

    private void finishWakefulnessChangeIfNeededLocked() {
        if (this.mWakefulnessChanging && this.mDisplayReady) {
            if (getWakefulnessLocked() == 3 && (this.mWakeLockSummary & 64) == 0) {
                return;
            }
            this.mDozeStartInProgress = false;
            if (getWakefulnessLocked() == 3 || getWakefulnessLocked() == 0) {
                logSleepTimeoutRecapturedLocked();
            }
            if (getWakefulnessLocked() == 1) {
                Trace.asyncTraceEnd(131072L, TRACE_SCREEN_ON, 0);
                int latencyMs = (int) (this.mClock.uptimeMillis() - this.mLastWakeTime);
                if (latencyMs >= 200) {
                    Slog.w(TAG, "Screen on took " + latencyMs + " ms");
                }
            }
            this.mWakefulnessChanging = false;
            this.mNotifier.onWakefulnessChangeFinished();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePowerStateLocked() {
        int dirtyPhase1;
        if (!this.mSystemReady || this.mDirty == 0) {
            return;
        }
        if (!Thread.holdsLock(this.mLock)) {
            Slog.wtf(TAG, "Power manager lock was not held when calling updatePowerStateLocked");
        }
        Trace.traceBegin(131072L, "updatePowerState");
        try {
            updateIsPoweredLocked(this.mDirty);
            updateStayOnLocked(this.mDirty);
            updateScreenBrightnessBoostLocked(this.mDirty);
            long now = this.mClock.uptimeMillis();
            int dirtyPhase2 = 0;
            do {
                dirtyPhase1 = this.mDirty;
                dirtyPhase2 |= dirtyPhase1;
                this.mDirty = 0;
                updateWakeLockSummaryLocked(dirtyPhase1);
                updateUserActivitySummaryLocked(now, dirtyPhase1);
                updateAttentiveStateLocked(now, dirtyPhase1);
            } while (updateWakefulnessLocked(dirtyPhase1));
            updateProfilesLocked(now);
            boolean displayBecameReady = updateDisplayPowerStateLocked(dirtyPhase2);
            updateDreamLocked(dirtyPhase2, displayBecameReady);
            finishWakefulnessChangeIfNeededLocked();
            updateSuspendBlockerLocked();
        } finally {
            Trace.traceEnd(131072L);
        }
    }

    private void updateProfilesLocked(long now) {
        int numProfiles = this.mProfilePowerState.size();
        for (int i = 0; i < numProfiles; i++) {
            ProfilePowerState profile = this.mProfilePowerState.valueAt(i);
            if (isProfileBeingKeptAwakeLocked(profile, now)) {
                profile.mLockingNotified = false;
            } else if (!profile.mLockingNotified) {
                profile.mLockingNotified = true;
                this.mNotifier.onProfileTimeout(profile.mUserId);
            }
        }
    }

    private boolean isProfileBeingKeptAwakeLocked(ProfilePowerState profile, long now) {
        return profile.mLastUserActivityTime + profile.mScreenOffTimeout > now || (profile.mWakeLockSummary & 32) != 0 || (this.mProximityPositive && (profile.mWakeLockSummary & 16) != 0);
    }

    private void updateIsPoweredLocked(int dirty) throws Throwable {
        if ((dirty & 256) != 0) {
            boolean wasPowered = this.mIsPowered;
            int oldPlugType = this.mPlugType;
            boolean z = this.mBatteryLevelLow;
            this.mIsPowered = this.mBatteryManagerInternal.isPowered(7);
            this.mPlugType = this.mBatteryManagerInternal.getPlugType();
            this.mBatteryLevel = this.mBatteryManagerInternal.getBatteryLevel();
            this.mBatteryLevelLow = this.mBatteryManagerInternal.getBatteryLevelLow();
            if (wasPowered != this.mIsPowered || oldPlugType != this.mPlugType) {
                this.mDirty |= 64;
                boolean dockedOnWirelessCharger = this.mWirelessChargerDetector.update(this.mIsPowered, this.mPlugType);
                long now = this.mClock.uptimeMillis();
                if (shouldWakeUpWhenPluggedOrUnpluggedLocked(wasPowered, oldPlugType, dockedOnWirelessCharger)) {
                    wakeUpNoUpdateLocked(now, 3, "android.server.power:PLUGGED:" + this.mIsPowered, 1000, this.mContext.getOpPackageName(), 1000);
                }
                userActivityNoUpdateLocked(now, 0, 0, 1000);
                if (this.mBootCompleted) {
                    if (this.mIsPowered && !BatteryManager.isPlugWired(oldPlugType) && BatteryManager.isPlugWired(this.mPlugType)) {
                        this.mNotifier.onWiredChargingStarted(this.mUserId);
                    } else if (dockedOnWirelessCharger) {
                        this.mNotifier.onWirelessChargingStarted(this.mBatteryLevel, this.mUserId);
                    }
                }
            }
            this.mBatterySaverStateMachine.setBatteryStatus(this.mIsPowered, this.mBatteryLevel, this.mBatteryLevelLow);
        }
    }

    private boolean shouldWakeUpWhenPluggedOrUnpluggedLocked(boolean wasPowered, int oldPlugType, boolean dockedOnWirelessCharger) {
        if (!this.mWakeUpWhenPluggedOrUnpluggedConfig) {
            return false;
        }
        if (wasPowered && !this.mIsPowered && oldPlugType == 4) {
            return false;
        }
        if (!wasPowered && this.mIsPowered && this.mPlugType == 4 && !dockedOnWirelessCharger) {
            return false;
        }
        if (this.mIsPowered && getWakefulnessLocked() == 2) {
            return false;
        }
        if (!this.mTheaterModeEnabled || this.mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig) {
            return (this.mAlwaysOnEnabled && getWakefulnessLocked() == 3) ? false : true;
        }
        return false;
    }

    private void updateStayOnLocked(int dirty) {
        if ((dirty & 288) != 0) {
            boolean wasStayOn = this.mStayOn;
            if (this.mStayOnWhilePluggedInSetting != 0 && !isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()) {
                this.mStayOn = this.mBatteryManagerInternal.isPowered(this.mStayOnWhilePluggedInSetting);
            } else {
                this.mStayOn = false;
            }
            if (this.mStayOn != wasStayOn) {
                this.mDirty |= 128;
            }
        }
    }

    private void updateWakeLockSummaryLocked(int dirty) {
        if ((dirty & 3) != 0) {
            this.mWakeLockSummary = 0;
            int numProfiles = this.mProfilePowerState.size();
            for (int i = 0; i < numProfiles; i++) {
                this.mProfilePowerState.valueAt(i).mWakeLockSummary = 0;
            }
            int numWakeLocks = this.mWakeLocks.size();
            for (int i2 = 0; i2 < numWakeLocks; i2++) {
                WakeLock wakeLock = this.mWakeLocks.get(i2);
                int wakeLockFlags = getWakeLockSummaryFlags(wakeLock);
                this.mWakeLockSummary |= wakeLockFlags;
                for (int j = 0; j < numProfiles; j++) {
                    ProfilePowerState profile = this.mProfilePowerState.valueAt(j);
                    if (wakeLockAffectsUser(wakeLock, profile.mUserId)) {
                        profile.mWakeLockSummary |= wakeLockFlags;
                    }
                }
            }
            int i3 = this.mWakeLockSummary;
            this.mWakeLockSummary = adjustWakeLockSummaryLocked(i3);
            for (int i4 = 0; i4 < numProfiles; i4++) {
                ProfilePowerState profile2 = this.mProfilePowerState.valueAt(i4);
                profile2.mWakeLockSummary = adjustWakeLockSummaryLocked(profile2.mWakeLockSummary);
            }
        }
    }

    private int adjustWakeLockSummaryLocked(int wakeLockSummary) {
        if (getWakefulnessLocked() != 3) {
            wakeLockSummary &= -193;
        }
        if (getWakefulnessLocked() == 0 || (wakeLockSummary & 64) != 0) {
            wakeLockSummary &= -15;
            if (getWakefulnessLocked() == 0) {
                wakeLockSummary &= -17;
            }
        }
        if ((wakeLockSummary & 6) != 0) {
            if (getWakefulnessLocked() == 1) {
                wakeLockSummary |= 33;
            } else if (getWakefulnessLocked() == 2) {
                wakeLockSummary |= 1;
            }
        }
        if ((wakeLockSummary & 128) != 0) {
            return wakeLockSummary | 1;
        }
        return wakeLockSummary;
    }

    private int getWakeLockSummaryFlags(WakeLock wakeLock) {
        int i = wakeLock.mFlags & 65535;
        if (i == 1) {
            return !wakeLock.mDisabled ? 1 : 0;
        }
        if (i == 6) {
            return 4;
        }
        if (i == 10) {
            return 2;
        }
        if (i == 26) {
            return 10;
        }
        if (i == 32) {
            return 16;
        }
        if (i != 64) {
            return i != 128 ? 0 : 128;
        }
        return 64;
    }

    private boolean wakeLockAffectsUser(WakeLock wakeLock, int userId) {
        if (wakeLock.mWorkSource != null) {
            for (int k = 0; k < wakeLock.mWorkSource.size(); k++) {
                int uid = wakeLock.mWorkSource.getUid(k);
                if (userId == UserHandle.getUserId(uid)) {
                    return true;
                }
            }
            List<WorkSource.WorkChain> workChains = wakeLock.mWorkSource.getWorkChains();
            if (workChains != null) {
                for (int k2 = 0; k2 < workChains.size(); k2++) {
                    int uid2 = workChains.get(k2).getAttributionUid();
                    if (userId == UserHandle.getUserId(uid2)) {
                        return true;
                    }
                }
            }
        }
        return userId == UserHandle.getUserId(wakeLock.mOwnerUid);
    }

    void checkForLongWakeLocks() {
        synchronized (this.mLock) {
            long now = this.mClock.uptimeMillis();
            this.mNotifyLongDispatched = now;
            long when = now - 60000;
            long nextCheckTime = JobStatus.NO_LATEST_RUNTIME;
            int numWakeLocks = this.mWakeLocks.size();
            for (int i = 0; i < numWakeLocks; i++) {
                WakeLock wakeLock = this.mWakeLocks.get(i);
                if ((wakeLock.mFlags & 65535) == 1 && wakeLock.mNotifiedAcquired && !wakeLock.mNotifiedLong) {
                    if (wakeLock.mAcquireTime >= when) {
                        long checkTime = wakeLock.mAcquireTime + 60000;
                        if (checkTime < nextCheckTime) {
                            nextCheckTime = checkTime;
                        }
                    } else {
                        notifyWakeLockLongStartedLocked(wakeLock);
                    }
                }
            }
            this.mNotifyLongScheduled = 0L;
            this.mHandler.removeMessages(4);
            if (nextCheckTime != JobStatus.NO_LATEST_RUNTIME) {
                this.mNotifyLongNextCheck = nextCheckTime;
                enqueueNotifyLongMsgLocked(nextCheckTime);
            } else {
                this.mNotifyLongNextCheck = 0L;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:47:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:48:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:71:0x0106  */
    /* JADX WARN: Code duplicated, block: B:72:0x010d  */
    private void updateUserActivitySummaryLocked(long now, int dirty) {
        long nextTimeout;
        long nextTimeout2;
        int i;
        long anyUserActivity;
        int i2;
        long nextTimeout3;
        long anyUserActivity2;
        long nextTimeout4;
        if ((dirty & 39) != 0) {
            this.mHandler.removeMessages(1);
            if (getWakefulnessLocked() == 1 || getWakefulnessLocked() == 2 || getWakefulnessLocked() == 3) {
                long attentiveTimeout = getAttentiveTimeoutLocked();
                long sleepTimeout = getSleepTimeoutLocked(attentiveTimeout);
                long screenOffTimeout = getScreenOffTimeoutLocked(sleepTimeout, attentiveTimeout);
                long screenDimDuration = getScreenDimDurationLocked(screenOffTimeout);
                boolean userInactiveOverride = this.mUserInactiveOverrideFromWindowManager;
                long nextProfileTimeout = getNextProfileTimeoutLocked(now);
                this.mUserActivitySummary = 0;
                long j = this.mLastUserActivityTime;
                if (j < this.mLastWakeTime) {
                    nextTimeout = 0;
                } else {
                    long nextTimeout5 = (j + screenOffTimeout) - screenDimDuration;
                    if (now < nextTimeout5) {
                        this.mUserActivitySummary = 1;
                        nextTimeout = nextTimeout5;
                    } else {
                        nextTimeout = j + screenOffTimeout;
                        if (now < nextTimeout) {
                            this.mUserActivitySummary = 2;
                        }
                    }
                }
                if (this.mUserActivitySummary == 0) {
                    long j2 = this.mLastUserActivityTimeNoChangeLights;
                    if (j2 >= this.mLastWakeTime) {
                        long nextTimeout6 = j2 + screenOffTimeout;
                        if (now < nextTimeout6) {
                            if (this.mDisplayPowerRequest.policy == 3 || this.mDisplayPowerRequest.policy == 4) {
                                this.mUserActivitySummary = 1;
                            } else if (this.mDisplayPowerRequest.policy == 2) {
                                this.mUserActivitySummary = 2;
                            }
                        }
                        nextTimeout2 = nextTimeout6;
                    }
                    if (this.mUserActivitySummary == 0) {
                        i = 4;
                        anyUserActivity = nextTimeout2;
                    } else if (sleepTimeout >= 0) {
                        nextTimeout3 = nextTimeout2;
                        anyUserActivity2 = Math.max(this.mLastUserActivityTime, this.mLastUserActivityTimeNoChangeLights);
                        if (anyUserActivity2 >= this.mLastWakeTime) {
                            i = 4;
                            nextTimeout4 = nextTimeout3;
                        } else {
                            nextTimeout4 = anyUserActivity2 + sleepTimeout;
                            if (now < nextTimeout4) {
                                i = 4;
                            } else {
                                i = 4;
                                this.mUserActivitySummary = 4;
                            }
                        }
                        anyUserActivity = nextTimeout4;
                    } else {
                        i = 4;
                        this.mUserActivitySummary = 4;
                        anyUserActivity = -1;
                    }
                    i2 = this.mUserActivitySummary;
                    if (i2 != i && userInactiveOverride) {
                        if ((i2 & 3) != 0 && anyUserActivity >= now && this.mOverriddenTimeout == -1) {
                            this.mOverriddenTimeout = anyUserActivity;
                        }
                        this.mUserActivitySummary = 4;
                        anyUserActivity = -1;
                    }
                    if ((1 & this.mUserActivitySummary) != 0 && (this.mWakeLockSummary & 32) == 0) {
                        anyUserActivity = this.mAttentionDetector.updateUserActivity(anyUserActivity, screenDimDuration);
                    }
                    if (nextProfileTimeout > 0) {
                        anyUserActivity = Math.min(anyUserActivity, nextProfileTimeout);
                    }
                    if (this.mUserActivitySummary == 0 && anyUserActivity >= 0) {
                        scheduleUserInactivityTimeout(anyUserActivity);
                        return;
                    }
                    return;
                }
                nextTimeout2 = nextTimeout;
                if (this.mUserActivitySummary == 0) {
                    i = 4;
                    anyUserActivity = nextTimeout2;
                } else if (sleepTimeout >= 0) {
                    nextTimeout3 = nextTimeout2;
                    anyUserActivity2 = Math.max(this.mLastUserActivityTime, this.mLastUserActivityTimeNoChangeLights);
                    if (anyUserActivity2 >= this.mLastWakeTime) {
                        i = 4;
                        nextTimeout4 = nextTimeout3;
                    } else {
                        nextTimeout4 = anyUserActivity2 + sleepTimeout;
                        if (now < nextTimeout4) {
                            i = 4;
                        } else {
                            i = 4;
                            this.mUserActivitySummary = 4;
                        }
                    }
                    anyUserActivity = nextTimeout4;
                } else {
                    i = 4;
                    this.mUserActivitySummary = 4;
                    anyUserActivity = -1;
                }
                i2 = this.mUserActivitySummary;
                if (i2 != i) {
                    if ((i2 & 3) != 0) {
                        this.mOverriddenTimeout = anyUserActivity;
                    }
                    this.mUserActivitySummary = 4;
                    anyUserActivity = -1;
                }
                if ((1 & this.mUserActivitySummary) != 0) {
                    anyUserActivity = this.mAttentionDetector.updateUserActivity(anyUserActivity, screenDimDuration);
                }
                if (nextProfileTimeout > 0) {
                    anyUserActivity = Math.min(anyUserActivity, nextProfileTimeout);
                }
                if (this.mUserActivitySummary == 0) {
                    return;
                } else {
                    return;
                }
            }
            this.mUserActivitySummary = 0;
        }
    }

    private void scheduleUserInactivityTimeout(long timeMs) {
        Message msg = this.mHandler.obtainMessage(1);
        msg.setAsynchronous(true);
        this.mHandler.sendMessageAtTime(msg, timeMs);
    }

    private void scheduleAttentiveTimeout(long timeMs) {
        Message msg = this.mHandler.obtainMessage(5);
        msg.setAsynchronous(true);
        this.mHandler.sendMessageAtTime(msg, timeMs);
    }

    private long getNextProfileTimeoutLocked(long now) {
        long nextTimeout = -1;
        int numProfiles = this.mProfilePowerState.size();
        for (int i = 0; i < numProfiles; i++) {
            ProfilePowerState profile = this.mProfilePowerState.valueAt(i);
            long timeout = profile.mLastUserActivityTime + profile.mScreenOffTimeout;
            if (timeout > now && (nextTimeout == -1 || timeout < nextTimeout)) {
                nextTimeout = timeout;
            }
        }
        return nextTimeout;
    }

    private void updateAttentiveStateLocked(long now, int dirty) {
        long attentiveTimeout = getAttentiveTimeoutLocked();
        long goToSleepTime = this.mLastUserActivityTime + attentiveTimeout;
        long showWarningTime = goToSleepTime - this.mAttentiveWarningDurationConfig;
        boolean warningDismissed = maybeHideInattentiveSleepWarningLocked(now, showWarningTime);
        if (attentiveTimeout >= 0) {
            if (warningDismissed || (dirty & 19122) != 0) {
                this.mHandler.removeMessages(5);
                if (isBeingKeptFromShowingInattentiveSleepWarningLocked()) {
                    return;
                }
                long nextTimeout = -1;
                if (now < showWarningTime) {
                    nextTimeout = showWarningTime;
                } else if (now < goToSleepTime) {
                    this.mInattentiveSleepWarningOverlayController.show();
                    nextTimeout = goToSleepTime;
                }
                if (nextTimeout >= 0) {
                    scheduleAttentiveTimeout(nextTimeout);
                }
            }
        }
    }

    private boolean maybeHideInattentiveSleepWarningLocked(long now, long showWarningTime) {
        long attentiveTimeout = getAttentiveTimeoutLocked();
        if (!this.mInattentiveSleepWarningOverlayController.isShown()) {
            return false;
        }
        if (getWakefulnessLocked() != 1) {
            this.mInattentiveSleepWarningOverlayController.dismiss(false);
            return true;
        }
        if (attentiveTimeout >= 0 && !isBeingKeptFromShowingInattentiveSleepWarningLocked() && now >= showWarningTime) {
            return false;
        }
        this.mInattentiveSleepWarningOverlayController.dismiss(true);
        return true;
    }

    private boolean isAttentiveTimeoutExpired(long now) {
        long attentiveTimeout = getAttentiveTimeoutLocked();
        return attentiveTimeout >= 0 && now >= this.mLastUserActivityTime + attentiveTimeout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUserActivityTimeout() {
        synchronized (this.mLock) {
            this.mDirty |= 4;
            updatePowerStateLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleAttentiveTimeout() {
        synchronized (this.mLock) {
            this.mDirty |= 16384;
            updatePowerStateLocked();
        }
    }

    private long getAttentiveTimeoutLocked() {
        long timeout = this.mAttentiveTimeoutSetting;
        if (timeout <= 0) {
            return -1L;
        }
        return Math.max(timeout, this.mMinimumScreenOffTimeoutConfig);
    }

    private long getSleepTimeoutLocked(long attentiveTimeout) {
        long timeout = this.mSleepTimeoutSetting;
        if (timeout <= 0) {
            return -1L;
        }
        if (attentiveTimeout >= 0) {
            timeout = Math.min(timeout, attentiveTimeout);
        }
        return Math.max(timeout, this.mMinimumScreenOffTimeoutConfig);
    }

    private long getScreenOffTimeoutLocked(long sleepTimeout, long attentiveTimeout) {
        long timeout = this.mScreenOffTimeoutSetting;
        if (isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()) {
            timeout = Math.min(timeout, this.mMaximumScreenOffTimeoutFromDeviceAdmin);
        }
        long j = this.mUserActivityTimeoutOverrideFromWindowManager;
        if (j >= 0) {
            timeout = Math.min(timeout, j);
        }
        if (sleepTimeout >= 0) {
            timeout = Math.min(timeout, sleepTimeout);
        }
        if (attentiveTimeout >= 0) {
            timeout = Math.min(timeout, attentiveTimeout);
        }
        return Math.max(timeout, this.mMinimumScreenOffTimeoutConfig);
    }

    private long getScreenDimDurationLocked(long screenOffTimeout) {
        return Math.min(this.mMaximumScreenDimDurationConfig, (long) (screenOffTimeout * this.mMaximumScreenDimRatioConfig));
    }

    private boolean updateWakefulnessLocked(int dirty) {
        if ((dirty & 20151) == 0 || getWakefulnessLocked() != 1 || !isItBedTimeYetLocked()) {
            return false;
        }
        long time = this.mClock.uptimeMillis();
        if (isAttentiveTimeoutExpired(time)) {
            boolean changed = goToSleepNoUpdateLocked(time, 2, 1, 1000);
            return changed;
        }
        if (shouldNapAtBedTimeLocked()) {
            boolean changed2 = napNoUpdateLocked(time, 1000);
            return changed2;
        }
        boolean changed3 = goToSleepNoUpdateLocked(time, 2, 0, 1000);
        return changed3;
    }

    private boolean shouldNapAtBedTimeLocked() {
        return this.mDreamsActivateOnSleepSetting || (this.mDreamsActivateOnDockSetting && this.mDockState != 0);
    }

    private boolean isItBedTimeYetLocked() {
        if (!this.mBootCompleted) {
            return false;
        }
        long now = this.mClock.uptimeMillis();
        if (isAttentiveTimeoutExpired(now)) {
            return !isBeingKeptFromInattentiveSleepLocked();
        }
        return !isBeingKeptAwakeLocked();
    }

    private boolean isBeingKeptAwakeLocked() {
        return this.mStayOn || this.mProximityPositive || (this.mWakeLockSummary & 32) != 0 || (this.mUserActivitySummary & 3) != 0 || this.mScreenBrightnessBoostInProgress;
    }

    private boolean isBeingKeptFromInattentiveSleepLocked() {
        return this.mStayOn || this.mScreenBrightnessBoostInProgress || this.mProximityPositive || (this.mUserActivitySummary & 3) != 0;
    }

    private boolean isBeingKeptFromShowingInattentiveSleepWarningLocked() {
        return this.mStayOn || this.mScreenBrightnessBoostInProgress || this.mProximityPositive || !this.mBootCompleted;
    }

    private void updateDreamLocked(int dirty, boolean displayBecameReady) {
        if (((dirty & 17399) != 0 || displayBecameReady) && this.mDisplayReady) {
            scheduleSandmanLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleSandmanLocked() {
        if (!this.mSandmanScheduled) {
            this.mSandmanScheduled = true;
            Message msg = this.mHandler.obtainMessage(2);
            msg.setAsynchronous(true);
            this.mHandler.sendMessage(msg);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSandman() {
        int wakefulness;
        boolean startDreaming;
        boolean isDreaming;
        int flags;
        synchronized (this.mLock) {
            this.mSandmanScheduled = false;
            wakefulness = getWakefulnessLocked();
            if (this.mSandmanSummoned && this.mDisplayReady) {
                boolean startDreaming2 = canDreamLocked() || canDozeLocked();
                this.mSandmanSummoned = false;
                startDreaming = startDreaming2;
            } else {
                startDreaming = false;
            }
        }
        DreamManagerInternal dreamManagerInternal = this.mDreamManager;
        if (dreamManagerInternal != null) {
            if (startDreaming) {
                dreamManagerInternal.stopDream(false);
                this.mDreamManager.startDream(wakefulness == 3);
            }
            isDreaming = this.mDreamManager.isDreaming();
        } else {
            isDreaming = false;
        }
        this.mDozeStartInProgress = false;
        synchronized (this.mLock) {
            if (startDreaming && isDreaming) {
                this.mBatteryLevelWhenDreamStarted = this.mBatteryLevel;
                if (wakefulness == 3) {
                    Slog.i(TAG, "Dozing...");
                } else {
                    Slog.i(TAG, "Dreaming...");
                }
            }
            if (!this.mSandmanSummoned && getWakefulnessLocked() == wakefulness) {
                long now = this.mClock.uptimeMillis();
                if (wakefulness == 2) {
                    if (isDreaming && canDreamLocked()) {
                        if (this.mDreamsBatteryLevelDrainCutoffConfig < 0 || this.mBatteryLevel >= this.mBatteryLevelWhenDreamStarted - this.mDreamsBatteryLevelDrainCutoffConfig || isBeingKeptAwakeLocked()) {
                            return;
                        }
                        Slog.i(TAG, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: " + this.mBatteryLevelWhenDreamStarted + "%.  Battery level now: " + this.mBatteryLevel + "%.");
                    }
                    if (isItBedTimeYetLocked()) {
                        if (!isAttentiveTimeoutExpired(now)) {
                            flags = 0;
                        } else {
                            int flags2 = 0 | 1;
                            flags = flags2;
                        }
                        goToSleepNoUpdateLocked(now, 2, flags, 1000);
                        updatePowerStateLocked();
                    } else {
                        wakeUpNoUpdateLocked(now, 0, "android.server.power:DREAM_FINISHED", 1000, this.mContext.getOpPackageName(), 1000);
                        updatePowerStateLocked();
                    }
                } else if (wakefulness == 3) {
                    if (isDreaming) {
                        return;
                    }
                    reallyGoToSleepNoUpdateLocked(now, 1000);
                    updatePowerStateLocked();
                }
                if (isDreaming) {
                    this.mDreamManager.stopDream(false);
                }
            }
        }
    }

    private boolean canDreamLocked() {
        int i;
        int i2;
        if (getWakefulnessLocked() != 2 || !this.mDreamsSupportedConfig || !this.mDreamsEnabledSetting || !this.mDisplayPowerRequest.isBrightOrDim() || this.mDisplayPowerRequest.isVr() || (this.mUserActivitySummary & 7) == 0 || !this.mBootCompleted) {
            return false;
        }
        if (!isBeingKeptAwakeLocked()) {
            if (!this.mIsPowered && !this.mDreamsEnabledOnBatteryConfig) {
                return false;
            }
            if (this.mIsPowered || (i2 = this.mDreamsBatteryLevelMinimumWhenNotPoweredConfig) < 0 || this.mBatteryLevel >= i2) {
                return !this.mIsPowered || (i = this.mDreamsBatteryLevelMinimumWhenPoweredConfig) < 0 || this.mBatteryLevel >= i;
            }
            return false;
        }
        return true;
    }

    private boolean canDozeLocked() {
        return getWakefulnessLocked() == 3;
    }

    private boolean updateDisplayPowerStateLocked(int dirty) {
        boolean autoBrightness;
        float screenBrightnessOverride;
        boolean oldDisplayReady = this.mDisplayReady;
        if ((dirty & 14399) != 0) {
            if ((dirty & 4096) != 0) {
                sQuiescent = false;
            }
            this.mDisplayPowerRequest.policy = getDesiredScreenPolicyLocked();
            if (!this.mBootCompleted) {
                autoBrightness = false;
                screenBrightnessOverride = this.mScreenBrightnessSettingDefault;
            } else if (isValidBrightness(this.mScreenBrightnessOverrideFromWindowManager)) {
                autoBrightness = false;
                screenBrightnessOverride = this.mScreenBrightnessOverrideFromWindowManager;
            } else {
                autoBrightness = this.mScreenBrightnessModeSetting == 1;
                screenBrightnessOverride = Float.NaN;
            }
            this.mDisplayPowerRequest.screenBrightnessOverride = screenBrightnessOverride;
            this.mDisplayPowerRequest.useAutoBrightness = autoBrightness;
            this.mDisplayPowerRequest.useProximitySensor = shouldUseProximitySensorLocked();
            this.mDisplayPowerRequest.boostScreenBrightness = shouldBoostScreenBrightness();
            updatePowerRequestFromBatterySaverPolicy(this.mDisplayPowerRequest);
            if (this.mDisplayPowerRequest.policy == 1) {
                this.mDisplayPowerRequest.dozeScreenState = this.mDozeScreenStateOverrideFromDreamManager;
                if ((this.mWakeLockSummary & 128) != 0 && !this.mDrawWakeLockOverrideFromSidekick) {
                    if (this.mDisplayPowerRequest.dozeScreenState == 4) {
                        this.mDisplayPowerRequest.dozeScreenState = 3;
                    }
                    if (this.mDisplayPowerRequest.dozeScreenState == 6) {
                        this.mDisplayPowerRequest.dozeScreenState = 2;
                    }
                }
                this.mDisplayPowerRequest.dozeScreenBrightness = this.mDozeScreenBrightnessOverrideFromDreamManagerFloat;
            } else {
                this.mDisplayPowerRequest.dozeScreenState = 0;
                this.mDisplayPowerRequest.dozeScreenBrightness = Float.NaN;
            }
            this.mDisplayReady = this.mDisplayManagerInternal.requestPowerState(this.mDisplayPowerRequest, this.mRequestWaitForNegativeProximity);
            this.mRequestWaitForNegativeProximity = false;
        }
        boolean autoBrightness2 = this.mDisplayReady;
        return autoBrightness2 && !oldDisplayReady;
    }

    private void updateScreenBrightnessBoostLocked(int dirty) {
        if ((dirty & 2048) != 0 && this.mScreenBrightnessBoostInProgress) {
            long now = this.mClock.uptimeMillis();
            this.mHandler.removeMessages(3);
            long j = this.mLastScreenBrightnessBoostTime;
            if (j > this.mLastSleepTime) {
                long boostTimeout = j + 5000;
                if (boostTimeout > now) {
                    Message msg = this.mHandler.obtainMessage(3);
                    msg.setAsynchronous(true);
                    this.mHandler.sendMessageAtTime(msg, boostTimeout);
                    return;
                }
            }
            this.mScreenBrightnessBoostInProgress = false;
            userActivityNoUpdateLocked(now, 0, 0, 1000);
        }
    }

    private boolean shouldBoostScreenBrightness() {
        return !this.mIsVrModeEnabled && this.mScreenBrightnessBoostInProgress;
    }

    private static boolean isValidBrightness(float value) {
        return value >= 0.0f && value <= 1.0f;
    }

    int getDesiredScreenPolicyLocked() {
        if (getWakefulnessLocked() == 0 || sQuiescent) {
            return 0;
        }
        if (getWakefulnessLocked() == 3) {
            if ((this.mWakeLockSummary & 64) != 0) {
                return 1;
            }
            if (this.mDozeAfterScreenOff) {
                return 0;
            }
        }
        if (this.mIsVrModeEnabled) {
            return 4;
        }
        return ((this.mWakeLockSummary & 2) == 0 && (this.mUserActivitySummary & 1) == 0 && this.mBootCompleted && !this.mScreenBrightnessBoostInProgress) ? 2 : 3;
    }

    private boolean shouldUseProximitySensorLocked() {
        return (this.mIsVrModeEnabled || (this.mWakeLockSummary & 16) == 0) ? false : true;
    }

    private void updateSuspendBlockerLocked() {
        boolean needWakeLockSuspendBlocker = (this.mWakeLockSummary & 1) != 0;
        boolean needDisplaySuspendBlocker = needDisplaySuspendBlockerLocked();
        boolean autoSuspend = !needDisplaySuspendBlocker;
        boolean interactive = this.mDisplayPowerRequest.isBrightOrDim();
        if (!autoSuspend && this.mDecoupleHalAutoSuspendModeFromDisplayConfig) {
            setHalAutoSuspendModeLocked(false);
        }
        if (needWakeLockSuspendBlocker && !this.mHoldingWakeLockSuspendBlocker) {
            this.mWakeLockSuspendBlocker.acquire();
            this.mHoldingWakeLockSuspendBlocker = true;
        }
        if (needDisplaySuspendBlocker && !this.mHoldingDisplaySuspendBlocker) {
            this.mDisplaySuspendBlocker.acquire();
            this.mHoldingDisplaySuspendBlocker = true;
        }
        if (this.mDecoupleHalInteractiveModeFromDisplayConfig && (interactive || this.mDisplayReady)) {
            setHalInteractiveModeLocked(interactive);
        }
        if (!needWakeLockSuspendBlocker && this.mHoldingWakeLockSuspendBlocker) {
            this.mWakeLockSuspendBlocker.release();
            this.mHoldingWakeLockSuspendBlocker = false;
        }
        if (!needDisplaySuspendBlocker && this.mHoldingDisplaySuspendBlocker) {
            this.mDisplaySuspendBlocker.release();
            this.mHoldingDisplaySuspendBlocker = false;
        }
        if (autoSuspend && this.mDecoupleHalAutoSuspendModeFromDisplayConfig) {
            setHalAutoSuspendModeLocked(true);
        }
    }

    private boolean needDisplaySuspendBlockerLocked() {
        if (!this.mDisplayReady) {
            return true;
        }
        if (this.mDisplayPowerRequest.isBrightOrDim() && (!this.mDisplayPowerRequest.useProximitySensor || !this.mProximityPositive || !this.mSuspendWhenScreenOffDueToProximityConfig)) {
            return true;
        }
        if ((this.mDisplayPowerRequest.policy == 1 && this.mDisplayPowerRequest.dozeScreenState == 2) || this.mScreenBrightnessBoostInProgress) {
            return true;
        }
        return getWakefulnessLocked() == 3 && this.mDozeStartInProgress;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHalAutoSuspendModeLocked(boolean enable) {
        if (!this.mDisableAutoSuspend && enable != this.mHalAutoSuspendModeEnabled) {
            this.mHalAutoSuspendModeEnabled = enable;
            Trace.traceBegin(131072L, "setHalAutoSuspend(" + enable + ")");
            try {
                this.mNativeWrapper.nativeSetAutoSuspend(enable);
            } finally {
                Trace.traceEnd(131072L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHalInteractiveModeLocked(boolean enable) {
        if (enable != this.mHalInteractiveModeEnabled) {
            this.mHalInteractiveModeEnabled = enable;
            Trace.traceBegin(131072L, "setHalInteractive(" + enable + ")");
            try {
                this.mNativeWrapper.nativeSetInteractive(enable);
            } finally {
                Trace.traceEnd(131072L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInteractiveInternal() {
        boolean zIsInteractive;
        synchronized (this.mLock) {
            zIsInteractive = PowerManagerInternal.isInteractive(getWakefulnessLocked());
        }
        return zIsInteractive;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setLowPowerModeInternal(boolean enabled) {
        synchronized (this.mLock) {
            if (this.mIsPowered) {
                return false;
            }
            this.mBatterySaverStateMachine.setBatterySaverEnabledManually(enabled);
            return true;
        }
    }

    boolean isDeviceIdleModeInternal() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mDeviceIdleMode;
        }
        return z;
    }

    boolean isLightDeviceIdleModeInternal() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mLightDeviceIdleMode;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleBatteryStateChangedLocked() {
        this.mDirty |= 256;
        updatePowerStateLocked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Bottom block not found for handler: all -> 0x007a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void shutdownOrRebootInternal(final int r4, final boolean r5, final java.lang.String r6, boolean r7) {
        /*
            r3 = this;
            java.lang.String r0 = "userspace"
            boolean r0 = r0.equals(r6)
            if (r0 == 0) goto L1b
            boolean r0 = android.os.PowerManager.isRebootingUserspaceSupportedImpl()
            if (r0 == 0) goto L13
            com.android.server.UserspaceRebootLogger.noteUserspaceRebootWasRequested()
            goto L1b
        L13:
            java.lang.UnsupportedOperationException r0 = new java.lang.UnsupportedOperationException
            java.lang.String r1 = "Attempted userspace reboot on a device that doesn't support it"
            r0.<init>(r1)
            throw r0
        L1b:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "shutdownOrRebootInternal, reason = "
            r0.append(r1)
            r0.append(r6)
            java.lang.String r1 = "Caller pid: "
            r0.append(r1)
            int r1 = android.os.Binder.getCallingPid()
            r0.append(r1)
            java.lang.String r1 = ", Caller uid: "
            r0.append(r1)
            int r1 = android.os.Binder.getCallingUid()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "PowerManagerService"
            android.util.Slog.d(r1, r0)
            android.os.Handler r0 = r3.mHandler
            if (r0 == 0) goto L52
            boolean r0 = r3.mSystemReady
            if (r0 != 0) goto L5b
        L52:
            boolean r0 = com.android.server.RescueParty.isAttemptingFactoryReset()
            if (r0 == 0) goto L80
            lowLevelReboot(r6)
        L5b:
            com.android.server.power.PowerManagerService$2 r0 = new com.android.server.power.PowerManagerService$2
            r0.<init>()
            android.os.Handler r1 = com.android.server.UiThread.getHandler()
            android.os.Message r1 = android.os.Message.obtain(r1, r0)
            r2 = 1
            r1.setAsynchronous(r2)
            android.os.Handler r2 = com.android.server.UiThread.getHandler()
            r2.sendMessage(r1)
            if (r7 == 0) goto L7f
            monitor-enter(r0)
        L76:
            r0.wait()     // Catch: java.lang.Throwable -> L7a java.lang.InterruptedException -> L7d
        L79:
            goto L76
        L7a:
            r2 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L7a
            throw r2
        L7d:
            r2 = move-exception
            goto L79
        L7f:
            return
        L80:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Too early to call shutdown() or reboot()"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.power.PowerManagerService.shutdownOrRebootInternal(int, boolean, java.lang.String, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void crashInternal(final String message) {
        Thread t = new Thread("PowerManagerService.crash()") { // from class: com.android.server.power.PowerManagerService.3
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                throw new RuntimeException(message);
            }
        };
        try {
            t.start();
            t.join();
        } catch (InterruptedException e) {
            Slog.wtf(TAG, e);
        }
    }

    void updatePowerRequestFromBatterySaverPolicy(DisplayManagerInternal.DisplayPowerRequest displayPowerRequest) {
        PowerSaveState state = this.mBatterySaverPolicy.getBatterySaverPolicy(7);
        displayPowerRequest.lowPowerMode = state.batterySaverEnabled;
        displayPowerRequest.screenLowPowerBrightnessFactor = state.brightnessFactor;
    }

    void setStayOnSettingInternal(int val) {
        Settings.Global.putInt(this.mContext.getContentResolver(), "stay_on_while_plugged_in", val);
    }

    void setMaximumScreenOffTimeoutFromDeviceAdminInternal(int userId, long timeMs) {
        if (userId < 0) {
            Slog.wtf(TAG, "Attempt to set screen off timeout for invalid user: " + userId);
            return;
        }
        synchronized (this.mLock) {
            try {
                if (userId == 0) {
                    this.mMaximumScreenOffTimeoutFromDeviceAdmin = timeMs;
                } else if (timeMs == JobStatus.NO_LATEST_RUNTIME || timeMs == 0) {
                    this.mProfilePowerState.delete(userId);
                } else {
                    ProfilePowerState profile = this.mProfilePowerState.get(userId);
                    if (profile != null) {
                        profile.mScreenOffTimeout = timeMs;
                    } else {
                        this.mProfilePowerState.put(userId, new ProfilePowerState(userId, timeMs, this.mClock.uptimeMillis()));
                        this.mDirty |= 1;
                    }
                }
                this.mDirty |= 32;
                updatePowerStateLocked();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    boolean setDeviceIdleModeInternal(boolean enabled) {
        synchronized (this.mLock) {
            if (this.mDeviceIdleMode == enabled) {
                return false;
            }
            this.mDeviceIdleMode = enabled;
            updateWakeLockDisabledStatesLocked();
            setPowerModeInternal(8, this.mDeviceIdleMode || this.mLightDeviceIdleMode);
            if (enabled) {
                EventLogTags.writeDeviceIdleOnPhase("power");
            } else {
                EventLogTags.writeDeviceIdleOffPhase("power");
            }
            return true;
        }
    }

    boolean setLightDeviceIdleModeInternal(boolean enabled) {
        synchronized (this.mLock) {
            if (this.mLightDeviceIdleMode == enabled) {
                return false;
            }
            this.mLightDeviceIdleMode = enabled;
            setPowerModeInternal(8, this.mDeviceIdleMode || enabled);
            return true;
        }
    }

    void setDeviceIdleWhitelistInternal(int[] appids) {
        synchronized (this.mLock) {
            this.mDeviceIdleWhitelist = appids;
            if (this.mDeviceIdleMode) {
                updateWakeLockDisabledStatesLocked();
            }
        }
    }

    void setDeviceIdleTempWhitelistInternal(int[] appids) {
        synchronized (this.mLock) {
            this.mDeviceIdleTempWhitelist = appids;
            if (this.mDeviceIdleMode) {
                updateWakeLockDisabledStatesLocked();
            }
        }
    }

    void startUidChangesInternal() {
        synchronized (this.mLock) {
            this.mUidsChanging = true;
        }
    }

    void finishUidChangesInternal() {
        synchronized (this.mLock) {
            this.mUidsChanging = false;
            if (this.mUidsChanged) {
                updateWakeLockDisabledStatesLocked();
                this.mUidsChanged = false;
            }
        }
    }

    private void handleUidStateChangeLocked() {
        if (this.mUidsChanging) {
            this.mUidsChanged = true;
        } else {
            updateWakeLockDisabledStatesLocked();
        }
    }

    void updateUidProcStateInternal(int uid, int procState) {
        synchronized (this.mLock) {
            UidState state = this.mUidState.get(uid);
            if (state == null) {
                state = new UidState(uid);
                this.mUidState.put(uid, state);
            }
            boolean z = true;
            boolean oldShouldAllow = state.mProcState <= 11;
            state.mProcState = procState;
            if (state.mNumWakeLocks > 0) {
                if (this.mDeviceIdleMode) {
                    handleUidStateChangeLocked();
                } else if (!state.mActive) {
                    if (procState > 11) {
                        z = false;
                    }
                    if (oldShouldAllow != z) {
                        handleUidStateChangeLocked();
                    }
                }
            }
        }
    }

    void uidGoneInternal(int uid) {
        synchronized (this.mLock) {
            int index = this.mUidState.indexOfKey(uid);
            if (index >= 0) {
                UidState state = this.mUidState.valueAt(index);
                state.mProcState = 20;
                state.mActive = false;
                this.mUidState.removeAt(index);
                if (this.mDeviceIdleMode && state.mNumWakeLocks > 0) {
                    handleUidStateChangeLocked();
                }
            }
        }
    }

    void uidActiveInternal(int uid) {
        synchronized (this.mLock) {
            UidState state = this.mUidState.get(uid);
            if (state == null) {
                state = new UidState(uid);
                state.mProcState = 19;
                this.mUidState.put(uid, state);
            }
            state.mActive = true;
            if (state.mNumWakeLocks > 0) {
                handleUidStateChangeLocked();
            }
        }
    }

    void uidIdleInternal(int uid) {
        synchronized (this.mLock) {
            UidState state = this.mUidState.get(uid);
            if (state != null) {
                state.mActive = false;
                if (state.mNumWakeLocks > 0) {
                    handleUidStateChangeLocked();
                }
            }
        }
    }

    private void updateWakeLockDisabledStatesLocked() {
        boolean changed = false;
        int numWakeLocks = this.mWakeLocks.size();
        for (int i = 0; i < numWakeLocks; i++) {
            WakeLock wakeLock = this.mWakeLocks.get(i);
            if ((wakeLock.mFlags & 65535) == 1 && setWakeLockDisabledStateLocked(wakeLock)) {
                changed = true;
                if (wakeLock.mDisabled) {
                    notifyWakeLockReleasedLocked(wakeLock);
                } else {
                    notifyWakeLockAcquiredLocked(wakeLock);
                }
            }
        }
        if (changed) {
            this.mDirty |= 1;
            updatePowerStateLocked();
        }
    }

    private boolean setWakeLockDisabledStateLocked(WakeLock wakeLock) {
        if ((wakeLock.mFlags & 65535) == 1) {
            boolean disabled = false;
            int appid = UserHandle.getAppId(wakeLock.mOwnerUid);
            if (appid >= 10000) {
                if (this.mConstants.NO_CACHED_WAKE_LOCKS) {
                    disabled = this.mForceSuspendActive || !(wakeLock.mUidState.mActive || wakeLock.mUidState.mProcState == 20 || wakeLock.mUidState.mProcState <= 11);
                }
                if (this.mDeviceIdleMode) {
                    UidState state = wakeLock.mUidState;
                    if (Arrays.binarySearch(this.mDeviceIdleWhitelist, appid) < 0 && Arrays.binarySearch(this.mDeviceIdleTempWhitelist, appid) < 0 && state.mProcState != 20 && state.mProcState > 5) {
                        disabled = true;
                    }
                }
            }
            if (wakeLock.mDisabled != disabled) {
                wakeLock.mDisabled = disabled;
                return true;
            }
        }
        return false;
    }

    private boolean isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked() {
        long j = this.mMaximumScreenOffTimeoutFromDeviceAdmin;
        return j >= 0 && j < JobStatus.NO_LATEST_RUNTIME;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAttentionLightInternal(boolean on, int color) {
        synchronized (this.mLock) {
            if (this.mSystemReady) {
                LogicalLight light = this.mAttentionLight;
                if (light != null) {
                    light.setFlashing(color, 2, on ? 3 : 0, 0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDozeAfterScreenOffInternal(boolean on) {
        synchronized (this.mLock) {
            this.mDozeAfterScreenOff = on;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void boostScreenBrightnessInternal(long eventTime, int uid) {
        synchronized (this.mLock) {
            if (this.mSystemReady && getWakefulnessLocked() != 0 && eventTime >= this.mLastScreenBrightnessBoostTime) {
                Slog.i(TAG, "Brightness boost activated (uid " + uid + ")...");
                this.mLastScreenBrightnessBoostTime = eventTime;
                this.mScreenBrightnessBoostInProgress = true;
                this.mDirty = this.mDirty | 2048;
                userActivityNoUpdateLocked(eventTime, 0, 0, uid);
                updatePowerStateLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isScreenBrightnessBoostedInternal() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mScreenBrightnessBoostInProgress;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleScreenBrightnessBoostTimeout() {
        synchronized (this.mLock) {
            this.mDirty |= 2048;
            updatePowerStateLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScreenBrightnessOverrideFromWindowManagerInternal(float brightness, int displayId) {
        synchronized (this.mLock) {
            try {
                if (displayId != 0) {
                    this.mLightSettings.setOverrideBrightnessToPath(displayId, brightness);
                } else if (!BrightnessSynchronizer.floatEquals(this.mScreenBrightnessOverrideFromWindowManager, brightness)) {
                    this.mScreenBrightnessOverrideFromWindowManager = brightness;
                    this.mDirty |= 32;
                    updatePowerStateLocked();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUserInactiveOverrideFromWindowManagerInternal() {
        synchronized (this.mLock) {
            this.mUserInactiveOverrideFromWindowManager = true;
            this.mDirty |= 4;
            updatePowerStateLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUserActivityTimeoutOverrideFromWindowManagerInternal(long timeoutMillis) {
        synchronized (this.mLock) {
            if (this.mUserActivityTimeoutOverrideFromWindowManager != timeoutMillis) {
                this.mUserActivityTimeoutOverrideFromWindowManager = timeoutMillis;
                EventLogTags.writeUserActivityTimeoutOverride(timeoutMillis);
                this.mDirty |= 32;
                updatePowerStateLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDozeOverrideFromDreamManagerInternal(int screenState, int screenBrightness) {
        synchronized (this.mLock) {
            if (this.mDozeScreenStateOverrideFromDreamManager != screenState || this.mDozeScreenBrightnessOverrideFromDreamManager != screenBrightness) {
                this.mDozeScreenStateOverrideFromDreamManager = screenState;
                this.mDozeScreenBrightnessOverrideFromDreamManager = screenBrightness;
                this.mDozeScreenBrightnessOverrideFromDreamManagerFloat = BrightnessSynchronizer.brightnessIntToFloat(this.mContext, screenBrightness);
                this.mDirty |= 32;
                updatePowerStateLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDrawWakeLockOverrideFromSidekickInternal(boolean keepState) {
        synchronized (this.mLock) {
            if (this.mDrawWakeLockOverrideFromSidekick != keepState) {
                this.mDrawWakeLockOverrideFromSidekick = keepState;
                this.mDirty |= 32;
                updatePowerStateLocked();
            }
        }
    }

    void setVrModeEnabled(boolean enabled) {
        this.mIsVrModeEnabled = enabled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void powerHintInternal(int hintId, int data) {
        if (hintId == 8 && data == 1 && this.mBatterySaverController.isLaunchBoostDisabled()) {
            return;
        }
        this.mNativeWrapper.nativeSendPowerHint(hintId, data);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPowerBoostInternal(int boost, int durationMs) {
        this.mNativeWrapper.nativeSetPowerBoost(boost, durationMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setPowerModeInternal(int mode, boolean enabled) {
        return this.mNativeWrapper.nativeSetPowerMode(mode, enabled);
    }

    boolean wasDeviceIdleForInternal(long ms) {
        boolean z;
        synchronized (this.mLock) {
            z = this.mLastUserActivityTime + ms < this.mClock.uptimeMillis();
        }
        return z;
    }

    void onUserActivity() {
        synchronized (this.mLock) {
            this.mLastUserActivityTime = this.mClock.uptimeMillis();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean forceSuspendInternal(int uid) {
        try {
            synchronized (this.mLock) {
                this.mForceSuspendActive = true;
                goToSleepInternal(this.mClock.uptimeMillis(), 8, 1, uid);
                updateWakeLockDisabledStatesLocked();
            }
            Slog.i(TAG, "Force-Suspending (uid " + uid + ")...");
            boolean success = this.mNativeWrapper.nativeForceSuspend();
            if (!success) {
                Slog.i(TAG, "Force-Suspending failed in native.");
            }
            synchronized (this.mLock) {
                this.mForceSuspendActive = false;
                updateWakeLockDisabledStatesLocked();
            }
            return success;
        } catch (Throwable th) {
            synchronized (this.mLock) {
                this.mForceSuspendActive = false;
                updateWakeLockDisabledStatesLocked();
                throw th;
            }
        }
    }

    public static void lowLevelShutdown(String reason) {
        if (reason == null) {
            reason = "";
        }
        Slog.i(TAG, "send to qnx: shutdown," + reason);
        SystemProperties.set("sys.state.monitor.value", "android-shutdown," + reason);
        try {
            Thread.sleep(1000L);
            SystemProperties.set("sys.powerctl", "shutdown," + reason);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }

    public static void lowLevelReboot(String reason) {
        if (reason == null) {
            reason = "";
        }
        if (reason.equals("quiescent")) {
            sQuiescent = true;
            reason = "";
        } else if (reason.endsWith(",quiescent")) {
            sQuiescent = true;
            reason = reason.substring(0, (reason.length() - "quiescent".length()) - 1);
        }
        if (reason.equals("recovery") || reason.equals("recovery-update")) {
            reason = "recovery";
        }
        if (sQuiescent) {
            reason = reason + ",quiescent";
        }
        Slog.i(TAG, "send to qnx: reboot," + reason);
        SystemProperties.set("sys.state.monitor.value", "android-reboot," + reason);
        try {
            Thread.sleep(1000L);
            SystemProperties.set("sys.powerctl", "reboot," + reason);
            Thread.sleep(20000L);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
        Slog.wtf(TAG, "Unexpected return from lowLevelReboot!");
    }

    @Override // com.android.server.Watchdog.Monitor
    public void monitor() {
        synchronized (this.mLock) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpInternal(PrintWriter pw) {
        WirelessChargerDetector wcd;
        pw.println("POWER MANAGER (dumpsys power)\n");
        synchronized (this.mLock) {
            pw.println("Power Manager State:");
            this.mConstants.dump(pw);
            this.mLightSettings.dump(pw);
            this.mAutoBackLightController.dump(pw);
            pw.println("  mDirty=0x" + Integer.toHexString(this.mDirty));
            pw.println("  mWakefulness=" + PowerManagerInternal.wakefulnessToString(getWakefulnessLocked()));
            pw.println("  mWakefulnessChanging=" + this.mWakefulnessChanging);
            pw.println("  mIsPowered=" + this.mIsPowered);
            pw.println("  mPlugType=" + this.mPlugType);
            pw.println("  mBatteryLevel=" + this.mBatteryLevel);
            pw.println("  mBatteryLevelWhenDreamStarted=" + this.mBatteryLevelWhenDreamStarted);
            pw.println("  mDockState=" + this.mDockState);
            pw.println("  mStayOn=" + this.mStayOn);
            pw.println("  mProximityPositive=" + this.mProximityPositive);
            pw.println("  mBootCompleted=" + this.mBootCompleted);
            pw.println("  mSystemReady=" + this.mSystemReady);
            pw.println("  mHalAutoSuspendModeEnabled=" + this.mHalAutoSuspendModeEnabled);
            pw.println("  mHalInteractiveModeEnabled=" + this.mHalInteractiveModeEnabled);
            pw.println("  mWakeLockSummary=0x" + Integer.toHexString(this.mWakeLockSummary));
            pw.print("  mNotifyLongScheduled=");
            if (this.mNotifyLongScheduled == 0) {
                pw.print("(none)");
            } else {
                TimeUtils.formatDuration(this.mNotifyLongScheduled, this.mClock.uptimeMillis(), pw);
            }
            pw.println();
            pw.print("  mNotifyLongDispatched=");
            if (this.mNotifyLongDispatched == 0) {
                pw.print("(none)");
            } else {
                TimeUtils.formatDuration(this.mNotifyLongDispatched, this.mClock.uptimeMillis(), pw);
            }
            pw.println();
            pw.print("  mNotifyLongNextCheck=");
            if (this.mNotifyLongNextCheck == 0) {
                pw.print("(none)");
            } else {
                TimeUtils.formatDuration(this.mNotifyLongNextCheck, this.mClock.uptimeMillis(), pw);
            }
            pw.println();
            pw.println("  mUserActivitySummary=0x" + Integer.toHexString(this.mUserActivitySummary));
            pw.println("  mRequestWaitForNegativeProximity=" + this.mRequestWaitForNegativeProximity);
            pw.println("  mSandmanScheduled=" + this.mSandmanScheduled);
            pw.println("  mSandmanSummoned=" + this.mSandmanSummoned);
            pw.println("  mBatteryLevelLow=" + this.mBatteryLevelLow);
            pw.println("  mLightDeviceIdleMode=" + this.mLightDeviceIdleMode);
            pw.println("  mDeviceIdleMode=" + this.mDeviceIdleMode);
            pw.println("  mDeviceIdleWhitelist=" + Arrays.toString(this.mDeviceIdleWhitelist));
            pw.println("  mDeviceIdleTempWhitelist=" + Arrays.toString(this.mDeviceIdleTempWhitelist));
            pw.println("  mLastWakeTime=" + TimeUtils.formatUptime(this.mLastWakeTime));
            pw.println("  mLastSleepTime=" + TimeUtils.formatUptime(this.mLastSleepTime));
            pw.println("  mLastSleepReason=" + PowerManager.sleepReasonToString(this.mLastSleepReason));
            pw.println("  mLastUserActivityTime=" + TimeUtils.formatUptime(this.mLastUserActivityTime));
            pw.println("  mLastUserActivityTimeNoChangeLights=" + TimeUtils.formatUptime(this.mLastUserActivityTimeNoChangeLights));
            pw.println("  mLastInteractivePowerHintTime=" + TimeUtils.formatUptime(this.mLastInteractivePowerHintTime));
            pw.println("  mLastScreenBrightnessBoostTime=" + TimeUtils.formatUptime(this.mLastScreenBrightnessBoostTime));
            pw.println("  mScreenBrightnessBoostInProgress=" + this.mScreenBrightnessBoostInProgress);
            pw.println("  mDisplayReady=" + this.mDisplayReady);
            pw.println("  mHoldingWakeLockSuspendBlocker=" + this.mHoldingWakeLockSuspendBlocker);
            pw.println("  mHoldingDisplaySuspendBlocker=" + this.mHoldingDisplaySuspendBlocker);
            pw.println();
            pw.println("Settings and Configuration:");
            pw.println("  mDecoupleHalAutoSuspendModeFromDisplayConfig=" + this.mDecoupleHalAutoSuspendModeFromDisplayConfig);
            pw.println("  mDecoupleHalInteractiveModeFromDisplayConfig=" + this.mDecoupleHalInteractiveModeFromDisplayConfig);
            pw.println("  mWakeUpWhenPluggedOrUnpluggedConfig=" + this.mWakeUpWhenPluggedOrUnpluggedConfig);
            pw.println("  mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig=" + this.mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig);
            pw.println("  mTheaterModeEnabled=" + this.mTheaterModeEnabled);
            pw.println("  mSuspendWhenScreenOffDueToProximityConfig=" + this.mSuspendWhenScreenOffDueToProximityConfig);
            pw.println("  mDreamsSupportedConfig=" + this.mDreamsSupportedConfig);
            pw.println("  mDreamsEnabledByDefaultConfig=" + this.mDreamsEnabledByDefaultConfig);
            pw.println("  mDreamsActivatedOnSleepByDefaultConfig=" + this.mDreamsActivatedOnSleepByDefaultConfig);
            pw.println("  mDreamsActivatedOnDockByDefaultConfig=" + this.mDreamsActivatedOnDockByDefaultConfig);
            pw.println("  mDreamsEnabledOnBatteryConfig=" + this.mDreamsEnabledOnBatteryConfig);
            pw.println("  mDreamsBatteryLevelMinimumWhenPoweredConfig=" + this.mDreamsBatteryLevelMinimumWhenPoweredConfig);
            pw.println("  mDreamsBatteryLevelMinimumWhenNotPoweredConfig=" + this.mDreamsBatteryLevelMinimumWhenNotPoweredConfig);
            pw.println("  mDreamsBatteryLevelDrainCutoffConfig=" + this.mDreamsBatteryLevelDrainCutoffConfig);
            pw.println("  mDreamsEnabledSetting=" + this.mDreamsEnabledSetting);
            pw.println("  mDreamsActivateOnSleepSetting=" + this.mDreamsActivateOnSleepSetting);
            pw.println("  mDreamsActivateOnDockSetting=" + this.mDreamsActivateOnDockSetting);
            pw.println("  mDozeAfterScreenOff=" + this.mDozeAfterScreenOff);
            pw.println("  mMinimumScreenOffTimeoutConfig=" + this.mMinimumScreenOffTimeoutConfig);
            pw.println("  mMaximumScreenDimDurationConfig=" + this.mMaximumScreenDimDurationConfig);
            pw.println("  mMaximumScreenDimRatioConfig=" + this.mMaximumScreenDimRatioConfig);
            pw.println("  mAttentiveTimeoutConfig=" + this.mAttentiveTimeoutConfig);
            pw.println("  mAttentiveTimeoutSetting=" + this.mAttentiveTimeoutSetting);
            pw.println("  mAttentiveWarningDurationConfig=" + this.mAttentiveWarningDurationConfig);
            pw.println("  mScreenOffTimeoutSetting=" + this.mScreenOffTimeoutSetting);
            pw.println("  mSleepTimeoutSetting=" + this.mSleepTimeoutSetting);
            pw.println("  mMaximumScreenOffTimeoutFromDeviceAdmin=" + this.mMaximumScreenOffTimeoutFromDeviceAdmin + " (enforced=" + isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked() + ")");
            StringBuilder sb = new StringBuilder();
            sb.append("  mStayOnWhilePluggedInSetting=");
            sb.append(this.mStayOnWhilePluggedInSetting);
            pw.println(sb.toString());
            pw.println("  mScreenBrightnessModeSetting=" + this.mScreenBrightnessModeSetting);
            pw.println("  mScreenBrightnessOverrideFromWindowManager=" + this.mScreenBrightnessOverrideFromWindowManager);
            pw.println("  mUserActivityTimeoutOverrideFromWindowManager=" + this.mUserActivityTimeoutOverrideFromWindowManager);
            pw.println("  mUserInactiveOverrideFromWindowManager=" + this.mUserInactiveOverrideFromWindowManager);
            pw.println("  mDozeScreenStateOverrideFromDreamManager=" + this.mDozeScreenStateOverrideFromDreamManager);
            pw.println("  mDrawWakeLockOverrideFromSidekick=" + this.mDrawWakeLockOverrideFromSidekick);
            pw.println("  mDozeScreenBrightnessOverrideFromDreamManager=" + this.mDozeScreenBrightnessOverrideFromDreamManager);
            pw.println("  mScreenBrightnessSettingMinimumFloat=" + this.mScreenBrightnessSettingMinimum);
            pw.println("  mScreenBrightnessSettingMaximumFloat=" + this.mScreenBrightnessSettingMaximum);
            pw.println("  mScreenBrightnessSettingDefaultFloat=" + this.mScreenBrightnessSettingDefault);
            pw.println("  mDoubleTapWakeEnabled=" + this.mDoubleTapWakeEnabled);
            pw.println("  mIsVrModeEnabled=" + this.mIsVrModeEnabled);
            pw.println("  mForegroundProfile=" + this.mForegroundProfile);
            pw.println("  mUserId=" + this.mUserId);
            long attentiveTimeout = getAttentiveTimeoutLocked();
            long sleepTimeout = getSleepTimeoutLocked(attentiveTimeout);
            long screenOffTimeout = getScreenOffTimeoutLocked(sleepTimeout, attentiveTimeout);
            long screenDimDuration = getScreenDimDurationLocked(screenOffTimeout);
            pw.println();
            pw.println("Attentive timeout: " + attentiveTimeout + " ms");
            pw.println("Sleep timeout: " + sleepTimeout + " ms");
            pw.println("Screen off timeout: " + screenOffTimeout + " ms");
            pw.println("Screen dim duration: " + screenDimDuration + " ms");
            pw.println();
            pw.print("UID states (changing=");
            pw.print(this.mUidsChanging);
            pw.print(" changed=");
            pw.print(this.mUidsChanged);
            pw.println("):");
            for (int i = 0; i < this.mUidState.size(); i++) {
                UidState state = this.mUidState.valueAt(i);
                pw.print("  UID ");
                UserHandle.formatUid(pw, this.mUidState.keyAt(i));
                pw.print(": ");
                if (state.mActive) {
                    pw.print("  ACTIVE ");
                } else {
                    pw.print("INACTIVE ");
                }
                pw.print(" count=");
                pw.print(state.mNumWakeLocks);
                pw.print(" state=");
                pw.println(state.mProcState);
            }
            pw.println();
            pw.println("Looper state:");
            this.mHandler.getLooper().dump(new PrintWriterPrinter(pw), "  ");
            pw.println();
            pw.println("Wake Locks: size=" + this.mWakeLocks.size());
            for (WakeLock wl : this.mWakeLocks) {
                pw.println("  " + wl);
            }
            pw.println();
            pw.println("Suspend Blockers: size=" + this.mSuspendBlockers.size());
            for (SuspendBlocker sb2 : this.mSuspendBlockers) {
                pw.println("  " + sb2);
            }
            pw.println();
            pw.println("Display Power: " + this.mDisplayPowerCallbacks);
            this.mBatterySaverPolicy.dump(pw);
            this.mBatterySaverStateMachine.dump(pw);
            this.mAttentionDetector.dump(pw);
            pw.println();
            int numProfiles = this.mProfilePowerState.size();
            pw.println("Profile power states: size=" + numProfiles);
            for (int i2 = 0; i2 < numProfiles; i2++) {
                ProfilePowerState profile = this.mProfilePowerState.valueAt(i2);
                pw.print("  mUserId=");
                pw.print(profile.mUserId);
                pw.print(" mScreenOffTimeout=");
                pw.print(profile.mScreenOffTimeout);
                pw.print(" mWakeLockSummary=");
                pw.print(profile.mWakeLockSummary);
                pw.print(" mLastUserActivityTime=");
                pw.print(profile.mLastUserActivityTime);
                pw.print(" mLockingNotified=");
                pw.println(profile.mLockingNotified);
            }
            wcd = this.mWirelessChargerDetector;
        }
        if (wcd != null) {
            wcd.dump(pw);
        }
        Notifier notifier = this.mNotifier;
        if (notifier != null) {
            notifier.dump(pw);
        }
        this.mAmbientDisplaySuppressionController.dump(pw);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpProto(FileDescriptor fd) {
        WirelessChargerDetector wcd;
        ProtoOutputStream proto = new ProtoOutputStream(fd);
        synchronized (this.mLock) {
            this.mConstants.dumpProto(proto);
            proto.write(1120986464258L, this.mDirty);
            proto.write(1159641169923L, getWakefulnessLocked());
            proto.write(1133871366148L, this.mWakefulnessChanging);
            proto.write(1133871366149L, this.mIsPowered);
            proto.write(1159641169926L, this.mPlugType);
            proto.write(1120986464263L, this.mBatteryLevel);
            proto.write(1120986464264L, this.mBatteryLevelWhenDreamStarted);
            proto.write(1159641169929L, this.mDockState);
            proto.write(1133871366154L, this.mStayOn);
            proto.write(1133871366155L, this.mProximityPositive);
            proto.write(1133871366156L, this.mBootCompleted);
            proto.write(1133871366157L, this.mSystemReady);
            proto.write(1133871366158L, this.mHalAutoSuspendModeEnabled);
            proto.write(1133871366159L, this.mHalInteractiveModeEnabled);
            long activeWakeLocksToken = proto.start(1146756268048L);
            proto.write(1133871366145L, (this.mWakeLockSummary & 1) != 0);
            proto.write(1133871366146L, (this.mWakeLockSummary & 2) != 0);
            proto.write(1133871366147L, (this.mWakeLockSummary & 4) != 0);
            proto.write(1133871366148L, (this.mWakeLockSummary & 8) != 0);
            proto.write(1133871366149L, (this.mWakeLockSummary & 16) != 0);
            proto.write(1133871366150L, (this.mWakeLockSummary & 32) != 0);
            proto.write(1133871366151L, (this.mWakeLockSummary & 64) != 0);
            proto.write(1133871366152L, (this.mWakeLockSummary & 128) != 0);
            proto.end(activeWakeLocksToken);
            proto.write(1112396529681L, this.mNotifyLongScheduled);
            proto.write(1112396529682L, this.mNotifyLongDispatched);
            proto.write(1112396529683L, this.mNotifyLongNextCheck);
            long userActivityToken = proto.start(1146756268052L);
            proto.write(1133871366145L, (this.mUserActivitySummary & 1) != 0);
            proto.write(1133871366146L, (this.mUserActivitySummary & 2) != 0);
            proto.write(1133871366147L, (this.mUserActivitySummary & 4) != 0);
            proto.end(userActivityToken);
            proto.write(1133871366165L, this.mRequestWaitForNegativeProximity);
            proto.write(1133871366166L, this.mSandmanScheduled);
            proto.write(1133871366167L, this.mSandmanSummoned);
            proto.write(1133871366168L, this.mBatteryLevelLow);
            proto.write(1133871366169L, this.mLightDeviceIdleMode);
            proto.write(1133871366170L, this.mDeviceIdleMode);
            for (int id : this.mDeviceIdleWhitelist) {
                proto.write(2220498092059L, id);
            }
            for (int id2 : this.mDeviceIdleTempWhitelist) {
                proto.write(2220498092060L, id2);
            }
            proto.write(1112396529693L, this.mLastWakeTime);
            proto.write(1112396529694L, this.mLastSleepTime);
            proto.write(1112396529695L, this.mLastUserActivityTime);
            proto.write(1112396529696L, this.mLastUserActivityTimeNoChangeLights);
            proto.write(1112396529697L, this.mLastInteractivePowerHintTime);
            proto.write(1112396529698L, this.mLastScreenBrightnessBoostTime);
            proto.write(1133871366179L, this.mScreenBrightnessBoostInProgress);
            proto.write(1133871366180L, this.mDisplayReady);
            proto.write(1133871366181L, this.mHoldingWakeLockSuspendBlocker);
            proto.write(1133871366182L, this.mHoldingDisplaySuspendBlocker);
            long settingsAndConfigurationToken = proto.start(1146756268071L);
            proto.write(1133871366145L, this.mDecoupleHalAutoSuspendModeFromDisplayConfig);
            proto.write(1133871366146L, this.mDecoupleHalInteractiveModeFromDisplayConfig);
            proto.write(1133871366147L, this.mWakeUpWhenPluggedOrUnpluggedConfig);
            proto.write(1133871366148L, this.mWakeUpWhenPluggedOrUnpluggedInTheaterModeConfig);
            proto.write(1133871366149L, this.mTheaterModeEnabled);
            proto.write(1133871366150L, this.mSuspendWhenScreenOffDueToProximityConfig);
            proto.write(1133871366151L, this.mDreamsSupportedConfig);
            proto.write(1133871366152L, this.mDreamsEnabledByDefaultConfig);
            proto.write(1133871366153L, this.mDreamsActivatedOnSleepByDefaultConfig);
            proto.write(1133871366154L, this.mDreamsActivatedOnDockByDefaultConfig);
            proto.write(1133871366155L, this.mDreamsEnabledOnBatteryConfig);
            proto.write(1172526071820L, this.mDreamsBatteryLevelMinimumWhenPoweredConfig);
            proto.write(1172526071821L, this.mDreamsBatteryLevelMinimumWhenNotPoweredConfig);
            proto.write(1172526071822L, this.mDreamsBatteryLevelDrainCutoffConfig);
            proto.write(1133871366159L, this.mDreamsEnabledSetting);
            proto.write(1133871366160L, this.mDreamsActivateOnSleepSetting);
            proto.write(1133871366161L, this.mDreamsActivateOnDockSetting);
            proto.write(1133871366162L, this.mDozeAfterScreenOff);
            proto.write(1120986464275L, this.mMinimumScreenOffTimeoutConfig);
            proto.write(1120986464276L, this.mMaximumScreenDimDurationConfig);
            proto.write(1108101562389L, this.mMaximumScreenDimRatioConfig);
            proto.write(1120986464278L, this.mScreenOffTimeoutSetting);
            proto.write(1172526071831L, this.mSleepTimeoutSetting);
            proto.write(1172526071845L, this.mAttentiveTimeoutSetting);
            proto.write(1172526071846L, this.mAttentiveTimeoutConfig);
            proto.write(1172526071847L, this.mAttentiveWarningDurationConfig);
            proto.write(1120986464280L, Math.min(this.mMaximumScreenOffTimeoutFromDeviceAdmin, 2147483647L));
            proto.write(1133871366169L, isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked());
            long stayOnWhilePluggedInToken = proto.start(1146756268058L);
            proto.write(1133871366145L, (this.mStayOnWhilePluggedInSetting & 1) != 0);
            proto.write(1133871366146L, (this.mStayOnWhilePluggedInSetting & 2) != 0);
            proto.write(1133871366147L, (this.mStayOnWhilePluggedInSetting & 4) != 0);
            proto.end(stayOnWhilePluggedInToken);
            proto.write(1159641169947L, this.mScreenBrightnessModeSetting);
            proto.write(1172526071836L, this.mScreenBrightnessOverrideFromWindowManager);
            proto.write(1176821039133L, this.mUserActivityTimeoutOverrideFromWindowManager);
            proto.write(1133871366174L, this.mUserInactiveOverrideFromWindowManager);
            proto.write(1159641169951L, this.mDozeScreenStateOverrideFromDreamManager);
            proto.write(1133871366180L, this.mDrawWakeLockOverrideFromSidekick);
            proto.write(1108101562400L, this.mDozeScreenBrightnessOverrideFromDreamManager);
            long screenBrightnessSettingLimitsToken = proto.start(1146756268065L);
            proto.write(1108101562372L, this.mScreenBrightnessSettingMinimum);
            proto.write(1108101562373L, this.mScreenBrightnessSettingMaximum);
            proto.write(1108101562374L, this.mScreenBrightnessSettingDefault);
            proto.end(screenBrightnessSettingLimitsToken);
            proto.write(1133871366178L, this.mDoubleTapWakeEnabled);
            proto.write(1133871366179L, this.mIsVrModeEnabled);
            proto.end(settingsAndConfigurationToken);
            long attentiveTimeout = getAttentiveTimeoutLocked();
            long sleepTimeout = getSleepTimeoutLocked(attentiveTimeout);
            long screenOffTimeout = getScreenOffTimeoutLocked(sleepTimeout, attentiveTimeout);
            long screenDimDuration = getScreenDimDurationLocked(screenOffTimeout);
            proto.write(1172526071859L, attentiveTimeout);
            proto.write(1172526071848L, sleepTimeout);
            proto.write(1120986464297L, screenOffTimeout);
            long screenDimDuration2 = screenDimDuration;
            proto.write(1120986464298L, screenDimDuration2);
            proto.write(1133871366187L, this.mUidsChanging);
            proto.write(1133871366188L, this.mUidsChanged);
            int i = 0;
            while (i < this.mUidState.size()) {
                UidState state = this.mUidState.valueAt(i);
                long screenDimDuration3 = screenDimDuration2;
                long uIDToken = proto.start(2246267895853L);
                int uid = this.mUidState.keyAt(i);
                proto.write(1120986464257L, uid);
                proto.write(1138166333442L, UserHandle.formatUid(uid));
                proto.write(1133871366147L, state.mActive);
                proto.write(1120986464260L, state.mNumWakeLocks);
                proto.write(1159641169925L, ActivityManager.processStateAmToProto(state.mProcState));
                proto.end(uIDToken);
                i++;
                screenDimDuration2 = screenDimDuration3;
                screenOffTimeout = screenOffTimeout;
                attentiveTimeout = attentiveTimeout;
            }
            this.mBatterySaverStateMachine.dumpProto(proto, 1146756268082L);
            this.mHandler.getLooper().dumpDebug(proto, 1146756268078L);
            for (WakeLock wl : this.mWakeLocks) {
                wl.dumpDebug(proto, 2246267895855L);
            }
            for (SuspendBlocker sb : this.mSuspendBlockers) {
                sb.dumpDebug(proto, 2246267895856L);
            }
            wcd = this.mWirelessChargerDetector;
        }
        if (wcd != null) {
            wcd.dumpDebug(proto, 1146756268081L);
        }
        proto.flush();
    }

    private void incrementBootCount() {
        int count;
        synchronized (this.mLock) {
            try {
                count = Settings.Global.getInt(getContext().getContentResolver(), "boot_count");
            } catch (Settings.SettingNotFoundException e) {
                count = 0;
            }
            Settings.Global.putInt(getContext().getContentResolver(), "boot_count", count + 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static WorkSource copyWorkSource(WorkSource workSource) {
        if (workSource != null) {
            return new WorkSource(workSource);
        }
        return null;
    }

    final class BatteryReceiver extends BroadcastReceiver {
        BatteryReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (PowerManagerService.this.mLock) {
                PowerManagerService.this.handleBatteryStateChangedLocked();
            }
        }
    }

    private final class DreamReceiver extends BroadcastReceiver {
        private DreamReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (PowerManagerService.this.mLock) {
                PowerManagerService.this.scheduleSandmanLocked();
            }
        }
    }

    final class UserSwitchedReceiver extends BroadcastReceiver {
        UserSwitchedReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (PowerManagerService.this.mLock) {
                PowerManagerService.this.handleSettingsChangedLocked();
            }
        }
    }

    private final class DockReceiver extends BroadcastReceiver {
        private DockReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (PowerManagerService.this.mLock) {
                int dockState = intent.getIntExtra("android.intent.extra.DOCK_STATE", 0);
                if (PowerManagerService.this.mDockState != dockState) {
                    PowerManagerService.this.mDockState = dockState;
                    PowerManagerService.access$2076(PowerManagerService.this, 1024);
                    PowerManagerService.this.updatePowerStateLocked();
                }
            }
        }
    }

    private final class SettingsObserver extends ContentObserver {
        public SettingsObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            synchronized (PowerManagerService.this.mLock) {
                PowerManagerService.this.handleSettingsChangedLocked();
            }
        }
    }

    private final class PowerManagerHandlerCallback implements Handler.Callback {
        private PowerManagerHandlerCallback() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) {
            int i = msg.what;
            if (i == 1) {
                PowerManagerService.this.handleUserActivityTimeout();
            } else if (i == 2) {
                PowerManagerService.this.handleSandman();
            } else if (i == 3) {
                PowerManagerService.this.handleScreenBrightnessBoostTimeout();
            } else if (i == 4) {
                PowerManagerService.this.checkForLongWakeLocks();
            } else if (i == 5) {
                PowerManagerService.this.handleAttentiveTimeout();
            }
            return true;
        }
    }

    final class WakeLock implements IBinder.DeathRecipient {
        public long mAcquireTime;
        public boolean mDisabled;
        public int mFlags;
        public String mHistoryTag;
        public final IBinder mLock;
        public boolean mNotifiedAcquired;
        public boolean mNotifiedLong;
        public final int mOwnerPid;
        public final int mOwnerUid;
        public final String mPackageName;
        public String mTag;
        public final UidState mUidState;
        public WorkSource mWorkSource;

        public WakeLock(IBinder lock, int flags, String tag, String packageName, WorkSource workSource, String historyTag, int ownerUid, int ownerPid, UidState uidState) {
            this.mLock = lock;
            this.mFlags = flags;
            this.mTag = tag;
            this.mPackageName = packageName;
            this.mWorkSource = PowerManagerService.copyWorkSource(workSource);
            this.mHistoryTag = historyTag;
            this.mOwnerUid = ownerUid;
            this.mOwnerPid = ownerPid;
            this.mUidState = uidState;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            PowerManagerService.this.handleWakeLockDeath(this);
        }

        public boolean hasSameProperties(int flags, String tag, WorkSource workSource, int ownerUid, int ownerPid) {
            return this.mFlags == flags && this.mTag.equals(tag) && hasSameWorkSource(workSource) && this.mOwnerUid == ownerUid && this.mOwnerPid == ownerPid;
        }

        public void updateProperties(int flags, String tag, String packageName, WorkSource workSource, String historyTag, int ownerUid, int ownerPid) {
            if (!this.mPackageName.equals(packageName)) {
                throw new IllegalStateException("Existing wake lock package name changed: " + this.mPackageName + " to " + packageName);
            }
            if (this.mOwnerUid != ownerUid) {
                throw new IllegalStateException("Existing wake lock uid changed: " + this.mOwnerUid + " to " + ownerUid);
            }
            if (this.mOwnerPid != ownerPid) {
                throw new IllegalStateException("Existing wake lock pid changed: " + this.mOwnerPid + " to " + ownerPid);
            }
            this.mFlags = flags;
            this.mTag = tag;
            updateWorkSource(workSource);
            this.mHistoryTag = historyTag;
        }

        public boolean hasSameWorkSource(WorkSource workSource) {
            return Objects.equals(this.mWorkSource, workSource);
        }

        public void updateWorkSource(WorkSource workSource) {
            this.mWorkSource = PowerManagerService.copyWorkSource(workSource);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getLockLevelString());
            sb.append(" '");
            sb.append(this.mTag);
            sb.append("'");
            sb.append(getLockFlagsString());
            if (this.mDisabled) {
                sb.append(" DISABLED");
            }
            if (this.mNotifiedAcquired) {
                sb.append(" ACQ=");
                TimeUtils.formatDuration(this.mAcquireTime - PowerManagerService.this.mClock.uptimeMillis(), sb);
            }
            if (this.mNotifiedLong) {
                sb.append(" LONG");
            }
            sb.append(" (uid=");
            sb.append(this.mOwnerUid);
            if (this.mOwnerPid != 0) {
                sb.append(" pid=");
                sb.append(this.mOwnerPid);
            }
            if (this.mWorkSource != null) {
                sb.append(" ws=");
                sb.append(this.mWorkSource);
            }
            sb.append(")");
            return sb.toString();
        }

        public void dumpDebug(ProtoOutputStream proto, long fieldId) {
            long wakeLockToken = proto.start(fieldId);
            proto.write(1159641169921L, this.mFlags & 65535);
            proto.write(1138166333442L, this.mTag);
            long wakeLockFlagsToken = proto.start(1146756268035L);
            proto.write(1133871366145L, (this.mFlags & AudioFormat.EVRC) != 0);
            proto.write(1133871366146L, (this.mFlags & AudioFormat.APTX) != 0);
            proto.end(wakeLockFlagsToken);
            proto.write(1133871366148L, this.mDisabled);
            if (this.mNotifiedAcquired) {
                proto.write(1112396529669L, this.mAcquireTime);
            }
            proto.write(1133871366150L, this.mNotifiedLong);
            proto.write(1120986464263L, this.mOwnerUid);
            proto.write(1120986464264L, this.mOwnerPid);
            WorkSource workSource = this.mWorkSource;
            if (workSource != null) {
                workSource.dumpDebug(proto, 1146756268041L);
            }
            proto.end(wakeLockToken);
        }

        private String getLockLevelString() {
            int i = this.mFlags & 65535;
            if (i == 1) {
                return "PARTIAL_WAKE_LOCK             ";
            }
            if (i == 6) {
                return "SCREEN_DIM_WAKE_LOCK          ";
            }
            if (i == 10) {
                return "SCREEN_BRIGHT_WAKE_LOCK       ";
            }
            if (i == 26) {
                return "FULL_WAKE_LOCK                ";
            }
            if (i == 32) {
                return "PROXIMITY_SCREEN_OFF_WAKE_LOCK";
            }
            if (i == 64) {
                return "DOZE_WAKE_LOCK                ";
            }
            if (i == 128) {
                return "DRAW_WAKE_LOCK                ";
            }
            return "???                           ";
        }

        private String getLockFlagsString() {
            String result = "";
            if ((this.mFlags & AudioFormat.EVRC) != 0) {
                result = " ACQUIRE_CAUSES_WAKEUP";
            }
            if ((this.mFlags & AudioFormat.APTX) != 0) {
                return result + " ON_AFTER_RELEASE";
            }
            return result;
        }
    }

    private final class SuspendBlockerImpl implements SuspendBlocker {
        private final String mName;
        private int mReferenceCount;
        private final String mTraceName;

        public SuspendBlockerImpl(String name) {
            this.mName = name;
            this.mTraceName = "SuspendBlocker (" + name + ")";
        }

        protected void finalize() throws Throwable {
            try {
                if (this.mReferenceCount != 0) {
                    Slog.wtf(PowerManagerService.TAG, "Suspend blocker \"" + this.mName + "\" was finalized without being released!");
                    this.mReferenceCount = 0;
                    PowerManagerService.this.mNativeWrapper.nativeReleaseSuspendBlocker(this.mName);
                    Trace.asyncTraceEnd(131072L, this.mTraceName, 0);
                }
            } finally {
                super.finalize();
            }
        }

        @Override // com.android.server.power.SuspendBlocker
        public void acquire() {
            synchronized (this) {
                int i = this.mReferenceCount + 1;
                this.mReferenceCount = i;
                if (i == 1) {
                    Trace.asyncTraceBegin(131072L, this.mTraceName, 0);
                    PowerManagerService.this.mNativeWrapper.nativeAcquireSuspendBlocker(this.mName);
                }
            }
        }

        @Override // com.android.server.power.SuspendBlocker
        public void release() {
            synchronized (this) {
                int i = this.mReferenceCount - 1;
                this.mReferenceCount = i;
                if (i == 0) {
                    PowerManagerService.this.mNativeWrapper.nativeReleaseSuspendBlocker(this.mName);
                    Trace.asyncTraceEnd(131072L, this.mTraceName, 0);
                } else if (i < 0) {
                    Slog.wtf(PowerManagerService.TAG, "Suspend blocker \"" + this.mName + "\" was released without being acquired!", new Throwable());
                    this.mReferenceCount = 0;
                }
            }
        }

        public String toString() {
            String str;
            synchronized (this) {
                str = this.mName + ": ref count=" + this.mReferenceCount;
            }
            return str;
        }

        @Override // com.android.server.power.SuspendBlocker
        public void dumpDebug(ProtoOutputStream proto, long fieldId) {
            long sbToken = proto.start(fieldId);
            synchronized (this) {
                proto.write(1138166333441L, this.mName);
                proto.write(1120986464258L, this.mReferenceCount);
            }
            proto.end(sbToken);
        }
    }

    static final class UidState {
        boolean mActive;
        int mNumWakeLocks;
        int mProcState;
        final int mUid;

        UidState(int uid) {
            this.mUid = uid;
        }
    }

    final class BinderService extends IPowerManager.Stub {
        BinderService() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
            new PowerManagerShellCommand(this).exec(this, in, out, err, args, callback, resultReceiver);
        }

        public void acquireWakeLockWithUid(IBinder lock, int flags, String tag, String packageName, int uid) {
            if (uid < 0) {
                uid = Binder.getCallingUid();
            }
            acquireWakeLock(lock, flags, tag, packageName, new WorkSource(uid), null);
        }

        public void powerHint(int hintId, int data) {
            if (PowerManagerService.this.mSystemReady) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                PowerManagerService.this.powerHintInternal(hintId, data);
            }
        }

        public void setPowerBoost(int boost, int durationMs) {
            if (PowerManagerService.this.mSystemReady) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                PowerManagerService.this.setPowerBoostInternal(boost, durationMs);
            }
        }

        public void setPowerMode(int mode, boolean enabled) {
            if (PowerManagerService.this.mSystemReady) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                PowerManagerService.this.setPowerModeInternal(mode, enabled);
            }
        }

        public boolean setPowerModeChecked(int mode, boolean enabled) {
            if (PowerManagerService.this.mSystemReady) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                return PowerManagerService.this.setPowerModeInternal(mode, enabled);
            }
            return false;
        }

        public void acquireWakeLock(IBinder lock, int flags, String tag, String packageName, WorkSource ws, String historyTag) {
            WorkSource ws2;
            if (lock == null) {
                throw new IllegalArgumentException("lock must not be null");
            }
            if (packageName == null) {
                throw new IllegalArgumentException("packageName must not be null");
            }
            PowerManager.validateWakeLockParameters(flags, tag);
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.WAKE_LOCK", null);
            if ((flags & 64) != 0) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
            }
            if (ws != null && !ws.isEmpty()) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.UPDATE_DEVICE_STATS", null);
                ws2 = ws;
            } else {
                ws2 = null;
            }
            int uid = Binder.getCallingUid();
            int pid = Binder.getCallingPid();
            long ident = Binder.clearCallingIdentity();
            try {
                PowerManagerService.this.acquireWakeLockInternal(lock, flags, tag, packageName, ws2, historyTag, uid, pid);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void releaseWakeLock(IBinder lock, int flags) {
            if (lock != null) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.WAKE_LOCK", null);
                long ident = Binder.clearCallingIdentity();
                try {
                    PowerManagerService.this.releaseWakeLockInternal(lock, flags);
                    return;
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
            throw new IllegalArgumentException("lock must not be null");
        }

        public void updateWakeLockUids(IBinder lock, int[] uids) {
            WorkSource ws = null;
            if (uids != null) {
                ws = new WorkSource();
                for (int i : uids) {
                    ws.add(i);
                }
            }
            updateWakeLockWorkSource(lock, ws, null);
        }

        public void updateWakeLockWorkSource(IBinder lock, WorkSource ws, String historyTag) {
            if (lock != null) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.WAKE_LOCK", null);
                if (ws != null && !ws.isEmpty()) {
                    PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.UPDATE_DEVICE_STATS", null);
                } else {
                    ws = null;
                }
                int callingUid = Binder.getCallingUid();
                long ident = Binder.clearCallingIdentity();
                try {
                    PowerManagerService.this.updateWakeLockWorkSourceInternal(lock, ws, historyTag, callingUid);
                    return;
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
            throw new IllegalArgumentException("lock must not be null");
        }

        public boolean isWakeLockLevelSupported(int level) {
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.isWakeLockLevelSupportedInternal(level);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void userActivity(long eventTime, int event, int flags) {
            long now = PowerManagerService.this.mClock.uptimeMillis();
            if (PowerManagerService.this.mContext.checkCallingOrSelfPermission("android.permission.DEVICE_POWER") == 0 || PowerManagerService.this.mContext.checkCallingOrSelfPermission("android.permission.USER_ACTIVITY") == 0) {
                if (eventTime > now) {
                    throw new IllegalArgumentException("event time must not be in the future");
                }
                int uid = Binder.getCallingUid();
                long ident = Binder.clearCallingIdentity();
                try {
                    PowerManagerService.this.userActivityInternal(eventTime, event, flags, uid);
                    return;
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
            synchronized (PowerManagerService.this.mLock) {
                if (now >= PowerManagerService.this.mLastWarningAboutUserActivityPermission + BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS) {
                    PowerManagerService.this.mLastWarningAboutUserActivityPermission = now;
                    Slog.w(PowerManagerService.TAG, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER or USER_ACTIVITY permission.  Please fix your app!   pid=" + Binder.getCallingPid() + " uid=" + Binder.getCallingUid());
                }
            }
        }

        public void wakeUp(long eventTime, int reason, String details, String opPackageName) {
            if (eventTime <= PowerManagerService.this.mClock.uptimeMillis()) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                int uid = Binder.getCallingUid();
                long ident = Binder.clearCallingIdentity();
                try {
                    PowerManagerService.this.wakeUpInternal(eventTime, reason, details, uid, opPackageName, uid);
                    return;
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
            throw new IllegalArgumentException("event time must not be in the future");
        }

        public void goToSleep(long eventTime, int reason, int flags) {
            if (eventTime <= PowerManagerService.this.mClock.uptimeMillis()) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                int uid = Binder.getCallingUid();
                long ident = Binder.clearCallingIdentity();
                try {
                    PowerManagerService.this.goToSleepInternal(eventTime, reason, flags, uid);
                    return;
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
            throw new IllegalArgumentException("event time must not be in the future");
        }

        public void nap(long eventTime) {
            if (eventTime <= PowerManagerService.this.mClock.uptimeMillis()) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                int uid = Binder.getCallingUid();
                long ident = Binder.clearCallingIdentity();
                try {
                    PowerManagerService.this.napInternal(eventTime, uid);
                    return;
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
            throw new IllegalArgumentException("event time must not be in the future");
        }

        public float getBrightnessConstraint(int constraint) {
            switch (constraint) {
                case 0:
                    return PowerManagerService.this.mScreenBrightnessMinimum;
                case 1:
                    return PowerManagerService.this.mScreenBrightnessMaximum;
                case 2:
                    return PowerManagerService.this.mScreenBrightnessDefault;
                case 3:
                    return PowerManagerService.this.mScreenBrightnessDim;
                case 4:
                    return PowerManagerService.this.mScreenBrightnessDoze;
                case 5:
                    return PowerManagerService.this.mScreenBrightnessMinimumVr;
                case 6:
                    return PowerManagerService.this.mScreenBrightnessMaximumVr;
                case 7:
                    return PowerManagerService.this.mScreenBrightnessDefaultVr;
                default:
                    return Float.NaN;
            }
        }

        public boolean isInteractive() {
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.isInteractiveInternal();
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public boolean isPowerSaveMode() {
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.mBatterySaverController.isEnabled();
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public PowerSaveState getPowerSaveState(int serviceType) {
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.mBatterySaverPolicy.getBatterySaverPolicy(serviceType);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public boolean setPowerSaveModeEnabled(boolean enabled) {
            if (PowerManagerService.this.mContext.checkCallingOrSelfPermission("android.permission.POWER_SAVER") != 0) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
            }
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.setLowPowerModeInternal(enabled);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public boolean setDynamicPowerSaveHint(boolean powerSaveHint, int disableThreshold) {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.POWER_SAVER", "updateDynamicPowerSavings");
            long ident = Binder.clearCallingIdentity();
            try {
                ContentResolver resolver = PowerManagerService.this.mContext.getContentResolver();
                boolean success = Settings.Global.putInt(resolver, "dynamic_power_savings_disable_threshold", disableThreshold);
                if (success) {
                    success &= Settings.Global.putInt(resolver, "dynamic_power_savings_enabled", powerSaveHint ? 1 : 0);
                }
                return success;
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public boolean setAdaptivePowerSavePolicy(BatterySaverPolicyConfig config) {
            if (PowerManagerService.this.mContext.checkCallingOrSelfPermission("android.permission.POWER_SAVER") != 0) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", "setAdaptivePowerSavePolicy");
            }
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.mBatterySaverStateMachine.setAdaptiveBatterySaverPolicy(config);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public boolean setAdaptivePowerSaveEnabled(boolean enabled) {
            if (PowerManagerService.this.mContext.checkCallingOrSelfPermission("android.permission.POWER_SAVER") != 0) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", "setAdaptivePowerSaveEnabled");
            }
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.mBatterySaverStateMachine.setAdaptiveBatterySaverEnabled(enabled);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public int getPowerSaveModeTrigger() {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.POWER_SAVER", null);
            long ident = Binder.clearCallingIdentity();
            try {
                return Settings.Global.getInt(PowerManagerService.this.mContext.getContentResolver(), "automatic_power_save_mode", 0);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public boolean isDeviceIdleMode() {
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.isDeviceIdleModeInternal();
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public boolean isLightDeviceIdleMode() {
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.isLightDeviceIdleModeInternal();
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public int getLastShutdownReason() {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.getLastShutdownReasonInternal();
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public int getLastSleepReason() {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.getLastSleepReasonInternal();
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void reboot(boolean confirm, String reason, boolean wait) {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.REBOOT", null);
            if ("recovery".equals(reason) || "recovery-update".equals(reason)) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.RECOVERY", null);
            }
            Slog.d(PowerManagerService.TAG, "reboot, reason = " + reason + " caller pid: " + Binder.getCallingPid() + ", Caller uid: " + Binder.getCallingUid());
            long ident = Binder.clearCallingIdentity();
            try {
                PowerManagerService.this.shutdownOrRebootInternal(1, confirm, reason, wait);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void rebootSafeMode(boolean confirm, boolean wait) {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.REBOOT", null);
            Slog.d(PowerManagerService.TAG, "rebootSafeMode,  caller pid: " + Binder.getCallingPid() + ", Caller uid: " + Binder.getCallingUid());
            long ident = Binder.clearCallingIdentity();
            try {
                PowerManagerService.this.shutdownOrRebootInternal(2, confirm, "safemode", wait);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void shutdown(boolean confirm, String reason, boolean wait) {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.REBOOT", null);
            Slog.d(PowerManagerService.TAG, "shutdown, reason = " + reason + "Caller pid: " + Binder.getCallingPid() + ", Caller uid: " + Binder.getCallingUid());
            long ident = Binder.clearCallingIdentity();
            try {
                PowerManagerService.this.shutdownOrRebootInternal(0, confirm, reason, wait);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void crash(String message) {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.REBOOT", null);
            long ident = Binder.clearCallingIdentity();
            try {
                PowerManagerService.this.crashInternal(message);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void setStayOnSetting(int val) {
            int uid = Binder.getCallingUid();
            if (uid != 0 && !Settings.checkAndNoteWriteSettingsOperation(PowerManagerService.this.mContext, uid, Settings.getPackageNameForUid(PowerManagerService.this.mContext, uid), true)) {
                return;
            }
            long ident = Binder.clearCallingIdentity();
            try {
                PowerManagerService.this.setStayOnSettingInternal(val);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void setAttentionLight(boolean on, int color) {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
            long ident = Binder.clearCallingIdentity();
            try {
                PowerManagerService.this.setAttentionLightInternal(on, color);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void setDozeAfterScreenOff(boolean on) {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
            long ident = Binder.clearCallingIdentity();
            try {
                PowerManagerService.this.setDozeAfterScreenOffInternal(on);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public boolean isAmbientDisplayAvailable() {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.READ_DREAM_STATE", null);
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.mAmbientDisplayConfiguration.ambientDisplayAvailable();
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void suppressAmbientDisplay(String token, boolean suppress) {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.WRITE_DREAM_STATE", null);
            int uid = Binder.getCallingUid();
            long ident = Binder.clearCallingIdentity();
            try {
                PowerManagerService.this.mAmbientDisplaySuppressionController.suppress(token, uid, suppress);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public boolean isAmbientDisplaySuppressedForToken(String token) {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.READ_DREAM_STATE", null);
            int uid = Binder.getCallingUid();
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.mAmbientDisplaySuppressionController.isSuppressed(token, uid);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public boolean isAmbientDisplaySuppressedForTokenByApp(String token, int appUid) {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.READ_DREAM_STATE", null);
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.READ_DREAM_SUPPRESSION", null);
            long ident = Binder.clearCallingIdentity();
            try {
                return isAmbientDisplayAvailable() && PowerManagerService.this.mAmbientDisplaySuppressionController.isSuppressed(token, appUid);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public boolean isAmbientDisplaySuppressed() {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.READ_DREAM_STATE", null);
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.mAmbientDisplaySuppressionController.isSuppressed();
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public void boostScreenBrightness(long eventTime) {
            if (eventTime <= PowerManagerService.this.mClock.uptimeMillis()) {
                PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
                int uid = Binder.getCallingUid();
                long ident = Binder.clearCallingIdentity();
                try {
                    PowerManagerService.this.boostScreenBrightnessInternal(eventTime, uid);
                    return;
                } finally {
                    Binder.restoreCallingIdentity(ident);
                }
            }
            throw new IllegalArgumentException("event time must not be in the future");
        }

        public boolean isScreenBrightnessBoosted() {
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.isScreenBrightnessBoostedInternal();
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public boolean forceSuspend() {
            PowerManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
            int uid = Binder.getCallingUid();
            long ident = Binder.clearCallingIdentity();
            try {
                return PowerManagerService.this.forceSuspendInternal(uid);
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            if (DumpUtils.checkDumpPermission(PowerManagerService.this.mContext, PowerManagerService.TAG, pw)) {
                long ident = Binder.clearCallingIdentity();
                boolean isDumpProto = false;
                for (String arg : args) {
                    if (arg.equals(PriorityDump.PROTO_ARG)) {
                        isDumpProto = true;
                    }
                }
                try {
                    if (isDumpProto) {
                        PowerManagerService.this.dumpProto(fd);
                    } else {
                        PowerManagerService.this.dumpInternal(pw);
                    }
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            }
        }

        public boolean updateBackLightState(String backLightName, int state, int userHandle) {
            return PowerManagerService.this.updateBackLightStateInternal(backLightName, state, userHandle);
        }

        public boolean isWakeLockHeld(int package_uid, String wakelock_tag) {
            int numWakeLocks = PowerManagerService.this.mWakeLocks.size();
            for (int i = 0; i < numWakeLocks; i++) {
                WakeLock wakeLock = (WakeLock) PowerManagerService.this.mWakeLocks.get(i);
                if ((wakeLock.mFlags & 65535) == 1 && wakelock_tag.equals(wakeLock.mTag) && wakeLock.mWorkSource != null && package_uid == wakeLock.mWorkSource.getUid(0)) {
                    return true;
                }
            }
            return false;
        }
    }

    BinderService getBinderServiceInstance() {
        return this.mBinderService;
    }

    LocalService getLocalServiceInstance() {
        return this.mLocalService;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:23:0x005a  */
    int getLastShutdownReasonInternal() {
        byte b;
        String line = this.mSystemProperties.get(SYSTEM_PROPERTY_REBOOT_REASON, null);
        switch (line) {
            case "shutdown,thermal":
                b = 3;
                break;
            case "shutdown,battery":
                b = 4;
                break;
            case "reboot":
                b = 1;
                break;
            case "shutdown,userrequested":
                b = 2;
                break;
            case "shutdown":
                b = 0;
                break;
            case "shutdown,thermal,battery":
                b = 5;
                break;
            default:
                b = -1;
                break;
        }
        if (b == 0) {
            return 1;
        }
        if (b == 1) {
            return 2;
        }
        if (b == 2) {
            return 3;
        }
        if (b == 3) {
            return 4;
        }
        if (b != 4) {
            return b != 5 ? 0 : 6;
        }
        return 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLastSleepReasonInternal() {
        int i;
        synchronized (this.mLock) {
            i = this.mLastSleepReason;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PowerManager.WakeData getLastWakeupInternal() {
        PowerManager.WakeData wakeData;
        synchronized (this.mLock) {
            wakeData = new PowerManager.WakeData(this.mLastWakeTime, this.mLastWakeReason);
        }
        return wakeData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean interceptPowerKeyDownInternal(KeyEvent event) {
        synchronized (this.mLock) {
            if (this.mDisplayPowerRequest.useProximitySensor && this.mProximityPositive) {
                this.mDisplayManagerInternal.ignoreProximitySensorUntilChanged();
                return true;
            }
            return false;
        }
    }

    final class LocalService extends PowerManagerInternal {
        LocalService() {
        }

        public void setScreenBrightnessOverrideFromWindowManager(float screenBrightness, int displayId) {
            if (screenBrightness < 0.0f || screenBrightness > 1.0f) {
                screenBrightness = Float.NaN;
            }
            PowerManagerService.this.setScreenBrightnessOverrideFromWindowManagerInternal(screenBrightness, displayId);
        }

        public void setDozeOverrideFromDreamManager(int screenState, int screenBrightness) {
            switch (screenState) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    break;
                default:
                    screenState = 0;
                    break;
            }
            if (screenBrightness < -1 || screenBrightness > 255) {
                screenBrightness = -1;
            }
            PowerManagerService.this.setDozeOverrideFromDreamManagerInternal(screenState, screenBrightness);
        }

        public void setUserInactiveOverrideFromWindowManager() {
            PowerManagerService.this.setUserInactiveOverrideFromWindowManagerInternal();
        }

        public void setUserActivityTimeoutOverrideFromWindowManager(long timeoutMillis) {
            PowerManagerService.this.setUserActivityTimeoutOverrideFromWindowManagerInternal(timeoutMillis);
        }

        public void setDrawWakeLockOverrideFromSidekick(boolean keepState) {
            PowerManagerService.this.setDrawWakeLockOverrideFromSidekickInternal(keepState);
        }

        public void setMaximumScreenOffTimeoutFromDeviceAdmin(int userId, long timeMs) {
            PowerManagerService.this.setMaximumScreenOffTimeoutFromDeviceAdminInternal(userId, timeMs);
        }

        public PowerSaveState getLowPowerState(int serviceType) {
            return PowerManagerService.this.mBatterySaverPolicy.getBatterySaverPolicy(serviceType);
        }

        public void registerLowPowerModeObserver(PowerManagerInternal.LowPowerModeListener listener) {
            PowerManagerService.this.mBatterySaverController.addListener(listener);
        }

        public boolean setDeviceIdleMode(boolean enabled) {
            return PowerManagerService.this.setDeviceIdleModeInternal(enabled);
        }

        public boolean setLightDeviceIdleMode(boolean enabled) {
            return PowerManagerService.this.setLightDeviceIdleModeInternal(enabled);
        }

        public void setDeviceIdleWhitelist(int[] appids) {
            PowerManagerService.this.setDeviceIdleWhitelistInternal(appids);
        }

        public void setDeviceIdleTempWhitelist(int[] appids) {
            PowerManagerService.this.setDeviceIdleTempWhitelistInternal(appids);
        }

        public void startUidChanges() {
            PowerManagerService.this.startUidChangesInternal();
        }

        public void finishUidChanges() {
            PowerManagerService.this.finishUidChangesInternal();
        }

        public void updateUidProcState(int uid, int procState) {
            PowerManagerService.this.updateUidProcStateInternal(uid, procState);
        }

        public void uidGone(int uid) {
            PowerManagerService.this.uidGoneInternal(uid);
        }

        public void uidActive(int uid) {
            PowerManagerService.this.uidActiveInternal(uid);
        }

        public void uidIdle(int uid) {
            PowerManagerService.this.uidIdleInternal(uid);
        }

        public void powerHint(int hintId, int data) {
            PowerManagerService.this.powerHintInternal(hintId, data);
        }

        public void setPowerBoost(int boost, int durationMs) {
            PowerManagerService.this.setPowerBoostInternal(boost, durationMs);
        }

        public void setPowerMode(int mode, boolean enabled) {
            PowerManagerService.this.setPowerModeInternal(mode, enabled);
        }

        public boolean wasDeviceIdleFor(long ms) {
            return PowerManagerService.this.wasDeviceIdleForInternal(ms);
        }

        public PowerManager.WakeData getLastWakeup() {
            return PowerManagerService.this.getLastWakeupInternal();
        }

        public boolean interceptPowerKeyDown(KeyEvent event) {
            return PowerManagerService.this.interceptPowerKeyDownInternal(event);
        }
    }
}
