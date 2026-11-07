package com.android.server.display;

import android.R;
import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ParceledListSlice;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.display.AmbientBrightnessDayStats;
import android.hardware.display.BrightnessChangeEvent;
import android.hardware.display.BrightnessConfiguration;
import android.hardware.display.DisplayManagerInternal;
import android.metrics.LogMaker;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.MathUtils;
import android.util.Slog;
import android.util.TimeUtils;
import android.view.Display;
import com.android.internal.BrightnessSynchronizer;
import com.android.internal.app.IBatteryStats;
import com.android.internal.logging.MetricsLogger;
import com.android.server.LocalServices;
import com.android.server.am.BatteryStatsService;
import com.android.server.display.whitebalance.DisplayWhiteBalanceController;
import com.android.server.display.whitebalance.DisplayWhiteBalanceFactory;
import com.android.server.display.whitebalance.DisplayWhiteBalanceSettings;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.power.backlight.BackLightSettings;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
final class DisplayPowerController implements AutomaticBrightnessController.Callbacks, DisplayWhiteBalanceController.Callbacks {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS = 400;
    private static final int COLOR_FADE_ON_ANIMATION_DURATION_MILLIS = 250;
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT = false;
    private static final int MSG_CONFIGURE_BRIGHTNESS = 5;
    private static final int MSG_IGNORE_PROXIMITY = 8;
    private static final int MSG_PROXIMITY_SENSOR_DEBOUNCED = 2;
    private static final int MSG_SCREEN_OFF_UNBLOCKED = 4;
    private static final int MSG_SCREEN_ON_UNBLOCKED = 3;
    private static final int MSG_SET_TEMPORARY_AUTO_BRIGHTNESS_ADJUSTMENT = 7;
    private static final int MSG_SET_TEMPORARY_BRIGHTNESS = 6;
    private static final int MSG_UPDATE_POWER_STATE = 1;
    private static final int PROXIMITY_NEGATIVE = 0;
    private static final int PROXIMITY_POSITIVE = 1;
    private static final int PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY = 250;
    private static final int PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY = 0;
    private static final int PROXIMITY_UNKNOWN = -1;
    private static final int RAMP_STATE_SKIP_AUTOBRIGHT = 2;
    private static final int RAMP_STATE_SKIP_INITIAL = 1;
    private static final int RAMP_STATE_SKIP_NONE = 0;
    private static final int REPORTED_TO_POLICY_SCREEN_OFF = 0;
    private static final int REPORTED_TO_POLICY_SCREEN_ON = 2;
    private static final int REPORTED_TO_POLICY_SCREEN_TURNING_OFF = 3;
    private static final int REPORTED_TO_POLICY_SCREEN_TURNING_ON = 1;
    private static final float SCREEN_ANIMATION_RATE_MINIMUM = 0.0f;
    private static final float SCREEN_DIM_MINIMUM_REDUCTION_FLOAT = 0.04f;
    private static final String SCREEN_OFF_BLOCKED_TRACE_NAME = "Screen off blocked";
    private static final String SCREEN_ON_BLOCKED_TRACE_NAME = "Screen on blocked";
    private static final String TAG = "DisplayPowerController";
    private static final float TYPICAL_PROXIMITY_THRESHOLD = 5.0f;
    private static final boolean USE_COLOR_FADE_ON_ANIMATION = false;
    private final boolean mAllowAutoBrightnessWhileDozingConfig;
    private boolean mAppliedAutoBrightness;
    private boolean mAppliedBrightnessBoost;
    private boolean mAppliedDimming;
    private boolean mAppliedLowPower;
    private boolean mAppliedScreenBrightnessOverride;
    private boolean mAppliedTemporaryAutoBrightnessAdjustment;
    private boolean mAppliedTemporaryBrightness;
    private float mAutoBrightnessAdjustment;
    private AutomaticBrightnessController mAutomaticBrightnessController;
    private final DisplayBlanker mBlanker;
    private boolean mBrightnessBucketsInDozeConfig;
    private BrightnessConfiguration mBrightnessConfiguration;
    private final Uri mBrightnessFloatUri;
    private BrightnessMappingStrategy mBrightnessMapper;
    private float mBrightnessRampRateFast;
    private float mBrightnessRampRateSlow;
    private BrightnessReason mBrightnessReason;
    private BrightnessReason mBrightnessReasonTemp;
    private final BrightnessSynchronizer mBrightnessSynchronizer;
    private final BrightnessTracker mBrightnessTracker;
    private final DisplayManagerInternal.DisplayPowerCallbacks mCallbacks;
    private final boolean mColorFadeEnabled;
    private boolean mColorFadeFadesConfig;
    private ObjectAnimator mColorFadeOffAnimator;
    private ObjectAnimator mColorFadeOnAnimator;
    private final Context mContext;
    private float mCurrentScreenBrightnessSetting;
    private boolean mDisplayBlanksAfterDozeConfig;
    private final DisplayDevice mDisplayDevice;
    private boolean mDisplayReadyLocked;
    private final DisplayWhiteBalanceController mDisplayWhiteBalanceController;
    private final DisplayWhiteBalanceSettings mDisplayWhiteBalanceSettings;
    private boolean mDozing;
    private final DisplayControllerHandler mHandler;
    private boolean mIgnoreProximityUntilChanged;
    private float mInitialAutoBrightness;
    private float mLastUserSetScreenBrightness;
    private float mPendingAutoBrightnessAdjustment;
    private boolean mPendingRequestChangedLocked;
    private DisplayManagerInternal.DisplayPowerRequest mPendingRequestLocked;
    private float mPendingScreenBrightnessSetting;
    private boolean mPendingScreenOff;
    private ScreenOffUnblocker mPendingScreenOffUnblocker;
    private ScreenOnUnblocker mPendingScreenOnUnblocker;
    private boolean mPendingUpdatePowerStateLocked;
    private boolean mPendingWaitForNegativeProximityLocked;
    private DisplayManagerInternal.DisplayPowerRequest mPowerRequest;
    private DisplayPowerState mPowerState;
    private Sensor mProximitySensor;
    private boolean mProximitySensorEnabled;
    private float mProximityThreshold;
    private int mReportedScreenStateToPolicy;
    private final float mScreenBrightnessDefault;
    private final float mScreenBrightnessDimConfig;
    private final float mScreenBrightnessDozeConfig;
    private float mScreenBrightnessForVr;
    private final float mScreenBrightnessForVrDefault;
    private final float mScreenBrightnessForVrRangeMaximum;
    private final float mScreenBrightnessForVrRangeMinimum;
    private RampAnimator<DisplayPowerState> mScreenBrightnessRampAnimator;
    private final float mScreenBrightnessRangeMaximum;
    private final float mScreenBrightnessRangeMinimum;
    private boolean mScreenOffBecauseOfProximity;
    private long mScreenOffBlockStartRealTime;
    private long mScreenOnBlockStartRealTime;
    private final SensorManager mSensorManager;
    private final SettingsObserver mSettingsObserver;
    private final boolean mSkipScreenOnBrightnessRamp;
    private float mTemporaryAutoBrightnessAdjustment;
    private float mTemporaryScreenBrightness;
    private boolean mUnfinishedBusiness;
    private boolean mUseAndroidAutoBrightness;
    private boolean mUseSoftwareAutoBrightnessConfig;
    private boolean mWaitingForNegativeProximity;
    private final Object mLock = new Object();
    private int mProximity = -1;
    private int mPendingProximity = -1;
    private long mPendingProximityDebounceTime = -1;
    private int mSkipRampState = 0;
    private final Animator.AnimatorListener mAnimatorListener = new Animator.AnimatorListener() { // from class: com.android.server.display.DisplayPowerController.1
        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            DisplayPowerController.this.sendUpdatePowerState();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
        }
    };
    private final RampAnimator.Listener mRampAnimatorListener = new RampAnimator.Listener() { // from class: com.android.server.display.DisplayPowerController.2
        @Override // com.android.server.display.RampAnimator.Listener
        public void onAnimationEnd() {
            DisplayPowerController.this.sendUpdatePowerState();
        }
    };
    private final Runnable mCleanListener = new Runnable() { // from class: com.android.server.display.DisplayPowerController.3
        @Override // java.lang.Runnable
        public void run() {
            DisplayPowerController.this.sendUpdatePowerState();
        }
    };
    private final Runnable mOnStateChangedRunnable = new Runnable() { // from class: com.android.server.display.DisplayPowerController.4
        @Override // java.lang.Runnable
        public void run() {
            DisplayPowerController.this.mCallbacks.onStateChanged();
            DisplayPowerController.this.mCallbacks.releaseSuspendBlocker();
        }
    };
    private final Runnable mOnProximityPositiveRunnable = new Runnable() { // from class: com.android.server.display.DisplayPowerController.5
        @Override // java.lang.Runnable
        public void run() {
            DisplayPowerController.this.mCallbacks.onProximityPositive();
            DisplayPowerController.this.mCallbacks.releaseSuspendBlocker();
        }
    };
    private final Runnable mOnProximityNegativeRunnable = new Runnable() { // from class: com.android.server.display.DisplayPowerController.6
        @Override // java.lang.Runnable
        public void run() {
            DisplayPowerController.this.mCallbacks.onProximityNegative();
            DisplayPowerController.this.mCallbacks.releaseSuspendBlocker();
        }
    };
    private final SensorEventListener mProximitySensorListener = new SensorEventListener() { // from class: com.android.server.display.DisplayPowerController.8
        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent event) throws Throwable {
            if (DisplayPowerController.this.mProximitySensorEnabled) {
                long time = SystemClock.uptimeMillis();
                boolean positive = false;
                float distance = event.values[0];
                if (distance >= DisplayPowerController.SCREEN_ANIMATION_RATE_MINIMUM && distance < DisplayPowerController.this.mProximityThreshold) {
                    positive = true;
                }
                DisplayPowerController.this.handleProximitySensorEvent(time, positive);
            }
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int accuracy) {
        }
    };
    private final IBatteryStats mBatteryStats = BatteryStatsService.getService();
    private final WindowManagerPolicy mWindowManagerPolicy = (WindowManagerPolicy) LocalServices.getService(WindowManagerPolicy.class);

    public DisplayPowerController(Context context, DisplayManagerInternal.DisplayPowerCallbacks callbacks, Handler handler, SensorManager sensorManager, DisplayBlanker blanker, DisplayDevice displayDevice) {
        DisplayPowerController displayPowerController;
        this.mBrightnessReason = new BrightnessReason();
        this.mBrightnessReasonTemp = new BrightnessReason();
        this.mBrightnessRampRateSlow = 0.2352941f;
        this.mBrightnessRampRateFast = 0.7058823f;
        this.mHandler = new DisplayControllerHandler(handler.getLooper());
        this.mBrightnessTracker = new BrightnessTracker(context, null);
        this.mSettingsObserver = new SettingsObserver(this.mHandler);
        this.mCallbacks = callbacks;
        this.mSensorManager = sensorManager;
        this.mBlanker = blanker;
        this.mContext = context;
        this.mBrightnessSynchronizer = new BrightnessSynchronizer(context);
        this.mDisplayDevice = displayDevice;
        PowerManager pm = (PowerManager) context.getSystemService(PowerManager.class);
        DisplayDeviceConfig displayDeviceConfig = this.mDisplayDevice.getDisplayDeviceConfig();
        Resources resources = context.getResources();
        float screenBrightnessSettingMinimumFloat = clampAbsoluteBrightness(pm.getBrightnessConstraint(0));
        this.mScreenBrightnessDozeConfig = clampAbsoluteBrightness(pm.getBrightnessConstraint(4));
        float fClampAbsoluteBrightness = clampAbsoluteBrightness(pm.getBrightnessConstraint(3));
        this.mScreenBrightnessDimConfig = fClampAbsoluteBrightness;
        this.mScreenBrightnessRangeMinimum = Math.min(screenBrightnessSettingMinimumFloat, fClampAbsoluteBrightness);
        this.mScreenBrightnessRangeMaximum = clampAbsoluteBrightness(pm.getBrightnessConstraint(1));
        this.mScreenBrightnessDefault = clampAbsoluteBrightness(pm.getBrightnessConstraint(2));
        this.mScreenBrightnessForVrDefault = clampAbsoluteBrightness(pm.getBrightnessConstraint(7));
        this.mScreenBrightnessForVrRangeMaximum = clampAbsoluteBrightness(pm.getBrightnessConstraint(6));
        this.mScreenBrightnessForVrRangeMinimum = clampAbsoluteBrightness(pm.getBrightnessConstraint(5));
        this.mUseSoftwareAutoBrightnessConfig = resources.getBoolean(R.bool.ImsConnectedDefaultValue);
        this.mAllowAutoBrightnessWhileDozingConfig = resources.getBoolean(R.bool.config_allowTheaterModeWakeFromLidSwitch);
        this.mSkipScreenOnBrightnessRamp = resources.getBoolean(R.bool.config_cecRcProfileSourceMediaContextSensitiveMenu_userConfigurable);
        if (!resources.getBoolean(R.bool.config_cecPowerControlModeNone_allowed)) {
            this.mBrightnessRampRateSlow = -1.0f;
            this.mBrightnessRampRateFast = -1.0f;
        }
        this.mBrightnessFloatUri = Settings.System.getUriFor("screen_brightness_float");
        this.mUseAndroidAutoBrightness = resources.getBoolean(R.bool.config_cecSoundbarModeDisabled_default);
        if (!this.mUseSoftwareAutoBrightnessConfig) {
            displayPowerController = this;
        } else {
            float dozeScaleFactor = resources.getFraction(R.fraction.config_screenAutoBrightnessDozeScaleFactor, 1, 1);
            int[] ambientBrighteningThresholds = resources.getIntArray(R.array.config_autoBrightnessLcdBacklightValues);
            int[] ambientDarkeningThresholds = resources.getIntArray(R.array.config_autoBrightnessLcdBacklightValues_doze);
            int[] ambientThresholdLevels = resources.getIntArray(R.array.config_autoBrightnessLevels);
            HysteresisLevels ambientBrightnessThresholds = new HysteresisLevels(ambientBrighteningThresholds, ambientDarkeningThresholds, ambientThresholdLevels);
            int[] screenBrighteningThresholds = resources.getIntArray(R.array.config_face_acquire_vendor_keyguard_ignorelist);
            int[] screenDarkeningThresholds = resources.getIntArray(R.array.config_fontManagerServiceCerts);
            int[] screenThresholdLevels = resources.getIntArray(R.array.config_forceQueryablePackages);
            HysteresisLevels screenBrightnessThresholds = new HysteresisLevels(screenBrighteningThresholds, screenDarkeningThresholds, screenThresholdLevels);
            long brighteningLightDebounce = resources.getInteger(R.integer.config_audio_notif_vol_steps);
            long brighteningLightDebounce2 = resources.getInteger(R.integer.config_audio_ring_vol_default);
            boolean autoBrightnessResetAmbientLuxAfterWarmUp = resources.getBoolean(R.bool.config_autoPowerModePrefetchLocation);
            int lightSensorWarmUpTimeConfig = resources.getInteger(R.integer.config_displayWhiteBalanceBrightnessFilterHorizon);
            int lightSensorRate = resources.getInteger(R.integer.config_autoBrightnessBrighteningLightDebounce);
            int initialLightSensorRate = resources.getInteger(R.integer.config_audio_ring_vol_steps);
            if (initialLightSensorRate == -1) {
                initialLightSensorRate = lightSensorRate;
            } else if (initialLightSensorRate > lightSensorRate) {
                Slog.w(TAG, "Expected config_autoBrightnessInitialLightSensorRate (" + initialLightSensorRate + ") to be less than or equal to config_autoBrightnessLightSensorRate (" + lightSensorRate + ").");
            }
            String lightSensorType = resources.getString(R.string.config_factoryResetPackage);
            Sensor lightSensor = findDisplayLightSensor(lightSensorType);
            BrightnessMappingStrategy brightnessMappingStrategyCreate = BrightnessMappingStrategy.create(resources);
            this.mBrightnessMapper = brightnessMappingStrategyCreate;
            if (brightnessMappingStrategyCreate == null || !this.mUseAndroidAutoBrightness) {
                displayPowerController = this;
                displayPowerController.mUseSoftwareAutoBrightnessConfig = false;
            } else {
                displayPowerController = this;
                displayPowerController.mAutomaticBrightnessController = new AutomaticBrightnessController(this, handler.getLooper(), sensorManager, lightSensor, this.mBrightnessMapper, lightSensorWarmUpTimeConfig, this.mScreenBrightnessRangeMinimum, this.mScreenBrightnessRangeMaximum, dozeScaleFactor, lightSensorRate, initialLightSensorRate, brighteningLightDebounce, brighteningLightDebounce2, autoBrightnessResetAmbientLuxAfterWarmUp, ambientBrightnessThresholds, screenBrightnessThresholds, context, displayDeviceConfig);
            }
        }
        displayPowerController.mColorFadeEnabled = !ActivityManager.isLowRamDeviceStatic();
        displayPowerController.mColorFadeFadesConfig = resources.getBoolean(R.bool.config_attachNavBarToAppDuringTransition);
        displayPowerController.mDisplayBlanksAfterDozeConfig = resources.getBoolean(R.bool.config_actionMenuItemAllCaps);
        displayPowerController.mBrightnessBucketsInDozeConfig = resources.getBoolean(R.bool.config_canSwitchToHeadlessSystemUser);
        Sensor defaultSensor = displayPowerController.mSensorManager.getDefaultSensor(8);
        displayPowerController.mProximitySensor = defaultSensor;
        if (defaultSensor != null) {
            displayPowerController.mProximityThreshold = Math.min(defaultSensor.getMaximumRange(), TYPICAL_PROXIMITY_THRESHOLD);
        }
        displayPowerController.mCurrentScreenBrightnessSetting = getScreenBrightnessSetting();
        displayPowerController.mScreenBrightnessForVr = getScreenBrightnessForVrSetting();
        displayPowerController.mAutoBrightnessAdjustment = getAutoBrightnessAdjustmentSetting();
        displayPowerController.mTemporaryScreenBrightness = Float.NaN;
        displayPowerController.mPendingScreenBrightnessSetting = Float.NaN;
        displayPowerController.mTemporaryAutoBrightnessAdjustment = Float.NaN;
        displayPowerController.mPendingAutoBrightnessAdjustment = Float.NaN;
        DisplayWhiteBalanceSettings displayWhiteBalanceSettings = null;
        DisplayWhiteBalanceController displayWhiteBalanceController = null;
        try {
            displayWhiteBalanceSettings = new DisplayWhiteBalanceSettings(displayPowerController.mContext, displayPowerController.mHandler);
            displayWhiteBalanceController = DisplayWhiteBalanceFactory.create(displayPowerController.mHandler, displayPowerController.mSensorManager, resources);
            displayWhiteBalanceSettings.setCallbacks(displayPowerController);
            displayWhiteBalanceController.setCallbacks(displayPowerController);
        } catch (Exception e) {
            Slog.e(TAG, "failed to set up display white-balance: " + e.getMessage());
        }
        displayPowerController.mDisplayWhiteBalanceSettings = displayWhiteBalanceSettings;
        displayPowerController.mDisplayWhiteBalanceController = displayWhiteBalanceController;
    }

    private Sensor findDisplayLightSensor(String sensorType) {
        if (!TextUtils.isEmpty(sensorType)) {
            List<Sensor> sensors = this.mSensorManager.getSensorList(-1);
            for (int i = 0; i < sensors.size(); i++) {
                Sensor sensor = sensors.get(i);
                if (sensorType.equals(sensor.getStringType())) {
                    return sensor;
                }
            }
        }
        return this.mSensorManager.getDefaultSensor(5);
    }

    public boolean isProximitySensorAvailable() {
        return this.mProximitySensor != null;
    }

    public ParceledListSlice<BrightnessChangeEvent> getBrightnessEvents(int userId, boolean includePackage) {
        return this.mBrightnessTracker.getEvents(userId, includePackage);
    }

    public void onSwitchUser(int newUserId) {
        handleSettingsChange(true, null);
        this.mBrightnessTracker.onSwitchUser(newUserId);
    }

    public ParceledListSlice<AmbientBrightnessDayStats> getAmbientBrightnessStats(int userId) {
        return this.mBrightnessTracker.getAmbientBrightnessStats(userId);
    }

    public void persistBrightnessTrackerState() {
        this.mBrightnessTracker.persistBrightnessTrackerState();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0012 A[Catch: all -> 0x003d, TryCatch #0 {, blocks: (B:6:0x0007, B:8:0x000b, B:9:0x000e, B:11:0x0012, B:16:0x002b, B:18:0x0030, B:20:0x0034, B:21:0x0039, B:22:0x003b, B:12:0x001b, B:14:0x0023), top: B:27:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:12:0x001b A[Catch: all -> 0x003d, TryCatch #0 {, blocks: (B:6:0x0007, B:8:0x000b, B:9:0x000e, B:11:0x0012, B:16:0x002b, B:18:0x0030, B:20:0x0034, B:21:0x0039, B:22:0x003b, B:12:0x001b, B:14:0x0023), top: B:27:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x0023 A[Catch: all -> 0x003d, TryCatch #0 {, blocks: (B:6:0x0007, B:8:0x000b, B:9:0x000e, B:11:0x0012, B:16:0x002b, B:18:0x0030, B:20:0x0034, B:21:0x0039, B:22:0x003b, B:12:0x001b, B:14:0x0023), top: B:27:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:16:0x002b A[Catch: all -> 0x003d, TryCatch #0 {, blocks: (B:6:0x0007, B:8:0x000b, B:9:0x000e, B:11:0x0012, B:16:0x002b, B:18:0x0030, B:20:0x0034, B:21:0x0039, B:22:0x003b, B:12:0x001b, B:14:0x0023), top: B:27:0x0007 }] */
    public boolean requestPowerState(DisplayManagerInternal.DisplayPowerRequest request, boolean waitForNegativeProximity) {
        boolean z;
        synchronized (this.mLock) {
            boolean changed = false;
            if (waitForNegativeProximity) {
                if (!this.mPendingWaitForNegativeProximityLocked) {
                    this.mPendingWaitForNegativeProximityLocked = true;
                    changed = true;
                }
                if (this.mPendingRequestLocked == null) {
                    this.mPendingRequestLocked = new DisplayManagerInternal.DisplayPowerRequest(request);
                    changed = true;
                } else if (!this.mPendingRequestLocked.equals(request)) {
                    this.mPendingRequestLocked.copyFrom(request);
                    changed = true;
                }
                if (changed) {
                    this.mDisplayReadyLocked = false;
                }
                if (changed && !this.mPendingRequestChangedLocked) {
                    this.mPendingRequestChangedLocked = true;
                    sendUpdatePowerStateLocked();
                }
                z = this.mDisplayReadyLocked;
            } else {
                if (this.mPendingRequestLocked == null) {
                    this.mPendingRequestLocked = new DisplayManagerInternal.DisplayPowerRequest(request);
                    changed = true;
                } else if (!this.mPendingRequestLocked.equals(request)) {
                    this.mPendingRequestLocked.copyFrom(request);
                    changed = true;
                }
                if (changed) {
                    this.mDisplayReadyLocked = false;
                }
                if (changed) {
                    this.mPendingRequestChangedLocked = true;
                    sendUpdatePowerStateLocked();
                }
                z = this.mDisplayReadyLocked;
            }
            throw th;
        }
        return z;
    }

    public BrightnessConfiguration getDefaultBrightnessConfiguration() {
        AutomaticBrightnessController automaticBrightnessController = this.mAutomaticBrightnessController;
        if (automaticBrightnessController == null) {
            return null;
        }
        return automaticBrightnessController.getDefaultConfig();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendUpdatePowerState() {
        synchronized (this.mLock) {
            sendUpdatePowerStateLocked();
        }
    }

    private void sendUpdatePowerStateLocked() {
        if (!this.mPendingUpdatePowerStateLocked) {
            this.mPendingUpdatePowerStateLocked = true;
            Message msg = this.mHandler.obtainMessage(1);
            this.mHandler.sendMessage(msg);
        }
    }

    private void initialize() {
        DisplayPowerState displayPowerState = new DisplayPowerState(this.mBlanker, this.mColorFadeEnabled ? new ColorFade(0) : null);
        this.mPowerState = displayPowerState;
        if (this.mColorFadeEnabled) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(displayPowerState, DisplayPowerState.COLOR_FADE_LEVEL, SCREEN_ANIMATION_RATE_MINIMUM, 1.0f);
            this.mColorFadeOnAnimator = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(250L);
            this.mColorFadeOnAnimator.addListener(this.mAnimatorListener);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.mPowerState, DisplayPowerState.COLOR_FADE_LEVEL, 1.0f, SCREEN_ANIMATION_RATE_MINIMUM);
            this.mColorFadeOffAnimator = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(400L);
            this.mColorFadeOffAnimator.addListener(this.mAnimatorListener);
        }
        RampAnimator<DisplayPowerState> rampAnimator = new RampAnimator<>(this.mPowerState, DisplayPowerState.SCREEN_BRIGHTNESS_FLOAT);
        this.mScreenBrightnessRampAnimator = rampAnimator;
        rampAnimator.setListener(this.mRampAnimatorListener);
        try {
            this.mBatteryStats.noteScreenState(this.mPowerState.getScreenState());
            this.mBatteryStats.noteScreenBrightness(BrightnessSynchronizer.brightnessFloatToInt(this.mContext, this.mPowerState.getScreenBrightness()));
        } catch (RemoteException e) {
        }
        float brightness = convertToNits(BrightnessSynchronizer.brightnessFloatToInt(this.mContext, this.mPowerState.getScreenBrightness()));
        if (brightness >= SCREEN_ANIMATION_RATE_MINIMUM) {
            this.mBrightnessTracker.start(brightness);
        }
        this.mContext.getContentResolver().registerContentObserver(this.mBrightnessFloatUri, false, this.mSettingsObserver, -1);
        this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_brightness_for_vr_float"), false, this.mSettingsObserver, -1);
        this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_auto_brightness_adj"), false, this.mSettingsObserver, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:276:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:279:0x0400  */
    /* JADX WARN: Code duplicated, block: B:284:0x0417  */
    /* JADX WARN: Code duplicated, block: B:296:0x0441  */
    /* JADX WARN: Code duplicated, block: B:302:0x044f  */
    /* JADX WARN: Code duplicated, block: B:327:0x0489  */
    /* JADX WARN: Code duplicated, block: B:332:0x0499  */
    /* JADX WARN: Code duplicated, block: B:336:0x049e  */
    /* JADX WARN: Code duplicated, block: B:339:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:351:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:276:0x03c2, please report this as an issue */
    public void updatePowerState() throws Throwable {
        int previousPolicy;
        int state;
        float autoBrightnessAdjustment;
        int brightnessAdjustmentFlags;
        int brightnessAdjustmentFlags2;
        boolean slowChange;
        boolean z;
        boolean ready;
        boolean z2;
        boolean finished;
        boolean z3;
        boolean z4;
        AutomaticBrightnessController automaticBrightnessController;
        boolean mustInitialize = false;
        this.mBrightnessReasonTemp.set(null);
        synchronized (this.mLock) {
            try {
                this.mPendingUpdatePowerStateLocked = false;
                if (this.mPendingRequestLocked == null) {
                    return;
                }
                if (this.mPowerRequest == null) {
                    this.mPowerRequest = new DisplayManagerInternal.DisplayPowerRequest(this.mPendingRequestLocked);
                    updatePendingProximityRequestsLocked();
                    this.mPendingRequestChangedLocked = false;
                    mustInitialize = true;
                    previousPolicy = 3;
                } else if (this.mPendingRequestChangedLocked) {
                    previousPolicy = this.mPowerRequest.policy;
                    this.mPowerRequest.copyFrom(this.mPendingRequestLocked);
                    updatePendingProximityRequestsLocked();
                    this.mPendingRequestChangedLocked = false;
                    this.mDisplayReadyLocked = false;
                } else {
                    previousPolicy = this.mPowerRequest.policy;
                }
                try {
                    boolean mustNotify = !this.mDisplayReadyLocked;
                    if (mustInitialize) {
                        initialize();
                    }
                    float brightnessState = Float.NaN;
                    boolean performScreenOffTransition = false;
                    int i = this.mPowerRequest.policy;
                    if (i == 0) {
                        state = 1;
                        performScreenOffTransition = true;
                    } else if (i == 1) {
                        if (this.mPowerRequest.dozeScreenState != 0) {
                            state = this.mPowerRequest.dozeScreenState;
                        } else {
                            state = 3;
                        }
                        if (!this.mAllowAutoBrightnessWhileDozingConfig) {
                            brightnessState = this.mPowerRequest.dozeScreenBrightness;
                            this.mBrightnessReasonTemp.setReason(2);
                        }
                    } else if (i == 4) {
                        state = 5;
                    } else {
                        state = 2;
                    }
                    if (this.mProximitySensor != null) {
                        if (this.mPowerRequest.useProximitySensor && state != 1) {
                            setProximitySensorEnabled(true);
                            if (!this.mScreenOffBecauseOfProximity && this.mProximity == 1 && !this.mIgnoreProximityUntilChanged) {
                                this.mScreenOffBecauseOfProximity = true;
                                sendOnProximityPositiveWithWakelock();
                            }
                        } else if (this.mWaitingForNegativeProximity && this.mScreenOffBecauseOfProximity && this.mProximity == 1 && state != 1) {
                            setProximitySensorEnabled(true);
                        } else {
                            setProximitySensorEnabled(false);
                            this.mWaitingForNegativeProximity = false;
                        }
                        if (this.mScreenOffBecauseOfProximity && (this.mProximity != 1 || this.mIgnoreProximityUntilChanged)) {
                            this.mScreenOffBecauseOfProximity = false;
                            sendOnProximityNegativeWithWakelock();
                        }
                    } else {
                        this.mWaitingForNegativeProximity = false;
                        this.mIgnoreProximityUntilChanged = false;
                    }
                    if (this.mScreenOffBecauseOfProximity) {
                        state = 1;
                    }
                    int oldState = this.mPowerState.getScreenState();
                    animateScreenStateChange(state, performScreenOffTransition);
                    int state2 = this.mPowerState.getScreenState();
                    if (state2 == 1) {
                        brightnessState = -1.0f;
                        this.mBrightnessReasonTemp.setReason(5);
                    }
                    if (state2 == 5) {
                        brightnessState = this.mScreenBrightnessForVr;
                        this.mBrightnessReasonTemp.setReason(6);
                    }
                    if (Float.isNaN(brightnessState) && isValidBrightnessValue(this.mPowerRequest.screenBrightnessOverride)) {
                        brightnessState = this.mPowerRequest.screenBrightnessOverride;
                        this.mBrightnessReasonTemp.setReason(7);
                        this.mAppliedScreenBrightnessOverride = true;
                    } else {
                        this.mAppliedScreenBrightnessOverride = false;
                    }
                    boolean autoBrightnessEnabledInDoze = this.mAllowAutoBrightnessWhileDozingConfig && Display.isDozeState(state2);
                    boolean autoBrightnessEnabled = this.mPowerRequest.useAutoBrightness && (state2 == 2 || autoBrightnessEnabledInDoze) && Float.isNaN(brightnessState) && this.mAutomaticBrightnessController != null;
                    boolean userSetBrightnessChanged = updateUserSetScreenBrightness();
                    if (isValidBrightnessValue(this.mTemporaryScreenBrightness)) {
                        brightnessState = this.mTemporaryScreenBrightness;
                        this.mAppliedTemporaryBrightness = true;
                        this.mBrightnessReasonTemp.setReason(8);
                    } else {
                        this.mAppliedTemporaryBrightness = false;
                    }
                    boolean autoBrightnessAdjustmentChanged = updateAutoBrightnessAdjustment();
                    if (autoBrightnessAdjustmentChanged) {
                        this.mTemporaryAutoBrightnessAdjustment = Float.NaN;
                    }
                    if (!Float.isNaN(this.mTemporaryAutoBrightnessAdjustment)) {
                        autoBrightnessAdjustment = this.mTemporaryAutoBrightnessAdjustment;
                        brightnessAdjustmentFlags = 1;
                        this.mAppliedTemporaryAutoBrightnessAdjustment = true;
                    } else {
                        autoBrightnessAdjustment = this.mAutoBrightnessAdjustment;
                        brightnessAdjustmentFlags = 2;
                        this.mAppliedTemporaryAutoBrightnessAdjustment = false;
                    }
                    if (!this.mPowerRequest.boostScreenBrightness || brightnessState == -1.0f) {
                        this.mAppliedBrightnessBoost = false;
                    } else {
                        brightnessState = 1.0f;
                        this.mBrightnessReasonTemp.setReason(9);
                        this.mAppliedBrightnessBoost = true;
                    }
                    boolean userInitiatedChange = Float.isNaN(brightnessState) && (autoBrightnessAdjustmentChanged || userSetBrightnessChanged);
                    boolean hadUserBrightnessPoint = false;
                    AutomaticBrightnessController automaticBrightnessController2 = this.mAutomaticBrightnessController;
                    if (automaticBrightnessController2 != null) {
                        hadUserBrightnessPoint = automaticBrightnessController2.hasUserDataPoints();
                        this.mAutomaticBrightnessController.configure(autoBrightnessEnabled, this.mBrightnessConfiguration, this.mLastUserSetScreenBrightness, userSetBrightnessChanged, autoBrightnessAdjustment, autoBrightnessAdjustmentChanged, this.mPowerRequest.policy);
                    }
                    BrightnessTracker brightnessTracker = this.mBrightnessTracker;
                    if (brightnessTracker != null) {
                        brightnessTracker.setBrightnessConfiguration(this.mBrightnessConfiguration);
                    }
                    boolean slowChange2 = false;
                    if (!Float.isNaN(brightnessState)) {
                        this.mAppliedAutoBrightness = false;
                        brightnessAdjustmentFlags2 = 0;
                    } else {
                        float newAutoBrightnessAdjustment = autoBrightnessAdjustment;
                        if (autoBrightnessEnabled) {
                            brightnessState = this.mAutomaticBrightnessController.getAutomaticScreenBrightness();
                            newAutoBrightnessAdjustment = this.mAutomaticBrightnessController.getAutomaticScreenBrightnessAdjustment();
                        }
                        if (!isValidBrightnessValue(brightnessState) && brightnessState != -1.0f) {
                            this.mAppliedAutoBrightness = false;
                        } else {
                            brightnessState = clampScreenBrightness(brightnessState);
                            if (this.mAppliedAutoBrightness && !autoBrightnessAdjustmentChanged) {
                                slowChange2 = true;
                            }
                            putScreenBrightnessSetting(brightnessState);
                            this.mAppliedAutoBrightness = true;
                            this.mBrightnessReasonTemp.setReason(4);
                        }
                        if (autoBrightnessAdjustment != newAutoBrightnessAdjustment) {
                            putAutoBrightnessAdjustmentSetting(newAutoBrightnessAdjustment);
                            brightnessAdjustmentFlags2 = brightnessAdjustmentFlags;
                        } else {
                            brightnessAdjustmentFlags2 = 0;
                        }
                    }
                    if (Float.isNaN(brightnessState) && Display.isDozeState(state2)) {
                        brightnessState = this.mScreenBrightnessDozeConfig;
                        this.mBrightnessReasonTemp.setReason(3);
                    }
                    if (Float.isNaN(brightnessState)) {
                        brightnessState = clampScreenBrightness(this.mCurrentScreenBrightnessSetting);
                        this.mBrightnessReasonTemp.setReason(1);
                    }
                    if (this.mPowerRequest.policy == 2) {
                        if (brightnessState > this.mScreenBrightnessRangeMinimum) {
                            brightnessState = Math.max(Math.min(brightnessState - SCREEN_DIM_MINIMUM_REDUCTION_FLOAT, this.mScreenBrightnessDimConfig), this.mScreenBrightnessRangeMinimum);
                            this.mBrightnessReasonTemp.addModifier(1);
                        }
                        if (!this.mAppliedDimming) {
                            slowChange2 = false;
                        }
                        this.mAppliedDimming = true;
                    } else if (this.mAppliedDimming) {
                        slowChange2 = false;
                        this.mAppliedDimming = false;
                    }
                    if (this.mPowerRequest.lowPowerMode) {
                        if (brightnessState > this.mScreenBrightnessRangeMinimum) {
                            float brightnessFactor = Math.min(this.mPowerRequest.screenLowPowerBrightnessFactor, 1.0f);
                            float lowPowerBrightnessFloat = brightnessState * brightnessFactor;
                            float brightnessState2 = Math.max(lowPowerBrightnessFloat, this.mScreenBrightnessRangeMinimum);
                            this.mBrightnessReasonTemp.addModifier(2);
                            brightnessState = brightnessState2;
                        }
                        if (this.mAppliedLowPower) {
                            slowChange = slowChange2;
                        } else {
                            slowChange = false;
                        }
                        this.mAppliedLowPower = true;
                    } else {
                        boolean slowChange3 = slowChange2;
                        if (!this.mAppliedLowPower) {
                            slowChange = slowChange3;
                        } else {
                            slowChange = false;
                            this.mAppliedLowPower = false;
                        }
                    }
                    if (!this.mPendingScreenOff) {
                        if (this.mSkipScreenOnBrightnessRamp) {
                            if (state2 != 2) {
                                this.mSkipRampState = 0;
                            } else if (this.mSkipRampState != 0 || !this.mDozing) {
                                if (this.mSkipRampState == 1 && this.mUseSoftwareAutoBrightnessConfig && !BrightnessSynchronizer.floatEquals(brightnessState, this.mInitialAutoBrightness)) {
                                    this.mSkipRampState = 2;
                                } else {
                                    int i2 = 2;
                                    if (this.mSkipRampState == i2) {
                                        this.mSkipRampState = 0;
                                    }
                                }
                            } else {
                                this.mInitialAutoBrightness = brightnessState;
                                this.mSkipRampState = 1;
                            }
                        }
                        boolean wasOrWillBeInVr = state2 == 5 || oldState == 5;
                        boolean initialRampSkip = state2 == 2 && this.mSkipRampState != 0;
                        boolean hasBrightnessBuckets = Display.isDozeState(state2) && this.mBrightnessBucketsInDozeConfig;
                        boolean isDisplayContentVisible = this.mColorFadeEnabled && this.mPowerState.getColorFadeLevel() == 1.0f;
                        boolean brightnessIsTemporary = this.mAppliedTemporaryBrightness || this.mAppliedTemporaryAutoBrightnessAdjustment;
                        float animateValue = brightnessState == -1.0f ? SCREEN_ANIMATION_RATE_MINIMUM : brightnessState;
                        if (isValidBrightnessValue(animateValue) && shouldSetScreenBrightness()) {
                            if (initialRampSkip || hasBrightnessBuckets || wasOrWillBeInVr || !isDisplayContentVisible || brightnessIsTemporary) {
                                animateScreenBrightness(animateValue, SCREEN_ANIMATION_RATE_MINIMUM);
                            } else {
                                animateScreenBrightness(animateValue, slowChange ? this.mBrightnessRampRateSlow : this.mBrightnessRampRateFast);
                            }
                        }
                        if (!brightnessIsTemporary) {
                            if (userInitiatedChange && ((automaticBrightnessController = this.mAutomaticBrightnessController) == null || !automaticBrightnessController.hasValidAmbientLux())) {
                                userInitiatedChange = false;
                            }
                            notifyBrightnessChanged(BrightnessSynchronizer.brightnessFloatToInt(this.mContext, brightnessState), userInitiatedChange, hadUserBrightnessPoint);
                        }
                        if (this.mBrightnessReasonTemp.equals(this.mBrightnessReason) || brightnessAdjustmentFlags2 != 0) {
                            Slog.i(TAG, "Brightness [" + brightnessState + "] reason changing to: '" + this.mBrightnessReasonTemp.toString(brightnessAdjustmentFlags2) + "', previous reason: '" + this.mBrightnessReason + "'.");
                            this.mBrightnessReason.set(this.mBrightnessReasonTemp);
                        }
                        if (this.mDisplayWhiteBalanceController != null) {
                            if (state2 != 2 && this.mDisplayWhiteBalanceSettings.isEnabled()) {
                                this.mDisplayWhiteBalanceController.setEnabled(true);
                                this.mDisplayWhiteBalanceController.updateDisplayColorTemperature();
                            } else {
                                this.mDisplayWhiteBalanceController.setEnabled(false);
                            }
                        }
                        if (this.mPendingScreenOnUnblocker == null || ((this.mColorFadeEnabled && (this.mColorFadeOnAnimator.isStarted() || this.mColorFadeOffAnimator.isStarted())) || !this.mPowerState.waitUntilClean(this.mCleanListener))) {
                            z = false;
                        } else {
                            z = true;
                        }
                        ready = z;
                        if (ready || this.mScreenBrightnessRampAnimator.isAnimating()) {
                            z2 = false;
                        } else {
                            z2 = true;
                        }
                        finished = z2;
                        if (ready && state2 != 1 && this.mReportedScreenStateToPolicy == 1) {
                            setReportedScreenState(2);
                            this.mWindowManagerPolicy.screenTurnedOn();
                        }
                        if (!finished && !this.mUnfinishedBusiness) {
                            this.mCallbacks.acquireSuspendBlocker();
                            this.mUnfinishedBusiness = true;
                        }
                        if (ready || !mustNotify) {
                            z3 = true;
                        } else {
                            synchronized (this.mLock) {
                                if (this.mPendingRequestChangedLocked) {
                                    z3 = true;
                                } else {
                                    z3 = true;
                                    this.mDisplayReadyLocked = true;
                                }
                            }
                            sendOnStateChangedWithWakelock();
                        }
                        if (finished || !this.mUnfinishedBusiness) {
                            z4 = false;
                        } else {
                            z4 = false;
                            this.mUnfinishedBusiness = false;
                            this.mCallbacks.releaseSuspendBlocker();
                        }
                        if (state2 == 2) {
                            z3 = z4;
                        }
                        this.mDozing = z3;
                        if (previousPolicy != this.mPowerRequest.policy) {
                            logDisplayPolicyChanged(this.mPowerRequest.policy);
                        }
                    }
                    if (this.mBrightnessReasonTemp.equals(this.mBrightnessReason)) {
                        Slog.i(TAG, "Brightness [" + brightnessState + "] reason changing to: '" + this.mBrightnessReasonTemp.toString(brightnessAdjustmentFlags2) + "', previous reason: '" + this.mBrightnessReason + "'.");
                        this.mBrightnessReason.set(this.mBrightnessReasonTemp);
                    } else {
                        Slog.i(TAG, "Brightness [" + brightnessState + "] reason changing to: '" + this.mBrightnessReasonTemp.toString(brightnessAdjustmentFlags2) + "', previous reason: '" + this.mBrightnessReason + "'.");
                        this.mBrightnessReason.set(this.mBrightnessReasonTemp);
                    }
                    if (this.mDisplayWhiteBalanceController != null) {
                        if (state2 != 2) {
                            this.mDisplayWhiteBalanceController.setEnabled(false);
                        } else {
                            this.mDisplayWhiteBalanceController.setEnabled(false);
                        }
                    }
                    if (this.mPendingScreenOnUnblocker == null) {
                        z = false;
                    } else {
                        z = false;
                    }
                    ready = z;
                    if (ready) {
                        z2 = false;
                    } else {
                        z2 = false;
                    }
                    finished = z2;
                    if (ready) {
                        setReportedScreenState(2);
                        this.mWindowManagerPolicy.screenTurnedOn();
                    }
                    if (!finished) {
                        this.mCallbacks.acquireSuspendBlocker();
                        this.mUnfinishedBusiness = true;
                    }
                    if (ready) {
                        z3 = true;
                    } else {
                        z3 = true;
                    }
                    if (finished) {
                        z4 = false;
                    } else {
                        z4 = false;
                    }
                    if (state2 == 2) {
                        z3 = z4;
                    }
                    this.mDozing = z3;
                    if (previousPolicy != this.mPowerRequest.policy) {
                        logDisplayPolicyChanged(this.mPowerRequest.policy);
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    @Override // com.android.server.display.AutomaticBrightnessController.Callbacks
    public void updateBrightness() {
        sendUpdatePowerState();
    }

    public void ignoreProximitySensorUntilChanged() {
        this.mHandler.sendEmptyMessage(8);
    }

    public void setBrightnessConfiguration(BrightnessConfiguration c) {
        Message msg = this.mHandler.obtainMessage(5, c);
        msg.sendToTarget();
    }

    public void setTemporaryBrightness(float brightness) {
        Message msg = this.mHandler.obtainMessage(6, Float.floatToIntBits(brightness), 0);
        msg.sendToTarget();
    }

    public void setTemporaryAutoBrightnessAdjustment(float adjustment) {
        Message msg = this.mHandler.obtainMessage(7, Float.floatToIntBits(adjustment), 0);
        msg.sendToTarget();
    }

    private void blockScreenOn() {
        if (this.mPendingScreenOnUnblocker == null) {
            Trace.asyncTraceBegin(131072L, SCREEN_ON_BLOCKED_TRACE_NAME, 0);
            this.mPendingScreenOnUnblocker = new ScreenOnUnblocker();
            this.mScreenOnBlockStartRealTime = SystemClock.elapsedRealtime();
            Slog.i(TAG, "Blocking screen on until initial contents have been drawn.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unblockScreenOn() {
        if (this.mPendingScreenOnUnblocker != null) {
            this.mPendingScreenOnUnblocker = null;
            long delay = SystemClock.elapsedRealtime() - this.mScreenOnBlockStartRealTime;
            Slog.i(TAG, "Unblocked screen on after " + delay + " ms");
            Trace.asyncTraceEnd(131072L, SCREEN_ON_BLOCKED_TRACE_NAME, 0);
        }
    }

    private void blockScreenOff() {
        if (this.mPendingScreenOffUnblocker == null) {
            Trace.asyncTraceBegin(131072L, SCREEN_OFF_BLOCKED_TRACE_NAME, 0);
            this.mPendingScreenOffUnblocker = new ScreenOffUnblocker();
            this.mScreenOffBlockStartRealTime = SystemClock.elapsedRealtime();
            Slog.i(TAG, "Blocking screen off");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unblockScreenOff() {
        if (this.mPendingScreenOffUnblocker != null) {
            this.mPendingScreenOffUnblocker = null;
            long delay = SystemClock.elapsedRealtime() - this.mScreenOffBlockStartRealTime;
            Slog.i(TAG, "Unblocked screen off after " + delay + " ms");
            Trace.asyncTraceEnd(131072L, SCREEN_OFF_BLOCKED_TRACE_NAME, 0);
        }
    }

    private boolean setScreenState(int state) {
        return setScreenState(state, false);
    }

    private boolean setScreenState(int state, boolean reportOnly) {
        boolean isOff = state == 1;
        if (this.mPowerState.getScreenState() != state) {
            if (isOff && !this.mScreenOffBecauseOfProximity) {
                if (this.mReportedScreenStateToPolicy == 2) {
                    setReportedScreenState(3);
                    blockScreenOff();
                    this.mWindowManagerPolicy.screenTurningOff(this.mPendingScreenOffUnblocker);
                    unblockScreenOff();
                } else if (this.mPendingScreenOffUnblocker != null) {
                    return false;
                }
            }
            if (!reportOnly) {
                Trace.traceCounter(131072L, "ScreenState", state);
                SystemProperties.set("debug.tracing.screen_state", String.valueOf(state));
                this.mPowerState.setScreenState(state);
                try {
                    this.mBatteryStats.noteScreenState(state);
                } catch (RemoteException e) {
                }
            }
        }
        if (isOff && this.mReportedScreenStateToPolicy != 0 && !this.mScreenOffBecauseOfProximity) {
            setReportedScreenState(0);
            unblockScreenOn();
            this.mWindowManagerPolicy.screenTurnedOff();
        } else if (!isOff && this.mReportedScreenStateToPolicy == 3) {
            unblockScreenOff();
            this.mWindowManagerPolicy.screenTurnedOff();
            setReportedScreenState(0);
        }
        if (!isOff && this.mReportedScreenStateToPolicy == 0) {
            setReportedScreenState(1);
            if (this.mPowerState.getColorFadeLevel() == SCREEN_ANIMATION_RATE_MINIMUM) {
                blockScreenOn();
            } else {
                unblockScreenOn();
            }
            this.mWindowManagerPolicy.screenTurningOn(this.mPendingScreenOnUnblocker);
        }
        return this.mPendingScreenOnUnblocker == null;
    }

    private void setReportedScreenState(int state) {
        Trace.traceCounter(131072L, "ReportedScreenStateToPolicy", state);
        this.mReportedScreenStateToPolicy = state;
    }

    private float clampScreenBrightnessForVr(float value) {
        return MathUtils.constrain(value, this.mScreenBrightnessForVrRangeMinimum, this.mScreenBrightnessForVrRangeMaximum);
    }

    private float clampScreenBrightness(float value) {
        if (Float.isNaN(value)) {
            return this.mScreenBrightnessRangeMinimum;
        }
        return MathUtils.constrain(value, this.mScreenBrightnessRangeMinimum, this.mScreenBrightnessRangeMaximum);
    }

    private boolean isValidBrightnessValue(float brightnessState) {
        return brightnessState >= this.mScreenBrightnessRangeMinimum && brightnessState <= this.mScreenBrightnessRangeMaximum;
    }

    private boolean directSetScreenBrightness(float target) {
        int value = BrightnessSynchronizer.brightnessFloatToInt(this.mContext, target);
        Slog.i(TAG, "direct set brightness to file " + BackLightSettings.MAIN_CONTROL_FILE + " and int value is " + value + ", float value is: " + target);
        try {
            BufferedWriter bufWriter = new BufferedWriter(new FileWriter(BackLightSettings.MAIN_CONTROL_FILE));
            try {
                bufWriter.write(String.format(Locale.ENGLISH, "%d\n", Integer.valueOf(value)));
                bufWriter.close();
            } catch (Throwable th) {
                try {
                    bufWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            Slog.e(TAG, "can't write to " + BackLightSettings.MAIN_CONTROL_FILE + " " + e.toString());
        }
        return true;
    }

    private boolean shouldSetScreenBrightness() {
        if (this.mBrightnessReasonTemp.reason == 1 && this.mBrightnessReason.reason == 1) {
            return false;
        }
        boolean toOverride = this.mBrightnessReasonTemp.reason == 7;
        boolean overrideToOthers = this.mBrightnessReason.reason == 7;
        boolean toScreenOff = this.mBrightnessReasonTemp.reason == 5;
        boolean screenToOthers = this.mBrightnessReason.reason == 5;
        return toOverride || overrideToOthers || toScreenOff || screenToOthers;
    }

    private void animateScreenBrightness(float target, float rate) {
        if (directSetScreenBrightness(target)) {
            Trace.traceCounter(131072L, "TargetScreenBrightness", (int) target);
            SystemProperties.set("debug.tracing.screen_brightness", String.valueOf(target));
            try {
                this.mBatteryStats.noteScreenBrightness(BrightnessSynchronizer.brightnessFloatToInt(this.mContext, target));
            } catch (RemoteException e) {
            }
        }
    }

    private void animateScreenStateChange(int target, boolean performScreenOffTransition) {
        if (this.mColorFadeEnabled && (this.mColorFadeOnAnimator.isStarted() || this.mColorFadeOffAnimator.isStarted())) {
            if (target != 2) {
                return;
            } else {
                this.mPendingScreenOff = false;
            }
        }
        if (this.mDisplayBlanksAfterDozeConfig && Display.isDozeState(this.mPowerState.getScreenState()) && !Display.isDozeState(target)) {
            this.mPowerState.prepareColorFade(this.mContext, this.mColorFadeFadesConfig ? 2 : 0);
            ObjectAnimator objectAnimator = this.mColorFadeOffAnimator;
            if (objectAnimator != null) {
                objectAnimator.end();
            }
            setScreenState(1, target != 1);
        }
        if (this.mPendingScreenOff && target != 1) {
            setScreenState(1);
            this.mPendingScreenOff = false;
            this.mPowerState.dismissColorFadeResources();
        }
        if (target == 2) {
            if (setScreenState(2)) {
                this.mPowerState.setColorFadeLevel(1.0f);
                this.mPowerState.dismissColorFade();
                return;
            }
            return;
        }
        if (target == 5) {
            if ((!this.mScreenBrightnessRampAnimator.isAnimating() || this.mPowerState.getScreenState() != 2) && setScreenState(5)) {
                this.mPowerState.setColorFadeLevel(1.0f);
                this.mPowerState.dismissColorFade();
                return;
            }
            return;
        }
        if (target == 3) {
            if ((!this.mScreenBrightnessRampAnimator.isAnimating() || this.mPowerState.getScreenState() != 2) && setScreenState(3)) {
                this.mPowerState.setColorFadeLevel(1.0f);
                this.mPowerState.dismissColorFade();
                return;
            }
            return;
        }
        if (target == 4) {
            if (!this.mScreenBrightnessRampAnimator.isAnimating() || this.mPowerState.getScreenState() == 4) {
                if (this.mPowerState.getScreenState() != 4) {
                    if (!setScreenState(3)) {
                        return;
                    } else {
                        setScreenState(4);
                    }
                }
                this.mPowerState.setColorFadeLevel(1.0f);
                this.mPowerState.dismissColorFade();
                return;
            }
            return;
        }
        if (target == 6) {
            if (!this.mScreenBrightnessRampAnimator.isAnimating() || this.mPowerState.getScreenState() == 6) {
                if (this.mPowerState.getScreenState() != 6) {
                    if (!setScreenState(2)) {
                        return;
                    } else {
                        setScreenState(6);
                    }
                }
                this.mPowerState.setColorFadeLevel(1.0f);
                this.mPowerState.dismissColorFade();
                return;
            }
            return;
        }
        this.mPendingScreenOff = true;
        if (!this.mColorFadeEnabled) {
            this.mPowerState.setColorFadeLevel(SCREEN_ANIMATION_RATE_MINIMUM);
        }
        if (this.mPowerState.getColorFadeLevel() == SCREEN_ANIMATION_RATE_MINIMUM) {
            setScreenState(1);
            this.mPendingScreenOff = false;
            this.mPowerState.dismissColorFadeResources();
        } else {
            if (performScreenOffTransition) {
                if (this.mPowerState.prepareColorFade(this.mContext, this.mColorFadeFadesConfig ? 2 : 1) && this.mPowerState.getScreenState() != 1) {
                    this.mColorFadeOffAnimator.start();
                    return;
                }
            }
            this.mColorFadeOffAnimator.end();
        }
    }

    private void setProximitySensorEnabled(boolean enable) {
        if (enable) {
            if (!this.mProximitySensorEnabled) {
                this.mProximitySensorEnabled = true;
                this.mIgnoreProximityUntilChanged = false;
                this.mSensorManager.registerListener(this.mProximitySensorListener, this.mProximitySensor, 3, this.mHandler);
                return;
            }
            return;
        }
        if (this.mProximitySensorEnabled) {
            this.mProximitySensorEnabled = false;
            this.mProximity = -1;
            this.mIgnoreProximityUntilChanged = false;
            this.mPendingProximity = -1;
            this.mHandler.removeMessages(2);
            this.mSensorManager.unregisterListener(this.mProximitySensorListener);
            clearPendingProximityDebounceTime();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleProximitySensorEvent(long time, boolean positive) throws Throwable {
        if (this.mProximitySensorEnabled) {
            if (this.mPendingProximity == 0 && !positive) {
                return;
            }
            if (this.mPendingProximity == 1 && positive) {
                return;
            }
            this.mHandler.removeMessages(2);
            if (positive) {
                this.mPendingProximity = 1;
                setPendingProximityDebounceTime(0 + time);
            } else {
                this.mPendingProximity = 0;
                setPendingProximityDebounceTime(250 + time);
            }
            debounceProximitySensor();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void debounceProximitySensor() throws Throwable {
        if (this.mProximitySensorEnabled && this.mPendingProximity != -1 && this.mPendingProximityDebounceTime >= 0) {
            long now = SystemClock.uptimeMillis();
            if (this.mPendingProximityDebounceTime <= now) {
                if (this.mProximity != this.mPendingProximity) {
                    this.mIgnoreProximityUntilChanged = false;
                    Slog.i(TAG, "No longer ignoring proximity [" + this.mPendingProximity + "]");
                }
                this.mProximity = this.mPendingProximity;
                updatePowerState();
                clearPendingProximityDebounceTime();
                return;
            }
            Message msg = this.mHandler.obtainMessage(2);
            this.mHandler.sendMessageAtTime(msg, this.mPendingProximityDebounceTime);
        }
    }

    private void clearPendingProximityDebounceTime() {
        if (this.mPendingProximityDebounceTime >= 0) {
            this.mPendingProximityDebounceTime = -1L;
            this.mCallbacks.releaseSuspendBlocker();
        }
    }

    private void setPendingProximityDebounceTime(long debounceTime) {
        if (this.mPendingProximityDebounceTime < 0) {
            this.mCallbacks.acquireSuspendBlocker();
        }
        this.mPendingProximityDebounceTime = debounceTime;
    }

    private void sendOnStateChangedWithWakelock() {
        this.mCallbacks.acquireSuspendBlocker();
        this.mHandler.post(this.mOnStateChangedRunnable);
    }

    private void logDisplayPolicyChanged(int newPolicy) {
        LogMaker log = new LogMaker(1696);
        log.setType(6);
        log.setSubtype(newPolicy);
        MetricsLogger.action(log);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSettingsChange(boolean userSwitch, Uri uri) {
        float screenBrightnessSetting = getScreenBrightnessSetting();
        this.mPendingScreenBrightnessSetting = screenBrightnessSetting;
        if (userSwitch) {
            this.mCurrentScreenBrightnessSetting = screenBrightnessSetting;
            AutomaticBrightnessController automaticBrightnessController = this.mAutomaticBrightnessController;
            if (automaticBrightnessController != null) {
                automaticBrightnessController.resetShortTermModel();
            }
        }
        this.mPendingAutoBrightnessAdjustment = getAutoBrightnessAdjustmentSetting();
        this.mScreenBrightnessForVr = getScreenBrightnessForVrSetting();
        if (!this.mBrightnessFloatUri.equals(uri)) {
            sendUpdatePowerState();
            return;
        }
        if (uri != null) {
            Slog.d(TAG, "ignore update state for uri: " + uri + ", pending bright value: " + this.mPendingScreenBrightnessSetting);
        }
    }

    private float getAutoBrightnessAdjustmentSetting() {
        float adj = Settings.System.getFloatForUser(this.mContext.getContentResolver(), "screen_auto_brightness_adj", SCREEN_ANIMATION_RATE_MINIMUM, -2);
        return Float.isNaN(adj) ? SCREEN_ANIMATION_RATE_MINIMUM : clampAutoBrightnessAdjustment(adj);
    }

    private float getScreenBrightnessSetting() {
        float brightness = Settings.System.getFloatForUser(this.mContext.getContentResolver(), "screen_brightness_float", this.mScreenBrightnessDefault, -2);
        return clampAbsoluteBrightness(brightness);
    }

    private float getScreenBrightnessForVrSetting() {
        float brightnessFloat = Settings.System.getFloatForUser(this.mContext.getContentResolver(), "screen_brightness_for_vr_float", this.mScreenBrightnessForVrDefault, -2);
        return clampScreenBrightnessForVr(brightnessFloat);
    }

    private void putScreenBrightnessSetting(float brightnessValue) {
        this.mCurrentScreenBrightnessSetting = brightnessValue;
        Settings.System.putFloatForUser(this.mContext.getContentResolver(), "screen_brightness_float", brightnessValue, -2);
    }

    private void putAutoBrightnessAdjustmentSetting(float adjustment) {
        this.mAutoBrightnessAdjustment = adjustment;
        Settings.System.putFloatForUser(this.mContext.getContentResolver(), "screen_auto_brightness_adj", adjustment, -2);
    }

    private boolean updateAutoBrightnessAdjustment() {
        if (Float.isNaN(this.mPendingAutoBrightnessAdjustment)) {
            return false;
        }
        float f = this.mAutoBrightnessAdjustment;
        float f2 = this.mPendingAutoBrightnessAdjustment;
        if (f == f2) {
            this.mPendingAutoBrightnessAdjustment = Float.NaN;
            return false;
        }
        this.mAutoBrightnessAdjustment = f2;
        this.mPendingAutoBrightnessAdjustment = Float.NaN;
        return true;
    }

    private boolean updateUserSetScreenBrightness() {
        if (!Float.isNaN(this.mPendingScreenBrightnessSetting)) {
            float f = this.mPendingScreenBrightnessSetting;
            if (f >= SCREEN_ANIMATION_RATE_MINIMUM) {
                if (this.mCurrentScreenBrightnessSetting == f) {
                    this.mPendingScreenBrightnessSetting = Float.NaN;
                    this.mTemporaryScreenBrightness = Float.NaN;
                    return false;
                }
                this.mCurrentScreenBrightnessSetting = f;
                this.mLastUserSetScreenBrightness = f;
                this.mPendingScreenBrightnessSetting = Float.NaN;
                this.mTemporaryScreenBrightness = Float.NaN;
                return true;
            }
        }
        return false;
    }

    private void notifyBrightnessChanged(int brightness, boolean userInitiated, boolean hadUserDataPoint) {
        float powerFactor;
        float brightnessInNits = convertToNits(brightness);
        if (this.mPowerRequest.useAutoBrightness && brightnessInNits >= SCREEN_ANIMATION_RATE_MINIMUM && this.mAutomaticBrightnessController != null) {
            if (this.mPowerRequest.lowPowerMode) {
                powerFactor = this.mPowerRequest.screenLowPowerBrightnessFactor;
            } else {
                powerFactor = 1.0f;
            }
            this.mBrightnessTracker.notifyBrightnessChanged(brightnessInNits, userInitiated, powerFactor, hadUserDataPoint, this.mAutomaticBrightnessController.isDefaultConfig());
        }
    }

    private float convertToNits(int backlight) {
        BrightnessMappingStrategy brightnessMappingStrategy = this.mBrightnessMapper;
        if (brightnessMappingStrategy != null) {
            return brightnessMappingStrategy.convertToNits(backlight);
        }
        return -1.0f;
    }

    private void updatePendingProximityRequestsLocked() {
        this.mWaitingForNegativeProximity |= this.mPendingWaitForNegativeProximityLocked;
        this.mPendingWaitForNegativeProximityLocked = false;
        if (this.mIgnoreProximityUntilChanged) {
            this.mWaitingForNegativeProximity = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ignoreProximitySensorUntilChangedInternal() throws Throwable {
        if (!this.mIgnoreProximityUntilChanged && this.mPowerRequest.useProximitySensor && this.mProximity == 1) {
            this.mIgnoreProximityUntilChanged = true;
            Slog.i(TAG, "Ignoring proximity");
            updatePowerState();
        }
    }

    private void sendOnProximityPositiveWithWakelock() {
        this.mCallbacks.acquireSuspendBlocker();
        this.mHandler.post(this.mOnProximityPositiveRunnable);
    }

    private void sendOnProximityNegativeWithWakelock() {
        this.mCallbacks.acquireSuspendBlocker();
        this.mHandler.post(this.mOnProximityNegativeRunnable);
    }

    public void dump(final PrintWriter pw) {
        synchronized (this.mLock) {
            pw.println();
            pw.println("Display Power Controller Locked State:");
            pw.println("  mDisplayReadyLocked=" + this.mDisplayReadyLocked);
            pw.println("  mPendingRequestLocked=" + this.mPendingRequestLocked);
            pw.println("  mPendingRequestChangedLocked=" + this.mPendingRequestChangedLocked);
            pw.println("  mPendingWaitForNegativeProximityLocked=" + this.mPendingWaitForNegativeProximityLocked);
            pw.println("  mPendingUpdatePowerStateLocked=" + this.mPendingUpdatePowerStateLocked);
        }
        pw.println();
        pw.println("Display Power Controller Configuration:");
        pw.println("  mScreenBrightnessDozeConfig=" + this.mScreenBrightnessDozeConfig);
        pw.println("  mScreenBrightnessDimConfig=" + this.mScreenBrightnessDimConfig);
        pw.println("  mScreenBrightnessDefault=" + this.mScreenBrightnessDefault);
        pw.println("  mScreenBrightnessForVrRangeMinimum=" + this.mScreenBrightnessForVrRangeMinimum);
        pw.println("  mScreenBrightnessForVrRangeMaximum=" + this.mScreenBrightnessForVrRangeMaximum);
        pw.println("  mScreenBrightnessForVrDefault=" + this.mScreenBrightnessForVrDefault);
        pw.println("  mUseSoftwareAutoBrightnessConfig=" + this.mUseSoftwareAutoBrightnessConfig);
        pw.println("  mAllowAutoBrightnessWhileDozingConfig=" + this.mAllowAutoBrightnessWhileDozingConfig);
        pw.println("  mSkipScreenOnBrightnessRamp=" + this.mSkipScreenOnBrightnessRamp);
        pw.println("  mColorFadeFadesConfig=" + this.mColorFadeFadesConfig);
        pw.println("  mColorFadeEnabled=" + this.mColorFadeEnabled);
        pw.println("  mDisplayBlanksAfterDozeConfig=" + this.mDisplayBlanksAfterDozeConfig);
        pw.println("  mBrightnessBucketsInDozeConfig=" + this.mBrightnessBucketsInDozeConfig);
        this.mHandler.runWithScissors(new Runnable() { // from class: com.android.server.display.DisplayPowerController.7
            @Override // java.lang.Runnable
            public void run() {
                DisplayPowerController.this.dumpLocal(pw);
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpLocal(PrintWriter pw) {
        pw.println();
        pw.println("Display Power Controller Thread State:");
        pw.println("  mPowerRequest=" + this.mPowerRequest);
        pw.println("  mUnfinishedBusiness=" + this.mUnfinishedBusiness);
        pw.println("  mWaitingForNegativeProximity=" + this.mWaitingForNegativeProximity);
        pw.println("  mProximitySensor=" + this.mProximitySensor);
        pw.println("  mProximitySensorEnabled=" + this.mProximitySensorEnabled);
        pw.println("  mProximityThreshold=" + this.mProximityThreshold);
        pw.println("  mProximity=" + proximityToString(this.mProximity));
        pw.println("  mPendingProximity=" + proximityToString(this.mPendingProximity));
        pw.println("  mPendingProximityDebounceTime=" + TimeUtils.formatUptime(this.mPendingProximityDebounceTime));
        pw.println("  mScreenOffBecauseOfProximity=" + this.mScreenOffBecauseOfProximity);
        pw.println("  mLastUserSetScreenBrightnessFloat=" + this.mLastUserSetScreenBrightness);
        pw.println("  mPendingScreenBrightnessSettingFloat=" + this.mPendingScreenBrightnessSetting);
        pw.println("  mTemporaryScreenBrightnessFloat=" + this.mTemporaryScreenBrightness);
        pw.println("  mAutoBrightnessAdjustment=" + this.mAutoBrightnessAdjustment);
        pw.println("  mBrightnessReason=" + this.mBrightnessReason);
        pw.println("  mTemporaryAutoBrightnessAdjustment=" + this.mTemporaryAutoBrightnessAdjustment);
        pw.println("  mPendingAutoBrightnessAdjustment=" + this.mPendingAutoBrightnessAdjustment);
        pw.println("  mScreenBrightnessForVrFloat=" + this.mScreenBrightnessForVr);
        pw.println("  mAppliedAutoBrightness=" + this.mAppliedAutoBrightness);
        pw.println("  mAppliedDimming=" + this.mAppliedDimming);
        pw.println("  mAppliedLowPower=" + this.mAppliedLowPower);
        pw.println("  mAppliedScreenBrightnessOverride=" + this.mAppliedScreenBrightnessOverride);
        pw.println("  mAppliedTemporaryBrightness=" + this.mAppliedTemporaryBrightness);
        pw.println("  mDozing=" + this.mDozing);
        pw.println("  mSkipRampState=" + skipRampStateToString(this.mSkipRampState));
        pw.println("  mScreenOnBlockStartRealTime=" + this.mScreenOnBlockStartRealTime);
        pw.println("  mScreenOffBlockStartRealTime=" + this.mScreenOffBlockStartRealTime);
        pw.println("  mPendingScreenOnUnblocker=" + this.mPendingScreenOnUnblocker);
        pw.println("  mPendingScreenOffUnblocker=" + this.mPendingScreenOffUnblocker);
        pw.println("  mPendingScreenOff=" + this.mPendingScreenOff);
        pw.println("  mReportedToPolicy=" + reportedToPolicyToString(this.mReportedScreenStateToPolicy));
        if (this.mScreenBrightnessRampAnimator != null) {
            pw.println("  mScreenBrightnessRampAnimator.isAnimating()=" + this.mScreenBrightnessRampAnimator.isAnimating());
        }
        if (this.mColorFadeOnAnimator != null) {
            pw.println("  mColorFadeOnAnimator.isStarted()=" + this.mColorFadeOnAnimator.isStarted());
        }
        if (this.mColorFadeOffAnimator != null) {
            pw.println("  mColorFadeOffAnimator.isStarted()=" + this.mColorFadeOffAnimator.isStarted());
        }
        DisplayPowerState displayPowerState = this.mPowerState;
        if (displayPowerState != null) {
            displayPowerState.dump(pw);
        }
        AutomaticBrightnessController automaticBrightnessController = this.mAutomaticBrightnessController;
        if (automaticBrightnessController != null) {
            automaticBrightnessController.dump(pw);
        }
        if (this.mBrightnessTracker != null) {
            pw.println();
            this.mBrightnessTracker.dump(pw);
        }
        pw.println();
        DisplayWhiteBalanceController displayWhiteBalanceController = this.mDisplayWhiteBalanceController;
        if (displayWhiteBalanceController != null) {
            displayWhiteBalanceController.dump(pw);
            this.mDisplayWhiteBalanceSettings.dump(pw);
        }
    }

    private static String proximityToString(int state) {
        if (state == -1) {
            return "Unknown";
        }
        if (state == 0) {
            return "Negative";
        }
        if (state == 1) {
            return "Positive";
        }
        return Integer.toString(state);
    }

    private static String reportedToPolicyToString(int state) {
        if (state == 0) {
            return "REPORTED_TO_POLICY_SCREEN_OFF";
        }
        if (state == 1) {
            return "REPORTED_TO_POLICY_SCREEN_TURNING_ON";
        }
        if (state == 2) {
            return "REPORTED_TO_POLICY_SCREEN_ON";
        }
        return Integer.toString(state);
    }

    private static String skipRampStateToString(int state) {
        if (state == 0) {
            return "RAMP_STATE_SKIP_NONE";
        }
        if (state == 1) {
            return "RAMP_STATE_SKIP_INITIAL";
        }
        if (state == 2) {
            return "RAMP_STATE_SKIP_AUTOBRIGHT";
        }
        return Integer.toString(state);
    }

    private static int clampAbsoluteBrightness(int value) {
        return MathUtils.constrain(value, 0, 255);
    }

    private static float clampAbsoluteBrightness(float value) {
        return MathUtils.constrain(value, SCREEN_ANIMATION_RATE_MINIMUM, 1.0f);
    }

    private static float clampAutoBrightnessAdjustment(float value) {
        return MathUtils.constrain(value, -1.0f, 1.0f);
    }

    private final class DisplayControllerHandler extends Handler {
        public DisplayControllerHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) throws Throwable {
            switch (msg.what) {
                case 1:
                    DisplayPowerController.this.updatePowerState();
                    break;
                case 2:
                    DisplayPowerController.this.debounceProximitySensor();
                    break;
                case 3:
                    if (DisplayPowerController.this.mPendingScreenOnUnblocker == msg.obj) {
                        DisplayPowerController.this.unblockScreenOn();
                        DisplayPowerController.this.updatePowerState();
                    }
                    break;
                case 4:
                    if (DisplayPowerController.this.mPendingScreenOffUnblocker == msg.obj) {
                        DisplayPowerController.this.unblockScreenOff();
                        DisplayPowerController.this.updatePowerState();
                    }
                    break;
                case 5:
                    DisplayPowerController.this.mBrightnessConfiguration = (BrightnessConfiguration) msg.obj;
                    DisplayPowerController.this.updatePowerState();
                    break;
                case 6:
                    DisplayPowerController.this.mTemporaryScreenBrightness = Float.intBitsToFloat(msg.arg1);
                    DisplayPowerController.this.updatePowerState();
                    break;
                case 7:
                    DisplayPowerController.this.mTemporaryAutoBrightnessAdjustment = Float.intBitsToFloat(msg.arg1);
                    DisplayPowerController.this.updatePowerState();
                    break;
                case 8:
                    DisplayPowerController.this.ignoreProximitySensorUntilChangedInternal();
                    break;
            }
        }
    }

    private final class SettingsObserver extends ContentObserver {
        public SettingsObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            DisplayPowerController.this.handleSettingsChange(false, uri);
        }
    }

    private final class ScreenOnUnblocker implements WindowManagerPolicy.ScreenOnListener {
        private ScreenOnUnblocker() {
        }

        @Override // com.android.server.policy.WindowManagerPolicy.ScreenOnListener
        public void onScreenOn() {
            Message msg = DisplayPowerController.this.mHandler.obtainMessage(3, this);
            DisplayPowerController.this.mHandler.sendMessage(msg);
        }
    }

    private final class ScreenOffUnblocker implements WindowManagerPolicy.ScreenOffListener {
        private ScreenOffUnblocker() {
        }

        @Override // com.android.server.policy.WindowManagerPolicy.ScreenOffListener
        public void onScreenOff() {
            Message msg = DisplayPowerController.this.mHandler.obtainMessage(4, this);
            DisplayPowerController.this.mHandler.sendMessage(msg);
        }
    }

    void setAutoBrightnessLoggingEnabled(boolean enabled) {
        AutomaticBrightnessController automaticBrightnessController = this.mAutomaticBrightnessController;
        if (automaticBrightnessController != null) {
            automaticBrightnessController.setLoggingEnabled(enabled);
        }
    }

    @Override // com.android.server.display.whitebalance.DisplayWhiteBalanceController.Callbacks
    public void updateWhiteBalance() {
        sendUpdatePowerState();
    }

    void setDisplayWhiteBalanceLoggingEnabled(boolean enabled) {
        DisplayWhiteBalanceController displayWhiteBalanceController = this.mDisplayWhiteBalanceController;
        if (displayWhiteBalanceController != null) {
            displayWhiteBalanceController.setLoggingEnabled(enabled);
            this.mDisplayWhiteBalanceSettings.setLoggingEnabled(enabled);
        }
    }

    void setAmbientColorTemperatureOverride(float cct) {
        DisplayWhiteBalanceController displayWhiteBalanceController = this.mDisplayWhiteBalanceController;
        if (displayWhiteBalanceController != null) {
            displayWhiteBalanceController.setAmbientColorTemperatureOverride(cct);
            sendUpdatePowerState();
        }
    }

    private final class BrightnessReason {
        static final int ADJUSTMENT_AUTO = 2;
        static final int ADJUSTMENT_AUTO_TEMP = 1;
        static final int MODIFIER_DIMMED = 1;
        static final int MODIFIER_LOW_POWER = 2;
        static final int MODIFIER_MASK = 3;
        static final int REASON_AUTOMATIC = 4;
        static final int REASON_BOOST = 9;
        static final int REASON_DOZE = 2;
        static final int REASON_DOZE_DEFAULT = 3;
        static final int REASON_MANUAL = 1;
        static final int REASON_MAX = 9;
        static final int REASON_OVERRIDE = 7;
        static final int REASON_SCREEN_OFF = 5;
        static final int REASON_TEMPORARY = 8;
        static final int REASON_UNKNOWN = 0;
        static final int REASON_VR = 6;
        public int modifier;
        public int reason;

        private BrightnessReason() {
        }

        public void set(BrightnessReason other) {
            setReason(other == null ? 0 : other.reason);
            setModifier(other != null ? other.modifier : 0);
        }

        public void setReason(int reason) {
            if (reason < 0 || reason > 9) {
                Slog.w(DisplayPowerController.TAG, "brightness reason out of bounds: " + reason);
                return;
            }
            this.reason = reason;
        }

        public void setModifier(int modifier) {
            if ((modifier & (-4)) != 0) {
                Slog.w(DisplayPowerController.TAG, "brightness modifier out of bounds: 0x" + Integer.toHexString(modifier));
                return;
            }
            this.modifier = modifier;
        }

        public void addModifier(int modifier) {
            setModifier(this.modifier | modifier);
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof BrightnessReason)) {
                return false;
            }
            BrightnessReason other = (BrightnessReason) obj;
            return other.reason == this.reason && other.modifier == this.modifier;
        }

        public String toString() {
            return toString(0);
        }

        public String toString(int adjustments) {
            StringBuilder sb = new StringBuilder();
            sb.append(reasonToString(this.reason));
            sb.append(" [");
            if ((adjustments & 1) != 0) {
                sb.append(" temp_adj");
            }
            if ((adjustments & 2) != 0) {
                sb.append(" auto_adj");
            }
            if ((this.modifier & 2) != 0) {
                sb.append(" low_pwr");
            }
            if ((this.modifier & 1) != 0) {
                sb.append(" dim");
            }
            int strlen = sb.length();
            if (sb.charAt(strlen - 1) == '[') {
                sb.setLength(strlen - 2);
            } else {
                sb.append(" ]");
            }
            return sb.toString();
        }

        private String reasonToString(int reason) {
            switch (reason) {
                case 1:
                    return "manual";
                case 2:
                    return "doze";
                case 3:
                    return "doze_default";
                case 4:
                    return "automatic";
                case 5:
                    return "screen_off";
                case 6:
                    return "vr";
                case 7:
                    return "override";
                case 8:
                    return "temporary";
                case 9:
                    return "boost";
                default:
                    return Integer.toString(reason);
            }
        }
    }
}
