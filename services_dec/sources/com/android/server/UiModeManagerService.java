package com.android.server;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityTaskManager;
import android.app.AlarmManager;
import android.app.IApplicationThread;
import android.app.IUiModeManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.StatusBarManager;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.PowerManagerInternal;
import android.os.PowerSaveState;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.service.dreams.Sandman;
import android.service.vr.IVrManager;
import android.service.vr.IVrStateCallbacks;
import android.util.ArraySet;
import android.util.Slog;
import android.util.TimeUtils;
import com.android.internal.app.DisableCarModeActivity;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.util.DumpUtils;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.twilight.TwilightListener;
import com.android.server.twilight.TwilightManager;
import com.android.server.twilight.TwilightState;
import com.android.server.wm.WindowManagerInternal;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.time.DateTimeException;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneId;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
final class UiModeManagerService extends SystemService {
    private static final boolean ENABLE_LAUNCH_DESK_DOCK_APP = true;
    private static final boolean LOG = false;
    private static final String SYSTEM_PROPERTY_DEVICE_THEME = "persist.sys.theme";
    private static final String TAG = UiModeManager.class.getSimpleName();
    private final LocalTime DEFAULT_CUSTOM_NIGHT_END_TIME;
    private final LocalTime DEFAULT_CUSTOM_NIGHT_START_TIME;
    private AlarmManager mAlarmManager;
    private final BroadcastReceiver mBatteryReceiver;
    private boolean mCar;
    private int mCarModeEnableFlags;
    private boolean mCarModeEnabled;
    private boolean mCarModeKeepsScreenOn;
    private Map<Integer, String> mCarModePackagePriority;
    private boolean mCharging;
    private boolean mComputedNightMode;
    private Configuration mConfiguration;
    int mCurUiMode;
    private int mCurrentUser;
    private LocalTime mCustomAutoNightModeEndMilliseconds;
    private LocalTime mCustomAutoNightModeStartMilliseconds;
    private final AlarmManager.OnAlarmListener mCustomTimeListener;
    private final ContentObserver mDarkThemeObserver;
    private int mDefaultUiModeType;
    private boolean mDeskModeKeepsScreenOn;
    private final BroadcastReceiver mDockModeReceiver;
    private int mDockState;
    private boolean mEnableCarDockLaunch;
    private final Handler mHandler;
    private boolean mHoldingConfiguration;
    private int mLastBroadcastState;
    private PowerManagerInternal mLocalPowerManager;
    private final LocalService mLocalService;
    final Object mLock;
    private int mNightMode;
    private boolean mNightModeLocked;
    private NotificationManager mNotificationManager;
    private final BroadcastReceiver mOnScreenOffHandler;
    private final BroadcastReceiver mOnShutdown;
    private final BroadcastReceiver mOnTimeChangedHandler;
    private boolean mOverrideNightModeOff;
    private boolean mOverrideNightModeOn;
    private int mOverrideNightModeUser;
    private PowerManager mPowerManager;
    private boolean mPowerSave;
    private final BroadcastReceiver mResultReceiver;
    private final IUiModeManager.Stub mService;
    private int mSetUiMode;
    private final BroadcastReceiver mSettingsRestored;
    private boolean mSetupWizardComplete;
    private final ContentObserver mSetupWizardObserver;
    private StatusBarManager mStatusBarManager;
    boolean mSystemReady;
    private boolean mTelevision;
    private final TwilightListener mTwilightListener;
    private TwilightManager mTwilightManager;
    private boolean mUiModeLocked;
    private boolean mVrHeadset;
    private final IVrStateCallbacks mVrStateCallbacks;
    private boolean mWaitForScreenOff;
    private PowerManager.WakeLock mWakeLock;
    private boolean mWatch;
    private WindowManagerInternal mWindowManager;

    public UiModeManagerService(Context context) {
        super(context);
        this.mLock = new Object();
        this.mDockState = 0;
        this.mLastBroadcastState = 0;
        this.mNightMode = 1;
        this.DEFAULT_CUSTOM_NIGHT_START_TIME = LocalTime.of(22, 0);
        LocalTime localTimeOf = LocalTime.of(6, 0);
        this.DEFAULT_CUSTOM_NIGHT_END_TIME = localTimeOf;
        this.mCustomAutoNightModeStartMilliseconds = this.DEFAULT_CUSTOM_NIGHT_START_TIME;
        this.mCustomAutoNightModeEndMilliseconds = localTimeOf;
        this.mCarModePackagePriority = new HashMap();
        this.mCarModeEnabled = false;
        this.mCharging = false;
        this.mPowerSave = false;
        this.mWaitForScreenOff = false;
        this.mEnableCarDockLaunch = true;
        this.mUiModeLocked = false;
        this.mNightModeLocked = false;
        this.mCurUiMode = 0;
        this.mSetUiMode = 0;
        this.mHoldingConfiguration = false;
        this.mConfiguration = new Configuration();
        this.mHandler = new Handler();
        this.mOverrideNightModeUser = 0;
        this.mLocalService = new LocalService();
        this.mResultReceiver = new BroadcastReceiver() { // from class: com.android.server.UiModeManagerService.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (getResultCode() != -1) {
                    return;
                }
                int enableFlags = intent.getIntExtra("enableFlags", 0);
                int disableFlags = intent.getIntExtra("disableFlags", 0);
                synchronized (UiModeManagerService.this.mLock) {
                    UiModeManagerService.this.updateAfterBroadcastLocked(intent.getAction(), enableFlags, disableFlags);
                }
            }
        };
        this.mDockModeReceiver = new BroadcastReceiver() { // from class: com.android.server.UiModeManagerService.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                int state = intent.getIntExtra("android.intent.extra.DOCK_STATE", 0);
                UiModeManagerService.this.updateDockState(state);
            }
        };
        this.mBatteryReceiver = new BroadcastReceiver() { // from class: com.android.server.UiModeManagerService.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (((action.hashCode() == -1538406691 && action.equals("android.intent.action.BATTERY_CHANGED")) ? (byte) 0 : (byte) -1) == 0) {
                    UiModeManagerService.this.mCharging = intent.getIntExtra("plugged", 0) != 0;
                }
                synchronized (UiModeManagerService.this.mLock) {
                    if (UiModeManagerService.this.mSystemReady) {
                        UiModeManagerService.this.updateLocked(0, 0);
                    }
                }
            }
        };
        this.mTwilightListener = new TwilightListener() { // from class: com.android.server.UiModeManagerService.4
            @Override // com.android.server.twilight.TwilightListener
            public void onTwilightStateChanged(TwilightState state) {
                synchronized (UiModeManagerService.this.mLock) {
                    if (UiModeManagerService.this.mNightMode == 0 && UiModeManagerService.this.mSystemReady) {
                        if (!UiModeManagerService.this.shouldApplyAutomaticChangesImmediately()) {
                            UiModeManagerService.this.registerScreenOffEventLocked();
                        } else {
                            UiModeManagerService.this.updateLocked(0, 0);
                        }
                    }
                }
            }
        };
        this.mOnScreenOffHandler = new BroadcastReceiver() { // from class: com.android.server.UiModeManagerService.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                synchronized (UiModeManagerService.this.mLock) {
                    UiModeManagerService.this.unregisterScreenOffEventLocked();
                    UiModeManagerService.this.updateLocked(0, 0);
                }
            }
        };
        this.mOnTimeChangedHandler = new BroadcastReceiver() { // from class: com.android.server.UiModeManagerService.6
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                synchronized (UiModeManagerService.this.mLock) {
                    UiModeManagerService.this.updateCustomTimeLocked();
                }
            }
        };
        this.mCustomTimeListener = new AlarmManager.OnAlarmListener() { // from class: com.android.server.-$$Lambda$UiModeManagerService$AwUHdh7CYhroUMaGm35a4uvZcnY
            @Override // android.app.AlarmManager.OnAlarmListener
            public final void onAlarm() {
                this.f$0.lambda$new$0$UiModeManagerService();
            }
        };
        this.mVrStateCallbacks = new IVrStateCallbacks.Stub() { // from class: com.android.server.UiModeManagerService.7
            public void onVrStateChanged(boolean enabled) {
                synchronized (UiModeManagerService.this.mLock) {
                    UiModeManagerService.this.mVrHeadset = enabled;
                    if (UiModeManagerService.this.mSystemReady) {
                        UiModeManagerService.this.updateLocked(0, 0);
                    }
                }
            }
        };
        this.mSetupWizardObserver = new ContentObserver(this.mHandler) { // from class: com.android.server.UiModeManagerService.8
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange, Uri uri) {
                synchronized (UiModeManagerService.this.mLock) {
                    if (UiModeManagerService.this.setupWizardCompleteForCurrentUser() && !selfChange) {
                        UiModeManagerService.this.mSetupWizardComplete = true;
                        UiModeManagerService.this.getContext().getContentResolver().unregisterContentObserver(UiModeManagerService.this.mSetupWizardObserver);
                        Context context2 = UiModeManagerService.this.getContext();
                        UiModeManagerService.this.updateNightModeFromSettingsLocked(context2, context2.getResources(), UserHandle.getCallingUserId());
                        UiModeManagerService.this.updateLocked(0, 0);
                    }
                }
            }
        };
        this.mDarkThemeObserver = new ContentObserver(this.mHandler) { // from class: com.android.server.UiModeManagerService.9
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange, Uri uri) {
                UiModeManagerService.this.updateSystemProperties();
            }
        };
        this.mOnShutdown = new BroadcastReceiver() { // from class: com.android.server.UiModeManagerService.10
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (UiModeManagerService.this.mNightMode == 0) {
                    UiModeManagerService uiModeManagerService = UiModeManagerService.this;
                    uiModeManagerService.persistComputedNightMode(uiModeManagerService.mCurrentUser);
                }
            }
        };
        this.mSettingsRestored = new BroadcastReceiver() { // from class: com.android.server.UiModeManagerService.11
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                List<String> settings = Arrays.asList("ui_night_mode", "dark_theme_custom_start_time", "dark_theme_custom_end_time");
                if (settings.contains(intent.getExtras().getCharSequence("setting_name"))) {
                    synchronized (UiModeManagerService.this.mLock) {
                        UiModeManagerService.this.updateNightModeFromSettingsLocked(context2, context2.getResources(), UserHandle.getCallingUserId());
                        UiModeManagerService.this.updateConfigurationLocked();
                    }
                }
            }
        };
        this.mService = new AnonymousClass12();
        this.mConfiguration.setToDefaults();
    }

    protected UiModeManagerService(Context context, boolean setupWizardComplete, TwilightManager tm) {
        this(context);
        this.mSetupWizardComplete = setupWizardComplete;
        this.mTwilightManager = tm;
    }

    private static Intent buildHomeIntent(String category) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory(category);
        intent.setFlags(270532608);
        return intent;
    }

    public /* synthetic */ void lambda$new$0$UiModeManagerService() {
        synchronized (this.mLock) {
            updateCustomTimeLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSystemProperties() {
        int mode = Settings.Secure.getIntForUser(getContext().getContentResolver(), "ui_night_mode", this.mNightMode, 0);
        if (mode == 0 || mode == 3) {
            mode = 2;
        }
        SystemProperties.set(SYSTEM_PROPERTY_DEVICE_THEME, Integer.toString(mode));
    }

    @Override // com.android.server.SystemService
    public void onSwitchUser(int userHandle) {
        super.onSwitchUser(userHandle);
        this.mCurrentUser = userHandle;
        getContext().getContentResolver().unregisterContentObserver(this.mSetupWizardObserver);
        verifySetupWizardCompleted();
        synchronized (this.mLock) {
            if (updateNightModeFromSettingsLocked(getContext(), getContext().getResources(), this.mCurrentUser)) {
                updateLocked(0, 0);
            }
        }
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 500) {
            synchronized (this.mLock) {
                Context context = getContext();
                boolean z = true;
                this.mSystemReady = true;
                PowerManager powerManager = (PowerManager) context.getSystemService("power");
                this.mPowerManager = powerManager;
                this.mWakeLock = powerManager.newWakeLock(26, TAG);
                this.mWindowManager = (WindowManagerInternal) LocalServices.getService(WindowManagerInternal.class);
                this.mAlarmManager = (AlarmManager) getContext().getSystemService("alarm");
                TwilightManager twilightManager = (TwilightManager) getLocalService(TwilightManager.class);
                if (twilightManager != null) {
                    this.mTwilightManager = twilightManager;
                }
                this.mLocalPowerManager = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
                initPowerSave();
                if (this.mDockState != 2) {
                    z = false;
                }
                this.mCarModeEnabled = z;
                registerVrStateListener();
                context.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("ui_night_mode"), false, this.mDarkThemeObserver, 0);
                context.registerReceiver(this.mDockModeReceiver, new IntentFilter("android.intent.action.DOCK_EVENT"));
                IntentFilter batteryFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
                context.registerReceiver(this.mBatteryReceiver, batteryFilter);
                context.registerReceiver(this.mSettingsRestored, new IntentFilter("android.os.action.SETTING_RESTORED"));
                context.registerReceiver(this.mOnShutdown, new IntentFilter("android.intent.action.ACTION_SHUTDOWN"));
                updateConfigurationLocked();
                applyConfigurationExternallyLocked();
            }
        }
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        final Context context = getContext();
        verifySetupWizardCompleted();
        final Resources res = context.getResources();
        String nightModeProp = SystemProperties.get("persist.mega.daynight.mode", "-1");
        Slog.d(TAG, "nightModeProp :" + nightModeProp);
        if ("-1".equals(nightModeProp)) {
            this.mNightMode = res.getInteger(R.integer.config_customizedMaxCachedProcesses);
        } else {
            this.mNightMode = Integer.parseInt(nightModeProp);
        }
        Slog.d(TAG, "mNightMode :" + this.mNightMode);
        this.mDefaultUiModeType = res.getInteger(R.integer.config_defaultActionModeHideDurationMillis);
        this.mCarModeKeepsScreenOn = res.getInteger(R.integer.config_bluetooth_tx_cur_ma) == 1;
        this.mDeskModeKeepsScreenOn = res.getInteger(R.integer.config_defaultAnalogClockSecondsHandFps) == 1;
        this.mEnableCarDockLaunch = res.getBoolean(R.bool.config_cecPowerControlModeTvAndAudioSystem_allowed);
        this.mUiModeLocked = res.getBoolean(R.bool.config_cecQuerySadLpcmEnabled_default);
        this.mNightModeLocked = res.getBoolean(R.bool.config_cecQuerySadLpcmEnabled_allowed);
        PackageManager pm = context.getPackageManager();
        this.mTelevision = pm.hasSystemFeature("android.hardware.type.television") || pm.hasSystemFeature("android.software.leanback");
        this.mCar = pm.hasSystemFeature("android.hardware.type.automotive");
        this.mWatch = pm.hasSystemFeature("android.hardware.type.watch");
        SystemServerInitThreadPool.submit(new Runnable() { // from class: com.android.server.-$$Lambda$UiModeManagerService$LsJLdIbeoHmgOz46O-Ez9nmVZ2w
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onStart$1$UiModeManagerService(context, res);
            }
        }, TAG + ".onStart");
        publishBinderService("uimode", this.mService);
        publishLocalService(UiModeManagerInternal.class, this.mLocalService);
    }

    public /* synthetic */ void lambda$onStart$1$UiModeManagerService(Context context, Resources res) {
        synchronized (this.mLock) {
            TwilightManager twilightManager = (TwilightManager) getLocalService(TwilightManager.class);
            if (twilightManager != null) {
                this.mTwilightManager = twilightManager;
            }
            updateNightModeFromSettingsLocked(context, res, UserHandle.getCallingUserId());
            updateSystemProperties();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void persistComputedNightMode(int i) {
        Settings.Secure.putIntForUser(getContext().getContentResolver(), "ui_night_mode_last_computed", this.mComputedNightMode ? 1 : 0, i);
    }

    private void initPowerSave() {
        this.mPowerSave = this.mLocalPowerManager.getLowPowerState(16).batterySaverEnabled;
        this.mLocalPowerManager.registerLowPowerModeObserver(16, new Consumer() { // from class: com.android.server.-$$Lambda$UiModeManagerService$VLNn_GQ5Eu6ftBtzL1gH0sSXyCk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$initPowerSave$2$UiModeManagerService((PowerSaveState) obj);
            }
        });
    }

    public /* synthetic */ void lambda$initPowerSave$2$UiModeManagerService(PowerSaveState state) {
        synchronized (this.mLock) {
            if (this.mPowerSave == state.batterySaverEnabled) {
                return;
            }
            this.mPowerSave = state.batterySaverEnabled;
            if (this.mSystemReady) {
                updateLocked(0, 0);
            }
        }
    }

    protected IUiModeManager getService() {
        return this.mService;
    }

    protected Configuration getConfiguration() {
        return this.mConfiguration;
    }

    private void verifySetupWizardCompleted() {
        Context context = getContext();
        int userId = UserHandle.getCallingUserId();
        if (!setupWizardCompleteForCurrentUser()) {
            this.mSetupWizardComplete = false;
            context.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("user_setup_complete"), false, this.mSetupWizardObserver, userId);
        } else {
            this.mSetupWizardComplete = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setupWizardCompleteForCurrentUser() {
        return Settings.Secure.getIntForUser(getContext().getContentResolver(), "user_setup_complete", 0, UserHandle.getCallingUserId()) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCustomTimeLocked() {
        if (this.mNightMode != 3) {
            return;
        }
        if (shouldApplyAutomaticChangesImmediately()) {
            updateLocked(0, 0);
        } else {
            registerScreenOffEventLocked();
        }
        scheduleNextCustomTimeListener();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updateNightModeFromSettingsLocked(Context context, Resources res, int userId) {
        if (this.mCarModeEnabled || this.mCar) {
            return false;
        }
        int oldNightMode = this.mNightMode;
        if (this.mSetupWizardComplete) {
            this.mNightMode = Settings.Secure.getIntForUser(context.getContentResolver(), "ui_night_mode", this.mNightMode, userId);
            this.mOverrideNightModeOn = Settings.Secure.getIntForUser(context.getContentResolver(), "ui_night_mode_override_on", 0, userId) != 0;
            this.mOverrideNightModeOff = Settings.Secure.getIntForUser(context.getContentResolver(), "ui_night_mode_override_off", 0, userId) != 0;
            this.mCustomAutoNightModeStartMilliseconds = LocalTime.ofNanoOfDay(Settings.Secure.getLongForUser(context.getContentResolver(), "dark_theme_custom_start_time", this.DEFAULT_CUSTOM_NIGHT_START_TIME.toNanoOfDay() / 1000, userId) * 1000);
            this.mCustomAutoNightModeEndMilliseconds = LocalTime.ofNanoOfDay(Settings.Secure.getLongForUser(context.getContentResolver(), "dark_theme_custom_end_time", this.DEFAULT_CUSTOM_NIGHT_END_TIME.toNanoOfDay() / 1000, userId) * 1000);
            if (this.mNightMode == 0) {
                this.mComputedNightMode = Settings.Secure.getIntForUser(context.getContentResolver(), "ui_night_mode_last_computed", 0, userId) != 0;
            }
        }
        return oldNightMode != this.mNightMode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long toMilliSeconds(LocalTime t) {
        return t.toNanoOfDay() / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LocalTime fromMilliseconds(long t) {
        return LocalTime.ofNanoOfDay(1000 * t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerScreenOffEventLocked() {
        if (this.mPowerSave) {
            return;
        }
        this.mWaitForScreenOff = true;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        getContext().registerReceiver(this.mOnScreenOffHandler, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelCustomAlarm() {
        this.mAlarmManager.cancel(this.mCustomTimeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterScreenOffEventLocked() {
        this.mWaitForScreenOff = false;
        try {
            getContext().unregisterReceiver(this.mOnScreenOffHandler);
        } catch (IllegalArgumentException e) {
        }
    }

    private void registerTimeChangeEvent() {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        getContext().registerReceiver(this.mOnTimeChangedHandler, intentFilter);
    }

    private void unregisterTimeChangeEvent() {
        try {
            getContext().unregisterReceiver(this.mOnTimeChangedHandler);
        } catch (IllegalArgumentException e) {
        }
    }

    /* JADX INFO: renamed from: com.android.server.UiModeManagerService$12, reason: invalid class name */
    class AnonymousClass12 extends IUiModeManager.Stub {
        AnonymousClass12() {
        }

        public void enableCarMode(int flags, int priority, String callingPackage) {
            if (isUiModeLocked()) {
                Slog.e(UiModeManagerService.TAG, "enableCarMode while UI mode is locked");
                return;
            }
            if (priority != 0 && UiModeManagerService.this.getContext().checkCallingOrSelfPermission("android.permission.ENTER_CAR_MODE_PRIORITIZED") != 0) {
                throw new SecurityException("Enabling car mode with a priority requires permission ENTER_CAR_MODE_PRIORITIZED");
            }
            long ident = Binder.clearCallingIdentity();
            try {
                synchronized (UiModeManagerService.this.mLock) {
                    UiModeManagerService.this.setCarModeLocked(true, flags, priority, callingPackage);
                    if (UiModeManagerService.this.mSystemReady) {
                        UiModeManagerService.this.updateLocked(flags, 0);
                    }
                }
                Binder.restoreCallingIdentity(ident);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }

        public void disableCarMode(int flags) {
            disableCarModeByCallingPackage(flags, null);
        }

        public void disableCarModeByCallingPackage(int flags, final String callingPackage) {
            if (isUiModeLocked()) {
                Slog.e(UiModeManagerService.TAG, "disableCarMode while UI mode is locked");
                return;
            }
            boolean isSystemCaller = Binder.getCallingUid() == 1000;
            int carModeFlags = isSystemCaller ? flags : flags & (-3);
            long ident = Binder.clearCallingIdentity();
            try {
                synchronized (UiModeManagerService.this.mLock) {
                    int priority = ((Integer) UiModeManagerService.this.mCarModePackagePriority.entrySet().stream().filter(new Predicate() { // from class: com.android.server.-$$Lambda$UiModeManagerService$12$Xi1gUnGoioGa9D6d3pwVpjrnEDY
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return ((String) ((Map.Entry) obj).getValue()).equals(callingPackage);
                        }
                    }).findFirst().map(new Function() { // from class: com.android.server.-$$Lambda$htemI6hNv3kq1UVGrXpRlPIVXRU
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return (Integer) ((Map.Entry) obj).getKey();
                        }
                    }).orElse(0)).intValue();
                    UiModeManagerService.this.setCarModeLocked(false, carModeFlags, priority, callingPackage);
                    if (UiModeManagerService.this.mSystemReady) {
                        UiModeManagerService.this.updateLocked(0, flags);
                    }
                }
                Binder.restoreCallingIdentity(ident);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }

        public int getCurrentModeType() {
            int i;
            long ident = Binder.clearCallingIdentity();
            try {
                synchronized (UiModeManagerService.this.mLock) {
                    i = UiModeManagerService.this.mCurUiMode & 15;
                }
                Binder.restoreCallingIdentity(ident);
                return i;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }

        public void setNightMode(int mode) {
            if (isNightModeLocked() && UiModeManagerService.this.getContext().checkCallingOrSelfPermission("android.permission.MODIFY_DAY_NIGHT_MODE") != 0) {
                Slog.e(UiModeManagerService.TAG, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission");
                return;
            }
            if (mode != 0 && mode != 1 && mode != 2 && mode != 3) {
                throw new IllegalArgumentException("Unknown mode: " + mode);
            }
            int user = UserHandle.getCallingUserId();
            long ident = Binder.clearCallingIdentity();
            try {
                synchronized (UiModeManagerService.this.mLock) {
                    if (UiModeManagerService.this.mNightMode != mode) {
                        if (UiModeManagerService.this.mNightMode == 0 || UiModeManagerService.this.mNightMode == 3) {
                            UiModeManagerService.this.unregisterScreenOffEventLocked();
                            UiModeManagerService.this.cancelCustomAlarm();
                        }
                        UiModeManagerService.this.mNightMode = mode;
                        UiModeManagerService.this.resetNightModeOverrideLocked();
                        UiModeManagerService.this.persistNightMode(user);
                        if ((UiModeManagerService.this.mNightMode == 0 || UiModeManagerService.this.mNightMode == 3) && !UiModeManagerService.this.shouldApplyAutomaticChangesImmediately()) {
                            UiModeManagerService.this.registerScreenOffEventLocked();
                        } else {
                            UiModeManagerService.this.unregisterScreenOffEventLocked();
                            UiModeManagerService.this.updateLocked(0, 0);
                        }
                    }
                }
                Binder.restoreCallingIdentity(ident);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }

        public int getNightMode() {
            int i;
            synchronized (UiModeManagerService.this.mLock) {
                i = UiModeManagerService.this.mNightMode;
            }
            return i;
        }

        public boolean isUiModeLocked() {
            boolean z;
            synchronized (UiModeManagerService.this.mLock) {
                z = UiModeManagerService.this.mUiModeLocked;
            }
            return z;
        }

        public boolean isNightModeLocked() {
            boolean z;
            synchronized (UiModeManagerService.this.mLock) {
                z = UiModeManagerService.this.mNightModeLocked;
            }
            return z;
        }

        public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
            new Shell(UiModeManagerService.this.mService).exec(UiModeManagerService.this.mService, in, out, err, args, callback, resultReceiver);
        }

        protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            if (DumpUtils.checkDumpPermission(UiModeManagerService.this.getContext(), UiModeManagerService.TAG, pw)) {
                UiModeManagerService.this.dumpImpl(pw);
            }
        }

        public boolean setNightModeActivated(boolean active) {
            if (isNightModeLocked() && UiModeManagerService.this.getContext().checkCallingOrSelfPermission("android.permission.MODIFY_DAY_NIGHT_MODE") != 0) {
                Slog.e(UiModeManagerService.TAG, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission");
                return false;
            }
            int user = Binder.getCallingUserHandle().getIdentifier();
            if (user != UiModeManagerService.this.mCurrentUser && UiModeManagerService.this.getContext().checkCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS") != 0) {
                Slog.e(UiModeManagerService.TAG, "Target user is not current user, INTERACT_ACROSS_USERS permission is required");
                return false;
            }
            synchronized (UiModeManagerService.this.mLock) {
                long ident = Binder.clearCallingIdentity();
                Slog.i(UiModeManagerService.TAG, "NightMode :" + UiModeManagerService.this.mNightMode + " active : " + active);
                try {
                    if (UiModeManagerService.this.mNightMode == 0 || UiModeManagerService.this.mNightMode == 3) {
                        UiModeManagerService.this.unregisterScreenOffEventLocked();
                        UiModeManagerService.this.mOverrideNightModeOff = active ? false : true;
                        UiModeManagerService.this.mOverrideNightModeOn = active;
                        UiModeManagerService.this.mOverrideNightModeUser = UiModeManagerService.this.mCurrentUser;
                        UiModeManagerService.this.persistNightModeOverrides(UiModeManagerService.this.mCurrentUser);
                    } else if (UiModeManagerService.this.mNightMode != 1 || !active) {
                        if (UiModeManagerService.this.mNightMode == 2 && !active) {
                            UiModeManagerService.this.mNightMode = 1;
                        }
                    } else {
                        UiModeManagerService.this.mNightMode = 2;
                    }
                    UiModeManagerService.this.updateConfigurationLocked();
                    UiModeManagerService.this.applyConfigurationExternallyLocked();
                    UiModeManagerService.this.persistNightMode(UiModeManagerService.this.mCurrentUser);
                    Binder.restoreCallingIdentity(ident);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(ident);
                    throw th;
                }
            }
            return true;
        }

        public long getCustomNightModeStart() {
            return UiModeManagerService.this.mCustomAutoNightModeStartMilliseconds.toNanoOfDay() / 1000;
        }

        public void setCustomNightModeStart(long time) {
            if (isNightModeLocked() && UiModeManagerService.this.getContext().checkCallingOrSelfPermission("android.permission.MODIFY_DAY_NIGHT_MODE") != 0) {
                Slog.e(UiModeManagerService.TAG, "Set custom time start, requires MODIFY_DAY_NIGHT_MODE permission");
                return;
            }
            int user = UserHandle.getCallingUserId();
            long ident = Binder.clearCallingIdentity();
            try {
                try {
                    LocalTime newTime = LocalTime.ofNanoOfDay(1000 * time);
                    if (newTime == null) {
                        return;
                    }
                    UiModeManagerService.this.mCustomAutoNightModeStartMilliseconds = newTime;
                    UiModeManagerService.this.persistNightMode(user);
                    UiModeManagerService.this.onCustomTimeUpdated(user);
                } catch (DateTimeException e) {
                    UiModeManagerService.this.unregisterScreenOffEventLocked();
                }
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }

        public long getCustomNightModeEnd() {
            return UiModeManagerService.this.mCustomAutoNightModeEndMilliseconds.toNanoOfDay() / 1000;
        }

        public void setCustomNightModeEnd(long time) {
            if (isNightModeLocked() && UiModeManagerService.this.getContext().checkCallingOrSelfPermission("android.permission.MODIFY_DAY_NIGHT_MODE") != 0) {
                Slog.e(UiModeManagerService.TAG, "Set custom time end, requires MODIFY_DAY_NIGHT_MODE permission");
                return;
            }
            int user = UserHandle.getCallingUserId();
            long ident = Binder.clearCallingIdentity();
            try {
                try {
                    LocalTime newTime = LocalTime.ofNanoOfDay(1000 * time);
                    if (newTime == null) {
                        return;
                    }
                    UiModeManagerService.this.mCustomAutoNightModeEndMilliseconds = newTime;
                    UiModeManagerService.this.onCustomTimeUpdated(user);
                } catch (DateTimeException e) {
                    UiModeManagerService.this.unregisterScreenOffEventLocked();
                }
            } finally {
                Binder.restoreCallingIdentity(ident);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCustomTimeUpdated(int user) {
        persistNightMode(user);
        if (this.mNightMode != 3) {
            return;
        }
        if (shouldApplyAutomaticChangesImmediately()) {
            unregisterScreenOffEventLocked();
            updateLocked(0, 0);
        } else {
            registerScreenOffEventLocked();
        }
    }

    void dumpImpl(PrintWriter pw) {
        synchronized (this.mLock) {
            pw.println("Current UI Mode Service state:");
            pw.print("  mDockState=");
            pw.print(this.mDockState);
            pw.print(" mLastBroadcastState=");
            pw.println(this.mLastBroadcastState);
            pw.print("  mNightMode=");
            pw.print(this.mNightMode);
            pw.print(" (");
            pw.print(Shell.nightModeToStr(this.mNightMode));
            pw.print(") ");
            pw.print(" mOverrideOn/Off=");
            pw.print(this.mOverrideNightModeOn);
            pw.print(SliceClientPermissions.SliceAuthority.DELIMITER);
            pw.print(this.mOverrideNightModeOff);
            pw.print(" mNightModeLocked=");
            pw.println(this.mNightModeLocked);
            pw.print("  mCarModeEnabled=");
            pw.print(this.mCarModeEnabled);
            pw.print(" (carModeApps=");
            for (Map.Entry<Integer, String> entry : this.mCarModePackagePriority.entrySet()) {
                pw.print(entry.getKey());
                pw.print(":");
                pw.print(entry.getValue());
                pw.print(" ");
            }
            pw.println("");
            pw.print(" waitScreenOff=");
            pw.print(this.mWaitForScreenOff);
            pw.print(" mComputedNightMode=");
            pw.print(this.mComputedNightMode);
            pw.print(" customStart=");
            pw.print(this.mCustomAutoNightModeStartMilliseconds);
            pw.print(" customEnd");
            pw.print(this.mCustomAutoNightModeEndMilliseconds);
            pw.print(" mCarModeEnableFlags=");
            pw.print(this.mCarModeEnableFlags);
            pw.print(" mEnableCarDockLaunch=");
            pw.println(this.mEnableCarDockLaunch);
            pw.print("  mCurUiMode=0x");
            pw.print(Integer.toHexString(this.mCurUiMode));
            pw.print(" mUiModeLocked=");
            pw.print(this.mUiModeLocked);
            pw.print(" mSetUiMode=0x");
            pw.println(Integer.toHexString(this.mSetUiMode));
            pw.print("  mHoldingConfiguration=");
            pw.print(this.mHoldingConfiguration);
            pw.print(" mSystemReady=");
            pw.println(this.mSystemReady);
            if (this.mTwilightManager != null) {
                pw.print("  mTwilightService.getLastTwilightState()=");
                pw.println(this.mTwilightManager.getLastTwilightState());
            }
        }
    }

    void setCarModeLocked(boolean enabled, int flags, int priority, String packageName) {
        if (enabled) {
            enableCarMode(priority, packageName);
        } else {
            disableCarMode(flags, priority, packageName);
        }
        boolean isCarModeNowEnabled = isCarModeEnabled();
        if (this.mCarModeEnabled != isCarModeNowEnabled) {
            this.mCarModeEnabled = isCarModeNowEnabled;
            if (!isCarModeNowEnabled) {
                Context context = getContext();
                updateNightModeFromSettingsLocked(context, context.getResources(), UserHandle.getCallingUserId());
            }
        }
        this.mCarModeEnableFlags = flags;
    }

    private void disableCarMode(int flags, int priority, String packageName) {
        boolean isChangeAllowed = true;
        boolean isDisableAll = (flags & 2) != 0;
        boolean isPriorityTracked = this.mCarModePackagePriority.keySet().contains(Integer.valueOf(priority));
        boolean isDefaultPriority = priority == 0;
        if (!isDefaultPriority && ((!isPriorityTracked || !this.mCarModePackagePriority.get(Integer.valueOf(priority)).equals(packageName)) && !isDisableAll)) {
            isChangeAllowed = false;
        }
        if (isChangeAllowed) {
            Slog.d(TAG, "disableCarMode: disabling, priority=" + priority + ", packageName=" + packageName);
            if (isDisableAll) {
                Set<Map.Entry<Integer, String>> entries = new ArraySet<>(this.mCarModePackagePriority.entrySet());
                this.mCarModePackagePriority.clear();
                for (Map.Entry<Integer, String> entry : entries) {
                    notifyCarModeDisabled(entry.getKey().intValue(), entry.getValue());
                }
                return;
            }
            this.mCarModePackagePriority.remove(Integer.valueOf(priority));
            notifyCarModeDisabled(priority, packageName);
        }
    }

    private void enableCarMode(int priority, String packageName) {
        boolean isPriorityTracked = this.mCarModePackagePriority.containsKey(Integer.valueOf(priority));
        boolean isPackagePresent = this.mCarModePackagePriority.containsValue(packageName);
        if (!isPriorityTracked && !isPackagePresent) {
            Slog.d(TAG, "enableCarMode: enabled at priority=" + priority + ", packageName=" + packageName);
            this.mCarModePackagePriority.put(Integer.valueOf(priority), packageName);
            notifyCarModeEnabled(priority, packageName);
            return;
        }
        Slog.d(TAG, "enableCarMode: car mode at priority " + priority + " already enabled.");
    }

    private void notifyCarModeEnabled(int priority, String packageName) {
        Intent intent = new Intent("android.app.action.ENTER_CAR_MODE_PRIORITIZED");
        intent.putExtra("android.app.extra.CALLING_PACKAGE", packageName);
        intent.putExtra("android.app.extra.PRIORITY", priority);
        getContext().sendBroadcastAsUser(intent, UserHandle.ALL, "android.permission.HANDLE_CAR_MODE_CHANGES");
    }

    private void notifyCarModeDisabled(int priority, String packageName) {
        Intent intent = new Intent("android.app.action.EXIT_CAR_MODE_PRIORITIZED");
        intent.putExtra("android.app.extra.CALLING_PACKAGE", packageName);
        intent.putExtra("android.app.extra.PRIORITY", priority);
        getContext().sendBroadcastAsUser(intent, UserHandle.ALL, "android.permission.HANDLE_CAR_MODE_CHANGES");
    }

    private boolean isCarModeEnabled() {
        return this.mCarModePackagePriority.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDockState(int newState) {
        synchronized (this.mLock) {
            if (newState != this.mDockState) {
                this.mDockState = newState;
                setCarModeLocked(newState == 2, 0, 0, "");
                if (this.mSystemReady) {
                    updateLocked(1, 0);
                }
            }
        }
    }

    private static boolean isDeskDockState(int state) {
        if (state == 1 || state == 3 || state == 4) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void persistNightMode(int user) {
        if (this.mCarModeEnabled || this.mCar) {
            return;
        }
        Settings.Secure.putIntForUser(getContext().getContentResolver(), "ui_night_mode", this.mNightMode, user);
        Settings.Secure.putLongForUser(getContext().getContentResolver(), "dark_theme_custom_start_time", this.mCustomAutoNightModeStartMilliseconds.toNanoOfDay() / 1000, user);
        Settings.Secure.putLongForUser(getContext().getContentResolver(), "dark_theme_custom_end_time", this.mCustomAutoNightModeEndMilliseconds.toNanoOfDay() / 1000, user);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void persistNightModeOverrides(int i) {
        if (this.mCarModeEnabled || this.mCar) {
            return;
        }
        Settings.Secure.putIntForUser(getContext().getContentResolver(), "ui_night_mode_override_on", this.mOverrideNightModeOn ? 1 : 0, i);
        Settings.Secure.putIntForUser(getContext().getContentResolver(), "ui_night_mode_override_off", this.mOverrideNightModeOff ? 1 : 0, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateConfigurationLocked() {
        int uiMode;
        int uiMode2 = this.mDefaultUiModeType;
        if (!this.mUiModeLocked) {
            if (this.mTelevision) {
                uiMode2 = 4;
            } else if (this.mWatch) {
                uiMode2 = 6;
            } else if (this.mCarModeEnabled) {
                uiMode2 = 3;
            } else if (isDeskDockState(this.mDockState)) {
                uiMode2 = 2;
            } else if (this.mVrHeadset) {
                uiMode2 = 7;
            }
        }
        int i = this.mNightMode;
        if (i == 2 || i == 1) {
            updateComputedNightModeLocked(this.mNightMode == 2);
        }
        if (this.mNightMode == 0) {
            boolean activateNightMode = this.mComputedNightMode;
            TwilightManager twilightManager = this.mTwilightManager;
            if (twilightManager != null) {
                twilightManager.registerListener(this.mTwilightListener, this.mHandler);
                TwilightState lastState = this.mTwilightManager.getLastTwilightState();
                activateNightMode = lastState == null ? this.mComputedNightMode : lastState.isNight();
            }
            updateComputedNightModeLocked(activateNightMode);
        } else {
            TwilightManager twilightManager2 = this.mTwilightManager;
            if (twilightManager2 != null) {
                twilightManager2.unregisterListener(this.mTwilightListener);
            }
        }
        if (this.mNightMode == 3) {
            registerTimeChangeEvent();
            boolean activate = computeCustomNightMode();
            updateComputedNightModeLocked(activate);
            scheduleNextCustomTimeListener();
        } else {
            unregisterTimeChangeEvent();
        }
        if (this.mPowerSave && !this.mCarModeEnabled && !this.mCar) {
            uiMode = (uiMode2 & (-17)) | 32;
        } else {
            uiMode = getComputedUiModeConfiguration(uiMode2);
        }
        this.mCurUiMode = uiMode;
        if (this.mHoldingConfiguration) {
            return;
        }
        if (!this.mWaitForScreenOff || this.mPowerSave) {
            this.mConfiguration.uiMode = uiMode;
        }
    }

    private int getComputedUiModeConfiguration(int uiMode) {
        return (uiMode | (this.mComputedNightMode ? 32 : 16)) & (this.mComputedNightMode ? -17 : -33);
    }

    private boolean computeCustomNightMode() {
        return TimeUtils.isTimeBetween(LocalTime.now(), this.mCustomAutoNightModeStartMilliseconds, this.mCustomAutoNightModeEndMilliseconds);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyConfigurationExternallyLocked() {
        if (this.mSetUiMode != this.mConfiguration.uiMode) {
            this.mSetUiMode = this.mConfiguration.uiMode;
            this.mWindowManager.clearSnapshotCache();
            try {
                ActivityTaskManager.getService().updateConfiguration(this.mConfiguration);
            } catch (RemoteException e) {
                Slog.w(TAG, "Failure communicating with activity manager", e);
            } catch (SecurityException e2) {
                Slog.e(TAG, "Activity does not have the ", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldApplyAutomaticChangesImmediately() {
        return this.mCar || !this.mPowerManager.isInteractive();
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [java.time.ZonedDateTime] */
    private void scheduleNextCustomTimeListener() {
        LocalDateTime next;
        cancelCustomAlarm();
        LocalDateTime now = LocalDateTime.now();
        boolean active = computeCustomNightMode();
        if (active) {
            next = getDateTimeAfter(this.mCustomAutoNightModeEndMilliseconds, now);
        } else {
            next = getDateTimeAfter(this.mCustomAutoNightModeStartMilliseconds, now);
        }
        long millis = next.atZone(ZoneId.systemDefault()).toInstant().toEpochMilli();
        this.mAlarmManager.setExact(1, millis, TAG, this.mCustomTimeListener, null);
    }

    private LocalDateTime getDateTimeAfter(LocalTime localTime, LocalDateTime compareTime) {
        LocalDateTime ldt = LocalDateTime.of(compareTime.toLocalDate(), localTime);
        return ldt.isBefore(compareTime) ? ldt.plusDays(1L) : ldt;
    }

    void updateLocked(int enableFlags, int disableFlags) {
        String action = null;
        String oldAction = null;
        int i = this.mLastBroadcastState;
        if (i == 2) {
            adjustStatusBarCarModeLocked();
            oldAction = UiModeManager.ACTION_EXIT_CAR_MODE;
        } else if (isDeskDockState(i)) {
            oldAction = UiModeManager.ACTION_EXIT_DESK_MODE;
        }
        boolean z = false;
        if (this.mCarModeEnabled) {
            if (this.mLastBroadcastState != 2) {
                adjustStatusBarCarModeLocked();
                if (oldAction != null) {
                    sendForegroundBroadcastToAllUsers(oldAction);
                }
                this.mLastBroadcastState = 2;
                action = UiModeManager.ACTION_ENTER_CAR_MODE;
            }
        } else if (isDeskDockState(this.mDockState)) {
            if (!isDeskDockState(this.mLastBroadcastState)) {
                if (oldAction != null) {
                    sendForegroundBroadcastToAllUsers(oldAction);
                }
                this.mLastBroadcastState = this.mDockState;
                action = UiModeManager.ACTION_ENTER_DESK_MODE;
            }
        } else {
            this.mLastBroadcastState = 0;
            action = oldAction;
        }
        if (action != null) {
            Intent intent = new Intent(action);
            intent.putExtra("enableFlags", enableFlags);
            intent.putExtra("disableFlags", disableFlags);
            intent.addFlags(AudioFormat.EVRC);
            getContext().sendOrderedBroadcastAsUser(intent, UserHandle.CURRENT, null, this.mResultReceiver, null, -1, null, null);
            this.mHoldingConfiguration = true;
            updateConfigurationLocked();
        } else {
            String category = null;
            if (this.mCarModeEnabled) {
                if (this.mEnableCarDockLaunch && (enableFlags & 1) != 0) {
                    category = "android.intent.category.CAR_DOCK";
                }
            } else if (isDeskDockState(this.mDockState)) {
                if ((enableFlags & 1) != 0) {
                    category = "android.intent.category.DESK_DOCK";
                }
            } else if ((disableFlags & 1) != 0) {
                category = "android.intent.category.HOME";
            }
            sendConfigurationAndStartDreamOrDockAppLocked(category);
        }
        if (this.mCharging && ((this.mCarModeEnabled && this.mCarModeKeepsScreenOn && (this.mCarModeEnableFlags & 2) == 0) || (this.mCurUiMode == 2 && this.mDeskModeKeepsScreenOn))) {
            z = true;
        }
        boolean keepScreenOn = z;
        if (keepScreenOn != this.mWakeLock.isHeld()) {
            if (keepScreenOn) {
                this.mWakeLock.acquire();
            } else {
                this.mWakeLock.release();
            }
        }
    }

    private void sendForegroundBroadcastToAllUsers(String action) {
        getContext().sendBroadcastAsUser(new Intent(action).addFlags(AudioFormat.EVRC), UserHandle.ALL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAfterBroadcastLocked(String action, int enableFlags, int disableFlags) {
        String category = null;
        if (UiModeManager.ACTION_ENTER_CAR_MODE.equals(action)) {
            if (this.mEnableCarDockLaunch && (enableFlags & 1) != 0) {
                category = "android.intent.category.CAR_DOCK";
            }
        } else if (UiModeManager.ACTION_ENTER_DESK_MODE.equals(action)) {
            if ((enableFlags & 1) != 0) {
                category = "android.intent.category.DESK_DOCK";
            }
        } else if ((disableFlags & 1) != 0) {
            category = "android.intent.category.HOME";
        }
        sendConfigurationAndStartDreamOrDockAppLocked(category);
    }

    private void sendConfigurationAndStartDreamOrDockAppLocked(String category) {
        Intent homeIntent;
        this.mHoldingConfiguration = false;
        updateConfigurationLocked();
        boolean dockAppStarted = false;
        if (category != null) {
            Intent homeIntent2 = buildHomeIntent(category);
            if (Sandman.shouldStartDockApp(getContext(), homeIntent2)) {
                try {
                    try {
                        int result = ActivityTaskManager.getService().startActivityWithConfig((IApplicationThread) null, getContext().getBasePackageName(), getContext().getAttributionTag(), homeIntent2, (String) null, (IBinder) null, (String) null, 0, 0, this.mConfiguration, (Bundle) null, -2);
                        if (ActivityManager.isStartResultSuccessful(result)) {
                            dockAppStarted = true;
                        } else if (result != -91) {
                            String str = TAG;
                            StringBuilder sb = new StringBuilder();
                            sb.append("Could not start dock app: ");
                            homeIntent = homeIntent2;
                            try {
                                sb.append(homeIntent);
                                sb.append(", startActivityWithConfig result ");
                                sb.append(result);
                                Slog.e(str, sb.toString());
                            } catch (RemoteException e) {
                                ex = e;
                                Slog.e(TAG, "Could not start dock app: " + homeIntent, ex);
                            }
                        }
                    } catch (RemoteException e2) {
                        ex = e2;
                        homeIntent = homeIntent2;
                    }
                } catch (RemoteException e3) {
                    ex = e3;
                    homeIntent = homeIntent2;
                }
            }
        }
        applyConfigurationExternallyLocked();
        if (category != null && !dockAppStarted) {
            Sandman.startDreamWhenDockedIfAppropriate(getContext());
        }
    }

    private void adjustStatusBarCarModeLocked() {
        int i;
        Context context = getContext();
        if (this.mStatusBarManager == null) {
            this.mStatusBarManager = (StatusBarManager) context.getSystemService("statusbar");
        }
        StatusBarManager statusBarManager = this.mStatusBarManager;
        if (statusBarManager != null) {
            if (this.mCarModeEnabled) {
                i = 524288;
            } else {
                i = 0;
            }
            statusBarManager.disable(i);
        }
        if (this.mNotificationManager == null) {
            this.mNotificationManager = (NotificationManager) context.getSystemService("notification");
        }
        NotificationManager notificationManager = this.mNotificationManager;
        if (notificationManager != null) {
            if (this.mCarModeEnabled) {
                Intent carModeOffIntent = new Intent(context, (Class<?>) DisableCarModeActivity.class);
                Notification.Builder n = new Notification.Builder(context, SystemNotificationChannels.CAR_MODE).setSmallIcon(R.drawable.pointer_wait_28).setDefaults(4).setOngoing(true).setWhen(0L).setColor(context.getColor(R.color.system_notification_accent_color)).setContentTitle(context.getString(R.string.config_customResolverActivity)).setContentText(context.getString(R.string.config_customCountryDetector)).setContentIntent(PendingIntent.getActivityAsUser(context, 0, carModeOffIntent, 0, null, UserHandle.CURRENT));
                this.mNotificationManager.notifyAsUser(null, 10, n.build(), UserHandle.ALL);
                return;
            }
            notificationManager.cancelAsUser(null, 10, UserHandle.ALL);
        }
    }

    private void updateComputedNightModeLocked(boolean activate) {
        this.mComputedNightMode = activate;
        int i = this.mNightMode;
        if (i == 2 || i == 1) {
            return;
        }
        if (this.mOverrideNightModeOn && !activate) {
            this.mComputedNightMode = true;
        } else if (this.mOverrideNightModeOff && this.mComputedNightMode) {
            this.mComputedNightMode = false;
        } else {
            resetNightModeOverrideLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean resetNightModeOverrideLocked() {
        if (!this.mOverrideNightModeOff && !this.mOverrideNightModeOn) {
            return false;
        }
        this.mOverrideNightModeOff = false;
        this.mOverrideNightModeOn = false;
        persistNightModeOverrides(this.mOverrideNightModeUser);
        this.mOverrideNightModeUser = 0;
        return true;
    }

    private void registerVrStateListener() {
        IVrManager vrManager = IVrManager.Stub.asInterface(ServiceManager.getService("vrmanager"));
        if (vrManager != null) {
            try {
                vrManager.registerListener(this.mVrStateCallbacks);
            } catch (RemoteException e) {
                Slog.e(TAG, "Failed to register VR mode state listener: " + e);
            }
        }
    }

    private static class Shell extends ShellCommand {
        public static final String NIGHT_MODE_STR_AUTO = "auto";
        public static final String NIGHT_MODE_STR_CUSTOM = "custom";
        public static final String NIGHT_MODE_STR_NO = "no";
        public static final String NIGHT_MODE_STR_UNKNOWN = "unknown";
        public static final String NIGHT_MODE_STR_YES = "yes";
        private final IUiModeManager mInterface;

        Shell(IUiModeManager iface) {
            this.mInterface = iface;
        }

        public void onHelp() {
            PrintWriter pw = getOutPrintWriter();
            pw.println("UiModeManager service (uimode) commands:");
            pw.println("  help");
            pw.println("    Print this help text.");
            pw.println("  night [yes|no|auto|custom]");
            pw.println("    Set or read night mode.");
            pw.println("  time [start|end] <ISO time>");
            pw.println("    Set custom start/end schedule time (night mode must be set to custom to apply).");
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0017  */
        public int onCommand(String cmd) {
            byte b;
            if (cmd == null) {
                return handleDefaultCommands(cmd);
            }
            try {
                int iHashCode = cmd.hashCode();
                if (iHashCode != 3560141) {
                    b = (iHashCode == 104817688 && cmd.equals("night")) ? (byte) 0 : (byte) -1;
                } else if (cmd.equals("time")) {
                    b = 1;
                }
                if (b == 0) {
                    return handleNightMode();
                }
                if (b == 1) {
                    return handleCustomTime();
                }
                return handleDefaultCommands(cmd);
            } catch (RemoteException e) {
                PrintWriter err = getErrPrintWriter();
                err.println("Remote exception: " + e);
                return -1;
            }
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0031  */
        private int handleCustomTime() throws RemoteException {
            byte b;
            String modeStr = getNextArg();
            if (modeStr == null) {
                printCustomTime();
                return 0;
            }
            int iHashCode = modeStr.hashCode();
            if (iHashCode != 100571) {
                if (iHashCode == 109757538 && modeStr.equals("start")) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (modeStr.equals("end")) {
                b = 1;
            } else {
                b = -1;
            }
            if (b == 0) {
                String start = getNextArg();
                this.mInterface.setCustomNightModeStart(UiModeManagerService.toMilliSeconds(LocalTime.parse(start)));
                return 0;
            }
            if (b == 1) {
                String end = getNextArg();
                this.mInterface.setCustomNightModeEnd(UiModeManagerService.toMilliSeconds(LocalTime.parse(end)));
                return 0;
            }
            getErrPrintWriter().println("command must be in [start|end]");
            return -1;
        }

        private void printCustomTime() throws RemoteException {
            getOutPrintWriter().println("start " + UiModeManagerService.fromMilliseconds(this.mInterface.getCustomNightModeStart()).toString());
            getOutPrintWriter().println("end " + UiModeManagerService.fromMilliseconds(this.mInterface.getCustomNightModeEnd()).toString());
        }

        private int handleNightMode() throws RemoteException {
            PrintWriter err = getErrPrintWriter();
            String modeStr = getNextArg();
            if (modeStr == null) {
                printCurrentNightMode();
                return 0;
            }
            int mode = strToNightMode(modeStr);
            if (mode >= 0) {
                this.mInterface.setNightMode(mode);
                printCurrentNightMode();
                return 0;
            }
            err.println("Error: mode must be 'yes', 'no', or 'auto', or 'custom'");
            return -1;
        }

        private void printCurrentNightMode() throws RemoteException {
            PrintWriter pw = getOutPrintWriter();
            int currMode = this.mInterface.getNightMode();
            String currModeStr = nightModeToStr(currMode);
            pw.println("Night mode: " + currModeStr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String nightModeToStr(int mode) {
            if (mode == 0) {
                return NIGHT_MODE_STR_AUTO;
            }
            if (mode == 1) {
                return NIGHT_MODE_STR_NO;
            }
            if (mode == 2) {
                return NIGHT_MODE_STR_YES;
            }
            if (mode == 3) {
                return NIGHT_MODE_STR_CUSTOM;
            }
            return NIGHT_MODE_STR_UNKNOWN;
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0047  */
        private static int strToNightMode(String modeStr) {
            byte b;
            int iHashCode = modeStr.hashCode();
            if (iHashCode != -1349088399) {
                if (iHashCode != 3521) {
                    if (iHashCode != 119527) {
                        if (iHashCode == 3005871 && modeStr.equals(NIGHT_MODE_STR_AUTO)) {
                            b = 2;
                        } else {
                            b = -1;
                        }
                    } else if (modeStr.equals(NIGHT_MODE_STR_YES)) {
                        b = 0;
                    } else {
                        b = -1;
                    }
                } else if (modeStr.equals(NIGHT_MODE_STR_NO)) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (modeStr.equals(NIGHT_MODE_STR_CUSTOM)) {
                b = 3;
            } else {
                b = -1;
            }
            if (b == 0) {
                return 2;
            }
            if (b == 1) {
                return 1;
            }
            if (b != 2) {
                return b != 3 ? -1 : 3;
            }
            return 0;
        }
    }

    public final class LocalService extends UiModeManagerInternal {
        public LocalService() {
        }

        @Override // com.android.server.UiModeManagerInternal
        public boolean isNightMode() {
            boolean isIt;
            synchronized (UiModeManagerService.this.mLock) {
                isIt = (UiModeManagerService.this.mConfiguration.uiMode & 32) != 0;
            }
            return isIt;
        }
    }
}
