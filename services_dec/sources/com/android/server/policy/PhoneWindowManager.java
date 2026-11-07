package com.android.server.policy;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.ActivityTaskManager;
import android.app.AppOpsManager;
import android.app.IApplicationThread;
import android.app.IUiModeManager;
import android.app.NotificationManager;
import android.app.ProfilerInfo;
import android.app.ProgressDialog;
import android.app.SearchManager;
import android.app.UiModeManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.display.DisplayManager;
import android.hardware.hdmi.HdmiAudioSystemClient;
import android.hardware.hdmi.HdmiControlManager;
import android.hardware.hdmi.HdmiPlaybackClient;
import android.hardware.input.InputManagerInternal;
import android.media.AudioAttributes;
import android.media.AudioManagerInternal;
import android.media.AudioSystem;
import android.media.IAudioService;
import android.media.session.MediaSessionLegacyHelper;
import android.net.Uri;
import android.net.netlink.NetlinkConstants;
import android.os.Binder;
import android.os.Bundle;
import android.os.FactoryTest;
import android.os.Handler;
import android.os.IBinder;
import android.os.IDeviceIdleController;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManagerInternal;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.StrictMode;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UEventObserver;
import android.os.UserHandle;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.service.dreams.DreamManagerInternal;
import android.service.dreams.IDreamManager;
import android.service.vr.IPersistentVrStateCallbacks;
import android.telecom.TelecomManager;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.MutableBoolean;
import android.util.PrintWriterPrinter;
import android.util.Slog;
import android.util.SparseArray;
import android.util.proto.ProtoOutputStream;
import android.view.Display;
import android.view.IDisplayFoldListener;
import android.view.IWindowManager;
import android.view.InputDevice;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.autofill.AutofillManagerInternal;
import com.android.internal.accessibility.AccessibilityShortcutController;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.os.RoSystemProperties;
import com.android.internal.policy.IKeyguardDismissCallback;
import com.android.internal.policy.IShortcutService;
import com.android.internal.policy.KeyInterceptionInfo;
import com.android.internal.policy.PhoneWindow;
import com.android.internal.statusbar.IStatusBarService;
import com.android.internal.util.ArrayUtils;
import com.android.server.ExtconStateObserver;
import com.android.server.ExtconUEventObserver;
import com.android.server.GestureLauncherService;
import com.android.server.LocalServices;
import com.android.server.SystemServiceManager;
import com.android.server.hdmi.HdmiCecKeycode;
import com.android.server.inputmethod.InputMethodManagerInternal;
import com.android.server.notification.SnoozeHelper;
import com.android.server.policy.keyguard.KeyguardServiceDelegate;
import com.android.server.policy.keyguard.KeyguardStateMonitor;
import com.android.server.statusbar.StatusBarManagerInternal;
import com.android.server.usb.descriptors.UsbDescriptor;
import com.android.server.vr.VrManagerInternal;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.android.server.wm.AppTransition;
import com.android.server.wm.DisplayPolicy;
import com.android.server.wm.DisplayRotation;
import com.android.server.wm.WindowManagerInternal;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class PhoneWindowManager implements WindowManagerPolicy {
    private static final int BRIGHTNESS_STEPS = 10;
    private static final long BUGREPORT_TV_GESTURE_TIMEOUT_MILLIS = 1000;
    static final boolean DEBUG_INPUT = false;
    static final boolean DEBUG_KEYGUARD = false;
    static final boolean DEBUG_SPLASH_SCREEN = false;
    static final boolean DEBUG_WAKEUP = false;
    static final int DOUBLE_TAP_HOME_NOTHING = 0;
    static final int DOUBLE_TAP_HOME_RECENT_SYSTEM_UI = 1;
    static final boolean ENABLE_DESK_DOCK_HOME_CAPTURE = false;
    static final boolean ENABLE_VR_HEADSET_HOME_CAPTURE = true;
    private static final float KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER = 2.5f;
    static final int LAST_LONG_PRESS_HOME_BEHAVIOR = 2;
    static final int LONG_PRESS_BACK_GO_TO_VOICE_ASSIST = 1;
    static final int LONG_PRESS_BACK_NOTHING = 0;
    static final int LONG_PRESS_HOME_ALL_APPS = 1;
    static final int LONG_PRESS_HOME_ASSIST = 2;
    static final int LONG_PRESS_HOME_NOTHING = 0;
    static final int LONG_PRESS_POWER_ASSISTANT = 5;
    static final int LONG_PRESS_POWER_GLOBAL_ACTIONS = 1;
    static final int LONG_PRESS_POWER_GO_TO_VOICE_ASSIST = 4;
    static final int LONG_PRESS_POWER_NOTHING = 0;
    static final int LONG_PRESS_POWER_SHUT_OFF = 2;
    static final int LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM = 3;
    private static final int MSG_ACCESSIBILITY_SHORTCUT = 17;
    private static final int MSG_ACCESSIBILITY_TV = 19;
    private static final int MSG_BACK_LONG_PRESS = 16;
    private static final int MSG_BUGREPORT_TV = 18;
    private static final int MSG_DISPATCH_BACK_KEY_TO_AUTOFILL = 20;
    private static final int MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK = 4;
    private static final int MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK = 3;
    private static final int MSG_DISPATCH_SHOW_GLOBAL_ACTIONS = 10;
    private static final int MSG_DISPATCH_SHOW_RECENTS = 9;
    private static final int MSG_HANDLE_ALL_APPS = 22;
    private static final int MSG_HIDE_BOOT_MESSAGE = 11;
    private static final int MSG_KEYGUARD_DRAWN_COMPLETE = 5;
    private static final int MSG_KEYGUARD_DRAWN_TIMEOUT = 6;
    private static final int MSG_LAUNCH_ASSIST = 23;
    private static final int MSG_LAUNCH_ASSIST_LONG_PRESS = 24;
    private static final int MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK = 12;
    private static final int MSG_POWER_DELAYED_PRESS = 13;
    private static final int MSG_POWER_LONG_PRESS = 14;
    private static final int MSG_POWER_VERY_LONG_PRESS = 25;
    private static final int MSG_RINGER_TOGGLE_CHORD = 26;
    private static final int MSG_SHOW_PICTURE_IN_PICTURE_MENU = 15;
    private static final int MSG_SYSTEM_KEY_PRESS = 21;
    private static final int MSG_WINDOW_MANAGER_DRAWN_COMPLETE = 7;
    static final int MULTI_PRESS_POWER_BRIGHTNESS_BOOST = 2;
    static final int MULTI_PRESS_POWER_NOTHING = 0;
    static final int MULTI_PRESS_POWER_THEATER_MODE = 1;
    static final int PENDING_KEY_NULL = -1;
    private static final int POWER_BUTTON_SUPPRESSION_DELAY_DEFAULT_MILLIS = 800;
    private static final long SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS = 150;
    static final int SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME = 5;
    static final int SHORT_PRESS_POWER_GO_HOME = 4;
    static final int SHORT_PRESS_POWER_GO_TO_SLEEP = 1;
    static final int SHORT_PRESS_POWER_NOTHING = 0;
    static final int SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP = 2;
    static final int SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME = 3;
    static final int SHORT_PRESS_SLEEP_GO_TO_SLEEP = 0;
    static final int SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME = 1;
    static final int SHORT_PRESS_WINDOW_NOTHING = 0;
    static final int SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE = 1;
    static final boolean SHOW_SPLASH_SCREENS = true;
    public static final String SYSTEM_DIALOG_REASON_ASSIST = "assist";
    public static final String SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS = "globalactions";
    public static final String SYSTEM_DIALOG_REASON_HOME_KEY = "homekey";
    public static final String SYSTEM_DIALOG_REASON_KEY = "reason";
    public static final String SYSTEM_DIALOG_REASON_RECENT_APPS = "recentapps";
    public static final String SYSTEM_DIALOG_REASON_SCREENSHOT = "screenshot";
    static final String TAG = "WindowManager";
    public static final int TOAST_WINDOW_TIMEOUT = 3500;
    static final int VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS = 1;
    static final int VERY_LONG_PRESS_POWER_NOTHING = 0;
    private static final AudioAttributes VIBRATION_ATTRIBUTES = new AudioAttributes.Builder().setContentType(4).setUsage(13).build();
    static final int WAITING_FOR_DRAWN_TIMEOUT = 1000;
    private static final int[] WINDOW_TYPES_WHERE_HOME_DOESNT_WORK;
    static final boolean localLOGV = false;
    static SparseArray<String> sApplicationLaunchKeyCategories;
    private boolean mA11yShortcutChordVolumeUpKeyConsumed;
    private long mA11yShortcutChordVolumeUpKeyTime;
    private boolean mA11yShortcutChordVolumeUpKeyTriggered;
    AccessibilityManager mAccessibilityManager;
    private AccessibilityShortcutController mAccessibilityShortcutController;
    private boolean mAccessibilityTvKey1Pressed;
    private boolean mAccessibilityTvKey2Pressed;
    private boolean mAccessibilityTvScheduled;
    ActivityManagerInternal mActivityManagerInternal;
    ActivityTaskManagerInternal mActivityTaskManagerInternal;
    boolean mAllowStartActivityForLongPressOnPowerDuringSetup;
    private boolean mAllowTheaterModeWakeFromCameraLens;
    private boolean mAllowTheaterModeWakeFromKey;
    private boolean mAllowTheaterModeWakeFromLidSwitch;
    private boolean mAllowTheaterModeWakeFromMotion;
    private boolean mAllowTheaterModeWakeFromMotionWhenNotDreaming;
    private boolean mAllowTheaterModeWakeFromPowerKey;
    private boolean mAllowTheaterModeWakeFromWakeGesture;
    private boolean mAodShowing;
    AppOpsManager mAppOpsManager;
    AudioManagerInternal mAudioManagerInternal;
    AutofillManagerInternal mAutofillManagerInternal;
    volatile boolean mBackKeyHandled;
    volatile boolean mBeganFromNonInteractive;
    boolean mBootMessageNeedsHiding;
    PowerManager.WakeLock mBroadcastWakeLock;
    private boolean mBugreportTvKey1Pressed;
    private boolean mBugreportTvKey2Pressed;
    private boolean mBugreportTvScheduled;
    BurnInProtectionHelper mBurnInProtectionHelper;
    long[] mCalendarDateVibePattern;
    volatile boolean mCameraGestureTriggeredDuringGoingToSleep;
    Intent mCarDockIntent;
    boolean mConsumeSearchKeyUp;
    Context mContext;
    private int mCurrentUserId;
    Display mDefaultDisplay;
    DisplayPolicy mDefaultDisplayPolicy;
    DisplayRotation mDefaultDisplayRotation;
    Intent mDeskDockIntent;
    private volatile boolean mDismissImeOnBackKeyPressed;
    private DisplayFoldController mDisplayFoldController;
    DisplayManager mDisplayManager;
    int mDoublePressOnPowerBehavior;
    private int mDoubleTapOnHomeBehavior;
    DreamManagerInternal mDreamManagerInternal;
    volatile boolean mEndCallKeyHandled;
    int mEndcallBehavior;
    GlobalActions mGlobalActions;
    private GlobalKeyManager mGlobalKeyManager;
    private boolean mGoToSleepOnButtonPressTheaterMode;
    volatile boolean mGoingToSleep;
    private boolean mHandleVolumeKeysInWM;
    Handler mHandler;
    boolean mHapticTextHandleEnabled;
    private boolean mHasFeatureAuto;
    private boolean mHasFeatureHdmiCec;
    private boolean mHasFeatureLeanback;
    private boolean mHasFeatureWatch;
    boolean mHaveBuiltInKeyboard;
    boolean mHavePendingMediaKeyRepeatWithWakeLock;
    HdmiControl mHdmiControl;
    Intent mHomeIntent;
    int mIncallBackBehavior;
    int mIncallPowerBehavior;
    int mInitialMetaState;
    InputManagerInternal mInputManagerInternal;
    InputMethodManagerInternal mInputMethodManagerInternal;
    private boolean mKeyguardBound;
    KeyguardServiceDelegate mKeyguardDelegate;
    private boolean mKeyguardDrawnOnce;
    volatile boolean mKeyguardOccluded;
    private boolean mKeyguardOccludedChanged;
    boolean mLanguageSwitchKeyPressed;
    private boolean mLidControlsDisplayFold;
    int mLidKeyboardAccessibility;
    int mLidNavigationAccessibility;
    int mLockScreenTimeout;
    boolean mLockScreenTimerActive;
    MetricsLogger mLogger;
    int mLongPressOnBackBehavior;
    private int mLongPressOnHomeBehavior;
    int mLongPressOnPowerBehavior;
    long[] mLongPressVibePattern;
    int mMetaState;
    PackageManager mPackageManager;
    boolean mPendingCapsLockToggle;
    private boolean mPendingKeyguardOccluded;
    boolean mPendingMetaAction;
    volatile boolean mPictureInPictureVisible;
    volatile boolean mPowerKeyHandled;
    volatile int mPowerKeyPressCounter;
    PowerManager.WakeLock mPowerKeyWakeLock;
    PowerManager mPowerManager;
    PowerManagerInternal mPowerManagerInternal;
    boolean mPreloadedRecentApps;
    int mRecentAppsHeldModifiers;
    volatile boolean mRecentsVisible;
    volatile boolean mRequestedOrGoingToSleep;
    boolean mSafeMode;
    long[] mSafeModeEnabledVibePattern;
    private ActivityTaskManagerInternal.SleepTokenAcquirer mScreenOffSleepTokenAcquirer;
    private boolean mScreenshotChordEnabled;
    private long mScreenshotChordPowerKeyTime;
    private boolean mScreenshotChordPowerKeyTriggered;
    private boolean mScreenshotChordVolumeDownKeyConsumed;
    private long mScreenshotChordVolumeDownKeyTime;
    private boolean mScreenshotChordVolumeDownKeyTriggered;
    boolean mSearchKeyShortcutPending;
    SearchManager mSearchManager;
    SettingsObserver mSettingsObserver;
    int mShortPressOnPowerBehavior;
    int mShortPressOnSleepBehavior;
    int mShortPressOnWindowBehavior;
    ShortcutManager mShortcutManager;
    StatusBarManagerInternal mStatusBarManagerInternal;
    IStatusBarService mStatusBarService;
    private boolean mSupportLongPressPowerWhenNonInteractive;
    boolean mSystemBooted;
    boolean mSystemNavigationKeysEnabled;
    boolean mSystemReady;
    int mTriplePressOnPowerBehavior;
    int mUiMode;
    IUiModeManager mUiModeManager;
    boolean mUseTvRouting;
    int mVeryLongPressOnPowerBehavior;
    int mVeryLongPressTimeout;
    Vibrator mVibrator;
    Intent mVrHeadsetHomeIntent;
    volatile VrManagerInternal mVrManagerInternal;
    boolean mWakeGestureEnabledSetting;
    MyWakeGestureListener mWakeGestureListener;
    boolean mWakeOnAssistKeyPress;
    boolean mWakeOnBackKeyPress;
    boolean mWakeOnDpadKeyPress;
    IWindowManager mWindowManager;
    WindowManagerPolicy.WindowManagerFuncs mWindowManagerFuncs;
    WindowManagerInternal mWindowManagerInternal;
    private final Object mLock = new Object();
    final Object mServiceAquireLock = new Object();
    boolean mEnableShiftMenuBugReports = false;
    private WindowManagerPolicy.WindowState mKeyguardCandidate = null;
    private LongSparseArray<IShortcutService> mShortcutKeyServices = new LongSparseArray<>();
    private boolean mEnableCarDockHomeCapture = true;
    final Runnable mWindowManagerDrawCallback = new Runnable() { // from class: com.android.server.policy.PhoneWindowManager.1
        @Override // java.lang.Runnable
        public void run() {
            PhoneWindowManager.this.mHandler.sendEmptyMessage(7);
        }
    };
    final KeyguardServiceDelegate.DrawnListener mKeyguardDrawnCallback = new KeyguardServiceDelegate.DrawnListener() { // from class: com.android.server.policy.PhoneWindowManager.2
        @Override // com.android.server.policy.keyguard.KeyguardServiceDelegate.DrawnListener
        public void onDrawn() {
            PhoneWindowManager.this.mHandler.sendEmptyMessage(5);
        }
    };
    volatile boolean mNavBarVirtualKeyHapticFeedbackEnabled = true;
    volatile int mPendingWakeKey = -1;
    int mCameraLensCoverState = -1;
    boolean mHasSoftInput = false;
    private HashSet<Integer> mAllowLockscreenWhenOnDisplays = new HashSet<>();
    private int mRingerToggleChord = 0;
    private final SparseArray<KeyCharacterMap.FallbackAction> mFallbackActions = new SparseArray<>();
    private final LogDecelerateInterpolator mLogDecelerateInterpolator = new LogDecelerateInterpolator(100, 0);
    private final MutableBoolean mTmpBoolean = new MutableBoolean(false);
    private boolean mPerDisplayFocusEnabled = false;
    private volatile int mTopFocusedDisplayId = -1;
    private int mPowerButtonSuppressionDelayMillis = POWER_BUTTON_SUPPRESSION_DELAY_DEFAULT_MILLIS;
    private boolean mLockNowPending = false;
    private UEventObserver mHDMIObserver = new UEventObserver() { // from class: com.android.server.policy.PhoneWindowManager.3
        public void onUEvent(UEventObserver.UEvent event) {
            PhoneWindowManager.this.mDefaultDisplayPolicy.setHdmiPlugged(SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(event.get("SWITCH_STATE")));
        }
    };
    final IPersistentVrStateCallbacks mPersistentVrModeListener = new IPersistentVrStateCallbacks.Stub() { // from class: com.android.server.policy.PhoneWindowManager.4
        public void onPersistentVrStateChanged(boolean enabled) {
            PhoneWindowManager.this.mDefaultDisplayPolicy.setPersistentVrModeEnabled(enabled);
        }
    };
    private Runnable mPossibleVeryLongPressReboot = new Runnable() { // from class: com.android.server.policy.PhoneWindowManager.5
        @Override // java.lang.Runnable
        public void run() {
            PhoneWindowManager.this.mActivityManagerInternal.prepareForPossibleShutdown();
        }
    };
    private final Runnable mEndCallLongPress = new Runnable() { // from class: com.android.server.policy.PhoneWindowManager.6
        @Override // java.lang.Runnable
        public void run() {
            PhoneWindowManager.this.mEndCallKeyHandled = true;
            PhoneWindowManager.this.performHapticFeedback(0, false, "End Call - Long Press - Show Global Actions");
            PhoneWindowManager.this.showGlobalActionsInternal();
        }
    };
    private final ScreenshotRunnable mScreenshotRunnable = new ScreenshotRunnable();
    private final SparseArray<DisplayHomeButtonHandler> mDisplayHomeButtonHandlers = new SparseArray<>();
    BroadcastReceiver mDockReceiver = new BroadcastReceiver() { // from class: com.android.server.policy.PhoneWindowManager.10
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.DOCK_EVENT".equals(intent.getAction())) {
                PhoneWindowManager.this.mDefaultDisplayPolicy.setDockMode(intent.getIntExtra("android.intent.extra.DOCK_STATE", 0));
            } else {
                try {
                    IUiModeManager uiModeService = IUiModeManager.Stub.asInterface(ServiceManager.getService("uimode"));
                    PhoneWindowManager.this.mUiMode = uiModeService.getCurrentModeType();
                } catch (RemoteException e) {
                }
            }
            PhoneWindowManager.this.updateRotation(true);
            PhoneWindowManager.this.mDefaultDisplayRotation.updateOrientationListener();
        }
    };
    BroadcastReceiver mDreamReceiver = new BroadcastReceiver() { // from class: com.android.server.policy.PhoneWindowManager.11
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.DREAMING_STARTED".equals(intent.getAction())) {
                if (PhoneWindowManager.this.mKeyguardDelegate != null) {
                    PhoneWindowManager.this.mKeyguardDelegate.onDreamingStarted();
                }
            } else if ("android.intent.action.DREAMING_STOPPED".equals(intent.getAction()) && PhoneWindowManager.this.mKeyguardDelegate != null) {
                PhoneWindowManager.this.mKeyguardDelegate.onDreamingStopped();
            }
        }
    };
    BroadcastReceiver mMultiuserReceiver = new BroadcastReceiver() { // from class: com.android.server.policy.PhoneWindowManager.12
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.USER_SWITCHED".equals(intent.getAction())) {
                PhoneWindowManager.this.mSettingsObserver.onChange(false);
                PhoneWindowManager.this.mDefaultDisplayRotation.onUserSwitch();
                PhoneWindowManager.this.mWindowManagerFuncs.onUserSwitched();
            }
        }
    };
    ProgressDialog mBootMsgDialog = null;
    final ScreenLockTimeout mScreenLockTimeout = new ScreenLockTimeout();

    static {
        SparseArray<String> sparseArray = new SparseArray<>();
        sApplicationLaunchKeyCategories = sparseArray;
        sparseArray.append(64, "android.intent.category.APP_BROWSER");
        sApplicationLaunchKeyCategories.append(65, "android.intent.category.APP_EMAIL");
        sApplicationLaunchKeyCategories.append(207, "android.intent.category.APP_CONTACTS");
        sApplicationLaunchKeyCategories.append(208, "android.intent.category.APP_CALENDAR");
        sApplicationLaunchKeyCategories.append(209, "android.intent.category.APP_MUSIC");
        sApplicationLaunchKeyCategories.append(210, "android.intent.category.APP_CALCULATOR");
        WINDOW_TYPES_WHERE_HOME_DOESNT_WORK = new int[]{2003, 2010};
    }

    private class PolicyHandler extends Handler {
        private PolicyHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 3:
                    PhoneWindowManager.this.dispatchMediaKeyWithWakeLock((KeyEvent) msg.obj);
                    break;
                case 4:
                    PhoneWindowManager.this.dispatchMediaKeyRepeatWithWakeLock((KeyEvent) msg.obj);
                    break;
                case 5:
                    PhoneWindowManager.this.finishKeyguardDrawn();
                    break;
                case 6:
                    Slog.w(PhoneWindowManager.TAG, "Keyguard drawn timeout. Setting mKeyguardDrawComplete");
                    PhoneWindowManager.this.finishKeyguardDrawn();
                    break;
                case 7:
                    PhoneWindowManager.this.finishWindowsDrawn();
                    break;
                case 9:
                    PhoneWindowManager.this.showRecentApps(false);
                    break;
                case 10:
                    PhoneWindowManager.this.showGlobalActionsInternal();
                    break;
                case 11:
                    PhoneWindowManager.this.handleHideBootMessage();
                    break;
                case 12:
                    PhoneWindowManager.this.launchVoiceAssistWithWakeLock();
                    break;
                case 13:
                    PhoneWindowManager.this.powerPress(((Long) msg.obj).longValue(), msg.arg1 != 0, msg.arg2);
                    PhoneWindowManager.this.finishPowerKeyPress();
                    break;
                case 14:
                    PhoneWindowManager.this.powerLongPress();
                    break;
                case 15:
                    PhoneWindowManager.this.showPictureInPictureMenuInternal();
                    break;
                case 16:
                    PhoneWindowManager.this.backLongPress();
                    break;
                case 17:
                    PhoneWindowManager.this.accessibilityShortcutActivated();
                    break;
                case 18:
                    PhoneWindowManager.this.requestBugreportForTv();
                    break;
                case 19:
                    if (PhoneWindowManager.this.mAccessibilityShortcutController.isAccessibilityShortcutAvailable(false)) {
                        PhoneWindowManager.this.accessibilityShortcutActivated();
                    }
                    break;
                case 20:
                    PhoneWindowManager.this.mAutofillManagerInternal.onBackKeyPressed();
                    break;
                case 21:
                    PhoneWindowManager.this.sendSystemKeyToStatusBar(msg.arg1);
                    break;
                case 22:
                    PhoneWindowManager.this.launchAllAppsAction();
                    break;
                case 23:
                    int deviceId = msg.arg1;
                    String hint = (String) msg.obj;
                    PhoneWindowManager.this.launchAssistAction(hint, deviceId);
                    break;
                case 24:
                    PhoneWindowManager.this.launchAssistLongPressAction();
                    break;
                case 25:
                    PhoneWindowManager.this.powerVeryLongPress();
                    break;
                case 26:
                    PhoneWindowManager.this.handleRingerChordGesture();
                    break;
            }
        }
    }

    class SettingsObserver extends ContentObserver {
        SettingsObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver resolver = PhoneWindowManager.this.mContext.getContentResolver();
            resolver.registerContentObserver(Settings.System.getUriFor("end_button_behavior"), false, this, -1);
            resolver.registerContentObserver(Settings.Secure.getUriFor("incall_power_button_behavior"), false, this, -1);
            resolver.registerContentObserver(Settings.Secure.getUriFor("incall_back_button_behavior"), false, this, -1);
            resolver.registerContentObserver(Settings.Secure.getUriFor("wake_gesture_enabled"), false, this, -1);
            resolver.registerContentObserver(Settings.System.getUriFor("screen_off_timeout"), false, this, -1);
            resolver.registerContentObserver(Settings.Secure.getUriFor("default_input_method"), false, this, -1);
            resolver.registerContentObserver(Settings.Secure.getUriFor("volume_hush_gesture"), false, this, -1);
            resolver.registerContentObserver(Settings.Secure.getUriFor("system_navigation_keys_enabled"), false, this, -1);
            resolver.registerContentObserver(Settings.Global.getUriFor("power_button_long_press"), false, this, -1);
            resolver.registerContentObserver(Settings.Global.getUriFor("power_button_very_long_press"), false, this, -1);
            resolver.registerContentObserver(Settings.Global.getUriFor("power_button_suppression_delay_after_gesture_wake"), false, this, -1);
            PhoneWindowManager.this.updateSettings();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            PhoneWindowManager.this.updateSettings();
            PhoneWindowManager.this.updateRotation(false);
        }
    }

    class MyWakeGestureListener extends WakeGestureListener {
        MyWakeGestureListener(Context context, Handler handler) {
            super(context, handler);
        }

        @Override // com.android.server.policy.WakeGestureListener
        public void onWakeUp() {
            synchronized (PhoneWindowManager.this.mLock) {
                if (PhoneWindowManager.this.shouldEnableWakeGestureLp()) {
                    PhoneWindowManager.this.performHapticFeedback(1, false, "Wake Up");
                    PhoneWindowManager.this.wakeUp(SystemClock.uptimeMillis(), PhoneWindowManager.this.mAllowTheaterModeWakeFromWakeGesture, 4, "android.policy:GESTURE");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRingerChordGesture() {
        if (this.mRingerToggleChord == 0) {
            return;
        }
        getAudioManagerInternal();
        this.mAudioManagerInternal.silenceRingerModeInternal("volume_hush");
        Settings.Secure.putInt(this.mContext.getContentResolver(), "hush_gesture_used", 1);
        this.mLogger.action(1440, this.mRingerToggleChord);
    }

    IStatusBarService getStatusBarService() {
        IStatusBarService iStatusBarService;
        synchronized (this.mServiceAquireLock) {
            if (this.mStatusBarService == null) {
                this.mStatusBarService = IStatusBarService.Stub.asInterface(ServiceManager.getService("statusbar"));
            }
            iStatusBarService = this.mStatusBarService;
        }
        return iStatusBarService;
    }

    StatusBarManagerInternal getStatusBarManagerInternal() {
        StatusBarManagerInternal statusBarManagerInternal;
        synchronized (this.mServiceAquireLock) {
            if (this.mStatusBarManagerInternal == null) {
                this.mStatusBarManagerInternal = (StatusBarManagerInternal) LocalServices.getService(StatusBarManagerInternal.class);
            }
            statusBarManagerInternal = this.mStatusBarManagerInternal;
        }
        return statusBarManagerInternal;
    }

    AudioManagerInternal getAudioManagerInternal() {
        AudioManagerInternal audioManagerInternal;
        synchronized (this.mServiceAquireLock) {
            if (this.mAudioManagerInternal == null) {
                this.mAudioManagerInternal = (AudioManagerInternal) LocalServices.getService(AudioManagerInternal.class);
            }
            audioManagerInternal = this.mAudioManagerInternal;
        }
        return audioManagerInternal;
    }

    private void interceptBackKeyDown() {
        this.mLogger.count("key_back_down", 1);
        this.mBackKeyHandled = false;
        if (hasLongPressOnBackBehavior()) {
            Message msg = this.mHandler.obtainMessage(16);
            msg.setAsynchronous(true);
            this.mHandler.sendMessageDelayed(msg, ViewConfiguration.get(this.mContext).getDeviceGlobalActionKeyTimeout());
        }
    }

    private boolean interceptBackKeyUp(KeyEvent event) {
        TelecomManager telecomManager;
        this.mLogger.count("key_back_up", 1);
        boolean handled = this.mBackKeyHandled;
        cancelPendingBackKeyAction();
        if (this.mHasFeatureWatch && (telecomManager = getTelecommService()) != null) {
            if (telecomManager.isRinging()) {
                telecomManager.silenceRinger();
                return false;
            }
            if ((1 & this.mIncallBackBehavior) != 0 && telecomManager.isInCall()) {
                return telecomManager.endCall();
            }
        }
        if (this.mAutofillManagerInternal != null && event.getKeyCode() == 4) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(20));
        }
        return handled;
    }

    private void interceptPowerKeyDown(KeyEvent event, boolean interactive) {
        if (!this.mPowerKeyWakeLock.isHeld()) {
            this.mPowerKeyWakeLock.acquire();
        }
        if (this.mPowerKeyPressCounter != 0) {
            this.mHandler.removeMessages(13);
        }
        this.mWindowManagerFuncs.onPowerKeyDown(interactive);
        if (interactive && !this.mScreenshotChordPowerKeyTriggered && (event.getFlags() & 1024) == 0) {
            this.mScreenshotChordPowerKeyTriggered = true;
            this.mScreenshotChordPowerKeyTime = event.getDownTime();
            interceptScreenshotChord();
            interceptRingerToggleChord();
        }
        TelecomManager telecomManager = getTelecommService();
        boolean hungUp = false;
        if (telecomManager != null) {
            if (telecomManager.isRinging()) {
                telecomManager.silenceRinger();
            } else if ((this.mIncallPowerBehavior & 2) != 0 && telecomManager.isInCall() && interactive) {
                hungUp = telecomManager.endCall();
            }
        }
        boolean handledByPowerManager = this.mPowerManagerInternal.interceptPowerKeyDown(event);
        GestureLauncherService gestureService = (GestureLauncherService) LocalServices.getService(GestureLauncherService.class);
        boolean gesturedServiceIntercepted = false;
        if (gestureService != null) {
            gesturedServiceIntercepted = gestureService.interceptPowerKeyDown(event, interactive, this.mTmpBoolean);
            if (this.mTmpBoolean.value && this.mRequestedOrGoingToSleep) {
                this.mCameraGestureTriggeredDuringGoingToSleep = true;
            }
        }
        sendSystemKeyToStatusBarAsync(event.getKeyCode());
        schedulePossibleVeryLongPressReboot();
        this.mPowerKeyHandled = hungUp || this.mScreenshotChordVolumeDownKeyTriggered || this.mA11yShortcutChordVolumeUpKeyTriggered || gesturedServiceIntercepted || handledByPowerManager;
        if (this.mPowerKeyHandled) {
            return;
        }
        if (interactive) {
            if (hasLongPressOnPowerBehavior()) {
                if ((event.getFlags() & 128) != 0) {
                    cancelPendingPowerKeyAction();
                    Message msg = this.mHandler.obtainMessage(14);
                    msg.setAsynchronous(true);
                    this.mHandler.sendMessage(msg);
                    return;
                }
                Message msg2 = this.mHandler.obtainMessage(14);
                msg2.setAsynchronous(true);
                this.mHandler.sendMessageDelayed(msg2, ViewConfiguration.get(this.mContext).getDeviceGlobalActionKeyTimeout());
                if (hasVeryLongPressOnPowerBehavior()) {
                    Message longMsg = this.mHandler.obtainMessage(25);
                    longMsg.setAsynchronous(true);
                    this.mHandler.sendMessageDelayed(longMsg, this.mVeryLongPressTimeout);
                    return;
                }
                return;
            }
            return;
        }
        wakeUpFromPowerKey(event.getDownTime());
        if (this.mSupportLongPressPowerWhenNonInteractive && hasLongPressOnPowerBehavior()) {
            if ((event.getFlags() & 128) != 0) {
                cancelPendingPowerKeyAction();
                Message msg3 = this.mHandler.obtainMessage(14);
                msg3.setAsynchronous(true);
                this.mHandler.sendMessage(msg3);
            } else {
                Message msg4 = this.mHandler.obtainMessage(14);
                msg4.setAsynchronous(true);
                this.mHandler.sendMessageDelayed(msg4, ViewConfiguration.get(this.mContext).getDeviceGlobalActionKeyTimeout());
                if (hasVeryLongPressOnPowerBehavior()) {
                    Message longMsg2 = this.mHandler.obtainMessage(25);
                    longMsg2.setAsynchronous(true);
                    this.mHandler.sendMessageDelayed(longMsg2, this.mVeryLongPressTimeout);
                }
            }
            this.mBeganFromNonInteractive = true;
            return;
        }
        int maxCount = getMaxMultiPressPowerCount();
        if (maxCount <= 1) {
            this.mPowerKeyHandled = true;
        } else {
            this.mBeganFromNonInteractive = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void interceptPowerKeyUp(KeyEvent keyEvent, boolean z, boolean z2) {
        Object[] objArr = z2 || this.mPowerKeyHandled;
        this.mScreenshotChordPowerKeyTriggered = false;
        cancelPendingScreenshotChordAction();
        cancelPendingPowerKeyAction();
        if (objArr == false) {
            if ((keyEvent.getFlags() & 128) == 0) {
                Handler handler = this.mHandler;
                final WindowManagerPolicy.WindowManagerFuncs windowManagerFuncs = this.mWindowManagerFuncs;
                Objects.requireNonNull(windowManagerFuncs);
                handler.post(new Runnable() { // from class: com.android.server.policy.-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw
                    @Override // java.lang.Runnable
                    public final void run() {
                        windowManagerFuncs.triggerAnimationFailsafe();
                    }
                });
            }
            this.mPowerKeyPressCounter++;
            int maxMultiPressPowerCount = getMaxMultiPressPowerCount();
            long downTime = keyEvent.getDownTime();
            if (this.mPowerKeyPressCounter < maxMultiPressPowerCount) {
                Message messageObtainMessage = this.mHandler.obtainMessage(13, z ? 1 : 0, this.mPowerKeyPressCounter, Long.valueOf(downTime));
                messageObtainMessage.setAsynchronous(true);
                this.mHandler.sendMessageDelayed(messageObtainMessage, ViewConfiguration.getMultiPressTimeout());
                return;
            }
            powerPress(downTime, z, this.mPowerKeyPressCounter);
        }
        finishPowerKeyPress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishPowerKeyPress() {
        this.mBeganFromNonInteractive = false;
        this.mPowerKeyPressCounter = 0;
        if (this.mPowerKeyWakeLock.isHeld()) {
            this.mPowerKeyWakeLock.release();
        }
    }

    private void cancelPendingPowerKeyAction() {
        if (!this.mPowerKeyHandled) {
            this.mPowerKeyHandled = true;
            this.mHandler.removeMessages(14);
        }
        if (hasVeryLongPressOnPowerBehavior()) {
            this.mHandler.removeMessages(25);
        }
        cancelPossibleVeryLongPressReboot();
    }

    private void cancelPendingBackKeyAction() {
        if (!this.mBackKeyHandled) {
            this.mBackKeyHandled = true;
            this.mHandler.removeMessages(16);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void powerPress(long eventTime, boolean interactive, int count) {
        if (this.mDefaultDisplayPolicy.isScreenOnEarly() && !this.mDefaultDisplayPolicy.isScreenOnFully()) {
            Slog.i(TAG, "Suppressed redundant power key press while already in the process of turning the screen on.");
            return;
        }
        Slog.d(TAG, "powerPress: eventTime=" + eventTime + " interactive=" + interactive + " count=" + count + " beganFromNonInteractive=" + this.mBeganFromNonInteractive + " mShortPressOnPowerBehavior=" + this.mShortPressOnPowerBehavior);
        if (count == 2) {
            powerMultiPressAction(eventTime, interactive, this.mDoublePressOnPowerBehavior);
            return;
        }
        if (count == 3) {
            powerMultiPressAction(eventTime, interactive, this.mTriplePressOnPowerBehavior);
            return;
        }
        if (interactive && !this.mBeganFromNonInteractive) {
            int i = this.mShortPressOnPowerBehavior;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        if (goToSleepFromPowerButton(eventTime, 1)) {
                            launchHomeFromHotKey(0);
                            return;
                        }
                        return;
                    } else {
                        if (i == 4) {
                            shortPressPowerGoHome();
                            return;
                        }
                        if (i == 5) {
                            if (this.mDismissImeOnBackKeyPressed) {
                                if (this.mInputMethodManagerInternal == null) {
                                    this.mInputMethodManagerInternal = (InputMethodManagerInternal) LocalServices.getService(InputMethodManagerInternal.class);
                                }
                                InputMethodManagerInternal inputMethodManagerInternal = this.mInputMethodManagerInternal;
                                if (inputMethodManagerInternal != null) {
                                    inputMethodManagerInternal.hideCurrentInputMethod(16);
                                    return;
                                }
                                return;
                            }
                            shortPressPowerGoHome();
                            return;
                        }
                        return;
                    }
                }
                goToSleepFromPowerButton(eventTime, 1);
                return;
            }
            goToSleepFromPowerButton(eventTime, 0);
        }
    }

    private boolean goToSleepFromPowerButton(long eventTime, int flags) {
        PowerManager.WakeData lastWakeUp = this.mPowerManagerInternal.getLastWakeup();
        if (lastWakeUp != null && lastWakeUp.wakeReason == 4) {
            Settings.Global.getInt(this.mContext.getContentResolver(), "power_button_suppression_delay_after_gesture_wake", POWER_BUTTON_SUPPRESSION_DELAY_DEFAULT_MILLIS);
            long now = SystemClock.uptimeMillis();
            if (this.mPowerButtonSuppressionDelayMillis > 0 && now < lastWakeUp.wakeTime + ((long) this.mPowerButtonSuppressionDelayMillis)) {
                Slog.i(TAG, "Sleep from power button suppressed. Time since gesture: " + (now - lastWakeUp.wakeTime) + "ms");
                return false;
            }
        }
        goToSleep(eventTime, 4, flags);
        return true;
    }

    private void goToSleep(long eventTime, int reason, int flags) {
        this.mRequestedOrGoingToSleep = true;
        this.mPowerManager.goToSleep(eventTime, reason, flags);
    }

    private void shortPressPowerGoHome() {
        launchHomeFromHotKey(0, true, false);
        if (isKeyguardShowingAndNotOccluded()) {
            this.mKeyguardDelegate.onShortPowerPressedGoHome();
        }
    }

    private void powerMultiPressAction(long eventTime, boolean interactive, int behavior) {
        if (behavior != 1) {
            if (behavior == 2) {
                Slog.i(TAG, "Starting brightness boost.");
                if (!interactive) {
                    wakeUpFromPowerKey(eventTime);
                }
                this.mPowerManager.boostScreenBrightness(eventTime);
                return;
            }
            return;
        }
        if (!isUserSetupComplete()) {
            Slog.i(TAG, "Ignoring toggling theater mode - device not setup.");
            return;
        }
        if (isTheaterModeEnabled()) {
            Slog.i(TAG, "Toggling theater mode off.");
            Settings.Global.putInt(this.mContext.getContentResolver(), "theater_mode_on", 0);
            if (!interactive) {
                wakeUpFromPowerKey(eventTime);
                return;
            }
            return;
        }
        Slog.i(TAG, "Toggling theater mode on.");
        Settings.Global.putInt(this.mContext.getContentResolver(), "theater_mode_on", 1);
        if (this.mGoToSleepOnButtonPressTheaterMode && interactive) {
            goToSleep(eventTime, 4, 0);
        }
    }

    private int getLidBehavior() {
        return Settings.Global.getInt(this.mContext.getContentResolver(), "lid_behavior", 0);
    }

    private int getMaxMultiPressPowerCount() {
        if (this.mTriplePressOnPowerBehavior != 0) {
            return 3;
        }
        if (this.mDoublePressOnPowerBehavior != 0) {
            return 2;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void powerLongPress() {
        int behavior = getResolvedLongPressOnPowerBehavior();
        if (behavior == 1) {
            this.mPowerKeyHandled = true;
            performHapticFeedback(0, false, "Power - Long Press - Global Actions");
            showGlobalActionsInternal();
            return;
        }
        if (behavior == 2 || behavior == 3) {
            this.mPowerKeyHandled = true;
            performHapticFeedback(0, false, "Power - Long Press - Shut Off");
            sendCloseSystemWindows(SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS);
            this.mWindowManagerFuncs.shutdown(behavior == 2);
            return;
        }
        if (behavior == 4) {
            this.mPowerKeyHandled = true;
            performHapticFeedback(0, false, "Power - Long Press - Go To Voice Assist");
            launchVoiceAssist(this.mAllowStartActivityForLongPressOnPowerDuringSetup);
        } else if (behavior == 5) {
            this.mPowerKeyHandled = true;
            performHapticFeedback(0, false, "Power - Long Press - Go To Assistant");
            launchAssistAction(null, Integer.MIN_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void powerVeryLongPress() {
        if (this.mVeryLongPressOnPowerBehavior == 1) {
            this.mPowerKeyHandled = true;
            performHapticFeedback(0, false, "Power - Very Long Press - Show Global Actions");
            showGlobalActionsInternal();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void backLongPress() {
        this.mBackKeyHandled = true;
        if (this.mLongPressOnBackBehavior == 1) {
            launchVoiceAssist(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void accessibilityShortcutActivated() {
        this.mAccessibilityShortcutController.performAccessibilityShortcut();
    }

    private void sleepPress() {
        if (this.mShortPressOnSleepBehavior == 1) {
            launchHomeFromHotKey(0, false, true);
        }
    }

    private void sleepRelease(long eventTime) {
        int i = this.mShortPressOnSleepBehavior;
        if (i == 0 || i == 1) {
            Slog.i(TAG, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)");
            goToSleep(eventTime, 6, 0);
        }
    }

    private int getResolvedLongPressOnPowerBehavior() {
        if (FactoryTest.isLongPressOnPowerOffEnabled()) {
            return 3;
        }
        return this.mLongPressOnPowerBehavior;
    }

    private boolean hasLongPressOnPowerBehavior() {
        return getResolvedLongPressOnPowerBehavior() != 0;
    }

    private boolean hasVeryLongPressOnPowerBehavior() {
        return this.mVeryLongPressOnPowerBehavior != 0;
    }

    private boolean hasLongPressOnBackBehavior() {
        return this.mLongPressOnBackBehavior != 0;
    }

    private void interceptScreenshotChord() {
        if (this.mScreenshotChordEnabled && this.mScreenshotChordVolumeDownKeyTriggered && this.mScreenshotChordPowerKeyTriggered && !this.mA11yShortcutChordVolumeUpKeyTriggered) {
            long now = SystemClock.uptimeMillis();
            if (now <= this.mScreenshotChordVolumeDownKeyTime + 150 && now <= this.mScreenshotChordPowerKeyTime + 150) {
                this.mScreenshotChordVolumeDownKeyConsumed = true;
                cancelPendingPowerKeyAction();
                this.mScreenshotRunnable.setScreenshotType(1);
                this.mScreenshotRunnable.setScreenshotSource(1);
                this.mHandler.postDelayed(this.mScreenshotRunnable, getScreenshotChordLongPressDelay());
            }
        }
    }

    private void interceptAccessibilityShortcutChord() {
        if (this.mAccessibilityShortcutController.isAccessibilityShortcutAvailable(isKeyguardLocked()) && this.mScreenshotChordVolumeDownKeyTriggered && this.mA11yShortcutChordVolumeUpKeyTriggered && !this.mScreenshotChordPowerKeyTriggered) {
            long now = SystemClock.uptimeMillis();
            if (now <= this.mScreenshotChordVolumeDownKeyTime + 150 && now <= this.mA11yShortcutChordVolumeUpKeyTime + 150) {
                this.mScreenshotChordVolumeDownKeyConsumed = true;
                this.mA11yShortcutChordVolumeUpKeyConsumed = true;
                Handler handler = this.mHandler;
                handler.sendMessageDelayed(handler.obtainMessage(17), getAccessibilityShortcutTimeout());
            }
        }
    }

    private void interceptRingerToggleChord() {
        if (this.mRingerToggleChord != 0 && this.mScreenshotChordPowerKeyTriggered && this.mA11yShortcutChordVolumeUpKeyTriggered) {
            long now = SystemClock.uptimeMillis();
            if (now <= this.mA11yShortcutChordVolumeUpKeyTime + 150 && now <= this.mScreenshotChordPowerKeyTime + 150) {
                this.mA11yShortcutChordVolumeUpKeyConsumed = true;
                cancelPendingPowerKeyAction();
                Handler handler = this.mHandler;
                handler.sendMessageDelayed(handler.obtainMessage(26), getRingerToggleChordDelay());
            }
        }
    }

    private long getAccessibilityShortcutTimeout() {
        ViewConfiguration config = ViewConfiguration.get(this.mContext);
        if (Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "accessibility_shortcut_dialog_shown", 0, this.mCurrentUserId) == 0) {
            return config.getAccessibilityShortcutKeyTimeout();
        }
        return config.getAccessibilityShortcutKeyTimeoutAfterConfirmation();
    }

    private long getScreenshotChordLongPressDelay() {
        long delayMs = DeviceConfig.getLong("systemui", "screenshot_keychord_delay", ViewConfiguration.get(this.mContext).getScreenshotChordKeyTimeout());
        if (this.mKeyguardDelegate.isShowing()) {
            return (long) (delayMs * KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER);
        }
        return delayMs;
    }

    private long getRingerToggleChordDelay() {
        return ViewConfiguration.getTapTimeout();
    }

    private void cancelPendingScreenshotChordAction() {
        this.mHandler.removeCallbacks(this.mScreenshotRunnable);
    }

    private void cancelPendingAccessibilityShortcutAction() {
        this.mHandler.removeMessages(17);
    }

    private void cancelPendingRingerToggleChordAction() {
        this.mHandler.removeMessages(26);
    }

    private class ScreenshotRunnable implements Runnable {
        private int mScreenshotSource;
        private int mScreenshotType;

        private ScreenshotRunnable() {
            this.mScreenshotType = 1;
            this.mScreenshotSource = 2;
        }

        public void setScreenshotType(int screenshotType) {
            this.mScreenshotType = screenshotType;
        }

        public void setScreenshotSource(int screenshotSource) {
            this.mScreenshotSource = screenshotSource;
        }

        @Override // java.lang.Runnable
        public void run() {
            PhoneWindowManager.this.mDefaultDisplayPolicy.takeScreenshot(this.mScreenshotType, this.mScreenshotSource);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void showGlobalActions() {
        this.mHandler.removeMessages(10);
        this.mHandler.sendEmptyMessage(10);
    }

    void showGlobalActionsInternal() {
        if (this.mGlobalActions == null) {
            this.mGlobalActions = new GlobalActions(this.mContext, this.mWindowManagerFuncs);
        }
        boolean keyguardShowing = isKeyguardShowingAndNotOccluded();
        this.mGlobalActions.showDialog(keyguardShowing, isDeviceProvisioned());
        this.mPowerManager.userActivity(SystemClock.uptimeMillis(), false);
    }

    boolean isDeviceProvisioned() {
        return Settings.Global.getInt(this.mContext.getContentResolver(), "device_provisioned", 0) != 0;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean isUserSetupComplete() {
        boolean isSetupComplete = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "user_setup_complete", 0, -2) != 0;
        if (this.mHasFeatureLeanback) {
            return isSetupComplete & isTvUserSetupComplete();
        }
        if (this.mHasFeatureAuto) {
            return isSetupComplete & isAutoUserSetupComplete();
        }
        return isSetupComplete;
    }

    private boolean isAutoUserSetupComplete() {
        return Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "android.car.SETUP_WIZARD_IN_PROGRESS", 0, -2) == 0;
    }

    private boolean isTvUserSetupComplete() {
        return Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "tv_user_setup_complete", 0, -2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleShortPressOnHome(int displayId) {
        HdmiControl hdmiControl = getHdmiControl();
        if (hdmiControl != null) {
            hdmiControl.turnOnTv();
        }
        DreamManagerInternal dreamManagerInternal = this.mDreamManagerInternal;
        if (dreamManagerInternal != null && dreamManagerInternal.isDreaming()) {
            this.mDreamManagerInternal.stopDream(false);
        } else {
            launchHomeFromHotKey(displayId);
        }
    }

    private HdmiControl getHdmiControl() {
        if (this.mHdmiControl == null) {
            if (!this.mHasFeatureHdmiCec) {
                return null;
            }
            HdmiControlManager manager = (HdmiControlManager) this.mContext.getSystemService("hdmi_control");
            HdmiPlaybackClient client = null;
            if (manager != null) {
                client = manager.getPlaybackClient();
            }
            this.mHdmiControl = new HdmiControl(client);
        }
        return this.mHdmiControl;
    }

    private static class HdmiControl {
        private final HdmiPlaybackClient mClient;

        private HdmiControl(HdmiPlaybackClient client) {
            this.mClient = client;
        }

        public void turnOnTv() {
            HdmiPlaybackClient hdmiPlaybackClient = this.mClient;
            if (hdmiPlaybackClient == null) {
                return;
            }
            hdmiPlaybackClient.oneTouchPlay(new HdmiPlaybackClient.OneTouchPlayCallback() { // from class: com.android.server.policy.PhoneWindowManager.HdmiControl.1
                public void onComplete(int result) {
                    if (result != 0) {
                        Log.w(PhoneWindowManager.TAG, "One touch play failed: " + result);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchAllAppsAction() {
        Intent intent = new Intent("android.intent.action.ALL_APPS");
        if (this.mHasFeatureLeanback) {
            Intent intentLauncher = new Intent("android.intent.action.MAIN");
            intentLauncher.addCategory("android.intent.category.HOME");
            ResolveInfo resolveInfo = this.mPackageManager.resolveActivityAsUser(intentLauncher, 1048576, this.mCurrentUserId);
            if (resolveInfo != null) {
                intent.setPackage(resolveInfo.activityInfo.packageName);
            }
        }
        startActivityAsUser(intent, UserHandle.CURRENT);
    }

    private void showPictureInPictureMenu(KeyEvent event) {
        this.mHandler.removeMessages(15);
        Message msg = this.mHandler.obtainMessage(15);
        msg.setAsynchronous(true);
        msg.sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPictureInPictureMenuInternal() {
        StatusBarManagerInternal statusbar = getStatusBarManagerInternal();
        if (statusbar != null) {
            statusbar.showPictureInPictureMenu();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class DisplayHomeButtonHandler {
        private final int mDisplayId;
        private boolean mHomeConsumed;
        private boolean mHomeDoubleTapPending;
        private final Runnable mHomeDoubleTapTimeoutRunnable = new Runnable() { // from class: com.android.server.policy.PhoneWindowManager.DisplayHomeButtonHandler.1
            @Override // java.lang.Runnable
            public void run() {
                if (DisplayHomeButtonHandler.this.mHomeDoubleTapPending) {
                    DisplayHomeButtonHandler.this.mHomeDoubleTapPending = false;
                    PhoneWindowManager.this.handleShortPressOnHome(DisplayHomeButtonHandler.this.mDisplayId);
                }
            }
        };
        private boolean mHomePressed;

        DisplayHomeButtonHandler(int displayId) {
            this.mDisplayId = displayId;
        }

        int handleHomeButton(IBinder focusedToken, final KeyEvent event) {
            boolean keyguardOn = PhoneWindowManager.this.keyguardOn();
            int repeatCount = event.getRepeatCount();
            boolean down = event.getAction() == 0;
            boolean canceled = event.isCanceled();
            if (!down) {
                if (this.mDisplayId == 0) {
                    PhoneWindowManager.this.cancelPreloadRecentApps();
                }
                this.mHomePressed = false;
                if (this.mHomeConsumed) {
                    this.mHomeConsumed = false;
                    return -1;
                }
                if (!canceled) {
                    if (PhoneWindowManager.this.mDoubleTapOnHomeBehavior != 0) {
                        PhoneWindowManager.this.mHandler.removeCallbacks(this.mHomeDoubleTapTimeoutRunnable);
                        this.mHomeDoubleTapPending = true;
                        PhoneWindowManager.this.mHandler.postDelayed(this.mHomeDoubleTapTimeoutRunnable, ViewConfiguration.getDoubleTapTimeout());
                        return -1;
                    }
                    PhoneWindowManager.this.mHandler.post(new Runnable() { // from class: com.android.server.policy.-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$ljCIzo7y96OZCYYMVaAi6LAwRAE
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$handleHomeButton$0$PhoneWindowManager$DisplayHomeButtonHandler();
                        }
                    });
                    return -1;
                }
                Log.i(PhoneWindowManager.TAG, "Ignoring HOME; event canceled.");
                return -1;
            }
            KeyInterceptionInfo info = PhoneWindowManager.this.mWindowManagerInternal.getKeyInterceptionInfoFromToken(focusedToken);
            if (info != null) {
                if (info.layoutParamsType == 2009 || (info.layoutParamsType == 2040 && PhoneWindowManager.this.isKeyguardShowing())) {
                    return 0;
                }
                for (int t : PhoneWindowManager.WINDOW_TYPES_WHERE_HOME_DOESNT_WORK) {
                    if (info.layoutParamsType == t) {
                        return -1;
                    }
                }
            }
            if (repeatCount == 0) {
                this.mHomePressed = true;
                if (!this.mHomeDoubleTapPending) {
                    if (PhoneWindowManager.this.mDoubleTapOnHomeBehavior == 1 && this.mDisplayId == 0) {
                        PhoneWindowManager.this.preloadRecentApps();
                    }
                } else {
                    this.mHomeDoubleTapPending = false;
                    PhoneWindowManager.this.mHandler.removeCallbacks(this.mHomeDoubleTapTimeoutRunnable);
                    handleDoubleTapOnHome();
                }
            } else if ((event.getFlags() & 128) != 0 && !keyguardOn) {
                PhoneWindowManager.this.mHandler.post(new Runnable() { // from class: com.android.server.policy.-$$Lambda$PhoneWindowManager$DisplayHomeButtonHandler$mDqq2TX5_l1ydQz3e0WFhnBNreI
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$handleHomeButton$1$PhoneWindowManager$DisplayHomeButtonHandler(event);
                    }
                });
            }
            return -1;
        }

        public /* synthetic */ void lambda$handleHomeButton$0$PhoneWindowManager$DisplayHomeButtonHandler() {
            PhoneWindowManager.this.handleShortPressOnHome(this.mDisplayId);
        }

        public /* synthetic */ void lambda$handleHomeButton$1$PhoneWindowManager$DisplayHomeButtonHandler(KeyEvent event) {
            handleLongPressOnHome(event.getDeviceId());
        }

        private void handleDoubleTapOnHome() {
            if (PhoneWindowManager.this.mDoubleTapOnHomeBehavior == 1) {
                this.mHomeConsumed = true;
                PhoneWindowManager.this.toggleRecentApps();
            }
        }

        private void handleLongPressOnHome(int deviceId) {
            if (PhoneWindowManager.this.mLongPressOnHomeBehavior == 0) {
                return;
            }
            this.mHomeConsumed = true;
            PhoneWindowManager.this.performHapticFeedback(0, false, "Home - Long Press");
            int i = PhoneWindowManager.this.mLongPressOnHomeBehavior;
            if (i == 1) {
                PhoneWindowManager.this.launchAllAppsAction();
                return;
            }
            if (i == 2) {
                PhoneWindowManager.this.launchAssistAction(null, deviceId);
                return;
            }
            Log.w(PhoneWindowManager.TAG, "Undefined home long press behavior: " + PhoneWindowManager.this.mLongPressOnHomeBehavior);
        }

        public String toString() {
            return String.format("mDisplayId = %d, mHomePressed = %b", Integer.valueOf(this.mDisplayId), Boolean.valueOf(this.mHomePressed));
        }
    }

    private boolean isRoundWindow() {
        return this.mContext.getResources().getConfiguration().isScreenRound();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void setDefaultDisplay(WindowManagerPolicy.DisplayContentInfo displayContentInfo) {
        this.mDefaultDisplay = displayContentInfo.getDisplay();
        DisplayRotation displayRotation = displayContentInfo.getDisplayRotation();
        this.mDefaultDisplayRotation = displayRotation;
        this.mDefaultDisplayPolicy = displayRotation.getDisplayPolicy();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void init(Context context, IWindowManager windowManager, WindowManagerPolicy.WindowManagerFuncs windowManagerFuncs) {
        int minHorizontal;
        int maxHorizontal;
        int minVertical;
        int maxVertical;
        int maxRadius;
        this.mContext = context;
        this.mWindowManager = windowManager;
        this.mWindowManagerFuncs = windowManagerFuncs;
        this.mWindowManagerInternal = (WindowManagerInternal) LocalServices.getService(WindowManagerInternal.class);
        this.mActivityManagerInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        this.mActivityTaskManagerInternal = (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);
        this.mInputManagerInternal = (InputManagerInternal) LocalServices.getService(InputManagerInternal.class);
        this.mDreamManagerInternal = (DreamManagerInternal) LocalServices.getService(DreamManagerInternal.class);
        this.mPowerManagerInternal = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
        this.mAppOpsManager = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        this.mDisplayManager = (DisplayManager) this.mContext.getSystemService(DisplayManager.class);
        PackageManager packageManager = this.mContext.getPackageManager();
        this.mPackageManager = packageManager;
        this.mHasFeatureWatch = packageManager.hasSystemFeature("android.hardware.type.watch");
        this.mHasFeatureLeanback = this.mPackageManager.hasSystemFeature("android.software.leanback");
        this.mHasFeatureAuto = this.mPackageManager.hasSystemFeature("android.hardware.type.automotive");
        this.mHasFeatureHdmiCec = this.mPackageManager.hasSystemFeature("android.hardware.hdmi.cec");
        this.mAccessibilityShortcutController = new AccessibilityShortcutController(this.mContext, new Handler(), this.mCurrentUserId);
        this.mLogger = new MetricsLogger();
        this.mScreenOffSleepTokenAcquirer = this.mActivityTaskManagerInternal.createSleepTokenAcquirer("ScreenOff");
        Resources res = this.mContext.getResources();
        this.mWakeOnDpadKeyPress = res.getBoolean(R.bool.config_cecVolumeControlModeDisabled_allowed);
        this.mWakeOnAssistKeyPress = res.getBoolean(R.bool.config_cecTvWakeOnOneTouchPlayEnabled_default);
        this.mWakeOnBackKeyPress = res.getBoolean(R.bool.config_cecTvWakeOnOneTouchPlay_userConfigurable);
        boolean burnInProtectionEnabled = context.getResources().getBoolean(R.bool.config_cecPowerControlModeNone_default);
        boolean burnInProtectionDevMode = SystemProperties.getBoolean("persist.debug.force_burn_in", false);
        if (burnInProtectionEnabled || burnInProtectionDevMode) {
            if (burnInProtectionDevMode) {
                minHorizontal = -8;
                maxHorizontal = 8;
                minVertical = -8;
                maxVertical = -4;
                maxRadius = isRoundWindow() ? 6 : -1;
            } else {
                Resources resources = context.getResources();
                int minHorizontal2 = resources.getInteger(R.integer.config_bg_current_drain_window);
                int maxHorizontal2 = resources.getInteger(R.integer.config_bg_current_drain_power_components);
                int minVertical2 = resources.getInteger(R.integer.config_bluetooth_idle_cur_ma);
                int maxVertical2 = resources.getInteger(R.integer.config_bg_current_drain_types_to_restricted_bucket);
                minHorizontal = minHorizontal2;
                maxHorizontal = maxHorizontal2;
                minVertical = minVertical2;
                maxVertical = maxVertical2;
                maxRadius = resources.getInteger(R.integer.config_bg_current_drain_types_to_bg_restricted);
            }
            this.mBurnInProtectionHelper = new BurnInProtectionHelper(context, minHorizontal, maxHorizontal, minVertical, maxVertical, maxRadius);
        }
        PolicyHandler policyHandler = new PolicyHandler();
        this.mHandler = policyHandler;
        this.mWakeGestureListener = new MyWakeGestureListener(this.mContext, policyHandler);
        SettingsObserver settingsObserver = new SettingsObserver(this.mHandler);
        this.mSettingsObserver = settingsObserver;
        settingsObserver.observe();
        this.mShortcutManager = new ShortcutManager(context);
        this.mUiMode = context.getResources().getInteger(R.integer.config_defaultActionModeHideDurationMillis);
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        this.mHomeIntent = intent;
        intent.addCategory("android.intent.category.HOME");
        this.mHomeIntent.addFlags(270532608);
        this.mEnableCarDockHomeCapture = context.getResources().getBoolean(R.bool.config_cecPowerControlModeTvAndAudioSystem_allowed);
        Intent intent2 = new Intent("android.intent.action.MAIN", (Uri) null);
        this.mCarDockIntent = intent2;
        intent2.addCategory("android.intent.category.CAR_DOCK");
        this.mCarDockIntent.addFlags(270532608);
        Intent intent3 = new Intent("android.intent.action.MAIN", (Uri) null);
        this.mDeskDockIntent = intent3;
        intent3.addCategory("android.intent.category.DESK_DOCK");
        this.mDeskDockIntent.addFlags(270532608);
        Intent intent4 = new Intent("android.intent.action.MAIN", (Uri) null);
        this.mVrHeadsetHomeIntent = intent4;
        intent4.addCategory("android.intent.category.VR_HOME");
        this.mVrHeadsetHomeIntent.addFlags(270532608);
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        this.mPowerManager = powerManager;
        this.mBroadcastWakeLock = powerManager.newWakeLock(1, "PhoneWindowManager.mBroadcastWakeLock");
        this.mPowerKeyWakeLock = this.mPowerManager.newWakeLock(1, "PhoneWindowManager.mPowerKeyWakeLock");
        this.mEnableShiftMenuBugReports = SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get("ro.debuggable"));
        this.mLidKeyboardAccessibility = this.mContext.getResources().getInteger(R.integer.config_deskDockRotation);
        this.mLidNavigationAccessibility = this.mContext.getResources().getInteger(R.integer.config_deviceStateConcurrentRearDisplay);
        this.mLidControlsDisplayFold = this.mContext.getResources().getBoolean(R.bool.config_cecQuerySadDtshdEnabled_allowed);
        boolean z = this.mContext.getResources().getBoolean(R.bool.config_alwaysUseCdmaRssi);
        this.mAllowTheaterModeWakeFromKey = z;
        this.mAllowTheaterModeWakeFromPowerKey = z || this.mContext.getResources().getBoolean(R.bool.config_appCompatUserAppAspectRatioFullscreenIsEnabled);
        this.mAllowTheaterModeWakeFromMotion = this.mContext.getResources().getBoolean(R.bool.config_animateScreenLights);
        this.mAllowTheaterModeWakeFromMotionWhenNotDreaming = this.mContext.getResources().getBoolean(R.bool.config_annoy_dianne);
        this.mAllowTheaterModeWakeFromCameraLens = this.mContext.getResources().getBoolean(R.bool.config_allow_pin_storage_for_unattended_reboot);
        this.mAllowTheaterModeWakeFromLidSwitch = this.mContext.getResources().getBoolean(R.bool.config_am_disablePssProfiling);
        this.mAllowTheaterModeWakeFromWakeGesture = this.mContext.getResources().getBoolean(R.bool.config_alwaysScaleWallpaper);
        this.mGoToSleepOnButtonPressTheaterMode = this.mContext.getResources().getBoolean(R.bool.config_cecQuerySadDstEnabled_default);
        this.mSupportLongPressPowerWhenNonInteractive = this.mContext.getResources().getBoolean(R.bool.config_cecRcProfileSourceTopMenuNotHandled_default);
        this.mLongPressOnBackBehavior = this.mContext.getResources().getInteger(R.integer.config_displayWhiteBalanceBrightnessSensorRate);
        this.mShortPressOnPowerBehavior = this.mContext.getResources().getInteger(R.integer.config_longPressOnStemPrimaryBehavior);
        this.mLongPressOnPowerBehavior = this.mContext.getResources().getInteger(R.integer.config_displayWhiteBalanceColorTemperatureFilterHorizon);
        this.mVeryLongPressOnPowerBehavior = this.mContext.getResources().getInteger(R.integer.config_maximumCallLogEntriesPerSim);
        this.mDoublePressOnPowerBehavior = this.mContext.getResources().getInteger(R.integer.config_defaultNightDisplayCustomStartTime);
        this.mTriplePressOnPowerBehavior = this.mContext.getResources().getInteger(R.integer.config_maxResolverActivityColumns);
        this.mShortPressOnSleepBehavior = this.mContext.getResources().getInteger(R.integer.config_lowBatteryAutoTriggerDefaultLevel);
        this.mVeryLongPressTimeout = this.mContext.getResources().getInteger(R.integer.config_maximumScreenDimDuration);
        this.mAllowStartActivityForLongPressOnPowerDuringSetup = this.mContext.getResources().getBoolean(R.bool.config_allowTheaterModeWakeFromWindowLayout);
        this.mHapticTextHandleEnabled = this.mContext.getResources().getBoolean(R.bool.config_cecPowerStateChangeOnActiveSourceLostStandbyNow_default);
        this.mUseTvRouting = AudioSystem.getPlatformType(this.mContext) == 2;
        this.mHandleVolumeKeysInWM = this.mContext.getResources().getBoolean(R.bool.config_cecQuerySadDtsDisabled_allowed);
        this.mPerDisplayFocusEnabled = this.mContext.getResources().getBoolean(R.bool.config_perDisplayFocusEnabled);
        readConfigurationDependentBehaviors();
        if (this.mLidControlsDisplayFold) {
            this.mDisplayFoldController = DisplayFoldController.create(context, 0);
        } else if (SystemProperties.getBoolean("persist.debug.force_foldable", false)) {
            this.mDisplayFoldController = DisplayFoldController.createWithProxSensor(context, 0);
        }
        this.mAccessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        IntentFilter filter = new IntentFilter();
        filter.addAction(UiModeManager.ACTION_ENTER_CAR_MODE);
        filter.addAction(UiModeManager.ACTION_EXIT_CAR_MODE);
        filter.addAction(UiModeManager.ACTION_ENTER_DESK_MODE);
        filter.addAction(UiModeManager.ACTION_EXIT_DESK_MODE);
        filter.addAction("android.intent.action.DOCK_EVENT");
        Intent intent5 = context.registerReceiver(this.mDockReceiver, filter);
        if (intent5 != null) {
            this.mDefaultDisplayPolicy.setDockMode(intent5.getIntExtra("android.intent.extra.DOCK_STATE", 0));
        }
        IntentFilter filter2 = new IntentFilter();
        filter2.addAction("android.intent.action.DREAMING_STARTED");
        filter2.addAction("android.intent.action.DREAMING_STOPPED");
        context.registerReceiver(this.mDreamReceiver, filter2);
        context.registerReceiver(this.mMultiuserReceiver, new IntentFilter("android.intent.action.USER_SWITCHED"));
        this.mVibrator = (Vibrator) context.getSystemService("vibrator");
        this.mLongPressVibePattern = getLongIntArray(this.mContext.getResources(), R.array.config_displayWhiteBalanceHighLightAmbientBrightnessesStrong);
        this.mCalendarDateVibePattern = getLongIntArray(this.mContext.getResources(), R.array.config_bg_current_drain_threshold_to_bg_restricted);
        this.mSafeModeEnabledVibePattern = getLongIntArray(this.mContext.getResources(), R.array.config_face_acquire_vendor_enroll_ignorelist);
        this.mScreenshotChordEnabled = this.mContext.getResources().getBoolean(R.bool.config_cecQuerySadAtracDisabled_default);
        this.mGlobalKeyManager = new GlobalKeyManager(this.mContext);
        initializeHdmiState();
        if (!this.mPowerManager.isInteractive()) {
            startedGoingToSleep(2);
            finishedGoingToSleep(2);
        }
        this.mWindowManagerInternal.registerAppTransitionListener(new WindowManagerInternal.AppTransitionListener() { // from class: com.android.server.policy.PhoneWindowManager.7
            @Override // com.android.server.wm.WindowManagerInternal.AppTransitionListener
            public int onAppTransitionStartingLocked(int transit, long duration, long statusBarAnimationStartTime, long statusBarAnimationDuration) {
                return PhoneWindowManager.this.handleStartTransitionForKeyguardLw(transit, duration);
            }

            @Override // com.android.server.wm.WindowManagerInternal.AppTransitionListener
            public void onAppTransitionCancelledLocked(int transit) {
                PhoneWindowManager.this.handleStartTransitionForKeyguardLw(transit, 0L);
            }
        });
        this.mKeyguardDelegate = new KeyguardServiceDelegate(this.mContext, new KeyguardStateMonitor.StateCallback() { // from class: com.android.server.policy.PhoneWindowManager.8
            @Override // com.android.server.policy.keyguard.KeyguardStateMonitor.StateCallback
            public void onTrustedChanged() {
                PhoneWindowManager.this.mWindowManagerFuncs.notifyKeyguardTrustedChanged();
            }

            @Override // com.android.server.policy.keyguard.KeyguardStateMonitor.StateCallback
            public void onShowingChanged() {
                PhoneWindowManager.this.mWindowManagerFuncs.onKeyguardShowingAndNotOccludedChanged();
            }
        });
    }

    private void readConfigurationDependentBehaviors() {
        Resources res = this.mContext.getResources();
        int integer = res.getInteger(R.integer.config_displayWhiteBalanceColorTemperatureDefault);
        this.mLongPressOnHomeBehavior = integer;
        if (integer < 0 || integer > 2) {
            this.mLongPressOnHomeBehavior = 0;
        }
        int integer2 = res.getInteger(R.integer.config_defaultNightMode);
        this.mDoubleTapOnHomeBehavior = integer2;
        if (integer2 < 0 || integer2 > 1) {
            this.mDoubleTapOnHomeBehavior = 0;
        }
        this.mShortPressOnWindowBehavior = 0;
        if (this.mPackageManager.hasSystemFeature("android.software.picture_in_picture")) {
            this.mShortPressOnWindowBehavior = 1;
        }
    }

    public void updateSettings() {
        ContentResolver resolver = this.mContext.getContentResolver();
        boolean updateRotation = false;
        synchronized (this.mLock) {
            this.mEndcallBehavior = Settings.System.getIntForUser(resolver, "end_button_behavior", 2, -2);
            this.mIncallPowerBehavior = Settings.Secure.getIntForUser(resolver, "incall_power_button_behavior", 1, -2);
            boolean hasSoftInput = false;
            this.mIncallBackBehavior = Settings.Secure.getIntForUser(resolver, "incall_back_button_behavior", 0, -2);
            this.mSystemNavigationKeysEnabled = Settings.Secure.getIntForUser(resolver, "system_navigation_keys_enabled", 0, -2) == 1;
            this.mRingerToggleChord = Settings.Secure.getIntForUser(resolver, "volume_hush_gesture", 0, -2);
            this.mPowerButtonSuppressionDelayMillis = Settings.Global.getInt(resolver, "power_button_suppression_delay_after_gesture_wake", POWER_BUTTON_SUPPRESSION_DELAY_DEFAULT_MILLIS);
            if (!this.mContext.getResources().getBoolean(R.bool.config_cecTvWakeOnOneTouchPlayEnabled_allowed)) {
                this.mRingerToggleChord = 0;
            }
            boolean wakeGestureEnabledSetting = Settings.Secure.getIntForUser(resolver, "wake_gesture_enabled", 0, -2) != 0;
            if (this.mWakeGestureEnabledSetting != wakeGestureEnabledSetting) {
                this.mWakeGestureEnabledSetting = wakeGestureEnabledSetting;
                updateWakeGestureListenerLp();
            }
            this.mLockScreenTimeout = Settings.System.getIntForUser(resolver, "screen_off_timeout", 0, -2);
            String imId = Settings.Secure.getStringForUser(resolver, "default_input_method", -2);
            if (imId != null && imId.length() > 0) {
                hasSoftInput = true;
            }
            if (this.mHasSoftInput != hasSoftInput) {
                this.mHasSoftInput = hasSoftInput;
                updateRotation = true;
            }
            this.mLongPressOnPowerBehavior = Settings.Global.getInt(resolver, "power_button_long_press", this.mContext.getResources().getInteger(R.integer.config_displayWhiteBalanceColorTemperatureFilterHorizon));
            this.mVeryLongPressOnPowerBehavior = Settings.Global.getInt(resolver, "power_button_very_long_press", this.mContext.getResources().getInteger(R.integer.config_maximumCallLogEntriesPerSim));
        }
        if (updateRotation) {
            updateRotation(true);
        }
    }

    private void updateWakeGestureListenerLp() {
        if (shouldEnableWakeGestureLp()) {
            this.mWakeGestureListener.requestWakeUpTrigger();
        } else {
            this.mWakeGestureListener.cancelWakeUpTrigger();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldEnableWakeGestureLp() {
        return this.mWakeGestureEnabledSetting && !this.mDefaultDisplayPolicy.isAwake() && !(getLidBehavior() == 1 && this.mDefaultDisplayPolicy.getLidState() == 0) && this.mWakeGestureListener.isSupported();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public int checkAddPermission(int type, boolean isRoundedCornerOverlay, String packageName, int[] outAppOp) {
        ApplicationInfo appInfo;
        if (isRoundedCornerOverlay && this.mContext.checkCallingOrSelfPermission("android.permission.INTERNAL_SYSTEM_WINDOW") != 0) {
            return -8;
        }
        outAppOp[0] = -1;
        if ((type >= 1 && type <= 99) || ((type >= 1000 && type <= 1999) || (type >= 2000 && type <= 2999))) {
            if (type < 2000 || type > 2999) {
                return 0;
            }
            if (!WindowManager.LayoutParams.isSystemAlertWindowType(type)) {
                if (type == 2005) {
                    outAppOp[0] = 45;
                    return 0;
                }
                if (type != 2011 && type != 2013 && type != 2024 && type != 2035 && type != 2037 && type != 2044) {
                    switch (type) {
                        case 2030:
                        case 2031:
                        case 2032:
                            break;
                        default:
                            return this.mContext.checkCallingOrSelfPermission("android.permission.INTERNAL_SYSTEM_WINDOW") == 0 ? 0 : -8;
                    }
                }
                return 0;
            }
            outAppOp[0] = 24;
            int callingUid = Binder.getCallingUid();
            if (UserHandle.getAppId(callingUid) == 1000) {
                return 0;
            }
            try {
                try {
                    appInfo = this.mPackageManager.getApplicationInfoAsUser(packageName, 0, UserHandle.getUserId(callingUid));
                } catch (PackageManager.NameNotFoundException e) {
                    appInfo = null;
                }
            } catch (PackageManager.NameNotFoundException e2) {
            }
            if (appInfo == null || (type != 2038 && appInfo.targetSdkVersion >= 26)) {
                return this.mContext.checkCallingOrSelfPermission("android.permission.INTERNAL_SYSTEM_WINDOW") == 0 ? 0 : -8;
            }
            int mode = this.mAppOpsManager.noteOpNoThrow(outAppOp[0], callingUid, packageName, (String) null, "check-add");
            if (mode == 0 || mode == 1) {
                return 0;
            }
            if (mode != 2) {
                return this.mContext.checkCallingOrSelfPermission("android.permission.SYSTEM_ALERT_WINDOW") == 0 ? 0 : -8;
            }
            return appInfo.targetSdkVersion < 23 ? 0 : -8;
        }
        return -10;
    }

    void readLidState() {
        this.mDefaultDisplayPolicy.setLidState(this.mWindowManagerFuncs.getLidState());
    }

    private void readCameraLensCoverState() {
        this.mCameraLensCoverState = this.mWindowManagerFuncs.getCameraLensCoverState();
    }

    private boolean isHidden(int accessibilityMode) {
        int lidState = this.mDefaultDisplayPolicy.getLidState();
        if (accessibilityMode != 1) {
            return accessibilityMode == 2 && lidState == 1;
        }
        return lidState == 0;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void adjustConfigurationLw(Configuration config, int keyboardPresence, int navigationPresence) {
        this.mHaveBuiltInKeyboard = (keyboardPresence & 1) != 0;
        readConfigurationDependentBehaviors();
        readLidState();
        if (config.keyboard == 1 || (keyboardPresence == 1 && isHidden(this.mLidKeyboardAccessibility))) {
            config.hardKeyboardHidden = 2;
            if (!this.mHasSoftInput) {
                config.keyboardHidden = 2;
            }
        }
        if (config.navigation == 1 || (navigationPresence == 1 && isHidden(this.mLidNavigationAccessibility))) {
            config.navigationHidden = 2;
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public int getMaxWallpaperLayer() {
        return getWindowLayerFromTypeLw(2040);
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean isKeyguardHostWindow(WindowManager.LayoutParams attrs) {
        return attrs.type == 2040;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean canBeHiddenByKeyguardLw(WindowManagerPolicy.WindowState win) {
        int i;
        return (win.getAppToken() != null || (i = win.getAttrs().type) == 2000 || i == 2013 || i == 2019 || i == 2040 || i == 2044 || getWindowLayerLw(win) >= getWindowLayerFromTypeLw(2040)) ? false : true;
    }

    private boolean shouldBeHiddenByKeyguard(WindowManagerPolicy.WindowState win, WindowManagerPolicy.WindowState imeTarget) {
        WindowManager.LayoutParams attrs = win.getAttrs();
        boolean hideDockDivider = attrs.type == 2034 && !this.mWindowManagerInternal.isStackVisibleLw(3);
        if (hideDockDivider) {
            return true;
        }
        boolean hideIme = win.isInputMethodWindow() && (this.mAodShowing || !this.mDefaultDisplayPolicy.isWindowManagerDrawComplete());
        if (hideIme) {
            return true;
        }
        boolean showImeOverKeyguard = imeTarget != null && imeTarget.isVisibleLw() && (imeTarget.canShowWhenLocked() || !canBeHiddenByKeyguardLw(imeTarget));
        boolean allowWhenLocked = win.isInputMethodWindow() && showImeOverKeyguard;
        boolean isKeyguardShowing = this.mKeyguardDelegate.isShowing();
        if (isKeyguardShowing && isKeyguardOccluded()) {
            allowWhenLocked |= win.canShowWhenLocked() || (attrs.privateFlags & 256) != 0;
        }
        return isKeyguardShowing && !allowWhenLocked && win.getDisplayId() == 0;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00da  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:70:0x0178
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    @Override // com.android.server.policy.WindowManagerPolicy
    public com.android.server.policy.WindowManagerPolicy.StartingSurface addSplashScreen(android.os.IBinder r22, int r23, java.lang.String r24, int r25, android.content.res.CompatibilityInfo r26, java.lang.CharSequence r27, int r28, int r29, int r30, int r31, android.content.res.Configuration r32, int r33) {
        /*
            Method dump skipped, instruction units count: 518
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.policy.PhoneWindowManager.addSplashScreen(android.os.IBinder, int, java.lang.String, int, android.content.res.CompatibilityInfo, java.lang.CharSequence, int, int, int, int, android.content.res.Configuration, int):com.android.server.policy.WindowManagerPolicy$StartingSurface");
    }

    private void addSplashscreenContent(PhoneWindow win, Context ctx) {
        Drawable drawable;
        TypedArray a = ctx.obtainStyledAttributes(com.android.internal.R.styleable.Window);
        int resId = a.getResourceId(47, 0);
        a.recycle();
        if (resId == 0 || (drawable = ctx.getDrawable(resId)) == null) {
            return;
        }
        View v = new View(ctx);
        v.setBackground(drawable);
        win.setContentView(v);
    }

    private Context getDisplayContext(Context context, int displayId) {
        if (displayId == 0) {
            return context;
        }
        Display targetDisplay = this.mDisplayManager.getDisplay(displayId);
        if (targetDisplay == null) {
            return null;
        }
        return context.createDisplayContext(targetDisplay);
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public Animation createHiddenByKeyguardExit(boolean onWallpaper, boolean goingToNotificationShade, boolean subtleAnimation) {
        int resource;
        if (goingToNotificationShade) {
            return AnimationUtils.loadAnimation(this.mContext, R.anim.overlay_task_fragment_close_to_left);
        }
        if (subtleAnimation) {
            resource = R.anim.overlay_task_fragment_close_to_right;
        } else if (onWallpaper) {
            resource = R.anim.overlay_task_fragment_close_to_top;
        } else {
            resource = R.anim.activity_close_exit;
        }
        AnimationSet set = (AnimationSet) AnimationUtils.loadAnimation(this.mContext, resource);
        List<Animation> animations = set.getAnimations();
        for (int i = animations.size() - 1; i >= 0; i--) {
            animations.get(i).setInterpolator(this.mLogDecelerateInterpolator);
        }
        return set;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public Animation createKeyguardWallpaperExit(boolean goingToNotificationShade) {
        if (goingToNotificationShade) {
            return null;
        }
        return AnimationUtils.loadAnimation(this.mContext, R.anim.overlay_task_fragment_open_from_right);
    }

    private static void awakenDreams() {
        IDreamManager dreamManager = getDreamManager();
        if (dreamManager != null) {
            try {
                dreamManager.awaken();
            } catch (RemoteException e) {
            }
        }
    }

    static IDreamManager getDreamManager() {
        return IDreamManager.Stub.asInterface(ServiceManager.checkService("dreams"));
    }

    TelecomManager getTelecommService() {
        return (TelecomManager) this.mContext.getSystemService("telecom");
    }

    NotificationManager getNotificationService() {
        return (NotificationManager) this.mContext.getSystemService(NotificationManager.class);
    }

    static IAudioService getAudioService() {
        IAudioService audioService = IAudioService.Stub.asInterface(ServiceManager.checkService("audio"));
        if (audioService == null) {
            Log.w(TAG, "Unable to find IAudioService interface.");
        }
        return audioService;
    }

    boolean keyguardOn() {
        return isKeyguardShowingAndNotOccluded() || inKeyguardRestrictedKeyInputMode();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public long interceptKeyBeforeDispatching(IBinder focusedToken, KeyEvent event, int policyFlags) {
        InputDevice d;
        IStatusBarService service;
        boolean actionTriggered;
        int i;
        String category;
        Intent shortcutIntent;
        long j;
        boolean keyguardOn = keyguardOn();
        int keyCode = event.getKeyCode();
        int repeatCount = event.getRepeatCount();
        int metaState = event.getMetaState();
        int flags = event.getFlags();
        boolean down = event.getAction() == 0;
        event.isCanceled();
        int displayId = event.getDisplayId();
        if (this.mScreenshotChordEnabled && (flags & 1024) == 0) {
            if (this.mScreenshotChordVolumeDownKeyTriggered && !this.mScreenshotChordPowerKeyTriggered) {
                long now = SystemClock.uptimeMillis();
                long timeoutTime = this.mScreenshotChordVolumeDownKeyTime + 150;
                if (now < timeoutTime) {
                    return timeoutTime - now;
                }
            }
            if (keyCode == 25 && this.mScreenshotChordVolumeDownKeyConsumed) {
                if (!down) {
                    this.mScreenshotChordVolumeDownKeyConsumed = false;
                }
                return -1L;
            }
        }
        if (this.mAccessibilityShortcutController.isAccessibilityShortcutAvailable(false) && (flags & 1024) == 0) {
            if (this.mScreenshotChordVolumeDownKeyTriggered ^ this.mA11yShortcutChordVolumeUpKeyTriggered) {
                long now2 = SystemClock.uptimeMillis();
                if (!this.mScreenshotChordVolumeDownKeyTriggered) {
                    j = this.mA11yShortcutChordVolumeUpKeyTime;
                } else {
                    j = this.mScreenshotChordVolumeDownKeyTime;
                }
                long timeoutTime2 = j + 150;
                if (now2 < timeoutTime2) {
                    return timeoutTime2 - now2;
                }
            }
            if (keyCode == 25 && this.mScreenshotChordVolumeDownKeyConsumed) {
                if (!down) {
                    this.mScreenshotChordVolumeDownKeyConsumed = false;
                }
                return -1L;
            }
            if (keyCode == 24 && this.mA11yShortcutChordVolumeUpKeyConsumed) {
                if (!down) {
                    this.mA11yShortcutChordVolumeUpKeyConsumed = false;
                }
                return -1L;
            }
        }
        if (this.mRingerToggleChord == 0 || (flags & 1024) != 0) {
            metaState = metaState;
        } else {
            if (this.mA11yShortcutChordVolumeUpKeyTriggered && !this.mScreenshotChordPowerKeyTriggered) {
                long now3 = SystemClock.uptimeMillis();
                long timeoutTime3 = this.mA11yShortcutChordVolumeUpKeyTime + 150;
                if (now3 < timeoutTime3) {
                    return timeoutTime3 - now3;
                }
            }
            if (keyCode == 24 && this.mA11yShortcutChordVolumeUpKeyConsumed) {
                if (!down) {
                    this.mA11yShortcutChordVolumeUpKeyConsumed = false;
                }
                return -1L;
            }
        }
        if (this.mPendingMetaAction && !KeyEvent.isMetaKey(keyCode)) {
            this.mPendingMetaAction = false;
        }
        if (this.mPendingCapsLockToggle && !KeyEvent.isMetaKey(keyCode) && !KeyEvent.isAltKey(keyCode)) {
            this.mPendingCapsLockToggle = false;
        }
        if (keyCode == 3) {
            DisplayHomeButtonHandler handler = this.mDisplayHomeButtonHandlers.get(displayId);
            if (handler == null) {
                handler = new DisplayHomeButtonHandler(displayId);
                this.mDisplayHomeButtonHandlers.put(displayId, handler);
            }
            return handler.handleHomeButton(focusedToken, event);
        }
        if (keyCode == 82) {
            if (down && repeatCount == 0 && this.mEnableShiftMenuBugReports && (metaState & 1) == 1) {
                this.mContext.sendOrderedBroadcastAsUser(new Intent("android.intent.action.BUG_REPORT"), UserHandle.CURRENT, null, null, null, 0, null, null);
                return -1L;
            }
        } else {
            if (keyCode == 84) {
                if (!down) {
                    this.mSearchKeyShortcutPending = false;
                    if (this.mConsumeSearchKeyUp) {
                        this.mConsumeSearchKeyUp = false;
                        return -1L;
                    }
                } else if (repeatCount == 0) {
                    this.mSearchKeyShortcutPending = true;
                    this.mConsumeSearchKeyUp = false;
                }
                return 0L;
            }
            if (keyCode == 187) {
                if (!keyguardOn) {
                    if (down && repeatCount == 0) {
                        preloadRecentApps();
                    } else if (!down) {
                        toggleRecentApps();
                    }
                }
                return -1L;
            }
            if (keyCode == 42 && event.isMetaPressed()) {
                if (down && (service = getStatusBarService()) != null) {
                    try {
                        service.expandNotificationsPanel();
                    } catch (RemoteException e) {
                    }
                }
            } else if (keyCode == 47 && event.isMetaPressed() && event.isCtrlPressed()) {
                if (down && repeatCount == 0) {
                    int type = event.isShiftPressed() ? 2 : 1;
                    this.mScreenshotRunnable.setScreenshotType(type);
                    this.mScreenshotRunnable.setScreenshotSource(2);
                    this.mHandler.post(this.mScreenshotRunnable);
                    return -1L;
                }
            } else if (keyCode == 76 && event.isMetaPressed()) {
                if (down && repeatCount == 0 && !isKeyguardLocked()) {
                    toggleKeyboardShortcutsMenu(event.getDeviceId());
                }
            } else {
                if (keyCode == 219) {
                    Slog.wtf(TAG, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing");
                    return -1L;
                }
                if (keyCode == 231) {
                    Slog.wtf(TAG, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing");
                    return -1L;
                }
                if (keyCode == 120) {
                    if (down && repeatCount == 0) {
                        this.mScreenshotRunnable.setScreenshotType(1);
                        this.mScreenshotRunnable.setScreenshotSource(2);
                        this.mHandler.post(this.mScreenshotRunnable);
                    }
                    return -1L;
                }
                if (keyCode == 221 || keyCode == 220) {
                    if (down) {
                        int direction = keyCode == 221 ? 1 : -1;
                        int auto = Settings.System.getIntForUser(this.mContext.getContentResolver(), "screen_brightness_mode", 0, -3);
                        if (auto != 0) {
                            Settings.System.putIntForUser(this.mContext.getContentResolver(), "screen_brightness_mode", 0, -3);
                        }
                        float minFloat = this.mPowerManager.getBrightnessConstraint(0);
                        float maxFloat = this.mPowerManager.getBrightnessConstraint(1);
                        float stepFloat = ((maxFloat - minFloat) / 10.0f) * direction;
                        float brightnessFloat = Settings.System.getFloatForUser(this.mContext.getContentResolver(), "screen_brightness_float", this.mPowerManager.getBrightnessConstraint(2), -3);
                        Settings.System.putFloatForUser(this.mContext.getContentResolver(), "screen_brightness_float", Math.max(minFloat, Math.min(maxFloat, brightnessFloat + stepFloat)), -3);
                        startActivityAsUser(new Intent("com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"), UserHandle.CURRENT_OR_SELF);
                    }
                    return -1L;
                }
                if (keyCode == 24 || keyCode == 25 || keyCode == 164) {
                    if (this.mUseTvRouting || this.mHandleVolumeKeysInWM) {
                        dispatchDirectAudioEvent(event);
                        return -1L;
                    }
                    if (this.mDefaultDisplayPolicy.isPersistentVrModeEnabled() && (d = event.getDevice()) != null && !d.isExternal()) {
                        return -1L;
                    }
                } else {
                    if (keyCode == 61 && event.isMetaPressed()) {
                        return 0L;
                    }
                    if (this.mHasFeatureLeanback && interceptBugreportGestureTv(keyCode, down)) {
                        return -1L;
                    }
                    if (keyCode == 284) {
                        if (!down) {
                            this.mHandler.removeMessages(22);
                            Message msg = this.mHandler.obtainMessage(22);
                            msg.setAsynchronous(true);
                            msg.sendToTarget();
                        }
                        return -1L;
                    }
                }
            }
        }
        boolean actionTriggered2 = false;
        if (KeyEvent.isModifierKey(keyCode)) {
            if (!this.mPendingCapsLockToggle) {
                this.mInitialMetaState = this.mMetaState;
                this.mPendingCapsLockToggle = true;
            } else if (event.getAction() == 1) {
                int i2 = this.mMetaState;
                int altOnMask = i2 & 50;
                int metaOnMask = i2 & 458752;
                if (metaOnMask != 0 && altOnMask != 0 && this.mInitialMetaState == (i2 ^ (altOnMask | metaOnMask))) {
                    this.mInputManagerInternal.toggleCapsLock(event.getDeviceId());
                    actionTriggered2 = true;
                }
                this.mPendingCapsLockToggle = false;
                actionTriggered = actionTriggered2;
            }
            actionTriggered = false;
        } else {
            actionTriggered = false;
        }
        int metaState2 = metaState;
        this.mMetaState = metaState2;
        if (actionTriggered) {
            return -1L;
        }
        if (KeyEvent.isMetaKey(keyCode)) {
            if (down) {
                this.mPendingMetaAction = true;
            } else if (this.mPendingMetaAction) {
                launchAssistAction("android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD", event.getDeviceId());
            }
            return -1L;
        }
        if (this.mSearchKeyShortcutPending) {
            KeyCharacterMap kcm = event.getKeyCharacterMap();
            if (kcm.isPrintingKey(keyCode)) {
                this.mConsumeSearchKeyUp = true;
                this.mSearchKeyShortcutPending = false;
                if (down && repeatCount == 0 && !keyguardOn) {
                    Intent shortcutIntent2 = this.mShortcutManager.getIntent(kcm, keyCode, metaState2);
                    if (shortcutIntent2 != null) {
                        shortcutIntent2.addFlags(AudioFormat.EVRC);
                        try {
                            startActivityAsUser(shortcutIntent2, UserHandle.CURRENT);
                            dismissKeyboardShortcutsMenu();
                        } catch (ActivityNotFoundException ex) {
                            Slog.w(TAG, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+" + KeyEvent.keyCodeToString(keyCode), ex);
                        }
                    } else {
                        Slog.i(TAG, "Dropping unregistered shortcut key combination: SEARCH+" + KeyEvent.keyCodeToString(keyCode));
                    }
                }
                return -1L;
            }
        }
        if (down && repeatCount == 0 && !keyguardOn && (metaState2 & 65536) != 0) {
            KeyCharacterMap kcm2 = event.getKeyCharacterMap();
            if (kcm2.isPrintingKey(keyCode) && (shortcutIntent = this.mShortcutManager.getIntent(kcm2, keyCode, metaState2 & (-458753))) != null) {
                shortcutIntent.addFlags(AudioFormat.EVRC);
                try {
                    startActivityAsUser(shortcutIntent, UserHandle.CURRENT);
                    dismissKeyboardShortcutsMenu();
                } catch (ActivityNotFoundException ex2) {
                    Slog.w(TAG, "Dropping shortcut key combination because the activity to which it is registered was not found: META+" + KeyEvent.keyCodeToString(keyCode), ex2);
                }
                return -1L;
            }
        }
        if (down && repeatCount == 0 && !keyguardOn && (category = sApplicationLaunchKeyCategories.get(keyCode)) != null) {
            Intent intent = Intent.makeMainSelectorActivity("android.intent.action.MAIN", category);
            intent.setFlags(AudioFormat.EVRC);
            try {
                startActivityAsUser(intent, UserHandle.CURRENT);
                dismissKeyboardShortcutsMenu();
            } catch (ActivityNotFoundException ex3) {
                Slog.w(TAG, "Dropping application launch key because the activity to which it is registered was not found: keyCode=" + keyCode + ", category=" + category, ex3);
            }
            return -1L;
        }
        if (down && repeatCount == 0 && keyCode == 61) {
            if (this.mRecentAppsHeldModifiers == 0 && !keyguardOn && isUserSetupComplete()) {
                int shiftlessModifiers = event.getModifiers() & (-194);
                if (KeyEvent.metaStateHasModifiers(shiftlessModifiers, 2)) {
                    this.mRecentAppsHeldModifiers = shiftlessModifiers;
                    showRecentApps(true);
                    return -1L;
                }
            }
        } else if (!down && (i = this.mRecentAppsHeldModifiers) != 0 && (i & metaState2) == 0) {
            this.mRecentAppsHeldModifiers = 0;
            hideRecentApps(true, false);
        }
        boolean isCtrlOrMetaSpace = keyCode == 62 && (487424 & metaState2) != 0;
        if (down && repeatCount == 0 && (keyCode == 204 || isCtrlOrMetaSpace)) {
            int direction2 = (metaState2 & 193) != 0 ? -1 : 1;
            this.mWindowManagerFuncs.switchKeyboardLayout(event.getDeviceId(), direction2);
            return -1L;
        }
        if (this.mLanguageSwitchKeyPressed && !down && (keyCode == 204 || keyCode == 62)) {
            this.mLanguageSwitchKeyPressed = false;
            return -1L;
        }
        if (isValidGlobalKey(keyCode) && this.mGlobalKeyManager.handleGlobalKey(this.mContext, keyCode, event)) {
            return -1L;
        }
        if (down) {
            long shortcutCode = keyCode;
            if (event.isCtrlPressed()) {
                shortcutCode |= 17592186044416L;
            }
            if (event.isAltPressed()) {
                shortcutCode |= 8589934592L;
            }
            if (event.isShiftPressed()) {
                shortcutCode |= 4294967296L;
            }
            if (event.isMetaPressed()) {
                shortcutCode |= 281474976710656L;
            }
            IShortcutService shortcutService = this.mShortcutKeyServices.get(shortcutCode);
            if (shortcutService != null) {
                try {
                    if (isUserSetupComplete()) {
                        shortcutService.notifyShortcutKeyPressed(shortcutCode);
                    }
                } catch (RemoteException e2) {
                    this.mShortcutKeyServices.delete(shortcutCode);
                }
                return -1L;
            }
        }
        return (65536 & metaState2) != 0 ? -1L : 0L;
    }

    private boolean interceptBugreportGestureTv(int keyCode, boolean down) {
        if (keyCode == 23) {
            this.mBugreportTvKey1Pressed = down;
        } else if (keyCode == 4) {
            this.mBugreportTvKey2Pressed = down;
        }
        if (this.mBugreportTvKey1Pressed && this.mBugreportTvKey2Pressed) {
            if (!this.mBugreportTvScheduled) {
                this.mBugreportTvScheduled = true;
                Message msg = Message.obtain(this.mHandler, 18);
                msg.setAsynchronous(true);
                this.mHandler.sendMessageDelayed(msg, 1000L);
            }
        } else if (this.mBugreportTvScheduled) {
            this.mHandler.removeMessages(18);
            this.mBugreportTvScheduled = false;
        }
        return this.mBugreportTvScheduled;
    }

    private boolean interceptAccessibilityGestureTv(int keyCode, boolean down) {
        if (keyCode == 4) {
            this.mAccessibilityTvKey1Pressed = down;
        } else if (keyCode == 20) {
            this.mAccessibilityTvKey2Pressed = down;
        }
        if (this.mAccessibilityTvKey1Pressed && this.mAccessibilityTvKey2Pressed) {
            if (!this.mAccessibilityTvScheduled) {
                this.mAccessibilityTvScheduled = true;
                Message msg = Message.obtain(this.mHandler, 19);
                msg.setAsynchronous(true);
                this.mHandler.sendMessageDelayed(msg, getAccessibilityShortcutTimeout());
            }
        } else if (this.mAccessibilityTvScheduled) {
            this.mHandler.removeMessages(19);
            this.mAccessibilityTvScheduled = false;
        }
        return this.mAccessibilityTvScheduled;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestBugreportForTv() {
        if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get("ro.debuggable")) || Settings.Global.getInt(this.mContext.getContentResolver(), "development_settings_enabled", 0) == 1) {
            try {
                if (!ActivityManager.getService().launchBugReportHandlerApp()) {
                    ActivityManager.getService().requestInteractiveBugReport();
                }
            } catch (RemoteException e) {
                Slog.e(TAG, "Error taking bugreport", e);
            }
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public KeyEvent dispatchUnhandledKey(IBinder focusedToken, KeyEvent event, int policyFlags) {
        KeyCharacterMap.FallbackAction fallbackAction;
        KeyEvent fallbackEvent = null;
        if ((event.getFlags() & 1024) == 0) {
            KeyCharacterMap kcm = event.getKeyCharacterMap();
            int keyCode = event.getKeyCode();
            int metaState = event.getMetaState();
            boolean initialDown = event.getAction() == 0 && event.getRepeatCount() == 0;
            if (initialDown) {
                fallbackAction = kcm.getFallbackAction(keyCode, metaState);
            } else {
                fallbackAction = this.mFallbackActions.get(keyCode);
            }
            if (fallbackAction != null) {
                int flags = event.getFlags() | 1024;
                fallbackEvent = KeyEvent.obtain(event.getDownTime(), event.getEventTime(), event.getAction(), fallbackAction.keyCode, event.getRepeatCount(), fallbackAction.metaState, event.getDeviceId(), event.getScanCode(), flags, event.getSource(), event.getDisplayId(), null);
                if (!interceptFallback(focusedToken, fallbackEvent, policyFlags)) {
                    fallbackEvent.recycle();
                    fallbackEvent = null;
                }
                if (initialDown) {
                    this.mFallbackActions.put(keyCode, fallbackAction);
                } else if (event.getAction() == 1) {
                    this.mFallbackActions.remove(keyCode);
                    fallbackAction.recycle();
                }
            }
        }
        return fallbackEvent;
    }

    private boolean interceptFallback(IBinder focusedToken, KeyEvent fallbackEvent, int policyFlags) {
        int actions = interceptKeyBeforeQueueing(fallbackEvent, policyFlags);
        if ((actions & 1) != 0) {
            long delayMillis = interceptKeyBeforeDispatching(focusedToken, fallbackEvent, policyFlags);
            if (delayMillis == 0) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void setTopFocusedDisplay(int displayId) {
        this.mTopFocusedDisplayId = displayId;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void registerDisplayFoldListener(IDisplayFoldListener listener) {
        DisplayFoldController displayFoldController = this.mDisplayFoldController;
        if (displayFoldController != null) {
            displayFoldController.registerDisplayFoldListener(listener);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void unregisterDisplayFoldListener(IDisplayFoldListener listener) {
        DisplayFoldController displayFoldController = this.mDisplayFoldController;
        if (displayFoldController != null) {
            displayFoldController.unregisterDisplayFoldListener(listener);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void setOverrideFoldedArea(Rect area) {
        DisplayFoldController displayFoldController = this.mDisplayFoldController;
        if (displayFoldController != null) {
            displayFoldController.setOverrideFoldedArea(area);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public Rect getFoldedArea() {
        DisplayFoldController displayFoldController = this.mDisplayFoldController;
        if (displayFoldController != null) {
            return displayFoldController.getFoldedArea();
        }
        return new Rect();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void onDefaultDisplayFocusChangedLw(WindowManagerPolicy.WindowState newFocus) {
        DisplayFoldController displayFoldController = this.mDisplayFoldController;
        if (displayFoldController != null) {
            displayFoldController.onDefaultDisplayFocusChanged(newFocus != null ? newFocus.getOwningPackage() : null);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void registerShortcutKey(long shortcutCode, IShortcutService shortcutService) throws RemoteException {
        synchronized (this.mLock) {
            IShortcutService service = this.mShortcutKeyServices.get(shortcutCode);
            if (service != null && service.asBinder().pingBinder()) {
                throw new RemoteException("Key already exists.");
            }
            this.mShortcutKeyServices.put(shortcutCode, shortcutService);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void onKeyguardOccludedChangedLw(boolean occluded) {
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate != null && keyguardServiceDelegate.isShowing()) {
            this.mPendingKeyguardOccluded = occluded;
            this.mKeyguardOccludedChanged = true;
        } else {
            setKeyguardOccludedLw(occluded, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int handleStartTransitionForKeyguardLw(int transit, long duration) {
        if (this.mKeyguardOccludedChanged) {
            this.mKeyguardOccludedChanged = false;
            if (setKeyguardOccludedLw(this.mPendingKeyguardOccluded, false)) {
                return 5;
            }
        }
        if (AppTransition.isKeyguardGoingAwayTransit(transit)) {
            startKeyguardExitAnimation(SystemClock.uptimeMillis(), duration);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchAssistLongPressAction() {
        performHapticFeedback(0, false, "Assist - Long Press");
        sendCloseSystemWindows(SYSTEM_DIALOG_REASON_ASSIST);
        Intent intent = new Intent("android.intent.action.SEARCH_LONG_PRESS");
        intent.setFlags(AudioFormat.EVRC);
        try {
            SearchManager searchManager = getSearchManager();
            if (searchManager != null) {
                searchManager.stopSearch();
            }
            startActivityAsUser(intent, UserHandle.CURRENT);
        } catch (ActivityNotFoundException e) {
            Slog.w(TAG, "No activity to handle assist long press action.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchAssistAction(String hint, int deviceId) {
        sendCloseSystemWindows(SYSTEM_DIALOG_REASON_ASSIST);
        if (!isUserSetupComplete()) {
            return;
        }
        Bundle args = null;
        if (deviceId > Integer.MIN_VALUE || hint != null) {
            args = new Bundle();
            if (deviceId > Integer.MIN_VALUE) {
                args.putInt("android.intent.extra.ASSIST_INPUT_DEVICE_ID", deviceId);
            }
            if (hint != null) {
                args.putBoolean(hint, true);
            }
        }
        ((SearchManager) this.mContext.createContextAsUser(UserHandle.of(this.mCurrentUserId), 0).getSystemService("search")).launchAssist(args);
    }

    private void launchVoiceAssist(boolean allowDuringSetup) {
        boolean keyguardActive;
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate == null) {
            keyguardActive = false;
        } else {
            keyguardActive = keyguardServiceDelegate.isShowing();
        }
        if (!keyguardActive) {
            Intent intent = new Intent("android.intent.action.VOICE_ASSIST");
            startActivityAsUser(intent, null, UserHandle.CURRENT_OR_SELF, allowDuringSetup);
        }
    }

    private void startActivityAsUser(Intent intent, UserHandle handle) {
        startActivityAsUser(intent, null, handle);
    }

    private void startActivityAsUser(Intent intent, Bundle bundle, UserHandle handle) {
        startActivityAsUser(intent, bundle, handle, false);
    }

    private void startActivityAsUser(Intent intent, Bundle bundle, UserHandle handle, boolean allowDuringSetup) {
        if (allowDuringSetup || isUserSetupComplete()) {
            this.mContext.startActivityAsUser(intent, bundle, handle);
            return;
        }
        Slog.i(TAG, "Not starting activity because user setup is in progress: " + intent);
    }

    private SearchManager getSearchManager() {
        if (this.mSearchManager == null) {
            this.mSearchManager = (SearchManager) this.mContext.getSystemService("search");
        }
        return this.mSearchManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void preloadRecentApps() {
        this.mPreloadedRecentApps = true;
        StatusBarManagerInternal statusbar = getStatusBarManagerInternal();
        if (statusbar != null) {
            statusbar.preloadRecentApps();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelPreloadRecentApps() {
        if (this.mPreloadedRecentApps) {
            this.mPreloadedRecentApps = false;
            StatusBarManagerInternal statusbar = getStatusBarManagerInternal();
            if (statusbar != null) {
                statusbar.cancelPreloadRecentApps();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleRecentApps() {
        this.mPreloadedRecentApps = false;
        StatusBarManagerInternal statusbar = getStatusBarManagerInternal();
        if (statusbar != null) {
            statusbar.toggleRecentApps();
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void showRecentApps() {
        this.mHandler.removeMessages(9);
        this.mHandler.obtainMessage(9).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRecentApps(boolean triggeredFromAltTab) {
        this.mPreloadedRecentApps = false;
        StatusBarManagerInternal statusbar = getStatusBarManagerInternal();
        if (statusbar != null) {
            statusbar.showRecentApps(triggeredFromAltTab);
        }
    }

    private void toggleKeyboardShortcutsMenu(int deviceId) {
        StatusBarManagerInternal statusbar = getStatusBarManagerInternal();
        if (statusbar != null) {
            statusbar.toggleKeyboardShortcutsMenu(deviceId);
        }
    }

    private void dismissKeyboardShortcutsMenu() {
        StatusBarManagerInternal statusbar = getStatusBarManagerInternal();
        if (statusbar != null) {
            statusbar.dismissKeyboardShortcutsMenu();
        }
    }

    private void hideRecentApps(boolean triggeredFromAltTab, boolean triggeredFromHome) {
        this.mPreloadedRecentApps = false;
        StatusBarManagerInternal statusbar = getStatusBarManagerInternal();
        if (statusbar != null) {
            statusbar.hideRecentApps(triggeredFromAltTab, triggeredFromHome);
        }
    }

    void launchHomeFromHotKey(int displayId) {
        launchHomeFromHotKey(displayId, true, true);
    }

    void launchHomeFromHotKey(final int displayId, final boolean awakenFromDreams, boolean respectKeyguard) {
        if (respectKeyguard) {
            if (isKeyguardShowingAndNotOccluded()) {
                return;
            }
            if (!this.mKeyguardOccluded && this.mKeyguardDelegate.isInputRestricted()) {
                this.mKeyguardDelegate.verifyUnlock(new WindowManagerPolicy.OnKeyguardExitResult() { // from class: com.android.server.policy.PhoneWindowManager.9
                    @Override // com.android.server.policy.WindowManagerPolicy.OnKeyguardExitResult
                    public void onKeyguardExitResult(boolean success) {
                        if (success) {
                            PhoneWindowManager.this.startDockOrHome(displayId, true, awakenFromDreams);
                        }
                    }
                });
                return;
            }
        }
        if (this.mRecentsVisible) {
            try {
                ActivityManager.getService().stopAppSwitches();
            } catch (RemoteException e) {
            }
            if (awakenFromDreams) {
                awakenDreams();
            }
            hideRecentApps(false, true);
            return;
        }
        startDockOrHome(displayId, true, awakenFromDreams);
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void setRecentsVisibilityLw(boolean visible) {
        this.mRecentsVisible = visible;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void setPipVisibilityLw(boolean visible) {
        this.mPictureInPictureVisible = visible;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void setNavBarVirtualKeyHapticFeedbackEnabledLw(boolean enabled) {
        this.mNavBarVirtualKeyHapticFeedbackEnabled = enabled;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void applyKeyguardPolicyLw(WindowManagerPolicy.WindowState win, WindowManagerPolicy.WindowState imeTarget) {
        if (canBeHiddenByKeyguardLw(win)) {
            if (shouldBeHiddenByKeyguard(win, imeTarget)) {
                win.hideLw(false);
            } else {
                win.showLw(false);
            }
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void setKeyguardCandidateLw(WindowManagerPolicy.WindowState win) {
        this.mKeyguardCandidate = win;
        setKeyguardOccludedLw(this.mKeyguardOccluded, true);
    }

    private boolean setKeyguardOccludedLw(boolean isOccluded, boolean force) {
        boolean wasOccluded = this.mKeyguardOccluded;
        boolean showing = this.mKeyguardDelegate.isShowing();
        boolean changed = wasOccluded != isOccluded || force;
        if (!isOccluded && changed && showing) {
            this.mKeyguardOccluded = false;
            this.mKeyguardDelegate.setOccluded(false, true);
            if (this.mKeyguardCandidate != null && !this.mKeyguardDelegate.hasLockscreenWallpaper()) {
                this.mKeyguardCandidate.getAttrs().flags |= 1048576;
            }
            return true;
        }
        if (isOccluded && changed && showing) {
            this.mKeyguardOccluded = true;
            this.mKeyguardDelegate.setOccluded(true, false);
            WindowManagerPolicy.WindowState windowState = this.mKeyguardCandidate;
            if (windowState != null) {
                windowState.getAttrs().flags &= -1048577;
            }
            return true;
        }
        if (!changed) {
            return false;
        }
        this.mKeyguardOccluded = isOccluded;
        this.mKeyguardDelegate.setOccluded(isOccluded, false);
        return false;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void notifyLidSwitchChanged(long j, boolean z) {
        if (z != this.mDefaultDisplayPolicy.getLidState()) {
            this.mDefaultDisplayPolicy.setLidState(z ? 1 : 0);
            applyLidSwitchState();
            updateRotation(true);
            if (!z) {
                if (getLidBehavior() != 1) {
                    this.mPowerManager.userActivity(SystemClock.uptimeMillis(), false);
                    return;
                }
                return;
            }
            wakeUp(SystemClock.uptimeMillis(), this.mAllowTheaterModeWakeFromLidSwitch, 9, "android.policy:LID");
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void notifyCameraLensCoverSwitchChanged(long j, boolean z) {
        Intent intent;
        int i = this.mCameraLensCoverState;
        if (i == z) {
            return;
        }
        if (i == 1 && !z) {
            KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
            if (keyguardServiceDelegate == null ? false : keyguardServiceDelegate.isShowing()) {
                intent = new Intent("android.media.action.STILL_IMAGE_CAMERA_SECURE");
            } else {
                intent = new Intent("android.media.action.STILL_IMAGE_CAMERA");
            }
            wakeUp(j / 1000000, this.mAllowTheaterModeWakeFromCameraLens, 5, "android.policy:CAMERA_COVER");
            startActivityAsUser(intent, UserHandle.CURRENT_OR_SELF);
        }
        this.mCameraLensCoverState = z ? 1 : 0;
    }

    void initializeHdmiState() {
        int oldMask = StrictMode.allowThreadDiskReadsMask();
        try {
            initializeHdmiStateInternal();
        } finally {
            StrictMode.setThreadPolicyMask(oldMask);
        }
    }

    void initializeHdmiStateInternal() {
        boolean plugged = false;
        if (new File("/sys/devices/virtual/switch/hdmi/state").exists()) {
            this.mHDMIObserver.startObserving("DEVPATH=/devices/virtual/switch/hdmi");
            FileReader reader = null;
            try {
                try {
                    try {
                        reader = new FileReader("/sys/class/switch/hdmi/state");
                        char[] buf = new char[15];
                        int n = reader.read(buf);
                        if (n > 1) {
                            plugged = Integer.parseInt(new String(buf, 0, n + (-1))) != 0;
                        }
                        reader.close();
                    } catch (Throwable th) {
                        if (reader != null) {
                            try {
                                reader.close();
                            } catch (IOException e) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException ex) {
                    Slog.w(TAG, "Couldn't read hdmi state from /sys/class/switch/hdmi/state: " + ex);
                    if (reader != null) {
                        reader.close();
                    }
                    this.mDefaultDisplayPolicy.setHdmiPlugged(plugged, true);
                } catch (NumberFormatException ex2) {
                    Slog.w(TAG, "Couldn't read hdmi state from /sys/class/switch/hdmi/state: " + ex2);
                    if (reader != null) {
                        reader.close();
                    }
                    this.mDefaultDisplayPolicy.setHdmiPlugged(plugged, true);
                }
            } catch (IOException e2) {
            }
        } else if (ExtconUEventObserver.extconExists() && ExtconUEventObserver.namedExtconDirExists("hdmi")) {
            HdmiVideoExtconUEventObserver observer = new HdmiVideoExtconUEventObserver();
            plugged = observer.init();
            this.mHDMIObserver = observer;
        }
        this.mDefaultDisplayPolicy.setHdmiPlugged(plugged, true);
    }

    /* JADX WARN: Code duplicated, block: B:206:0x02e3  */
    @Override // com.android.server.policy.WindowManagerPolicy
    public int interceptKeyBeforeQueueing(KeyEvent keyEvent, int i) {
        boolean z;
        int i2;
        int i3;
        TelecomManager telecommService;
        if (!this.mSystemBooted) {
            return 0;
        }
        boolean z2 = (i & AudioFormat.APTX) != 0;
        boolean z3 = keyEvent.getAction() == 0;
        boolean zIsCanceled = keyEvent.isCanceled();
        int keyCode = keyEvent.getKeyCode();
        int displayId = keyEvent.getDisplayId();
        boolean z4 = (i & 16777216) != 0;
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        boolean zIsKeyguardShowingAndNotOccluded = keyguardServiceDelegate == null ? false : z2 ? isKeyguardShowingAndNotOccluded() : keyguardServiceDelegate.isShowing();
        boolean z5 = (i & 1) != 0 || keyEvent.isWakeKey();
        if (z2 || (z4 && !z5)) {
            int i4 = 1;
            if (z2) {
                if (keyCode == this.mPendingWakeKey && !z3) {
                    i4 = 0;
                }
                this.mPendingWakeKey = -1;
                z = false;
                i2 = i4;
            } else {
                z = false;
                i2 = 1;
            }
        } else if (z2 || !shouldDispatchInputWhenNonInteractive(displayId, keyCode)) {
            if (z5 && (!z3 || !isWakeKeyWhenScreenOff(keyCode))) {
                z5 = false;
            }
            if (z5 && z3) {
                this.mPendingWakeKey = keyCode;
            }
            z = z5;
            i2 = 0;
        } else {
            this.mPendingWakeKey = -1;
            z = z5;
            i2 = 1;
        }
        if (isValidGlobalKey(keyCode) && this.mGlobalKeyManager.shouldHandleGlobalKey(keyCode, keyEvent)) {
            if (z) {
                wakeUp(keyEvent.getEventTime(), this.mAllowTheaterModeWakeFromKey, 6, "android.policy:KEY");
            }
            return i2;
        }
        boolean z6 = z3 && (i & 2) != 0 && (!((keyEvent.getFlags() & 64) != 0) || this.mNavBarVirtualKeyHapticFeedbackEnabled) && keyEvent.getRepeatCount() == 0;
        if (keyCode == 4) {
            z6 = z6;
            if (z3) {
                interceptBackKeyDown();
            } else if (interceptBackKeyUp(keyEvent)) {
                i2 &= -2;
            }
        } else if (keyCode == 5) {
            z6 = z6;
            if (z3 && (telecommService = getTelecommService()) != null && telecommService.isRinging()) {
                Log.i(TAG, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!");
                telecommService.acceptRingingCall();
                i2 &= -2;
            }
        } else if (keyCode != 6) {
            if (keyCode != 79 && keyCode != 130) {
                if (keyCode != 164) {
                    if (keyCode == 171) {
                        z6 = z6;
                        if (this.mShortPressOnWindowBehavior == 1 && this.mPictureInPictureVisible) {
                            if (!z3) {
                                showPictureInPictureMenu(keyEvent);
                            }
                            i2 &= -2;
                        }
                    } else if (keyCode == 219) {
                        boolean z7 = keyEvent.getRepeatCount() > 0;
                        if (z3 && z7) {
                            Message messageObtainMessage = this.mHandler.obtainMessage(24);
                            messageObtainMessage.setAsynchronous(true);
                            messageObtainMessage.sendToTarget();
                        }
                        if (!z3 && !z7) {
                            Message messageObtainMessage2 = this.mHandler.obtainMessage(23, keyEvent.getDeviceId(), 0, null);
                            messageObtainMessage2.setAsynchronous(true);
                            messageObtainMessage2.sendToTarget();
                        }
                        i2 &= -2;
                    } else if (keyCode != 231) {
                        if (keyCode == 276) {
                            i2 &= -2;
                            z = false;
                            if (!z3) {
                                this.mPowerManagerInternal.setUserInactiveOverrideFromWindowManager();
                            }
                        } else if (keyCode != 126 && keyCode != 127) {
                            switch (keyCode) {
                                case 24:
                                case 25:
                                    break;
                                case 26:
                                    EventLogTags.writeInterceptPower(KeyEvent.actionToString(keyEvent.getAction()), this.mPowerKeyHandled ? 1 : 0, this.mPowerKeyPressCounter);
                                    cancelPendingAccessibilityShortcutAction();
                                    i2 &= -2;
                                    z = false;
                                    if (!z3) {
                                        interceptPowerKeyUp(keyEvent, z2, zIsCanceled);
                                    } else {
                                        interceptPowerKeyDown(keyEvent, z2);
                                    }
                                    break;
                                default:
                                    switch (keyCode) {
                                        case HdmiCecKeycode.CEC_KEYCODE_INITIAL_CONFIGURATION /* 85 */:
                                        case HdmiCecKeycode.CEC_KEYCODE_SELECT_BROADCAST_TYPE /* 86 */:
                                        case HdmiCecKeycode.CEC_KEYCODE_SELECT_SOUND_PRESENTATION /* 87 */:
                                        case NetlinkConstants.SOCKDIAG_MSG_HEADER_SIZE /* 88 */:
                                        case 89:
                                        case 90:
                                        case 91:
                                            break;
                                        default:
                                            switch (keyCode) {
                                                case 222:
                                                    break;
                                                case 223:
                                                    i2 &= -2;
                                                    z = false;
                                                    if (!this.mPowerManager.isInteractive()) {
                                                        z6 = false;
                                                    }
                                                    if (!z3) {
                                                        sleepRelease(keyEvent.getEventTime());
                                                    } else {
                                                        sleepPress();
                                                    }
                                                    break;
                                                case UsbDescriptor.CLASSID_WIRELESS /* 224 */:
                                                    i2 &= -2;
                                                    z = true;
                                                    z6 = z6;
                                                    break;
                                                default:
                                                    switch (keyCode) {
                                                        case 280:
                                                        case 281:
                                                        case 282:
                                                        case 283:
                                                            i2 &= -2;
                                                            interceptSystemNavigationKey(keyEvent);
                                                            z6 = z6;
                                                            break;
                                                        default:
                                                            z6 = z6;
                                                            break;
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                        }
                        z6 = z6;
                    } else {
                        if (!z3) {
                            this.mBroadcastWakeLock.acquire();
                            Message messageObtainMessage3 = this.mHandler.obtainMessage(12);
                            messageObtainMessage3.setAsynchronous(true);
                            messageObtainMessage3.sendToTarget();
                        }
                        i2 &= -2;
                        z6 = z6;
                    }
                }
                if (keyCode == 25) {
                    if (z3) {
                        cancelPendingRingerToggleChordAction();
                        if (z2 && !this.mScreenshotChordVolumeDownKeyTriggered && (keyEvent.getFlags() & 1024) == 0) {
                            this.mScreenshotChordVolumeDownKeyTriggered = true;
                            this.mScreenshotChordVolumeDownKeyTime = keyEvent.getDownTime();
                            this.mScreenshotChordVolumeDownKeyConsumed = false;
                            cancelPendingPowerKeyAction();
                            interceptScreenshotChord();
                            interceptAccessibilityShortcutChord();
                        }
                    } else {
                        this.mScreenshotChordVolumeDownKeyTriggered = false;
                        cancelPendingScreenshotChordAction();
                        cancelPendingAccessibilityShortcutAction();
                    }
                } else if (keyCode == 24) {
                    if (!z3) {
                        this.mA11yShortcutChordVolumeUpKeyTriggered = false;
                        cancelPendingScreenshotChordAction();
                        cancelPendingAccessibilityShortcutAction();
                        cancelPendingRingerToggleChordAction();
                    } else if (z2 && !this.mA11yShortcutChordVolumeUpKeyTriggered && (keyEvent.getFlags() & 1024) == 0) {
                        this.mA11yShortcutChordVolumeUpKeyTriggered = true;
                        this.mA11yShortcutChordVolumeUpKeyTime = keyEvent.getDownTime();
                        this.mA11yShortcutChordVolumeUpKeyConsumed = false;
                        cancelPendingPowerKeyAction();
                        cancelPendingScreenshotChordAction();
                        cancelPendingRingerToggleChordAction();
                        interceptAccessibilityShortcutChord();
                        interceptRingerToggleChord();
                    }
                }
                if (z3) {
                    sendSystemKeyToStatusBarAsync(keyEvent.getKeyCode());
                    NotificationManager notificationService = getNotificationService();
                    if (notificationService != null && !this.mHandleVolumeKeysInWM) {
                        notificationService.silenceNotificationSound();
                    }
                    TelecomManager telecommService2 = getTelecommService();
                    if (telecommService2 == null || this.mHandleVolumeKeysInWM || !telecommService2.isRinging()) {
                        int mode = 0;
                        try {
                            mode = getAudioService().getMode();
                        } catch (Exception e) {
                            Log.e(TAG, "Error getting AudioService in interceptKeyBeforeQueueing.", e);
                        }
                        if (((telecommService2 != null && telecommService2.isInCall()) || mode == 3) && (i2 & 1) == 0) {
                            MediaSessionLegacyHelper.getHelper(this.mContext).sendVolumeKeyEvent(keyEvent, Integer.MIN_VALUE, false);
                        } else if (!this.mUseTvRouting || this.mHandleVolumeKeysInWM) {
                            i2 |= 1;
                        } else if ((i2 & 1) == 0) {
                            MediaSessionLegacyHelper.getHelper(this.mContext).sendVolumeKeyEvent(keyEvent, Integer.MIN_VALUE, true);
                        }
                    } else {
                        Log.i(TAG, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!");
                        telecommService2.silenceRinger();
                        i2 &= -2;
                    }
                } else if (this.mUseTvRouting) {
                    i2 |= 1;
                } else {
                    i2 |= 1;
                }
            }
            if (MediaSessionLegacyHelper.getHelper(this.mContext).isGlobalPriorityActive()) {
                i2 &= -2;
            }
            if ((i2 & 1) == 0) {
                this.mBroadcastWakeLock.acquire();
                Message messageObtainMessage4 = this.mHandler.obtainMessage(3, new KeyEvent(keyEvent));
                messageObtainMessage4.setAsynchronous(true);
                messageObtainMessage4.sendToTarget();
            }
        } else {
            z6 = z6;
            i2 &= -2;
            if (z3) {
                TelecomManager telecommService3 = getTelecommService();
                boolean zEndCall = telecommService3 != null ? telecommService3.endCall() : false;
                if (!z2 || zEndCall) {
                    this.mEndCallKeyHandled = true;
                } else {
                    this.mEndCallKeyHandled = false;
                    this.mHandler.postDelayed(this.mEndCallLongPress, ViewConfiguration.get(this.mContext).getDeviceGlobalActionKeyTimeout());
                }
            } else if (!this.mEndCallKeyHandled) {
                this.mHandler.removeCallbacks(this.mEndCallLongPress);
                if (!zIsCanceled && (((this.mEndcallBehavior & 1) == 0 || !goHome()) && (this.mEndcallBehavior & 2) != 0)) {
                    goToSleep(keyEvent.getEventTime(), 4, 0);
                    z = false;
                }
            }
        }
        if (this.mHasFeatureLeanback && ((keyCode == 4 || keyCode == 20) && interceptAccessibilityGestureTv(keyCode, z3))) {
            i2 &= -2;
        }
        if (this.mAccessibilityShortcutController.isAccessibilityShortcutAvailable(isKeyguardLocked()) && keyCode == 54 && z3 && keyEvent.isCtrlPressed() && keyEvent.isAltPressed()) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(17));
            i2 &= -2;
        }
        if (z6) {
            performHapticFeedback(1, false, "Virtual Key - Press");
        }
        if (z) {
            i3 = -1;
            wakeUp(keyEvent.getEventTime(), this.mAllowTheaterModeWakeFromKey, 6, "android.policy:KEY");
        } else {
            i3 = -1;
        }
        if ((i2 & 1) != 0 && !this.mPerDisplayFocusEnabled && displayId != i3 && displayId != this.mTopFocusedDisplayId) {
            Log.i(TAG, "Moving non-focused display " + displayId + " to top because a key is targeting it");
            this.mWindowManagerFuncs.moveDisplayToTop(displayId);
        }
        return i2;
    }

    private void interceptSystemNavigationKey(KeyEvent event) {
        if (event.getAction() == 1) {
            if ((!this.mAccessibilityManager.isEnabled() || !this.mAccessibilityManager.sendFingerprintGesture(event.getKeyCode())) && this.mSystemNavigationKeysEnabled) {
                sendSystemKeyToStatusBarAsync(event.getKeyCode());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSystemKeyToStatusBar(int keyCode) {
        IStatusBarService statusBar = getStatusBarService();
        if (statusBar != null) {
            try {
                statusBar.handleSystemKey(keyCode);
            } catch (RemoteException e) {
            }
        }
    }

    private void sendSystemKeyToStatusBarAsync(int keyCode) {
        Message message = this.mHandler.obtainMessage(21, keyCode, 0);
        message.setAsynchronous(true);
        this.mHandler.sendMessage(message);
    }

    private static boolean isValidGlobalKey(int keyCode) {
        if (keyCode == 26 || keyCode == 223 || keyCode == 224) {
            return false;
        }
        return true;
    }

    private boolean isWakeKeyWhenScreenOff(int keyCode) {
        if (keyCode == 4) {
            return this.mWakeOnBackKeyPress;
        }
        if (keyCode != 79 && keyCode != 130) {
            if (keyCode != 164) {
                if (keyCode == 219) {
                    return this.mWakeOnAssistKeyPress;
                }
                if (keyCode != 222 && keyCode != 126 && keyCode != 127) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                            return this.mWakeOnDpadKeyPress;
                        case 24:
                        case 25:
                            break;
                        default:
                            switch (keyCode) {
                                case HdmiCecKeycode.CEC_KEYCODE_INITIAL_CONFIGURATION /* 85 */:
                                case HdmiCecKeycode.CEC_KEYCODE_SELECT_BROADCAST_TYPE /* 86 */:
                                case HdmiCecKeycode.CEC_KEYCODE_SELECT_SOUND_PRESENTATION /* 87 */:
                                case NetlinkConstants.SOCKDIAG_MSG_HEADER_SIZE /* 88 */:
                                case 89:
                                case 90:
                                case 91:
                                    break;
                                default:
                                    return true;
                            }
                            break;
                    }
                }
            }
            return this.mDefaultDisplayPolicy.getDockMode() != 0;
        }
        return false;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public int interceptMotionBeforeQueueingNonInteractive(int displayId, long whenNanos, int policyFlags) {
        if ((policyFlags & 1) != 0 && wakeUp(whenNanos / 1000000, this.mAllowTheaterModeWakeFromMotion, 7, "android.policy:MOTION")) {
            return 0;
        }
        if (shouldDispatchInputWhenNonInteractive(displayId, 0)) {
            return 1;
        }
        if (isTheaterModeEnabled() && (policyFlags & 1) != 0) {
            wakeUp(whenNanos / 1000000, this.mAllowTheaterModeWakeFromMotionWhenNotDreaming, 7, "android.policy:MOTION");
        }
        return 0;
    }

    private boolean shouldDispatchInputWhenNonInteractive(int displayId, int keyCode) {
        Display display;
        IDreamManager dreamManager;
        boolean isDefaultDisplay = displayId == 0 || displayId == -1;
        if (isDefaultDisplay) {
            display = this.mDefaultDisplay;
        } else {
            display = this.mDisplayManager.getDisplay(displayId);
        }
        boolean displayOff = display == null || display.getState() == 1;
        if (displayOff && !this.mHasFeatureWatch) {
            return false;
        }
        if (isKeyguardShowingAndNotOccluded() && !displayOff) {
            return true;
        }
        if ((!this.mHasFeatureWatch || (keyCode != 4 && keyCode != 264)) && isDefaultDisplay && (dreamManager = getDreamManager()) != null) {
            try {
                if (dreamManager.isDreaming()) {
                    return true;
                }
            } catch (RemoteException e) {
                Slog.e(TAG, "RemoteException when checking if dreaming", e);
            }
        }
        return false;
    }

    private void dispatchDirectAudioEvent(KeyEvent event) {
        HdmiAudioSystemClient audioSystemClient;
        HdmiControlManager hdmiControlManager = getHdmiControlManager();
        if (hdmiControlManager != null && !hdmiControlManager.getSystemAudioMode() && shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff() && (audioSystemClient = hdmiControlManager.getAudioSystemClient()) != null) {
            audioSystemClient.sendKeyEvent(event.getKeyCode(), event.getAction() == 0);
            return;
        }
        try {
            getAudioService().handleVolumeKey(event, this.mUseTvRouting, this.mContext.getOpPackageName(), TAG);
        } catch (Exception e) {
            Log.e(TAG, "Error dispatching volume key in handleVolumeKey for event:" + event, e);
        }
    }

    private HdmiControlManager getHdmiControlManager() {
        if (!this.mHasFeatureHdmiCec) {
            return null;
        }
        return (HdmiControlManager) this.mContext.getSystemService(HdmiControlManager.class);
    }

    private boolean shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff() {
        return RoSystemProperties.CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF;
    }

    void dispatchMediaKeyWithWakeLock(KeyEvent event) {
        if (this.mHavePendingMediaKeyRepeatWithWakeLock) {
            this.mHandler.removeMessages(4);
            this.mHavePendingMediaKeyRepeatWithWakeLock = false;
            this.mBroadcastWakeLock.release();
        }
        dispatchMediaKeyWithWakeLockToAudioService(event);
        if (event.getAction() == 0 && event.getRepeatCount() == 0) {
            this.mHavePendingMediaKeyRepeatWithWakeLock = true;
            Message msg = this.mHandler.obtainMessage(4, event);
            msg.setAsynchronous(true);
            this.mHandler.sendMessageDelayed(msg, ViewConfiguration.getKeyRepeatTimeout());
            return;
        }
        this.mBroadcastWakeLock.release();
    }

    void dispatchMediaKeyRepeatWithWakeLock(KeyEvent event) {
        this.mHavePendingMediaKeyRepeatWithWakeLock = false;
        KeyEvent repeatEvent = KeyEvent.changeTimeRepeat(event, SystemClock.uptimeMillis(), 1, event.getFlags() | 128);
        dispatchMediaKeyWithWakeLockToAudioService(repeatEvent);
        this.mBroadcastWakeLock.release();
    }

    void dispatchMediaKeyWithWakeLockToAudioService(KeyEvent event) {
        if (this.mActivityManagerInternal.isSystemReady()) {
            MediaSessionLegacyHelper.getHelper(this.mContext).sendMediaButtonEvent(event, true);
        }
    }

    void launchVoiceAssistWithWakeLock() {
        Intent voiceIntent;
        sendCloseSystemWindows(SYSTEM_DIALOG_REASON_ASSIST);
        if (!keyguardOn()) {
            voiceIntent = new Intent("android.speech.action.WEB_SEARCH");
        } else {
            IDeviceIdleController dic = IDeviceIdleController.Stub.asInterface(ServiceManager.getService("deviceidle"));
            if (dic != null) {
                try {
                    dic.exitIdle("voice-search");
                } catch (RemoteException e) {
                }
            }
            Intent voiceIntent2 = new Intent("android.speech.action.VOICE_SEARCH_HANDS_FREE");
            voiceIntent2.putExtra("android.speech.extras.EXTRA_SECURE", true);
            voiceIntent = voiceIntent2;
        }
        startActivityAsUser(voiceIntent, UserHandle.CURRENT_OR_SELF);
        List<ResolveInfo> resolveInfos = this.mContext.getPackageManager().queryIntentServicesAsUser(voiceIntent, 65536, UserHandle.SYSTEM);
        if (resolveInfos != null && !resolveInfos.isEmpty()) {
            voiceIntent.setComponent(resolveInfos.get(0).getComponentInfo().getComponentName());
            this.mContext.startServiceAsUser(voiceIntent, UserHandle.SYSTEM);
        }
        this.mBroadcastWakeLock.release();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void startedGoingToSleep(int why) {
        this.mGoingToSleep = true;
        this.mRequestedOrGoingToSleep = true;
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate != null) {
            keyguardServiceDelegate.onStartedGoingToSleep(why);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void finishedGoingToSleep(int why) {
        EventLogTags.writeScreenToggled(0);
        MetricsLogger.histogram(this.mContext, "screen_timeout", this.mLockScreenTimeout / 1000);
        this.mGoingToSleep = false;
        this.mRequestedOrGoingToSleep = false;
        this.mDefaultDisplayPolicy.setAwake(false);
        synchronized (this.mLock) {
            updateWakeGestureListenerLp();
            updateLockScreenTimeout();
        }
        this.mDefaultDisplayRotation.updateOrientationListener();
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate != null) {
            keyguardServiceDelegate.onFinishedGoingToSleep(why, this.mCameraGestureTriggeredDuringGoingToSleep);
        }
        DisplayFoldController displayFoldController = this.mDisplayFoldController;
        if (displayFoldController != null) {
            displayFoldController.finishedGoingToSleep();
        }
        this.mCameraGestureTriggeredDuringGoingToSleep = false;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void startedWakingUp(int why) {
        EventLogTags.writeScreenToggled(1);
        this.mDefaultDisplayPolicy.setAwake(true);
        synchronized (this.mLock) {
            updateWakeGestureListenerLp();
            updateLockScreenTimeout();
        }
        this.mDefaultDisplayRotation.updateOrientationListener();
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate != null) {
            keyguardServiceDelegate.onStartedWakingUp();
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void finishedWakingUp(int why) {
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate != null) {
            keyguardServiceDelegate.onFinishedWakingUp();
        }
        DisplayFoldController displayFoldController = this.mDisplayFoldController;
        if (displayFoldController != null) {
            displayFoldController.finishedWakingUp();
        }
    }

    private void wakeUpFromPowerKey(long eventTime) {
        wakeUp(eventTime, this.mAllowTheaterModeWakeFromPowerKey, 1, "android.policy:POWER");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean wakeUp(long wakeTime, boolean wakeInTheaterMode, int reason, String details) {
        boolean theaterModeEnabled = isTheaterModeEnabled();
        if (!wakeInTheaterMode && theaterModeEnabled) {
            return false;
        }
        if (theaterModeEnabled) {
            Settings.Global.putInt(this.mContext.getContentResolver(), "theater_mode_on", 0);
        }
        this.mPowerManager.wakeUp(wakeTime, reason, details);
        HdmiControl hdmiControl = getHdmiControl();
        if (hdmiControl != null) {
            hdmiControl.turnOnTv();
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishKeyguardDrawn() {
        if (!this.mDefaultDisplayPolicy.finishKeyguardDrawn()) {
            return;
        }
        synchronized (this.mLock) {
            if (this.mKeyguardDelegate != null) {
                this.mHandler.removeMessages(6);
            }
        }
        this.mWindowManagerInternal.waitForAllWindowsDrawn(this.mWindowManagerDrawCallback, 1000L, -1);
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void screenTurnedOff() {
        updateScreenOffSleepToken(true);
        this.mDefaultDisplayPolicy.screenTurnedOff();
        synchronized (this.mLock) {
            if (this.mKeyguardDelegate != null) {
                this.mKeyguardDelegate.onScreenTurnedOff();
            }
        }
        this.mDefaultDisplayRotation.updateOrientationListener();
        reportScreenStateToVrManager(false);
    }

    private long getKeyguardDrawnTimeout() {
        boolean bootCompleted = ((SystemServiceManager) LocalServices.getService(SystemServiceManager.class)).isBootCompleted();
        return bootCompleted ? 1000L : 5000L;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void screenTurningOn(WindowManagerPolicy.ScreenOnListener screenOnListener) {
        Trace.asyncTraceBegin(32L, "screenTurningOn", 0);
        updateScreenOffSleepToken(false);
        this.mDefaultDisplayPolicy.screenTurnedOn(screenOnListener);
        synchronized (this.mLock) {
            if (this.mKeyguardDelegate != null && this.mKeyguardDelegate.hasKeyguard()) {
                this.mHandler.removeMessages(6);
                this.mHandler.sendEmptyMessageDelayed(6, getKeyguardDrawnTimeout());
                this.mKeyguardDelegate.onScreenTurningOn(this.mKeyguardDrawnCallback);
            } else {
                this.mHandler.sendEmptyMessage(5);
            }
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void screenTurnedOn() {
        synchronized (this.mLock) {
            if (this.mKeyguardDelegate != null) {
                this.mKeyguardDelegate.onScreenTurnedOn();
            }
        }
        reportScreenStateToVrManager(true);
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void screenTurningOff(WindowManagerPolicy.ScreenOffListener screenOffListener) {
        this.mWindowManagerFuncs.screenTurningOff(screenOffListener);
        synchronized (this.mLock) {
            if (this.mKeyguardDelegate != null) {
                this.mKeyguardDelegate.onScreenTurningOff();
            }
        }
    }

    private void reportScreenStateToVrManager(boolean isScreenOn) {
        if (this.mVrManagerInternal == null) {
            return;
        }
        this.mVrManagerInternal.onScreenStateChanged(isScreenOn);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishWindowsDrawn() {
        if (!this.mDefaultDisplayPolicy.finishWindowsDrawn()) {
            return;
        }
        finishScreenTurningOn();
    }

    private void finishScreenTurningOn() {
        boolean enableScreen;
        this.mDefaultDisplayRotation.updateOrientationListener();
        WindowManagerPolicy.ScreenOnListener listener = this.mDefaultDisplayPolicy.getScreenOnListener();
        if (!this.mDefaultDisplayPolicy.finishScreenTurningOn()) {
            return;
        }
        Trace.asyncTraceEnd(32L, "screenTurningOn", 0);
        boolean awake = this.mDefaultDisplayPolicy.isAwake();
        synchronized (this.mLock) {
            if (!this.mKeyguardDrawnOnce && awake) {
                this.mKeyguardDrawnOnce = true;
                enableScreen = true;
                if (this.mBootMessageNeedsHiding) {
                    this.mBootMessageNeedsHiding = false;
                    hideBootMessages();
                }
            } else {
                enableScreen = false;
            }
        }
        if (listener != null) {
            listener.onScreenOn();
        }
        if (enableScreen) {
            try {
                this.mWindowManager.enableScreenIfNeeded();
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleHideBootMessage() {
        synchronized (this.mLock) {
            if (!this.mKeyguardDrawnOnce) {
                this.mBootMessageNeedsHiding = true;
                return;
            }
            ProgressDialog progressDialog = this.mBootMsgDialog;
            if (progressDialog != null) {
                progressDialog.dismiss();
                this.mBootMsgDialog = null;
            }
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean isScreenOn() {
        return this.mDefaultDisplayPolicy.isScreenOnEarly();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean okToAnimate() {
        return this.mDefaultDisplayPolicy.isAwake() && !this.mGoingToSleep;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void enableKeyguard(boolean enabled) {
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate != null) {
            keyguardServiceDelegate.setKeyguardEnabled(enabled);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void exitKeyguardSecurely(WindowManagerPolicy.OnKeyguardExitResult callback) {
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate != null) {
            keyguardServiceDelegate.verifyUnlock(callback);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean isKeyguardShowing() {
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate == null) {
            return false;
        }
        return keyguardServiceDelegate.isShowing();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean isKeyguardShowingAndNotOccluded() {
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        return (keyguardServiceDelegate == null || !keyguardServiceDelegate.isShowing() || this.mKeyguardOccluded) ? false : true;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean isKeyguardTrustedLw() {
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate == null) {
            return false;
        }
        return keyguardServiceDelegate.isTrusted();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean isKeyguardLocked() {
        return keyguardOn();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean isKeyguardSecure(int userId) {
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate == null) {
            return false;
        }
        return keyguardServiceDelegate.isSecure(userId);
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean isKeyguardOccluded() {
        if (this.mKeyguardDelegate == null) {
            return false;
        }
        return this.mKeyguardOccluded;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean inKeyguardRestrictedKeyInputMode() {
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate == null) {
            return false;
        }
        return keyguardServiceDelegate.isInputRestricted();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void dismissKeyguardLw(IKeyguardDismissCallback callback, CharSequence message) {
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate != null && keyguardServiceDelegate.isShowing()) {
            this.mKeyguardDelegate.dismiss(callback, message);
        } else if (callback != null) {
            try {
                callback.onDismissError();
            } catch (RemoteException e) {
                Slog.w(TAG, "Failed to call callback", e);
            }
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean isKeyguardDrawnLw() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mKeyguardDrawnOnce;
        }
        return z;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void startKeyguardExitAnimation(long startTime, long fadeoutDuration) {
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate != null) {
            keyguardServiceDelegate.startKeyguardExitAnimation(startTime, fadeoutDuration);
        }
    }

    void sendCloseSystemWindows() {
        PhoneWindow.sendCloseSystemWindows(this.mContext, (String) null);
    }

    void sendCloseSystemWindows(String reason) {
        PhoneWindow.sendCloseSystemWindows(this.mContext, reason);
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void setSafeMode(boolean safeMode) {
        this.mSafeMode = safeMode;
        if (safeMode) {
            performHapticFeedback(10001, true, "Safe Mode Enabled");
        }
    }

    static long[] getLongIntArray(Resources r, int resid) {
        return ArrayUtils.convertToLongArray(r.getIntArray(resid));
    }

    private void bindKeyguard() {
        synchronized (this.mLock) {
            if (this.mKeyguardBound) {
                return;
            }
            this.mKeyguardBound = true;
            this.mKeyguardDelegate.bindService(this.mContext);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void onSystemUiStarted() {
        bindKeyguard();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void systemReady() {
        this.mKeyguardDelegate.onSystemReady();
        this.mVrManagerInternal = (VrManagerInternal) LocalServices.getService(VrManagerInternal.class);
        if (this.mVrManagerInternal != null) {
            this.mVrManagerInternal.addPersistentVrModeStateListener(this.mPersistentVrModeListener);
        }
        readCameraLensCoverState();
        updateUiMode();
        this.mDefaultDisplayRotation.updateOrientationListener();
        synchronized (this.mLock) {
            this.mSystemReady = true;
            this.mHandler.post(new Runnable() { // from class: com.android.server.policy.PhoneWindowManager.13
                @Override // java.lang.Runnable
                public void run() {
                    PhoneWindowManager.this.updateSettings();
                }
            });
            if (this.mSystemBooted) {
                this.mKeyguardDelegate.onBootCompleted();
            }
        }
        this.mAutofillManagerInternal = (AutofillManagerInternal) LocalServices.getService(AutofillManagerInternal.class);
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void systemBooted() {
        bindKeyguard();
        synchronized (this.mLock) {
            this.mSystemBooted = true;
            if (this.mSystemReady) {
                this.mKeyguardDelegate.onBootCompleted();
            }
        }
        startedWakingUp(3);
        finishedWakingUp(3);
        screenTurningOn(null);
        screenTurnedOn();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean canDismissBootAnimation() {
        return this.mDefaultDisplayPolicy.isKeyguardDrawComplete();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void showBootMessage(final CharSequence msg, boolean always) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.policy.PhoneWindowManager.14
            @Override // java.lang.Runnable
            public void run() {
                int theme;
                if (PhoneWindowManager.this.mBootMsgDialog == null) {
                    if (PhoneWindowManager.this.mPackageManager.hasSystemFeature("android.software.leanback")) {
                        theme = R.style.Theme.DeviceDefault.Settings.DialogWhenLarge.NoActionBar;
                    } else {
                        theme = 0;
                    }
                    PhoneWindowManager.this.mBootMsgDialog = new ProgressDialog(PhoneWindowManager.this.mContext, theme) { // from class: com.android.server.policy.PhoneWindowManager.14.1
                        @Override // android.app.Dialog, android.view.Window.Callback
                        public boolean dispatchKeyEvent(KeyEvent event) {
                            return true;
                        }

                        @Override // android.app.Dialog, android.view.Window.Callback
                        public boolean dispatchKeyShortcutEvent(KeyEvent event) {
                            return true;
                        }

                        @Override // android.app.Dialog, android.view.Window.Callback
                        public boolean dispatchTouchEvent(MotionEvent ev) {
                            return true;
                        }

                        @Override // android.app.Dialog, android.view.Window.Callback
                        public boolean dispatchTrackballEvent(MotionEvent ev) {
                            return true;
                        }

                        @Override // android.app.Dialog, android.view.Window.Callback
                        public boolean dispatchGenericMotionEvent(MotionEvent ev) {
                            return true;
                        }

                        @Override // android.app.Dialog, android.view.Window.Callback
                        public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent event) {
                            return true;
                        }
                    };
                    if (PhoneWindowManager.this.mPackageManager.isDeviceUpgrading()) {
                        PhoneWindowManager.this.mBootMsgDialog.setTitle(R.string.autofill_save_title_with_3types);
                    } else {
                        PhoneWindowManager.this.mBootMsgDialog.setTitle(R.string.autofill_picker_some_suggestions);
                    }
                    PhoneWindowManager.this.mBootMsgDialog.setProgressStyle(0);
                    PhoneWindowManager.this.mBootMsgDialog.setIndeterminate(true);
                    PhoneWindowManager.this.mBootMsgDialog.getWindow().setType(2021);
                    PhoneWindowManager.this.mBootMsgDialog.getWindow().addFlags(258);
                    PhoneWindowManager.this.mBootMsgDialog.getWindow().setDimAmount(1.0f);
                    WindowManager.LayoutParams lp = PhoneWindowManager.this.mBootMsgDialog.getWindow().getAttributes();
                    lp.screenOrientation = 5;
                    lp.setFitInsetsTypes(0);
                    PhoneWindowManager.this.mBootMsgDialog.getWindow().setAttributes(lp);
                    PhoneWindowManager.this.mBootMsgDialog.setCancelable(false);
                    PhoneWindowManager.this.mBootMsgDialog.show();
                }
                PhoneWindowManager.this.mBootMsgDialog.setMessage(msg);
            }
        });
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void hideBootMessages() {
        this.mHandler.sendEmptyMessage(11);
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void userActivity() {
        synchronized (this.mScreenLockTimeout) {
            if (this.mLockScreenTimerActive) {
                this.mHandler.removeCallbacks(this.mScreenLockTimeout);
                this.mHandler.postDelayed(this.mScreenLockTimeout, this.mLockScreenTimeout);
            }
        }
    }

    class ScreenLockTimeout implements Runnable {
        Bundle options;

        ScreenLockTimeout() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                if (PhoneWindowManager.this.mKeyguardDelegate != null) {
                    PhoneWindowManager.this.mKeyguardDelegate.doKeyguardTimeout(this.options);
                }
                PhoneWindowManager.this.mLockScreenTimerActive = false;
                PhoneWindowManager.this.mLockNowPending = false;
                this.options = null;
            }
        }

        public void setLockOptions(Bundle options) {
            this.options = options;
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void lockNow(Bundle options) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.DEVICE_POWER", null);
        this.mHandler.removeCallbacks(this.mScreenLockTimeout);
        if (options != null) {
            this.mScreenLockTimeout.setLockOptions(options);
        }
        this.mHandler.post(this.mScreenLockTimeout);
        synchronized (this.mScreenLockTimeout) {
            this.mLockNowPending = true;
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void setAllowLockscreenWhenOn(int displayId, boolean allow) {
        if (allow) {
            this.mAllowLockscreenWhenOnDisplays.add(Integer.valueOf(displayId));
        } else {
            this.mAllowLockscreenWhenOnDisplays.remove(Integer.valueOf(displayId));
        }
        updateLockScreenTimeout();
    }

    private void updateLockScreenTimeout() {
        synchronized (this.mScreenLockTimeout) {
            if (this.mLockNowPending) {
                Log.w(TAG, "lockNow pending, ignore updating lockscreen timeout");
                return;
            }
            boolean enable = !this.mAllowLockscreenWhenOnDisplays.isEmpty() && this.mDefaultDisplayPolicy.isAwake() && this.mKeyguardDelegate != null && this.mKeyguardDelegate.isSecure(this.mCurrentUserId);
            if (this.mLockScreenTimerActive != enable) {
                if (enable) {
                    this.mHandler.removeCallbacks(this.mScreenLockTimeout);
                    this.mHandler.postDelayed(this.mScreenLockTimeout, this.mLockScreenTimeout);
                } else {
                    this.mHandler.removeCallbacks(this.mScreenLockTimeout);
                }
                this.mLockScreenTimerActive = enable;
            }
        }
    }

    private void schedulePossibleVeryLongPressReboot() {
        this.mHandler.removeCallbacks(this.mPossibleVeryLongPressReboot);
        this.mHandler.postDelayed(this.mPossibleVeryLongPressReboot, this.mVeryLongPressTimeout);
    }

    private void cancelPossibleVeryLongPressReboot() {
        this.mHandler.removeCallbacks(this.mPossibleVeryLongPressReboot);
    }

    private void updateScreenOffSleepToken(boolean acquire) {
        if (acquire) {
            this.mScreenOffSleepTokenAcquirer.acquire(0);
        } else {
            this.mScreenOffSleepTokenAcquirer.release(0);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void enableScreenAfterBoot() {
        readLidState();
        applyLidSwitchState();
        updateRotation(true);
    }

    private void applyLidSwitchState() {
        DisplayFoldController displayFoldController;
        int lidState = this.mDefaultDisplayPolicy.getLidState();
        if (this.mLidControlsDisplayFold && (displayFoldController = this.mDisplayFoldController) != null) {
            displayFoldController.requestDeviceFolded(lidState == 0);
        } else if (lidState == 0) {
            int lidBehavior = getLidBehavior();
            if (lidBehavior == 1) {
                goToSleep(SystemClock.uptimeMillis(), 3, 1);
            } else if (lidBehavior == 2) {
                this.mWindowManagerFuncs.lockDeviceNow();
            }
        }
        synchronized (this.mLock) {
            updateWakeGestureListenerLp();
        }
    }

    void updateUiMode() {
        if (this.mUiModeManager == null) {
            this.mUiModeManager = IUiModeManager.Stub.asInterface(ServiceManager.getService("uimode"));
        }
        try {
            this.mUiMode = this.mUiModeManager.getCurrentModeType();
        } catch (RemoteException e) {
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public int getUiMode() {
        return this.mUiMode;
    }

    void updateRotation(boolean alwaysSendConfiguration) {
        try {
            this.mWindowManager.updateRotation(alwaysSendConfiguration, false);
        } catch (RemoteException e) {
        }
    }

    Intent createHomeDockIntent() {
        Intent intent = null;
        int i = this.mUiMode;
        if (i == 3) {
            if (this.mEnableCarDockHomeCapture) {
                intent = this.mCarDockIntent;
            }
        } else if (i != 2) {
            if (i == 6) {
                int dockMode = this.mDefaultDisplayPolicy.getDockMode();
                if (dockMode == 1 || dockMode == 4 || dockMode == 3) {
                    intent = this.mDeskDockIntent;
                }
            } else if (i == 7) {
                intent = this.mVrHeadsetHomeIntent;
            }
        }
        if (intent == null) {
            return null;
        }
        ActivityInfo ai = null;
        ResolveInfo info = this.mPackageManager.resolveActivityAsUser(intent, 65664, this.mCurrentUserId);
        if (info != null) {
            ai = info.activityInfo;
        }
        if (ai == null || ai.metaData == null || !ai.metaData.getBoolean("android.dock_home")) {
            return null;
        }
        Intent intent2 = new Intent(intent);
        intent2.setClassName(ai.packageName, ai.name);
        return intent2;
    }

    void startDockOrHome(int displayId, boolean fromHomeKey, boolean awakenFromDreams) {
        try {
            ActivityManager.getService().stopAppSwitches();
        } catch (RemoteException e) {
        }
        sendCloseSystemWindows(SYSTEM_DIALOG_REASON_HOME_KEY);
        if (awakenFromDreams) {
            awakenDreams();
        }
        if (!this.mHasFeatureAuto && !isUserSetupComplete()) {
            Slog.i(TAG, "Not going home because user setup is in progress.");
            return;
        }
        Intent dock = createHomeDockIntent();
        if (dock != null) {
            if (fromHomeKey) {
                try {
                    dock.putExtra("android.intent.extra.FROM_HOME_KEY", fromHomeKey);
                } catch (ActivityNotFoundException e2) {
                }
            }
            startActivityAsUser(dock, UserHandle.CURRENT);
            return;
        }
        this.mActivityTaskManagerInternal.startHomeOnDisplay(this.mCurrentUserId, "startDockOrHome", displayId, true, fromHomeKey);
    }

    boolean goHome() {
        if (!isUserSetupComplete()) {
            Slog.i(TAG, "Not going home because user setup is in progress.");
            return false;
        }
        try {
            if (SystemProperties.getInt("persist.sys.uts-test-mode", 0) == 1) {
                Log.d(TAG, "UTS-TEST-MODE");
            } else {
                ActivityManager.getService().stopAppSwitches();
                sendCloseSystemWindows();
                Intent dock = createHomeDockIntent();
                if (dock != null) {
                    int result = ActivityTaskManager.getService().startActivityAsUser((IApplicationThread) null, this.mContext.getBasePackageName(), this.mContext.getAttributionTag(), dock, dock.resolveTypeIfNeeded(this.mContext.getContentResolver()), (IBinder) null, (String) null, 0, 1, (ProfilerInfo) null, (Bundle) null, -2);
                    if (result == 1) {
                        return false;
                    }
                }
            }
            int result2 = ActivityTaskManager.getService().startActivityAsUser((IApplicationThread) null, this.mContext.getBasePackageName(), this.mContext.getAttributionTag(), this.mHomeIntent, this.mHomeIntent.resolveTypeIfNeeded(this.mContext.getContentResolver()), (IBinder) null, (String) null, 0, 1, (ProfilerInfo) null, (Bundle) null, -2);
            return result2 != 1;
        } catch (RemoteException e) {
        }
    }

    private boolean isTheaterModeEnabled() {
        return Settings.Global.getInt(this.mContext.getContentResolver(), "theater_mode_on", 0) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean performHapticFeedback(int effectId, boolean always, String reason) {
        return performHapticFeedback(Process.myUid(), this.mContext.getOpPackageName(), effectId, always, reason);
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean performHapticFeedback(int uid, String packageName, int effectId, boolean always, String reason) {
        VibrationEffect effect;
        if (!this.mVibrator.hasVibrator()) {
            return false;
        }
        boolean hapticsDisabled = Settings.System.getIntForUser(this.mContext.getContentResolver(), "haptic_feedback_enabled", 0, -2) == 0;
        if ((hapticsDisabled && !always) || (effect = getVibrationEffect(effectId)) == null) {
            return false;
        }
        this.mVibrator.vibrate(uid, packageName, effect, reason, VIBRATION_ATTRIBUTES);
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private VibrationEffect getVibrationEffect(int effectId) {
        long[] pattern;
        if (effectId != 0) {
            if (effectId != 1) {
                if (effectId != 10001) {
                    switch (effectId) {
                        case 3:
                        case 12:
                        case 15:
                        case 16:
                            break;
                        case 4:
                            return VibrationEffect.get(21);
                        case 5:
                            pattern = this.mCalendarDateVibePattern;
                            break;
                        case 6:
                            return VibrationEffect.get(2);
                        case 7:
                        case 8:
                        case 10:
                        case 11:
                        case 13:
                            return VibrationEffect.get(2, false);
                        case 9:
                            if (!this.mHapticTextHandleEnabled) {
                                return null;
                            }
                            return VibrationEffect.get(21);
                        case 14:
                            break;
                        case 17:
                            return VibrationEffect.get(1);
                        default:
                            return null;
                    }
                } else {
                    pattern = this.mSafeModeEnabledVibePattern;
                }
                if (pattern.length == 0) {
                    return null;
                }
                if (pattern.length == 1) {
                    return VibrationEffect.createOneShot(pattern[0], -1);
                }
                return VibrationEffect.createWaveform(pattern, -1);
            }
            return VibrationEffect.get(0);
        }
        return VibrationEffect.get(5);
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void keepScreenOnStartedLw() {
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void keepScreenOnStoppedLw() {
        if (isKeyguardShowingAndNotOccluded()) {
            this.mPowerManager.userActivity(SystemClock.uptimeMillis(), false);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean hasNavigationBar() {
        return this.mDefaultDisplayPolicy.hasNavigationBar();
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void setDismissImeOnBackKeyPressed(boolean newValue) {
        this.mDismissImeOnBackKeyPressed = newValue;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void setCurrentUserLw(int newUserId) {
        this.mCurrentUserId = newUserId;
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate != null) {
            keyguardServiceDelegate.setCurrentUser(newUserId);
        }
        AccessibilityShortcutController accessibilityShortcutController = this.mAccessibilityShortcutController;
        if (accessibilityShortcutController != null) {
            accessibilityShortcutController.setCurrentUser(newUserId);
        }
        StatusBarManagerInternal statusBar = getStatusBarManagerInternal();
        if (statusBar != null) {
            statusBar.setCurrentUser(newUserId);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void setSwitchingUser(boolean switching) {
        this.mKeyguardDelegate.setSwitchingUser(switching);
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean isTopLevelWindow(int windowType) {
        return windowType < 1000 || windowType > 1999 || windowType == 1003;
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1159641169922L, this.mDefaultDisplayRotation.getUserRotationMode());
        proto.write(1159641169923L, this.mDefaultDisplayRotation.getUserRotation());
        proto.write(1159641169924L, this.mDefaultDisplayRotation.getCurrentAppOrientation());
        proto.write(1133871366149L, this.mDefaultDisplayPolicy.isScreenOnFully());
        proto.write(1133871366150L, this.mDefaultDisplayPolicy.isKeyguardDrawComplete());
        proto.write(1133871366151L, this.mDefaultDisplayPolicy.isWindowManagerDrawComplete());
        proto.write(1133871366156L, this.mKeyguardOccluded);
        proto.write(1133871366157L, this.mKeyguardOccludedChanged);
        proto.write(1133871366158L, this.mPendingKeyguardOccluded);
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate != null) {
            keyguardServiceDelegate.dumpDebug(proto, 1146756268052L);
        }
        proto.end(token);
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public void dump(String prefix, PrintWriter pw, String[] args) {
        pw.print(prefix);
        pw.print("mSafeMode=");
        pw.print(this.mSafeMode);
        pw.print(" mSystemReady=");
        pw.print(this.mSystemReady);
        pw.print(" mSystemBooted=");
        pw.println(this.mSystemBooted);
        pw.print(prefix);
        pw.print("mCameraLensCoverState=");
        pw.println(WindowManagerPolicy.WindowManagerFuncs.cameraLensStateToString(this.mCameraLensCoverState));
        pw.print(prefix);
        pw.print("mWakeGestureEnabledSetting=");
        pw.println(this.mWakeGestureEnabledSetting);
        pw.print(prefix);
        pw.print("mUiMode=");
        pw.print(Configuration.uiModeToString(this.mUiMode));
        pw.print("mEnableCarDockHomeCapture=");
        pw.println(this.mEnableCarDockHomeCapture);
        pw.print(prefix);
        pw.print("mLidKeyboardAccessibility=");
        pw.print(this.mLidKeyboardAccessibility);
        pw.print(" mLidNavigationAccessibility=");
        pw.print(this.mLidNavigationAccessibility);
        pw.print(" getLidBehavior=");
        pw.println(lidBehaviorToString(getLidBehavior()));
        pw.print(prefix);
        pw.print("mLongPressOnBackBehavior=");
        pw.println(longPressOnBackBehaviorToString(this.mLongPressOnBackBehavior));
        pw.print(prefix);
        pw.print("mLongPressOnHomeBehavior=");
        pw.println(longPressOnHomeBehaviorToString(this.mLongPressOnHomeBehavior));
        pw.print(prefix);
        pw.print("mDoubleTapOnHomeBehavior=");
        pw.println(doubleTapOnHomeBehaviorToString(this.mDoubleTapOnHomeBehavior));
        pw.print(prefix);
        pw.print("mShortPressOnPowerBehavior=");
        pw.println(shortPressOnPowerBehaviorToString(this.mShortPressOnPowerBehavior));
        pw.print(prefix);
        pw.print("mLongPressOnPowerBehavior=");
        pw.println(longPressOnPowerBehaviorToString(this.mLongPressOnPowerBehavior));
        pw.print(prefix);
        pw.print("mVeryLongPressOnPowerBehavior=");
        pw.println(veryLongPressOnPowerBehaviorToString(this.mVeryLongPressOnPowerBehavior));
        pw.print(prefix);
        pw.print("mDoublePressOnPowerBehavior=");
        pw.println(multiPressOnPowerBehaviorToString(this.mDoublePressOnPowerBehavior));
        pw.print(prefix);
        pw.print("mTriplePressOnPowerBehavior=");
        pw.println(multiPressOnPowerBehaviorToString(this.mTriplePressOnPowerBehavior));
        pw.print(prefix);
        pw.print("mShortPressOnSleepBehavior=");
        pw.println(shortPressOnSleepBehaviorToString(this.mShortPressOnSleepBehavior));
        pw.print(prefix);
        pw.print("mShortPressOnWindowBehavior=");
        pw.println(shortPressOnWindowBehaviorToString(this.mShortPressOnWindowBehavior));
        pw.print(prefix);
        pw.print("mAllowStartActivityForLongPressOnPowerDuringSetup=");
        pw.println(this.mAllowStartActivityForLongPressOnPowerDuringSetup);
        pw.print(prefix);
        pw.print("mHasSoftInput=");
        pw.print(this.mHasSoftInput);
        pw.print(" mHapticTextHandleEnabled=");
        pw.println(this.mHapticTextHandleEnabled);
        pw.print(prefix);
        pw.print("mDismissImeOnBackKeyPressed=");
        pw.print(this.mDismissImeOnBackKeyPressed);
        pw.print(" mIncallPowerBehavior=");
        pw.println(incallPowerBehaviorToString(this.mIncallPowerBehavior));
        pw.print(prefix);
        pw.print("mIncallBackBehavior=");
        pw.print(incallBackBehaviorToString(this.mIncallBackBehavior));
        pw.print(" mEndcallBehavior=");
        pw.println(endcallBehaviorToString(this.mEndcallBehavior));
        pw.print(prefix);
        pw.print("mDisplayHomeButtonHandlers=");
        for (int i = 0; i < this.mDisplayHomeButtonHandlers.size(); i++) {
            int key = this.mDisplayHomeButtonHandlers.keyAt(i);
            pw.println(this.mDisplayHomeButtonHandlers.get(key));
        }
        pw.print(prefix);
        pw.print("mKeyguardOccluded=");
        pw.print(this.mKeyguardOccluded);
        pw.print(" mKeyguardOccludedChanged=");
        pw.print(this.mKeyguardOccludedChanged);
        pw.print(" mPendingKeyguardOccluded=");
        pw.println(this.mPendingKeyguardOccluded);
        pw.print(prefix);
        pw.print("mAllowLockscreenWhenOnDisplays=");
        pw.print(!this.mAllowLockscreenWhenOnDisplays.isEmpty());
        pw.print(" mLockScreenTimeout=");
        pw.print(this.mLockScreenTimeout);
        pw.print(" mLockScreenTimerActive=");
        pw.println(this.mLockScreenTimerActive);
        if (this.mHasFeatureLeanback) {
            pw.print(prefix);
            pw.print("mAccessibilityTvKey1Pressed=");
            pw.println(this.mAccessibilityTvKey1Pressed);
            pw.print(prefix);
            pw.print("mAccessibilityTvKey2Pressed=");
            pw.println(this.mAccessibilityTvKey2Pressed);
            pw.print(prefix);
            pw.print("mAccessibilityTvScheduled=");
            pw.println(this.mAccessibilityTvScheduled);
        }
        this.mGlobalKeyManager.dump(prefix, pw);
        MyWakeGestureListener myWakeGestureListener = this.mWakeGestureListener;
        if (myWakeGestureListener != null) {
            myWakeGestureListener.dump(pw, prefix);
        }
        BurnInProtectionHelper burnInProtectionHelper = this.mBurnInProtectionHelper;
        if (burnInProtectionHelper != null) {
            burnInProtectionHelper.dump(prefix, pw);
        }
        KeyguardServiceDelegate keyguardServiceDelegate = this.mKeyguardDelegate;
        if (keyguardServiceDelegate != null) {
            keyguardServiceDelegate.dump(prefix, pw);
        }
        pw.print(prefix);
        pw.println("Looper state:");
        this.mHandler.getLooper().dump(new PrintWriterPrinter(pw), prefix + "  ");
    }

    private static String endcallBehaviorToString(int behavior) {
        StringBuilder sb = new StringBuilder();
        if ((behavior & 1) != 0) {
            sb.append("home|");
        }
        if ((behavior & 2) != 0) {
            sb.append("sleep|");
        }
        int N = sb.length();
        if (N == 0) {
            return "<nothing>";
        }
        return sb.substring(0, N - 1);
    }

    private static String incallPowerBehaviorToString(int behavior) {
        if ((behavior & 2) != 0) {
            return "hangup";
        }
        return "sleep";
    }

    private static String incallBackBehaviorToString(int behavior) {
        if ((behavior & 1) != 0) {
            return "hangup";
        }
        return "<nothing>";
    }

    private static String longPressOnBackBehaviorToString(int behavior) {
        if (behavior == 0) {
            return "LONG_PRESS_BACK_NOTHING";
        }
        if (behavior == 1) {
            return "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST";
        }
        return Integer.toString(behavior);
    }

    private static String longPressOnHomeBehaviorToString(int behavior) {
        if (behavior == 0) {
            return "LONG_PRESS_HOME_NOTHING";
        }
        if (behavior == 1) {
            return "LONG_PRESS_HOME_ALL_APPS";
        }
        if (behavior == 2) {
            return "LONG_PRESS_HOME_ASSIST";
        }
        return Integer.toString(behavior);
    }

    private static String doubleTapOnHomeBehaviorToString(int behavior) {
        if (behavior == 0) {
            return "DOUBLE_TAP_HOME_NOTHING";
        }
        if (behavior == 1) {
            return "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI";
        }
        return Integer.toString(behavior);
    }

    private static String shortPressOnPowerBehaviorToString(int behavior) {
        if (behavior == 0) {
            return "SHORT_PRESS_POWER_NOTHING";
        }
        if (behavior == 1) {
            return "SHORT_PRESS_POWER_GO_TO_SLEEP";
        }
        if (behavior == 2) {
            return "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP";
        }
        if (behavior == 3) {
            return "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME";
        }
        if (behavior == 4) {
            return "SHORT_PRESS_POWER_GO_HOME";
        }
        if (behavior == 5) {
            return "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME";
        }
        return Integer.toString(behavior);
    }

    private static String longPressOnPowerBehaviorToString(int behavior) {
        if (behavior == 0) {
            return "LONG_PRESS_POWER_NOTHING";
        }
        if (behavior == 1) {
            return "LONG_PRESS_POWER_GLOBAL_ACTIONS";
        }
        if (behavior == 2) {
            return "LONG_PRESS_POWER_SHUT_OFF";
        }
        if (behavior == 3) {
            return "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM";
        }
        if (behavior == 4) {
            return "LONG_PRESS_POWER_GO_TO_VOICE_ASSIST";
        }
        if (behavior == 5) {
            return "LONG_PRESS_POWER_ASSISTANT";
        }
        return Integer.toString(behavior);
    }

    private static String veryLongPressOnPowerBehaviorToString(int behavior) {
        if (behavior == 0) {
            return "VERY_LONG_PRESS_POWER_NOTHING";
        }
        if (behavior == 1) {
            return "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS";
        }
        return Integer.toString(behavior);
    }

    private static String multiPressOnPowerBehaviorToString(int behavior) {
        if (behavior == 0) {
            return "MULTI_PRESS_POWER_NOTHING";
        }
        if (behavior == 1) {
            return "MULTI_PRESS_POWER_THEATER_MODE";
        }
        if (behavior == 2) {
            return "MULTI_PRESS_POWER_BRIGHTNESS_BOOST";
        }
        return Integer.toString(behavior);
    }

    private static String shortPressOnSleepBehaviorToString(int behavior) {
        if (behavior == 0) {
            return "SHORT_PRESS_SLEEP_GO_TO_SLEEP";
        }
        if (behavior == 1) {
            return "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME";
        }
        return Integer.toString(behavior);
    }

    private static String shortPressOnWindowBehaviorToString(int behavior) {
        if (behavior == 0) {
            return "SHORT_PRESS_WINDOW_NOTHING";
        }
        if (behavior == 1) {
            return "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE";
        }
        return Integer.toString(behavior);
    }

    private static String lidBehaviorToString(int behavior) {
        if (behavior == 0) {
            return "LID_BEHAVIOR_NONE";
        }
        if (behavior == 1) {
            return "LID_BEHAVIOR_SLEEP";
        }
        if (behavior == 2) {
            return "LID_BEHAVIOR_LOCK";
        }
        return Integer.toString(behavior);
    }

    @Override // com.android.server.policy.WindowManagerPolicy
    public boolean setAodShowing(boolean aodShowing) {
        if (this.mAodShowing != aodShowing) {
            this.mAodShowing = aodShowing;
            return true;
        }
        return false;
    }

    private class HdmiVideoExtconUEventObserver extends ExtconStateObserver<Boolean> {
        private static final String HDMI_EXIST = "HDMI=1";
        private static final String NAME = "hdmi";
        private final ExtconUEventObserver.ExtconInfo mHdmi;

        private HdmiVideoExtconUEventObserver() {
            this.mHdmi = new ExtconUEventObserver.ExtconInfo(NAME);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean init() {
            boolean plugged = false;
            try {
                plugged = parseStateFromFile(this.mHdmi).booleanValue();
            } catch (FileNotFoundException e) {
                Slog.w(PhoneWindowManager.TAG, this.mHdmi.getStatePath() + " not found while attempting to determine initial state", e);
            } catch (IOException e2) {
                Slog.e(PhoneWindowManager.TAG, "Error reading " + this.mHdmi.getStatePath() + " while attempting to determine initial state", e2);
            }
            startObserving(this.mHdmi);
            return plugged;
        }

        @Override // com.android.server.ExtconStateObserver
        public void updateState(ExtconUEventObserver.ExtconInfo extconInfo, String eventName, Boolean state) {
            PhoneWindowManager.this.mDefaultDisplayPolicy.setHdmiPlugged(state.booleanValue());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.android.server.ExtconStateObserver
        public Boolean parseState(ExtconUEventObserver.ExtconInfo extconIfno, String state) {
            return Boolean.valueOf(state.contains(HDMI_EXIST));
        }
    }
}
