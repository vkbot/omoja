package com.android.server.wm;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityThread;
import android.app.LoadedApk;
import android.app.ResourcesManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Insets;
import android.graphics.Rect;
import android.graphics.Region;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.input.InputManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.util.ArraySet;
import android.util.IntArray;
import android.util.Pair;
import android.util.PrintWriterPrinter;
import android.util.Slog;
import android.util.SparseArray;
import android.view.DisplayCutout;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventReceiver;
import android.view.InsetsFlags;
import android.view.InsetsSource;
import android.view.InsetsState;
import android.view.MotionEvent;
import android.view.ViewRootImpl;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowManagerPolicyConstants;
import android.view.accessibility.AccessibilityManager;
import com.android.internal.policy.GestureNavigationSettingsObserver;
import com.android.internal.policy.ScreenDecorationsUtils;
import com.android.internal.util.ScreenshotHelper;
import com.android.internal.util.ToBooleanFunction;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.view.AppearanceRegion;
import com.android.internal.widget.PointerLocationView;
import com.android.server.LocalServices;
import com.android.server.UiThread;
import com.android.server.notification.SnoozeHelper;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.policy.WindowOrientationListener;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.statusbar.StatusBarManagerInternal;
import com.android.server.wallpaper.WallpaperManagerInternal;
import com.android.server.wm.utils.InsetUtils;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class DisplayPolicy {
    private static final boolean ALTERNATE_CAR_MODE_NAV_SIZE = false;
    static final int ANIMATION_NONE = -1;
    static final int ANIMATION_STYLEABLE = 0;
    private static final boolean DEBUG = false;
    private static final int MSG_DISABLE_POINTER_LOCATION = 5;
    private static final int MSG_DISPOSE_INPUT_CONSUMER = 3;
    private static final int MSG_ENABLE_POINTER_LOCATION = 4;
    private static final int MSG_REQUEST_TRANSIENT_BARS = 2;
    private static final int MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION = 1;
    private static final int MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS = 0;
    private static final int MSG_UPDATE_MEGA_BACKLIGHT_SLEEP_TOKEN = 6;
    private static final int NAV_BAR_FORCE_TRANSPARENT = 2;
    private static final int NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED = 0;
    private static final int NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE = 1;
    private static final long PANIC_GESTURE_EXPIRATION = 30000;
    private static final int SYSTEM_UI_CHANGING_LAYOUT = -1073709042;
    private static final String TAG = "WindowManager";
    private final AccessibilityManager mAccessibilityManager;
    private boolean mAllowLockscreenWhenOn;
    private volatile boolean mAwake;
    private int mBottomGestureAdditionalInset;
    private final boolean mCarDockEnablesAccelerometer;
    private final Context mContext;
    private Resources mCurrentUserResources;
    private final boolean mDeskDockEnablesAccelerometer;
    private final DisplayContent mDisplayContent;
    private boolean mDreamingLockscreen;
    private int mExternalDisplayId;
    private WindowState mFocusedWindow;
    private boolean mForceShowSystemBars;
    private boolean mForceStatusBar;
    private boolean mForcingShowNavBar;
    private int mForcingShowNavBarLayer;
    private final GestureNavigationSettingsObserver mGestureNavigationSettingsObserver;
    private final Handler mHandler;
    private volatile boolean mHasNavigationBar;
    private volatile boolean mHasStatusBar;
    private volatile boolean mHdmiPlugged;
    private final ImmersiveModeConfirmation mImmersiveModeConfirmation;
    private boolean mIsFreeformWindowOverlappingWithNavBar;
    private volatile boolean mKeyguardDrawComplete;
    private int mLastAppearance;
    private int mLastBehavior;
    private int mLastDockedAppearance;
    private WindowState mLastFocusedWindow;
    private int mLastFullscreenAppearance;
    private boolean mLastImmersiveMode;
    private boolean mLastNavAllowedHidden;
    private boolean mLastNavTranslucent;
    private boolean mLastNavVisible;
    private boolean mLastNotificationShadeForcesShowingNavigation;
    private boolean mLastShowingDream;
    int mLastSystemUiFlags;
    private int mLeftGestureInset;
    private final Object mLock;
    private ActivityTaskManagerInternal.SleepTokenAcquirer mMegaBacklightSleepToken;
    private boolean mMegaBacklightSleepTokenNeeded;
    private int mMegaNavigationBarPosition;
    private boolean mNavButtonForcedVisible;
    private volatile boolean mNavigationBarAlwaysShowOnSideGesture;
    private volatile boolean mNavigationBarCanMove;
    private final BarController mNavigationBarController;
    private volatile boolean mNavigationBarLetsThroughTaps;
    private HashSet<String> mNotGesturePackages;
    private volatile boolean mOtherDisplayHasSystemBar;
    private long mPendingPanicGestureUptime;
    private volatile boolean mPersistentVrModeEnabled;
    private PointerLocationView mPointerLocationView;
    private RefreshRatePolicy mRefreshRatePolicy;
    private int mRightGestureInset;
    private volatile boolean mScreenOnEarly;
    private volatile boolean mScreenOnFully;
    private volatile WindowManagerPolicy.ScreenOnListener mScreenOnListener;
    private final ScreenshotHelper mScreenshotHelper;
    private final WindowManagerService mService;
    private boolean mShowingDream;
    private boolean mShowingMegaBacklight;
    private final StatusBarController mStatusBarController;
    private StatusBarManagerInternal mStatusBarManagerInternal;
    private final SystemGesturesPointerEventListener mSystemGestures;
    private WindowState mTopDockedOpaqueOrDimmingWindowState;
    private WindowState mTopDockedOpaqueWindowState;
    private WindowState mTopFullscreenOpaqueOrDimmingWindowState;
    private WindowState mTopFullscreenOpaqueWindowState;
    private boolean mTopIsFullscreen;
    private final Context mUiContext;
    private volatile boolean mWindowManagerDrawComplete;
    private static final int[] SHOW_TYPES_FOR_SWIPE = {1, 0, 18, 19};
    private static final int[] SHOW_TYPES_FOR_PANIC = {1};
    private static final Rect sTmpDisplayCutoutSafeExceptMaybeBarsRect = new Rect();
    private static final Rect sTmpRect = new Rect();
    private static final Rect sTmpNavFrame = new Rect();
    private static final Rect sTmpLastParentFrame = new Rect();
    private final Object mServiceAcquireLock = new Object();
    private volatile int mLidState = -1;
    private volatile int mDockMode = 0;
    private final ArraySet<WindowState> mScreenDecorWindows = new ArraySet<>();
    private WindowState mStatusBar = null;
    private WindowState mNotificationShade = null;
    private final int[] mStatusBarHeightForRotation = new int[4];
    private WindowState mNavigationBar = null;
    private int mNavigationBarPosition = 4;
    private int[] mNavigationBarHeightForRotationDefault = new int[4];
    private int[] mNavigationBarWidthForRotationDefault = new int[4];
    private int[] mNavigationBarHeightForRotationInCarMode = new int[4];
    private int[] mNavigationBarWidthForRotationInCarMode = new int[4];
    private WindowState mStatusBarAlt = null;
    private int mStatusBarAltPosition = -1;
    private WindowState mNavigationBarAlt = null;
    private int mNavigationBarAltPosition = -1;
    private WindowState mClimateBarAlt = null;
    private int mClimateBarAltPosition = -1;
    private WindowState mExtraNavBarAlt = null;
    private int mExtraNavBarAltPosition = -1;
    private int[] mNavigationBarFrameHeightForRotationDefault = new int[4];
    private final BarController.OnBarVisibilityChangedListener mNavBarVisibilityListener = new BarController.OnBarVisibilityChangedListener() { // from class: com.android.server.wm.DisplayPolicy.1
        @Override // com.android.server.wm.BarController.OnBarVisibilityChangedListener
        public void onBarVisibilityChanged(boolean visible) {
            if (DisplayPolicy.this.mAccessibilityManager != null) {
                DisplayPolicy.this.mAccessibilityManager.notifyAccessibilityButtonVisibilityChanged(visible);
            }
        }
    };
    private int mResettingSystemUiFlags = 0;
    private int mForceClearedSystemUiFlags = 0;
    private final Rect mNonDockedStackBounds = new Rect();
    private final Rect mDockedStackBounds = new Rect();
    private final Rect mLastNonDockedStackBounds = new Rect();
    private final Rect mLastDockedStackBounds = new Rect();
    private boolean mLastFocusIsFullscreen = false;
    private boolean mLastFocusIsImmersive = false;
    private int mNavBarOpacityMode = 0;
    WindowManagerPolicy.InputConsumer mInputConsumer = null;
    private Insets mForwardedInsets = Insets.NONE;
    private final Runnable mClearHideNavigationFlag = new Runnable() { // from class: com.android.server.wm.DisplayPolicy.3
        @Override // java.lang.Runnable
        public void run() {
            synchronized (DisplayPolicy.this.mLock) {
                DisplayPolicy.access$1772(DisplayPolicy.this, -3);
                DisplayPolicy.this.mDisplayContent.reevaluateStatusBarVisibility();
            }
        }
    };
    private final Runnable mHiddenNavPanic = new Runnable() { // from class: com.android.server.wm.DisplayPolicy.4
        @Override // java.lang.Runnable
        public void run() {
            synchronized (DisplayPolicy.this.mLock) {
                if (DisplayPolicy.this.mService.mPolicy.isUserSetupComplete()) {
                    DisplayPolicy.this.mPendingPanicGestureUptime = SystemClock.uptimeMillis();
                    if (!DisplayPolicy.isNavBarEmpty(DisplayPolicy.this.mLastSystemUiFlags)) {
                        DisplayPolicy.this.mNavigationBarController.showTransient();
                        DisplayPolicy.this.mDisplayContent.getInsetsPolicy().showTransient(DisplayPolicy.SHOW_TYPES_FOR_PANIC);
                    }
                }
            }
        }
    };

    static /* synthetic */ int access$1772(DisplayPolicy x0, int x1) {
        int i = x0.mForceClearedSystemUiFlags & x1;
        x0.mForceClearedSystemUiFlags = i;
        return i;
    }

    StatusBarManagerInternal getStatusBarManagerInternal() {
        StatusBarManagerInternal statusBarManagerInternal;
        synchronized (this.mServiceAcquireLock) {
            if (this.mStatusBarManagerInternal == null) {
                this.mStatusBarManagerInternal = (StatusBarManagerInternal) LocalServices.getService(StatusBarManagerInternal.class);
            }
            statusBarManagerInternal = this.mStatusBarManagerInternal;
        }
        return statusBarManagerInternal;
    }

    private class PolicyHandler extends Handler {
        PolicyHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 2) {
                synchronized (DisplayPolicy.this.mLock) {
                    WindowState targetBar = msg.arg1 == 0 ? DisplayPolicy.this.getStatusBar() : DisplayPolicy.this.getNavigationBar();
                    if (targetBar != null) {
                        DisplayPolicy.this.requestTransientBars(targetBar);
                    }
                }
                return;
            }
            if (i == 3) {
                DisplayPolicy.this.disposeInputConsumer((WindowManagerPolicy.InputConsumer) msg.obj);
                return;
            }
            if (i == 4) {
                DisplayPolicy.this.enablePointerLocation();
            } else if (i == 5) {
                DisplayPolicy.this.disablePointerLocation();
            } else if (i == 6) {
                DisplayPolicy.this.updateMegaBacklightSleepToken(msg.arg1 != 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean megaRejectGesture(int gestureDirect) {
        WindowState windowState = this.mFocusedWindow;
        if (windowState == null) {
            return false;
        }
        String focusPackage = windowState.getOwningPackage();
        boolean megaReject = focusPackage != null && this.mNotGesturePackages.contains(focusPackage);
        int disableValue = SystemProperties.getInt("mega.disable.sys.gesture", 0);
        int DISPLAY_BIT_MASK = 1 << this.mDisplayContent.getDisplayId();
        boolean disableGesture = (disableValue & DISPLAY_BIT_MASK) != 0;
        int disableGestureDirct = 0;
        Context context = this.mContext;
        if (context != null) {
            disableGestureDirct = context.getResources().getInteger(R.integer.config_activityShortDur);
        }
        return megaReject || disableGesture || (gestureDirect & disableGestureDirct) != 0;
    }

    DisplayPolicy(WindowManagerService service, DisplayContent displayContent) {
        boolean z;
        boolean z2;
        this.mNotGesturePackages = new HashSet<>();
        this.mMegaNavigationBarPosition = -1;
        this.mExternalDisplayId = 1;
        this.mService = service;
        this.mContext = displayContent.isDefaultDisplay ? service.mContext : service.mContext.createDisplayContext(displayContent.getDisplay());
        this.mUiContext = displayContent.isDefaultDisplay ? service.mAtmService.mUiContext : service.mAtmService.mSystemThread.createSystemUiContext(displayContent.getDisplayId());
        this.mDisplayContent = displayContent;
        this.mLock = service.getWindowManagerLock();
        int displayId = displayContent.getDisplayId();
        this.mStatusBarController = new StatusBarController(displayId);
        this.mNavigationBarController = new BarController("NavigationBar", displayId, AudioFormat.OPUS, AudioFormat.APTX, Integer.MIN_VALUE, 2, 2019, AudioFormat.OPUS, 32768);
        this.mMegaBacklightSleepToken = this.mService.mAtmInternal.createSleepTokenAcquirer("MegaBacklightOnDisplay" + displayId);
        Slog.d(TAG, "DisplayPolicy init mMegaBacklightSleepToken " + this.mMegaBacklightSleepToken + " for displayId " + displayId);
        Resources r = this.mContext.getResources();
        this.mCarDockEnablesAccelerometer = r.getBoolean(R.bool.config_batterySaver_full_forceBackgroundCheck);
        this.mDeskDockEnablesAccelerometer = r.getBoolean(R.bool.config_bugReportHandlerEnabled);
        this.mAccessibilityManager = (AccessibilityManager) this.mContext.getSystemService("accessibility");
        if (!displayContent.isDefaultDisplay) {
            this.mAwake = true;
            this.mScreenOnEarly = true;
            this.mScreenOnFully = true;
        }
        Looper looper = UiThread.getHandler().getLooper();
        this.mHandler = new PolicyHandler(looper);
        String[] packages = this.mContext.getResources().getStringArray(R.array.config_oemUsbModeOverride);
        this.mNotGesturePackages = new HashSet<>(Arrays.asList(packages));
        SystemGesturesPointerEventListener systemGesturesPointerEventListener = new SystemGesturesPointerEventListener(this.mContext, this.mHandler, new SystemGesturesPointerEventListener.Callbacks() { // from class: com.android.server.wm.DisplayPolicy.2
            @Override // com.android.server.wm.SystemGesturesPointerEventListener.Callbacks
            public void onSwipeFromTop() {
                synchronized (DisplayPolicy.this.mLock) {
                    if (DisplayPolicy.this.megaRejectGesture(8)) {
                        return;
                    }
                    if (DisplayPolicy.this.mStatusBar != null) {
                        DisplayPolicy.this.requestTransientBars(DisplayPolicy.this.mStatusBar);
                    }
                    DisplayPolicy.this.checkAltBarSwipeForTransientBars(8);
                }
            }

            @Override // com.android.server.wm.SystemGesturesPointerEventListener.Callbacks
            public void onSwipeFromBottom() {
                synchronized (DisplayPolicy.this.mLock) {
                    if (DisplayPolicy.this.megaRejectGesture(4)) {
                        return;
                    }
                    if (DisplayPolicy.this.mNavigationBar != null && DisplayPolicy.this.mNavigationBarPosition == 4) {
                        DisplayPolicy.this.requestTransientBars(DisplayPolicy.this.mNavigationBar);
                    }
                    DisplayPolicy.this.checkAltBarSwipeForTransientBars(4);
                }
            }

            @Override // com.android.server.wm.SystemGesturesPointerEventListener.Callbacks
            public void onSwipeFromRight() {
                Region excludedRegion = Region.obtain();
                synchronized (DisplayPolicy.this.mLock) {
                    if (DisplayPolicy.this.megaRejectGesture(2)) {
                        return;
                    }
                    DisplayPolicy.this.mDisplayContent.calculateSystemGestureExclusion(excludedRegion, null);
                    boolean excluded = DisplayPolicy.this.mSystemGestures.currentGestureStartedInRegion(excludedRegion);
                    if (DisplayPolicy.this.mNavigationBar != null && (DisplayPolicy.this.mNavigationBarPosition == 2 || (!excluded && DisplayPolicy.this.mNavigationBarAlwaysShowOnSideGesture))) {
                        DisplayPolicy.this.requestTransientBars(DisplayPolicy.this.mNavigationBar);
                    }
                    DisplayPolicy.this.checkAltBarSwipeForTransientBars(2);
                    excludedRegion.recycle();
                }
            }

            @Override // com.android.server.wm.SystemGesturesPointerEventListener.Callbacks
            public void onSwipeFromLeft() {
                Region excludedRegion = Region.obtain();
                synchronized (DisplayPolicy.this.mLock) {
                    if (DisplayPolicy.this.megaRejectGesture(1)) {
                        return;
                    }
                    DisplayPolicy.this.mDisplayContent.calculateSystemGestureExclusion(excludedRegion, null);
                    boolean excluded = DisplayPolicy.this.mSystemGestures.currentGestureStartedInRegion(excludedRegion);
                    if (DisplayPolicy.this.mNavigationBar != null && (DisplayPolicy.this.mNavigationBarPosition == 1 || (!excluded && DisplayPolicy.this.mNavigationBarAlwaysShowOnSideGesture))) {
                        DisplayPolicy.this.requestTransientBars(DisplayPolicy.this.mNavigationBar);
                    }
                    DisplayPolicy.this.checkAltBarSwipeForTransientBars(1);
                    excludedRegion.recycle();
                }
            }

            @Override // com.android.server.wm.SystemGesturesPointerEventListener.Callbacks
            public void onFling(int duration) {
                if (DisplayPolicy.this.mService.mPowerManagerInternal != null) {
                    DisplayPolicy.this.mService.mPowerManagerInternal.powerHint(2, duration);
                }
            }

            @Override // com.android.server.wm.SystemGesturesPointerEventListener.Callbacks
            public void onDebug() {
            }

            private WindowOrientationListener getOrientationListener() {
                DisplayRotation rotation = DisplayPolicy.this.mDisplayContent.getDisplayRotation();
                if (rotation != null) {
                    return rotation.getOrientationListener();
                }
                return null;
            }

            @Override // com.android.server.wm.SystemGesturesPointerEventListener.Callbacks
            public void onDown() {
                WindowOrientationListener listener = getOrientationListener();
                if (listener != null) {
                    listener.onTouchStart();
                }
            }

            @Override // com.android.server.wm.SystemGesturesPointerEventListener.Callbacks
            public void onUpOrCancel() {
                WindowOrientationListener listener = getOrientationListener();
                if (listener != null) {
                    listener.onTouchEnd();
                }
            }

            @Override // com.android.server.wm.SystemGesturesPointerEventListener.Callbacks
            public void onMouseHoverAtTop() {
                DisplayPolicy.this.mHandler.removeMessages(2);
                Message msg = DisplayPolicy.this.mHandler.obtainMessage(2);
                msg.arg1 = 0;
                DisplayPolicy.this.mHandler.sendMessageDelayed(msg, 500L);
            }

            @Override // com.android.server.wm.SystemGesturesPointerEventListener.Callbacks
            public void onMouseHoverAtBottom() {
                DisplayPolicy.this.mHandler.removeMessages(2);
                Message msg = DisplayPolicy.this.mHandler.obtainMessage(2);
                msg.arg1 = 1;
                DisplayPolicy.this.mHandler.sendMessageDelayed(msg, 500L);
            }

            @Override // com.android.server.wm.SystemGesturesPointerEventListener.Callbacks
            public void onMouseLeaveFromEdge() {
                DisplayPolicy.this.mHandler.removeMessages(2);
            }
        });
        this.mSystemGestures = systemGesturesPointerEventListener;
        displayContent.registerPointerEventListener(systemGesturesPointerEventListener);
        displayContent.mAppTransition.registerListenerLocked(this.mStatusBarController.getAppTransitionListener());
        this.mImmersiveModeConfirmation = new ImmersiveModeConfirmation(this.mContext, looper, this.mService.mVrModeEnabled);
        this.mScreenshotHelper = displayContent.isDefaultDisplay ? new ScreenshotHelper(this.mContext) : null;
        if (!this.mDisplayContent.isDefaultDisplay) {
            this.mExternalDisplayId = SystemProperties.getInt("ro.config.extra_display_id", 1);
            if (!this.mContext.getResources().getBoolean(R.bool.config_cecQuerySadMpeg1Enabled_allowed) || this.mDisplayContent.getDisplayId() != this.mExternalDisplayId) {
                z = false;
            } else {
                z = true;
            }
            this.mOtherDisplayHasSystemBar = z;
            if (!this.mOtherDisplayHasSystemBar) {
                z2 = false;
            } else {
                z2 = true;
            }
            this.mHasStatusBar = z2;
            this.mHasNavigationBar = this.mOtherDisplayHasSystemBar || this.mDisplayContent.supportsSystemDecorations();
        } else {
            this.mHasStatusBar = true;
            this.mHasNavigationBar = this.mContext.getResources().getBoolean(R.bool.config_allowAutoBrightnessWhileDozing);
            String navBarOverride = SystemProperties.get("qemu.hw.mainkeys");
            if (SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(navBarOverride)) {
                this.mHasNavigationBar = false;
            } else if ("0".equals(navBarOverride)) {
                this.mHasNavigationBar = true;
            }
        }
        this.mMegaNavigationBarPosition = computeMegaNavigationPosition(this.mDisplayContent);
        this.mRefreshRatePolicy = new RefreshRatePolicy(this.mService, this.mDisplayContent.getDisplayInfo(), this.mService.mHighRefreshRateBlacklist);
        final GestureNavigationSettingsObserver gestureNavigationSettingsObserver = new GestureNavigationSettingsObserver(this.mHandler, this.mContext, new Runnable() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$E7j9SKAujlVEAp0eeRWet1AUkHs
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0$DisplayPolicy();
            }
        });
        this.mGestureNavigationSettingsObserver = gestureNavigationSettingsObserver;
        Handler handler = this.mHandler;
        Objects.requireNonNull(gestureNavigationSettingsObserver);
        handler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$o8Xf30aea0t-A93AFKY5pBW0IDI
            @Override // java.lang.Runnable
            public final void run() {
                gestureNavigationSettingsObserver.register();
            }
        });
    }

    public /* synthetic */ void lambda$new$0$DisplayPolicy() {
        synchronized (this.mLock) {
            onConfigurationChanged();
            this.mSystemGestures.onConfigurationChanged();
            this.mDisplayContent.updateSystemGestureExclusion();
        }
    }

    private int computeMegaNavigationPosition(DisplayContent displayContent) {
        String position = "";
        if (displayContent.isDefaultDisplay) {
            position = this.mContext.getResources().getString(R.string.config_misprovisionedDeviceModel);
        } else if (displayContent.getDisplayId() == this.mExternalDisplayId) {
            position = this.mContext.getResources().getString(R.string.config_mms_user_agent);
        }
        if (position.equals("left")) {
            return 1;
        }
        if (position.equals("right")) {
            return 2;
        }
        if (position.equals("bottom")) {
            return 4;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAltBarSwipeForTransientBars(int pos) {
        WindowState windowState = this.mStatusBarAlt;
        if (windowState != null && this.mStatusBarAltPosition == pos) {
            requestTransientBars(windowState);
        }
        WindowState windowState2 = this.mNavigationBarAlt;
        if (windowState2 != null && this.mNavigationBarAltPosition == pos) {
            requestTransientBars(windowState2);
        }
        WindowState windowState3 = this.mClimateBarAlt;
        if (windowState3 != null && this.mClimateBarAltPosition == pos) {
            requestTransientBars(windowState3);
        }
        WindowState windowState4 = this.mExtraNavBarAlt;
        if (windowState4 != null && this.mExtraNavBarAltPosition == pos) {
            requestTransientBars(windowState4);
        }
    }

    void systemReady() {
        this.mSystemGestures.systemReady();
        if (this.mService.mPointerLocationEnabled) {
            setPointerLocationEnabled(true);
        }
    }

    private int getDisplayId() {
        return this.mDisplayContent.getDisplayId();
    }

    public void setHdmiPlugged(boolean plugged) {
        setHdmiPlugged(plugged, false);
    }

    public void setHdmiPlugged(boolean plugged, boolean force) {
        if (force || this.mHdmiPlugged != plugged) {
            this.mHdmiPlugged = plugged;
            this.mService.updateRotation(true, true);
            Intent intent = new Intent("android.intent.action.HDMI_PLUGGED");
            intent.addFlags(67108864);
            intent.putExtra("state", plugged);
            this.mContext.sendStickyBroadcastAsUser(intent, UserHandle.ALL);
        }
    }

    boolean isHdmiPlugged() {
        return this.mHdmiPlugged;
    }

    boolean isCarDockEnablesAccelerometer() {
        return this.mCarDockEnablesAccelerometer;
    }

    boolean isDeskDockEnablesAccelerometer() {
        return this.mDeskDockEnablesAccelerometer;
    }

    public void setPersistentVrModeEnabled(boolean persistentVrModeEnabled) {
        this.mPersistentVrModeEnabled = persistentVrModeEnabled;
    }

    public boolean isPersistentVrModeEnabled() {
        return this.mPersistentVrModeEnabled;
    }

    public void setDockMode(int dockMode) {
        this.mDockMode = dockMode;
    }

    public int getDockMode() {
        return this.mDockMode;
    }

    public boolean hasNavigationBar() {
        return this.mHasNavigationBar;
    }

    public boolean hasStatusBar() {
        return this.mHasStatusBar;
    }

    boolean hasSideGestures() {
        return this.mHasNavigationBar && (this.mLeftGestureInset > 0 || this.mRightGestureInset > 0);
    }

    public boolean navigationBarCanMove() {
        return this.mNavigationBarCanMove;
    }

    public void setLidState(int lidState) {
        this.mLidState = lidState;
    }

    public int getLidState() {
        return this.mLidState;
    }

    public void setAwake(boolean awake) {
        this.mAwake = awake;
    }

    public boolean isAwake() {
        return this.mAwake;
    }

    public boolean isScreenOnEarly() {
        return this.mScreenOnEarly;
    }

    public boolean isScreenOnFully() {
        return this.mScreenOnFully;
    }

    public boolean isKeyguardDrawComplete() {
        return this.mKeyguardDrawComplete;
    }

    public boolean isWindowManagerDrawComplete() {
        return this.mWindowManagerDrawComplete;
    }

    public WindowManagerPolicy.ScreenOnListener getScreenOnListener() {
        return this.mScreenOnListener;
    }

    public void screenTurnedOn(WindowManagerPolicy.ScreenOnListener screenOnListener) {
        synchronized (this.mLock) {
            this.mScreenOnEarly = true;
            this.mScreenOnFully = false;
            this.mKeyguardDrawComplete = false;
            this.mWindowManagerDrawComplete = false;
            this.mScreenOnListener = screenOnListener;
        }
    }

    public void screenTurnedOff() {
        synchronized (this.mLock) {
            this.mScreenOnEarly = false;
            this.mScreenOnFully = false;
            this.mKeyguardDrawComplete = false;
            this.mWindowManagerDrawComplete = false;
            this.mScreenOnListener = null;
        }
    }

    public boolean finishKeyguardDrawn() {
        synchronized (this.mLock) {
            if (this.mScreenOnEarly && !this.mKeyguardDrawComplete) {
                this.mKeyguardDrawComplete = true;
                this.mWindowManagerDrawComplete = false;
                return true;
            }
            return false;
        }
    }

    public boolean finishWindowsDrawn() {
        synchronized (this.mLock) {
            if (this.mScreenOnEarly && !this.mWindowManagerDrawComplete) {
                this.mWindowManagerDrawComplete = true;
                return true;
            }
            return false;
        }
    }

    public boolean finishScreenTurningOn() {
        synchronized (this.mLock) {
            if (ProtoLog$Cache.WM_DEBUG_SCREEN_ON_enabled) {
                boolean protoLogParam0 = this.mAwake;
                boolean protoLogParam1 = this.mScreenOnEarly;
                boolean protoLogParam2 = this.mScreenOnFully;
                boolean protoLogParam3 = this.mKeyguardDrawComplete;
                boolean protoLogParam4 = this.mWindowManagerDrawComplete;
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_SCREEN_ON, 1865125884, 1023, null, Boolean.valueOf(protoLogParam0), Boolean.valueOf(protoLogParam1), Boolean.valueOf(protoLogParam2), Boolean.valueOf(protoLogParam3), Boolean.valueOf(protoLogParam4));
            }
            boolean protoLogParam5 = this.mScreenOnFully;
            if (!protoLogParam5 && this.mScreenOnEarly && this.mWindowManagerDrawComplete && (!this.mAwake || this.mKeyguardDrawComplete)) {
                if (ProtoLog$Cache.WM_DEBUG_SCREEN_ON_enabled) {
                    ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_SCREEN_ON, 1140424002, 0, null, (Object[]) null);
                }
                this.mScreenOnListener = null;
                this.mScreenOnFully = true;
                return true;
            }
            return false;
        }
    }

    private boolean hasStatusBarServicePermission(int pid, int uid) {
        return this.mContext.checkPermission("android.permission.STATUS_BAR_SERVICE", pid, uid) == 0;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0091  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a0  */
    public void adjustWindowParamsLw(WindowState win, WindowManager.LayoutParams attrs, int callingPid, int callingUid) {
        boolean isScreenDecor = (attrs.privateFlags & 4194304) != 0;
        if (this.mScreenDecorWindows.contains(win)) {
            if (!isScreenDecor) {
                this.mScreenDecorWindows.remove(win);
            }
        } else if (isScreenDecor && hasStatusBarServicePermission(callingPid, callingUid)) {
            this.mScreenDecorWindows.add(win);
        }
        int i = attrs.type;
        if (i != 1) {
            if (i == 2013) {
                attrs.layoutInDisplayCutoutMode = 3;
            } else if (i == 2015) {
                attrs.flags |= 24;
                attrs.flags &= -262145;
            } else if (i != 2040) {
                if (i == 2044) {
                    attrs.layoutInDisplayCutoutMode = 3;
                } else if (i == 2005) {
                    if (attrs.hideTimeoutMilliseconds < 0 || attrs.hideTimeoutMilliseconds > 3500) {
                        attrs.hideTimeoutMilliseconds = 3500L;
                    }
                    attrs.hideTimeoutMilliseconds = this.mAccessibilityManager.getRecommendedTimeoutMillis((int) attrs.hideTimeoutMilliseconds, 2);
                    attrs.windowAnimations = R.style.Animation.Toast;
                    if (canToastShowWhenLocked(callingPid)) {
                        attrs.flags |= 524288;
                    }
                    attrs.flags |= 16;
                } else if (i == 2006) {
                    attrs.flags |= 24;
                    attrs.flags &= -262145;
                }
            } else if (this.mService.mPolicy.isKeyguardOccluded()) {
                attrs.flags &= -1048577;
            }
        } else if (attrs.isFullscreen() && win.mActivityRecord != null && win.mActivityRecord.fillsParent() && (win.mAttrs.privateFlags & 131072) != 0 && attrs.getFitInsetsTypes() != 0) {
            throw new RuntimeException("Illegal attributes: Main activity window that isn't translucent trying to fit insets: " + attrs.getFitInsetsTypes() + " attrs=" + attrs);
        }
        if (this.mStatusBarAlt == win) {
            this.mStatusBarAltPosition = getAltBarPosition(attrs);
        }
        if (this.mNavigationBarAlt == win) {
            this.mNavigationBarAltPosition = getAltBarPosition(attrs);
        }
        if (this.mClimateBarAlt == win) {
            this.mClimateBarAltPosition = getAltBarPosition(attrs);
        }
        if (this.mExtraNavBarAlt == win) {
            this.mExtraNavBarAltPosition = getAltBarPosition(attrs);
        }
    }

    public void setDropInputModePolicy(WindowState win, WindowManager.LayoutParams attrs) {
        if (attrs.type == 2005 && (attrs.privateFlags & AudioFormat.APTX) == 0) {
            this.mService.mTransactionFactory.get().setDropInputMode(win.getSurfaceControl(), 1).apply();
        }
    }

    boolean canToastShowWhenLocked(final int callingPid) {
        return this.mDisplayContent.forAllWindows(new ToBooleanFunction() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$9vMdRW11iw1rRp_fzUkWacwvib0
            public final boolean apply(Object obj) {
                return DisplayPolicy.lambda$canToastShowWhenLocked$1(callingPid, (WindowState) obj);
            }
        }, true);
    }

    static /* synthetic */ boolean lambda$canToastShowWhenLocked$1(int callingPid, WindowState w) {
        return callingPid == w.mSession.mPid && w.isVisible() && w.canShowWhenLocked();
    }

    /* JADX WARN: Code duplicated, block: B:42:0x007c  */
    int validateAddingWindowLw(WindowManager.LayoutParams attrs, int callingPid, int callingUid) {
        WindowState windowState;
        WindowState windowState2;
        WindowState windowState3;
        WindowState windowState4;
        WindowState windowState5;
        if ((attrs.privateFlags & 4194304) != 0) {
            this.mContext.enforcePermission("android.permission.STATUS_BAR_SERVICE", callingPid, callingUid, "DisplayPolicy");
        }
        if ((attrs.privateFlags & AudioFormat.APTX) != 0) {
            this.mContext.enforcePermission("android.permission.INTERNAL_SYSTEM_WINDOW", callingPid, callingUid, "DisplayPolicy");
        }
        int i = attrs.type;
        if (i == 2000) {
            this.mContext.enforcePermission("android.permission.STATUS_BAR_SERVICE", callingPid, callingUid, "DisplayPolicy");
            WindowState windowState6 = this.mStatusBar;
            if ((windowState6 != null && windowState6.isAlive()) || ((windowState = this.mStatusBarAlt) != null && windowState.isAlive())) {
                return -7;
            }
        } else {
            if (i == 2014) {
                return -10;
            }
            if (i == 2017) {
                this.mContext.enforcePermission("android.permission.STATUS_BAR_SERVICE", callingPid, callingUid, "DisplayPolicy");
            } else if (i == 2019) {
                this.mContext.enforcePermission("android.permission.STATUS_BAR_SERVICE", callingPid, callingUid, "DisplayPolicy");
                WindowState windowState7 = this.mNavigationBar;
                if ((windowState7 != null && windowState7.isAlive()) || ((windowState5 = this.mNavigationBarAlt) != null && windowState5.isAlive())) {
                    return -7;
                }
            } else if (i != 2024) {
                if (i == 2033) {
                    this.mContext.enforcePermission("android.permission.STATUS_BAR_SERVICE", callingPid, callingUid, "DisplayPolicy");
                } else if (i == 2040) {
                    this.mContext.enforcePermission("android.permission.STATUS_BAR_SERVICE", callingPid, callingUid, "DisplayPolicy");
                    WindowState windowState8 = this.mNotificationShade;
                    if (windowState8 != null && windowState8.isAlive()) {
                        return -7;
                    }
                } else if (i == 2041) {
                    this.mContext.enforcePermission("android.permission.STATUS_BAR_SERVICE", callingPid, callingUid, "DisplayPolicy");
                }
            } else if (!this.mService.mAtmInternal.isCallerRecents(callingUid)) {
                this.mContext.enforcePermission("android.permission.STATUS_BAR_SERVICE", callingPid, callingUid, "DisplayPolicy");
            }
        }
        if (attrs.providesInsetsTypes != null) {
            this.mContext.enforcePermission("android.permission.STATUS_BAR_SERVICE", callingPid, callingUid, "DisplayPolicy");
            enforceSingleInsetsTypeCorrespondingToWindowType(attrs.providesInsetsTypes);
            for (int insetType : attrs.providesInsetsTypes) {
                if (insetType == 0) {
                    WindowState windowState9 = this.mStatusBar;
                    if ((windowState9 != null && windowState9.isAlive()) || ((windowState2 = this.mStatusBarAlt) != null && windowState2.isAlive())) {
                        return -7;
                    }
                } else if (insetType == 1) {
                    WindowState windowState10 = this.mNavigationBar;
                    if ((windowState10 != null && windowState10.isAlive()) || ((windowState3 = this.mNavigationBarAlt) != null && windowState3.isAlive())) {
                        return -7;
                    }
                } else if (insetType == 18) {
                    WindowState windowState11 = this.mClimateBarAlt;
                    if (windowState11 != null && windowState11.isAlive()) {
                        return -7;
                    }
                } else if (insetType == 19 && (windowState4 = this.mExtraNavBarAlt) != null && windowState4.isAlive()) {
                    return -7;
                }
            }
        }
        return 0;
    }

    void addWindowLw(WindowState win, WindowManager.LayoutParams attrs) {
        if ((attrs.privateFlags & 4194304) != 0) {
            this.mScreenDecorWindows.add(win);
        }
        int i = attrs.type;
        if (i == 2000) {
            this.mStatusBar = win;
            this.mStatusBarController.setWindow(win);
            TriConsumer<DisplayFrames, WindowState, Rect> frameProvider = new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$NcnTU5Z6X56cfSOOwc98WQ4IVv8
                public final void accept(Object obj, Object obj2, Object obj3) {
                    this.f$0.lambda$addWindowLw$2$DisplayPolicy((DisplayFrames) obj, (WindowState) obj2, (Rect) obj3);
                }
            };
            this.mDisplayContent.setInsetProvider(0, win, frameProvider);
            this.mDisplayContent.setInsetProvider(3, win, frameProvider);
            this.mDisplayContent.setInsetProvider(11, win, frameProvider);
            return;
        }
        if (i == 2019) {
            this.mNavigationBar = win;
            this.mNavigationBarController.setWindow(win);
            this.mNavigationBarController.setOnBarVisibilityChangedListener(this.mNavBarVisibilityListener, true);
            this.mDisplayContent.setInsetProvider(1, win, new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$J8sIwXJvltUaPM3jEGO948Bx9ig
                public final void accept(Object obj, Object obj2, Object obj3) {
                    this.f$0.lambda$addWindowLw$3$DisplayPolicy((DisplayFrames) obj, (WindowState) obj2, (Rect) obj3);
                }
            }, new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$_FEXboPObSj41eBmuQropgw92iw
                public final void accept(Object obj, Object obj2, Object obj3) {
                    ((Rect) obj3).set(((WindowState) obj2).getFrameLw());
                }
            });
            this.mDisplayContent.setInsetProvider(4, win, new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$3MnyIKSHFLqhfUifWEQPNp_-J6A
                public final void accept(Object obj, Object obj2, Object obj3) {
                    this.f$0.lambda$addWindowLw$5$DisplayPolicy((DisplayFrames) obj, (WindowState) obj2, (Rect) obj3);
                }
            });
            this.mDisplayContent.setInsetProvider(5, win, new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$LkHee4mchNXMwNt7HLgsMzHofeE
                public final void accept(Object obj, Object obj2, Object obj3) {
                    this.f$0.lambda$addWindowLw$6$DisplayPolicy((DisplayFrames) obj, (WindowState) obj2, (Rect) obj3);
                }
            });
            this.mDisplayContent.setInsetProvider(6, win, new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$IOyP8YVRG92tn9u1muYWZgBbgc0
                public final void accept(Object obj, Object obj2, Object obj3) {
                    this.f$0.lambda$addWindowLw$7$DisplayPolicy((DisplayFrames) obj, (WindowState) obj2, (Rect) obj3);
                }
            });
            this.mDisplayContent.setInsetProvider(12, win, new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$LFEaXRr2IF3nhPJdP5h3swIhnus
                public final void accept(Object obj, Object obj2, Object obj3) {
                    this.f$0.lambda$addWindowLw$8$DisplayPolicy((DisplayFrames) obj, (WindowState) obj2, (Rect) obj3);
                }
            });
            return;
        }
        if (i == 2040) {
            this.mNotificationShade = win;
            if (this.mDisplayContent.isDefaultDisplay) {
                this.mService.mPolicy.setKeyguardCandidateLw(win);
                return;
            }
            return;
        }
        if (attrs.providesInsetsTypes != null) {
            for (int insetsType : attrs.providesInsetsTypes) {
                if (insetsType == 0) {
                    this.mStatusBarAlt = win;
                    this.mStatusBarController.setWindow(win);
                    this.mStatusBarAltPosition = getAltBarPosition(attrs);
                } else if (insetsType == 1) {
                    this.mNavigationBarAlt = win;
                    this.mNavigationBarController.setWindow(win);
                    this.mNavigationBarAltPosition = getAltBarPosition(attrs);
                } else if (insetsType == 18) {
                    this.mClimateBarAlt = win;
                    this.mClimateBarAltPosition = getAltBarPosition(attrs);
                } else if (insetsType == 19) {
                    this.mExtraNavBarAlt = win;
                    this.mExtraNavBarAltPosition = getAltBarPosition(attrs);
                }
                this.mDisplayContent.setInsetProvider(insetsType, win, null);
            }
        }
    }

    public /* synthetic */ void lambda$addWindowLw$2$DisplayPolicy(DisplayFrames displayFrames, WindowState windowState, Rect rect) {
        rect.top = 0;
        rect.bottom = getStatusBarHeight(displayFrames);
    }

    public /* synthetic */ void lambda$addWindowLw$3$DisplayPolicy(DisplayFrames displayFrames, WindowState windowState, Rect inOutFrame) {
        if (navigationBarPosition(displayFrames.mDisplayWidth, displayFrames.mDisplayHeight, displayFrames.mRotation) == 4 && !this.mNavButtonForcedVisible) {
            sTmpRect.set(displayFrames.mUnrestricted);
            sTmpRect.intersectUnchecked(displayFrames.mDisplayCutoutSafe);
            inOutFrame.top = sTmpRect.bottom - getNavigationBarHeight(displayFrames.mRotation, this.mDisplayContent.getConfiguration().uiMode);
        }
    }

    public /* synthetic */ void lambda$addWindowLw$5$DisplayPolicy(DisplayFrames displayFrames, WindowState windowState, Rect inOutFrame) {
        inOutFrame.top -= this.mBottomGestureAdditionalInset;
    }

    public /* synthetic */ void lambda$addWindowLw$6$DisplayPolicy(DisplayFrames displayFrames, WindowState windowState, Rect inOutFrame) {
        inOutFrame.left = 0;
        inOutFrame.top = 0;
        inOutFrame.bottom = displayFrames.mDisplayHeight;
        inOutFrame.right = displayFrames.mUnrestricted.left + this.mLeftGestureInset;
    }

    public /* synthetic */ void lambda$addWindowLw$7$DisplayPolicy(DisplayFrames displayFrames, WindowState windowState, Rect inOutFrame) {
        inOutFrame.left = displayFrames.mUnrestricted.right - this.mRightGestureInset;
        inOutFrame.top = 0;
        inOutFrame.bottom = displayFrames.mDisplayHeight;
        inOutFrame.right = displayFrames.mDisplayWidth;
    }

    public /* synthetic */ void lambda$addWindowLw$8$DisplayPolicy(DisplayFrames displayFrames, WindowState windowState, Rect inOutFrame) {
        if ((windowState.getAttrs().flags & 16) != 0 || this.mNavigationBarLetsThroughTaps) {
            inOutFrame.setEmpty();
        }
    }

    private int getAltBarPosition(WindowManager.LayoutParams params) {
        int i = params.gravity;
        if (i == 3) {
            return 1;
        }
        if (i == 5) {
            return 2;
        }
        if (i == 48) {
            return 8;
        }
        if (i == 80) {
            return 4;
        }
        return -1;
    }

    TriConsumer<DisplayFrames, WindowState, Rect> getImeSourceFrameProvider() {
        return new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$fwCI8IxKb1uS701UG_ckKN4Wwsc
            public final void accept(Object obj, Object obj2, Object obj3) {
                this.f$0.lambda$getImeSourceFrameProvider$9$DisplayPolicy((DisplayFrames) obj, (WindowState) obj2, (Rect) obj3);
            }
        };
    }

    public /* synthetic */ void lambda$getImeSourceFrameProvider$9$DisplayPolicy(DisplayFrames displayFrames, WindowState windowState, Rect inOutFrame) {
        if (this.mNavigationBar != null && navigationBarPosition(displayFrames.mDisplayWidth, displayFrames.mDisplayHeight, displayFrames.mRotation) == 4) {
            sTmpRect.set(inOutFrame);
            sTmpRect.intersectUnchecked(this.mNavigationBar.getFrameLw());
            inOutFrame.inset(windowState.getGivenContentInsetsLw());
            inOutFrame.union(sTmpRect);
            return;
        }
        inOutFrame.inset(windowState.getGivenContentInsetsLw());
    }

    private static void enforceSingleInsetsTypeCorrespondingToWindowType(int[] insetsTypes) {
        int count = 0;
        for (int insetsType : insetsTypes) {
            if ((insetsType == 0 || insetsType == 1 || insetsType == 2 || insetsType == 18 || insetsType == 19) && (count = count + 1) > 1) {
                throw new IllegalArgumentException("Multiple InsetsTypes corresponding to Window type");
            }
        }
    }

    void removeWindowLw(WindowState win) {
        if (this.mStatusBar == win || this.mStatusBarAlt == win) {
            this.mStatusBar = null;
            this.mStatusBarAlt = null;
            this.mStatusBarController.setWindow(null);
            this.mDisplayContent.setInsetProvider(0, null, null);
        } else if (this.mNavigationBar == win || this.mNavigationBarAlt == win) {
            this.mNavigationBar = null;
            this.mNavigationBarAlt = null;
            this.mNavigationBarController.setWindow(null);
            this.mDisplayContent.setInsetProvider(1, null, null);
        } else if (this.mNotificationShade == win) {
            this.mNotificationShade = null;
            if (this.mDisplayContent.isDefaultDisplay) {
                this.mService.mPolicy.setKeyguardCandidateLw(null);
            }
        } else if (this.mClimateBarAlt == win) {
            this.mClimateBarAlt = null;
            this.mDisplayContent.setInsetProvider(18, null, null);
        } else if (this.mExtraNavBarAlt == win) {
            this.mExtraNavBarAlt = null;
            this.mDisplayContent.setInsetProvider(19, null, null);
        }
        if (this.mLastFocusedWindow == win) {
            this.mLastFocusedWindow = null;
        }
        this.mScreenDecorWindows.remove(win);
    }

    private int getStatusBarHeight(DisplayFrames displayFrames) {
        return Math.max(this.mStatusBarHeightForRotation[displayFrames.mRotation], displayFrames.mDisplayCutoutSafe.top);
    }

    StatusBarController getStatusBarController() {
        return this.mStatusBarController;
    }

    WindowState getStatusBar() {
        WindowState windowState = this.mStatusBar;
        return windowState != null ? windowState : this.mStatusBarAlt;
    }

    WindowState getNotificationShade() {
        return this.mNotificationShade;
    }

    WindowState getNavigationBar() {
        WindowState windowState = this.mNavigationBar;
        return windowState != null ? windowState : this.mNavigationBarAlt;
    }

    int selectAnimation(WindowState win, int transit) {
        if (win == this.mStatusBar) {
            if (transit == 2 || transit == 4) {
                return R.anim.ft_avd_toarrow_rectangle_2_pivot_animation;
            }
            if (transit == 1 || transit == 3) {
                return R.anim.ft_avd_toarrow_rectangle_2_pivot_0_animation;
            }
        } else if (win == this.mNavigationBar) {
            if (win.getAttrs().windowAnimations != 0) {
                return 0;
            }
            int i = this.mNavigationBarPosition;
            if (i == 4) {
                if (transit == 2 || transit == 4) {
                    return this.mService.mPolicy.isKeyguardShowingAndNotOccluded() ? R.anim.flat_button_state_list_anim_material : R.anim.fast_fade_out;
                }
                if (transit == 1 || transit == 3) {
                    return R.anim.fast_fade_in;
                }
            } else if (i == 2) {
                if (transit == 2 || transit == 4) {
                    return R.anim.ft_avd_toarrow_rectangle_2_animation;
                }
                if (transit == 1 || transit == 3) {
                    return R.anim.ft_avd_toarrow_rectangle_1_pivot_animation;
                }
            } else if (i == 1) {
                if (transit == 2 || transit == 4) {
                    return R.anim.ft_avd_toarrow_rectangle_1_pivot_0_animation;
                }
                if (transit == 1 || transit == 3) {
                    return R.anim.ft_avd_toarrow_rectangle_1_animation;
                }
            }
        } else if (win == this.mStatusBarAlt || win == this.mNavigationBarAlt || win == this.mClimateBarAlt || win == this.mExtraNavBarAlt) {
            if (win.getAttrs().windowAnimations != 0) {
                return 0;
            }
            int pos = win == this.mStatusBarAlt ? this.mStatusBarAltPosition : this.mNavigationBarAltPosition;
            boolean isExitOrHide = transit == 2 || transit == 4;
            boolean isEnterOrShow = transit == 1 || transit == 3;
            if (pos != 1) {
                if (pos != 2) {
                    if (pos != 4) {
                        if (pos == 8) {
                            if (isExitOrHide) {
                                return R.anim.ft_avd_toarrow_rectangle_2_pivot_animation;
                            }
                            if (isEnterOrShow) {
                                return R.anim.ft_avd_toarrow_rectangle_2_pivot_0_animation;
                            }
                        }
                    } else {
                        if (isExitOrHide) {
                            return R.anim.fast_fade_out;
                        }
                        if (isEnterOrShow) {
                            return R.anim.fast_fade_in;
                        }
                    }
                } else {
                    if (isExitOrHide) {
                        return R.anim.ft_avd_toarrow_rectangle_2_animation;
                    }
                    if (isEnterOrShow) {
                        return R.anim.ft_avd_toarrow_rectangle_1_pivot_animation;
                    }
                }
            } else {
                if (isExitOrHide) {
                    return R.anim.ft_avd_toarrow_rectangle_1_pivot_0_animation;
                }
                if (isEnterOrShow) {
                    return R.anim.ft_avd_toarrow_rectangle_1_animation;
                }
            }
        }
        if (transit != 5 || !win.hasAppShownWindows()) {
            return 0;
        }
        if (win.isActivityTypeHome()) {
            return -1;
        }
        return R.anim.btn_checkbox_to_checked_icon_null_animation;
    }

    public int adjustSystemUiVisibilityLw(int visibility) {
        this.mStatusBarController.adjustSystemUiVisibilityLw(this.mLastSystemUiFlags, visibility);
        this.mNavigationBarController.adjustSystemUiVisibilityLw(this.mLastSystemUiFlags, visibility);
        int i = this.mResettingSystemUiFlags & visibility;
        this.mResettingSystemUiFlags = i;
        return (~i) & visibility & (~this.mForceClearedSystemUiFlags);
    }

    public boolean areSystemBarsForcedShownLw(WindowState windowState) {
        return this.mForceShowSystemBars;
    }

    boolean getLayoutHint(WindowManager.LayoutParams attrs, WindowToken windowToken, Rect outFrame, Rect outContentInsets, Rect outStableInsets, DisplayCutout.ParcelableWrapper outDisplayCutout) {
        Rect bounds;
        DisplayFrames displayFrames;
        Rect cf;
        int fl = PolicyControl.getWindowFlags(null, attrs);
        int pfl = attrs.privateFlags;
        int requestedSysUiVis = PolicyControl.getSystemUiVisibility(null, attrs);
        int sysUiVis = getImpliedSysUiFlagsForLayout(attrs) | requestedSysUiVis;
        boolean layoutInScreen = (fl & 256) != 0;
        boolean layoutInScreenAndInsetDecor = layoutInScreen && (65536 & fl) != 0;
        boolean screenDecor = (4194304 & pfl) != 0;
        boolean isFixedRotationTransforming = windowToken != null && windowToken.isFixedRotationTransforming();
        ActivityRecord activity = windowToken != null ? windowToken.asActivityRecord() : null;
        Task task = activity != null ? activity.getTask() : null;
        if (isFixedRotationTransforming) {
            bounds = windowToken.getBounds();
        } else {
            bounds = task != null ? task.getBounds() : null;
        }
        Rect taskBounds = bounds;
        if (isFixedRotationTransforming) {
            displayFrames = windowToken.getFixedRotationTransformDisplayFrames();
        } else {
            displayFrames = this.mDisplayContent.mDisplayFrames;
        }
        if (layoutInScreenAndInsetDecor && !screenDecor) {
            if ((sysUiVis & 512) != 0 || (attrs.getFitInsetsTypes() & WindowInsets.Type.navigationBars()) == 0) {
                outFrame.set(displayFrames.mUnrestricted);
            } else {
                outFrame.set(displayFrames.mRestricted);
            }
            boolean isFloatingTask = task != null && task.isFloating();
            Rect sf = isFloatingTask ? null : displayFrames.mStable;
            if (isFloatingTask) {
                cf = null;
            } else if ((sysUiVis & 256) != 0) {
                if ((fl & 1024) != 0) {
                    cf = displayFrames.mStableFullscreen;
                } else {
                    cf = displayFrames.mStable;
                }
            } else if ((fl & 1024) != 0) {
                cf = displayFrames.mUnrestricted;
            } else {
                cf = displayFrames.mCurrent;
            }
            if (taskBounds != null) {
                outFrame.intersect(taskBounds);
            }
            InsetUtils.insetsBetweenFrames(outFrame, cf, outContentInsets);
            InsetUtils.insetsBetweenFrames(outFrame, sf, outStableInsets);
            outDisplayCutout.set(displayFrames.mDisplayCutout.calculateRelativeTo(outFrame).getDisplayCutout());
            return this.mForceShowSystemBars;
        }
        if (layoutInScreen) {
            outFrame.set(displayFrames.mUnrestricted);
        } else {
            outFrame.set(displayFrames.mStable);
        }
        if (taskBounds != null) {
            outFrame.intersect(taskBounds);
        }
        outContentInsets.setEmpty();
        outStableInsets.setEmpty();
        outDisplayCutout.set(DisplayCutout.NO_CUTOUT);
        return this.mForceShowSystemBars;
    }

    private static int getImpliedSysUiFlagsForLayout(WindowManager.LayoutParams attrs) {
        boolean forceWindowDrawsBarBackgrounds = (attrs.privateFlags & 131072) != 0 && attrs.height == -1 && attrs.width == -1;
        if ((attrs.flags & Integer.MIN_VALUE) == 0 && !forceWindowDrawsBarBackgrounds) {
            return 0;
        }
        int impliedFlags = 0 | 512;
        return impliedFlags | 1024;
    }

    private final class HideNavInputEventReceiver extends InputEventReceiver {
        HideNavInputEventReceiver(InputChannel inputChannel, Looper looper) {
            super(inputChannel, looper);
        }

        public void onInputEvent(InputEvent event) {
            try {
                if ((event instanceof MotionEvent) && (event.getSource() & 2) != 0) {
                    MotionEvent motionEvent = (MotionEvent) event;
                    if (motionEvent.getAction() == 0) {
                        boolean changed = false;
                        synchronized (DisplayPolicy.this.mLock) {
                            if (DisplayPolicy.this.mInputConsumer != null) {
                                showSystemBars();
                                int newVal = DisplayPolicy.this.mResettingSystemUiFlags | 2 | 1 | 4;
                                if (DisplayPolicy.this.mResettingSystemUiFlags != newVal) {
                                    DisplayPolicy.this.mResettingSystemUiFlags = newVal;
                                    changed = true;
                                }
                                int newVal2 = DisplayPolicy.this.mForceClearedSystemUiFlags | 2;
                                if (DisplayPolicy.this.mForceClearedSystemUiFlags != newVal2) {
                                    DisplayPolicy.this.mForceClearedSystemUiFlags = newVal2;
                                    changed = true;
                                    DisplayPolicy.this.mHandler.postDelayed(DisplayPolicy.this.mClearHideNavigationFlag, 1000L);
                                }
                                if (changed) {
                                    DisplayPolicy.this.mDisplayContent.reevaluateStatusBarVisibility();
                                }
                            } else {
                                finishInputEvent(event, false);
                                return;
                            }
                        }
                    }
                }
                finishInputEvent(event, false);
            } catch (Throwable th) {
                finishInputEvent(event, false);
                throw th;
            }
        }

        private void showSystemBars() {
            InsetsSourceProvider provider = DisplayPolicy.this.mDisplayContent.getInsetsStateController().peekSourceProvider(1);
            InsetsControlTarget target = provider != null ? provider.getControlTarget() : null;
            if (target != null) {
                target.showInsets(WindowInsets.Type.systemBars(), false);
            }
        }
    }

    private void simulateLayoutDecorWindow(WindowState win, DisplayFrames displayFrames, InsetsState insetsState, WindowFrames simulatedWindowFrames, SparseArray<Rect> contentFrames, Consumer<Rect> layout) {
        win.setSimulatedWindowFrames(simulatedWindowFrames);
        Rect contentFrame = new Rect();
        try {
            layout.accept(contentFrame);
            win.setSimulatedWindowFrames(null);
            contentFrames.put(win.mAttrs.type, contentFrame);
            this.mDisplayContent.getInsetsStateController().computeSimulatedState(insetsState, win, displayFrames, simulatedWindowFrames);
        } catch (Throwable th) {
            win.setSimulatedWindowFrames(null);
            throw th;
        }
    }

    void simulateLayoutDisplay(final DisplayFrames displayFrames, InsetsState insetsState, SparseArray<Rect> barContentFrames) {
        displayFrames.onBeginLayout();
        updateInsetsStateForDisplayCutout(displayFrames, insetsState);
        insetsState.setDisplayFrame(displayFrames.mUnrestricted);
        WindowFrames simulatedWindowFrames = new WindowFrames();
        WindowState windowState = this.mNavigationBar;
        if (windowState != null) {
            simulateLayoutDecorWindow(windowState, displayFrames, insetsState, simulatedWindowFrames, barContentFrames, new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$1TxdQHesEg9Mz_zNwLN_fdFgqjI
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$simulateLayoutDisplay$10$DisplayPolicy(displayFrames, (Rect) obj);
                }
            });
        }
        WindowState windowState2 = this.mStatusBar;
        if (windowState2 != null) {
            simulateLayoutDecorWindow(windowState2, displayFrames, insetsState, simulatedWindowFrames, barContentFrames, new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$ePpxrnu8spSORwTpXUqHSB2nbVI
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$simulateLayoutDisplay$11$DisplayPolicy(displayFrames, (Rect) obj);
                }
            });
        }
        layoutScreenDecorWindows(displayFrames, simulatedWindowFrames);
        postAdjustDisplayFrames(displayFrames);
    }

    public /* synthetic */ void lambda$simulateLayoutDisplay$10$DisplayPolicy(DisplayFrames displayFrames, Rect contentFrame) {
        layoutNavigationBar(displayFrames, this.mDisplayContent.getConfiguration().uiMode, this.mLastNavVisible, this.mLastNavTranslucent, this.mLastNavAllowedHidden, this.mLastNotificationShadeForcesShowingNavigation, contentFrame);
    }

    public /* synthetic */ void lambda$simulateLayoutDisplay$11$DisplayPolicy(DisplayFrames displayFrames, Rect contentFrame) {
        layoutStatusBar(displayFrames, this.mLastSystemUiFlags, contentFrame);
    }

    public void beginLayoutLw(DisplayFrames displayFrames, int uiMode) {
        boolean navVisible;
        WindowState windowState;
        displayFrames.onBeginLayout();
        updateInsetsStateForDisplayCutout(displayFrames, this.mDisplayContent.getInsetsStateController().getRawInsetsState());
        this.mSystemGestures.screenWidth = displayFrames.mUnrestricted.width();
        this.mSystemGestures.screenHeight = displayFrames.mUnrestricted.height();
        int sysui = this.mLastSystemUiFlags;
        int behavior = this.mLastBehavior;
        InsetsSourceProvider provider = this.mDisplayContent.getInsetsStateController().peekSourceProvider(1);
        boolean z = false;
        if (ViewRootImpl.sNewInsetsMode != 2) {
            navVisible = (sysui & 2) == 0;
        } else if (provider != null) {
            navVisible = provider.isClientVisible();
        } else {
            navVisible = InsetsState.getDefaultVisibility(1);
        }
        boolean navTranslucent = ((-2147450880) & sysui) != 0;
        boolean immersive = ((sysui & 2048) == 0 && (behavior & 1) == 0) ? false : true;
        boolean immersiveSticky = ((sysui & 4096) == 0 && (behavior & 2) == 0) ? false : true;
        boolean navAllowedHidden = immersive || immersiveSticky;
        boolean navTranslucent2 = navTranslucent & (!immersiveSticky);
        boolean navTranslucent3 = isKeyguardShowing();
        boolean isKeyguardShowing = navTranslucent3 && !isKeyguardOccluded();
        if (!isKeyguardShowing && (windowState = this.mNotificationShade) != null && (windowState.getAttrs().privateFlags & 8388608) != 0) {
            z = true;
        }
        boolean notificationShadeForcesShowingNavigation = z;
        updateHideNavInputEventReceiver();
        boolean navVisible2 = navVisible | (true ^ canHideNavigationBar());
        boolean updateSysUiVisibility = layoutNavigationBar(displayFrames, uiMode, navVisible2, navTranslucent2, navAllowedHidden, notificationShadeForcesShowingNavigation, null);
        if (updateSysUiVisibility | layoutStatusBar(displayFrames, sysui, null)) {
            updateSystemUiVisibilityLw();
        }
        layoutScreenDecorWindows(displayFrames, null);
        postAdjustDisplayFrames(displayFrames);
        this.mLastNavVisible = navVisible2;
        this.mLastNavTranslucent = navTranslucent2;
        this.mLastNavAllowedHidden = navAllowedHidden;
        this.mLastNotificationShadeForcesShowingNavigation = notificationShadeForcesShowingNavigation;
    }

    void updateHideNavInputEventReceiver() {
        InsetsState requestedState;
        boolean navVisible;
        boolean showBarsByTouch = true;
        InsetsSourceProvider provider = this.mDisplayContent.getInsetsStateController().peekSourceProvider(1);
        InsetsControlTarget navControlTarget = provider != null ? provider.getControlTarget() : null;
        WindowState navControllingWin = navControlTarget instanceof WindowState ? (WindowState) navControlTarget : null;
        if (navControllingWin == null) {
            requestedState = null;
        } else {
            requestedState = navControllingWin.getRequestedInsetsState();
        }
        if (requestedState != null) {
            navVisible = requestedState.getSourceOrDefaultVisibility(1);
        } else {
            navVisible = InsetsState.getDefaultVisibility(1);
        }
        if (navControllingWin == null || navControllingWin.mAttrs.insetsFlags.behavior != 0) {
            showBarsByTouch = false;
        }
        if (navVisible || !showBarsByTouch) {
            WindowManagerPolicy.InputConsumer inputConsumer = this.mInputConsumer;
            if (inputConsumer != null) {
                inputConsumer.dismiss();
                Handler handler = this.mHandler;
                handler.sendMessage(handler.obtainMessage(3, this.mInputConsumer));
                this.mInputConsumer = null;
                Slog.v(TAG, "nav_input_consumer dismissed.");
                return;
            }
            return;
        }
        if (this.mInputConsumer == null && getStatusBar() != null && canHideNavigationBar()) {
            this.mInputConsumer = this.mDisplayContent.getInputMonitor().createInputConsumer(this.mHandler.getLooper(), "nav_input_consumer", new InputEventReceiver.Factory() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$ZFWTJnn7zmeQfZ_Zmm9GNRwaSo8
                public final InputEventReceiver createInputEventReceiver(InputChannel inputChannel, Looper looper) {
                    return this.f$0.lambda$updateHideNavInputEventReceiver$12$DisplayPolicy(inputChannel, looper);
                }
            });
            Slog.v(TAG, "nav_input_consumer created.");
            InputManager.getInstance().setPointerIconType(0);
        }
    }

    public /* synthetic */ InputEventReceiver lambda$updateHideNavInputEventReceiver$12$DisplayPolicy(InputChannel x$0, Looper x$1) {
        return new HideNavInputEventReceiver(x$0, x$1);
    }

    private static void updateInsetsStateForDisplayCutout(DisplayFrames displayFrames, InsetsState state) {
        if (displayFrames.mDisplayCutout.getDisplayCutout().isEmpty()) {
            state.removeSource(13);
            state.removeSource(14);
            state.removeSource(15);
            state.removeSource(16);
            return;
        }
        Rect u = displayFrames.mUnrestricted;
        Rect s = displayFrames.mDisplayCutoutSafe;
        state.getSource(13).setFrame(u.left, u.top, s.left, u.bottom);
        state.getSource(14).setFrame(u.left, u.top, u.right, s.top);
        state.getSource(15).setFrame(s.right, u.top, u.right, u.bottom);
        state.getSource(16).setFrame(u.left, s.bottom, u.right, u.bottom);
    }

    private void postAdjustDisplayFrames(DisplayFrames displayFrames) {
        if (displayFrames.mDisplayCutoutSafe.top > displayFrames.mUnrestricted.top) {
            displayFrames.mDisplayCutoutSafe.top = Math.max(displayFrames.mDisplayCutoutSafe.top, displayFrames.mStable.top);
        }
        displayFrames.mCurrent.inset(this.mForwardedInsets);
        displayFrames.mContent.inset(this.mForwardedInsets);
    }

    private void layoutScreenDecorWindows(DisplayFrames displayFrames, WindowFrames simulatedFrames) {
        DisplayPolicy displayPolicy = this;
        if (displayPolicy.mScreenDecorWindows.isEmpty()) {
            return;
        }
        sTmpRect.setEmpty();
        int displayId = displayFrames.mDisplayId;
        Rect dockFrame = displayFrames.mDock;
        int displayHeight = displayFrames.mDisplayHeight;
        int displayWidth = displayFrames.mDisplayWidth;
        boolean z = true;
        int i = displayPolicy.mScreenDecorWindows.size() - 1;
        while (i >= 0) {
            WindowState w = displayPolicy.mScreenDecorWindows.valueAt(i);
            if (w.getDisplayId() == displayId && w.isVisibleLw()) {
                boolean isSimulatedLayout = simulatedFrames != null ? z : false;
                if (isSimulatedLayout) {
                    w.setSimulatedWindowFrames(simulatedFrames);
                }
                WindowFrames windowFrames = w.getLayoutingWindowFrames();
                windowFrames.setFrames(displayFrames.mUnrestricted, displayFrames.mUnrestricted, displayFrames.mUnrestricted, displayFrames.mUnrestricted, sTmpRect, displayFrames.mUnrestricted);
                try {
                    w.computeFrame(displayFrames);
                    if (isSimulatedLayout) {
                        w.setSimulatedWindowFrames(null);
                    }
                    Rect frame = windowFrames.mFrame;
                    if (frame.left <= 0 && frame.top <= 0) {
                        if (frame.bottom >= displayHeight) {
                            dockFrame.left = Math.max(frame.right, dockFrame.left);
                        } else if (frame.right >= displayWidth) {
                            dockFrame.top = Math.max(frame.bottom, dockFrame.top);
                        } else {
                            Slog.w(TAG, "layoutScreenDecorWindows: Ignoring decor win=" + w + " not docked on left or top of display. frame=" + frame + " displayWidth=" + displayWidth + " displayHeight=" + displayHeight);
                        }
                    } else if (frame.right >= displayWidth && frame.bottom >= displayHeight) {
                        if (frame.top <= 0) {
                            dockFrame.right = Math.min(frame.left, dockFrame.right);
                        } else if (frame.left <= 0) {
                            dockFrame.bottom = Math.min(frame.top, dockFrame.bottom);
                        } else {
                            Slog.w(TAG, "layoutScreenDecorWindows: Ignoring decor win=" + w + " not docked on right or bottom of display. frame=" + frame + " displayWidth=" + displayWidth + " displayHeight=" + displayHeight);
                        }
                    } else {
                        Slog.w(TAG, "layoutScreenDecorWindows: Ignoring decor win=" + w + " not docked on one of the sides of the display. frame=" + frame + " displayWidth=" + displayWidth + " displayHeight=" + displayHeight);
                    }
                } catch (Throwable th) {
                    if (isSimulatedLayout) {
                        w.setSimulatedWindowFrames(null);
                        throw th;
                    }
                    throw th;
                }
            }
            i--;
            z = true;
            displayPolicy = this;
        }
        displayFrames.mRestricted.set(dockFrame);
        displayFrames.mCurrent.set(dockFrame);
        displayFrames.mVoiceContent.set(dockFrame);
        displayFrames.mSystem.set(dockFrame);
        displayFrames.mContent.set(dockFrame);
    }

    private boolean layoutStatusBar(DisplayFrames displayFrames, int sysui, Rect simulatedContentFrame) {
        if (this.mStatusBar == null) {
            return false;
        }
        sTmpRect.setEmpty();
        WindowFrames windowFrames = this.mStatusBar.getLayoutingWindowFrames();
        windowFrames.setFrames(displayFrames.mUnrestricted, displayFrames.mUnrestricted, displayFrames.mStable, displayFrames.mStable, sTmpRect, displayFrames.mStable);
        this.mStatusBar.computeFrame(displayFrames);
        displayFrames.mStable.top = displayFrames.mUnrestricted.top + this.mStatusBarHeightForRotation[displayFrames.mRotation];
        displayFrames.mStable.top = Math.max(displayFrames.mStable.top, displayFrames.mDisplayCutoutSafe.top);
        sTmpRect.set(windowFrames.mContentFrame);
        sTmpRect.intersect(displayFrames.mDisplayCutoutSafe);
        sTmpRect.top = windowFrames.mContentFrame.top;
        sTmpRect.bottom = displayFrames.mStable.top;
        if (simulatedContentFrame != null) {
            simulatedContentFrame.set(sTmpRect);
        } else {
            this.mStatusBarController.setContentFrame(sTmpRect);
        }
        boolean statusBarTransient = (67108864 & sysui) != 0 || this.mDisplayContent.getInsetsPolicy().isTransient(0);
        boolean statusBarTranslucent = (1073741832 & sysui) != 0;
        if (this.mStatusBar.isVisibleLw() && !statusBarTransient) {
            Rect dockFrame = displayFrames.mDock;
            dockFrame.top = displayFrames.mStable.top;
            displayFrames.mContent.set(dockFrame);
            displayFrames.mVoiceContent.set(dockFrame);
            displayFrames.mCurrent.set(dockFrame);
            if (!statusBarTranslucent && !this.mStatusBarController.wasRecentlyTranslucent() && !this.mStatusBar.isAnimatingLw()) {
                displayFrames.mSystem.top = displayFrames.mStable.top;
            }
        }
        return this.mStatusBarController.checkHiddenLw();
    }

    private boolean layoutNavigationBar(DisplayFrames displayFrames, int uiMode, boolean navVisible, boolean navTranslucent, boolean navAllowedHidden, boolean statusBarForcesShowingNavigation, Rect simulatedContentFrame) {
        int top;
        if (this.mNavigationBar == null) {
            return false;
        }
        Rect navigationFrame = sTmpNavFrame;
        boolean transientNavBarShowing = this.mNavigationBarController.isTransientShowing();
        int rotation = displayFrames.mRotation;
        int displayHeight = displayFrames.mDisplayHeight;
        int displayWidth = displayFrames.mDisplayWidth;
        Rect dockFrame = displayFrames.mDock;
        int navBarPosition = navigationBarPosition(displayWidth, displayHeight, rotation);
        Rect cutoutSafeUnrestricted = sTmpRect;
        cutoutSafeUnrestricted.set(displayFrames.mUnrestricted);
        cutoutSafeUnrestricted.intersectUnchecked(displayFrames.mDisplayCutoutSafe);
        if (navBarPosition == 4) {
            int topNavBar = cutoutSafeUnrestricted.bottom - getNavigationBarFrameHeight(rotation, uiMode);
            if (!this.mNavButtonForcedVisible) {
                top = cutoutSafeUnrestricted.bottom - getNavigationBarHeight(rotation, uiMode);
            } else {
                top = topNavBar;
            }
            navigationFrame.set(0, topNavBar, displayWidth, displayFrames.mUnrestricted.bottom);
            Rect rect = displayFrames.mStable;
            displayFrames.mStableFullscreen.bottom = top;
            rect.bottom = top;
            if (transientNavBarShowing) {
                this.mNavigationBarController.setBarShowingLw(true);
            } else if (navVisible) {
                this.mNavigationBarController.setBarShowingLw(true);
                displayFrames.mRestricted.bottom = top;
                dockFrame.bottom = top;
            } else {
                this.mNavigationBarController.setBarShowingLw(statusBarForcesShowingNavigation);
            }
            if (navVisible && !navTranslucent && !navAllowedHidden && !this.mNavigationBar.isAnimatingLw() && !this.mNavigationBarController.wasRecentlyTranslucent()) {
                displayFrames.mSystem.bottom = top;
            }
        } else if (navBarPosition == 2) {
            int left = cutoutSafeUnrestricted.right - getNavigationBarWidth(rotation, uiMode);
            navigationFrame.set(left, 0, displayFrames.mUnrestricted.right, displayHeight);
            Rect rect2 = displayFrames.mStable;
            displayFrames.mStableFullscreen.right = left;
            rect2.right = left;
            if (transientNavBarShowing) {
                this.mNavigationBarController.setBarShowingLw(true);
            } else if (navVisible) {
                this.mNavigationBarController.setBarShowingLw(true);
                displayFrames.mRestricted.right = left;
                dockFrame.right = left;
            } else {
                this.mNavigationBarController.setBarShowingLw(statusBarForcesShowingNavigation);
            }
            if (navVisible && !navTranslucent && !navAllowedHidden && !this.mNavigationBar.isAnimatingLw() && !this.mNavigationBarController.wasRecentlyTranslucent()) {
                displayFrames.mSystem.right = left;
            }
        } else if (navBarPosition == 1) {
            int right = cutoutSafeUnrestricted.left + getNavigationBarWidth(rotation, uiMode);
            navigationFrame.set(displayFrames.mUnrestricted.left, 0, right, displayHeight);
            Rect rect3 = displayFrames.mStable;
            displayFrames.mStableFullscreen.left = right;
            rect3.left = right;
            if (transientNavBarShowing) {
                this.mNavigationBarController.setBarShowingLw(true);
            } else if (navVisible) {
                this.mNavigationBarController.setBarShowingLw(true);
                displayFrames.mRestricted.left = right;
                dockFrame.left = right;
            } else {
                this.mNavigationBarController.setBarShowingLw(statusBarForcesShowingNavigation);
            }
            if (navVisible && !navTranslucent && !navAllowedHidden && !this.mNavigationBar.isAnimatingLw() && !this.mNavigationBarController.wasRecentlyTranslucent()) {
                displayFrames.mSystem.left = right;
            }
        }
        displayFrames.mCurrent.set(dockFrame);
        displayFrames.mVoiceContent.set(dockFrame);
        displayFrames.mContent.set(dockFrame);
        sTmpRect.setEmpty();
        WindowFrames windowFrames = this.mNavigationBar.getLayoutingWindowFrames();
        windowFrames.setFrames(navigationFrame, navigationFrame, displayFrames.mDisplayCutoutSafe, navigationFrame, sTmpRect, navigationFrame);
        this.mNavigationBar.computeFrame(displayFrames);
        if (simulatedContentFrame != null) {
            simulatedContentFrame.set(windowFrames.mContentFrame);
        } else {
            this.mNavigationBarPosition = navBarPosition;
            this.mNavigationBarController.setContentFrame(windowFrames.mContentFrame);
        }
        return this.mNavigationBarController.checkHiddenLw();
    }

    private void setAttachedWindowFrames(WindowState win, int fl, int adjust, WindowState attached, boolean insetDecors, Rect pf, Rect df, Rect cf, Rect vf, DisplayFrames displayFrames) {
        if (!win.isInputMethodTarget() && attached.isInputMethodTarget()) {
            vf.set(displayFrames.mDock);
            cf.set(displayFrames.mDock);
            df.set(displayFrames.mDock);
        } else {
            Rect parentDisplayFrame = attached.getDisplayFrameLw();
            WindowManager.LayoutParams attachedAttrs = attached.mAttrs;
            if ((attachedAttrs.privateFlags & 131072) != 0 && (attachedAttrs.flags & Integer.MIN_VALUE) == 0 && (attachedAttrs.systemUiVisibility & 512) == 0) {
                parentDisplayFrame = new Rect(parentDisplayFrame);
                parentDisplayFrame.intersect(displayFrames.mRestricted);
            }
            if (adjust != 16) {
                cf.set((1073741824 & fl) != 0 ? attached.getContentFrameLw() : parentDisplayFrame);
            } else {
                cf.set(attached.getContentFrameLw());
                if (attached.isVoiceInteraction()) {
                    cf.intersectUnchecked(displayFrames.mVoiceContent);
                } else if (win.isInputMethodTarget() || attached.isInputMethodTarget()) {
                    cf.intersectUnchecked(displayFrames.mContent);
                }
            }
            df.set(insetDecors ? parentDisplayFrame : cf);
            vf.set(attached.getVisibleFrameLw());
        }
        pf.set((fl & 256) == 0 ? attached.getFrameLw() : df);
    }

    private void applyStableConstraints(int sysui, int fl, Rect r, DisplayFrames displayFrames) {
        if ((sysui & 256) == 0) {
            return;
        }
        if ((fl & 1024) != 0) {
            r.intersectUnchecked(displayFrames.mStableFullscreen);
        } else {
            r.intersectUnchecked(displayFrames.mStable);
        }
    }

    private boolean canReceiveInput(WindowState win) {
        boolean notFocusable = (win.getAttrs().flags & 8) != 0;
        boolean altFocusableIm = (win.getAttrs().flags & 131072) != 0;
        boolean notFocusableForIm = notFocusable ^ altFocusableIm;
        return !notFocusableForIm;
    }

    /* JADX WARN: Code duplicated, block: B:332:0x073a  */
    /* JADX WARN: Code duplicated, block: B:338:0x074c  */
    /* JADX WARN: Code duplicated, block: B:341:0x0753 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:345:0x075b  */
    /* JADX WARN: Code duplicated, block: B:348:0x0764  */
    /* JADX WARN: Code duplicated, block: B:350:0x0770  */
    /* JADX WARN: Code duplicated, block: B:352:0x0778  */
    /* JADX WARN: Code duplicated, block: B:353:0x0782  */
    /* JADX WARN: Code duplicated, block: B:354:0x078c  */
    /* JADX WARN: Code duplicated, block: B:356:0x0792 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:363:0x079f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:381:0x07ca  */
    /* JADX WARN: Code duplicated, block: B:384:0x07cf  */
    /* JADX WARN: Code duplicated, block: B:388:0x07da A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:390:0x07f2  */
    /* JADX WARN: Code duplicated, block: B:392:0x07f8  */
    /* JADX WARN: Code duplicated, block: B:395:0x0807  */
    /* JADX WARN: Code duplicated, block: B:401:0x0821  */
    /* JADX WARN: Code duplicated, block: B:404:0x083b  */
    /* JADX WARN: Code duplicated, block: B:407:0x0849  */
    /* JADX WARN: Code duplicated, block: B:410:0x0866  */
    /* JADX WARN: Code duplicated, block: B:417:0x0879  */
    /* JADX WARN: Code duplicated, block: B:428:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    public void layoutWindowLw(WindowState win, WindowState attached, DisplayFrames displayFrames) {
        int type;
        boolean z;
        boolean z2;
        Rect cf;
        int adjust;
        int i;
        int i2;
        Rect sf;
        int i3;
        boolean requestedFullscreen;
        boolean requestedHideNavigation;
        boolean z3;
        WindowManager.LayoutParams attrs;
        WindowFrames windowFrames;
        Rect displayCutoutSafeExceptMaybeBars;
        int i4;
        int i5;
        int i6;
        boolean z4;
        InsetsSource source;
        WindowState windowState;
        if ((win != this.mStatusBar || canReceiveInput(win)) && win != this.mNavigationBar && !this.mScreenDecorWindows.contains(win)) {
            WindowManager.LayoutParams attrs2 = win.getAttrs();
            int type2 = attrs2.type;
            int fl = PolicyControl.getWindowFlags(win, attrs2);
            int pfl = attrs2.privateFlags;
            int sim = attrs2.softInputMode;
            int requestedSysUiFl = PolicyControl.getSystemUiVisibility(null, attrs2);
            int sysUiFl = requestedSysUiFl | getImpliedSysUiFlagsForLayout(attrs2);
            DisplayFrames displayFrames2 = win.getDisplayFrames(displayFrames);
            WindowFrames windowFrames2 = win.getWindowFrames();
            sTmpLastParentFrame.set(windowFrames2.mParentFrame);
            Rect dfu = windowFrames2.mParentFrame;
            Rect pf = windowFrames2.mDisplayFrame;
            Rect df = windowFrames2.mContentFrame;
            Rect vf = windowFrames2.mVisibleFrame;
            Rect dcf = windowFrames2.mDecorFrame;
            Rect sf2 = windowFrames2.mStableFrame;
            dcf.setEmpty();
            int sysUiFl2 = sysUiFl;
            windowFrames2.setParentFrameWasClippedByDisplayCutout(false);
            boolean hasNavBar = hasNavigationBar() && (windowState = this.mNavigationBar) != null && windowState.isVisibleLw();
            int adjust2 = sim & 240;
            WindowFrames windowFrames3 = windowFrames2;
            boolean layoutInScreen = (fl & 256) == 256;
            boolean layoutInsetDecor = (fl & 65536) == 65536;
            sf2.set(displayFrames2.mStable);
            if (ViewRootImpl.sNewInsetsMode == 2) {
                int typesToFit = attrs2.getFitInsetsTypes();
                int sidesToFit = attrs2.getFitInsetsSides();
                ArraySet<Integer> types = InsetsState.toInternalType(typesToFit);
                Rect dfu2 = displayFrames2.mUnrestricted;
                Insets insets = Insets.of(0, 0, 0, 0);
                int i7 = types.size() - 1;
                Insets insets2 = insets;
                while (i7 >= 0) {
                    Rect dcf2 = dcf;
                    ArraySet<Integer> types2 = types;
                    InsetsSource source2 = this.mDisplayContent.getInsetsPolicy().getInsetsForDispatch(win).peekSource(types.valueAt(i7).intValue());
                    if (source2 != null) {
                        insets2 = Insets.max(insets2, source2.calculateInsets(dfu2, attrs2.isFitInsetsIgnoringVisibility()));
                    }
                    i7--;
                    dcf = dcf2;
                    types = types2;
                }
                Rect dcf3 = dcf;
                int i8 = sidesToFit & 1;
                int left = i8 != 0 ? insets2.left : 0;
                int top = (sidesToFit & 2) != 0 ? insets2.top : 0;
                int right = (sidesToFit & 4) != 0 ? insets2.right : 0;
                int bottom = (sidesToFit & 8) != 0 ? insets2.bottom : 0;
                int i9 = dfu2.right - right;
                int right2 = dfu2.bottom;
                pf.set(left, top, i9, right2 - bottom);
                if (attached == null) {
                    dfu.set(pf);
                    if ((1073741824 & pfl) != 0 && (source = this.mDisplayContent.getInsetsPolicy().getInsetsForDispatch(win).peekSource(17)) != null) {
                        dfu.inset(source.calculateInsets(dfu, false));
                    }
                    vf.set(adjust2 != 48 ? displayFrames2.mCurrent : displayFrames2.mDock);
                } else {
                    int left2 = fl & 256;
                    dfu.set(left2 == 0 ? attached.getFrameLw() : pf);
                    vf.set(attached.getVisibleFrameLw());
                }
                df.set(adjust2 != 16 ? displayFrames2.mDock : displayFrames2.mContent);
                dcf3.set(displayFrames2.mSystem);
                dfu = dfu;
                adjust2 = adjust2;
                sysUiFl2 = sysUiFl2;
                windowFrames3 = windowFrames3;
                type = type2;
                z = true;
                pf = pf;
                df = df;
                displayFrames2 = displayFrames2;
                vf = vf;
            } else {
                attrs2 = attrs2;
                type = type2;
                if (type == 2011) {
                    vf.set(displayFrames2.mDock);
                    df.set(displayFrames2.mDock);
                    pf.set(displayFrames2.mDock);
                    dfu.set(displayFrames2.mDock);
                    int i10 = displayFrames2.mUnrestricted.bottom;
                    pf.bottom = i10;
                    dfu.bottom = i10;
                    int i11 = displayFrames2.mStable.bottom;
                    vf.bottom = i11;
                    df.bottom = i11;
                    WindowState windowState2 = this.mStatusBar;
                    if (windowState2 != null && this.mFocusedWindow == windowState2 && canReceiveInput(windowState2)) {
                        int i12 = this.mNavigationBarPosition;
                        if (i12 == 2) {
                            int i13 = displayFrames2.mStable.right;
                            vf.right = i13;
                            df.right = i13;
                            pf.right = i13;
                            dfu.right = i13;
                        } else if (i12 == 1) {
                            int i14 = displayFrames2.mStable.left;
                            vf.left = i14;
                            df.left = i14;
                            pf.left = i14;
                            dfu.left = i14;
                        }
                    }
                    if (this.mNavigationBarPosition != 4) {
                        sf = sf2;
                    } else {
                        int rotation = displayFrames2.mRotation;
                        int uimode = this.mService.mPolicy.getUiMode();
                        int navHeightOffset = getNavigationBarFrameHeight(rotation, uimode) - getNavigationBarHeight(rotation, uimode);
                        if (navHeightOffset <= 0) {
                            sf = sf2;
                        } else {
                            df.bottom -= navHeightOffset;
                            sf = sf2;
                            sf.bottom -= navHeightOffset;
                            vf.bottom -= navHeightOffset;
                            dcf.bottom -= navHeightOffset;
                        }
                    }
                    attrs2.gravity = 80;
                    adjust2 = adjust2;
                    sysUiFl2 = sysUiFl2;
                    windowFrames3 = windowFrames3;
                    z = true;
                    dfu = dfu;
                    pf = pf;
                    df = df;
                    displayFrames2 = displayFrames2;
                    vf = vf;
                } else {
                    attrs2 = attrs2;
                    if (type == 2031) {
                        pf.set(displayFrames2.mUnrestricted);
                        dfu.set(displayFrames2.mUnrestricted);
                        if (adjust2 != 16) {
                            df.set(displayFrames2.mDock);
                        } else {
                            df.set(displayFrames2.mContent);
                        }
                        if (adjust2 != 48) {
                            vf.set(displayFrames2.mCurrent);
                            adjust2 = adjust2;
                            attrs2 = attrs2;
                            sysUiFl2 = sysUiFl2;
                            windowFrames3 = windowFrames3;
                            z = true;
                            dfu = dfu;
                            pf = pf;
                            df = df;
                            displayFrames2 = displayFrames2;
                            vf = vf;
                        } else {
                            vf.set(df);
                            adjust2 = adjust2;
                            attrs2 = attrs2;
                            sysUiFl2 = sysUiFl2;
                            windowFrames3 = windowFrames3;
                            z = true;
                            dfu = dfu;
                            pf = pf;
                            df = df;
                            displayFrames2 = displayFrames2;
                            vf = vf;
                        }
                    } else if (type == 2013) {
                        layoutWallpaper(displayFrames2, dfu, pf, df);
                        adjust2 = adjust2;
                        attrs2 = attrs2;
                        sysUiFl2 = sysUiFl2;
                        windowFrames3 = windowFrames3;
                        z = true;
                        dfu = dfu;
                        pf = pf;
                        df = df;
                        displayFrames2 = displayFrames2;
                        vf = vf;
                    } else if (win == this.mStatusBar || type == 2040) {
                        z = true;
                        pf.set(displayFrames2.mUnrestricted);
                        dfu.set(displayFrames2.mUnrestricted);
                        df.set(displayFrames2.mStable);
                        vf.set(displayFrames2.mStable);
                        if (adjust2 == 16) {
                            if (df.bottom > displayFrames2.mContent.bottom) {
                                df.bottom = displayFrames2.mContent.bottom;
                            }
                        } else {
                            if (df.bottom > displayFrames2.mDock.bottom) {
                                df.bottom = displayFrames2.mDock.bottom;
                            }
                            if (vf.bottom > displayFrames2.mContent.bottom) {
                                vf.bottom = displayFrames2.mContent.bottom;
                            }
                        }
                    } else {
                        dcf.set(displayFrames2.mSystem);
                        boolean isAppWindow = type >= 1 && type <= 99;
                        boolean topAtRest = win == this.mTopFullscreenOpaqueWindowState && !win.isAnimatingLw();
                        if (isAppWindow && !topAtRest) {
                            if ((sysUiFl2 & 4) == 0 && (fl & 1024) == 0 && (67108864 & fl) == 0 && (fl & Integer.MIN_VALUE) == 0 && (pfl & 131072) == 0) {
                                dcf.top = displayFrames2.mStable.top;
                            }
                            if ((134217728 & fl) == 0 && (sysUiFl2 & 2) == 0) {
                                if ((fl & Integer.MIN_VALUE) == 0 && (pfl & 131072) == 0) {
                                    dcf.bottom = displayFrames2.mStable.bottom;
                                    dcf.right = displayFrames2.mStable.right;
                                }
                            }
                        }
                        if (!layoutInScreen || !layoutInsetDecor) {
                            windowFrames3 = windowFrames3;
                            dfu = dfu;
                            df = df;
                            vf = vf;
                            pf = pf;
                            adjust2 = adjust2;
                            displayFrames2 = displayFrames2;
                            sysUiFl2 = sysUiFl2;
                            if (layoutInScreen || (sysUiFl2 & 1536) != 0) {
                                if (type == 2041 || type == 2017) {
                                    z = true;
                                    df.set(displayFrames2.mUnrestricted);
                                    pf.set(displayFrames2.mUnrestricted);
                                    dfu.set(displayFrames2.mUnrestricted);
                                    if (hasNavBar) {
                                        int i15 = displayFrames2.mDock.left;
                                        df.left = i15;
                                        pf.left = i15;
                                        dfu.left = i15;
                                        int i16 = displayFrames2.mRestricted.right;
                                        df.right = i16;
                                        pf.right = i16;
                                        dfu.right = i16;
                                        int i17 = displayFrames2.mRestricted.bottom;
                                        df.bottom = i17;
                                        pf.bottom = i17;
                                        dfu.bottom = i17;
                                    }
                                } else if (type == 2019 || type == 2024) {
                                    z = true;
                                    pf.set(displayFrames2.mUnrestricted);
                                    dfu.set(displayFrames2.mUnrestricted);
                                } else if (((type == 2015 || type == 2036) && (fl & 1024) != 0) || type == 2021) {
                                    df.set(displayFrames2.mUnrestricted);
                                    pf.set(displayFrames2.mUnrestricted);
                                    dfu.set(displayFrames2.mUnrestricted);
                                    z = true;
                                } else {
                                    if ((sysUiFl2 & 512) != 0) {
                                        if (type == 2040 || type == 2005 || type == 2034 || type == 2033) {
                                            z = true;
                                        } else {
                                            z = true;
                                            if (type < 1 || type > 1999) {
                                            }
                                        }
                                        df.set(displayFrames2.mUnrestricted);
                                        pf.set(displayFrames2.mUnrestricted);
                                        dfu.set(displayFrames2.mUnrestricted);
                                    } else {
                                        z = true;
                                    }
                                    if ((sysUiFl2 & 1024) != 0) {
                                        pf.set(displayFrames2.mRestricted);
                                        dfu.set(displayFrames2.mRestricted);
                                        if (ViewRootImpl.sNewInsetsMode != 0 || adjust2 != 16) {
                                            df.set(displayFrames2.mDock);
                                        } else {
                                            df.set(displayFrames2.mContent);
                                        }
                                    } else {
                                        df.set(displayFrames2.mRestricted);
                                        pf.set(displayFrames2.mRestricted);
                                        dfu.set(displayFrames2.mRestricted);
                                    }
                                }
                                applyStableConstraints(sysUiFl2, fl, df, displayFrames2);
                                if (ViewRootImpl.sNewInsetsMode == 0 && adjust2 != 48) {
                                    vf.set(displayFrames2.mCurrent);
                                } else {
                                    vf.set(df);
                                }
                            } else if (attached != null) {
                                adjust2 = adjust2;
                                attrs2 = attrs2;
                                sysUiFl2 = sysUiFl2;
                                setAttachedWindowFrames(win, fl, adjust2, attached, false, dfu, pf, df, vf, displayFrames2);
                                vf = vf;
                                displayFrames2 = displayFrames2;
                                df = df;
                                pf = pf;
                                dfu = dfu;
                                z = true;
                            } else {
                                vf = vf;
                                adjust2 = adjust2;
                                attrs2 = attrs2;
                                sysUiFl2 = sysUiFl2;
                                if (type == 2041) {
                                    displayFrames2 = displayFrames2;
                                    df = df;
                                    df.set(displayFrames2.mRestricted);
                                    pf = pf;
                                    pf.set(displayFrames2.mRestricted);
                                    dfu = dfu;
                                    dfu.set(displayFrames2.mRestricted);
                                    vf = vf;
                                    z = true;
                                } else {
                                    displayFrames2 = displayFrames2;
                                    df = df;
                                    pf = pf;
                                    if (type == 2005 || type == 2003) {
                                        dfu = dfu;
                                        df.set(displayFrames2.mStable);
                                        pf.set(displayFrames2.mStable);
                                        dfu.set(displayFrames2.mStable);
                                        z = true;
                                    } else {
                                        dfu.set(displayFrames2.mContent);
                                        if (win.isVoiceInteraction()) {
                                            dfu = dfu;
                                            df.set(displayFrames2.mVoiceContent);
                                            pf.set(displayFrames2.mVoiceContent);
                                        } else if (adjust2 != 16) {
                                            dfu = dfu;
                                            df.set(displayFrames2.mDock);
                                            pf.set(displayFrames2.mDock);
                                        } else {
                                            dfu = dfu;
                                            df.set(displayFrames2.mContent);
                                            pf.set(displayFrames2.mContent);
                                        }
                                        if (ViewRootImpl.sNewInsetsMode != 0 || adjust2 == 48) {
                                            vf = vf;
                                            vf.set(df);
                                            z = true;
                                        } else {
                                            vf = vf;
                                            vf.set(displayFrames2.mCurrent);
                                            z = true;
                                        }
                                    }
                                }
                            }
                        } else if (attached == null) {
                            Rect df2 = pf;
                            dfu = dfu;
                            DisplayFrames displayFrames3 = displayFrames2;
                            int sysUiFl3 = sysUiFl2;
                            windowFrames3 = windowFrames3;
                            if (type == 2041 || type == 2017) {
                                z2 = true;
                                int i18 = (hasNavBar ? displayFrames3.mDock : displayFrames3.mUnrestricted).left;
                                df2.left = i18;
                                dfu.left = i18;
                                int i19 = displayFrames3.mUnrestricted.top;
                                df2.top = i19;
                                dfu.top = i19;
                                if (hasNavBar) {
                                    i = displayFrames3.mRestricted.right;
                                } else {
                                    i = displayFrames3.mUnrestricted.right;
                                }
                                df2.right = i;
                                dfu.right = i;
                                if (hasNavBar) {
                                    i2 = displayFrames3.mRestricted.bottom;
                                } else {
                                    i2 = displayFrames3.mUnrestricted.bottom;
                                }
                                df2.bottom = i2;
                                dfu.bottom = i2;
                            } else {
                                sysUiFl3 = sysUiFl3;
                                if ((sysUiFl3 & 512) != 0) {
                                    z2 = true;
                                    if ((type >= 1 && type <= 1999) || type == 2020 || type == 2009) {
                                        displayFrames3 = displayFrames3;
                                        df2 = df2;
                                        df2.set(displayFrames3.mUnrestricted);
                                        dfu = dfu;
                                        dfu.set(displayFrames3.mUnrestricted);
                                    }
                                } else {
                                    z2 = true;
                                }
                                df2.set(displayFrames3.mRestricted);
                                dfu.set(displayFrames3.mRestricted);
                            }
                            if ((fl & 1024) == 0) {
                                if (win.isVoiceInteraction()) {
                                    cf = df;
                                    cf.set(displayFrames3.mVoiceContent);
                                    adjust = adjust2;
                                } else {
                                    cf = df;
                                    if (ViewRootImpl.sNewInsetsMode == 0) {
                                        adjust = adjust2;
                                        if (adjust == 16) {
                                            cf.set(displayFrames3.mContent);
                                        }
                                    } else {
                                        adjust = adjust2;
                                    }
                                    cf.set(displayFrames3.mDock);
                                }
                            } else {
                                cf = df;
                                adjust = adjust2;
                                cf.set(displayFrames3.mRestricted);
                            }
                            applyStableConstraints(sysUiFl3, fl, cf, displayFrames3);
                            if (ViewRootImpl.sNewInsetsMode == 0 && adjust != 48) {
                                vf.set(displayFrames3.mCurrent);
                                adjust2 = adjust;
                                df = cf;
                                pf = df2;
                                z = z2;
                                attrs2 = attrs2;
                                vf = vf;
                                displayFrames2 = displayFrames3;
                                sysUiFl2 = sysUiFl3;
                            } else {
                                vf.set(cf);
                                adjust2 = adjust;
                                df = cf;
                                pf = df2;
                                z = z2;
                                attrs2 = attrs2;
                                vf = vf;
                                displayFrames2 = displayFrames3;
                                sysUiFl2 = sysUiFl3;
                            }
                        } else {
                            windowFrames3 = windowFrames3;
                            dfu = dfu;
                            setAttachedWindowFrames(win, fl, adjust2, attached, true, dfu, pf, df, vf, displayFrames2);
                            vf = vf;
                            displayFrames2 = displayFrames2;
                            df = df;
                            pf = pf;
                            adjust2 = adjust2;
                            z = true;
                            attrs2 = attrs2;
                            sysUiFl2 = sysUiFl2;
                        }
                    }
                }
            }
            WindowManager.LayoutParams attrs3 = attrs2;
            int cutoutMode = attrs3.layoutInDisplayCutoutMode;
            boolean attachedInParent = (attached == null || layoutInScreen) ? false : z;
            if ((fl & 1024) == 0 && (requestedSysUiFl & 4) == 0) {
                i3 = 2;
                if (ViewRootImpl.sNewInsetsMode != 2) {
                    z4 = false;
                } else {
                    z4 = false;
                    if (!win.getRequestedInsetsState().getSourceOrDefaultVisibility(0)) {
                    }
                    if ((requestedSysUiFl & 2) == 0 || (ViewRootImpl.sNewInsetsMode == i3 && !win.getRequestedInsetsState().getSourceOrDefaultVisibility(1))) {
                        requestedHideNavigation = true;
                    } else {
                        requestedHideNavigation = false;
                    }
                    if (attrs3.isFullscreen() && layoutInScreen && type != 1) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    boolean floatingInScreenWindow = z3;
                    if (cutoutMode == 3) {
                        attrs = attrs3;
                        windowFrames = windowFrames3;
                    } else {
                        displayCutoutSafeExceptMaybeBars = sTmpDisplayCutoutSafeExceptMaybeBarsRect;
                        displayCutoutSafeExceptMaybeBars.set(displayFrames2.mDisplayCutoutSafe);
                        if (cutoutMode != 1) {
                            attrs = attrs3;
                            i4 = Integer.MIN_VALUE;
                        } else {
                            attrs = attrs3;
                            if (displayFrames2.mDisplayWidth < displayFrames2.mDisplayHeight) {
                                i4 = Integer.MIN_VALUE;
                                displayCutoutSafeExceptMaybeBars.top = Integer.MIN_VALUE;
                                displayCutoutSafeExceptMaybeBars.bottom = Integer.MAX_VALUE;
                            } else {
                                i4 = Integer.MIN_VALUE;
                                displayCutoutSafeExceptMaybeBars.left = Integer.MIN_VALUE;
                                displayCutoutSafeExceptMaybeBars.right = Integer.MAX_VALUE;
                            }
                        }
                        if (layoutInScreen && layoutInsetDecor && !requestedFullscreen && (cutoutMode == 0 || cutoutMode == 1)) {
                            displayCutoutSafeExceptMaybeBars.top = i4;
                        }
                        if (layoutInScreen || !layoutInsetDecor || requestedHideNavigation) {
                            i5 = 4;
                        } else {
                            if (cutoutMode != 0) {
                                i6 = 1;
                                if (cutoutMode != 1) {
                                    i5 = 4;
                                }
                            } else {
                                i6 = 1;
                            }
                            int i20 = this.mNavigationBarPosition;
                            if (i20 == i6) {
                                i5 = 4;
                                displayCutoutSafeExceptMaybeBars.left = Integer.MIN_VALUE;
                            } else if (i20 != 2) {
                                i5 = 4;
                                if (i20 == 4) {
                                    displayCutoutSafeExceptMaybeBars.bottom = Integer.MAX_VALUE;
                                }
                            } else {
                                i5 = 4;
                                displayCutoutSafeExceptMaybeBars.right = Integer.MAX_VALUE;
                            }
                        }
                        if (type == 2011 && this.mNavigationBarPosition == i5) {
                            displayCutoutSafeExceptMaybeBars.bottom = Integer.MAX_VALUE;
                        }
                        if (!attachedInParent || floatingInScreenWindow) {
                            windowFrames = windowFrames3;
                        } else {
                            sTmpRect.set(dfu);
                            dfu.intersectUnchecked(displayCutoutSafeExceptMaybeBars);
                            windowFrames = windowFrames3;
                            windowFrames.setParentFrameWasClippedByDisplayCutout(!sTmpRect.equals(dfu));
                        }
                        pf.intersectUnchecked(displayCutoutSafeExceptMaybeBars);
                    }
                    df.intersectUnchecked(displayFrames2.mDisplayCutoutSafe);
                    if ((fl & 512) != 0 && type != 2010 && !win.inMultiWindowMode()) {
                        pf.top = -10000;
                        pf.left = -10000;
                        pf.bottom = 10000;
                        pf.right = 10000;
                        if (type != 2013) {
                            vf.top = -10000;
                            vf.left = -10000;
                            df.top = -10000;
                            df.left = -10000;
                            vf.bottom = 10000;
                            vf.right = 10000;
                            df.bottom = 10000;
                            df.right = 10000;
                        }
                    }
                    if (!sTmpLastParentFrame.equals(dfu)) {
                        windowFrames.setContentChanged(true);
                    }
                    if (attrs.type == 2043) {
                        df.set(displayFrames2.mUnrestricted);
                        pf.set(displayFrames2.mUnrestricted);
                        dfu.set(displayFrames2.mUnrestricted);
                    }
                    win.computeFrame(displayFrames2);
                    adjustDisplayFramesForFlexibleInsets(win, displayFrames2);
                    if (type == 2011 && win.isVisibleLw() && !win.getGivenInsetsPendingLw()) {
                        offsetInputMethodWindowLw(win, displayFrames2);
                    }
                    if (type != 2031 && win.isVisibleLw() && !win.getGivenInsetsPendingLw()) {
                        offsetVoiceInputWindowLw(win, displayFrames2);
                        return;
                    }
                    return;
                }
                requestedFullscreen = z4;
                if ((requestedSysUiFl & 2) == 0) {
                    requestedHideNavigation = true;
                } else {
                    requestedHideNavigation = true;
                }
                if (attrs3.isFullscreen()) {
                    z3 = false;
                } else {
                    z3 = false;
                }
                boolean floatingInScreenWindow2 = z3;
                if (cutoutMode == 3) {
                    attrs = attrs3;
                    windowFrames = windowFrames3;
                } else {
                    displayCutoutSafeExceptMaybeBars = sTmpDisplayCutoutSafeExceptMaybeBarsRect;
                    displayCutoutSafeExceptMaybeBars.set(displayFrames2.mDisplayCutoutSafe);
                    if (cutoutMode != 1) {
                        attrs = attrs3;
                        i4 = Integer.MIN_VALUE;
                    } else {
                        attrs = attrs3;
                        if (displayFrames2.mDisplayWidth < displayFrames2.mDisplayHeight) {
                            i4 = Integer.MIN_VALUE;
                            displayCutoutSafeExceptMaybeBars.top = Integer.MIN_VALUE;
                            displayCutoutSafeExceptMaybeBars.bottom = Integer.MAX_VALUE;
                        } else {
                            i4 = Integer.MIN_VALUE;
                            displayCutoutSafeExceptMaybeBars.left = Integer.MIN_VALUE;
                            displayCutoutSafeExceptMaybeBars.right = Integer.MAX_VALUE;
                        }
                    }
                    if (layoutInScreen) {
                        displayCutoutSafeExceptMaybeBars.top = i4;
                    }
                    if (layoutInScreen) {
                        i5 = 4;
                    } else {
                        i5 = 4;
                    }
                    if (type == 2011) {
                        displayCutoutSafeExceptMaybeBars.bottom = Integer.MAX_VALUE;
                    }
                    if (!attachedInParent) {
                        windowFrames = windowFrames3;
                    } else {
                        windowFrames = windowFrames3;
                    }
                    pf.intersectUnchecked(displayCutoutSafeExceptMaybeBars);
                }
                df.intersectUnchecked(displayFrames2.mDisplayCutoutSafe);
                if ((fl & 512) != 0) {
                    pf.top = -10000;
                    pf.left = -10000;
                    pf.bottom = 10000;
                    pf.right = 10000;
                    if (type != 2013) {
                        vf.top = -10000;
                        vf.left = -10000;
                        df.top = -10000;
                        df.left = -10000;
                        vf.bottom = 10000;
                        vf.right = 10000;
                        df.bottom = 10000;
                        df.right = 10000;
                    }
                }
                if (!sTmpLastParentFrame.equals(dfu)) {
                    windowFrames.setContentChanged(true);
                }
                if (attrs.type == 2043) {
                    df.set(displayFrames2.mUnrestricted);
                    pf.set(displayFrames2.mUnrestricted);
                    dfu.set(displayFrames2.mUnrestricted);
                }
                win.computeFrame(displayFrames2);
                adjustDisplayFramesForFlexibleInsets(win, displayFrames2);
                if (type == 2011) {
                    offsetInputMethodWindowLw(win, displayFrames2);
                }
                if (type != 2031) {
                }
            }
            i3 = 2;
            requestedFullscreen = true;
            if ((requestedSysUiFl & 2) == 0) {
                requestedHideNavigation = true;
            } else {
                requestedHideNavigation = true;
            }
            if (attrs3.isFullscreen()) {
                z3 = false;
            } else {
                z3 = false;
            }
            boolean floatingInScreenWindow3 = z3;
            if (cutoutMode == 3) {
                attrs = attrs3;
                windowFrames = windowFrames3;
            } else {
                displayCutoutSafeExceptMaybeBars = sTmpDisplayCutoutSafeExceptMaybeBarsRect;
                displayCutoutSafeExceptMaybeBars.set(displayFrames2.mDisplayCutoutSafe);
                if (cutoutMode != 1) {
                    attrs = attrs3;
                    i4 = Integer.MIN_VALUE;
                } else {
                    attrs = attrs3;
                    if (displayFrames2.mDisplayWidth < displayFrames2.mDisplayHeight) {
                        i4 = Integer.MIN_VALUE;
                        displayCutoutSafeExceptMaybeBars.top = Integer.MIN_VALUE;
                        displayCutoutSafeExceptMaybeBars.bottom = Integer.MAX_VALUE;
                    } else {
                        i4 = Integer.MIN_VALUE;
                        displayCutoutSafeExceptMaybeBars.left = Integer.MIN_VALUE;
                        displayCutoutSafeExceptMaybeBars.right = Integer.MAX_VALUE;
                    }
                }
                if (layoutInScreen) {
                    displayCutoutSafeExceptMaybeBars.top = i4;
                }
                if (layoutInScreen) {
                    i5 = 4;
                } else {
                    i5 = 4;
                }
                if (type == 2011) {
                    displayCutoutSafeExceptMaybeBars.bottom = Integer.MAX_VALUE;
                }
                if (!attachedInParent) {
                    windowFrames = windowFrames3;
                } else {
                    windowFrames = windowFrames3;
                }
                pf.intersectUnchecked(displayCutoutSafeExceptMaybeBars);
            }
            df.intersectUnchecked(displayFrames2.mDisplayCutoutSafe);
            if ((fl & 512) != 0) {
                pf.top = -10000;
                pf.left = -10000;
                pf.bottom = 10000;
                pf.right = 10000;
                if (type != 2013) {
                    vf.top = -10000;
                    vf.left = -10000;
                    df.top = -10000;
                    df.left = -10000;
                    vf.bottom = 10000;
                    vf.right = 10000;
                    df.bottom = 10000;
                    df.right = 10000;
                }
            }
            if (!sTmpLastParentFrame.equals(dfu)) {
                windowFrames.setContentChanged(true);
            }
            if (attrs.type == 2043) {
                df.set(displayFrames2.mUnrestricted);
                pf.set(displayFrames2.mUnrestricted);
                dfu.set(displayFrames2.mUnrestricted);
            }
            win.computeFrame(displayFrames2);
            adjustDisplayFramesForFlexibleInsets(win, displayFrames2);
            if (type == 2011) {
                offsetInputMethodWindowLw(win, displayFrames2);
            }
            if (type != 2031) {
            }
        }
    }

    private void adjustDisplayFramesForFlexibleInsets(WindowState win, DisplayFrames displayFrames) {
        if (win == this.mStatusBarAlt) {
            adjustDisplayFramesForWindow(win, this.mStatusBarAltPosition, displayFrames);
            return;
        }
        if (win == this.mNavigationBarAlt) {
            adjustDisplayFramesForWindow(win, this.mNavigationBarAltPosition, displayFrames);
        } else if (win == this.mClimateBarAlt) {
            adjustDisplayFramesForWindow(win, this.mClimateBarAltPosition, displayFrames);
        } else if (win == this.mExtraNavBarAlt) {
            adjustDisplayFramesForWindow(win, this.mExtraNavBarAltPosition, displayFrames);
        }
    }

    private static void adjustDisplayFramesForWindow(WindowState win, int position, DisplayFrames displayFrames) {
        Rect frame = win.getFrameLw();
        if (position == 1) {
            Rect rect = displayFrames.mStable;
            Rect rect2 = displayFrames.mStableFullscreen;
            int i = frame.right;
            rect2.left = i;
            rect.left = i;
            return;
        }
        if (position == 2) {
            Rect rect3 = displayFrames.mStable;
            Rect rect4 = displayFrames.mStableFullscreen;
            int i2 = frame.left;
            rect4.right = i2;
            rect3.right = i2;
            return;
        }
        if (position != 4) {
            if (position == 8) {
                displayFrames.mStable.top = frame.bottom;
                return;
            }
            return;
        }
        Rect rect5 = displayFrames.mStable;
        Rect rect6 = displayFrames.mStableFullscreen;
        int i3 = frame.top;
        rect6.bottom = i3;
        rect5.bottom = i3;
    }

    private void layoutWallpaper(DisplayFrames displayFrames, Rect pf, Rect df, Rect cf) {
        df.set(displayFrames.mUnrestricted);
        pf.set(displayFrames.mUnrestricted);
        cf.set(displayFrames.mUnrestricted);
    }

    private void offsetInputMethodWindowLw(WindowState win, DisplayFrames displayFrames) {
        int rotation = displayFrames.mRotation;
        int navBarPosition = navigationBarPosition(displayFrames.mDisplayWidth, displayFrames.mDisplayHeight, rotation);
        int top = Math.max(win.getDisplayFrameLw().top, win.getContentFrameLw().top) + win.getGivenContentInsetsLw().top;
        displayFrames.mContent.bottom = Math.min(displayFrames.mContent.bottom, top);
        if (navBarPosition == 4) {
            int uimode = this.mService.mPolicy.getUiMode();
            int navFrameHeight = getNavigationBarFrameHeight(rotation, uimode);
            displayFrames.mContent.bottom = Math.min(displayFrames.mContent.bottom, displayFrames.mUnrestricted.bottom - navFrameHeight);
        }
        displayFrames.mVoiceContent.bottom = Math.min(displayFrames.mVoiceContent.bottom, top);
        int top2 = win.getVisibleFrameLw().top + win.getGivenVisibleInsetsLw().top;
        displayFrames.mCurrent.bottom = Math.min(displayFrames.mCurrent.bottom, top2);
    }

    private void offsetVoiceInputWindowLw(WindowState win, DisplayFrames displayFrames) {
        int top = Math.max(win.getDisplayFrameLw().top, win.getContentFrameLw().top);
        int top2 = top + win.getGivenContentInsetsLw().top;
        displayFrames.mVoiceContent.bottom = Math.min(displayFrames.mVoiceContent.bottom, top2);
    }

    WindowState getTopFullscreenOpaqueWindow() {
        return this.mTopFullscreenOpaqueWindowState;
    }

    boolean isTopLayoutFullscreen() {
        return this.mTopIsFullscreen;
    }

    public void beginPostLayoutPolicyLw() {
        this.mTopFullscreenOpaqueWindowState = null;
        this.mTopFullscreenOpaqueOrDimmingWindowState = null;
        this.mTopDockedOpaqueWindowState = null;
        this.mTopDockedOpaqueOrDimmingWindowState = null;
        this.mForceStatusBar = false;
        this.mForcingShowNavBar = false;
        this.mForcingShowNavBarLayer = -1;
        this.mAllowLockscreenWhenOn = false;
        this.mShowingDream = false;
        this.mShowingMegaBacklight = false;
        this.mIsFreeformWindowOverlappingWithNavBar = false;
    }

    public void applyPostLayoutPolicyLw(WindowState win, WindowManager.LayoutParams attrs, WindowState attached, WindowState imeTarget) {
        boolean affectsSystemUi = win.canAffectSystemUiFlags();
        this.mService.mPolicy.applyKeyguardPolicyLw(win, imeTarget);
        int fl = PolicyControl.getWindowFlags(win, attrs);
        if (this.mTopFullscreenOpaqueWindowState == null && affectsSystemUi && attrs.type == 2011) {
            this.mForcingShowNavBar = true;
            this.mForcingShowNavBarLayer = win.getSurfaceLayer();
        }
        boolean appWindow = attrs.type >= 1 && attrs.type < 2000;
        int windowingMode = win.getWindowingMode();
        boolean inFullScreenOrSplitScreenSecondaryWindowingMode = windowingMode == 1 || windowingMode == 4;
        if (this.mTopFullscreenOpaqueWindowState == null && affectsSystemUi) {
            if ((fl & 2048) != 0) {
                this.mForceStatusBar = true;
            }
            if (win.isDreamWindow() && (!this.mDreamingLockscreen || (win.isVisibleLw() && win.hasDrawnLw()))) {
                this.mShowingDream = true;
                appWindow = true;
            }
            if (attrs.type == 2044 && win.isVisibleLw() && win.hasDrawnLw()) {
                this.mShowingMegaBacklight = true;
                appWindow = true;
            }
            if (appWindow && attached == null && attrs.isFullscreen() && inFullScreenOrSplitScreenSecondaryWindowingMode) {
                this.mTopFullscreenOpaqueWindowState = win;
                if (this.mTopFullscreenOpaqueOrDimmingWindowState == null) {
                    this.mTopFullscreenOpaqueOrDimmingWindowState = win;
                }
                if ((fl & 1) != 0) {
                    this.mAllowLockscreenWhenOn = true;
                }
            }
        }
        if (affectsSystemUi && attrs.type == 2031) {
            if (this.mTopFullscreenOpaqueWindowState == null) {
                this.mTopFullscreenOpaqueWindowState = win;
                if (this.mTopFullscreenOpaqueOrDimmingWindowState == null) {
                    this.mTopFullscreenOpaqueOrDimmingWindowState = win;
                }
            }
            if (this.mTopDockedOpaqueWindowState == null) {
                this.mTopDockedOpaqueWindowState = win;
                if (this.mTopDockedOpaqueOrDimmingWindowState == null) {
                    this.mTopDockedOpaqueOrDimmingWindowState = win;
                }
            }
        }
        if (this.mTopFullscreenOpaqueOrDimmingWindowState == null && affectsSystemUi && win.isDimming() && inFullScreenOrSplitScreenSecondaryWindowingMode) {
            this.mTopFullscreenOpaqueOrDimmingWindowState = win;
        }
        if (this.mTopDockedOpaqueWindowState == null && affectsSystemUi && appWindow && attached == null && attrs.isFullscreen() && windowingMode == 3) {
            this.mTopDockedOpaqueWindowState = win;
            if (this.mTopDockedOpaqueOrDimmingWindowState == null) {
                this.mTopDockedOpaqueOrDimmingWindowState = win;
            }
        }
        WindowState navBarWin = hasNavigationBar() ? this.mNavigationBar : null;
        if (!this.mIsFreeformWindowOverlappingWithNavBar && win.inFreeformWindowingMode() && isOverlappingWithNavBar(win, navBarWin)) {
            this.mIsFreeformWindowOverlappingWithNavBar = true;
        }
        if (this.mTopDockedOpaqueOrDimmingWindowState == null && affectsSystemUi && win.isDimming() && windowingMode == 3) {
            this.mTopDockedOpaqueOrDimmingWindowState = win;
        }
    }

    public int finishPostLayoutPolicyLw() {
        int changes = 0;
        boolean topIsFullscreen = false;
        if (!this.mShowingDream) {
            this.mDreamingLockscreen = this.mService.mPolicy.isKeyguardShowingAndNotOccluded();
        }
        if (!this.mShowingMegaBacklight) {
            if (this.mMegaBacklightSleepTokenNeeded) {
                this.mMegaBacklightSleepTokenNeeded = false;
                this.mHandler.obtainMessage(6, 0, 1).sendToTarget();
            }
        } else if (!this.mMegaBacklightSleepTokenNeeded) {
            this.mMegaBacklightSleepTokenNeeded = true;
            this.mHandler.obtainMessage(6, 1, 1).sendToTarget();
        }
        if (getStatusBar() != null) {
            boolean forceShowStatusBar = (getStatusBar().getAttrs().privateFlags & 4096) != 0;
            WindowState windowState = this.mNotificationShade;
            boolean notificationShadeForcesShowingNavigation = (windowState == null || (windowState.getAttrs().privateFlags & 8388608) == 0) ? false : true;
            boolean topAppHidesStatusBar = topAppHidesStatusBar();
            if (this.mForceStatusBar || forceShowStatusBar) {
                if (this.mStatusBarController.setBarShowingLw(true)) {
                    changes = 0 | 1;
                }
                topIsFullscreen = this.mTopIsFullscreen && this.mStatusBar.isAnimatingLw();
                if (notificationShadeForcesShowingNavigation && this.mStatusBarController.isTransientShowing()) {
                    StatusBarController statusBarController = this.mStatusBarController;
                    int i = this.mLastSystemUiFlags;
                    statusBarController.updateVisibilityLw(false, i, i);
                }
            } else if (this.mTopFullscreenOpaqueWindowState != null) {
                topIsFullscreen = topAppHidesStatusBar;
                if (this.mStatusBarController.isTransientShowing()) {
                    if (this.mStatusBarController.setBarShowingLw(true)) {
                        changes = 0 | 1;
                    }
                } else if (topIsFullscreen && !this.mDisplayContent.getDefaultTaskDisplayArea().isStackVisible(3)) {
                    if (this.mStatusBarController.setBarShowingLw(false)) {
                        changes = 0 | 1;
                    }
                } else {
                    if (this.mStatusBarController.setBarShowingLw(true)) {
                        changes = 0 | 1;
                    }
                    topAppHidesStatusBar = false;
                }
            }
            this.mStatusBarController.setTopAppHidesStatusBar(topAppHidesStatusBar);
        }
        boolean forceShowStatusBar2 = this.mTopIsFullscreen;
        if (forceShowStatusBar2 != topIsFullscreen) {
            if (!topIsFullscreen) {
                changes |= 1;
            }
            this.mTopIsFullscreen = topIsFullscreen;
        }
        if ((updateSystemUiVisibilityLw() & SYSTEM_UI_CHANGING_LAYOUT) != 0) {
            changes |= 1;
        }
        boolean z = this.mShowingDream;
        if (z != this.mLastShowingDream) {
            this.mLastShowingDream = z;
            this.mService.notifyShowingDreamChanged();
        }
        this.mService.mPolicy.setAllowLockscreenWhenOn(getDisplayId(), this.mAllowLockscreenWhenOn);
        return changes;
    }

    boolean topAppHidesStatusBar() {
        WindowState windowState = this.mTopFullscreenOpaqueWindowState;
        if (windowState == null || this.mForceShowSystemBars) {
            return false;
        }
        WindowManager.LayoutParams attrs = windowState.getAttrs();
        int fl = PolicyControl.getWindowFlags(null, attrs);
        int sysui = PolicyControl.getSystemUiVisibility(null, attrs);
        InsetsSource request = this.mTopFullscreenOpaqueWindowState.getRequestedInsetsState().peekSource(0);
        return ((fl & 1024) == 0 && (sysui & 4) == 0 && (request == null || request.isVisible())) ? false : true;
    }

    public void switchUser() {
        updateCurrentUserResources();
    }

    public void onOverlayChangedLw() {
        updateCurrentUserResources();
        onConfigurationChanged();
        this.mSystemGestures.onConfigurationChanged();
    }

    public void onConfigurationChanged() {
        DisplayRotation displayRotation = this.mDisplayContent.getDisplayRotation();
        Resources res = getCurrentUserResources();
        int portraitRotation = displayRotation.getPortraitRotation();
        int upsideDownRotation = displayRotation.getUpsideDownRotation();
        int landscapeRotation = displayRotation.getLandscapeRotation();
        int seascapeRotation = displayRotation.getSeascapeRotation();
        int uiMode = this.mService.mPolicy.getUiMode();
        if (hasStatusBar()) {
            int[] iArr = this.mStatusBarHeightForRotation;
            int dimensionPixelSize = res.getDimensionPixelSize(R.dimen.action_bar_button_max_width);
            iArr[upsideDownRotation] = dimensionPixelSize;
            iArr[portraitRotation] = dimensionPixelSize;
            int[] iArr2 = this.mStatusBarHeightForRotation;
            int dimensionPixelSize2 = res.getDimensionPixelSize(R.dimen.activity_chooser_popup_min_width);
            iArr2[seascapeRotation] = dimensionPixelSize2;
            iArr2[landscapeRotation] = dimensionPixelSize2;
        } else {
            int[] iArr3 = this.mStatusBarHeightForRotation;
            iArr3[seascapeRotation] = 0;
            iArr3[landscapeRotation] = 0;
            iArr3[upsideDownRotation] = 0;
            iArr3[portraitRotation] = 0;
        }
        int[] iArr4 = this.mNavigationBarHeightForRotationDefault;
        int dimensionPixelSize3 = res.getDimensionPixelSize(R.dimen.action_button_min_height_material);
        iArr4[upsideDownRotation] = dimensionPixelSize3;
        iArr4[portraitRotation] = dimensionPixelSize3;
        int[] iArr5 = this.mNavigationBarHeightForRotationDefault;
        int dimensionPixelSize4 = res.getDimensionPixelSize(R.dimen.action_bar_subtitle_top_margin_material);
        iArr5[seascapeRotation] = dimensionPixelSize4;
        iArr5[landscapeRotation] = dimensionPixelSize4;
        int[] iArr6 = this.mNavigationBarFrameHeightForRotationDefault;
        int dimensionPixelSize5 = res.getDimensionPixelSize(R.dimen.alertDialog_material_letter_spacing_title);
        iArr6[upsideDownRotation] = dimensionPixelSize5;
        iArr6[portraitRotation] = dimensionPixelSize5;
        int[] iArr7 = this.mNavigationBarFrameHeightForRotationDefault;
        int dimensionPixelSize6 = res.getDimensionPixelSize(R.dimen.indeterminate_progress_alpha_30);
        iArr7[seascapeRotation] = dimensionPixelSize6;
        iArr7[landscapeRotation] = dimensionPixelSize6;
        int[] iArr8 = this.mNavigationBarWidthForRotationDefault;
        int dimensionPixelSize7 = res.getDimensionPixelSize(R.dimen.alertDialog_material_top_margin);
        iArr8[seascapeRotation] = dimensionPixelSize7;
        iArr8[landscapeRotation] = dimensionPixelSize7;
        iArr8[upsideDownRotation] = dimensionPixelSize7;
        iArr8[portraitRotation] = dimensionPixelSize7;
        this.mNavBarOpacityMode = res.getInteger(R.integer.config_downloadDataDirSize);
        this.mLeftGestureInset = this.mGestureNavigationSettingsObserver.getLeftSensitivity(res);
        this.mRightGestureInset = this.mGestureNavigationSettingsObserver.getRightSensitivity(res);
        this.mNavButtonForcedVisible = this.mGestureNavigationSettingsObserver.areNavigationButtonForcedVisible();
        this.mNavigationBarLetsThroughTaps = res.getBoolean(R.bool.config_cecQuerySadMp3Disabled_default);
        this.mNavigationBarAlwaysShowOnSideGesture = res.getBoolean(R.bool.config_cecQuerySadMax_userConfigurable);
        this.mBottomGestureAdditionalInset = res.getDimensionPixelSize(R.dimen.action_bar_overflow_padding_start_material) - getNavigationBarFrameHeight(portraitRotation, uiMode);
        updateConfigurationAndScreenSizeDependentBehaviors();
    }

    void updateConfigurationAndScreenSizeDependentBehaviors() {
        Resources res = getCurrentUserResources();
        this.mNavigationBarCanMove = this.mDisplayContent.mBaseDisplayWidth != this.mDisplayContent.mBaseDisplayHeight && res.getBoolean(R.bool.config_allow3rdPartyAppOnInternal);
        this.mDisplayContent.getDisplayRotation().updateUserDependentConfiguration(res);
    }

    private void updateCurrentUserResources() {
        int userId = this.mService.mAmInternal.getCurrentUserId();
        Context uiContext = getSystemUiContext();
        if (userId == 0) {
            this.mCurrentUserResources = uiContext.getResources();
        } else {
            LoadedApk pi = ActivityThread.currentActivityThread().getPackageInfo(uiContext.getPackageName(), (CompatibilityInfo) null, 0, userId);
            this.mCurrentUserResources = ResourcesManager.getInstance().getResources((IBinder) null, pi.getResDir(), (String[]) null, pi.getOverlayDirs(), pi.getApplicationInfo().sharedLibraryFiles, this.mDisplayContent.getDisplayId(), (Configuration) null, uiContext.getResources().getCompatibilityInfo(), (ClassLoader) null, (List) null);
        }
    }

    Resources getCurrentUserResources() {
        if (this.mCurrentUserResources == null) {
            updateCurrentUserResources();
        }
        return this.mCurrentUserResources;
    }

    Context getContext() {
        return this.mContext;
    }

    Context getSystemUiContext() {
        return this.mUiContext;
    }

    private int getNavigationBarWidth(int rotation, int uiMode) {
        return this.mNavigationBarWidthForRotationDefault[rotation];
    }

    void notifyDisplayReady() {
        this.mHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$P8D337iYIcX04InNbwQCJWD0nmU
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$notifyDisplayReady$13$DisplayPolicy();
            }
        });
    }

    public /* synthetic */ void lambda$notifyDisplayReady$13$DisplayPolicy() {
        int displayId = getDisplayId();
        getStatusBarManagerInternal().onDisplayReady(displayId);
        WallpaperManagerInternal wpMgr = (WallpaperManagerInternal) LocalServices.getService(WallpaperManagerInternal.class);
        if (wpMgr != null) {
            wpMgr.onDisplayReady(displayId);
        }
    }

    public int getNonDecorDisplayWidth(int fullWidth, int fullHeight, int rotation, int uiMode, DisplayCutout displayCutout) {
        int navBarPosition;
        int width = fullWidth;
        if (hasNavigationBar() && ((navBarPosition = navigationBarPosition(fullWidth, fullHeight, rotation)) == 1 || navBarPosition == 2)) {
            width -= getNavigationBarWidth(rotation, uiMode);
        }
        if (displayCutout != null) {
            return width - (displayCutout.getSafeInsetLeft() + displayCutout.getSafeInsetRight());
        }
        return width;
    }

    private int getNavigationBarHeight(int rotation, int uiMode) {
        return this.mNavigationBarHeightForRotationDefault[rotation];
    }

    private int getNavigationBarFrameHeight(int rotation, int uiMode) {
        return this.mNavigationBarFrameHeightForRotationDefault[rotation];
    }

    public int getNonDecorDisplayHeight(int fullWidth, int fullHeight, int rotation, int uiMode, DisplayCutout displayCutout) {
        int height = fullHeight;
        if (hasNavigationBar()) {
            int navBarPosition = navigationBarPosition(fullWidth, fullHeight, rotation);
            if (navBarPosition == 4) {
                height -= getNavigationBarHeight(rotation, uiMode);
            }
        }
        if (displayCutout != null) {
            return height - (displayCutout.getSafeInsetTop() + displayCutout.getSafeInsetBottom());
        }
        return height;
    }

    public int getConfigDisplayWidth(int fullWidth, int fullHeight, int rotation, int uiMode, DisplayCutout displayCutout) {
        return getNonDecorDisplayWidth(fullWidth, fullHeight, rotation, uiMode, displayCutout);
    }

    public int getConfigDisplayHeight(int fullWidth, int fullHeight, int rotation, int uiMode, DisplayCutout displayCutout) {
        int statusBarHeight = this.mStatusBarHeightForRotation[rotation];
        if (displayCutout != null) {
            statusBarHeight = Math.max(0, statusBarHeight - displayCutout.getSafeInsetTop());
        }
        return getNonDecorDisplayHeight(fullWidth, fullHeight, rotation, uiMode, displayCutout) - statusBarHeight;
    }

    float getWindowCornerRadius() {
        if (this.mDisplayContent.getDisplay().getType() == 1) {
            return ScreenDecorationsUtils.getWindowCornerRadius(this.mContext.getResources());
        }
        return 0.0f;
    }

    boolean isShowingDreamLw() {
        return this.mShowingDream;
    }

    void convertNonDecorInsetsToStableInsets(Rect inOutInsets, int rotation) {
        inOutInsets.top = Math.max(inOutInsets.top, this.mStatusBarHeightForRotation[rotation]);
    }

    public void getStableInsetsLw(int displayRotation, int displayWidth, int displayHeight, DisplayCutout displayCutout, Rect outInsets) {
        outInsets.setEmpty();
        getNonDecorInsetsLw(displayRotation, displayWidth, displayHeight, displayCutout, outInsets);
        convertNonDecorInsetsToStableInsets(outInsets, displayRotation);
    }

    public void getNonDecorInsetsLw(int displayRotation, int displayWidth, int displayHeight, DisplayCutout displayCutout, Rect outInsets) {
        outInsets.setEmpty();
        if (hasNavigationBar()) {
            int uiMode = this.mService.mPolicy.getUiMode();
            int position = navigationBarPosition(displayWidth, displayHeight, displayRotation);
            if (position == 4) {
                outInsets.bottom = getNavigationBarHeight(displayRotation, uiMode);
            } else if (position == 2) {
                outInsets.right = getNavigationBarWidth(displayRotation, uiMode);
            } else if (position == 1) {
                outInsets.left = getNavigationBarWidth(displayRotation, uiMode);
            }
        }
        if (displayCutout != null) {
            outInsets.left += displayCutout.getSafeInsetLeft();
            outInsets.top += displayCutout.getSafeInsetTop();
            outInsets.right += displayCutout.getSafeInsetRight();
            outInsets.bottom += displayCutout.getSafeInsetBottom();
        }
    }

    public void setForwardedInsets(Insets forwardedInsets) {
        this.mForwardedInsets = forwardedInsets;
    }

    public Insets getForwardedInsets() {
        return this.mForwardedInsets;
    }

    int navigationBarPosition(int displayWidth, int displayHeight, int displayRotation) {
        int i = this.mMegaNavigationBarPosition;
        if (i != -1) {
            return i;
        }
        if (navigationBarCanMove() && displayWidth > displayHeight) {
            if (displayRotation == 3) {
                return 1;
            }
            if (displayRotation == 1) {
                return 2;
            }
            return 4;
        }
        return 4;
    }

    public int getNavBarPosition() {
        return this.mNavigationBarPosition;
    }

    int getAlternateStatusBarPosition() {
        return this.mStatusBarAltPosition;
    }

    int getAlternateNavBarPosition() {
        return this.mNavigationBarAltPosition;
    }

    public int focusChangedLw(WindowState lastFocus, WindowState newFocus) {
        this.mFocusedWindow = newFocus;
        this.mLastFocusedWindow = lastFocus;
        if (this.mDisplayContent.isDefaultDisplay) {
            this.mService.mPolicy.onDefaultDisplayFocusChangedLw(newFocus);
        }
        if ((updateSystemUiVisibilityLw() & SYSTEM_UI_CHANGING_LAYOUT) != 0) {
            return 1;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMegaBacklightSleepToken(boolean acquire) {
        int displayId = getDisplayId();
        Slog.d(TAG, "updateMegaBacklightSleepToken acquire=" + acquire + ", displayId=" + displayId);
        if (acquire) {
            this.mMegaBacklightSleepToken.acquire(displayId);
        } else {
            this.mMegaBacklightSleepToken.release(displayId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestTransientBars(WindowState swipeTarget) {
        if (!this.mService.mPolicy.isUserSetupComplete()) {
            return;
        }
        if (ViewRootImpl.sNewInsetsMode == 2) {
            InsetsSourceProvider provider = swipeTarget.getControllableInsetProvider();
            InsetsControlTarget controlTarget = provider != null ? provider.getControlTarget() : null;
            if (controlTarget == null || controlTarget == getNotificationShade()) {
                return;
            }
            InsetsState requestedState = controlTarget.getRequestedInsetsState();
            InsetsSource nbSource = requestedState.peekSource(1);
            InsetsSource sbSource = requestedState.peekSource(0);
            InsetsSource enbSource = requestedState.peekSource(19);
            InsetsSource cbSource = requestedState.peekSource(18);
            int restorePositionTypes = ((nbSource == null || !nbSource.isVisible()) ? 0 : WindowInsets.Type.navigationBars()) | ((sbSource == null || !sbSource.isVisible()) ? 0 : WindowInsets.Type.statusBars()) | ((this.mExtraNavBarAlt == null || enbSource == null || !enbSource.isVisible()) ? 0 : WindowInsets.Type.navigationBars()) | ((this.mClimateBarAlt == null || cbSource == null || !cbSource.isVisible()) ? 0 : WindowInsets.Type.statusBars());
            if (swipeTarget == this.mNavigationBar && (WindowInsets.Type.navigationBars() & restorePositionTypes) != 0) {
                controlTarget.showInsets(WindowInsets.Type.navigationBars(), false);
                return;
            }
            if (controlTarget.canShowTransient()) {
                int[] showTypesForSwipe = SHOW_TYPES_FOR_SWIPE;
                Context context = this.mContext;
                if (context != null && context.getResources().getBoolean(R.bool.config_allowPriorityVibrationsInLowPowerMode)) {
                    restorePositionTypes = restorePositionTypes & (~WindowInsets.Type.statusBars()) & (~WindowInsets.Type.navigationBars());
                    showTypesForSwipe = new int[]{18, 19};
                }
                this.mDisplayContent.getInsetsPolicy().showTransient(showTypesForSwipe);
                controlTarget.showInsets(restorePositionTypes, false);
            } else {
                int types = WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars();
                Context context2 = this.mContext;
                if (context2 != null && context2.getResources().getBoolean(R.bool.config_allowPriorityVibrationsInLowPowerMode)) {
                    types = 0;
                }
                controlTarget.showInsets(types, false);
            }
        } else {
            boolean sb = this.mStatusBarController.checkShowTransientBarLw();
            boolean nb = this.mNavigationBarController.checkShowTransientBarLw() && !isNavBarEmpty(this.mLastSystemUiFlags);
            if (sb || nb) {
                if (!nb && swipeTarget == this.mNavigationBar) {
                    return;
                }
                if (sb) {
                    this.mStatusBarController.showTransient();
                }
                if (nb) {
                    this.mNavigationBarController.showTransient();
                }
                updateSystemUiVisibilityLw();
            }
        }
        this.mImmersiveModeConfirmation.confirmCurrentPrompt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disposeInputConsumer(WindowManagerPolicy.InputConsumer inputConsumer) {
        if (inputConsumer != null) {
            inputConsumer.dispose();
        }
    }

    boolean isKeyguardShowing() {
        return this.mService.mPolicy.isKeyguardShowing();
    }

    private boolean isKeyguardOccluded() {
        return this.mService.mPolicy.isKeyguardOccluded();
    }

    InsetsPolicy getInsetsPolicy() {
        return this.mDisplayContent.getInsetsPolicy();
    }

    void resetSystemUiVisibilityLw() {
        this.mLastSystemUiFlags = 0;
        updateSystemUiVisibilityLw();
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01af  */
    /* JADX WARN: Code duplicated, block: B:102:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:98:0x0177  */
    int updateSystemUiVisibilityLw() {
        WindowState winCandidate;
        int tmpVisibility;
        boolean z;
        boolean isImmersive;
        boolean isImmersive2;
        Rect fullscreenStackBounds;
        Rect dockedStackBounds;
        AppearanceRegion[] appearanceRegionArr;
        WindowState windowState;
        WindowState winCandidate2 = this.mFocusedWindow;
        if (winCandidate2 == null) {
            winCandidate2 = this.mTopFullscreenOpaqueWindowState;
        }
        if (winCandidate2 != null) {
            if (winCandidate2.getAttrs().token != this.mImmersiveModeConfirmation.getWindowToken()) {
                winCandidate = winCandidate2;
            } else {
                WindowState windowState2 = this.mLastFocusedWindow;
                boolean lastFocusCanReceiveKeys = windowState2 != null && windowState2.canReceiveKeys();
                if (isKeyguardShowing() && !isKeyguardOccluded()) {
                    windowState = this.mNotificationShade;
                } else {
                    windowState = lastFocusCanReceiveKeys ? this.mLastFocusedWindow : this.mTopFullscreenOpaqueWindowState;
                }
                WindowState winCandidate3 = windowState;
                if (winCandidate3 == null) {
                    return 0;
                }
                winCandidate = winCandidate3;
            }
            WindowState win = winCandidate;
            this.mDisplayContent.getInsetsPolicy().updateBarControlTarget(win);
            int tmpVisibility2 = PolicyControl.getSystemUiVisibility(win, null) & (~this.mResettingSystemUiFlags) & (~this.mForceClearedSystemUiFlags);
            if (this.mForcingShowNavBar && win.getSurfaceLayer() < this.mForcingShowNavBarLayer) {
                tmpVisibility = tmpVisibility2 & (~PolicyControl.adjustClearableFlags(win, 7));
            } else {
                tmpVisibility = tmpVisibility2;
            }
            int fullscreenAppearance = updateLightStatusBarAppearanceLw(0, this.mTopFullscreenOpaqueWindowState, this.mTopFullscreenOpaqueOrDimmingWindowState);
            int dockedAppearance = updateLightStatusBarAppearanceLw(0, this.mTopDockedOpaqueWindowState, this.mTopDockedOpaqueOrDimmingWindowState);
            boolean inSplitScreen = this.mService.mRoot.getDefaultTaskDisplayArea().isSplitScreenModeActivated();
            if (inSplitScreen) {
                this.mService.getStackBounds(3, 1, this.mDockedStackBounds);
            } else {
                this.mDockedStackBounds.setEmpty();
            }
            this.mService.getStackBounds(inSplitScreen ? 4 : 1, 0, this.mNonDockedStackBounds);
            Pair<Integer, WindowState> result = updateSystemBarsLw(win, this.mLastSystemUiFlags, tmpVisibility);
            final int visibility = ((Integer) result.first).intValue();
            WindowState navColorWin = (WindowState) result.second;
            final boolean isNavbarColorManagedByIme = navColorWin != null && navColorWin == this.mDisplayContent.mInputMethodWindow;
            int opaqueAppearance = InsetsFlags.getAppearance(visibility) & 3;
            int appearance = ViewRootImpl.sNewInsetsMode == 2 ? updateLightNavigationBarAppearanceLw(win.mAttrs.insetsFlags.appearance, this.mTopFullscreenOpaqueWindowState, this.mTopFullscreenOpaqueOrDimmingWindowState, this.mDisplayContent.mInputMethodWindow, navColorWin) | opaqueAppearance : InsetsFlags.getAppearance(visibility);
            int diff = this.mLastSystemUiFlags ^ visibility;
            InsetsPolicy insetsPolicy = getInsetsPolicy();
            boolean isFullscreen = ((visibility & 6) == 0 && (PolicyControl.getWindowFlags(win, win.mAttrs) & 1024) == 0 && (getStatusBar() == null || !insetsPolicy.isHidden(0)) && (getNavigationBar() == null || !insetsPolicy.isHidden(1))) ? false : true;
            int behavior = win.mAttrs.insetsFlags.behavior;
            if ((visibility & 6144) == 0 && behavior != 1) {
                if (behavior != 2) {
                    z = false;
                }
                isImmersive = z;
                if (diff != 0 && this.mLastAppearance == appearance && this.mLastFullscreenAppearance == fullscreenAppearance && this.mLastDockedAppearance == dockedAppearance && this.mLastBehavior == behavior && this.mLastFocusIsFullscreen == isFullscreen) {
                    isImmersive2 = isImmersive;
                    if (this.mLastFocusIsImmersive == isImmersive2 && this.mLastNonDockedStackBounds.equals(this.mNonDockedStackBounds) && this.mLastDockedStackBounds.equals(this.mDockedStackBounds)) {
                        return 0;
                    }
                } else {
                    isImmersive2 = isImmersive;
                }
                final Pair<int[], int[]> transientState = getTransientState(visibility, this.mLastSystemUiFlags);
                this.mLastSystemUiFlags = visibility;
                this.mLastAppearance = appearance;
                this.mLastFullscreenAppearance = fullscreenAppearance;
                this.mLastDockedAppearance = dockedAppearance;
                this.mLastBehavior = behavior;
                this.mLastFocusIsFullscreen = isFullscreen;
                this.mLastFocusIsImmersive = isImmersive2;
                this.mLastNonDockedStackBounds.set(this.mNonDockedStackBounds);
                this.mLastDockedStackBounds.set(this.mDockedStackBounds);
                fullscreenStackBounds = new Rect(this.mNonDockedStackBounds);
                dockedStackBounds = new Rect(this.mDockedStackBounds);
                if (inSplitScreen) {
                    appearanceRegionArr = new AppearanceRegion[]{new AppearanceRegion(fullscreenAppearance, fullscreenStackBounds), new AppearanceRegion(dockedAppearance, dockedStackBounds)};
                } else {
                    appearanceRegionArr = new AppearanceRegion[]{new AppearanceRegion(fullscreenAppearance, fullscreenStackBounds)};
                }
                final AppearanceRegion[] appearanceRegions = appearanceRegionArr;
                final String cause = win.toString();
                final int tmpVisibility3 = appearance;
                final boolean z2 = isFullscreen;
                final boolean z3 = isImmersive2;
                this.mHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$updateSystemUiVisibilityLw$14$DisplayPolicy(visibility, cause, transientState, tmpVisibility3, appearanceRegions, isNavbarColorManagedByIme, z2, z3);
                    }
                });
                return diff;
            }
            z = true;
            isImmersive = z;
            if (diff != 0) {
                isImmersive2 = isImmersive;
            } else {
                isImmersive2 = isImmersive;
            }
            final Pair transientState2 = getTransientState(visibility, this.mLastSystemUiFlags);
            this.mLastSystemUiFlags = visibility;
            this.mLastAppearance = appearance;
            this.mLastFullscreenAppearance = fullscreenAppearance;
            this.mLastDockedAppearance = dockedAppearance;
            this.mLastBehavior = behavior;
            this.mLastFocusIsFullscreen = isFullscreen;
            this.mLastFocusIsImmersive = isImmersive2;
            this.mLastNonDockedStackBounds.set(this.mNonDockedStackBounds);
            this.mLastDockedStackBounds.set(this.mDockedStackBounds);
            fullscreenStackBounds = new Rect(this.mNonDockedStackBounds);
            dockedStackBounds = new Rect(this.mDockedStackBounds);
            if (inSplitScreen) {
                appearanceRegionArr = new AppearanceRegion[]{new AppearanceRegion(fullscreenAppearance, fullscreenStackBounds), new AppearanceRegion(dockedAppearance, dockedStackBounds)};
            } else {
                appearanceRegionArr = new AppearanceRegion[]{new AppearanceRegion(fullscreenAppearance, fullscreenStackBounds)};
            }
            final AppearanceRegion[] appearanceRegions2 = appearanceRegionArr;
            final String cause2 = win.toString();
            final int tmpVisibility4 = appearance;
            final boolean z4 = isFullscreen;
            final boolean z5 = isImmersive2;
            this.mHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$DisplayPolicy$HbdRZfPpJ53Wnk7_Ueb0ycyz_AQ
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateSystemUiVisibilityLw$14$DisplayPolicy(visibility, cause2, transientState2, tmpVisibility4, appearanceRegions2, isNavbarColorManagedByIme, z4, z5);
                }
            });
            return diff;
        }
        return 0;
    }

    public /* synthetic */ void lambda$updateSystemUiVisibilityLw$14$DisplayPolicy(int visibility, String cause, Pair transientState, int appearance, AppearanceRegion[] appearanceRegions, boolean isNavbarColorManagedByIme, boolean isFullscreen, boolean isImmersive) {
        StatusBarManagerInternal statusBar = getStatusBarManagerInternal();
        if (statusBar != null) {
            int displayId = getDisplayId();
            statusBar.setDisableFlags(displayId, 67043328 & visibility, cause);
            if (((int[]) transientState.first).length > 0) {
                statusBar.showTransient(displayId, (int[]) transientState.first);
            }
            if (((int[]) transientState.second).length > 0) {
                statusBar.abortTransient(displayId, (int[]) transientState.second);
            }
            statusBar.onSystemBarAppearanceChanged(displayId, appearance, appearanceRegions, isNavbarColorManagedByIme);
            statusBar.topAppWindowChanged(displayId, isFullscreen, isImmersive);
            synchronized (this.mLock) {
                this.mDisplayContent.statusBarVisibilityChanged((-805306369) & visibility);
            }
        }
    }

    private static Pair<int[], int[]> getTransientState(int vis, int oldVis) {
        IntArray typesToShow = new IntArray(0);
        IntArray typesToAbort = new IntArray(0);
        updateTransientState(vis, oldVis, 67108864, 0, typesToShow, typesToAbort);
        updateTransientState(vis, oldVis, AudioFormat.OPUS, 1, typesToShow, typesToAbort);
        return Pair.create(typesToShow.toArray(), typesToAbort.toArray());
    }

    private static void updateTransientState(int vis, int oldVis, int transientFlag, int type, IntArray typesToShow, IntArray typesToAbort) {
        boolean wasTransient = (oldVis & transientFlag) != 0;
        boolean isTransient = (vis & transientFlag) != 0;
        if (!wasTransient && isTransient) {
            typesToShow.add(type);
        } else if (wasTransient && !isTransient) {
            typesToAbort.add(type);
        }
    }

    private int updateLightStatusBarAppearanceLw(int appearance, WindowState opaque, WindowState opaqueOrDimming) {
        boolean onKeyguard = isKeyguardShowing() && !isKeyguardOccluded();
        WindowState statusColorWin = onKeyguard ? this.mNotificationShade : opaqueOrDimming;
        if (statusColorWin != null) {
            if (statusColorWin == opaque || onKeyguard) {
                int legacyAppearance = InsetsFlags.getAppearance(PolicyControl.getSystemUiVisibility(statusColorWin, null));
                appearance = (appearance & (-9)) | ((statusColorWin.mAttrs.insetsFlags.appearance | legacyAppearance) & 8);
            } else if (statusColorWin.isDimming()) {
                appearance &= -9;
            }
            if (!this.mStatusBarController.isLightAppearanceAllowed(statusColorWin)) {
                return appearance & (-9);
            }
            return appearance;
        }
        return appearance;
    }

    static WindowState chooseNavigationColorWindowLw(WindowState opaque, WindowState opaqueOrDimming, WindowState imeWindow, int navBarPosition) {
        boolean imeWindowCanNavColorWindow = imeWindow != null && imeWindow.isVisibleLw() && navBarPosition == 4 && (PolicyControl.getWindowFlags(imeWindow, null) & Integer.MIN_VALUE) != 0;
        if (opaque != null && opaqueOrDimming == opaque) {
            return imeWindowCanNavColorWindow ? imeWindow : opaque;
        }
        if (opaqueOrDimming == null || !opaqueOrDimming.isDimming()) {
            if (imeWindowCanNavColorWindow) {
                return imeWindow;
            }
            return null;
        }
        if (imeWindowCanNavColorWindow && WindowManager.LayoutParams.mayUseInputMethod(PolicyControl.getWindowFlags(opaqueOrDimming, null))) {
            return imeWindow;
        }
        return opaqueOrDimming;
    }

    static int updateLightNavigationBarLw(int vis, WindowState opaque, WindowState opaqueOrDimming, WindowState imeWindow, WindowState navColorWin) {
        if (navColorWin != null) {
            if (navColorWin == imeWindow || navColorWin == opaque) {
                return (vis & (-17)) | (PolicyControl.getSystemUiVisibility(navColorWin, null) & 16);
            }
            if (navColorWin == opaqueOrDimming && navColorWin.isDimming()) {
                return vis & (-17);
            }
            return vis;
        }
        return vis;
    }

    private int updateLightNavigationBarAppearanceLw(int appearance, WindowState opaque, WindowState opaqueOrDimming, WindowState imeWindow, WindowState navColorWin) {
        if (navColorWin != null) {
            if (navColorWin == imeWindow || navColorWin == opaque) {
                appearance = (appearance & (-17)) | (navColorWin.mAttrs.insetsFlags.appearance & 16);
            } else if (navColorWin == opaqueOrDimming && navColorWin.isDimming()) {
                appearance &= -17;
            }
            if (!this.mNavigationBarController.isLightAppearanceAllowed(navColorWin)) {
                return appearance & (-17);
            }
            return appearance;
        }
        return appearance;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x019e  */
    /* JADX WARN: Code duplicated, block: B:113:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:116:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:117:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:122:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:128:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:131:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:132:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:135:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:136:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:138:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:139:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:141:0x0205  */
    /* JADX WARN: Code duplicated, block: B:142:0x0229  */
    private Pair<Integer, WindowState> updateSystemBarsLw(WindowState win, int oldVis, int vis) {
        WindowState windowState;
        int vis2;
        boolean immersive;
        boolean immersiveSticky;
        boolean navAllowedHidden;
        int vis3;
        boolean z;
        boolean newInsetsMode;
        boolean oldImmersiveMode;
        boolean newImmersiveMode;
        boolean dockedStackVisible = this.mDisplayContent.getDefaultTaskDisplayArea().isStackVisible(3);
        boolean freeformStackVisible = this.mDisplayContent.getDefaultTaskDisplayArea().isStackVisible(5);
        boolean resizing = this.mDisplayContent.getDockedDividerController().isResizing();
        boolean z2 = dockedStackVisible || win.inFreeformWindowingMode() || resizing;
        this.mForceShowSystemBars = z2;
        boolean forceOpaqueStatusBar = z2 && !isKeyguardShowing();
        if (isKeyguardShowing() && !isKeyguardOccluded()) {
            windowState = this.mNotificationShade;
        } else {
            windowState = this.mTopFullscreenOpaqueWindowState;
        }
        WindowState fullscreenTransWin = windowState;
        int vis4 = this.mNavigationBarController.applyTranslucentFlagLw(fullscreenTransWin, this.mStatusBarController.applyTranslucentFlagLw(fullscreenTransWin, vis, oldVis), oldVis);
        int dockedVis = this.mNavigationBarController.applyTranslucentFlagLw(this.mTopDockedOpaqueWindowState, this.mStatusBarController.applyTranslucentFlagLw(this.mTopDockedOpaqueWindowState, 0, 0), 0);
        boolean fullscreenDrawsStatusBarBackground = drawsStatusBarBackground(vis4, this.mTopFullscreenOpaqueWindowState);
        boolean dockedDrawsStatusBarBackground = drawsStatusBarBackground(dockedVis, this.mTopDockedOpaqueWindowState);
        boolean fullscreenDrawsNavBarBackground = drawsNavigationBarBackground(vis4, this.mTopFullscreenOpaqueWindowState);
        boolean dockedDrawsNavigationBarBackground = drawsNavigationBarBackground(dockedVis, this.mTopDockedOpaqueWindowState);
        int type = win.getAttrs().type;
        boolean notificationShadeHasFocus = type == 2040;
        if (notificationShadeHasFocus && !isKeyguardShowing()) {
            int flags = isKeyguardOccluded() ? 14342 | (-1073741824) : 14342;
            vis4 = ((~flags) & vis4) | (oldVis & flags);
        }
        if (fullscreenDrawsStatusBarBackground && dockedDrawsStatusBarBackground) {
            vis2 = (vis4 | 8) & (-1073741825);
        } else if (!forceOpaqueStatusBar) {
            vis2 = vis4;
        } else {
            vis2 = vis4 & (-1073741833);
        }
        int vis5 = configureNavBarOpacity(vis2, dockedStackVisible, freeformStackVisible, resizing, fullscreenDrawsNavBarBackground, dockedDrawsNavigationBarBackground);
        boolean immersiveSticky2 = (vis5 & 4096) != 0;
        WindowState windowState2 = this.mTopFullscreenOpaqueWindowState;
        boolean hideStatusBarWM = (windowState2 == null || (PolicyControl.getWindowFlags(windowState2, null) & 1024) == 0) ? false : true;
        boolean hideStatusBarSysui = (vis5 & 4) != 0;
        boolean hideNavBarSysui = (vis5 & 2) != 0;
        boolean transientStatusBarAllowed = getStatusBar() != null && (notificationShadeHasFocus || (!this.mForceShowSystemBars && (hideStatusBarWM || (hideStatusBarSysui && immersiveSticky2))));
        boolean transientNavBarAllowed = this.mNavigationBar != null && !this.mForceShowSystemBars && hideNavBarSysui && immersiveSticky2;
        long now = SystemClock.uptimeMillis();
        long j = this.mPendingPanicGestureUptime;
        boolean pendingPanic = j != 0 && now - j <= 30000;
        DisplayPolicy defaultDisplayPolicy = this.mService.getDefaultDisplayContentLocked().getDisplayPolicy();
        if (pendingPanic && hideNavBarSysui && !isKeyguardShowing() && defaultDisplayPolicy.isKeyguardDrawComplete()) {
            this.mPendingPanicGestureUptime = 0L;
            this.mStatusBarController.showTransient();
            if (!isNavBarEmpty(vis5)) {
                this.mNavigationBarController.showTransient();
            }
        }
        boolean denyTransientStatus = this.mStatusBarController.isTransientShowRequested() && !transientStatusBarAllowed && hideStatusBarSysui;
        boolean denyTransientNav = this.mNavigationBarController.isTransientShowRequested() && !transientNavBarAllowed;
        if (!denyTransientStatus && !denyTransientNav) {
            boolean denyTransientStatus2 = this.mForceShowSystemBars;
            if (denyTransientStatus2) {
            }
            if ((vis5 & 2048) != 0) {
                immersive = true;
            } else {
                immersive = false;
            }
            if ((vis5 & 4096) != 0) {
                immersiveSticky = true;
            } else {
                immersiveSticky = false;
            }
            if (!immersive || immersiveSticky) {
                navAllowedHidden = true;
            } else {
                navAllowedHidden = false;
            }
            if (!hideNavBarSysui && !navAllowedHidden) {
                if (this.mService.mPolicy.getWindowLayerLw(win) > this.mService.mPolicy.getWindowLayerFromTypeLw(2022)) {
                    vis5 &= -3;
                }
            }
            vis3 = this.mStatusBarController.updateVisibilityLw(transientStatusBarAllowed, oldVis, vis5);
            if (ViewRootImpl.sNewInsetsMode == 2) {
                z = true;
            } else {
                z = false;
            }
            newInsetsMode = z;
            if (newInsetsMode) {
                oldImmersiveMode = this.mLastImmersiveMode;
            } else {
                oldImmersiveMode = isImmersiveMode(oldVis);
            }
            if (newInsetsMode) {
                newImmersiveMode = isImmersiveMode(win);
            } else {
                newImmersiveMode = isImmersiveMode(vis3);
            }
            if (oldImmersiveMode != newImmersiveMode) {
                this.mLastImmersiveMode = newImmersiveMode;
                String pkg = win.getOwningPackage();
                this.mImmersiveModeConfirmation.immersiveModeChangedLw(pkg, newImmersiveMode, this.mService.mPolicy.isUserSetupComplete(), isNavBarEmpty(win.getSystemUiVisibility()));
            }
            int vis6 = this.mNavigationBarController.updateVisibilityLw(transientNavBarAllowed, oldVis, vis3);
            WindowState navColorWin = chooseNavigationColorWindowLw(this.mTopFullscreenOpaqueWindowState, this.mTopFullscreenOpaqueOrDimmingWindowState, this.mDisplayContent.mInputMethodWindow, this.mNavigationBarPosition);
            return Pair.create(Integer.valueOf(updateLightNavigationBarLw(vis6, this.mTopFullscreenOpaqueWindowState, this.mTopFullscreenOpaqueOrDimmingWindowState, this.mDisplayContent.mInputMethodWindow, navColorWin)), navColorWin);
        }
        clearClearableFlagsLw();
        vis5 &= -8;
        if ((vis5 & 2048) != 0) {
            immersive = true;
        } else {
            immersive = false;
        }
        if ((vis5 & 4096) != 0) {
            immersiveSticky = true;
        } else {
            immersiveSticky = false;
        }
        if (immersive) {
            navAllowedHidden = true;
        } else {
            navAllowedHidden = true;
        }
        if (!hideNavBarSysui) {
        }
        vis3 = this.mStatusBarController.updateVisibilityLw(transientStatusBarAllowed, oldVis, vis5);
        if (ViewRootImpl.sNewInsetsMode == 2) {
            z = true;
        } else {
            z = false;
        }
        newInsetsMode = z;
        if (newInsetsMode) {
            oldImmersiveMode = this.mLastImmersiveMode;
        } else {
            oldImmersiveMode = isImmersiveMode(oldVis);
        }
        if (newInsetsMode) {
            newImmersiveMode = isImmersiveMode(win);
        } else {
            newImmersiveMode = isImmersiveMode(vis3);
        }
        if (oldImmersiveMode != newImmersiveMode) {
            this.mLastImmersiveMode = newImmersiveMode;
            String pkg2 = win.getOwningPackage();
            this.mImmersiveModeConfirmation.immersiveModeChangedLw(pkg2, newImmersiveMode, this.mService.mPolicy.isUserSetupComplete(), isNavBarEmpty(win.getSystemUiVisibility()));
        }
        int vis7 = this.mNavigationBarController.updateVisibilityLw(transientNavBarAllowed, oldVis, vis3);
        WindowState navColorWin2 = chooseNavigationColorWindowLw(this.mTopFullscreenOpaqueWindowState, this.mTopFullscreenOpaqueOrDimmingWindowState, this.mDisplayContent.mInputMethodWindow, this.mNavigationBarPosition);
        return Pair.create(Integer.valueOf(updateLightNavigationBarLw(vis7, this.mTopFullscreenOpaqueWindowState, this.mTopFullscreenOpaqueOrDimmingWindowState, this.mDisplayContent.mInputMethodWindow, navColorWin2)), navColorWin2);
    }

    private boolean drawsBarBackground(int vis, WindowState win, BarController controller, int translucentFlag) {
        if (!controller.isTransparentAllowed(win)) {
            return false;
        }
        if (win == null) {
            return true;
        }
        boolean drawsSystemBars = (win.getAttrs().flags & Integer.MIN_VALUE) != 0;
        boolean forceDrawsSystemBars = (win.getAttrs().privateFlags & 131072) != 0;
        return forceDrawsSystemBars || (drawsSystemBars && (vis & translucentFlag) == 0);
    }

    private boolean drawsStatusBarBackground(int vis, WindowState win) {
        return drawsBarBackground(vis, win, this.mStatusBarController, 67108864);
    }

    private boolean drawsNavigationBarBackground(int vis, WindowState win) {
        return drawsBarBackground(vis, win, this.mNavigationBarController, AudioFormat.OPUS);
    }

    private int configureNavBarOpacity(int visibility, boolean dockedStackVisible, boolean freeformStackVisible, boolean isDockedDividerResizing, boolean fullscreenDrawsBackground, boolean dockedDrawsNavigationBarBackground) {
        int i = this.mNavBarOpacityMode;
        if (i == 2) {
            if (fullscreenDrawsBackground && dockedDrawsNavigationBarBackground) {
                return setNavBarTransparentFlag(visibility);
            }
            if (dockedStackVisible) {
                return setNavBarOpaqueFlag(visibility);
            }
            return visibility;
        }
        if (i == 0) {
            if (dockedStackVisible || freeformStackVisible || isDockedDividerResizing) {
                if (this.mIsFreeformWindowOverlappingWithNavBar) {
                    return setNavBarTranslucentFlag(visibility);
                }
                return setNavBarOpaqueFlag(visibility);
            }
            if (fullscreenDrawsBackground) {
                return setNavBarTransparentFlag(visibility);
            }
            return visibility;
        }
        if (i == 1) {
            if (isDockedDividerResizing) {
                return setNavBarOpaqueFlag(visibility);
            }
            if (freeformStackVisible) {
                return setNavBarTranslucentFlag(visibility);
            }
            return setNavBarOpaqueFlag(visibility);
        }
        return visibility;
    }

    private int setNavBarOpaqueFlag(int visibility) {
        return 2147450879 & visibility;
    }

    private int setNavBarTranslucentFlag(int visibility) {
        return Integer.MIN_VALUE | (visibility & (-32769));
    }

    private int setNavBarTransparentFlag(int visibility) {
        return 32768 | (visibility & Integer.MAX_VALUE);
    }

    private void clearClearableFlagsLw() {
        int i = this.mResettingSystemUiFlags;
        int newVal = i | 7;
        if (newVal != i) {
            this.mResettingSystemUiFlags = newVal;
            this.mDisplayContent.reevaluateStatusBarVisibility();
        }
    }

    private boolean isImmersiveMode(int vis) {
        return (getNavigationBar() == null || (vis & 2) == 0 || (vis & 6144) == 0 || !canHideNavigationBar()) ? false : true;
    }

    private boolean isImmersiveMode(WindowState win) {
        int behavior = win.mAttrs.insetsFlags.behavior;
        return getNavigationBar() != null && canHideNavigationBar() && (behavior == 1 || behavior == 2) && getInsetsPolicy().isHidden(1) && win != getNotificationShade() && !win.isActivityTypeDream();
    }

    private boolean canHideNavigationBar() {
        return hasNavigationBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isNavBarEmpty(int systemUiFlags) {
        return (systemUiFlags & 23068672) == 23068672;
    }

    void onPowerKeyDown(boolean isScreenOn) {
        boolean panic = this.mImmersiveModeConfirmation.onPowerKeyDown(isScreenOn, SystemClock.elapsedRealtime(), isImmersiveMode(this.mLastSystemUiFlags), isNavBarEmpty(this.mLastSystemUiFlags));
        if (panic) {
            this.mHandler.post(this.mHiddenNavPanic);
        }
    }

    void onVrStateChangedLw(boolean enabled) {
        this.mImmersiveModeConfirmation.onVrStateChangedLw(enabled);
    }

    public void onLockTaskStateChangedLw(int lockTaskState) {
        this.mImmersiveModeConfirmation.onLockTaskModeChangedLw(lockTaskState);
    }

    public void takeScreenshot(int screenshotType, int source) {
        ScreenshotHelper screenshotHelper = this.mScreenshotHelper;
        if (screenshotHelper != null) {
            boolean z = false;
            boolean z2 = getStatusBar() != null && getStatusBar().isVisibleLw();
            if (getNavigationBar() != null && getNavigationBar().isVisibleLw()) {
                z = true;
            }
            screenshotHelper.takeScreenshot(screenshotType, z2, z, source, this.mHandler, (Consumer) null);
        }
    }

    RefreshRatePolicy getRefreshRatePolicy() {
        return this.mRefreshRatePolicy;
    }

    void dump(String prefix, PrintWriter pw) {
        pw.print(prefix);
        pw.println("DisplayPolicy");
        String prefix2 = prefix + "  ";
        pw.print(prefix2);
        pw.print("mCarDockEnablesAccelerometer=");
        pw.print(this.mCarDockEnablesAccelerometer);
        pw.print(" mDeskDockEnablesAccelerometer=");
        pw.println(this.mDeskDockEnablesAccelerometer);
        pw.print(prefix2);
        pw.print("mDockMode=");
        pw.print(Intent.dockStateToString(this.mDockMode));
        pw.print(" mLidState=");
        pw.println(WindowManagerPolicy.WindowManagerFuncs.lidStateToString(this.mLidState));
        pw.print(prefix2);
        pw.print("mAwake=");
        pw.print(this.mAwake);
        pw.print(" mScreenOnEarly=");
        pw.print(this.mScreenOnEarly);
        pw.print(" mScreenOnFully=");
        pw.println(this.mScreenOnFully);
        pw.print(prefix2);
        pw.print("mKeyguardDrawComplete=");
        pw.print(this.mKeyguardDrawComplete);
        pw.print(" mWindowManagerDrawComplete=");
        pw.println(this.mWindowManagerDrawComplete);
        pw.print(prefix2);
        pw.print("mHdmiPlugged=");
        pw.println(this.mHdmiPlugged);
        if (this.mLastSystemUiFlags != 0 || this.mResettingSystemUiFlags != 0 || this.mForceClearedSystemUiFlags != 0) {
            pw.print(prefix2);
            pw.print("mLastSystemUiFlags=0x");
            pw.print(Integer.toHexString(this.mLastSystemUiFlags));
            pw.print(" mResettingSystemUiFlags=0x");
            pw.print(Integer.toHexString(this.mResettingSystemUiFlags));
            pw.print(" mForceClearedSystemUiFlags=0x");
            pw.println(Integer.toHexString(this.mForceClearedSystemUiFlags));
        }
        pw.print(prefix2);
        pw.print("mShowingDream=");
        pw.print(this.mShowingDream);
        pw.print(" mDreamingLockscreen=");
        pw.print(this.mDreamingLockscreen);
        pw.print(prefix2);
        pw.print("mShowingMegaBacklight=");
        pw.print(this.mShowingMegaBacklight);
        pw.print(" mMegaBacklightSleepToken=");
        pw.print(this.mMegaBacklightSleepToken);
        pw.print(" mMegaBacklightSleepTokenNeeded=");
        pw.println(this.mMegaBacklightSleepTokenNeeded);
        if (this.mStatusBar != null) {
            pw.print(prefix2);
            pw.print("mStatusBar=");
            pw.print(this.mStatusBar);
        }
        if (this.mStatusBarAlt != null) {
            pw.print(prefix2);
            pw.print("mStatusBarAlt=");
            pw.print(this.mStatusBarAlt);
            pw.print(prefix2);
            pw.print("mStatusBarAltPosition=");
            pw.println(this.mStatusBarAltPosition);
        }
        if (this.mNotificationShade != null) {
            pw.print(prefix2);
            pw.print("mExpandedPanel=");
            pw.print(this.mNotificationShade);
        }
        pw.print(" isKeyguardShowing=");
        pw.println(isKeyguardShowing());
        if (this.mNavigationBar != null) {
            pw.print(prefix2);
            pw.print("mNavigationBar=");
            pw.println(this.mNavigationBar);
            pw.print(prefix2);
            pw.print("mNavBarOpacityMode=");
            pw.println(this.mNavBarOpacityMode);
            pw.print(prefix2);
            pw.print("mNavigationBarCanMove=");
            pw.println(this.mNavigationBarCanMove);
            pw.print(prefix2);
            pw.print("mNavigationBarPosition=");
            pw.println(this.mNavigationBarPosition);
        }
        if (this.mNavigationBarAlt != null) {
            pw.print(prefix2);
            pw.print("mNavigationBarAlt=");
            pw.println(this.mNavigationBarAlt);
            pw.print(prefix2);
            pw.print("mNavigationBarAltPosition=");
            pw.println(this.mNavigationBarAltPosition);
        }
        if (this.mClimateBarAlt != null) {
            pw.print(prefix2);
            pw.print("mClimateBarAlt=");
            pw.println(this.mClimateBarAlt);
            pw.print(prefix2);
            pw.print("mClimateBarAltPosition=");
            pw.println(this.mClimateBarAltPosition);
        }
        if (this.mExtraNavBarAlt != null) {
            pw.print(prefix2);
            pw.print("mExtraNavBarAlt=");
            pw.println(this.mExtraNavBarAlt);
            pw.print(prefix2);
            pw.print("mExtraNavBarAltPosition=");
            pw.println(this.mExtraNavBarAltPosition);
        }
        if (this.mFocusedWindow != null) {
            pw.print(prefix2);
            pw.print("mFocusedWindow=");
            pw.println(this.mFocusedWindow);
        }
        if (this.mTopFullscreenOpaqueWindowState != null) {
            pw.print(prefix2);
            pw.print("mTopFullscreenOpaqueWindowState=");
            pw.println(this.mTopFullscreenOpaqueWindowState);
        }
        if (this.mTopFullscreenOpaqueOrDimmingWindowState != null) {
            pw.print(prefix2);
            pw.print("mTopFullscreenOpaqueOrDimmingWindowState=");
            pw.println(this.mTopFullscreenOpaqueOrDimmingWindowState);
        }
        if (this.mForcingShowNavBar) {
            pw.print(prefix2);
            pw.print("mForcingShowNavBar=");
            pw.println(this.mForcingShowNavBar);
            pw.print(prefix2);
            pw.print("mForcingShowNavBarLayer=");
            pw.println(this.mForcingShowNavBarLayer);
        }
        pw.print(prefix2);
        pw.print("mTopIsFullscreen=");
        pw.println(this.mTopIsFullscreen);
        pw.print(prefix2);
        pw.print("mForceStatusBar=");
        pw.print(this.mForceStatusBar);
        pw.print(prefix2);
        pw.print("mRemoteInsetsControllerControlsSystemBars");
        pw.print(this.mDisplayContent.getInsetsPolicy().getRemoteInsetsControllerControlsSystemBars());
        pw.print(" mAllowLockscreenWhenOn=");
        pw.println(this.mAllowLockscreenWhenOn);
        this.mStatusBarController.dump(pw, prefix2);
        this.mNavigationBarController.dump(pw, prefix2);
        pw.print(prefix2);
        pw.println("Looper state:");
        this.mHandler.getLooper().dump(new PrintWriterPrinter(pw), prefix2 + "  ");
    }

    private boolean supportsPointerLocation() {
        return this.mDisplayContent.isDefaultDisplay || !this.mDisplayContent.isPrivate();
    }

    void setPointerLocationEnabled(boolean pointerLocationEnabled) {
        if (!supportsPointerLocation()) {
            return;
        }
        this.mHandler.sendEmptyMessage(pointerLocationEnabled ? 4 : 5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enablePointerLocation() {
        if (this.mPointerLocationView != null) {
            return;
        }
        PointerLocationView pointerLocationView = new PointerLocationView(this.mContext);
        this.mPointerLocationView = pointerLocationView;
        pointerLocationView.setPrintCoords(false);
        WindowManager.LayoutParams lp = new WindowManager.LayoutParams(-1, -1);
        lp.type = 2015;
        lp.flags = 280;
        lp.setFitInsetsTypes(0);
        lp.layoutInDisplayCutoutMode = 1;
        if (ActivityManager.isHighEndGfx()) {
            lp.flags |= 16777216;
            lp.privateFlags |= 2;
        }
        lp.format = -3;
        lp.setTitle("PointerLocation - display " + getDisplayId());
        lp.inputFeatures = lp.inputFeatures | 2;
        WindowManager wm = (WindowManager) this.mContext.getSystemService(WindowManager.class);
        wm.addView(this.mPointerLocationView, lp);
        this.mDisplayContent.registerPointerEventListener(this.mPointerLocationView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disablePointerLocation() {
        WindowManagerPolicyConstants.PointerEventListener pointerEventListener = this.mPointerLocationView;
        if (pointerEventListener == null) {
            return;
        }
        this.mDisplayContent.unregisterPointerEventListener(pointerEventListener);
        WindowManager wm = (WindowManager) this.mContext.getSystemService(WindowManager.class);
        wm.removeView(this.mPointerLocationView);
        this.mPointerLocationView = null;
    }

    boolean isWindowExcludedFromContent(WindowState w) {
        return (w == null || this.mPointerLocationView == null || w.mClient != this.mPointerLocationView.getWindowToken()) ? false : true;
    }

    void release() {
        Handler handler = this.mHandler;
        final GestureNavigationSettingsObserver gestureNavigationSettingsObserver = this.mGestureNavigationSettingsObserver;
        Objects.requireNonNull(gestureNavigationSettingsObserver);
        handler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$neohyhAIBSbDm4hUahIEOo5bYNY
            @Override // java.lang.Runnable
            public final void run() {
                gestureNavigationSettingsObserver.unregister();
            }
        });
    }

    static boolean isOverlappingWithNavBar(WindowState targetWindow, WindowState navBarWindow) {
        if (navBarWindow == null || !navBarWindow.isVisibleLw() || targetWindow.mActivityRecord == null || !targetWindow.isVisibleLw()) {
            return false;
        }
        return Rect.intersects(targetWindow.getFrameLw(), navBarWindow.getFrameLw());
    }
}
