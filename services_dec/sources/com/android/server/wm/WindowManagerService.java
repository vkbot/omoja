package com.android.server.wm;

import android.R;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.ActivityTaskManager;
import android.app.ActivityThread;
import android.app.AppOpsManager;
import android.app.IActivityManager;
import android.app.IActivityTaskManager;
import android.app.IAssistDataReceiver;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.hardware.configstore.V1_0.ISurfaceFlingerConfigs;
import android.hardware.configstore.V1_0.OptionalBool;
import android.hardware.display.DisplayManager;
import android.hardware.display.DisplayManagerInternal;
import android.hardware.input.InputManager;
import android.hardware.input.InputManagerInternal;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.IBinder;
import android.os.IRemoteCallback;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.os.PowerManagerInternal;
import android.os.PowerSaveState;
import android.os.Process;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.SystemService;
import android.os.Trace;
import android.os.UserHandle;
import android.os.WorkSource;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.service.vr.IVrManager;
import android.service.vr.IVrStateCallbacks;
import android.sysprop.SurfaceFlingerProperties;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.DisplayMetrics;
import android.util.MergedConfiguration;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.TimeUtils;
import android.util.TypedValue;
import android.util.proto.ProtoOutputStream;
import android.view.Choreographer;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.DisplayInfo;
import android.view.IAppTransitionAnimationSpecsFuture;
import android.view.IDisplayFoldListener;
import android.view.IDisplayWindowInsetsController;
import android.view.IDisplayWindowListener;
import android.view.IDisplayWindowRotationController;
import android.view.IInputFilter;
import android.view.IOnKeyguardExitResult;
import android.view.IPinnedStackListener;
import android.view.IRecentsAnimationRunner;
import android.view.IRotationWatcher;
import android.view.IScrollCaptureController;
import android.view.ISystemGestureExclusionListener;
import android.view.IWallpaperVisibilityListener;
import android.view.IWindow;
import android.view.IWindowAttributesCallback;
import android.view.IWindowId;
import android.view.IWindowManager;
import android.view.IWindowSession;
import android.view.IWindowSessionCallback;
import android.view.InputApplicationHandle;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputWindowHandle;
import android.view.InsetsSourceControl;
import android.view.InsetsState;
import android.view.KeyEvent;
import android.view.MagnificationSpec;
import android.view.MotionEvent;
import android.view.RemoteAnimationAdapter;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.SurfaceSession;
import android.view.ViewDebug;
import android.view.WindowAttributes;
import android.view.WindowContentFrameStats;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowManagerPolicyConstants;
import com.android.internal.os.BackgroundThread;
import com.android.internal.os.IResultReceiver;
import com.android.internal.policy.IKeyguardDismissCallback;
import com.android.internal.policy.IShortcutService;
import com.android.internal.policy.KeyInterceptionInfo;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.LatencyTracker;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.internal.view.WindowManagerPolicyThread;
import com.android.server.AnimationThread;
import com.android.server.DisplayThread;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.LockGuard;
import com.android.server.UiThread;
import com.android.server.Watchdog;
import com.android.server.input.InputManagerService;
import com.android.server.job.controllers.JobStatus;
import com.android.server.mega.MegaServicePolicyManager;
import com.android.server.notification.SnoozeHelper;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.power.ShutdownThread;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.usage.AppStandbyController;
import com.android.server.usb.descriptors.UsbACInterface;
import com.android.server.usb.descriptors.UsbTerminalTypes;
import com.android.server.utils.DeviceConfigInterface;
import com.android.server.utils.PriorityDump;
import com.android.server.voiceinteraction.DatabaseHelper;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.Socket;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Optional;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;

/* JADX INFO: loaded from: classes2.dex */
public class WindowManagerService extends IWindowManager.Stub implements Watchdog.Monitor, WindowManagerPolicy.WindowManagerFuncs {
    private static final boolean ALWAYS_KEEP_CURRENT = true;
    private static final int ANIMATION_COMPLETED_TIMEOUT_MS = 5000;
    private static final int ANIMATION_DURATION_SCALE = 2;
    private static final int BOOT_ANIMATION_POLL_INTERVAL = 50;
    private static final String BOOT_ANIMATION_SERVICE = "bootanim";
    static final long DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS = 5000000000L;
    private static final String DENSITY_OVERRIDE = "ro.config.density_override";
    private static final int INPUT_DEVICES_READY_FOR_SAFE_MODE_DETECTION_TIMEOUT_MILLIS = 1000;
    static final int LAST_ANR_LIFETIME_DURATION_MSECS = 7200000;
    static final int LAYER_OFFSET_THUMBNAIL = 4;
    static final int LAYOUT_REPEAT_THRESHOLD = 4;
    private static final int MAXIMUM_WINDOW_TOKEN_COUNT_WITHOUT_SURFACE = 5;
    static final int MAX_ANIMATION_DURATION = 10000;
    static final boolean PROFILE_ORIENTATION = false;
    private static final String PROPERTY_EMULATOR_CIRCULAR = "ro.emulator.circular";
    static final int SEAMLESS_ROTATION_TIMEOUT_DURATION = 2000;
    private static final String SIZE_OVERRIDE = "ro.config.size_override";
    private static final String SYSTEM_DEBUGGABLE = "ro.debuggable";
    private static final String SYSTEM_SECURE = "ro.secure";
    private static final int SYSTEM_UI_MULTIPLIER = 2;
    private static final String TAG = "WindowManager";
    private static final int TRANSITION_ANIMATION_SCALE = 1;
    static final int TYPE_LAYER_MULTIPLIER = 10000;
    static final int TYPE_LAYER_OFFSET = 1000;
    static final int UPDATE_FOCUS_NORMAL = 0;
    static final int UPDATE_FOCUS_PLACING_SURFACES = 2;
    static final int UPDATE_FOCUS_REMOVING_FOCUS = 4;
    static final int UPDATE_FOCUS_WILL_ASSIGN_LAYERS = 1;
    static final int UPDATE_FOCUS_WILL_PLACE_SURFACES = 3;
    static final int WINDOWS_FREEZING_SCREENS_ACTIVE = 1;
    static final int WINDOWS_FREEZING_SCREENS_NONE = 0;
    static final int WINDOWS_FREEZING_SCREENS_TIMEOUT = 2;
    private static final int WINDOW_ANIMATION_SCALE = 0;
    static final int WINDOW_FREEZE_TIMEOUT_DURATION = 2000;
    static final int WINDOW_LAYER_MULTIPLIER = 5;
    static final int WINDOW_REPLACEMENT_TIMEOUT_DURATION = 2000;
    private static final String WM_USE_BLAST_ADAPTER_FLAG = "wm_use_blast_adapter";
    private static WindowManagerService sInstance;
    AccessibilityController mAccessibilityController;
    final IActivityManager mActivityManager;
    final IActivityTaskManager mActivityTaskManager;
    final boolean mAllowAnimationsInLowPowerMode;
    final boolean mAllowBootMessages;
    boolean mAllowTheaterModeWakeFromLayout;
    final ActivityManagerInternal mAmInternal;
    private boolean mAnimationsDisabled;
    final WindowAnimator mAnimator;
    private float mAnimatorDurationScaleSetting;
    final AppOpsManager mAppOps;
    final boolean mAssistantOnTopOfDream;
    final ActivityTaskManagerInternal mAtmInternal;
    final ActivityTaskManagerService mAtmService;
    final WindowManagerConstants mConstants;
    final Context mContext;
    int mCurrentUserId;
    boolean mDisableTransitionAnimation;
    final DisplayAreaPolicy.Provider mDisplayAreaPolicyProvider;
    final DisplayManager mDisplayManager;
    final DisplayManagerInternal mDisplayManagerInternal;
    final DisplayWindowListenerController mDisplayNotificationController;
    boolean mDisplayReady;
    final DisplayWindowSettings mDisplayWindowSettings;
    Rect mDockedStackCreateBounds;
    final DragDropController mDragDropController;
    final long mDrawLockTimeoutMillis;
    final EmbeddedWindowController mEmbeddedWindowController;
    EmulatorDisplayOverlay mEmulatorDisplayOverlay;
    private int mEnterAnimId;
    private boolean mEventDispatchingEnabled;
    private int mExitAnimId;
    boolean mFocusMayChange;
    private final List<Integer> mFocusedDisplayIdBlackList;
    boolean mForceDesktopModeOnExternalDisplays;
    private int mFrozenDisplayId;
    final WindowManagerGlobalLock mGlobalLock;
    boolean mHardKeyboardAvailable;
    WindowManagerInternal.OnHardKeyboardStatusChangeListener mHardKeyboardStatusChangeListener;
    private boolean mHasHdrSupport;
    final boolean mHasPermanentDpad;
    private boolean mHasWideColorGamutSupport;
    final HighRefreshRateBlacklist mHighRefreshRateBlacklist;
    private Session mHoldingScreenOn;
    private PowerManager.WakeLock mHoldingScreenWakeLock;
    private boolean mInTouchMode;
    final InputManagerService mInputManager;
    boolean mIsPc;
    boolean mIsTouchDevice;
    private final KeyguardDisableHandler mKeyguardDisableHandler;
    boolean mKeyguardGoingAway;
    boolean mKeyguardOrAodShowingOnDefaultDisplay;
    String mLastANRState;
    private final LatencyTracker mLatencyTracker;
    final boolean mLimitedAlphaCompositing;
    final int mMaxUiWidth;
    MousePositionTracker mMousePositionTracker;
    final boolean mOnlyCore;
    boolean mPerDisplayFocusEnabled;
    final PackageManagerInternal mPmInternal;
    WindowManagerPolicy mPolicy;
    PowerManager mPowerManager;
    PowerManagerInternal mPowerManagerInternal;
    private RecentsAnimationController mRecentsAnimationController;
    RootWindowContainer mRoot;
    boolean mSafeMode;
    private final PowerManager.WakeLock mScreenFrozenLock;
    SettingsObserver mSettingsObserver;
    StrictModeFlash mStrictModeFlash;
    SurfaceAnimationRunner mSurfaceAnimationRunner;
    Function<SurfaceSession, SurfaceControl.Builder> mSurfaceControlFactory;
    final Supplier<Surface> mSurfaceFactory;
    final TaskPositioningController mTaskPositioningController;
    final TaskSnapshotController mTaskSnapshotController;
    private WindowContentFrameStats mTempWindowRenderStats;
    private final SurfaceControl.Transaction mTransaction;
    Supplier<SurfaceControl.Transaction> mTransactionFactory;
    int mTransactionSequence;
    private float mTransitionAnimationScaleSetting;
    final boolean mUseBLAST;
    private ViewServer mViewServer;
    Watermark mWatermark;
    private float mWindowAnimationScaleSetting;
    final WindowSurfacePlacer mWindowPlacerLocked;
    final WindowTracing mWindowTracing;
    private static final String HIERARCHICAL_ANIMATIONS_PROPERTY = "persist.wm.hierarchical_animations";
    static boolean sHierarchicalAnimations = SystemProperties.getBoolean(HIERARCHICAL_ANIMATIONS_PROPERTY, true);
    private static final String DISABLE_TRIPLE_BUFFERING_PROPERTY = "ro.sf.disable_triple_buffer";
    static boolean sEnableTripleBuffering = !SystemProperties.getBoolean(DISABLE_TRIPLE_BUFFERING_PROPERTY, false);
    static final boolean ENABLE_FIXED_ROTATION_TRANSFORM = SystemProperties.getBoolean("persist.wm.fixed_rotation_transform", true);
    static WindowManagerThreadPriorityBooster sThreadPriorityBooster = new WindowManagerThreadPriorityBooster();
    int mVr2dDisplayId = -1;
    boolean mVrModeEnabled = false;
    boolean mRenderShadowsInCompositor = false;
    final Map<IBinder, KeyInterceptionInfo> mKeyInterceptionInfoForToken = Collections.synchronizedMap(new ArrayMap());
    private final IVrStateCallbacks mVrStateCallbacks = new IVrStateCallbacks.Stub() { // from class: com.android.server.wm.WindowManagerService.1
        public void onVrStateChanged(boolean enabled) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowManagerService.this.mVrModeEnabled = enabled;
                    Consumer<DisplayPolicy> consumerObtainConsumer = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$h9zRxk6xP2dliCTsIiNVg_lH9kA
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            ((DisplayPolicy) obj).onVrStateChangedLw(((Boolean) obj2).booleanValue());
                        }
                    }, PooledLambda.__(), Boolean.valueOf(enabled));
                    WindowManagerService.this.mRoot.forAllDisplayPolicies(consumerObtainConsumer);
                    consumerObtainConsumer.recycle();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    };
    private final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.wm.WindowManagerService.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (((action.hashCode() == 988075300 && action.equals("android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED")) ? (byte) 0 : (byte) -1) == 0) {
                WindowManagerService.this.mKeyguardDisableHandler.updateKeyguardEnabled(getSendingUserId());
            }
        }
    };
    private final PriorityDump.PriorityDumper mPriorityDumper = new AnonymousClass3();
    int[] mCurrentProfileIds = new int[0];
    boolean mShowAlertWindowNotifications = true;
    final ArraySet<Session> mSessions = new ArraySet<>();
    final HashMap<IBinder, WindowState> mWindowMap = new HashMap<>();
    final HashMap<IBinder, WindowState> mInputToWindowMap = new HashMap<>();
    final ArrayList<ActivityRecord> mWindowReplacementTimeouts = new ArrayList<>();
    final ArrayList<WindowState> mResizingWindows = new ArrayList<>();
    final ArrayList<WindowState> mPendingRemove = new ArrayList<>();
    WindowState[] mPendingRemoveTmp = new WindowState[20];
    final SparseArray<Configuration> mProcessConfigurations = new SparseArray<>();
    final ArrayList<WindowState> mDestroySurface = new ArrayList<>();
    final ArrayList<WindowState> mDestroyPreservedSurface = new ArrayList<>();
    final ArrayList<WindowState> mForceRemoves = new ArrayList<>();
    final HashMap<WindowContainer, Runnable> mWaitingForDrawnCallbacks = new HashMap<>();
    private ArrayList<WindowState> mHidingNonSystemOverlayWindows = new ArrayList<>();
    final float[] mTmpFloats = new float[9];
    final Rect mTmpRect = new Rect();
    final Rect mTmpRect2 = new Rect();
    final Rect mTmpRect3 = new Rect();
    final RectF mTmpRectF = new RectF();
    final Matrix mTmpTransform = new Matrix();
    boolean mDisplayEnabled = false;
    boolean mSystemBooted = false;
    boolean mForceDisplayEnabled = false;
    boolean mShowingBootMessages = false;
    boolean mBootAnimationStopped = false;
    boolean mSystemReady = false;
    WindowState mLastWakeLockHoldingWindow = null;
    WindowState mLastWakeLockObscuringWindow = null;
    int mDockedStackCreateMode = 0;
    ArrayList<RotationWatcher> mRotationWatchers = new ArrayList<>();
    final WallpaperVisibilityListeners mWallpaperVisibilityListeners = new WallpaperVisibilityListeners();
    IDisplayWindowRotationController mDisplayRotationController = null;
    private final IBinder.DeathRecipient mDisplayRotationControllerDeath = new IBinder.DeathRecipient() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$-84S7IuSlM65nKgepHJEvVFHdC8
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            this.f$0.lambda$new$0$WindowManagerService();
        }
    };
    boolean mDisplayFrozen = false;
    long mDisplayFreezeTime = 0;
    int mLastDisplayFreezeDuration = 0;
    Object mLastFinishedFreezeSource = null;
    boolean mSwitchingUser = false;
    int mWindowsFreezingScreen = 0;
    boolean mClientFreezingScreen = false;
    int mAppsFreezingScreen = 0;
    final H mH = new H();
    final Handler mAnimationHandler = new Handler(AnimationThread.getHandler().getLooper());
    boolean mPointerLocationEnabled = false;
    final ArrayMap<AnimationAdapter, SurfaceAnimator> mAnimationTransferMap = new ArrayMap<>();
    final ArrayList<WindowChangeListener> mWindowChangeListeners = new ArrayList<>();
    boolean mWindowsChanged = false;
    final Configuration mTempConfiguration = new Configuration();
    final WindowManagerInternal.AppTransitionListener mActivityManagerAppTransitionNotifier = new WindowManagerInternal.AppTransitionListener() { // from class: com.android.server.wm.WindowManagerService.4
        @Override // com.android.server.wm.WindowManagerInternal.AppTransitionListener
        public void onAppTransitionCancelledLocked(int transit) {
        }

        @Override // com.android.server.wm.WindowManagerInternal.AppTransitionListener
        public void onAppTransitionFinishedLocked(IBinder token) {
            ActivityRecord atoken = WindowManagerService.this.mRoot.getActivityRecord(token);
            if (atoken == null) {
                return;
            }
            boolean isRecentsAnimationTarget = WindowManagerService.this.getRecentsAnimationController() != null && WindowManagerService.this.getRecentsAnimationController().isTargetApp(atoken);
            if (atoken.mLaunchTaskBehind && !isRecentsAnimationTarget) {
                try {
                    WindowManagerService.this.mActivityTaskManager.notifyLaunchTaskBehindComplete(atoken.token);
                } catch (RemoteException e) {
                }
                atoken.mLaunchTaskBehind = false;
                return;
            }
            atoken.updateReportedVisibilityLocked();
            if (atoken.mEnteringAnimation && !isRecentsAnimationTarget) {
                atoken.mEnteringAnimation = false;
                try {
                    WindowManagerService.this.mActivityTaskManager.notifyEnterAnimationComplete(atoken.token);
                } catch (RemoteException e2) {
                }
            }
        }
    };
    final ArrayList<AppFreezeListener> mAppFreezeListeners = new ArrayList<>();
    private final RemoteCallbackList<IWindowAttributesCallback> windowAttributesCallbacklist = new RemoteCallbackList<>();
    private final Map<IBinder, LinkedListener> mWindowAttributesListenerMap = new HashMap();
    final InputManagerCallback mInputManagerCallback = new InputManagerCallback(this);

    interface AppFreezeListener {
        void onAppFreezeTimeout();
    }

    @Retention(RetentionPolicy.SOURCE)
    private @interface UpdateAnimationScaleMode {
    }

    public interface WindowChangeListener {
        void focusChanged();

        void windowsChanged();
    }

    /* JADX INFO: renamed from: com.android.server.wm.WindowManagerService$3, reason: invalid class name */
    class AnonymousClass3 implements PriorityDump.PriorityDumper {
        AnonymousClass3() {
        }

        @Override // com.android.server.utils.PriorityDump.PriorityDumper
        public void dumpCritical(FileDescriptor fd, PrintWriter pw, String[] args, boolean asProto) {
            if (asProto && WindowManagerService.this.mWindowTracing.isEnabled()) {
                WindowManagerService.this.mWindowTracing.stopTrace(null, false);
                BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$3$FRNc42I1SE4lD0XFYgIp8RCUXng
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$dumpCritical$0$WindowManagerService$3();
                    }
                });
            }
            WindowManagerService.this.doDump(fd, pw, new String[]{"-a"}, asProto);
        }

        public /* synthetic */ void lambda$dumpCritical$0$WindowManagerService$3() {
            WindowManagerService.this.mWindowTracing.writeTraceToFile();
            WindowManagerService.this.mWindowTracing.startTrace(null);
        }

        @Override // com.android.server.utils.PriorityDump.PriorityDumper
        public void dump(FileDescriptor fd, PrintWriter pw, String[] args, boolean asProto) {
            WindowManagerService.this.doDump(fd, pw, args, asProto);
        }
    }

    class RotationWatcher {
        final IBinder.DeathRecipient mDeathRecipient;
        final int mDisplayId;
        final IRotationWatcher mWatcher;

        RotationWatcher(IRotationWatcher watcher, IBinder.DeathRecipient deathRecipient, int displayId) {
            this.mWatcher = watcher;
            this.mDeathRecipient = deathRecipient;
            this.mDisplayId = displayId;
        }
    }

    public /* synthetic */ void lambda$new$0$WindowManagerService() {
        this.mDisplayRotationController = null;
    }

    final class SettingsObserver extends ContentObserver {
        private final Uri mAnimationDurationScaleUri;
        private final Uri mDisplayInversionEnabledUri;
        private final Uri mForceDesktopModeOnExternalDisplaysUri;
        private final Uri mForceResizableUri;
        private final Uri mFreeformWindowUri;
        private final Uri mImmersiveModeConfirmationsUri;
        private final Uri mPointerLocationUri;
        private final Uri mPolicyControlUri;
        private final Uri mRenderShadowsInCompositorUri;
        private final Uri mSizeCompatFreeformUri;
        private final Uri mTransitionAnimationScaleUri;
        private final Uri mWindowAnimationScaleUri;

        public SettingsObserver() {
            super(new Handler());
            this.mDisplayInversionEnabledUri = Settings.Secure.getUriFor("accessibility_display_inversion_enabled");
            this.mWindowAnimationScaleUri = Settings.Global.getUriFor("window_animation_scale");
            this.mTransitionAnimationScaleUri = Settings.Global.getUriFor("transition_animation_scale");
            this.mAnimationDurationScaleUri = Settings.Global.getUriFor("animator_duration_scale");
            this.mImmersiveModeConfirmationsUri = Settings.Secure.getUriFor("immersive_mode_confirmations");
            this.mPolicyControlUri = Settings.Global.getUriFor("policy_control");
            this.mPointerLocationUri = Settings.System.getUriFor("pointer_location");
            this.mForceDesktopModeOnExternalDisplaysUri = Settings.Global.getUriFor("force_desktop_mode_on_external_displays");
            this.mFreeformWindowUri = Settings.Global.getUriFor("enable_freeform_support");
            this.mForceResizableUri = Settings.Global.getUriFor("force_resizable_activities");
            this.mSizeCompatFreeformUri = Settings.Global.getUriFor("enable_sizecompat_freeform");
            this.mRenderShadowsInCompositorUri = Settings.Global.getUriFor("render_shadows_in_compositor");
            ContentResolver resolver = WindowManagerService.this.mContext.getContentResolver();
            resolver.registerContentObserver(this.mDisplayInversionEnabledUri, false, this, -1);
            resolver.registerContentObserver(this.mWindowAnimationScaleUri, false, this, -1);
            resolver.registerContentObserver(this.mTransitionAnimationScaleUri, false, this, -1);
            resolver.registerContentObserver(this.mAnimationDurationScaleUri, false, this, -1);
            resolver.registerContentObserver(this.mImmersiveModeConfirmationsUri, false, this, -1);
            resolver.registerContentObserver(this.mPolicyControlUri, false, this, -1);
            resolver.registerContentObserver(this.mPointerLocationUri, false, this, -1);
            resolver.registerContentObserver(this.mForceDesktopModeOnExternalDisplaysUri, false, this, -1);
            resolver.registerContentObserver(this.mFreeformWindowUri, false, this, -1);
            resolver.registerContentObserver(this.mForceResizableUri, false, this, -1);
            resolver.registerContentObserver(this.mSizeCompatFreeformUri, false, this, -1);
            resolver.registerContentObserver(this.mRenderShadowsInCompositorUri, false, this, -1);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            int mode;
            if (uri == null) {
                return;
            }
            if (this.mImmersiveModeConfirmationsUri.equals(uri) || this.mPolicyControlUri.equals(uri)) {
                updateSystemUiSettings();
                return;
            }
            if (this.mPointerLocationUri.equals(uri)) {
                updatePointerLocation();
                return;
            }
            if (this.mForceDesktopModeOnExternalDisplaysUri.equals(uri)) {
                updateForceDesktopModeOnExternalDisplays();
                return;
            }
            if (this.mFreeformWindowUri.equals(uri)) {
                updateFreeformWindowManagement();
                return;
            }
            if (this.mForceResizableUri.equals(uri)) {
                updateForceResizableTasks();
                return;
            }
            if (this.mSizeCompatFreeformUri.equals(uri)) {
                updateSizeCompatFreeform();
                return;
            }
            if (this.mRenderShadowsInCompositorUri.equals(uri)) {
                WindowManagerService.this.setShadowRenderer();
                return;
            }
            if (this.mWindowAnimationScaleUri.equals(uri)) {
                mode = 0;
            } else if (this.mTransitionAnimationScaleUri.equals(uri)) {
                mode = 1;
            } else if (this.mAnimationDurationScaleUri.equals(uri)) {
                mode = 2;
            } else {
                return;
            }
            Message m = WindowManagerService.this.mH.obtainMessage(51, mode, 0);
            WindowManagerService.this.mH.sendMessage(m);
        }

        void loadSettings() {
            updateSystemUiSettings();
            updatePointerLocation();
        }

        void updateSystemUiSettings() {
            boolean changed;
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    changed = ImmersiveModeConfirmation.loadSetting(WindowManagerService.this.mCurrentUserId, WindowManagerService.this.mContext) || PolicyControl.reloadFromSetting(WindowManagerService.this.mContext);
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            if (changed) {
                WindowManagerService.this.updateRotation(false, false);
            }
        }

        void updatePointerLocation() {
            ContentResolver resolver = WindowManagerService.this.mContext.getContentResolver();
            boolean enablePointerLocation = Settings.System.getIntForUser(resolver, "pointer_location", 0, -2) != 0;
            if (WindowManagerService.this.mPointerLocationEnabled == enablePointerLocation) {
                return;
            }
            WindowManagerService.this.mPointerLocationEnabled = enablePointerLocation;
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    Consumer<DisplayPolicy> consumerObtainConsumer = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$1z_bkwouqOBIC89HKBNNqb1FoaY
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            ((DisplayPolicy) obj).setPointerLocationEnabled(((Boolean) obj2).booleanValue());
                        }
                    }, PooledLambda.__(), Boolean.valueOf(WindowManagerService.this.mPointerLocationEnabled));
                    WindowManagerService.this.mRoot.forAllDisplayPolicies(consumerObtainConsumer);
                    consumerObtainConsumer.recycle();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        void updateForceDesktopModeOnExternalDisplays() {
            ContentResolver resolver = WindowManagerService.this.mContext.getContentResolver();
            boolean enableForceDesktopMode = Settings.Global.getInt(resolver, "force_desktop_mode_on_external_displays", 0) != 0;
            if (WindowManagerService.this.mForceDesktopModeOnExternalDisplays == enableForceDesktopMode) {
                return;
            }
            WindowManagerService.this.setForceDesktopModeOnExternalDisplays(enableForceDesktopMode);
        }

        void updateFreeformWindowManagement() {
            ContentResolver resolver = WindowManagerService.this.mContext.getContentResolver();
            boolean freeformWindowManagement = WindowManagerService.this.mContext.getPackageManager().hasSystemFeature("android.software.freeform_window_management") || Settings.Global.getInt(resolver, "enable_freeform_support", 0) != 0;
            if (WindowManagerService.this.mAtmService.mSupportsFreeformWindowManagement != freeformWindowManagement) {
                WindowManagerService.this.mAtmService.mSupportsFreeformWindowManagement = freeformWindowManagement;
                synchronized (WindowManagerService.this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        WindowManagerService.this.mRoot.onSettingsRetrieved();
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
            }
        }

        void updateForceResizableTasks() {
            ContentResolver resolver = WindowManagerService.this.mContext.getContentResolver();
            boolean forceResizable = Settings.Global.getInt(resolver, "force_resizable_activities", 0) != 0;
            WindowManagerService.this.mAtmService.mForceResizableActivities = forceResizable;
        }

        void updateSizeCompatFreeform() {
            ContentResolver resolver = WindowManagerService.this.mContext.getContentResolver();
            boolean sizeCompatFreeform = Settings.Global.getInt(resolver, "enable_sizecompat_freeform", 0) != 0;
            WindowManagerService.this.mAtmService.mSizeCompatFreeform = sizeCompatFreeform;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setShadowRenderer() {
        this.mRenderShadowsInCompositor = Settings.Global.getInt(this.mContext.getContentResolver(), "render_shadows_in_compositor", 1) != 0;
    }

    static void boostPriorityForLockedSection() {
        sThreadPriorityBooster.boost();
    }

    static void resetPriorityAfterLockedSection() {
        sThreadPriorityBooster.reset();
    }

    void openSurfaceTransaction() {
        try {
            Trace.traceBegin(32L, "openSurfaceTransaction");
            SurfaceControl.openTransaction();
        } finally {
            Trace.traceEnd(32L);
        }
    }

    void closeSurfaceTransaction(String where) {
        try {
            Trace.traceBegin(32L, "closeSurfaceTransaction");
            SurfaceControl.closeTransaction();
            this.mWindowTracing.logState(where);
        } finally {
            Trace.traceEnd(32L);
        }
    }

    static WindowManagerService getInstance() {
        return sInstance;
    }

    public static WindowManagerService main(Context context, InputManagerService im, boolean showBootMsgs, boolean onlyCore, WindowManagerPolicy policy, ActivityTaskManagerService atm) {
        return main(context, im, showBootMsgs, onlyCore, policy, atm, new Supplier() { // from class: com.android.server.wm.-$$Lambda$9vBfnQOmNnsc9WU80IIatZHQGKc
            @Override // java.util.function.Supplier
            public final Object get() {
                return new SurfaceControl.Transaction();
            }
        }, new Supplier() { // from class: com.android.server.wm.-$$Lambda$6P_D-ul93Vzg9xx2hvWUdYrHVXg
            @Override // java.util.function.Supplier
            public final Object get() {
                return new Surface();
            }
        }, new Function() { // from class: com.android.server.wm.-$$Lambda$1Hjf_Nn5x4aIy9rIBTwVrtrzWFA
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return new SurfaceControl.Builder((SurfaceSession) obj);
            }
        });
    }

    public static WindowManagerService main(final Context context, final InputManagerService im, final boolean showBootMsgs, final boolean onlyCore, final WindowManagerPolicy policy, final ActivityTaskManagerService atm, Supplier<SurfaceControl.Transaction> transactionFactory, Supplier<Surface> surfaceFactory, Function<SurfaceSession, SurfaceControl.Builder> surfaceControlFactory) {
        DisplayThread.getHandler().runWithScissors(new Runnable() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$6PdAPNNGVht1FOCHxKSbx5oDECs
            @Override // java.lang.Runnable
            public final void run() {
                WindowManagerService.sInstance = MegaServicePolicyManager.makeNewWindowManagerService(context, im, showBootMsgs, onlyCore, policy, atm);
            }
        }, 0L);
        return sInstance;
    }

    private void initPolicy() {
        UiThread.getHandler().runWithScissors(new Runnable() { // from class: com.android.server.wm.WindowManagerService.5
            @Override // java.lang.Runnable
            public void run() {
                WindowManagerPolicyThread.set(Thread.currentThread(), Looper.myLooper());
                WindowManagerPolicy windowManagerPolicy = WindowManagerService.this.mPolicy;
                Context context = WindowManagerService.this.mContext;
                WindowManagerService windowManagerService = WindowManagerService.this;
                windowManagerPolicy.init(context, windowManagerService, windowManagerService);
            }
        }, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver result) {
        new WindowManagerShellCommand(this).exec(this, in, out, err, args, callback, result);
    }

    protected WindowManagerService(Context context, InputManagerService inputManager, boolean showBootMsgs, boolean onlyCore, WindowManagerPolicy policy, ActivityTaskManagerService atm, Supplier<SurfaceControl.Transaction> transactionFactory, Supplier<Surface> surfaceFactory, Function<SurfaceSession, SurfaceControl.Builder> surfaceControlFactory) {
        this.mWindowAnimationScaleSetting = 1.0f;
        this.mTransitionAnimationScaleSetting = 1.0f;
        this.mAnimatorDurationScaleSetting = 1.0f;
        this.mAnimationsDisabled = false;
        this.mMousePositionTracker = new MousePositionTracker();
        LockGuard.installLock(this, 5);
        this.mGlobalLock = atm.getGlobalLock();
        this.mAtmService = atm;
        this.mContext = context;
        this.mIsPc = context.getPackageManager().hasSystemFeature("android.hardware.type.pc");
        this.mAllowBootMessages = showBootMsgs;
        this.mOnlyCore = onlyCore;
        this.mLimitedAlphaCompositing = context.getResources().getBoolean(R.bool.config_cecQuerySadWmaproEnabled_default);
        this.mHasPermanentDpad = context.getResources().getBoolean(R.bool.config_cecQuerySadDtsDisabled_default);
        boolean z = context.getResources().getBoolean(R.bool.config_biometricFrrNotificationEnabled);
        this.mInTouchMode = z;
        inputManager.setInTouchMode(z);
        this.mDrawLockTimeoutMillis = context.getResources().getInteger(R.integer.config_defaultPeakRefreshRate);
        this.mAllowAnimationsInLowPowerMode = context.getResources().getBoolean(R.bool.config_allowTheaterModeWakeFromKey);
        this.mMaxUiWidth = context.getResources().getInteger(R.integer.config_displayWhiteBalanceTransitionTimeDecrease);
        this.mDisableTransitionAnimation = context.getResources().getBoolean(R.bool.config_canInternalDisplayHostDesktops);
        this.mPerDisplayFocusEnabled = context.getResources().getBoolean(R.bool.config_perDisplayFocusEnabled);
        this.mAssistantOnTopOfDream = context.getResources().getBoolean(R.bool.config_assistantOnTopOfDream);
        this.mInputManager = inputManager;
        this.mDisplayManagerInternal = (DisplayManagerInternal) LocalServices.getService(DisplayManagerInternal.class);
        this.mFocusedDisplayIdBlackList = (List) Arrays.stream(context.getResources().getIntArray(R.array.config_ambientDarkeningThresholds)).boxed().collect(Collectors.toList());
        this.mSurfaceControlFactory = surfaceControlFactory;
        this.mTransactionFactory = transactionFactory;
        this.mSurfaceFactory = surfaceFactory;
        this.mTransaction = transactionFactory.get();
        this.mDisplayWindowSettings = new DisplayWindowSettings(this);
        this.mPolicy = policy;
        this.mAnimator = new WindowAnimator(this);
        this.mRoot = new RootWindowContainer(this);
        this.mUseBLAST = DeviceConfig.getBoolean("window_manager_native_boot", WM_USE_BLAST_ADAPTER_FLAG, false);
        this.mWindowPlacerLocked = new WindowSurfacePlacer(this);
        this.mTaskSnapshotController = new TaskSnapshotController(this);
        this.mWindowTracing = WindowTracing.createDefaultAndStartLooper(this, Choreographer.getInstance());
        LocalServices.addService(WindowManagerPolicy.class, this.mPolicy);
        this.mDisplayManager = (DisplayManager) context.getSystemService("display");
        this.mKeyguardDisableHandler = KeyguardDisableHandler.create(this.mContext, this.mPolicy, this.mH);
        this.mPowerManager = (PowerManager) context.getSystemService("power");
        PowerManagerInternal powerManagerInternal = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
        this.mPowerManagerInternal = powerManagerInternal;
        if (powerManagerInternal != null) {
            powerManagerInternal.registerLowPowerModeObserver(new PowerManagerInternal.LowPowerModeListener() { // from class: com.android.server.wm.WindowManagerService.6
                public int getServiceType() {
                    return 3;
                }

                public void onLowPowerModeChanged(PowerSaveState result) {
                    synchronized (WindowManagerService.this.mGlobalLock) {
                        try {
                            WindowManagerService.boostPriorityForLockedSection();
                            boolean enabled = result.batterySaverEnabled;
                            if (WindowManagerService.this.mAnimationsDisabled != enabled && !WindowManagerService.this.mAllowAnimationsInLowPowerMode) {
                                WindowManagerService.this.mAnimationsDisabled = enabled;
                                WindowManagerService.this.dispatchNewAnimatorScaleLocked(null);
                            }
                        } finally {
                            WindowManagerService.resetPriorityAfterLockedSection();
                        }
                    }
                }
            });
            this.mAnimationsDisabled = this.mPowerManagerInternal.getLowPowerState(3).batterySaverEnabled;
        }
        PowerManager.WakeLock wakeLockNewWakeLock = this.mPowerManager.newWakeLock(1, "SCREEN_FROZEN");
        this.mScreenFrozenLock = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
        this.mDisplayNotificationController = new DisplayWindowListenerController(this);
        this.mActivityManager = ActivityManager.getService();
        this.mActivityTaskManager = ActivityTaskManager.getService();
        this.mAmInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        this.mAtmInternal = (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);
        this.mAppOps = (AppOpsManager) context.getSystemService("appops");
        AppOpsManager.OnOpChangedListener onOpChangedListener = new AppOpsManager.OnOpChangedInternalListener() { // from class: com.android.server.wm.WindowManagerService.7
            public void onOpChanged(int op, String packageName) {
                WindowManagerService.this.updateAppOpsState();
            }
        };
        this.mAppOps.startWatchingMode(24, (String) null, onOpChangedListener);
        this.mAppOps.startWatchingMode(45, (String) null, onOpChangedListener);
        this.mPmInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        IntentFilter suspendPackagesFilter = new IntentFilter();
        suspendPackagesFilter.addAction("android.intent.action.PACKAGES_SUSPENDED");
        suspendPackagesFilter.addAction("android.intent.action.PACKAGES_UNSUSPENDED");
        context.registerReceiverAsUser(new BroadcastReceiver() { // from class: com.android.server.wm.WindowManagerService.8
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String[] affectedPackages = intent.getStringArrayExtra("android.intent.extra.changed_package_list");
                boolean suspended = "android.intent.action.PACKAGES_SUSPENDED".equals(intent.getAction());
                WindowManagerService.this.updateHiddenWhileSuspendedState(new ArraySet(Arrays.asList(affectedPackages)), suspended);
            }
        }, UserHandle.ALL, suspendPackagesFilter, null, null);
        ContentResolver resolver = context.getContentResolver();
        this.mWindowAnimationScaleSetting = Settings.Global.getFloat(resolver, "window_animation_scale", this.mWindowAnimationScaleSetting);
        this.mTransitionAnimationScaleSetting = Settings.Global.getFloat(resolver, "transition_animation_scale", context.getResources().getFloat(R.dimen.action_bar_icon_vertical_padding));
        float f = context.getResources().getFloat(R.dimen.config_appTransitionAnimationDurationScaleDefault);
        this.mAnimatorDurationScaleSetting = f;
        setAnimatorDurationScale(Settings.Global.getFloat(resolver, "animator_duration_scale", f));
        this.mForceDesktopModeOnExternalDisplays = Settings.Global.getInt(resolver, "force_desktop_mode_on_external_displays", 0) != 0;
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED");
        this.mContext.registerReceiverAsUser(this.mBroadcastReceiver, UserHandle.ALL, filter, null, null);
        this.mLatencyTracker = LatencyTracker.getInstance(context);
        this.mSettingsObserver = new SettingsObserver();
        PowerManager.WakeLock wakeLockNewWakeLock2 = this.mPowerManager.newWakeLock(536870922, TAG);
        this.mHoldingScreenWakeLock = wakeLockNewWakeLock2;
        wakeLockNewWakeLock2.setReferenceCounted(false);
        this.mSurfaceAnimationRunner = new SurfaceAnimationRunner(this.mTransactionFactory, this.mPowerManagerInternal);
        this.mAllowTheaterModeWakeFromLayout = context.getResources().getBoolean(R.bool.config_assistLongPressHomeEnabledDefault);
        this.mTaskPositioningController = new TaskPositioningController(this, this.mInputManager, this.mActivityTaskManager, this.mH.getLooper());
        this.mDragDropController = new DragDropController(this, this.mH.getLooper());
        this.mHighRefreshRateBlacklist = HighRefreshRateBlacklist.create(context.getResources());
        WindowManagerConstants windowManagerConstants = new WindowManagerConstants(this, DeviceConfigInterface.REAL);
        this.mConstants = windowManagerConstants;
        windowManagerConstants.start(new HandlerExecutor(this.mH));
        LocalServices.addService(WindowManagerInternal.class, new LocalService());
        this.mEmbeddedWindowController = new EmbeddedWindowController(this.mAtmService);
        this.mDisplayAreaPolicyProvider = DisplayAreaPolicy.Provider.fromResources(this.mContext.getResources());
        setGlobalShadowSettings();
    }

    private void setGlobalShadowSettings() {
        TypedArray a = this.mContext.obtainStyledAttributes(null, com.android.internal.R.styleable.Lighting, 0, 0);
        float lightY = a.getDimension(3, 0.0f);
        float lightZ = a.getDimension(4, 0.0f);
        float lightRadius = a.getDimension(2, 0.0f);
        float ambientShadowAlpha = a.getFloat(0, 0.0f);
        float spotShadowAlpha = a.getFloat(1, 0.0f);
        float[] ambientColor = {0.0f, 0.0f, 0.0f, ambientShadowAlpha};
        float[] spotColor = {0.0f, 0.0f, 0.0f, spotShadowAlpha};
        SurfaceControl.setGlobalShadowSettings(ambientColor, spotColor, lightY, lightZ, lightRadius);
        setShadowRenderer();
    }

    public void onInitReady() {
        initPolicy();
        Watchdog.getInstance().addMonitor(this);
        createWatermark();
        showEmulatorDisplayOverlayIfNeeded();
    }

    public InputManagerCallback getInputManagerCallback() {
        return this.mInputManagerCallback;
    }

    public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        try {
            return super.onTransact(code, data, reply, flags);
        } catch (RuntimeException e) {
            if (!(e instanceof SecurityException) && ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam0 = String.valueOf(e);
                ProtoLogImpl.wtf(ProtoLogGroup.WM_ERROR, 371641947, 0, "Window Manager Crash %s", protoLogParam0);
            }
            throw e;
        }
    }

    static boolean excludeWindowTypeFromTapOutTask(int windowType) {
        if (windowType == 2000 || windowType == 2012 || windowType == 2040 || windowType == 2019 || windowType == 2020) {
            return true;
        }
        return false;
    }

    public boolean isValidFocusedDisplayId(int focusedDisplayId) {
        List<Integer> list = this.mFocusedDisplayIdBlackList;
        if (list == null || list.size() <= 0) {
            return true;
        }
        return !this.mFocusedDisplayIdBlackList.contains(Integer.valueOf(focusedDisplayId));
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x08fb */
    /* JADX WARN: Code duplicated, block: B:118:0x0244  */
    /* JADX WARN: Code duplicated, block: B:121:0x0255  */
    /* JADX WARN: Code duplicated, block: B:122:0x0257  */
    /* JADX WARN: Code duplicated, block: B:125:0x025d A[Catch: all -> 0x01fa, TRY_ENTER, TRY_LEAVE, TryCatch #10 {all -> 0x01fa, blocks: (B:101:0x01f0, B:125:0x025d, B:131:0x026d, B:135:0x0284, B:137:0x02a0, B:141:0x02a7, B:142:0x02b9, B:144:0x02bd, B:146:0x02c4, B:145:0x02c0, B:154:0x0304, B:156:0x0308, B:158:0x031c, B:163:0x0327, B:165:0x032b, B:166:0x033e, B:111:0x0225, B:113:0x0229, B:115:0x023f), top: B:489:0x01ce }] */
    /* JADX WARN: Code duplicated, block: B:131:0x026d A[Catch: all -> 0x01fa, TRY_ENTER, TryCatch #10 {all -> 0x01fa, blocks: (B:101:0x01f0, B:125:0x025d, B:131:0x026d, B:135:0x0284, B:137:0x02a0, B:141:0x02a7, B:142:0x02b9, B:144:0x02bd, B:146:0x02c4, B:145:0x02c0, B:154:0x0304, B:156:0x0308, B:158:0x031c, B:163:0x0327, B:165:0x032b, B:166:0x033e, B:111:0x0225, B:113:0x0229, B:115:0x023f), top: B:489:0x01ce }] */
    /* JADX WARN: Code duplicated, block: B:132:0x0272  */
    /* JADX WARN: Code duplicated, block: B:135:0x0284 A[Catch: all -> 0x01fa, TryCatch #10 {all -> 0x01fa, blocks: (B:101:0x01f0, B:125:0x025d, B:131:0x026d, B:135:0x0284, B:137:0x02a0, B:141:0x02a7, B:142:0x02b9, B:144:0x02bd, B:146:0x02c4, B:145:0x02c0, B:154:0x0304, B:156:0x0308, B:158:0x031c, B:163:0x0327, B:165:0x032b, B:166:0x033e, B:111:0x0225, B:113:0x0229, B:115:0x023f), top: B:489:0x01ce }] */
    /* JADX WARN: Code duplicated, block: B:137:0x02a0 A[Catch: all -> 0x01fa, TRY_LEAVE, TryCatch #10 {all -> 0x01fa, blocks: (B:101:0x01f0, B:125:0x025d, B:131:0x026d, B:135:0x0284, B:137:0x02a0, B:141:0x02a7, B:142:0x02b9, B:144:0x02bd, B:146:0x02c4, B:145:0x02c0, B:154:0x0304, B:156:0x0308, B:158:0x031c, B:163:0x0327, B:165:0x032b, B:166:0x033e, B:111:0x0225, B:113:0x0229, B:115:0x023f), top: B:489:0x01ce }] */
    /* JADX WARN: Code duplicated, block: B:140:0x02a5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x02a7 A[Catch: all -> 0x01fa, TRY_ENTER, TryCatch #10 {all -> 0x01fa, blocks: (B:101:0x01f0, B:125:0x025d, B:131:0x026d, B:135:0x0284, B:137:0x02a0, B:141:0x02a7, B:142:0x02b9, B:144:0x02bd, B:146:0x02c4, B:145:0x02c0, B:154:0x0304, B:156:0x0308, B:158:0x031c, B:163:0x0327, B:165:0x032b, B:166:0x033e, B:111:0x0225, B:113:0x0229, B:115:0x023f), top: B:489:0x01ce }] */
    /* JADX WARN: Code duplicated, block: B:142:0x02b9 A[Catch: all -> 0x01fa, TryCatch #10 {all -> 0x01fa, blocks: (B:101:0x01f0, B:125:0x025d, B:131:0x026d, B:135:0x0284, B:137:0x02a0, B:141:0x02a7, B:142:0x02b9, B:144:0x02bd, B:146:0x02c4, B:145:0x02c0, B:154:0x0304, B:156:0x0308, B:158:0x031c, B:163:0x0327, B:165:0x032b, B:166:0x033e, B:111:0x0225, B:113:0x0229, B:115:0x023f), top: B:489:0x01ce }] */
    /* JADX WARN: Code duplicated, block: B:144:0x02bd A[Catch: all -> 0x01fa, TryCatch #10 {all -> 0x01fa, blocks: (B:101:0x01f0, B:125:0x025d, B:131:0x026d, B:135:0x0284, B:137:0x02a0, B:141:0x02a7, B:142:0x02b9, B:144:0x02bd, B:146:0x02c4, B:145:0x02c0, B:154:0x0304, B:156:0x0308, B:158:0x031c, B:163:0x0327, B:165:0x032b, B:166:0x033e, B:111:0x0225, B:113:0x0229, B:115:0x023f), top: B:489:0x01ce }] */
    /* JADX WARN: Code duplicated, block: B:145:0x02c0 A[Catch: all -> 0x01fa, TryCatch #10 {all -> 0x01fa, blocks: (B:101:0x01f0, B:125:0x025d, B:131:0x026d, B:135:0x0284, B:137:0x02a0, B:141:0x02a7, B:142:0x02b9, B:144:0x02bd, B:146:0x02c4, B:145:0x02c0, B:154:0x0304, B:156:0x0308, B:158:0x031c, B:163:0x0327, B:165:0x032b, B:166:0x033e, B:111:0x0225, B:113:0x0229, B:115:0x023f), top: B:489:0x01ce }] */
    /* JADX WARN: Code duplicated, block: B:148:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:182:0x0377  */
    /* JADX WARN: Code duplicated, block: B:184:0x037d  */
    /* JADX WARN: Code duplicated, block: B:187:0x0383 A[Catch: all -> 0x03a9, TryCatch #3 {all -> 0x03a9, blocks: (B:171:0x0347, B:173:0x034b, B:175:0x034f, B:176:0x035c, B:185:0x037f, B:187:0x0383, B:189:0x0387, B:190:0x039c, B:198:0x03bb, B:200:0x03bf, B:202:0x03c3, B:203:0x03d8, B:209:0x03e9, B:211:0x03ed, B:213:0x03f1, B:214:0x0406, B:220:0x0417, B:222:0x041b, B:224:0x041f, B:225:0x0434), top: B:478:0x02f8 }] */
    /* JADX WARN: Code duplicated, block: B:189:0x0387 A[Catch: all -> 0x03a9, TryCatch #3 {all -> 0x03a9, blocks: (B:171:0x0347, B:173:0x034b, B:175:0x034f, B:176:0x035c, B:185:0x037f, B:187:0x0383, B:189:0x0387, B:190:0x039c, B:198:0x03bb, B:200:0x03bf, B:202:0x03c3, B:203:0x03d8, B:209:0x03e9, B:211:0x03ed, B:213:0x03f1, B:214:0x0406, B:220:0x0417, B:222:0x041b, B:224:0x041f, B:225:0x0434), top: B:478:0x02f8 }] */
    /* JADX WARN: Code duplicated, block: B:193:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:196:0x03b5  */
    /* JADX WARN: Code duplicated, block: B:198:0x03bb A[Catch: all -> 0x03a9, TRY_ENTER, TryCatch #3 {all -> 0x03a9, blocks: (B:171:0x0347, B:173:0x034b, B:175:0x034f, B:176:0x035c, B:185:0x037f, B:187:0x0383, B:189:0x0387, B:190:0x039c, B:198:0x03bb, B:200:0x03bf, B:202:0x03c3, B:203:0x03d8, B:209:0x03e9, B:211:0x03ed, B:213:0x03f1, B:214:0x0406, B:220:0x0417, B:222:0x041b, B:224:0x041f, B:225:0x0434), top: B:478:0x02f8 }] */
    /* JADX WARN: Code duplicated, block: B:200:0x03bf A[Catch: all -> 0x03a9, TryCatch #3 {all -> 0x03a9, blocks: (B:171:0x0347, B:173:0x034b, B:175:0x034f, B:176:0x035c, B:185:0x037f, B:187:0x0383, B:189:0x0387, B:190:0x039c, B:198:0x03bb, B:200:0x03bf, B:202:0x03c3, B:203:0x03d8, B:209:0x03e9, B:211:0x03ed, B:213:0x03f1, B:214:0x0406, B:220:0x0417, B:222:0x041b, B:224:0x041f, B:225:0x0434), top: B:478:0x02f8 }] */
    /* JADX WARN: Code duplicated, block: B:202:0x03c3 A[Catch: all -> 0x03a9, TryCatch #3 {all -> 0x03a9, blocks: (B:171:0x0347, B:173:0x034b, B:175:0x034f, B:176:0x035c, B:185:0x037f, B:187:0x0383, B:189:0x0387, B:190:0x039c, B:198:0x03bb, B:200:0x03bf, B:202:0x03c3, B:203:0x03d8, B:209:0x03e9, B:211:0x03ed, B:213:0x03f1, B:214:0x0406, B:220:0x0417, B:222:0x041b, B:224:0x041f, B:225:0x0434), top: B:478:0x02f8 }] */
    /* JADX WARN: Code duplicated, block: B:206:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:207:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:209:0x03e9 A[Catch: all -> 0x03a9, TRY_ENTER, TryCatch #3 {all -> 0x03a9, blocks: (B:171:0x0347, B:173:0x034b, B:175:0x034f, B:176:0x035c, B:185:0x037f, B:187:0x0383, B:189:0x0387, B:190:0x039c, B:198:0x03bb, B:200:0x03bf, B:202:0x03c3, B:203:0x03d8, B:209:0x03e9, B:211:0x03ed, B:213:0x03f1, B:214:0x0406, B:220:0x0417, B:222:0x041b, B:224:0x041f, B:225:0x0434), top: B:478:0x02f8 }] */
    /* JADX WARN: Code duplicated, block: B:211:0x03ed A[Catch: all -> 0x03a9, TryCatch #3 {all -> 0x03a9, blocks: (B:171:0x0347, B:173:0x034b, B:175:0x034f, B:176:0x035c, B:185:0x037f, B:187:0x0383, B:189:0x0387, B:190:0x039c, B:198:0x03bb, B:200:0x03bf, B:202:0x03c3, B:203:0x03d8, B:209:0x03e9, B:211:0x03ed, B:213:0x03f1, B:214:0x0406, B:220:0x0417, B:222:0x041b, B:224:0x041f, B:225:0x0434), top: B:478:0x02f8 }] */
    /* JADX WARN: Code duplicated, block: B:213:0x03f1 A[Catch: all -> 0x03a9, TryCatch #3 {all -> 0x03a9, blocks: (B:171:0x0347, B:173:0x034b, B:175:0x034f, B:176:0x035c, B:185:0x037f, B:187:0x0383, B:189:0x0387, B:190:0x039c, B:198:0x03bb, B:200:0x03bf, B:202:0x03c3, B:203:0x03d8, B:209:0x03e9, B:211:0x03ed, B:213:0x03f1, B:214:0x0406, B:220:0x0417, B:222:0x041b, B:224:0x041f, B:225:0x0434), top: B:478:0x02f8 }] */
    /* JADX WARN: Code duplicated, block: B:217:0x040b  */
    /* JADX WARN: Code duplicated, block: B:218:0x0413  */
    /* JADX WARN: Code duplicated, block: B:220:0x0417 A[Catch: all -> 0x03a9, TRY_ENTER, TryCatch #3 {all -> 0x03a9, blocks: (B:171:0x0347, B:173:0x034b, B:175:0x034f, B:176:0x035c, B:185:0x037f, B:187:0x0383, B:189:0x0387, B:190:0x039c, B:198:0x03bb, B:200:0x03bf, B:202:0x03c3, B:203:0x03d8, B:209:0x03e9, B:211:0x03ed, B:213:0x03f1, B:214:0x0406, B:220:0x0417, B:222:0x041b, B:224:0x041f, B:225:0x0434), top: B:478:0x02f8 }] */
    /* JADX WARN: Code duplicated, block: B:222:0x041b A[Catch: all -> 0x03a9, TryCatch #3 {all -> 0x03a9, blocks: (B:171:0x0347, B:173:0x034b, B:175:0x034f, B:176:0x035c, B:185:0x037f, B:187:0x0383, B:189:0x0387, B:190:0x039c, B:198:0x03bb, B:200:0x03bf, B:202:0x03c3, B:203:0x03d8, B:209:0x03e9, B:211:0x03ed, B:213:0x03f1, B:214:0x0406, B:220:0x0417, B:222:0x041b, B:224:0x041f, B:225:0x0434), top: B:478:0x02f8 }] */
    /* JADX WARN: Code duplicated, block: B:224:0x041f A[Catch: all -> 0x03a9, TryCatch #3 {all -> 0x03a9, blocks: (B:171:0x0347, B:173:0x034b, B:175:0x034f, B:176:0x035c, B:185:0x037f, B:187:0x0383, B:189:0x0387, B:190:0x039c, B:198:0x03bb, B:200:0x03bf, B:202:0x03c3, B:203:0x03d8, B:209:0x03e9, B:211:0x03ed, B:213:0x03f1, B:214:0x0406, B:220:0x0417, B:222:0x041b, B:224:0x041f, B:225:0x0434), top: B:478:0x02f8 }] */
    /* JADX WARN: Code duplicated, block: B:228:0x0439  */
    /* JADX WARN: Code duplicated, block: B:229:0x0441  */
    /* JADX WARN: Code duplicated, block: B:235:0x0451 A[Catch: all -> 0x04b7, TryCatch #7 {all -> 0x04b7, blocks: (B:233:0x0449, B:235:0x0451, B:237:0x0455, B:239:0x0459, B:240:0x046e, B:248:0x048e, B:250:0x0492, B:252:0x0496, B:253:0x04ab, B:264:0x04cd), top: B:485:0x0443 }] */
    /* JADX WARN: Code duplicated, block: B:246:0x0488  */
    /* JADX WARN: Code duplicated, block: B:248:0x048e A[Catch: all -> 0x04b7, TRY_ENTER, TryCatch #7 {all -> 0x04b7, blocks: (B:233:0x0449, B:235:0x0451, B:237:0x0455, B:239:0x0459, B:240:0x046e, B:248:0x048e, B:250:0x0492, B:252:0x0496, B:253:0x04ab, B:264:0x04cd), top: B:485:0x0443 }] */
    /* JADX WARN: Code duplicated, block: B:250:0x0492 A[Catch: all -> 0x04b7, TryCatch #7 {all -> 0x04b7, blocks: (B:233:0x0449, B:235:0x0451, B:237:0x0455, B:239:0x0459, B:240:0x046e, B:248:0x048e, B:250:0x0492, B:252:0x0496, B:253:0x04ab, B:264:0x04cd), top: B:485:0x0443 }] */
    /* JADX WARN: Code duplicated, block: B:252:0x0496 A[Catch: all -> 0x04b7, TryCatch #7 {all -> 0x04b7, blocks: (B:233:0x0449, B:235:0x0451, B:237:0x0455, B:239:0x0459, B:240:0x046e, B:248:0x048e, B:250:0x0492, B:252:0x0496, B:253:0x04ab, B:264:0x04cd), top: B:485:0x0443 }] */
    /* JADX WARN: Code duplicated, block: B:256:0x04b0  */
    /* JADX WARN: Code duplicated, block: B:263:0x04cc  */
    /* JADX WARN: Code duplicated, block: B:266:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:276:0x051c  */
    /* JADX WARN: Code duplicated, block: B:282:0x055a A[Catch: all -> 0x057a, TRY_ENTER, TryCatch #9 {all -> 0x057a, blocks: (B:282:0x055a, B:284:0x055e, B:285:0x0575, B:292:0x058e, B:294:0x0592, B:295:0x05a0), top: B:488:0x0558 }] */
    /* JADX WARN: Code duplicated, block: B:284:0x055e A[Catch: all -> 0x057a, TryCatch #9 {all -> 0x057a, blocks: (B:282:0x055a, B:284:0x055e, B:285:0x0575, B:292:0x058e, B:294:0x0592, B:295:0x05a0), top: B:488:0x0558 }] */
    /* JADX WARN: Code duplicated, block: B:290:0x0588 A[Catch: all -> 0x0872, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x0872, blocks: (B:280:0x0551, B:290:0x0588, B:299:0x05a8), top: B:483:0x0551 }] */
    /* JADX WARN: Code duplicated, block: B:292:0x058e A[Catch: all -> 0x057a, TRY_ENTER, TryCatch #9 {all -> 0x057a, blocks: (B:282:0x055a, B:284:0x055e, B:285:0x0575, B:292:0x058e, B:294:0x0592, B:295:0x05a0), top: B:488:0x0558 }] */
    /* JADX WARN: Code duplicated, block: B:294:0x0592 A[Catch: all -> 0x057a, TryCatch #9 {all -> 0x057a, blocks: (B:282:0x055a, B:284:0x055e, B:285:0x0575, B:292:0x058e, B:294:0x0592, B:295:0x05a0), top: B:488:0x0558 }] */
    /* JADX WARN: Code duplicated, block: B:298:0x05a7  */
    /* JADX WARN: Code duplicated, block: B:304:0x05bd A[Catch: all -> 0x05c2, TRY_ENTER, TRY_LEAVE, TryCatch #17 {all -> 0x05c2, blocks: (B:304:0x05bd, B:311:0x05d8, B:316:0x05e2), top: B:501:0x05bb }] */
    /* JADX WARN: Code duplicated, block: B:309:0x05d2  */
    /* JADX WARN: Code duplicated, block: B:314:0x05df  */
    /* JADX WARN: Code duplicated, block: B:316:0x05e2 A[Catch: all -> 0x05c2, TRY_LEAVE, TryCatch #17 {all -> 0x05c2, blocks: (B:304:0x05bd, B:311:0x05d8, B:316:0x05e2), top: B:501:0x05bb }] */
    /* JADX WARN: Code duplicated, block: B:319:0x05eb  */
    /* JADX WARN: Code duplicated, block: B:322:0x05f3 A[Catch: all -> 0x0609, TRY_ENTER, TryCatch #22 {all -> 0x0609, blocks: (B:322:0x05f3, B:324:0x05f7, B:325:0x0604, B:331:0x0619, B:333:0x061f, B:335:0x0623), top: B:508:0x05f1 }] */
    /* JADX WARN: Code duplicated, block: B:324:0x05f7 A[Catch: all -> 0x0609, TryCatch #22 {all -> 0x0609, blocks: (B:322:0x05f3, B:324:0x05f7, B:325:0x0604, B:331:0x0619, B:333:0x061f, B:335:0x0623), top: B:508:0x05f1 }] */
    /* JADX WARN: Code duplicated, block: B:330:0x0617  */
    /* JADX WARN: Code duplicated, block: B:339:0x0630  */
    /* JADX WARN: Code duplicated, block: B:346:0x0660  */
    /* JADX WARN: Code duplicated, block: B:350:0x066d A[Catch: all -> 0x0857, TryCatch #30 {all -> 0x0857, blocks: (B:348:0x0669, B:350:0x066d, B:351:0x0671, B:353:0x0675, B:354:0x0679, B:357:0x0682, B:360:0x068d, B:364:0x06bc), top: B:520:0x0669 }] */
    /* JADX WARN: Code duplicated, block: B:353:0x0675 A[Catch: all -> 0x0857, TryCatch #30 {all -> 0x0857, blocks: (B:348:0x0669, B:350:0x066d, B:351:0x0671, B:353:0x0675, B:354:0x0679, B:357:0x0682, B:360:0x068d, B:364:0x06bc), top: B:520:0x0669 }] */
    /* JADX WARN: Code duplicated, block: B:356:0x067d A[Catch: all -> 0x0647, TRY_ENTER, TRY_LEAVE, TryCatch #20 {, blocks: (B:356:0x067d, B:359:0x0688, B:340:0x0633), top: B:506:0x0633 }] */
    /* JADX WARN: Code duplicated, block: B:359:0x0688 A[Catch: all -> 0x0647, TRY_ENTER, TRY_LEAVE, TryCatch #20 {, blocks: (B:356:0x067d, B:359:0x0688, B:340:0x0633), top: B:506:0x0633 }] */
    /* JADX WARN: Code duplicated, block: B:362:0x06b9  */
    /* JADX WARN: Code duplicated, block: B:363:0x06bb  */
    /* JADX WARN: Code duplicated, block: B:376:0x0700  */
    /* JADX WARN: Code duplicated, block: B:379:0x0718 A[Catch: all -> 0x084e, TryCatch #24 {all -> 0x084e, blocks: (B:372:0x06db, B:377:0x0706, B:379:0x0718, B:392:0x0752, B:394:0x075b, B:396:0x0761, B:398:0x0767, B:399:0x076a, B:401:0x0780, B:402:0x0784, B:382:0x0721, B:385:0x072b, B:386:0x0737, B:388:0x073d, B:389:0x0744, B:391:0x074c), top: B:509:0x06db }] */
    /* JADX WARN: Code duplicated, block: B:380:0x071d  */
    /* JADX WARN: Code duplicated, block: B:382:0x0721 A[Catch: all -> 0x084e, TryCatch #24 {all -> 0x084e, blocks: (B:372:0x06db, B:377:0x0706, B:379:0x0718, B:392:0x0752, B:394:0x075b, B:396:0x0761, B:398:0x0767, B:399:0x076a, B:401:0x0780, B:402:0x0784, B:382:0x0721, B:385:0x072b, B:386:0x0737, B:388:0x073d, B:389:0x0744, B:391:0x074c), top: B:509:0x06db }] */
    /* JADX WARN: Code duplicated, block: B:383:0x0727  */
    /* JADX WARN: Code duplicated, block: B:385:0x072b A[Catch: all -> 0x084e, TryCatch #24 {all -> 0x084e, blocks: (B:372:0x06db, B:377:0x0706, B:379:0x0718, B:392:0x0752, B:394:0x075b, B:396:0x0761, B:398:0x0767, B:399:0x076a, B:401:0x0780, B:402:0x0784, B:382:0x0721, B:385:0x072b, B:386:0x0737, B:388:0x073d, B:389:0x0744, B:391:0x074c), top: B:509:0x06db }] */
    /* JADX WARN: Code duplicated, block: B:386:0x0737 A[Catch: all -> 0x084e, TryCatch #24 {all -> 0x084e, blocks: (B:372:0x06db, B:377:0x0706, B:379:0x0718, B:392:0x0752, B:394:0x075b, B:396:0x0761, B:398:0x0767, B:399:0x076a, B:401:0x0780, B:402:0x0784, B:382:0x0721, B:385:0x072b, B:386:0x0737, B:388:0x073d, B:389:0x0744, B:391:0x074c), top: B:509:0x06db }] */
    /* JADX WARN: Code duplicated, block: B:388:0x073d A[ADDED_TO_REGION, Catch: all -> 0x084e, REMOVE, TryCatch #24 {all -> 0x084e, blocks: (B:372:0x06db, B:377:0x0706, B:379:0x0718, B:392:0x0752, B:394:0x075b, B:396:0x0761, B:398:0x0767, B:399:0x076a, B:401:0x0780, B:402:0x0784, B:382:0x0721, B:385:0x072b, B:386:0x0737, B:388:0x073d, B:389:0x0744, B:391:0x074c), top: B:509:0x06db }] */
    /* JADX WARN: Code duplicated, block: B:389:0x0744 A[Catch: all -> 0x084e, TryCatch #24 {all -> 0x084e, blocks: (B:372:0x06db, B:377:0x0706, B:379:0x0718, B:392:0x0752, B:394:0x075b, B:396:0x0761, B:398:0x0767, B:399:0x076a, B:401:0x0780, B:402:0x0784, B:382:0x0721, B:385:0x072b, B:386:0x0737, B:388:0x073d, B:389:0x0744, B:391:0x074c), top: B:509:0x06db }] */
    /* JADX WARN: Code duplicated, block: B:394:0x075b A[Catch: all -> 0x084e, TryCatch #24 {all -> 0x084e, blocks: (B:372:0x06db, B:377:0x0706, B:379:0x0718, B:392:0x0752, B:394:0x075b, B:396:0x0761, B:398:0x0767, B:399:0x076a, B:401:0x0780, B:402:0x0784, B:382:0x0721, B:385:0x072b, B:386:0x0737, B:388:0x073d, B:389:0x0744, B:391:0x074c), top: B:509:0x06db }] */
    /* JADX WARN: Code duplicated, block: B:401:0x0780 A[Catch: all -> 0x084e, TryCatch #24 {all -> 0x084e, blocks: (B:372:0x06db, B:377:0x0706, B:379:0x0718, B:392:0x0752, B:394:0x075b, B:396:0x0761, B:398:0x0767, B:399:0x076a, B:401:0x0780, B:402:0x0784, B:382:0x0721, B:385:0x072b, B:386:0x0737, B:388:0x073d, B:389:0x0744, B:391:0x074c), top: B:509:0x06db }] */
    /* JADX WARN: Code duplicated, block: B:406:0x0795 A[Catch: all -> 0x0847, TryCatch #19 {all -> 0x0847, blocks: (B:404:0x078e, B:406:0x0795, B:407:0x0799, B:409:0x079d, B:412:0x07a9, B:414:0x07b7, B:418:0x07c3, B:419:0x07c7, B:421:0x07d0, B:422:0x07da, B:424:0x07e6, B:426:0x0823, B:428:0x0829, B:430:0x082f, B:431:0x0832, B:411:0x07a5), top: B:504:0x078e }] */
    /* JADX WARN: Code duplicated, block: B:409:0x079d A[Catch: all -> 0x0847, TryCatch #19 {all -> 0x0847, blocks: (B:404:0x078e, B:406:0x0795, B:407:0x0799, B:409:0x079d, B:412:0x07a9, B:414:0x07b7, B:418:0x07c3, B:419:0x07c7, B:421:0x07d0, B:422:0x07da, B:424:0x07e6, B:426:0x0823, B:428:0x0829, B:430:0x082f, B:431:0x0832, B:411:0x07a5), top: B:504:0x078e }] */
    /* JADX WARN: Code duplicated, block: B:411:0x07a5 A[Catch: all -> 0x0847, TryCatch #19 {all -> 0x0847, blocks: (B:404:0x078e, B:406:0x0795, B:407:0x0799, B:409:0x079d, B:412:0x07a9, B:414:0x07b7, B:418:0x07c3, B:419:0x07c7, B:421:0x07d0, B:422:0x07da, B:424:0x07e6, B:426:0x0823, B:428:0x0829, B:430:0x082f, B:431:0x0832, B:411:0x07a5), top: B:504:0x078e }] */
    /* JADX WARN: Code duplicated, block: B:414:0x07b7 A[Catch: all -> 0x0847, TryCatch #19 {all -> 0x0847, blocks: (B:404:0x078e, B:406:0x0795, B:407:0x0799, B:409:0x079d, B:412:0x07a9, B:414:0x07b7, B:418:0x07c3, B:419:0x07c7, B:421:0x07d0, B:422:0x07da, B:424:0x07e6, B:426:0x0823, B:428:0x0829, B:430:0x082f, B:431:0x0832, B:411:0x07a5), top: B:504:0x078e }] */
    /* JADX WARN: Code duplicated, block: B:418:0x07c3 A[Catch: all -> 0x0847, TryCatch #19 {all -> 0x0847, blocks: (B:404:0x078e, B:406:0x0795, B:407:0x0799, B:409:0x079d, B:412:0x07a9, B:414:0x07b7, B:418:0x07c3, B:419:0x07c7, B:421:0x07d0, B:422:0x07da, B:424:0x07e6, B:426:0x0823, B:428:0x0829, B:430:0x082f, B:431:0x0832, B:411:0x07a5), top: B:504:0x078e }] */
    /* JADX WARN: Code duplicated, block: B:421:0x07d0 A[Catch: all -> 0x0847, TryCatch #19 {all -> 0x0847, blocks: (B:404:0x078e, B:406:0x0795, B:407:0x0799, B:409:0x079d, B:412:0x07a9, B:414:0x07b7, B:418:0x07c3, B:419:0x07c7, B:421:0x07d0, B:422:0x07da, B:424:0x07e6, B:426:0x0823, B:428:0x0829, B:430:0x082f, B:431:0x0832, B:411:0x07a5), top: B:504:0x078e }] */
    /* JADX WARN: Code duplicated, block: B:424:0x07e6 A[Catch: all -> 0x0847, TryCatch #19 {all -> 0x0847, blocks: (B:404:0x078e, B:406:0x0795, B:407:0x0799, B:409:0x079d, B:412:0x07a9, B:414:0x07b7, B:418:0x07c3, B:419:0x07c7, B:421:0x07d0, B:422:0x07da, B:424:0x07e6, B:426:0x0823, B:428:0x0829, B:430:0x082f, B:431:0x0832, B:411:0x07a5), top: B:504:0x078e }] */
    /* JADX WARN: Code duplicated, block: B:425:0x081b  */
    /* JADX WARN: Code duplicated, block: B:428:0x0829 A[Catch: all -> 0x0847, TryCatch #19 {all -> 0x0847, blocks: (B:404:0x078e, B:406:0x0795, B:407:0x0799, B:409:0x079d, B:412:0x07a9, B:414:0x07b7, B:418:0x07c3, B:419:0x07c7, B:421:0x07d0, B:422:0x07da, B:424:0x07e6, B:426:0x0823, B:428:0x0829, B:430:0x082f, B:431:0x0832, B:411:0x07a5), top: B:504:0x078e }] */
    /* JADX WARN: Code duplicated, block: B:492:0x0445 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:511:0x04c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:515:0x04c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:525:0x0262 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:527:0x01d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 28, insn: 0x0201: MOVE (r9 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r28 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('type' int)]), block:B:104:0x01fb */
    /* JADX WARN: Not initialized variable reg: 30, insn: 0x0203: MOVE (r12 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r30 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('callingUid' int)]), block:B:104:0x01fb */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int addWindow(com.android.server.wm.Session r50, android.view.IWindow r51, int r52, android.view.WindowManager.LayoutParams r53, int r54, int r55, android.graphics.Rect r56, android.graphics.Rect r57, android.graphics.Rect r58, android.view.DisplayCutout.ParcelableWrapper r59, android.view.InputChannel r60, android.view.InsetsState r61, android.view.InsetsSourceControl[] r62, int r63) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.WindowManagerService.addWindow(com.android.server.wm.Session, android.view.IWindow, int, android.view.WindowManager$LayoutParams, int, int, android.graphics.Rect, android.graphics.Rect, android.graphics.Rect, android.view.DisplayCutout$ParcelableWrapper, android.view.InputChannel, android.view.InsetsState, android.view.InsetsSourceControl[], int):int");
    }

    private void reportNewWindowAdded(WindowState state) {
        WindowManager.LayoutParams layout;
        if (state == null || (layout = state.getAttrs()) == null) {
            return;
        }
        String packageName = layout.packageName;
        int type = layout.type;
        StringBuilder sb = new StringBuilder(256);
        layout.dumpDimensions(sb);
        Slog.d(TAG, "addWindow: packages: " + packageName + ", windowName: " + state.getName() + ", displayId: " + state.getDisplayId() + ", type: " + ViewDebug.intToString(WindowManager.LayoutParams.class, DatabaseHelper.SoundModelContract.KEY_TYPE, type) + ", dimensinos: " + sb.toString() + ", Requested w=" + state.mRequestedWidth + ", h=" + state.mRequestedHeight);
        WindowAttributes windowAttributes = new WindowAttributes(0, type, packageName);
        this.mH.removeMessages(100);
        H h = this.mH;
        h.sendMessage(h.obtainMessage(100, windowAttributes));
    }

    private void reportNewWindowRemoved(WindowState state) {
        WindowManager.LayoutParams layout;
        if (state == null || (layout = state.getAttrs()) == null) {
            return;
        }
        String packageName = layout.packageName;
        int type = layout.type;
        StringBuilder sb = new StringBuilder(256);
        layout.dumpDimensions(sb);
        Slog.d(TAG, "removeWindow: packages: " + packageName + ", windowName: " + state.getName() + ", displayId: " + state.getDisplayId() + ", type: " + ViewDebug.intToString(WindowManager.LayoutParams.class, DatabaseHelper.SoundModelContract.KEY_TYPE, type) + ", dimensinos: " + sb.toString() + ", Requested w=" + state.mRequestedWidth + ", h=" + state.mRequestedHeight);
        WindowAttributes windowAttributes = new WindowAttributes(0, type, packageName);
        this.mH.removeMessages(101);
        H h = this.mH;
        h.sendMessage(h.obtainMessage(101, windowAttributes));
    }

    private class LinkedListener implements IBinder.DeathRecipient {
        private final IWindowAttributesCallback mListener;

        public LinkedListener(IWindowAttributesCallback listener) {
            this.mListener = listener;
        }

        public IWindowAttributesCallback getUnderlyingListener() {
            return this.mListener;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Slog.w(WindowManagerService.TAG, "Remote WindowAttributes callback Listener died: " + this.mListener);
            try {
                WindowManagerService.this.unregisterWindowAttributesListener(this.mListener);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public boolean registerWindowAttributesListener(IWindowAttributesCallback listener) throws RemoteException {
        Slog.d(TAG, "registerWindowAttributesListener: ");
        IBinder binder = listener.asBinder();
        LinkedListener deathListener = new LinkedListener(listener);
        synchronized (this.mWindowAttributesListenerMap) {
            if (this.mWindowAttributesListenerMap.containsKey(binder)) {
                return true;
            }
            try {
                binder.linkToDeath(deathListener, 0);
                this.mWindowAttributesListenerMap.put(binder, deathListener);
                synchronized (this.windowAttributesCallbacklist) {
                    Slog.d(TAG, "register pid: " + Binder.getCallingPid());
                    this.windowAttributesCallbacklist.register(listener);
                }
                return true;
            } catch (RemoteException e) {
                Slog.v(TAG, "Remote listener already died.", e);
                return false;
            }
        }
    }

    public boolean unregisterWindowAttributesListener(IWindowAttributesCallback listener) throws RemoteException {
        LinkedListener linkedListener;
        Slog.d(TAG, "unregisterWindowAttributesListener: ");
        synchronized (this.windowAttributesCallbacklist) {
            Slog.d(TAG, "unregister pid: " + Binder.getCallingPid());
            this.windowAttributesCallbacklist.unregister(listener);
        }
        IBinder binder = listener.asBinder();
        synchronized (this.mWindowAttributesListenerMap) {
            linkedListener = this.mWindowAttributesListenerMap.remove(binder);
        }
        if (linkedListener != null) {
            binder.unlinkToDeath(linkedListener, 0);
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyWindowAdded(WindowAttributes attributes) throws RemoteException {
        Slog.d(TAG, "notifyWindowAdded, packageName: " + attributes.getPackageName());
        int count = this.windowAttributesCallbacklist.beginBroadcast();
        for (int i = 0; i < count; i++) {
            try {
                this.windowAttributesCallbacklist.getBroadcastItem(i).onNewWindowAdded(attributes);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.windowAttributesCallbacklist.finishBroadcast();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyWindowRemoved(WindowAttributes attributes) throws RemoteException {
        Slog.d(TAG, "notifyWindowRemoved, packageName: " + attributes.getPackageName());
        int count = this.windowAttributesCallbacklist.beginBroadcast();
        for (int i = 0; i < count; i++) {
            try {
                this.windowAttributesCallbacklist.getBroadcastItem(i).onWindowRemoved(attributes);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        this.windowAttributesCallbacklist.finishBroadcast();
    }

    public List<WindowAttributes> getWindowAttributesList() throws RemoteException {
        List<WindowAttributes> attributesList = new ArrayList<>();
        final ArrayList<WindowState> windows = new ArrayList<>();
        int layer = 0;
        synchronized (this.mWindowMap) {
            this.mRoot.forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$0mkLAJmfriFcu9dLa8KDEBbDVOk
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    WindowManagerService.lambda$getWindowAttributesList$2(windows, (WindowState) obj);
                }
            }, true);
        }
        for (WindowState win : windows) {
            WindowAttributes windowAttributes = new WindowAttributes(layer, win.getAttrs().type, win.getAttrs().packageName);
            attributesList.add(windowAttributes);
            layer++;
        }
        return attributesList;
    }

    static /* synthetic */ void lambda$getWindowAttributesList$2(ArrayList windows, WindowState w) {
        if (w.mWinAnimator.getShown()) {
            windows.add(w);
        }
    }

    private boolean unprivilegedAppCanCreateTokenWith(WindowState parentWindow, int callingUid, int type, int rootType, IBinder tokenForLog, String packageName) {
        if (rootType >= 1 && rootType <= 99) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam0 = String.valueOf(tokenForLog);
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -1113134997, 0, "Attempted to add application window with unknown token %s.  Aborting.", protoLogParam0);
            }
            return false;
        }
        if (rootType == 2011) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam1 = String.valueOf(tokenForLog);
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -2039580386, 0, "Attempted to add input method window with unknown token %s.  Aborting.", protoLogParam1);
            }
            return false;
        }
        if (rootType == 2031) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam2 = String.valueOf(tokenForLog);
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -914253865, 0, "Attempted to add voice interaction window with unknown token %s.  Aborting.", protoLogParam2);
            }
            return false;
        }
        if (rootType == 2013) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam3 = String.valueOf(tokenForLog);
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 424524729, 0, "Attempted to add wallpaper window with unknown token %s.  Aborting.", protoLogParam3);
            }
            return false;
        }
        if (rootType == 2035) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam4 = String.valueOf(tokenForLog);
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 898863925, 0, "Attempted to add QS dialog window with unknown token %s.  Aborting.", protoLogParam4);
            }
            return false;
        }
        if (rootType == 2032) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam5 = String.valueOf(tokenForLog);
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -1042574499, 0, "Attempted to add Accessibility overlay window with unknown token %s.  Aborting.", protoLogParam5);
            }
            return true;
        }
        if (type != 2005 || !doesAddToastWindowRequireToken(packageName, callingUid, parentWindow)) {
            return true;
        }
        if (ProtoLog$Cache.WM_ERROR_enabled) {
            String protoLogParam6 = String.valueOf(tokenForLog);
            ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1331177619, 0, "Attempted to add a toast window with unknown token %s.  Aborting.", protoLogParam6);
        }
        return false;
    }

    private DisplayContent getDisplayContentOrCreate(int displayId, IBinder token) {
        WindowToken wToken;
        if (token != null && (wToken = this.mRoot.getWindowToken(token)) != null) {
            return wToken.getDisplayContent();
        }
        return this.mRoot.getDisplayContentOrCreate(displayId);
    }

    private boolean doesAddToastWindowRequireToken(String packageName, int callingUid, WindowState attachedWindow) {
        if (attachedWindow != null) {
            return attachedWindow.mActivityRecord != null && attachedWindow.mActivityRecord.mTargetSdk >= 26;
        }
        try {
            ApplicationInfo appInfo = this.mContext.getPackageManager().getApplicationInfoAsUser(packageName, 0, UserHandle.getUserId(callingUid));
            if (appInfo.uid == callingUid) {
                return appInfo.targetSdkVersion >= 26;
            }
            throw new SecurityException("Package " + packageName + " not in UID " + callingUid);
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    private boolean prepareWindowReplacementTransition(ActivityRecord activity) {
        activity.clearAllDrawn();
        WindowState replacedWindow = activity.getReplacingWindow();
        if (replacedWindow == null) {
            return false;
        }
        Rect frame = replacedWindow.getVisibleFrameLw();
        DisplayContent dc = activity.getDisplayContent();
        dc.mOpeningApps.add(activity);
        dc.prepareAppTransition(18, true, 0, false);
        dc.mAppTransition.overridePendingAppTransitionClipReveal(frame.left, frame.top, frame.width(), frame.height());
        dc.executeAppTransition();
        return true;
    }

    private void prepareNoneTransitionForRelaunching(ActivityRecord activity) {
        DisplayContent dc = activity.getDisplayContent();
        if (this.mDisplayFrozen && !dc.mOpeningApps.contains(activity) && activity.isRelaunching()) {
            dc.mOpeningApps.add(activity);
            dc.prepareAppTransition(0, false, 0, false);
            dc.executeAppTransition();
        }
    }

    public void refreshScreenCaptureDisabled(int userId) {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 1000) {
            throw new SecurityException("Only system can call refreshScreenCaptureDisabled.");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mRoot.setSecureSurfaceState(userId);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void removeWindow(Session session, IWindow client) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                WindowState win = windowForClientLocked(session, client, false);
                if (win != null) {
                    reportNewWindowRemoved(win);
                    win.removeIfPossible();
                } else {
                    this.mEmbeddedWindowController.remove(client);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void postWindowRemoveCleanupLocked(WindowState win) {
        if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
            String protoLogParam0 = String.valueOf(win);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, -622997754, 0, null, protoLogParam0);
        }
        this.mWindowMap.remove(win.mClient.asBinder());
        DisplayContent dc = win.getDisplayContent();
        dc.getDisplayRotation().markForSeamlessRotation(win, false);
        win.resetAppOpsState();
        if (dc.mCurrentFocus == null) {
            dc.mWinRemovedSinceNullFocus.add(win);
        }
        this.mEmbeddedWindowController.onWindowRemoved(win);
        this.mPendingRemove.remove(win);
        this.mResizingWindows.remove(win);
        updateNonSystemOverlayWindowsVisibilityIfNeeded(win, false);
        this.mWindowsChanged = true;
        if (ProtoLog$Cache.WM_DEBUG_WINDOW_MOVEMENT_enabled) {
            String protoLogParam1 = String.valueOf(win);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_WINDOW_MOVEMENT, -193782861, 0, null, protoLogParam1);
        }
        DisplayContent displayContent = win.getDisplayContent();
        if (displayContent.mInputMethodWindow == win) {
            displayContent.setInputMethodWindowLocked(null);
        }
        WindowToken token = win.mToken;
        ActivityRecord activity = win.mActivityRecord;
        if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
            String protoLogParam2 = String.valueOf(win);
            String protoLogParam3 = String.valueOf(token);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, -1963461591, 0, null, protoLogParam2, protoLogParam3);
        }
        if (token.isEmpty()) {
            if (!token.mPersistOnEmpty) {
                token.removeImmediately();
            } else if (activity != null) {
                activity.firstWindowDrawn = false;
                activity.clearAllDrawn();
                ActivityStack stack = activity.getStack();
                if (stack != null) {
                    stack.mExitingActivities.remove(activity);
                }
            }
        }
        if (activity != null) {
            activity.postWindowRemoveStartingWindowCleanup(win);
        }
        if (win.mAttrs.type == 2013) {
            dc.mWallpaperController.clearLastWallpaperTimeoutTime();
            dc.pendingLayoutChanges |= 4;
        } else if ((win.mAttrs.flags & 1048576) != 0) {
            dc.pendingLayoutChanges |= 4;
        }
        if (dc != null && !this.mWindowPlacerLocked.isInLayout()) {
            dc.assignWindowLayers(true);
            this.mWindowPlacerLocked.performSurfacePlacement();
            if (win.mActivityRecord != null) {
                win.mActivityRecord.updateReportedVisibilityLocked();
            }
        }
        dc.getInputMonitor().updateInputWindowsLw(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHiddenWhileSuspendedState(ArraySet<String> packages, boolean suspended) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mRoot.updateHiddenWhileSuspendedState(packages, suspended);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAppOpsState() {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mRoot.updateAppOpsState();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    static void logSurface(WindowState w, String msg, boolean withStackTrace) {
        String str = "  SURFACE " + msg + ": " + w;
        if (withStackTrace) {
            logWithStack(TAG, str);
        } else {
            Slog.i(TAG, str);
        }
    }

    static void logWithStack(String tag, String s) {
        Slog.i(tag, s, (Throwable) null);
    }

    void setTransparentRegionWindow(Session session, IWindow client, Region region) {
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    WindowState w = windowForClientLocked(session, client, false);
                    if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
                        String protoLogParam0 = String.valueOf(region);
                        String protoLogParam1 = String.valueOf(w);
                        ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, -856025122, 0, null, protoLogParam0, protoLogParam1);
                    }
                    if (w != null && w.mHasSurface) {
                        w.mWinAnimator.setTransparentRegionHintLocked(region);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(origId);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    void setInsetsWindow(Session session, IWindow client, int touchableInsets, Rect contentInsets, Rect visibleInsets, Region touchableRegion) {
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    WindowState w = windowForClientLocked(session, client, false);
                    if (w != null) {
                        w.mGivenInsetsPending = false;
                        w.mGivenContentInsets.set(contentInsets);
                        w.mGivenVisibleInsets.set(visibleInsets);
                        w.mGivenTouchableRegion.set(touchableRegion);
                        w.mTouchableInsets = touchableInsets;
                        if (w.mGlobalScale != 1.0f) {
                            w.mGivenContentInsets.scale(w.mGlobalScale);
                            w.mGivenVisibleInsets.scale(w.mGlobalScale);
                            w.mGivenTouchableRegion.scale(w.mGlobalScale);
                        }
                        w.setDisplayLayoutNeeded();
                        this.mWindowPlacerLocked.performSurfacePlacement();
                        if (this.mAccessibilityController != null) {
                            this.mAccessibilityController.onSomeWindowResizedOrMovedLocked(w.getDisplayContent().getDisplayId());
                        }
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(origId);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public void getWindowDisplayFrame(Session session, IWindow client, Rect outDisplayFrame) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                WindowState win = windowForClientLocked(session, client, false);
                if (win == null) {
                    outDisplayFrame.setEmpty();
                    return;
                }
                outDisplayFrame.set(win.getDisplayFrameLw());
                if (win.inSizeCompatMode()) {
                    outDisplayFrame.scale(win.mInvGlobalScale);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void onRectangleOnScreenRequested(IBinder token, Rect rectangle) {
        WindowState window;
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                if (this.mAccessibilityController != null && (window = this.mWindowMap.get(token)) != null) {
                    this.mAccessibilityController.onRectangleOnScreenRequestedLocked(window.getDisplayId(), rectangle);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public IWindowId getWindowId(IBinder token) {
        WindowState.WindowId windowId;
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                WindowState window = this.mWindowMap.get(token);
                windowId = window != null ? window.mWindowId : null;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return windowId;
    }

    public void pokeDrawLock(Session session, IBinder token) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                WindowState window = windowForClientLocked(session, token, false);
                if (window != null) {
                    window.pokeDrawLockLw(this.mDrawLockTimeoutMillis);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    private boolean hasStatusBarPermission(int pid, int uid) {
        return this.mContext.checkPermission("android.permission.STATUS_BAR", pid, uid) == 0;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:115:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:124:0x020e  */
    /* JADX WARN: Code duplicated, block: B:132:0x021f  */
    /* JADX WARN: Code duplicated, block: B:135:0x0224  */
    /* JADX WARN: Code duplicated, block: B:136:0x0227  */
    /* JADX WARN: Code duplicated, block: B:141:0x0235 A[Catch: all -> 0x0241, TRY_LEAVE, TryCatch #1 {all -> 0x0241, blocks: (B:139:0x0231, B:141:0x0235), top: B:330:0x0231 }] */
    /* JADX WARN: Code duplicated, block: B:145:0x0250  */
    /* JADX WARN: Code duplicated, block: B:158:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:161:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:162:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:165:0x02d7 A[Catch: all -> 0x059d, TryCatch #22 {all -> 0x059d, blocks: (B:153:0x027e, B:159:0x02c9, B:163:0x02d3, B:165:0x02d7, B:167:0x02db, B:169:0x02e2, B:175:0x02f0, B:177:0x02f6, B:179:0x02fa, B:181:0x0300, B:184:0x030a), top: B:367:0x027e }] */
    /* JADX WARN: Code duplicated, block: B:172:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:175:0x02f0 A[Catch: all -> 0x059d, TryCatch #22 {all -> 0x059d, blocks: (B:153:0x027e, B:159:0x02c9, B:163:0x02d3, B:165:0x02d7, B:167:0x02db, B:169:0x02e2, B:175:0x02f0, B:177:0x02f6, B:179:0x02fa, B:181:0x0300, B:184:0x030a), top: B:367:0x027e }] */
    /* JADX WARN: Code duplicated, block: B:183:0x0309  */
    /* JADX WARN: Code duplicated, block: B:192:0x0339  */
    /* JADX WARN: Code duplicated, block: B:195:0x0342 A[Catch: all -> 0x0595, TryCatch #14 {all -> 0x0595, blocks: (B:193:0x033a, B:195:0x0342, B:197:0x0348, B:199:0x0350, B:241:0x044f, B:244:0x0459, B:249:0x0462, B:251:0x0468, B:253:0x046e, B:254:0x0474, B:256:0x0478, B:257:0x047f, B:259:0x048f, B:261:0x0493, B:262:0x0499, B:264:0x049d, B:265:0x04a2, B:267:0x04a6, B:268:0x04ab, B:270:0x04b3, B:271:0x04b5, B:273:0x04bb, B:222:0x03e3, B:230:0x0406, B:239:0x044a, B:238:0x0446), top: B:356:0x0312 }] */
    /* JADX WARN: Code duplicated, block: B:197:0x0348 A[Catch: all -> 0x0595, TryCatch #14 {all -> 0x0595, blocks: (B:193:0x033a, B:195:0x0342, B:197:0x0348, B:199:0x0350, B:241:0x044f, B:244:0x0459, B:249:0x0462, B:251:0x0468, B:253:0x046e, B:254:0x0474, B:256:0x0478, B:257:0x047f, B:259:0x048f, B:261:0x0493, B:262:0x0499, B:264:0x049d, B:265:0x04a2, B:267:0x04a6, B:268:0x04ab, B:270:0x04b3, B:271:0x04b5, B:273:0x04bb, B:222:0x03e3, B:230:0x0406, B:239:0x044a, B:238:0x0446), top: B:356:0x0312 }] */
    /* JADX WARN: Code duplicated, block: B:198:0x034e  */
    /* JADX WARN: Code duplicated, block: B:221:0x03d8  */
    /* JADX WARN: Code duplicated, block: B:226:0x03f6 A[Catch: all -> 0x0418, TRY_LEAVE, TryCatch #17 {all -> 0x0418, blocks: (B:224:0x03f0, B:226:0x03f6), top: B:360:0x03f0 }] */
    /* JADX WARN: Code duplicated, block: B:236:0x0425  */
    /* JADX WARN: Code duplicated, block: B:241:0x044f A[Catch: all -> 0x0595, TryCatch #14 {all -> 0x0595, blocks: (B:193:0x033a, B:195:0x0342, B:197:0x0348, B:199:0x0350, B:241:0x044f, B:244:0x0459, B:249:0x0462, B:251:0x0468, B:253:0x046e, B:254:0x0474, B:256:0x0478, B:257:0x047f, B:259:0x048f, B:261:0x0493, B:262:0x0499, B:264:0x049d, B:265:0x04a2, B:267:0x04a6, B:268:0x04ab, B:270:0x04b3, B:271:0x04b5, B:273:0x04bb, B:222:0x03e3, B:230:0x0406, B:239:0x044a, B:238:0x0446), top: B:356:0x0312 }] */
    /* JADX WARN: Code duplicated, block: B:246:0x045d  */
    /* JADX WARN: Code duplicated, block: B:247:0x045f  */
    /* JADX WARN: Code duplicated, block: B:249:0x0462 A[Catch: all -> 0x0595, TryCatch #14 {all -> 0x0595, blocks: (B:193:0x033a, B:195:0x0342, B:197:0x0348, B:199:0x0350, B:241:0x044f, B:244:0x0459, B:249:0x0462, B:251:0x0468, B:253:0x046e, B:254:0x0474, B:256:0x0478, B:257:0x047f, B:259:0x048f, B:261:0x0493, B:262:0x0499, B:264:0x049d, B:265:0x04a2, B:267:0x04a6, B:268:0x04ab, B:270:0x04b3, B:271:0x04b5, B:273:0x04bb, B:222:0x03e3, B:230:0x0406, B:239:0x044a, B:238:0x0446), top: B:356:0x0312 }] */
    /* JADX WARN: Code duplicated, block: B:251:0x0468 A[Catch: all -> 0x0595, TryCatch #14 {all -> 0x0595, blocks: (B:193:0x033a, B:195:0x0342, B:197:0x0348, B:199:0x0350, B:241:0x044f, B:244:0x0459, B:249:0x0462, B:251:0x0468, B:253:0x046e, B:254:0x0474, B:256:0x0478, B:257:0x047f, B:259:0x048f, B:261:0x0493, B:262:0x0499, B:264:0x049d, B:265:0x04a2, B:267:0x04a6, B:268:0x04ab, B:270:0x04b3, B:271:0x04b5, B:273:0x04bb, B:222:0x03e3, B:230:0x0406, B:239:0x044a, B:238:0x0446), top: B:356:0x0312 }] */
    /* JADX WARN: Code duplicated, block: B:253:0x046e A[Catch: all -> 0x0595, TryCatch #14 {all -> 0x0595, blocks: (B:193:0x033a, B:195:0x0342, B:197:0x0348, B:199:0x0350, B:241:0x044f, B:244:0x0459, B:249:0x0462, B:251:0x0468, B:253:0x046e, B:254:0x0474, B:256:0x0478, B:257:0x047f, B:259:0x048f, B:261:0x0493, B:262:0x0499, B:264:0x049d, B:265:0x04a2, B:267:0x04a6, B:268:0x04ab, B:270:0x04b3, B:271:0x04b5, B:273:0x04bb, B:222:0x03e3, B:230:0x0406, B:239:0x044a, B:238:0x0446), top: B:356:0x0312 }] */
    /* JADX WARN: Code duplicated, block: B:256:0x0478 A[Catch: all -> 0x0595, TryCatch #14 {all -> 0x0595, blocks: (B:193:0x033a, B:195:0x0342, B:197:0x0348, B:199:0x0350, B:241:0x044f, B:244:0x0459, B:249:0x0462, B:251:0x0468, B:253:0x046e, B:254:0x0474, B:256:0x0478, B:257:0x047f, B:259:0x048f, B:261:0x0493, B:262:0x0499, B:264:0x049d, B:265:0x04a2, B:267:0x04a6, B:268:0x04ab, B:270:0x04b3, B:271:0x04b5, B:273:0x04bb, B:222:0x03e3, B:230:0x0406, B:239:0x044a, B:238:0x0446), top: B:356:0x0312 }] */
    /* JADX WARN: Code duplicated, block: B:259:0x048f A[Catch: all -> 0x0595, TryCatch #14 {all -> 0x0595, blocks: (B:193:0x033a, B:195:0x0342, B:197:0x0348, B:199:0x0350, B:241:0x044f, B:244:0x0459, B:249:0x0462, B:251:0x0468, B:253:0x046e, B:254:0x0474, B:256:0x0478, B:257:0x047f, B:259:0x048f, B:261:0x0493, B:262:0x0499, B:264:0x049d, B:265:0x04a2, B:267:0x04a6, B:268:0x04ab, B:270:0x04b3, B:271:0x04b5, B:273:0x04bb, B:222:0x03e3, B:230:0x0406, B:239:0x044a, B:238:0x0446), top: B:356:0x0312 }] */
    /* JADX WARN: Code duplicated, block: B:264:0x049d A[Catch: all -> 0x0595, TryCatch #14 {all -> 0x0595, blocks: (B:193:0x033a, B:195:0x0342, B:197:0x0348, B:199:0x0350, B:241:0x044f, B:244:0x0459, B:249:0x0462, B:251:0x0468, B:253:0x046e, B:254:0x0474, B:256:0x0478, B:257:0x047f, B:259:0x048f, B:261:0x0493, B:262:0x0499, B:264:0x049d, B:265:0x04a2, B:267:0x04a6, B:268:0x04ab, B:270:0x04b3, B:271:0x04b5, B:273:0x04bb, B:222:0x03e3, B:230:0x0406, B:239:0x044a, B:238:0x0446), top: B:356:0x0312 }] */
    /* JADX WARN: Code duplicated, block: B:267:0x04a6 A[Catch: all -> 0x0595, TryCatch #14 {all -> 0x0595, blocks: (B:193:0x033a, B:195:0x0342, B:197:0x0348, B:199:0x0350, B:241:0x044f, B:244:0x0459, B:249:0x0462, B:251:0x0468, B:253:0x046e, B:254:0x0474, B:256:0x0478, B:257:0x047f, B:259:0x048f, B:261:0x0493, B:262:0x0499, B:264:0x049d, B:265:0x04a2, B:267:0x04a6, B:268:0x04ab, B:270:0x04b3, B:271:0x04b5, B:273:0x04bb, B:222:0x03e3, B:230:0x0406, B:239:0x044a, B:238:0x0446), top: B:356:0x0312 }] */
    /* JADX WARN: Code duplicated, block: B:270:0x04b3 A[Catch: all -> 0x0595, TryCatch #14 {all -> 0x0595, blocks: (B:193:0x033a, B:195:0x0342, B:197:0x0348, B:199:0x0350, B:241:0x044f, B:244:0x0459, B:249:0x0462, B:251:0x0468, B:253:0x046e, B:254:0x0474, B:256:0x0478, B:257:0x047f, B:259:0x048f, B:261:0x0493, B:262:0x0499, B:264:0x049d, B:265:0x04a2, B:267:0x04a6, B:268:0x04ab, B:270:0x04b3, B:271:0x04b5, B:273:0x04bb, B:222:0x03e3, B:230:0x0406, B:239:0x044a, B:238:0x0446), top: B:356:0x0312 }] */
    /* JADX WARN: Code duplicated, block: B:273:0x04bb A[Catch: all -> 0x0595, TRY_LEAVE, TryCatch #14 {all -> 0x0595, blocks: (B:193:0x033a, B:195:0x0342, B:197:0x0348, B:199:0x0350, B:241:0x044f, B:244:0x0459, B:249:0x0462, B:251:0x0468, B:253:0x046e, B:254:0x0474, B:256:0x0478, B:257:0x047f, B:259:0x048f, B:261:0x0493, B:262:0x0499, B:264:0x049d, B:265:0x04a2, B:267:0x04a6, B:268:0x04ab, B:270:0x04b3, B:271:0x04b5, B:273:0x04bb, B:222:0x03e3, B:230:0x0406, B:239:0x044a, B:238:0x0446), top: B:356:0x0312 }] */
    /* JADX WARN: Code duplicated, block: B:275:0x04c0  */
    /* JADX WARN: Code duplicated, block: B:277:0x04c6 A[Catch: all -> 0x057d, TryCatch #21 {all -> 0x057d, blocks: (B:276:0x04c2, B:278:0x04cb, B:280:0x050e, B:282:0x0534, B:286:0x053c, B:288:0x0542, B:289:0x054f, B:277:0x04c6), top: B:365:0x04be }] */
    /* JADX WARN: Code duplicated, block: B:280:0x050e A[Catch: all -> 0x057d, TryCatch #21 {all -> 0x057d, blocks: (B:276:0x04c2, B:278:0x04cb, B:280:0x050e, B:282:0x0534, B:286:0x053c, B:288:0x0542, B:289:0x054f, B:277:0x04c6), top: B:365:0x04be }] */
    /* JADX WARN: Code duplicated, block: B:281:0x0532  */
    /* JADX WARN: Code duplicated, block: B:284:0x0538  */
    /* JADX WARN: Code duplicated, block: B:285:0x053b  */
    /* JADX WARN: Code duplicated, block: B:288:0x0542 A[Catch: all -> 0x057d, TryCatch #21 {all -> 0x057d, blocks: (B:276:0x04c2, B:278:0x04cb, B:280:0x050e, B:282:0x0534, B:286:0x053c, B:288:0x0542, B:289:0x054f, B:277:0x04c6), top: B:365:0x04be }] */
    /* JADX WARN: Code duplicated, block: B:300:0x056e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0093  */
    /* JADX WARN: Code duplicated, block: B:330:0x0231 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:342:0x0553 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:348:0x0314 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x009e  */
    /* JADX WARN: Code duplicated, block: B:352:0x025e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:360:0x03f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x00b0 A[Catch: all -> 0x007c, TRY_ENTER, TryCatch #19 {all -> 0x007c, blocks: (B:25:0x0078, B:38:0x00b0, B:40:0x00ba, B:42:0x00c0, B:43:0x00c4, B:44:0x00c6, B:46:0x00ce, B:48:0x00da, B:50:0x00e0, B:51:0x00f8, B:53:0x0112, B:54:0x0115, B:56:0x011b, B:58:0x011f, B:60:0x0125, B:61:0x012a, B:63:0x012f, B:65:0x0133, B:66:0x0147, B:68:0x014b, B:69:0x0154, B:71:0x0159, B:75:0x0165, B:92:0x01b1, B:95:0x01c4, B:97:0x01cc, B:99:0x01d4, B:120:0x0207, B:128:0x0215, B:78:0x0171, B:79:0x017a, B:80:0x017b, B:81:0x0184), top: B:362:0x0078 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00ce A[Catch: all -> 0x007c, TryCatch #19 {all -> 0x007c, blocks: (B:25:0x0078, B:38:0x00b0, B:40:0x00ba, B:42:0x00c0, B:43:0x00c4, B:44:0x00c6, B:46:0x00ce, B:48:0x00da, B:50:0x00e0, B:51:0x00f8, B:53:0x0112, B:54:0x0115, B:56:0x011b, B:58:0x011f, B:60:0x0125, B:61:0x012a, B:63:0x012f, B:65:0x0133, B:66:0x0147, B:68:0x014b, B:69:0x0154, B:71:0x0159, B:75:0x0165, B:92:0x01b1, B:95:0x01c4, B:97:0x01cc, B:99:0x01d4, B:120:0x0207, B:128:0x0215, B:78:0x0171, B:79:0x017a, B:80:0x017b, B:81:0x0184), top: B:362:0x0078 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00da A[Catch: all -> 0x007c, TryCatch #19 {all -> 0x007c, blocks: (B:25:0x0078, B:38:0x00b0, B:40:0x00ba, B:42:0x00c0, B:43:0x00c4, B:44:0x00c6, B:46:0x00ce, B:48:0x00da, B:50:0x00e0, B:51:0x00f8, B:53:0x0112, B:54:0x0115, B:56:0x011b, B:58:0x011f, B:60:0x0125, B:61:0x012a, B:63:0x012f, B:65:0x0133, B:66:0x0147, B:68:0x014b, B:69:0x0154, B:71:0x0159, B:75:0x0165, B:92:0x01b1, B:95:0x01c4, B:97:0x01cc, B:99:0x01d4, B:120:0x0207, B:128:0x0215, B:78:0x0171, B:79:0x017a, B:80:0x017b, B:81:0x0184), top: B:362:0x0078 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00e0 A[Catch: all -> 0x007c, TryCatch #19 {all -> 0x007c, blocks: (B:25:0x0078, B:38:0x00b0, B:40:0x00ba, B:42:0x00c0, B:43:0x00c4, B:44:0x00c6, B:46:0x00ce, B:48:0x00da, B:50:0x00e0, B:51:0x00f8, B:53:0x0112, B:54:0x0115, B:56:0x011b, B:58:0x011f, B:60:0x0125, B:61:0x012a, B:63:0x012f, B:65:0x0133, B:66:0x0147, B:68:0x014b, B:69:0x0154, B:71:0x0159, B:75:0x0165, B:92:0x01b1, B:95:0x01c4, B:97:0x01cc, B:99:0x01d4, B:120:0x0207, B:128:0x0215, B:78:0x0171, B:79:0x017a, B:80:0x017b, B:81:0x0184), top: B:362:0x0078 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0112 A[Catch: all -> 0x007c, TryCatch #19 {all -> 0x007c, blocks: (B:25:0x0078, B:38:0x00b0, B:40:0x00ba, B:42:0x00c0, B:43:0x00c4, B:44:0x00c6, B:46:0x00ce, B:48:0x00da, B:50:0x00e0, B:51:0x00f8, B:53:0x0112, B:54:0x0115, B:56:0x011b, B:58:0x011f, B:60:0x0125, B:61:0x012a, B:63:0x012f, B:65:0x0133, B:66:0x0147, B:68:0x014b, B:69:0x0154, B:71:0x0159, B:75:0x0165, B:92:0x01b1, B:95:0x01c4, B:97:0x01cc, B:99:0x01d4, B:120:0x0207, B:128:0x0215, B:78:0x0171, B:79:0x017a, B:80:0x017b, B:81:0x0184), top: B:362:0x0078 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x014b A[Catch: all -> 0x007c, TryCatch #19 {all -> 0x007c, blocks: (B:25:0x0078, B:38:0x00b0, B:40:0x00ba, B:42:0x00c0, B:43:0x00c4, B:44:0x00c6, B:46:0x00ce, B:48:0x00da, B:50:0x00e0, B:51:0x00f8, B:53:0x0112, B:54:0x0115, B:56:0x011b, B:58:0x011f, B:60:0x0125, B:61:0x012a, B:63:0x012f, B:65:0x0133, B:66:0x0147, B:68:0x014b, B:69:0x0154, B:71:0x0159, B:75:0x0165, B:92:0x01b1, B:95:0x01c4, B:97:0x01cc, B:99:0x01d4, B:120:0x0207, B:128:0x0215, B:78:0x0171, B:79:0x017a, B:80:0x017b, B:81:0x0184), top: B:362:0x0078 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0159 A[Catch: all -> 0x007c, TryCatch #19 {all -> 0x007c, blocks: (B:25:0x0078, B:38:0x00b0, B:40:0x00ba, B:42:0x00c0, B:43:0x00c4, B:44:0x00c6, B:46:0x00ce, B:48:0x00da, B:50:0x00e0, B:51:0x00f8, B:53:0x0112, B:54:0x0115, B:56:0x011b, B:58:0x011f, B:60:0x0125, B:61:0x012a, B:63:0x012f, B:65:0x0133, B:66:0x0147, B:68:0x014b, B:69:0x0154, B:71:0x0159, B:75:0x0165, B:92:0x01b1, B:95:0x01c4, B:97:0x01cc, B:99:0x01d4, B:120:0x0207, B:128:0x0215, B:78:0x0171, B:79:0x017a, B:80:0x017b, B:81:0x0184), top: B:362:0x0078 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0162  */
    /* JADX WARN: Code duplicated, block: B:74:0x0164  */
    /* JADX WARN: Code duplicated, block: B:76:0x016b  */
    /* JADX WARN: Code duplicated, block: B:78:0x0171 A[Catch: all -> 0x007c, TryCatch #19 {all -> 0x007c, blocks: (B:25:0x0078, B:38:0x00b0, B:40:0x00ba, B:42:0x00c0, B:43:0x00c4, B:44:0x00c6, B:46:0x00ce, B:48:0x00da, B:50:0x00e0, B:51:0x00f8, B:53:0x0112, B:54:0x0115, B:56:0x011b, B:58:0x011f, B:60:0x0125, B:61:0x012a, B:63:0x012f, B:65:0x0133, B:66:0x0147, B:68:0x014b, B:69:0x0154, B:71:0x0159, B:75:0x0165, B:92:0x01b1, B:95:0x01c4, B:97:0x01cc, B:99:0x01d4, B:120:0x0207, B:128:0x0215, B:78:0x0171, B:79:0x017a, B:80:0x017b, B:81:0x0184), top: B:362:0x0078 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x017b A[Catch: all -> 0x007c, TryCatch #19 {all -> 0x007c, blocks: (B:25:0x0078, B:38:0x00b0, B:40:0x00ba, B:42:0x00c0, B:43:0x00c4, B:44:0x00c6, B:46:0x00ce, B:48:0x00da, B:50:0x00e0, B:51:0x00f8, B:53:0x0112, B:54:0x0115, B:56:0x011b, B:58:0x011f, B:60:0x0125, B:61:0x012a, B:63:0x012f, B:65:0x0133, B:66:0x0147, B:68:0x014b, B:69:0x0154, B:71:0x0159, B:75:0x0165, B:92:0x01b1, B:95:0x01c4, B:97:0x01cc, B:99:0x01d4, B:120:0x0207, B:128:0x0215, B:78:0x0171, B:79:0x017a, B:80:0x017b, B:81:0x0184), top: B:362:0x0078 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0198  */
    /* JADX WARN: Code duplicated, block: B:87:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:88:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:92:0x01b1 A[Catch: all -> 0x007c, TRY_ENTER, TRY_LEAVE, TryCatch #19 {all -> 0x007c, blocks: (B:25:0x0078, B:38:0x00b0, B:40:0x00ba, B:42:0x00c0, B:43:0x00c4, B:44:0x00c6, B:46:0x00ce, B:48:0x00da, B:50:0x00e0, B:51:0x00f8, B:53:0x0112, B:54:0x0115, B:56:0x011b, B:58:0x011f, B:60:0x0125, B:61:0x012a, B:63:0x012f, B:65:0x0133, B:66:0x0147, B:68:0x014b, B:69:0x0154, B:71:0x0159, B:75:0x0165, B:92:0x01b1, B:95:0x01c4, B:97:0x01cc, B:99:0x01d4, B:120:0x0207, B:128:0x0215, B:78:0x0171, B:79:0x017a, B:80:0x017b, B:81:0x0184), top: B:362:0x0078 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v11 */
    /* JADX WARN: Type inference failed for: r26v12 */
    /* JADX WARN: Type inference failed for: r26v13 */
    /* JADX WARN: Type inference failed for: r26v14 */
    /* JADX WARN: Type inference failed for: r26v15 */
    /* JADX WARN: Type inference failed for: r26v16 */
    /* JADX WARN: Type inference failed for: r26v17 */
    /* JADX WARN: Type inference failed for: r26v19 */
    /* JADX WARN: Type inference failed for: r26v20 */
    /* JADX WARN: Type inference failed for: r26v21 */
    /* JADX WARN: Type inference failed for: r26v22 */
    /* JADX WARN: Type inference failed for: r26v4 */
    /* JADX WARN: Type inference failed for: r26v5 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.android.server.wm.WindowManagerGlobalLock] */
    public int relayoutWindow(Session session, IWindow iWindow, int i, WindowManager.LayoutParams layoutParams, int i2, int i3, int i4, int i5, long j, Rect rect, Rect rect2, Rect rect3, Rect rect4, Rect rect5, DisplayCutout.ParcelableWrapper parcelableWrapper, MergedConfiguration mergedConfiguration, SurfaceControl surfaceControl, InsetsState insetsState, InsetsSourceControl[] insetsSourceControlArr, Point point, SurfaceControl surfaceControl2) throws Throwable {
        int iCreateSurfaceControl;
        DisplayPolicy displayPolicy;
        WindowStateAnimator windowStateAnimator;
        int i6;
        boolean z;
        int i7;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean zTryStartExitingAnimation;
        int iRelayoutVisibleWindow;
        WindowState windowState;
        int i8;
        int i9;
        DisplayContent displayContent;
        WindowStateAnimator windowStateAnimator2;
        boolean z11;
        boolean zUpdateOrientation;
        MergedConfiguration mergedConfiguration2;
        int i10;
        int i11;
        int i12;
        int iCopyFrom;
        boolean z12;
        int i13;
        Arrays.fill(insetsSourceControlArr, (Object) null);
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        ?? r6 = this.mGlobalLock;
        synchronized (r6) {
            try {
                boostPriorityForLockedSection();
                WindowState windowStateWindowForClientLocked = windowForClientLocked(session, iWindow, false);
                if (windowStateWindowForClientLocked != null) {
                    DisplayContent displayContent2 = windowStateWindowForClientLocked.getDisplayContent();
                    DisplayPolicy displayPolicy2 = displayContent2.getDisplayPolicy();
                    WindowStateAnimator windowStateAnimator3 = windowStateWindowForClientLocked.mWinAnimator;
                    if (i4 != 8) {
                        try {
                            windowStateWindowForClientLocked.setRequestedSize(i2, i3);
                        } catch (Throwable th) {
                            th = th;
                        }
                    }
                    try {
                        windowStateWindowForClientLocked.setFrameNumber(j);
                        if (windowStateWindowForClientLocked.getDisplayContent().mWaitingForConfig) {
                            if (windowStateWindowForClientLocked.useBLASTSync()) {
                            }
                            if (layoutParams != null) {
                                displayPolicy = displayPolicy2;
                                displayPolicy.adjustWindowParamsLw(windowStateWindowForClientLocked, layoutParams, callingPid, callingUid);
                                windowStateWindowForClientLocked.mToken.adjustWindowParams(windowStateWindowForClientLocked, layoutParams);
                                if (i == windowStateWindowForClientLocked.mSeq) {
                                    i13 = layoutParams.systemUiVisibility | layoutParams.subtreeSystemUiVisibility;
                                    if ((67043328 & i13) != 0) {
                                        i13 &= -67043329;
                                    }
                                    windowStateWindowForClientLocked.mSystemUiVisibility = i13;
                                }
                                if (windowStateWindowForClientLocked.mAttrs.type == layoutParams.type) {
                                    throw new IllegalArgumentException("Window type can not be changed after the window is added.");
                                }
                                if (Arrays.equals(windowStateWindowForClientLocked.mAttrs.providesInsetsTypes, layoutParams.providesInsetsTypes)) {
                                    throw new IllegalArgumentException("Insets types can not be changed after the window is added.");
                                }
                                if ((layoutParams.privateFlags & 8192) != 0) {
                                    layoutParams.x = windowStateWindowForClientLocked.mAttrs.x;
                                    layoutParams.y = windowStateWindowForClientLocked.mAttrs.y;
                                    layoutParams.width = windowStateWindowForClientLocked.mAttrs.width;
                                    layoutParams.height = windowStateWindowForClientLocked.mAttrs.height;
                                }
                                int i14 = windowStateWindowForClientLocked.mAttrs.flags ^ layoutParams.flags;
                                i12 = windowStateWindowForClientLocked.mAttrs.privateFlags ^ layoutParams.privateFlags;
                                iCopyFrom = windowStateWindowForClientLocked.mAttrs.copyFrom(layoutParams);
                                if ((iCopyFrom & 16385) != 0) {
                                    windowStateWindowForClientLocked.mLayoutNeeded = true;
                                }
                                if (windowStateWindowForClientLocked.mActivityRecord != null) {
                                    windowStateWindowForClientLocked.mActivityRecord.checkKeyguardFlagsChanged();
                                }
                                if ((33554432 & iCopyFrom) != 0) {
                                    this.mAccessibilityController.onSomeWindowResizedOrMovedLocked(windowStateWindowForClientLocked.getDisplayContent().getDisplayId());
                                }
                                if ((i12 & 524288) != 0) {
                                    updateNonSystemOverlayWindowsVisibilityIfNeeded(windowStateWindowForClientLocked, windowStateWindowForClientLocked.mWinAnimator.getShown());
                                }
                                if ((131072 & iCopyFrom) != 0) {
                                    if ((windowStateWindowForClientLocked.mAttrs.privateFlags & 16777216) != 0) {
                                        z12 = true;
                                    } else {
                                        z12 = false;
                                    }
                                    windowStateAnimator = windowStateAnimator3;
                                    windowStateAnimator.setColorSpaceAgnosticLocked(z12);
                                } else {
                                    windowStateAnimator = windowStateAnimator3;
                                }
                                i6 = iCopyFrom;
                                r6 = i14;
                            } else {
                                displayPolicy = displayPolicy2;
                                windowStateAnimator = windowStateAnimator3;
                                r6 = 0;
                                i6 = 0;
                            }
                            if ((i5 & 2) != 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            windowStateAnimator.mSurfaceDestroyDeferred = z;
                            if ((i6 & 128) != 0) {
                                windowStateAnimator.mAlpha = layoutParams.alpha;
                            }
                            windowStateWindowForClientLocked.setWindowScale(windowStateWindowForClientLocked.mRequestedWidth, windowStateWindowForClientLocked.mRequestedHeight);
                            if (windowStateWindowForClientLocked.mAttrs.surfaceInsets.left == 0) {
                                windowStateAnimator.setOpaqueLocked(false);
                            } else {
                                windowStateAnimator.setOpaqueLocked(false);
                            }
                            i7 = windowStateWindowForClientLocked.mViewVisibility;
                            boolean z13 = (i7 != 4 || i7 == 8) && i4 == 0;
                            if ((131080 & r6) == 0) {
                                z2 = true;
                            } else {
                                z2 = true;
                            }
                            z3 = z2;
                            if (windowStateWindowForClientLocked.mViewVisibility != i4) {
                                z4 = true;
                            } else {
                                z4 = true;
                            }
                            if (windowStateWindowForClientLocked.mViewVisibility != i4) {
                                z5 = false;
                            } else {
                                z5 = false;
                            }
                            if ((r6 & 1048576) != 0) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            z7 = z5 | z6;
                            if ((r6 & 8192) != 0) {
                                windowStateWindowForClientLocked.mRelayoutCalled = true;
                                windowStateWindowForClientLocked.mInRelayout = true;
                                windowStateWindowForClientLocked.setViewVisibility(i4);
                                if (ProtoLog$Cache.WM_DEBUG_SCREEN_ON_enabled) {
                                    ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_SCREEN_ON, -754503024, 20, null, String.valueOf(windowStateWindowForClientLocked), Long.valueOf(i7), Long.valueOf(i4), String.valueOf(new RuntimeException().fillInStackTrace()));
                                }
                                windowStateWindowForClientLocked.setDisplayLayoutNeeded();
                                if ((i5 & 1) != 0) {
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                windowStateWindowForClientLocked.mGivenInsetsPending = z8;
                                if (i4 == 0) {
                                    z9 = false;
                                } else {
                                    z9 = false;
                                }
                                z10 = z9;
                                if (z10) {
                                    zTryStartExitingAnimation = z4;
                                } else {
                                    zTryStartExitingAnimation = z4;
                                }
                                this.mWindowPlacerLocked.performSurfacePlacement(true);
                                if (z10) {
                                    Trace.traceBegin(32L, "relayoutWindow: viewVisibility_1");
                                    iRelayoutVisibleWindow = windowStateWindowForClientLocked.relayoutVisibleWindow(iCreateSurfaceControl, i6);
                                    windowState = windowStateWindowForClientLocked;
                                    WindowStateAnimator windowStateAnimator4 = windowStateAnimator;
                                    r6 = r6;
                                    iCreateSurfaceControl = createSurfaceControl(surfaceControl, surfaceControl2, iRelayoutVisibleWindow, windowState, windowStateAnimator4);
                                    if ((iCreateSurfaceControl & 2) != 0) {
                                        zTryStartExitingAnimation = true;
                                    }
                                    if (windowState.mAttrs.type == 2011) {
                                        displayContent = displayContent2;
                                        if (displayContent.mInputMethodWindow == null) {
                                            displayContent.setInputMethodWindowLocked(windowState);
                                            z3 = true;
                                        }
                                    } else {
                                        displayContent = displayContent2;
                                    }
                                    windowState.adjustStartingWindowFlags();
                                    Trace.traceEnd(32L);
                                    windowStateAnimator2 = windowStateAnimator4;
                                    r6 = r6;
                                    if (zTryStartExitingAnimation) {
                                        z3 = false;
                                    }
                                    if ((iCreateSurfaceControl & 2) != 0) {
                                        z11 = true;
                                    } else {
                                        z11 = false;
                                    }
                                    if (z3) {
                                        displayContent.computeImeTarget(true);
                                        if (z11) {
                                            displayContent.assignWindowLayers(false);
                                        }
                                    }
                                    if (z7) {
                                        displayContent.pendingLayoutChanges |= 4;
                                    }
                                    if (windowState.mActivityRecord != null) {
                                        displayContent.mUnknownAppVisibilityController.notifyRelayouted(windowState.mActivityRecord);
                                    }
                                    Trace.traceBegin(32L, "relayoutWindow: updateOrientation");
                                    zUpdateOrientation = displayContent.updateOrientation();
                                    Trace.traceEnd(32L);
                                    if (z11) {
                                        displayContent.mWallpaperController.updateWallpaperOffset(windowState, false);
                                    }
                                    if (windowState.mActivityRecord != null) {
                                        windowState.mActivityRecord.updateReportedVisibilityLocked();
                                    }
                                    if (windowStateAnimator2.mReportSurfaceResized) {
                                        windowStateAnimator2.mReportSurfaceResized = false;
                                        iCreateSurfaceControl |= 32;
                                    }
                                    if (displayPolicy.areSystemBarsForcedShownLw(windowState)) {
                                        iCreateSurfaceControl |= 64;
                                    }
                                    if (!windowState.isGoneForLayoutLw()) {
                                        windowState.mResizedWhileGone = false;
                                    }
                                    if (z10) {
                                        mergedConfiguration2 = mergedConfiguration;
                                        windowState.getMergedConfiguration(mergedConfiguration2);
                                    } else {
                                        mergedConfiguration2 = mergedConfiguration;
                                        windowState.getLastReportedMergedConfiguration(mergedConfiguration2);
                                    }
                                    windowState.setLastReportedMergedConfiguration(mergedConfiguration2);
                                    windowState.updateLastInsetValues();
                                    windowState.getCompatFrame(rect);
                                    windowState.getInsetsForRelayout(rect2, rect3, rect4);
                                    parcelableWrapper.set(windowState.getWmDisplayCutout().getDisplayCutout());
                                    rect5.set(windowState.getBackdropFrame(windowState.getFrameLw()));
                                    insetsState.set(windowState.getInsetsState(), windowState.isClientLocal());
                                    if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
                                        i10 = 1;
                                        ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS, 95902367, 12, null, String.valueOf(windowState), Boolean.valueOf(zTryStartExitingAnimation));
                                    } else {
                                        i10 = 1;
                                    }
                                    if (this.mInTouchMode) {
                                        i11 = i10;
                                    } else {
                                        i11 = 0;
                                    }
                                    int i15 = iCreateSurfaceControl | i11;
                                    windowState.mInRelayout = false;
                                    if (zUpdateOrientation) {
                                        Trace.traceBegin(32L, "relayoutWindow: postNewConfigurationToHandler");
                                        displayContent.sendNewConfiguration();
                                        Trace.traceEnd(32L);
                                    }
                                    if (windowStateAnimator2.mSurfaceController != null) {
                                        point.set(windowStateAnimator2.mSurfaceController.getWidth(), windowStateAnimator2.mSurfaceController.getHeight());
                                    }
                                    getInsetsSourceControls(windowState, insetsSourceControlArr);
                                    resetPriorityAfterLockedSection();
                                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                                    return i15;
                                }
                                windowState = windowStateWindowForClientLocked;
                                WindowStateAnimator windowStateAnimator5 = windowStateAnimator;
                                displayContent = displayContent2;
                                r6 = r6;
                                Trace.traceBegin(32L, "relayoutWindow: viewVisibility_2");
                                windowStateAnimator2 = windowStateAnimator5;
                                windowStateAnimator2.mEnterAnimationPending = false;
                                windowStateAnimator2.mEnteringAnimation = false;
                                if (i4 == 0) {
                                    Trace.traceBegin(32L, "wmReleaseOutSurface_" + ((Object) windowState.mAttrs.getTitle()));
                                    surfaceControl.release();
                                    Trace.traceEnd(32L);
                                    Trace.traceEnd(32L);
                                    r6 = r6;
                                    if (zTryStartExitingAnimation) {
                                        z3 = false;
                                    }
                                    if ((iCreateSurfaceControl & 2) != 0) {
                                        z11 = true;
                                    } else {
                                        z11 = false;
                                    }
                                    if (z3) {
                                        displayContent.computeImeTarget(true);
                                        if (z11) {
                                            displayContent.assignWindowLayers(false);
                                        }
                                    }
                                    if (z7) {
                                        displayContent.pendingLayoutChanges |= 4;
                                    }
                                    if (windowState.mActivityRecord != null) {
                                        displayContent.mUnknownAppVisibilityController.notifyRelayouted(windowState.mActivityRecord);
                                    }
                                    Trace.traceBegin(32L, "relayoutWindow: updateOrientation");
                                    zUpdateOrientation = displayContent.updateOrientation();
                                    Trace.traceEnd(32L);
                                    if (z11) {
                                        displayContent.mWallpaperController.updateWallpaperOffset(windowState, false);
                                    }
                                    if (windowState.mActivityRecord != null) {
                                        windowState.mActivityRecord.updateReportedVisibilityLocked();
                                    }
                                    if (windowStateAnimator2.mReportSurfaceResized) {
                                        windowStateAnimator2.mReportSurfaceResized = false;
                                        iCreateSurfaceControl |= 32;
                                    }
                                    if (displayPolicy.areSystemBarsForcedShownLw(windowState)) {
                                        iCreateSurfaceControl |= 64;
                                    }
                                    if (!windowState.isGoneForLayoutLw()) {
                                        windowState.mResizedWhileGone = false;
                                    }
                                    if (z10) {
                                        mergedConfiguration2 = mergedConfiguration;
                                        windowState.getMergedConfiguration(mergedConfiguration2);
                                    } else {
                                        mergedConfiguration2 = mergedConfiguration;
                                        windowState.getLastReportedMergedConfiguration(mergedConfiguration2);
                                    }
                                    windowState.setLastReportedMergedConfiguration(mergedConfiguration2);
                                    windowState.updateLastInsetValues();
                                    windowState.getCompatFrame(rect);
                                    windowState.getInsetsForRelayout(rect2, rect3, rect4);
                                    parcelableWrapper.set(windowState.getWmDisplayCutout().getDisplayCutout());
                                    rect5.set(windowState.getBackdropFrame(windowState.getFrameLw()));
                                    insetsState.set(windowState.getInsetsState(), windowState.isClientLocal());
                                    if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
                                        i10 = 1;
                                        ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS, 95902367, 12, null, String.valueOf(windowState), Boolean.valueOf(zTryStartExitingAnimation));
                                    } else {
                                        i10 = 1;
                                    }
                                    if (this.mInTouchMode) {
                                        i11 = i10;
                                    } else {
                                        i11 = 0;
                                    }
                                    int i16 = iCreateSurfaceControl | i11;
                                    windowState.mInRelayout = false;
                                    if (zUpdateOrientation) {
                                        Trace.traceBegin(32L, "relayoutWindow: postNewConfigurationToHandler");
                                        displayContent.sendNewConfiguration();
                                        Trace.traceEnd(32L);
                                    }
                                    if (windowStateAnimator2.mSurfaceController != null) {
                                        point.set(windowStateAnimator2.mSurfaceController.getWidth(), windowStateAnimator2.mSurfaceController.getHeight());
                                    }
                                    getInsetsSourceControls(windowState, insetsSourceControlArr);
                                    resetPriorityAfterLockedSection();
                                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                                    return i16;
                                }
                                if (windowStateAnimator2.hasSurface()) {
                                    Trace.traceBegin(32L, "relayoutWindow: getSurface");
                                    windowStateAnimator2.mSurfaceController.getSurfaceControl(surfaceControl);
                                    windowStateAnimator2.mSurfaceController.getBLASTSurfaceControl(surfaceControl2);
                                    Trace.traceEnd(32L);
                                    Trace.traceEnd(32L);
                                    r6 = r6;
                                } else {
                                    Trace.traceBegin(32L, "wmReleaseOutSurface_" + ((Object) windowState.mAttrs.getTitle()));
                                    surfaceControl.release();
                                    Trace.traceEnd(32L);
                                    Trace.traceEnd(32L);
                                    r6 = r6;
                                }
                                if (zTryStartExitingAnimation) {
                                    z3 = false;
                                }
                                if ((iCreateSurfaceControl & 2) != 0) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                if (z3) {
                                    displayContent.computeImeTarget(true);
                                    if (z11) {
                                        displayContent.assignWindowLayers(false);
                                    }
                                }
                                if (z7) {
                                    displayContent.pendingLayoutChanges |= 4;
                                }
                                if (windowState.mActivityRecord != null) {
                                    displayContent.mUnknownAppVisibilityController.notifyRelayouted(windowState.mActivityRecord);
                                }
                                Trace.traceBegin(32L, "relayoutWindow: updateOrientation");
                                zUpdateOrientation = displayContent.updateOrientation();
                                Trace.traceEnd(32L);
                                if (z11) {
                                    displayContent.mWallpaperController.updateWallpaperOffset(windowState, false);
                                }
                                if (windowState.mActivityRecord != null) {
                                    windowState.mActivityRecord.updateReportedVisibilityLocked();
                                }
                                if (windowStateAnimator2.mReportSurfaceResized) {
                                    windowStateAnimator2.mReportSurfaceResized = false;
                                    iCreateSurfaceControl |= 32;
                                }
                                if (displayPolicy.areSystemBarsForcedShownLw(windowState)) {
                                    iCreateSurfaceControl |= 64;
                                }
                                if (!windowState.isGoneForLayoutLw()) {
                                    windowState.mResizedWhileGone = false;
                                }
                                if (z10) {
                                    mergedConfiguration2 = mergedConfiguration;
                                    windowState.getMergedConfiguration(mergedConfiguration2);
                                } else {
                                    mergedConfiguration2 = mergedConfiguration;
                                    windowState.getLastReportedMergedConfiguration(mergedConfiguration2);
                                }
                                windowState.setLastReportedMergedConfiguration(mergedConfiguration2);
                                windowState.updateLastInsetValues();
                                windowState.getCompatFrame(rect);
                                windowState.getInsetsForRelayout(rect2, rect3, rect4);
                                parcelableWrapper.set(windowState.getWmDisplayCutout().getDisplayCutout());
                                rect5.set(windowState.getBackdropFrame(windowState.getFrameLw()));
                                insetsState.set(windowState.getInsetsState(), windowState.isClientLocal());
                                if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
                                    i10 = 1;
                                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS, 95902367, 12, null, String.valueOf(windowState), Boolean.valueOf(zTryStartExitingAnimation));
                                } else {
                                    i10 = 1;
                                }
                                if (this.mInTouchMode) {
                                    i11 = i10;
                                } else {
                                    i11 = 0;
                                }
                                int i17 = iCreateSurfaceControl | i11;
                                windowState.mInRelayout = false;
                                if (zUpdateOrientation) {
                                    Trace.traceBegin(32L, "relayoutWindow: postNewConfigurationToHandler");
                                    displayContent.sendNewConfiguration();
                                    Trace.traceEnd(32L);
                                }
                                if (windowStateAnimator2.mSurfaceController != null) {
                                    point.set(windowStateAnimator2.mSurfaceController.getWidth(), windowStateAnimator2.mSurfaceController.getHeight());
                                }
                                getInsetsSourceControls(windowState, insetsSourceControlArr);
                                resetPriorityAfterLockedSection();
                                Binder.restoreCallingIdentity(jClearCallingIdentity);
                                return i17;
                            }
                            if (windowStateAnimator.mSurfaceController != null) {
                                windowStateAnimator.mSurfaceController.setSecure(windowStateWindowForClientLocked.isSecureLocked());
                            }
                            windowStateWindowForClientLocked.mRelayoutCalled = true;
                            windowStateWindowForClientLocked.mInRelayout = true;
                            windowStateWindowForClientLocked.setViewVisibility(i4);
                            if (ProtoLog$Cache.WM_DEBUG_SCREEN_ON_enabled) {
                                ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_SCREEN_ON, -754503024, 20, null, String.valueOf(windowStateWindowForClientLocked), Long.valueOf(i7), Long.valueOf(i4), String.valueOf(new RuntimeException().fillInStackTrace()));
                            }
                            windowStateWindowForClientLocked.setDisplayLayoutNeeded();
                            if ((i5 & 1) != 0) {
                                z8 = true;
                            } else {
                                z8 = false;
                            }
                            windowStateWindowForClientLocked.mGivenInsetsPending = z8;
                            if (i4 == 0) {
                                z9 = false;
                            } else {
                                z9 = false;
                            }
                            z10 = z9;
                            if (z10) {
                                zTryStartExitingAnimation = z4;
                            } else {
                                zTryStartExitingAnimation = z4;
                            }
                            this.mWindowPlacerLocked.performSurfacePlacement(true);
                            if (z10) {
                                Trace.traceBegin(32L, "relayoutWindow: viewVisibility_1");
                                iRelayoutVisibleWindow = windowStateWindowForClientLocked.relayoutVisibleWindow(iCreateSurfaceControl, i6);
                                windowState = windowStateWindowForClientLocked;
                                WindowStateAnimator windowStateAnimator6 = windowStateAnimator;
                                r6 = r6;
                                iCreateSurfaceControl = createSurfaceControl(surfaceControl, surfaceControl2, iRelayoutVisibleWindow, windowState, windowStateAnimator6);
                                if ((iCreateSurfaceControl & 2) != 0) {
                                    zTryStartExitingAnimation = true;
                                }
                                if (windowState.mAttrs.type == 2011) {
                                    displayContent = displayContent2;
                                    if (displayContent.mInputMethodWindow == null) {
                                        displayContent.setInputMethodWindowLocked(windowState);
                                        z3 = true;
                                    }
                                } else {
                                    displayContent = displayContent2;
                                }
                                windowState.adjustStartingWindowFlags();
                                Trace.traceEnd(32L);
                                windowStateAnimator2 = windowStateAnimator6;
                                r6 = r6;
                                if (zTryStartExitingAnimation) {
                                    z3 = false;
                                }
                                if ((iCreateSurfaceControl & 2) != 0) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                if (z3) {
                                    displayContent.computeImeTarget(true);
                                    if (z11) {
                                        displayContent.assignWindowLayers(false);
                                    }
                                }
                                if (z7) {
                                    displayContent.pendingLayoutChanges |= 4;
                                }
                                if (windowState.mActivityRecord != null) {
                                    displayContent.mUnknownAppVisibilityController.notifyRelayouted(windowState.mActivityRecord);
                                }
                                Trace.traceBegin(32L, "relayoutWindow: updateOrientation");
                                zUpdateOrientation = displayContent.updateOrientation();
                                Trace.traceEnd(32L);
                                if (z11) {
                                    displayContent.mWallpaperController.updateWallpaperOffset(windowState, false);
                                }
                                if (windowState.mActivityRecord != null) {
                                    windowState.mActivityRecord.updateReportedVisibilityLocked();
                                }
                                if (windowStateAnimator2.mReportSurfaceResized) {
                                    windowStateAnimator2.mReportSurfaceResized = false;
                                    iCreateSurfaceControl |= 32;
                                }
                                if (displayPolicy.areSystemBarsForcedShownLw(windowState)) {
                                    iCreateSurfaceControl |= 64;
                                }
                                if (!windowState.isGoneForLayoutLw()) {
                                    windowState.mResizedWhileGone = false;
                                }
                                if (z10) {
                                    mergedConfiguration2 = mergedConfiguration;
                                    windowState.getMergedConfiguration(mergedConfiguration2);
                                } else {
                                    mergedConfiguration2 = mergedConfiguration;
                                    windowState.getLastReportedMergedConfiguration(mergedConfiguration2);
                                }
                                windowState.setLastReportedMergedConfiguration(mergedConfiguration2);
                                windowState.updateLastInsetValues();
                                windowState.getCompatFrame(rect);
                                windowState.getInsetsForRelayout(rect2, rect3, rect4);
                                parcelableWrapper.set(windowState.getWmDisplayCutout().getDisplayCutout());
                                rect5.set(windowState.getBackdropFrame(windowState.getFrameLw()));
                                insetsState.set(windowState.getInsetsState(), windowState.isClientLocal());
                                if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
                                    i10 = 1;
                                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS, 95902367, 12, null, String.valueOf(windowState), Boolean.valueOf(zTryStartExitingAnimation));
                                } else {
                                    i10 = 1;
                                }
                                if (this.mInTouchMode) {
                                    i11 = i10;
                                } else {
                                    i11 = 0;
                                }
                                int i18 = iCreateSurfaceControl | i11;
                                windowState.mInRelayout = false;
                                if (zUpdateOrientation) {
                                    Trace.traceBegin(32L, "relayoutWindow: postNewConfigurationToHandler");
                                    displayContent.sendNewConfiguration();
                                    Trace.traceEnd(32L);
                                }
                                if (windowStateAnimator2.mSurfaceController != null) {
                                    point.set(windowStateAnimator2.mSurfaceController.getWidth(), windowStateAnimator2.mSurfaceController.getHeight());
                                }
                                getInsetsSourceControls(windowState, insetsSourceControlArr);
                                resetPriorityAfterLockedSection();
                                Binder.restoreCallingIdentity(jClearCallingIdentity);
                                return i18;
                            }
                            windowState = windowStateWindowForClientLocked;
                            WindowStateAnimator windowStateAnimator7 = windowStateAnimator;
                            displayContent = displayContent2;
                            r6 = r6;
                            Trace.traceBegin(32L, "relayoutWindow: viewVisibility_2");
                            windowStateAnimator2 = windowStateAnimator7;
                            windowStateAnimator2.mEnterAnimationPending = false;
                            windowStateAnimator2.mEnteringAnimation = false;
                            if (i4 == 0) {
                                Trace.traceBegin(32L, "wmReleaseOutSurface_" + ((Object) windowState.mAttrs.getTitle()));
                                surfaceControl.release();
                                Trace.traceEnd(32L);
                                Trace.traceEnd(32L);
                                r6 = r6;
                                if (zTryStartExitingAnimation) {
                                    z3 = false;
                                }
                                if ((iCreateSurfaceControl & 2) != 0) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                if (z3) {
                                    displayContent.computeImeTarget(true);
                                    if (z11) {
                                        displayContent.assignWindowLayers(false);
                                    }
                                }
                                if (z7) {
                                    displayContent.pendingLayoutChanges |= 4;
                                }
                                if (windowState.mActivityRecord != null) {
                                    displayContent.mUnknownAppVisibilityController.notifyRelayouted(windowState.mActivityRecord);
                                }
                                Trace.traceBegin(32L, "relayoutWindow: updateOrientation");
                                zUpdateOrientation = displayContent.updateOrientation();
                                Trace.traceEnd(32L);
                                if (z11) {
                                    displayContent.mWallpaperController.updateWallpaperOffset(windowState, false);
                                }
                                if (windowState.mActivityRecord != null) {
                                    windowState.mActivityRecord.updateReportedVisibilityLocked();
                                }
                                if (windowStateAnimator2.mReportSurfaceResized) {
                                    windowStateAnimator2.mReportSurfaceResized = false;
                                    iCreateSurfaceControl |= 32;
                                }
                                if (displayPolicy.areSystemBarsForcedShownLw(windowState)) {
                                    iCreateSurfaceControl |= 64;
                                }
                                if (!windowState.isGoneForLayoutLw()) {
                                    windowState.mResizedWhileGone = false;
                                }
                                if (z10) {
                                    mergedConfiguration2 = mergedConfiguration;
                                    windowState.getMergedConfiguration(mergedConfiguration2);
                                } else {
                                    mergedConfiguration2 = mergedConfiguration;
                                    windowState.getLastReportedMergedConfiguration(mergedConfiguration2);
                                }
                                windowState.setLastReportedMergedConfiguration(mergedConfiguration2);
                                windowState.updateLastInsetValues();
                                windowState.getCompatFrame(rect);
                                windowState.getInsetsForRelayout(rect2, rect3, rect4);
                                parcelableWrapper.set(windowState.getWmDisplayCutout().getDisplayCutout());
                                rect5.set(windowState.getBackdropFrame(windowState.getFrameLw()));
                                insetsState.set(windowState.getInsetsState(), windowState.isClientLocal());
                                if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
                                    i10 = 1;
                                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS, 95902367, 12, null, String.valueOf(windowState), Boolean.valueOf(zTryStartExitingAnimation));
                                } else {
                                    i10 = 1;
                                }
                                if (this.mInTouchMode) {
                                    i11 = i10;
                                } else {
                                    i11 = 0;
                                }
                                int i19 = iCreateSurfaceControl | i11;
                                windowState.mInRelayout = false;
                                if (zUpdateOrientation) {
                                    Trace.traceBegin(32L, "relayoutWindow: postNewConfigurationToHandler");
                                    displayContent.sendNewConfiguration();
                                    Trace.traceEnd(32L);
                                }
                                if (windowStateAnimator2.mSurfaceController != null) {
                                    point.set(windowStateAnimator2.mSurfaceController.getWidth(), windowStateAnimator2.mSurfaceController.getHeight());
                                }
                                getInsetsSourceControls(windowState, insetsSourceControlArr);
                                resetPriorityAfterLockedSection();
                                Binder.restoreCallingIdentity(jClearCallingIdentity);
                                return i19;
                            }
                            if (windowStateAnimator2.hasSurface()) {
                                Trace.traceBegin(32L, "relayoutWindow: getSurface");
                                windowStateAnimator2.mSurfaceController.getSurfaceControl(surfaceControl);
                                windowStateAnimator2.mSurfaceController.getBLASTSurfaceControl(surfaceControl2);
                                Trace.traceEnd(32L);
                                Trace.traceEnd(32L);
                                r6 = r6;
                            } else {
                                Trace.traceBegin(32L, "wmReleaseOutSurface_" + ((Object) windowState.mAttrs.getTitle()));
                                surfaceControl.release();
                                Trace.traceEnd(32L);
                                Trace.traceEnd(32L);
                                r6 = r6;
                            }
                            if (zTryStartExitingAnimation) {
                                z3 = false;
                            }
                            if ((iCreateSurfaceControl & 2) != 0) {
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                            if (z3) {
                                displayContent.computeImeTarget(true);
                                if (z11) {
                                    displayContent.assignWindowLayers(false);
                                }
                            }
                            if (z7) {
                                displayContent.pendingLayoutChanges |= 4;
                            }
                            if (windowState.mActivityRecord != null) {
                                displayContent.mUnknownAppVisibilityController.notifyRelayouted(windowState.mActivityRecord);
                            }
                            Trace.traceBegin(32L, "relayoutWindow: updateOrientation");
                            zUpdateOrientation = displayContent.updateOrientation();
                            Trace.traceEnd(32L);
                            if (z11) {
                                displayContent.mWallpaperController.updateWallpaperOffset(windowState, false);
                            }
                            if (windowState.mActivityRecord != null) {
                                windowState.mActivityRecord.updateReportedVisibilityLocked();
                            }
                            if (windowStateAnimator2.mReportSurfaceResized) {
                                windowStateAnimator2.mReportSurfaceResized = false;
                                iCreateSurfaceControl |= 32;
                            }
                            if (displayPolicy.areSystemBarsForcedShownLw(windowState)) {
                                iCreateSurfaceControl |= 64;
                            }
                            if (!windowState.isGoneForLayoutLw()) {
                                windowState.mResizedWhileGone = false;
                            }
                            if (z10) {
                                mergedConfiguration2 = mergedConfiguration;
                                windowState.getMergedConfiguration(mergedConfiguration2);
                            } else {
                                mergedConfiguration2 = mergedConfiguration;
                                windowState.getLastReportedMergedConfiguration(mergedConfiguration2);
                            }
                            windowState.setLastReportedMergedConfiguration(mergedConfiguration2);
                            windowState.updateLastInsetValues();
                            windowState.getCompatFrame(rect);
                            windowState.getInsetsForRelayout(rect2, rect3, rect4);
                            parcelableWrapper.set(windowState.getWmDisplayCutout().getDisplayCutout());
                            rect5.set(windowState.getBackdropFrame(windowState.getFrameLw()));
                            insetsState.set(windowState.getInsetsState(), windowState.isClientLocal());
                            if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
                                i10 = 1;
                                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS, 95902367, 12, null, String.valueOf(windowState), Boolean.valueOf(zTryStartExitingAnimation));
                            } else {
                                i10 = 1;
                            }
                            if (this.mInTouchMode) {
                                i11 = i10;
                            } else {
                                i11 = 0;
                            }
                            int i110 = iCreateSurfaceControl | i11;
                            windowState.mInRelayout = false;
                            if (zUpdateOrientation) {
                                Trace.traceBegin(32L, "relayoutWindow: postNewConfigurationToHandler");
                                displayContent.sendNewConfiguration();
                                Trace.traceEnd(32L);
                            }
                            if (windowStateAnimator2.mSurfaceController != null) {
                                point.set(windowStateAnimator2.mSurfaceController.getWidth(), windowStateAnimator2.mSurfaceController.getHeight());
                            }
                            getInsetsSourceControls(windowState, insetsSourceControlArr);
                            resetPriorityAfterLockedSection();
                            Binder.restoreCallingIdentity(jClearCallingIdentity);
                            return i110;
                        }
                        try {
                            windowStateWindowForClientLocked.finishSeamlessRotation(false);
                            iCreateSurfaceControl = windowStateWindowForClientLocked.useBLASTSync() ? 0 | 128 : 0;
                            if (layoutParams != null) {
                                displayPolicy = displayPolicy2;
                                try {
                                    displayPolicy.adjustWindowParamsLw(windowStateWindowForClientLocked, layoutParams, callingPid, callingUid);
                                    windowStateWindowForClientLocked.mToken.adjustWindowParams(windowStateWindowForClientLocked, layoutParams);
                                    if (i == windowStateWindowForClientLocked.mSeq) {
                                        i13 = layoutParams.systemUiVisibility | layoutParams.subtreeSystemUiVisibility;
                                        if ((67043328 & i13) != 0 && !hasStatusBarPermission(callingPid, callingUid)) {
                                            i13 &= -67043329;
                                        }
                                        windowStateWindowForClientLocked.mSystemUiVisibility = i13;
                                    }
                                    if (windowStateWindowForClientLocked.mAttrs.type == layoutParams.type) {
                                        throw new IllegalArgumentException("Window type can not be changed after the window is added.");
                                    }
                                    if (Arrays.equals(windowStateWindowForClientLocked.mAttrs.providesInsetsTypes, layoutParams.providesInsetsTypes)) {
                                        throw new IllegalArgumentException("Insets types can not be changed after the window is added.");
                                    }
                                    if ((layoutParams.privateFlags & 8192) != 0) {
                                        layoutParams.x = windowStateWindowForClientLocked.mAttrs.x;
                                        layoutParams.y = windowStateWindowForClientLocked.mAttrs.y;
                                        layoutParams.width = windowStateWindowForClientLocked.mAttrs.width;
                                        layoutParams.height = windowStateWindowForClientLocked.mAttrs.height;
                                    }
                                    int i111 = windowStateWindowForClientLocked.mAttrs.flags ^ layoutParams.flags;
                                    i12 = windowStateWindowForClientLocked.mAttrs.privateFlags ^ layoutParams.privateFlags;
                                    iCopyFrom = windowStateWindowForClientLocked.mAttrs.copyFrom(layoutParams);
                                    if ((iCopyFrom & 16385) != 0) {
                                        windowStateWindowForClientLocked.mLayoutNeeded = true;
                                    }
                                    if (windowStateWindowForClientLocked.mActivityRecord != null && ((i111 & 524288) != 0 || (i111 & 4194304) != 0)) {
                                        windowStateWindowForClientLocked.mActivityRecord.checkKeyguardFlagsChanged();
                                    }
                                    if ((33554432 & iCopyFrom) != 0 && this.mAccessibilityController != null) {
                                        this.mAccessibilityController.onSomeWindowResizedOrMovedLocked(windowStateWindowForClientLocked.getDisplayContent().getDisplayId());
                                    }
                                    if ((i12 & 524288) != 0) {
                                        updateNonSystemOverlayWindowsVisibilityIfNeeded(windowStateWindowForClientLocked, windowStateWindowForClientLocked.mWinAnimator.getShown());
                                    }
                                    if ((131072 & iCopyFrom) != 0) {
                                        if ((windowStateWindowForClientLocked.mAttrs.privateFlags & 16777216) != 0) {
                                            z12 = true;
                                        } else {
                                            z12 = false;
                                        }
                                        windowStateAnimator = windowStateAnimator3;
                                        windowStateAnimator.setColorSpaceAgnosticLocked(z12);
                                    } else {
                                        windowStateAnimator = windowStateAnimator3;
                                    }
                                    i6 = iCopyFrom;
                                    r6 = i111;
                                } catch (Throwable th2) {
                                    th = th2;
                                    r6 = r6;
                                }
                            } else {
                                displayPolicy = displayPolicy2;
                                windowStateAnimator = windowStateAnimator3;
                                r6 = 0;
                                i6 = 0;
                            }
                            if ((i5 & 2) != 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            windowStateAnimator.mSurfaceDestroyDeferred = z;
                            if ((i6 & 128) != 0) {
                                windowStateAnimator.mAlpha = layoutParams.alpha;
                            }
                            windowStateWindowForClientLocked.setWindowScale(windowStateWindowForClientLocked.mRequestedWidth, windowStateWindowForClientLocked.mRequestedHeight);
                            if (windowStateWindowForClientLocked.mAttrs.surfaceInsets.left == 0 || windowStateWindowForClientLocked.mAttrs.surfaceInsets.top != 0 || windowStateWindowForClientLocked.mAttrs.surfaceInsets.right != 0 || windowStateWindowForClientLocked.mAttrs.surfaceInsets.bottom != 0) {
                                windowStateAnimator.setOpaqueLocked(false);
                            }
                            i7 = windowStateWindowForClientLocked.mViewVisibility;
                            boolean z14 = (i7 != 4 || i7 == 8) && i4 == 0;
                            if ((131080 & r6) == 0 || z14) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            z3 = z2;
                            if (windowStateWindowForClientLocked.mViewVisibility != i4 && (r6 & 8) == 0 && windowStateWindowForClientLocked.mRelayoutCalled) {
                                z4 = false;
                            } else {
                                z4 = true;
                            }
                            if (windowStateWindowForClientLocked.mViewVisibility != i4 || (windowStateWindowForClientLocked.mAttrs.flags & 1048576) == 0) {
                                z5 = false;
                            } else {
                                z5 = true;
                            }
                            if ((r6 & 1048576) != 0) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            z7 = z5 | z6;
                            if ((r6 & 8192) != 0) {
                                windowStateWindowForClientLocked.mRelayoutCalled = true;
                                windowStateWindowForClientLocked.mInRelayout = true;
                                windowStateWindowForClientLocked.setViewVisibility(i4);
                                if (ProtoLog$Cache.WM_DEBUG_SCREEN_ON_enabled) {
                                    ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_SCREEN_ON, -754503024, 20, null, String.valueOf(windowStateWindowForClientLocked), Long.valueOf(i7), Long.valueOf(i4), String.valueOf(new RuntimeException().fillInStackTrace()));
                                }
                                windowStateWindowForClientLocked.setDisplayLayoutNeeded();
                                if ((i5 & 1) != 0) {
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                windowStateWindowForClientLocked.mGivenInsetsPending = z8;
                                if (i4 == 0) {
                                    z9 = false;
                                } else {
                                    z9 = false;
                                }
                                z10 = z9;
                                if (z10) {
                                    zTryStartExitingAnimation = z4;
                                } else {
                                    zTryStartExitingAnimation = z4;
                                }
                                this.mWindowPlacerLocked.performSurfacePlacement(true);
                                if (z10) {
                                    Trace.traceBegin(32L, "relayoutWindow: viewVisibility_1");
                                    iRelayoutVisibleWindow = windowStateWindowForClientLocked.relayoutVisibleWindow(iCreateSurfaceControl, i6);
                                    windowState = windowStateWindowForClientLocked;
                                    WindowStateAnimator windowStateAnimator8 = windowStateAnimator;
                                    r6 = r6;
                                    iCreateSurfaceControl = createSurfaceControl(surfaceControl, surfaceControl2, iRelayoutVisibleWindow, windowState, windowStateAnimator8);
                                    if ((iCreateSurfaceControl & 2) != 0) {
                                        zTryStartExitingAnimation = true;
                                    }
                                    if (windowState.mAttrs.type == 2011) {
                                        displayContent = displayContent2;
                                        if (displayContent.mInputMethodWindow == null) {
                                            displayContent.setInputMethodWindowLocked(windowState);
                                            z3 = true;
                                        }
                                    } else {
                                        displayContent = displayContent2;
                                    }
                                    windowState.adjustStartingWindowFlags();
                                    Trace.traceEnd(32L);
                                    windowStateAnimator2 = windowStateAnimator8;
                                    r6 = r6;
                                    if (zTryStartExitingAnimation) {
                                        z3 = false;
                                    }
                                    if ((iCreateSurfaceControl & 2) != 0) {
                                        z11 = true;
                                    } else {
                                        z11 = false;
                                    }
                                    if (z3) {
                                        displayContent.computeImeTarget(true);
                                        if (z11) {
                                            displayContent.assignWindowLayers(false);
                                        }
                                    }
                                    if (z7) {
                                        displayContent.pendingLayoutChanges |= 4;
                                    }
                                    if (windowState.mActivityRecord != null) {
                                        displayContent.mUnknownAppVisibilityController.notifyRelayouted(windowState.mActivityRecord);
                                    }
                                    Trace.traceBegin(32L, "relayoutWindow: updateOrientation");
                                    zUpdateOrientation = displayContent.updateOrientation();
                                    Trace.traceEnd(32L);
                                    if (z11) {
                                        displayContent.mWallpaperController.updateWallpaperOffset(windowState, false);
                                    }
                                    if (windowState.mActivityRecord != null) {
                                        windowState.mActivityRecord.updateReportedVisibilityLocked();
                                    }
                                    if (windowStateAnimator2.mReportSurfaceResized) {
                                        windowStateAnimator2.mReportSurfaceResized = false;
                                        iCreateSurfaceControl |= 32;
                                    }
                                    if (displayPolicy.areSystemBarsForcedShownLw(windowState)) {
                                        iCreateSurfaceControl |= 64;
                                    }
                                    if (!windowState.isGoneForLayoutLw()) {
                                        windowState.mResizedWhileGone = false;
                                    }
                                    if (z10) {
                                        mergedConfiguration2 = mergedConfiguration;
                                        windowState.getMergedConfiguration(mergedConfiguration2);
                                    } else {
                                        mergedConfiguration2 = mergedConfiguration;
                                        windowState.getLastReportedMergedConfiguration(mergedConfiguration2);
                                    }
                                    windowState.setLastReportedMergedConfiguration(mergedConfiguration2);
                                    windowState.updateLastInsetValues();
                                    windowState.getCompatFrame(rect);
                                    windowState.getInsetsForRelayout(rect2, rect3, rect4);
                                    parcelableWrapper.set(windowState.getWmDisplayCutout().getDisplayCutout());
                                    rect5.set(windowState.getBackdropFrame(windowState.getFrameLw()));
                                    insetsState.set(windowState.getInsetsState(), windowState.isClientLocal());
                                    if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
                                        i10 = 1;
                                        ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS, 95902367, 12, null, String.valueOf(windowState), Boolean.valueOf(zTryStartExitingAnimation));
                                    } else {
                                        i10 = 1;
                                    }
                                    if (this.mInTouchMode) {
                                        i11 = i10;
                                    } else {
                                        i11 = 0;
                                    }
                                    int i112 = iCreateSurfaceControl | i11;
                                    windowState.mInRelayout = false;
                                    if (zUpdateOrientation) {
                                        Trace.traceBegin(32L, "relayoutWindow: postNewConfigurationToHandler");
                                        displayContent.sendNewConfiguration();
                                        Trace.traceEnd(32L);
                                    }
                                    if (windowStateAnimator2.mSurfaceController != null) {
                                        point.set(windowStateAnimator2.mSurfaceController.getWidth(), windowStateAnimator2.mSurfaceController.getHeight());
                                    }
                                    getInsetsSourceControls(windowState, insetsSourceControlArr);
                                    resetPriorityAfterLockedSection();
                                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                                    return i112;
                                }
                                windowState = windowStateWindowForClientLocked;
                                WindowStateAnimator windowStateAnimator9 = windowStateAnimator;
                                displayContent = displayContent2;
                                r6 = r6;
                                Trace.traceBegin(32L, "relayoutWindow: viewVisibility_2");
                                windowStateAnimator2 = windowStateAnimator9;
                                windowStateAnimator2.mEnterAnimationPending = false;
                                windowStateAnimator2.mEnteringAnimation = false;
                                if (i4 == 0) {
                                    Trace.traceBegin(32L, "wmReleaseOutSurface_" + ((Object) windowState.mAttrs.getTitle()));
                                    surfaceControl.release();
                                    Trace.traceEnd(32L);
                                    Trace.traceEnd(32L);
                                    r6 = r6;
                                    if (zTryStartExitingAnimation) {
                                        z3 = false;
                                    }
                                    if ((iCreateSurfaceControl & 2) != 0) {
                                        z11 = true;
                                    } else {
                                        z11 = false;
                                    }
                                    if (z3) {
                                        displayContent.computeImeTarget(true);
                                        if (z11) {
                                            displayContent.assignWindowLayers(false);
                                        }
                                    }
                                    if (z7) {
                                        displayContent.pendingLayoutChanges |= 4;
                                    }
                                    if (windowState.mActivityRecord != null) {
                                        displayContent.mUnknownAppVisibilityController.notifyRelayouted(windowState.mActivityRecord);
                                    }
                                    Trace.traceBegin(32L, "relayoutWindow: updateOrientation");
                                    zUpdateOrientation = displayContent.updateOrientation();
                                    Trace.traceEnd(32L);
                                    if (z11) {
                                        displayContent.mWallpaperController.updateWallpaperOffset(windowState, false);
                                    }
                                    if (windowState.mActivityRecord != null) {
                                        windowState.mActivityRecord.updateReportedVisibilityLocked();
                                    }
                                    if (windowStateAnimator2.mReportSurfaceResized) {
                                        windowStateAnimator2.mReportSurfaceResized = false;
                                        iCreateSurfaceControl |= 32;
                                    }
                                    if (displayPolicy.areSystemBarsForcedShownLw(windowState)) {
                                        iCreateSurfaceControl |= 64;
                                    }
                                    if (!windowState.isGoneForLayoutLw()) {
                                        windowState.mResizedWhileGone = false;
                                    }
                                    if (z10) {
                                        mergedConfiguration2 = mergedConfiguration;
                                        windowState.getMergedConfiguration(mergedConfiguration2);
                                    } else {
                                        mergedConfiguration2 = mergedConfiguration;
                                        windowState.getLastReportedMergedConfiguration(mergedConfiguration2);
                                    }
                                    windowState.setLastReportedMergedConfiguration(mergedConfiguration2);
                                    windowState.updateLastInsetValues();
                                    windowState.getCompatFrame(rect);
                                    windowState.getInsetsForRelayout(rect2, rect3, rect4);
                                    parcelableWrapper.set(windowState.getWmDisplayCutout().getDisplayCutout());
                                    rect5.set(windowState.getBackdropFrame(windowState.getFrameLw()));
                                    insetsState.set(windowState.getInsetsState(), windowState.isClientLocal());
                                    if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
                                        i10 = 1;
                                        ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS, 95902367, 12, null, String.valueOf(windowState), Boolean.valueOf(zTryStartExitingAnimation));
                                    } else {
                                        i10 = 1;
                                    }
                                    if (this.mInTouchMode) {
                                        i11 = i10;
                                    } else {
                                        i11 = 0;
                                    }
                                    int i113 = iCreateSurfaceControl | i11;
                                    windowState.mInRelayout = false;
                                    if (zUpdateOrientation) {
                                        Trace.traceBegin(32L, "relayoutWindow: postNewConfigurationToHandler");
                                        displayContent.sendNewConfiguration();
                                        Trace.traceEnd(32L);
                                    }
                                    if (windowStateAnimator2.mSurfaceController != null) {
                                        point.set(windowStateAnimator2.mSurfaceController.getWidth(), windowStateAnimator2.mSurfaceController.getHeight());
                                    }
                                    getInsetsSourceControls(windowState, insetsSourceControlArr);
                                    resetPriorityAfterLockedSection();
                                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                                    return i113;
                                }
                                if (windowStateAnimator2.hasSurface()) {
                                    Trace.traceBegin(32L, "relayoutWindow: getSurface");
                                    windowStateAnimator2.mSurfaceController.getSurfaceControl(surfaceControl);
                                    windowStateAnimator2.mSurfaceController.getBLASTSurfaceControl(surfaceControl2);
                                    Trace.traceEnd(32L);
                                    Trace.traceEnd(32L);
                                    r6 = r6;
                                } else {
                                    Trace.traceBegin(32L, "wmReleaseOutSurface_" + ((Object) windowState.mAttrs.getTitle()));
                                    surfaceControl.release();
                                    Trace.traceEnd(32L);
                                    Trace.traceEnd(32L);
                                    r6 = r6;
                                }
                                if (zTryStartExitingAnimation) {
                                    z3 = false;
                                }
                                if ((iCreateSurfaceControl & 2) != 0) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                if (z3) {
                                    displayContent.computeImeTarget(true);
                                    if (z11) {
                                        displayContent.assignWindowLayers(false);
                                    }
                                }
                                if (z7) {
                                    displayContent.pendingLayoutChanges |= 4;
                                }
                                if (windowState.mActivityRecord != null) {
                                    displayContent.mUnknownAppVisibilityController.notifyRelayouted(windowState.mActivityRecord);
                                }
                                Trace.traceBegin(32L, "relayoutWindow: updateOrientation");
                                zUpdateOrientation = displayContent.updateOrientation();
                                Trace.traceEnd(32L);
                                if (z11) {
                                    displayContent.mWallpaperController.updateWallpaperOffset(windowState, false);
                                }
                                if (windowState.mActivityRecord != null) {
                                    windowState.mActivityRecord.updateReportedVisibilityLocked();
                                }
                                if (windowStateAnimator2.mReportSurfaceResized) {
                                    windowStateAnimator2.mReportSurfaceResized = false;
                                    iCreateSurfaceControl |= 32;
                                }
                                if (displayPolicy.areSystemBarsForcedShownLw(windowState)) {
                                    iCreateSurfaceControl |= 64;
                                }
                                if (!windowState.isGoneForLayoutLw()) {
                                    windowState.mResizedWhileGone = false;
                                }
                                if (z10) {
                                    mergedConfiguration2 = mergedConfiguration;
                                    windowState.getMergedConfiguration(mergedConfiguration2);
                                } else {
                                    mergedConfiguration2 = mergedConfiguration;
                                    windowState.getLastReportedMergedConfiguration(mergedConfiguration2);
                                }
                                windowState.setLastReportedMergedConfiguration(mergedConfiguration2);
                                windowState.updateLastInsetValues();
                                windowState.getCompatFrame(rect);
                                windowState.getInsetsForRelayout(rect2, rect3, rect4);
                                parcelableWrapper.set(windowState.getWmDisplayCutout().getDisplayCutout());
                                rect5.set(windowState.getBackdropFrame(windowState.getFrameLw()));
                                insetsState.set(windowState.getInsetsState(), windowState.isClientLocal());
                                if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
                                    i10 = 1;
                                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS, 95902367, 12, null, String.valueOf(windowState), Boolean.valueOf(zTryStartExitingAnimation));
                                } else {
                                    i10 = 1;
                                }
                                if (this.mInTouchMode) {
                                    i11 = i10;
                                } else {
                                    i11 = 0;
                                }
                                int i114 = iCreateSurfaceControl | i11;
                                windowState.mInRelayout = false;
                                if (zUpdateOrientation) {
                                    Trace.traceBegin(32L, "relayoutWindow: postNewConfigurationToHandler");
                                    displayContent.sendNewConfiguration();
                                    Trace.traceEnd(32L);
                                }
                                if (windowStateAnimator2.mSurfaceController != null) {
                                    point.set(windowStateAnimator2.mSurfaceController.getWidth(), windowStateAnimator2.mSurfaceController.getHeight());
                                }
                                getInsetsSourceControls(windowState, insetsSourceControlArr);
                                resetPriorityAfterLockedSection();
                                Binder.restoreCallingIdentity(jClearCallingIdentity);
                                return i114;
                            }
                            try {
                                if (windowStateAnimator.mSurfaceController != null) {
                                    windowStateAnimator.mSurfaceController.setSecure(windowStateWindowForClientLocked.isSecureLocked());
                                }
                                try {
                                    windowStateWindowForClientLocked.mRelayoutCalled = true;
                                    windowStateWindowForClientLocked.mInRelayout = true;
                                    windowStateWindowForClientLocked.setViewVisibility(i4);
                                    if (ProtoLog$Cache.WM_DEBUG_SCREEN_ON_enabled) {
                                        try {
                                            try {
                                                try {
                                                    ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_SCREEN_ON, -754503024, 20, null, String.valueOf(windowStateWindowForClientLocked), Long.valueOf(i7), Long.valueOf(i4), String.valueOf(new RuntimeException().fillInStackTrace()));
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    r6 = r6;
                                                }
                                            } catch (Throwable th4) {
                                                th = th4;
                                                r6 = r6;
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                        }
                                    }
                                    windowStateWindowForClientLocked.setDisplayLayoutNeeded();
                                    if ((i5 & 1) != 0) {
                                        z8 = true;
                                    } else {
                                        z8 = false;
                                    }
                                    windowStateWindowForClientLocked.mGivenInsetsPending = z8;
                                    if (i4 == 0 || !(windowStateWindowForClientLocked.mActivityRecord == null || windowStateWindowForClientLocked.mAttrs.type == 3 || windowStateWindowForClientLocked.mActivityRecord.isClientVisible())) {
                                        z9 = false;
                                    } else {
                                        z9 = true;
                                    }
                                    z10 = z9;
                                    if (z10 || !windowStateAnimator.hasSurface() || windowStateWindowForClientLocked.mAnimatingExit) {
                                        zTryStartExitingAnimation = z4;
                                    } else {
                                        iCreateSurfaceControl |= 4;
                                        zTryStartExitingAnimation = !windowStateWindowForClientLocked.mWillReplaceWindow ? tryStartExitingAnimation(windowStateWindowForClientLocked, windowStateAnimator, z4) : z4;
                                    }
                                    this.mWindowPlacerLocked.performSurfacePlacement(true);
                                    try {
                                        if (z10) {
                                            try {
                                                Trace.traceBegin(32L, "relayoutWindow: viewVisibility_1");
                                                iRelayoutVisibleWindow = windowStateWindowForClientLocked.relayoutVisibleWindow(iCreateSurfaceControl, i6);
                                                windowState = windowStateWindowForClientLocked;
                                                WindowStateAnimator windowStateAnimator10 = windowStateAnimator;
                                                r6 = r6;
                                                try {
                                                    iCreateSurfaceControl = createSurfaceControl(surfaceControl, surfaceControl2, iRelayoutVisibleWindow, windowState, windowStateAnimator10);
                                                    if ((iCreateSurfaceControl & 2) != 0) {
                                                        zTryStartExitingAnimation = true;
                                                    }
                                                    if (windowState.mAttrs.type == 2011) {
                                                        displayContent = displayContent2;
                                                        if (displayContent.mInputMethodWindow == null) {
                                                            displayContent.setInputMethodWindowLocked(windowState);
                                                            z3 = true;
                                                        }
                                                    } else {
                                                        displayContent = displayContent2;
                                                    }
                                                    windowState.adjustStartingWindowFlags();
                                                    Trace.traceEnd(32L);
                                                    windowStateAnimator2 = windowStateAnimator10;
                                                    r6 = r6;
                                                    if (zTryStartExitingAnimation && updateFocusedWindowLocked(0, true)) {
                                                        z3 = false;
                                                    }
                                                    if ((iCreateSurfaceControl & 2) != 0) {
                                                        z11 = true;
                                                    } else {
                                                        z11 = false;
                                                    }
                                                    if (z3) {
                                                        displayContent.computeImeTarget(true);
                                                        if (z11) {
                                                            displayContent.assignWindowLayers(false);
                                                        }
                                                    }
                                                    if (z7) {
                                                        displayContent.pendingLayoutChanges |= 4;
                                                    }
                                                    if (windowState.mActivityRecord != null) {
                                                        displayContent.mUnknownAppVisibilityController.notifyRelayouted(windowState.mActivityRecord);
                                                    }
                                                    Trace.traceBegin(32L, "relayoutWindow: updateOrientation");
                                                    zUpdateOrientation = displayContent.updateOrientation();
                                                    Trace.traceEnd(32L);
                                                    if (z11 && windowState.mIsWallpaper) {
                                                        displayContent.mWallpaperController.updateWallpaperOffset(windowState, false);
                                                    }
                                                    if (windowState.mActivityRecord != null) {
                                                        windowState.mActivityRecord.updateReportedVisibilityLocked();
                                                    }
                                                    if (windowStateAnimator2.mReportSurfaceResized) {
                                                        windowStateAnimator2.mReportSurfaceResized = false;
                                                        iCreateSurfaceControl |= 32;
                                                    }
                                                    if (displayPolicy.areSystemBarsForcedShownLw(windowState)) {
                                                        iCreateSurfaceControl |= 64;
                                                    }
                                                    if (!windowState.isGoneForLayoutLw()) {
                                                        windowState.mResizedWhileGone = false;
                                                    }
                                                    try {
                                                        if (z10) {
                                                            mergedConfiguration2 = mergedConfiguration;
                                                            windowState.getMergedConfiguration(mergedConfiguration2);
                                                        } else {
                                                            mergedConfiguration2 = mergedConfiguration;
                                                            windowState.getLastReportedMergedConfiguration(mergedConfiguration2);
                                                        }
                                                        windowState.setLastReportedMergedConfiguration(mergedConfiguration2);
                                                        windowState.updateLastInsetValues();
                                                        windowState.getCompatFrame(rect);
                                                        windowState.getInsetsForRelayout(rect2, rect3, rect4);
                                                        parcelableWrapper.set(windowState.getWmDisplayCutout().getDisplayCutout());
                                                        rect5.set(windowState.getBackdropFrame(windowState.getFrameLw()));
                                                        insetsState.set(windowState.getInsetsState(), windowState.isClientLocal());
                                                        if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
                                                            i10 = 1;
                                                            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS, 95902367, 12, null, String.valueOf(windowState), Boolean.valueOf(zTryStartExitingAnimation));
                                                        } else {
                                                            i10 = 1;
                                                        }
                                                        if (this.mInTouchMode) {
                                                            i11 = i10;
                                                        } else {
                                                            i11 = 0;
                                                        }
                                                        int i115 = iCreateSurfaceControl | i11;
                                                        windowState.mInRelayout = false;
                                                        if (zUpdateOrientation) {
                                                            Trace.traceBegin(32L, "relayoutWindow: postNewConfigurationToHandler");
                                                            displayContent.sendNewConfiguration();
                                                            Trace.traceEnd(32L);
                                                        }
                                                        if (windowStateAnimator2.mSurfaceController != null) {
                                                            try {
                                                                try {
                                                                    point.set(windowStateAnimator2.mSurfaceController.getWidth(), windowStateAnimator2.mSurfaceController.getHeight());
                                                                } catch (Throwable th6) {
                                                                    th = th6;
                                                                    resetPriorityAfterLockedSection();
                                                                    throw th;
                                                                }
                                                            } catch (Throwable th7) {
                                                                th = th7;
                                                            }
                                                        }
                                                        getInsetsSourceControls(windowState, insetsSourceControlArr);
                                                        resetPriorityAfterLockedSection();
                                                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                                                        return i115;
                                                    } catch (Throwable th8) {
                                                        th = th8;
                                                    }
                                                } catch (Exception e) {
                                                    try {
                                                        displayContent2.getInputMonitor().updateInputWindowsLw(true);
                                                        if (ProtoLog$Cache.WM_ERROR_enabled) {
                                                            String strValueOf = String.valueOf(iWindow);
                                                            String strValueOf2 = String.valueOf(windowState.mAttrs.getTitle());
                                                            String strValueOf3 = String.valueOf(e);
                                                            ProtoLogGroup protoLogGroup = ProtoLogGroup.WM_ERROR;
                                                            Object[] objArr = new Object[3];
                                                            i8 = iRelayoutVisibleWindow;
                                                            i9 = 0;
                                                            try {
                                                                objArr[0] = strValueOf;
                                                                objArr[1] = strValueOf2;
                                                                objArr[2] = strValueOf3;
                                                                ProtoLogImpl.w(protoLogGroup, -1750206390, 0, "Exception thrown when creating surface for client %s (%s). %s", objArr);
                                                            } catch (Throwable th9) {
                                                                th = th9;
                                                            }
                                                        } else {
                                                            i8 = iRelayoutVisibleWindow;
                                                            i9 = 0;
                                                        }
                                                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                                                        resetPriorityAfterLockedSection();
                                                        return i9;
                                                    } catch (Throwable th10) {
                                                        th = th10;
                                                    }
                                                } catch (Throwable th11) {
                                                    th = th11;
                                                }
                                            } catch (Throwable th12) {
                                                th = th12;
                                                r6 = r6;
                                            }
                                        } else {
                                            windowState = windowStateWindowForClientLocked;
                                            WindowStateAnimator windowStateAnimator11 = windowStateAnimator;
                                            displayContent = displayContent2;
                                            r6 = r6;
                                            Trace.traceBegin(32L, "relayoutWindow: viewVisibility_2");
                                            windowStateAnimator2 = windowStateAnimator11;
                                            windowStateAnimator2.mEnterAnimationPending = false;
                                            windowStateAnimator2.mEnteringAnimation = false;
                                            if (i4 == 0) {
                                                Trace.traceBegin(32L, "wmReleaseOutSurface_" + ((Object) windowState.mAttrs.getTitle()));
                                                surfaceControl.release();
                                                Trace.traceEnd(32L);
                                                Trace.traceEnd(32L);
                                                r6 = r6;
                                                if (zTryStartExitingAnimation) {
                                                    z3 = false;
                                                }
                                                if ((iCreateSurfaceControl & 2) != 0) {
                                                    z11 = true;
                                                } else {
                                                    z11 = false;
                                                }
                                                if (z3) {
                                                    displayContent.computeImeTarget(true);
                                                    if (z11) {
                                                        displayContent.assignWindowLayers(false);
                                                    }
                                                }
                                                if (z7) {
                                                    displayContent.pendingLayoutChanges |= 4;
                                                }
                                                if (windowState.mActivityRecord != null) {
                                                    displayContent.mUnknownAppVisibilityController.notifyRelayouted(windowState.mActivityRecord);
                                                }
                                                Trace.traceBegin(32L, "relayoutWindow: updateOrientation");
                                                zUpdateOrientation = displayContent.updateOrientation();
                                                Trace.traceEnd(32L);
                                                if (z11) {
                                                    displayContent.mWallpaperController.updateWallpaperOffset(windowState, false);
                                                }
                                                if (windowState.mActivityRecord != null) {
                                                    windowState.mActivityRecord.updateReportedVisibilityLocked();
                                                }
                                                if (windowStateAnimator2.mReportSurfaceResized) {
                                                    windowStateAnimator2.mReportSurfaceResized = false;
                                                    iCreateSurfaceControl |= 32;
                                                }
                                                if (displayPolicy.areSystemBarsForcedShownLw(windowState)) {
                                                    iCreateSurfaceControl |= 64;
                                                }
                                                if (!windowState.isGoneForLayoutLw()) {
                                                    windowState.mResizedWhileGone = false;
                                                }
                                                if (z10) {
                                                    mergedConfiguration2 = mergedConfiguration;
                                                    windowState.getMergedConfiguration(mergedConfiguration2);
                                                } else {
                                                    mergedConfiguration2 = mergedConfiguration;
                                                    windowState.getLastReportedMergedConfiguration(mergedConfiguration2);
                                                }
                                                windowState.setLastReportedMergedConfiguration(mergedConfiguration2);
                                                windowState.updateLastInsetValues();
                                                windowState.getCompatFrame(rect);
                                                windowState.getInsetsForRelayout(rect2, rect3, rect4);
                                                parcelableWrapper.set(windowState.getWmDisplayCutout().getDisplayCutout());
                                                rect5.set(windowState.getBackdropFrame(windowState.getFrameLw()));
                                                insetsState.set(windowState.getInsetsState(), windowState.isClientLocal());
                                                if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
                                                    i10 = 1;
                                                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS, 95902367, 12, null, String.valueOf(windowState), Boolean.valueOf(zTryStartExitingAnimation));
                                                } else {
                                                    i10 = 1;
                                                }
                                                if (this.mInTouchMode) {
                                                    i11 = i10;
                                                } else {
                                                    i11 = 0;
                                                }
                                                int i116 = iCreateSurfaceControl | i11;
                                                windowState.mInRelayout = false;
                                                if (zUpdateOrientation) {
                                                    Trace.traceBegin(32L, "relayoutWindow: postNewConfigurationToHandler");
                                                    displayContent.sendNewConfiguration();
                                                    Trace.traceEnd(32L);
                                                }
                                                if (windowStateAnimator2.mSurfaceController != null) {
                                                    point.set(windowStateAnimator2.mSurfaceController.getWidth(), windowStateAnimator2.mSurfaceController.getHeight());
                                                }
                                                getInsetsSourceControls(windowState, insetsSourceControlArr);
                                                resetPriorityAfterLockedSection();
                                                Binder.restoreCallingIdentity(jClearCallingIdentity);
                                                return i116;
                                            }
                                            try {
                                                if (windowStateAnimator2.hasSurface()) {
                                                    Trace.traceBegin(32L, "relayoutWindow: getSurface");
                                                    try {
                                                        windowStateAnimator2.mSurfaceController.getSurfaceControl(surfaceControl);
                                                        windowStateAnimator2.mSurfaceController.getBLASTSurfaceControl(surfaceControl2);
                                                        Trace.traceEnd(32L);
                                                        Trace.traceEnd(32L);
                                                        r6 = r6;
                                                    } catch (Throwable th13) {
                                                        th = th13;
                                                    }
                                                } else {
                                                    try {
                                                        try {
                                                            Trace.traceBegin(32L, "wmReleaseOutSurface_" + ((Object) windowState.mAttrs.getTitle()));
                                                            surfaceControl.release();
                                                            Trace.traceEnd(32L);
                                                            Trace.traceEnd(32L);
                                                            r6 = r6;
                                                        } catch (Throwable th14) {
                                                            Trace.traceEnd(32L);
                                                            throw th14;
                                                        }
                                                    } catch (Throwable th15) {
                                                        th = th15;
                                                    }
                                                }
                                                if (zTryStartExitingAnimation) {
                                                    z3 = false;
                                                }
                                                if ((iCreateSurfaceControl & 2) != 0) {
                                                    z11 = true;
                                                } else {
                                                    z11 = false;
                                                }
                                                if (z3) {
                                                    displayContent.computeImeTarget(true);
                                                    if (z11) {
                                                        displayContent.assignWindowLayers(false);
                                                    }
                                                }
                                                if (z7) {
                                                    displayContent.pendingLayoutChanges |= 4;
                                                }
                                                if (windowState.mActivityRecord != null) {
                                                    displayContent.mUnknownAppVisibilityController.notifyRelayouted(windowState.mActivityRecord);
                                                }
                                                Trace.traceBegin(32L, "relayoutWindow: updateOrientation");
                                                zUpdateOrientation = displayContent.updateOrientation();
                                                Trace.traceEnd(32L);
                                                if (z11) {
                                                    displayContent.mWallpaperController.updateWallpaperOffset(windowState, false);
                                                }
                                                if (windowState.mActivityRecord != null) {
                                                    windowState.mActivityRecord.updateReportedVisibilityLocked();
                                                }
                                                if (windowStateAnimator2.mReportSurfaceResized) {
                                                    windowStateAnimator2.mReportSurfaceResized = false;
                                                    iCreateSurfaceControl |= 32;
                                                }
                                                if (displayPolicy.areSystemBarsForcedShownLw(windowState)) {
                                                    iCreateSurfaceControl |= 64;
                                                }
                                                if (!windowState.isGoneForLayoutLw()) {
                                                    windowState.mResizedWhileGone = false;
                                                }
                                                if (z10) {
                                                    mergedConfiguration2 = mergedConfiguration;
                                                    windowState.getMergedConfiguration(mergedConfiguration2);
                                                } else {
                                                    mergedConfiguration2 = mergedConfiguration;
                                                    windowState.getLastReportedMergedConfiguration(mergedConfiguration2);
                                                }
                                                windowState.setLastReportedMergedConfiguration(mergedConfiguration2);
                                                windowState.updateLastInsetValues();
                                                windowState.getCompatFrame(rect);
                                                windowState.getInsetsForRelayout(rect2, rect3, rect4);
                                                parcelableWrapper.set(windowState.getWmDisplayCutout().getDisplayCutout());
                                                rect5.set(windowState.getBackdropFrame(windowState.getFrameLw()));
                                                insetsState.set(windowState.getInsetsState(), windowState.isClientLocal());
                                                if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
                                                    i10 = 1;
                                                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS, 95902367, 12, null, String.valueOf(windowState), Boolean.valueOf(zTryStartExitingAnimation));
                                                } else {
                                                    i10 = 1;
                                                }
                                                if (this.mInTouchMode) {
                                                    i11 = i10;
                                                } else {
                                                    i11 = 0;
                                                }
                                                int i117 = iCreateSurfaceControl | i11;
                                                windowState.mInRelayout = false;
                                                if (zUpdateOrientation) {
                                                    Trace.traceBegin(32L, "relayoutWindow: postNewConfigurationToHandler");
                                                    displayContent.sendNewConfiguration();
                                                    Trace.traceEnd(32L);
                                                }
                                                if (windowStateAnimator2.mSurfaceController != null) {
                                                    point.set(windowStateAnimator2.mSurfaceController.getWidth(), windowStateAnimator2.mSurfaceController.getHeight());
                                                }
                                                getInsetsSourceControls(windowState, insetsSourceControlArr);
                                                resetPriorityAfterLockedSection();
                                                Binder.restoreCallingIdentity(jClearCallingIdentity);
                                                return i117;
                                            } catch (Throwable th16) {
                                                th = th16;
                                            }
                                        }
                                    } catch (Throwable th17) {
                                        th = th17;
                                    }
                                } catch (Throwable th18) {
                                    th = th18;
                                }
                            } catch (Throwable th19) {
                                th = th19;
                                r6 = r6;
                            }
                        } catch (Throwable th20) {
                            th = th20;
                            r6 = r6;
                        }
                    } catch (Throwable th21) {
                        th = th21;
                        r6 = r6;
                    }
                    resetPriorityAfterLockedSection();
                    throw th;
                }
                try {
                } catch (Throwable th22) {
                    th = th22;
                }
            } catch (Throwable th23) {
                th = th23;
                r6 = r6;
            }
            resetPriorityAfterLockedSection();
            throw th;
        }
        resetPriorityAfterLockedSection();
        return 0;
    }

    private void getInsetsSourceControls(WindowState win, InsetsSourceControl[] outControls) {
        InsetsSourceControl[] controls = win.getDisplayContent().getInsetsStateController().getControlsForDispatch(win);
        if (controls != null) {
            int length = Math.min(controls.length, outControls.length);
            for (int i = 0; i < length; i++) {
                outControls[i] = controls[i] != null ? new InsetsSourceControl(controls[i]) : null;
            }
        }
    }

    private boolean tryStartExitingAnimation(WindowState win, WindowStateAnimator winAnimator, boolean focusMayChange) {
        int transit = 2;
        if (win.mAttrs.type == 3) {
            transit = 5;
        }
        if (win.isWinVisibleLw() && winAnimator.applyAnimationLocked(transit, false)) {
            focusMayChange = true;
            win.mAnimatingExit = true;
        } else if (win.isAnimating(3) || win.getDisplayContent().mWallpaperController.isWallpaperTarget(win)) {
            win.mAnimatingExit = true;
        } else {
            boolean stopped = win.mActivityRecord != null ? win.mActivityRecord.mAppStopped : true;
            win.mDestroying = true;
            win.destroySurface(false, stopped);
        }
        AccessibilityController accessibilityController = this.mAccessibilityController;
        if (accessibilityController != null) {
            accessibilityController.onWindowTransitionLocked(win, transit);
        }
        SurfaceControl.openTransaction();
        winAnimator.detachChildren();
        SurfaceControl.closeTransaction();
        return focusMayChange;
    }

    private int createSurfaceControl(SurfaceControl outSurfaceControl, SurfaceControl outBLASTSurfaceControl, int result, WindowState win, WindowStateAnimator winAnimator) {
        if (!win.mHasSurface) {
            result |= 4;
        }
        try {
            Trace.traceBegin(32L, "createSurfaceControl");
            WindowSurfaceController surfaceController = winAnimator.createSurfaceLocked(win.mAttrs.type, win.mOwnerUid);
            Trace.traceEnd(32L);
            if (surfaceController != null) {
                surfaceController.getSurfaceControl(outSurfaceControl);
                surfaceController.getBLASTSurfaceControl(outBLASTSurfaceControl);
                if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
                    String protoLogParam0 = String.valueOf(outSurfaceControl);
                    ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, -1257821162, 0, null, protoLogParam0);
                }
            } else {
                if (ProtoLog$Cache.WM_ERROR_enabled) {
                    String protoLogParam1 = String.valueOf(win);
                    ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 704998117, 0, "Failed to create surface control for %s", protoLogParam1);
                }
                outSurfaceControl.release();
            }
            return result;
        } catch (Throwable th) {
            Trace.traceEnd(32L);
            throw th;
        }
    }

    public boolean outOfMemoryWindow(Session session, IWindow client) {
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    WindowState win = windowForClientLocked(session, client, false);
                    if (win != null) {
                        boolean zReclaimSomeSurfaceMemory = this.mRoot.reclaimSomeSurfaceMemory(win.mWinAnimator, "from-client", false);
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return zReclaimSomeSurfaceMemory;
                    }
                    resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(origId);
                    return false;
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    void finishDrawingWindow(Session session, IWindow client, SurfaceControl.Transaction postDrawTransaction) {
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    WindowState win = windowForClientLocked(session, client, false);
                    if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
                        String protoLogParam0 = String.valueOf(win);
                        String protoLogParam1 = String.valueOf(win != null ? win.mWinAnimator.drawStateToString() : "null");
                        ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, 1112047265, 0, null, protoLogParam0, protoLogParam1);
                    }
                    if (win != null && win.finishDrawing(postDrawTransaction)) {
                        if ((win.mAttrs.flags & 1048576) != 0) {
                            win.getDisplayContent().pendingLayoutChanges |= 4;
                        }
                        win.setDisplayLayoutNeeded();
                        this.mWindowPlacerLocked.requestTraversal();
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(origId);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    boolean checkCallingPermission(String permission, String func) {
        if (Binder.getCallingPid() == Process.myPid() || this.mContext.checkCallingPermission(permission) == 0) {
            return true;
        }
        if (ProtoLog$Cache.WM_ERROR_enabled) {
            String protoLogParam0 = String.valueOf(func);
            long protoLogParam1 = Binder.getCallingPid();
            long protoLogParam2 = Binder.getCallingUid();
            String protoLogParam3 = String.valueOf(permission);
            ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1563755163, 20, "Permission Denial: %s from pid=%d, uid=%d requires %s", protoLogParam0, Long.valueOf(protoLogParam1), Long.valueOf(protoLogParam2), protoLogParam3);
        }
        return false;
    }

    public void addWindowToken(IBinder binder, int type, int displayId) {
        addWindowTokenWithOptions(binder, type, displayId, null, null, false);
    }

    public int addWindowTokenWithOptions(IBinder binder, int type, int displayId, Bundle options, String packageName) {
        if (tokenCountExceed()) {
            return -12;
        }
        return addWindowTokenWithOptions(binder, type, displayId, options, packageName, true);
    }

    private boolean tokenCountExceed() {
        int limit;
        boolean z;
        final int callingUid = Binder.getCallingUid();
        if (callingUid == Process.myPid()) {
            return false;
        }
        if (checkCallingPermission("android.permission.STATUS_BAR_SERVICE", "addWindowTokenWithOptions")) {
            limit = 10;
        } else {
            limit = 5;
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                final int[] count = new int[1];
                this.mRoot.forAllDisplays(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$6x8Uyj4TrtZVB0uY4TvvGJXAMVI
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        WindowManagerService.lambda$tokenCountExceed$3(count, callingUid, (DisplayContent) obj);
                    }
                });
                z = count[0] >= limit;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return z;
    }

    static /* synthetic */ void lambda$tokenCountExceed$3(int[] count, int callingUid, DisplayContent d) {
        count[0] = count[0] + d.getWindowTokensWithoutSurfaceCount(callingUid);
    }

    private int addWindowTokenWithOptions(IBinder binder, int type, int displayId, Bundle options, String packageName, boolean fromClientToken) {
        int res;
        boolean callerCanManageAppTokens = checkCallingPermission("android.permission.MANAGE_APP_TOKENS", "addWindowToken()");
        if (!callerCanManageAppTokens && (res = this.mPolicy.checkAddPermission(type, false, packageName, new int[1])) != 0) {
            return res;
        }
        int callingUid = Binder.getCallingUid();
        long origId = Binder.clearCallingIdentity();
        try {
            try {
                synchronized (this.mGlobalLock) {
                    try {
                        boostPriorityForLockedSection();
                        if (!callerCanManageAppTokens && (packageName == null || !unprivilegedAppCanCreateTokenWith(null, callingUid, type, type, binder, packageName))) {
                            throw new SecurityException("Requires MANAGE_APP_TOKENS permission");
                        }
                        DisplayContent dc = getDisplayContentOrCreate(displayId, null);
                        if (dc == null) {
                            if (ProtoLog$Cache.WM_ERROR_enabled) {
                                String protoLogParam0 = String.valueOf(binder);
                                long protoLogParam1 = displayId;
                                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1208313423, 4, "addWindowToken: Attempted to add token: %s for non-exiting displayId=%d", protoLogParam0, Long.valueOf(protoLogParam1));
                            }
                            resetPriorityAfterLockedSection();
                            Binder.restoreCallingIdentity(origId);
                            return -9;
                        }
                        WindowToken token = dc.getWindowToken(binder);
                        if (token == null) {
                            if (type == 2013) {
                                new WallpaperWindowToken(this, binder, true, dc, callerCanManageAppTokens);
                            } else {
                                new WindowToken(this, binder, type, true, dc, callerCanManageAppTokens, callingUid, false, fromClientToken);
                            }
                            resetPriorityAfterLockedSection();
                            Binder.restoreCallingIdentity(origId);
                            return 0;
                        }
                        if (ProtoLog$Cache.WM_ERROR_enabled) {
                            String protoLogParam2 = String.valueOf(binder);
                            String protoLogParam3 = String.valueOf(token);
                            long protoLogParam4 = displayId;
                            ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 254883724, 16, "addWindowToken: Attempted to add binder token: %s for already created window token: %s displayId=%d", protoLogParam2, protoLogParam3, Long.valueOf(protoLogParam4));
                        }
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return -5;
                    } catch (Throwable th) {
                        th = th;
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            Binder.restoreCallingIdentity(origId);
            throw th3;
        }
    }

    public boolean isWindowToken(IBinder binder) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                WindowToken windowToken = this.mRoot.getWindowToken(binder);
                if (windowToken == null) {
                    return false;
                }
                return windowToken.asActivityRecord() == null;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void removeWindowToken(IBinder binder, int displayId) {
        WindowToken windowToken;
        boolean callerCanManageAppTokens = checkCallingPermission("android.permission.MANAGE_APP_TOKENS", "removeWindowToken()");
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                windowToken = this.mRoot.getWindowToken(binder);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        if (windowToken == null) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam0 = String.valueOf(binder);
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1518495446, 0, "removeWindowToken: Attempted to remove non-existing token: %s", protoLogParam0);
                return;
            }
            return;
        }
        int callingUid = Binder.getCallingUid();
        if (!callerCanManageAppTokens && (windowToken.getOwnerUid() == -1 || callingUid != windowToken.getOwnerUid())) {
            throw new SecurityException("removeWindowToken: Requires MANAGE_APP_TOKENS permission to remove token owned by another uid");
        }
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent dc = this.mRoot.getDisplayContent(displayId);
                    if (dc == null) {
                        if (ProtoLog$Cache.WM_ERROR_enabled) {
                            String protoLogParam1 = String.valueOf(binder);
                            long protoLogParam2 = displayId;
                            ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1739298851, 4, "removeWindowToken: Attempted to remove token: %s for non-exiting displayId=%d", protoLogParam1, Long.valueOf(protoLogParam2));
                        }
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return;
                    }
                    dc.removeWindowToken(binder);
                    dc.getInputMonitor().updateInputWindowsLw(true);
                    resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th2) {
                    resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            Binder.restoreCallingIdentity(origId);
            throw th3;
        }
    }

    void setNewDisplayOverrideConfiguration(Configuration overrideConfig, DisplayContent dc) {
        if (dc.mWaitingForConfig) {
            dc.mWaitingForConfig = false;
            this.mLastFinishedFreezeSource = "new-config";
        }
        this.mRoot.setDisplayOverrideConfigurationIfNeeded(overrideConfig, dc);
    }

    public void prepareAppTransition(int transit, boolean alwaysKeepCurrent) {
        if (!checkCallingPermission("android.permission.MANAGE_APP_TOKENS", "prepareAppTransition()")) {
            throw new SecurityException("Requires MANAGE_APP_TOKENS permission");
        }
        getDefaultDisplayContentLocked().prepareAppTransition(transit, alwaysKeepCurrent, 0, false);
    }

    public void overridePendingAppTransitionMultiThumbFuture(IAppTransitionAnimationSpecsFuture specsFuture, IRemoteCallback callback, boolean scaleUp, int displayId) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent == null) {
                    Slog.w(TAG, "Attempted to call overridePendingAppTransitionMultiThumbFuture for the display " + displayId + " that does not exist.");
                    return;
                }
                displayContent.mAppTransition.overridePendingAppTransitionMultiThumbFuture(specsFuture, callback, scaleUp);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void overridePendingAppTransitionRemote(RemoteAnimationAdapter remoteAnimationAdapter, int displayId) {
        if (!checkCallingPermission("android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS", "overridePendingAppTransitionRemote()")) {
            throw new SecurityException("Requires CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent == null) {
                    Slog.w(TAG, "Attempted to call overridePendingAppTransitionRemote for the display " + displayId + " that does not exist.");
                    return;
                }
                displayContent.mAppTransition.overridePendingAppTransitionRemote(remoteAnimationAdapter);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void endProlongedAnimations() {
    }

    public void executeAppTransition() {
        if (!checkCallingPermission("android.permission.MANAGE_APP_TOKENS", "executeAppTransition()")) {
            throw new SecurityException("Requires MANAGE_APP_TOKENS permission");
        }
        getDefaultDisplayContentLocked().executeAppTransition();
    }

    void initializeRecentsAnimation(int targetActivityType, IRecentsAnimationRunner recentsAnimationRunner, RecentsAnimationController.RecentsAnimationCallbacks callbacks, int displayId, SparseBooleanArray recentTaskIds, ActivityRecord targetActivity) {
        this.mRecentsAnimationController = new RecentsAnimationController(this, recentsAnimationRunner, callbacks, displayId);
        this.mRoot.getDisplayContent(displayId).mAppTransition.updateBooster();
        this.mRecentsAnimationController.initialize(targetActivityType, recentTaskIds, targetActivity);
    }

    void setRecentsAnimationController(RecentsAnimationController controller) {
        this.mRecentsAnimationController = controller;
    }

    RecentsAnimationController getRecentsAnimationController() {
        return this.mRecentsAnimationController;
    }

    void cancelRecentsAnimation(int reorderMode, String reason) {
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (recentsAnimationController != null) {
            recentsAnimationController.cancelAnimation(reorderMode, reason);
        }
    }

    void cleanupRecentsAnimation(int reorderMode) {
        if (this.mRecentsAnimationController != null) {
            RecentsAnimationController controller = this.mRecentsAnimationController;
            this.mRecentsAnimationController = null;
            controller.cleanupAnimation(reorderMode);
            getDefaultDisplayContentLocked().mAppTransition.updateBooster();
        }
    }

    void setWindowOpaqueLocked(IBinder token, boolean isOpaque) {
        ActivityRecord wtoken = this.mRoot.getActivityRecord(token);
        if (wtoken != null) {
            wtoken.setMainWindowOpaque(isOpaque);
        }
    }

    boolean isValidPictureInPictureAspectRatio(DisplayContent displayContent, float aspectRatio) {
        return displayContent.getPinnedStackController().isValidPictureInPictureAspectRatio(aspectRatio);
    }

    void getStackBounds(int windowingMode, int activityType, Rect bounds) {
        ActivityStack stack = this.mRoot.getStack(windowingMode, activityType);
        if (stack != null) {
            stack.getBounds(bounds);
        } else {
            bounds.setEmpty();
        }
    }

    public void notifyShowingDreamChanged() {
        notifyKeyguardFlagsChanged(null, 0);
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public WindowManagerPolicy.WindowState getInputMethodWindowLw() {
        return this.mRoot.getCurrentInputMethodWindow();
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public void notifyKeyguardTrustedChanged() {
        this.mAtmInternal.notifyKeyguardTrustedChanged();
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public void screenTurningOff(WindowManagerPolicy.ScreenOffListener listener) {
        this.mTaskSnapshotController.screenTurningOff(listener);
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public void triggerAnimationFailsafe() {
        this.mH.sendEmptyMessage(60);
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public void onKeyguardShowingAndNotOccludedChanged() {
        this.mH.sendEmptyMessage(61);
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public void onPowerKeyDown(boolean isScreenOn) {
        Consumer<DisplayPolicy> consumerObtainConsumer = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$99XNq73vh8e4HVH9BuxFhbLxKVY
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((DisplayPolicy) obj).onPowerKeyDown(((Boolean) obj2).booleanValue());
            }
        }, PooledLambda.__(), Boolean.valueOf(isScreenOn));
        this.mRoot.forAllDisplayPolicies(consumerObtainConsumer);
        consumerObtainConsumer.recycle();
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public void onUserSwitched() {
        this.mSettingsObserver.updateSystemUiSettings();
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mRoot.forAllDisplayPolicies(new Consumer() { // from class: com.android.server.wm.-$$Lambda$_jL5KNK44AQYPj1d8Hd3FYO0W-M
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((DisplayPolicy) obj).resetSystemUiVisibilityLw();
                    }
                });
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public void moveDisplayToTop(int displayId) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent != null && this.mRoot.getTopChild() != displayContent) {
                    displayContent.positionDisplayAt(Integer.MAX_VALUE, true);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        syncInputTransactions();
    }

    void notifyKeyguardFlagsChanged(Runnable callback, int displayId) {
        this.mAtmInternal.notifyKeyguardFlagsChanged(callback, displayId);
    }

    public void setKeyguardGoingAway(boolean keyguardGoingAway) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mKeyguardGoingAway = keyguardGoingAway;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setKeyguardOrAodShowingOnDefaultDisplay(boolean showing) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mKeyguardOrAodShowingOnDefaultDisplay = showing;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void startFreezingScreen(int exitAnim, int enterAnim) {
        if (!checkCallingPermission("android.permission.FREEZE_SCREEN", "startFreezingScreen()")) {
            throw new SecurityException("Requires FREEZE_SCREEN permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                if (!this.mClientFreezingScreen) {
                    this.mClientFreezingScreen = true;
                    long origId = Binder.clearCallingIdentity();
                    try {
                        startFreezingDisplay(exitAnim, enterAnim);
                        this.mH.removeMessages(30);
                        this.mH.sendEmptyMessageDelayed(30, 5000L);
                        Binder.restoreCallingIdentity(origId);
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(origId);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void stopFreezingScreen() {
        if (!checkCallingPermission("android.permission.FREEZE_SCREEN", "stopFreezingScreen()")) {
            throw new SecurityException("Requires FREEZE_SCREEN permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                if (this.mClientFreezingScreen) {
                    this.mClientFreezingScreen = false;
                    this.mLastFinishedFreezeSource = "client";
                    long origId = Binder.clearCallingIdentity();
                    try {
                        stopFreezingDisplayLocked();
                        Binder.restoreCallingIdentity(origId);
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(origId);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void disableKeyguard(IBinder token, String tag, int userId) {
        int userId2 = this.mAmInternal.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, false, 2, "disableKeyguard", (String) null);
        if (this.mContext.checkCallingOrSelfPermission("android.permission.DISABLE_KEYGUARD") != 0) {
            throw new SecurityException("Requires DISABLE_KEYGUARD permission");
        }
        int callingUid = Binder.getCallingUid();
        long origIdentity = Binder.clearCallingIdentity();
        try {
            this.mKeyguardDisableHandler.disableKeyguard(token, tag, callingUid, userId2);
        } finally {
            Binder.restoreCallingIdentity(origIdentity);
        }
    }

    public void reenableKeyguard(IBinder token, int userId) {
        int userId2 = this.mAmInternal.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, false, 2, "reenableKeyguard", (String) null);
        if (this.mContext.checkCallingOrSelfPermission("android.permission.DISABLE_KEYGUARD") != 0) {
            throw new SecurityException("Requires DISABLE_KEYGUARD permission");
        }
        Objects.requireNonNull(token, "token is null");
        int callingUid = Binder.getCallingUid();
        long origIdentity = Binder.clearCallingIdentity();
        try {
            this.mKeyguardDisableHandler.reenableKeyguard(token, callingUid, userId2);
        } finally {
            Binder.restoreCallingIdentity(origIdentity);
        }
    }

    public void exitKeyguardSecurely(final IOnKeyguardExitResult callback) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.DISABLE_KEYGUARD") != 0) {
            throw new SecurityException("Requires DISABLE_KEYGUARD permission");
        }
        if (callback == null) {
            throw new IllegalArgumentException("callback == null");
        }
        this.mPolicy.exitKeyguardSecurely(new WindowManagerPolicy.OnKeyguardExitResult() { // from class: com.android.server.wm.WindowManagerService.9
            @Override // com.android.server.policy.WindowManagerPolicy.OnKeyguardExitResult
            public void onKeyguardExitResult(boolean success) {
                try {
                    callback.onKeyguardExitResult(success);
                } catch (RemoteException e) {
                }
            }
        });
    }

    public boolean isKeyguardLocked() {
        return this.mPolicy.isKeyguardLocked();
    }

    public boolean isKeyguardShowingAndNotOccluded() {
        return this.mPolicy.isKeyguardShowingAndNotOccluded();
    }

    public boolean isKeyguardSecure(int userId) {
        if (userId != UserHandle.getCallingUserId() && !checkCallingPermission("android.permission.INTERACT_ACROSS_USERS", "isKeyguardSecure")) {
            throw new SecurityException("Requires INTERACT_ACROSS_USERS permission");
        }
        long origId = Binder.clearCallingIdentity();
        try {
            return this.mPolicy.isKeyguardSecure(userId);
        } finally {
            Binder.restoreCallingIdentity(origId);
        }
    }

    public void dismissKeyguard(IKeyguardDismissCallback callback, CharSequence message) {
        if (!checkCallingPermission("android.permission.CONTROL_KEYGUARD", "dismissKeyguard")) {
            throw new SecurityException("Requires CONTROL_KEYGUARD permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mPolicy.dismissKeyguardLw(callback, message);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setSwitchingUser(boolean switching) {
        if (!checkCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL", "setSwitchingUser()")) {
            throw new SecurityException("Requires INTERACT_ACROSS_USERS_FULL permission");
        }
        this.mPolicy.setSwitchingUser(switching);
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mSwitchingUser = switching;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void showGlobalActions() {
        if (!checkCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW", "showGlobalActions()")) {
            throw new SecurityException("Requires INTERNAL_SYSTEM_WINDOW permission");
        }
        this.mPolicy.showGlobalActions();
    }

    public void closeSystemDialogs(String reason) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mRoot.closeSystemDialogs(reason);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    static float fixScale(float scale) {
        if (scale < 0.0f) {
            scale = 0.0f;
        } else if (scale > 20.0f) {
            scale = 20.0f;
        }
        return Math.abs(scale);
    }

    public void setAnimationScale(int which, float scale) {
        if (!checkCallingPermission("android.permission.SET_ANIMATION_SCALE", "setAnimationScale()")) {
            throw new SecurityException("Requires SET_ANIMATION_SCALE permission");
        }
        float scale2 = fixScale(scale);
        if (which == 0) {
            this.mWindowAnimationScaleSetting = scale2;
        } else if (which == 1) {
            this.mTransitionAnimationScaleSetting = scale2;
        } else if (which == 2) {
            this.mAnimatorDurationScaleSetting = scale2;
        }
        this.mH.sendEmptyMessage(14);
    }

    public void setAnimationScales(float[] scales) {
        if (!checkCallingPermission("android.permission.SET_ANIMATION_SCALE", "setAnimationScale()")) {
            throw new SecurityException("Requires SET_ANIMATION_SCALE permission");
        }
        if (scales != null) {
            if (scales.length >= 1) {
                this.mWindowAnimationScaleSetting = fixScale(scales[0]);
            }
            if (scales.length >= 2) {
                this.mTransitionAnimationScaleSetting = fixScale(scales[1]);
            }
            if (scales.length >= 3) {
                this.mAnimatorDurationScaleSetting = fixScale(scales[2]);
                dispatchNewAnimatorScaleLocked(null);
            }
        }
        this.mH.sendEmptyMessage(14);
    }

    private void setAnimatorDurationScale(float scale) {
        this.mAnimatorDurationScaleSetting = scale;
        ValueAnimator.setDurationScale(scale);
    }

    public float getWindowAnimationScaleLocked() {
        if (this.mAnimationsDisabled) {
            return 0.0f;
        }
        return this.mWindowAnimationScaleSetting;
    }

    public float getTransitionAnimationScaleLocked() {
        if (this.mAnimationsDisabled) {
            return 0.0f;
        }
        return this.mTransitionAnimationScaleSetting;
    }

    public float getAnimationScale(int which) {
        if (which == 0) {
            return this.mWindowAnimationScaleSetting;
        }
        if (which == 1) {
            return this.mTransitionAnimationScaleSetting;
        }
        if (which == 2) {
            return this.mAnimatorDurationScaleSetting;
        }
        return 0.0f;
    }

    public float[] getAnimationScales() {
        return new float[]{this.mWindowAnimationScaleSetting, this.mTransitionAnimationScaleSetting, this.mAnimatorDurationScaleSetting};
    }

    public float getCurrentAnimatorScale() {
        float f;
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                f = this.mAnimationsDisabled ? 0.0f : this.mAnimatorDurationScaleSetting;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return f;
    }

    void dispatchNewAnimatorScaleLocked(Session session) {
        this.mH.obtainMessage(34, session).sendToTarget();
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public void registerPointerEventListener(WindowManagerPolicyConstants.PointerEventListener listener, int displayId) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent != null) {
                    displayContent.registerPointerEventListener(listener);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public void unregisterPointerEventListener(WindowManagerPolicyConstants.PointerEventListener listener, int displayId) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent != null) {
                    displayContent.unregisterPointerEventListener(listener);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public int getLidState() {
        int sw = this.mInputManager.getSwitchState(-1, -256, 0);
        if (sw > 0) {
            return 0;
        }
        return sw == 0 ? 1 : -1;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public void lockDeviceNow() {
        lockNow(null);
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public int getCameraLensCoverState() {
        int sw = this.mInputManager.getSwitchState(-1, -256, 9);
        if (sw > 0) {
            return 1;
        }
        return sw == 0 ? 0 : -1;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public void switchKeyboardLayout(int deviceId, int direction) {
        this.mInputManager.switchKeyboardLayout(deviceId, direction);
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public void shutdown(boolean confirm) {
        ShutdownThread.shutdown(ActivityThread.currentActivityThread().getSystemUiContext(), "userrequested", confirm);
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public void reboot(boolean confirm) {
        ShutdownThread.reboot(ActivityThread.currentActivityThread().getSystemUiContext(), "userrequested", confirm);
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public void rebootSafeMode(boolean confirm) {
        ShutdownThread.rebootSafeMode(ActivityThread.currentActivityThread().getSystemUiContext(), confirm);
    }

    public void setCurrentProfileIds(int[] currentProfileIds) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mCurrentProfileIds = currentProfileIds;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setCurrentUser(final int newUserId, int[] currentProfileIds) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mCurrentUserId = newUserId;
                this.mCurrentProfileIds = currentProfileIds;
                this.mPolicy.setCurrentUserLw(newUserId);
                this.mKeyguardDisableHandler.setCurrentUser(newUserId);
                this.mRoot.switchUser(newUserId);
                this.mWindowPlacerLocked.performSurfacePlacement();
                DisplayContent displayContent = getDefaultDisplayContentLocked();
                this.mRoot.forAllDisplays(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$LHo7a-Cv8Qgg4XQcqK8cfef6k40
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((DisplayContent) obj).mAppTransition.setCurrentUser(newUserId);
                    }
                });
                if (this.mDisplayReady) {
                    int forcedDensity = getForcedDisplayDensityForUserLocked(newUserId);
                    int targetDensity = forcedDensity != 0 ? forcedDensity : displayContent.mInitialDisplayDensity;
                    displayContent.setForcedDensity(targetDensity, -2);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    boolean isCurrentProfile(int userId) {
        if (userId == this.mCurrentUserId) {
            return true;
        }
        int i = 0;
        while (true) {
            int[] iArr = this.mCurrentProfileIds;
            if (i < iArr.length) {
                if (iArr[i] == userId) {
                    return true;
                }
                i++;
            } else {
                return false;
            }
        }
    }

    public void enableScreenAfterBoot() {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                if (ProtoLog$Cache.WM_DEBUG_BOOT_enabled) {
                    boolean protoLogParam0 = this.mDisplayEnabled;
                    boolean protoLogParam1 = this.mForceDisplayEnabled;
                    boolean protoLogParam2 = this.mShowingBootMessages;
                    boolean protoLogParam3 = this.mSystemBooted;
                    String protoLogParam4 = String.valueOf(new RuntimeException("here").fillInStackTrace());
                    ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_BOOT, -1884933373, 255, null, Boolean.valueOf(protoLogParam0), Boolean.valueOf(protoLogParam1), Boolean.valueOf(protoLogParam2), Boolean.valueOf(protoLogParam3), protoLogParam4);
                }
                boolean protoLogParam5 = this.mSystemBooted;
                if (protoLogParam5) {
                    resetPriorityAfterLockedSection();
                    return;
                }
                this.mSystemBooted = true;
                hideBootMessagesLocked();
                this.mH.sendEmptyMessageDelayed(23, 30000L);
                resetPriorityAfterLockedSection();
                this.mPolicy.systemBooted();
                performEnableScreen();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void enableScreenIfNeeded() {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                enableScreenIfNeededLocked();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void enableScreenIfNeededLocked() {
        if (ProtoLog$Cache.WM_DEBUG_BOOT_enabled) {
            boolean protoLogParam0 = this.mDisplayEnabled;
            boolean protoLogParam1 = this.mForceDisplayEnabled;
            boolean protoLogParam2 = this.mShowingBootMessages;
            boolean protoLogParam3 = this.mSystemBooted;
            String protoLogParam4 = String.valueOf(new RuntimeException("here").fillInStackTrace());
            ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_BOOT, -549028919, 255, null, Boolean.valueOf(protoLogParam0), Boolean.valueOf(protoLogParam1), Boolean.valueOf(protoLogParam2), Boolean.valueOf(protoLogParam3), protoLogParam4);
        }
        boolean protoLogParam5 = this.mDisplayEnabled;
        if (protoLogParam5) {
            return;
        }
        if (!this.mSystemBooted && !this.mShowingBootMessages) {
            return;
        }
        this.mH.sendEmptyMessage(16);
    }

    public void performBootTimeout() {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                if (this.mDisplayEnabled) {
                    resetPriorityAfterLockedSection();
                    return;
                }
                if (ProtoLog$Cache.WM_ERROR_enabled) {
                    ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1001904964, 0, "***** BOOT TIMEOUT: forcing display enabled", (Object[]) null);
                }
                this.mForceDisplayEnabled = true;
                resetPriorityAfterLockedSection();
                performEnableScreen();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void onSystemUiStarted() {
        this.mPolicy.onSystemUiStarted();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performEnableScreen() {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                if (ProtoLog$Cache.WM_DEBUG_BOOT_enabled) {
                    boolean protoLogParam0 = this.mDisplayEnabled;
                    boolean protoLogParam1 = this.mForceDisplayEnabled;
                    boolean protoLogParam2 = this.mShowingBootMessages;
                    boolean protoLogParam3 = this.mSystemBooted;
                    boolean protoLogParam4 = this.mOnlyCore;
                    String protoLogParam5 = String.valueOf(new RuntimeException("here").fillInStackTrace());
                    ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_BOOT, -618015844, 1023, null, Boolean.valueOf(protoLogParam0), Boolean.valueOf(protoLogParam1), Boolean.valueOf(protoLogParam2), Boolean.valueOf(protoLogParam3), Boolean.valueOf(protoLogParam4), protoLogParam5);
                }
                boolean protoLogParam6 = this.mDisplayEnabled;
                if (protoLogParam6) {
                    resetPriorityAfterLockedSection();
                    return;
                }
                if (!this.mSystemBooted && !this.mShowingBootMessages) {
                    resetPriorityAfterLockedSection();
                    return;
                }
                if (!this.mShowingBootMessages && !this.mPolicy.canDismissBootAnimation()) {
                    resetPriorityAfterLockedSection();
                    return;
                }
                if (!this.mForceDisplayEnabled) {
                    for (int i = this.mRoot.getChildCount() - 1; i >= 0; i--) {
                        if (((DisplayContent) this.mRoot.getChildAt(i)).shouldWaitForSystemDecorWindowsOnBoot()) {
                            resetPriorityAfterLockedSection();
                            return;
                        }
                    }
                }
                if (!this.mBootAnimationStopped) {
                    Trace.asyncTraceBegin(32L, "Stop bootanim", 0);
                    SystemProperties.set("service.bootanim.exit", SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
                    this.mBootAnimationStopped = true;
                }
                if (!this.mForceDisplayEnabled && !checkBootAnimationCompleteLocked()) {
                    if (ProtoLog$Cache.WM_DEBUG_BOOT_enabled) {
                        ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_BOOT, 374972436, 0, null, (Object[]) null);
                    }
                    resetPriorityAfterLockedSection();
                    return;
                }
                try {
                    IBinder surfaceFlinger = ServiceManager.getService("SurfaceFlinger");
                    if (surfaceFlinger != null) {
                        if (ProtoLog$Cache.WM_ERROR_enabled) {
                            ProtoLogImpl.i(ProtoLogGroup.WM_ERROR, 620368427, 0, "******* TELLING SURFACE FLINGER WE ARE BOOTED!", (Object[]) null);
                        }
                        Parcel data = Parcel.obtain();
                        data.writeInterfaceToken("android.ui.ISurfaceComposer");
                        surfaceFlinger.transact(1, data, null, 0);
                        data.recycle();
                    }
                } catch (RemoteException e) {
                    if (ProtoLog$Cache.WM_ERROR_enabled) {
                        ProtoLogImpl.e(ProtoLogGroup.WM_ERROR, -87703044, 0, "Boot completed: SurfaceFlinger is dead!", (Object[]) null);
                    }
                }
                EventLogTags.writeWmBootAnimationDone(SystemClock.uptimeMillis());
                Trace.asyncTraceEnd(32L, "Stop bootanim", 0);
                this.mDisplayEnabled = true;
                if (ProtoLog$Cache.WM_DEBUG_SCREEN_ON_enabled) {
                    ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_SCREEN_ON, -116086365, 0, null, (Object[]) null);
                }
                this.mInputManagerCallback.setEventDispatchingLw(this.mEventDispatchingEnabled);
                resetPriorityAfterLockedSection();
                try {
                    this.mActivityManager.bootAnimationComplete();
                } catch (RemoteException e2) {
                }
                this.mPolicy.enableScreenAfterBoot();
                updateRotationUnchecked(false, false);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkBootAnimationCompleteLocked() {
        if (SystemService.isRunning(BOOT_ANIMATION_SERVICE)) {
            this.mH.removeMessages(37);
            this.mH.sendEmptyMessageDelayed(37, 50L);
            if (ProtoLog$Cache.WM_DEBUG_BOOT_enabled) {
                ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_BOOT, 600140673, 0, null, (Object[]) null);
            }
            return false;
        }
        if (ProtoLog$Cache.WM_DEBUG_BOOT_enabled) {
            ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_BOOT, 1224307091, 0, null, (Object[]) null);
            return true;
        }
        return true;
    }

    public void showBootMessage(CharSequence msg, boolean always) throws Throwable {
        boolean first = false;
        synchronized (this.mGlobalLock) {
            try {
                try {
                    boostPriorityForLockedSection();
                    if (ProtoLog$Cache.WM_DEBUG_BOOT_enabled) {
                        String protoLogParam0 = String.valueOf(msg);
                        boolean protoLogParam2 = this.mAllowBootMessages;
                        boolean protoLogParam3 = this.mShowingBootMessages;
                        boolean protoLogParam4 = this.mSystemBooted;
                        String protoLogParam5 = String.valueOf(new RuntimeException("here").fillInStackTrace());
                        ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_BOOT, -874446906, 1020, null, protoLogParam0, Boolean.valueOf(always), Boolean.valueOf(protoLogParam2), Boolean.valueOf(protoLogParam3), Boolean.valueOf(protoLogParam4), protoLogParam5);
                    }
                    if (!this.mAllowBootMessages) {
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    if (!this.mShowingBootMessages) {
                        if (!always) {
                            resetPriorityAfterLockedSection();
                            return;
                        }
                        first = true;
                    }
                    if (this.mSystemBooted) {
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    this.mShowingBootMessages = true;
                    this.mPolicy.showBootMessage(msg, always);
                    resetPriorityAfterLockedSection();
                    if (first) {
                        performEnableScreen();
                    }
                } catch (Throwable th) {
                    th = th;
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public void hideBootMessagesLocked() {
        if (ProtoLog$Cache.WM_DEBUG_BOOT_enabled) {
            boolean protoLogParam0 = this.mDisplayEnabled;
            boolean protoLogParam1 = this.mForceDisplayEnabled;
            boolean protoLogParam2 = this.mShowingBootMessages;
            boolean protoLogParam3 = this.mSystemBooted;
            String protoLogParam4 = String.valueOf(new RuntimeException("here").fillInStackTrace());
            ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_BOOT, -1350198040, 255, null, Boolean.valueOf(protoLogParam0), Boolean.valueOf(protoLogParam1), Boolean.valueOf(protoLogParam2), Boolean.valueOf(protoLogParam3), protoLogParam4);
        }
        boolean protoLogParam5 = this.mShowingBootMessages;
        if (protoLogParam5) {
            this.mShowingBootMessages = false;
            this.mPolicy.hideBootMessages();
        }
    }

    public void setInTouchMode(boolean mode) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mInTouchMode = mode;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        this.mInputManager.setInTouchMode(mode);
    }

    boolean getInTouchMode() {
        boolean z;
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                z = this.mInTouchMode;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return z;
    }

    public void showEmulatorDisplayOverlayIfNeeded() {
        if (this.mContext.getResources().getBoolean(R.bool.config_checkWallpaperAtBoot) && SystemProperties.getBoolean(PROPERTY_EMULATOR_CIRCULAR, false) && Build.IS_EMULATOR) {
            H h = this.mH;
            h.sendMessage(h.obtainMessage(36));
        }
    }

    public void showEmulatorDisplayOverlay() {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                if (this.mEmulatorDisplayOverlay == null) {
                    this.mEmulatorDisplayOverlay = new EmulatorDisplayOverlay(this.mSurfaceFactory, this.mContext, getDefaultDisplayContentLocked(), (this.mPolicy.getWindowLayerFromTypeLw(2018) * 10000) + 10, this.mTransaction);
                }
                this.mEmulatorDisplayOverlay.setVisibility(true, this.mTransaction);
                this.mTransaction.apply();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void showStrictModeViolation(boolean on) {
        int pid = Binder.getCallingPid();
        if (on) {
            H h = this.mH;
            h.sendMessage(h.obtainMessage(25, 1, pid));
            H h2 = this.mH;
            h2.sendMessageDelayed(h2.obtainMessage(25, 0, pid), 1000L);
            return;
        }
        H h3 = this.mH;
        h3.sendMessage(h3.obtainMessage(25, 0, pid));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showStrictModeViolation(int arg, int pid) {
        boolean on = arg != 0;
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                if (!on || this.mRoot.canShowStrictModeViolation(pid)) {
                    if (this.mStrictModeFlash == null) {
                        this.mStrictModeFlash = new StrictModeFlash(this.mSurfaceFactory, getDefaultDisplayContentLocked(), this.mTransaction);
                    }
                    this.mStrictModeFlash.setVisibility(on, this.mTransaction);
                    this.mTransaction.apply();
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setStrictModeVisualIndicatorPreference(String value) {
        SystemProperties.set("persist.sys.strictmode.visual", value);
    }

    public Bitmap screenshotWallpaper() {
        Bitmap bitmapScreenshotWallpaperLocked;
        if (!checkCallingPermission("android.permission.READ_FRAME_BUFFER", "screenshotWallpaper()")) {
            throw new SecurityException("Requires READ_FRAME_BUFFER permission");
        }
        try {
            Trace.traceBegin(32L, "screenshotWallpaper");
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent dc = this.mRoot.getDisplayContent(0);
                    bitmapScreenshotWallpaperLocked = dc.mWallpaperController.screenshotWallpaperLocked();
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Trace.traceEnd(32L);
            return bitmapScreenshotWallpaperLocked;
        } catch (Throwable th2) {
            Trace.traceEnd(32L);
            throw th2;
        }
    }

    public boolean requestAssistScreenshot(final IAssistDataReceiver receiver) {
        final Bitmap bm;
        if (!checkCallingPermission("android.permission.READ_FRAME_BUFFER", "requestAssistScreenshot()")) {
            throw new SecurityException("Requires READ_FRAME_BUFFER permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(0);
                if (displayContent == null) {
                    bm = null;
                } else {
                    bm = displayContent.screenshotDisplayLocked(Bitmap.Config.ARGB_8888);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        FgThread.getHandler().post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$AyvvyR8ggC3qvy2bdmxHHqR2dy4
            @Override // java.lang.Runnable
            public final void run() {
                receiver.onHandleAssistScreenshot(bm);
            }
        });
        return true;
    }

    public ActivityManager.TaskSnapshot getTaskSnapshot(int taskId, int userId, boolean isLowResolution, boolean restoreFromDisk) {
        return this.mTaskSnapshotController.getSnapshot(taskId, userId, restoreFromDisk, isLowResolution);
    }

    public void removeObsoleteTaskFiles(ArraySet<Integer> persistentTaskIds, int[] runningUserIds) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mTaskSnapshotController.removeObsoleteTaskFiles(persistentTaskIds, runningUserIds);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setFixedToUserRotation(int displayId, int fixedToUserRotation) {
        if (!checkCallingPermission("android.permission.SET_ORIENTATION", "freezeRotation()")) {
            throw new SecurityException("Requires SET_ORIENTATION permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent display = this.mRoot.getDisplayContent(displayId);
                if (display == null) {
                    Slog.w(TAG, "Trying to set rotate for app for a missing display.");
                } else {
                    display.getDisplayRotation().setFixedToUserRotation(fixedToUserRotation);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void freezeRotation(int rotation) {
        freezeDisplayRotation(0, rotation);
    }

    public void freezeDisplayRotation(int displayId, int rotation) {
        if (!checkCallingPermission("android.permission.SET_ORIENTATION", "freezeRotation()")) {
            throw new SecurityException("Requires SET_ORIENTATION permission");
        }
        if (rotation < -1 || rotation > 3) {
            throw new IllegalArgumentException("Rotation argument must be -1 or a valid rotation constant.");
        }
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent display = this.mRoot.getDisplayContent(displayId);
                    if (display == null) {
                        Slog.w(TAG, "Trying to freeze rotation for a missing display.");
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                    } else {
                        display.getDisplayRotation().freezeRotation(rotation);
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        updateRotationUnchecked(false, false);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public void thawRotation() {
        thawDisplayRotation(0);
    }

    public void thawDisplayRotation(int displayId) {
        if (!checkCallingPermission("android.permission.SET_ORIENTATION", "thawRotation()")) {
            throw new SecurityException("Requires SET_ORIENTATION permission");
        }
        if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            long protoLogParam0 = getDefaultDisplayRotation();
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -1076978367, 1, null, Long.valueOf(protoLogParam0));
        }
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent display = this.mRoot.getDisplayContent(displayId);
                    if (display == null) {
                        Slog.w(TAG, "Trying to thaw rotation for a missing display.");
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                    } else {
                        display.getDisplayRotation().thawRotation();
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        updateRotationUnchecked(false, false);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public boolean isRotationFrozen() {
        return isDisplayRotationFrozen(0);
    }

    public boolean isDisplayRotationFrozen(int displayId) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent display = this.mRoot.getDisplayContent(displayId);
                if (display == null) {
                    Slog.w(TAG, "Trying to thaw rotation for a missing display.");
                    return false;
                }
                return display.getDisplayRotation().isRotationFrozen();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void updateRotation(boolean alwaysSendConfiguration, boolean forceRelayout) {
        updateRotationUnchecked(alwaysSendConfiguration, forceRelayout);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void updateRotationUnchecked(boolean alwaysSendConfiguration, boolean forceRelayout) {
        if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -198463978, 15, null, Boolean.valueOf(alwaysSendConfiguration), Boolean.valueOf(forceRelayout));
        }
        Trace.traceBegin(32L, "updateRotation");
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    boolean layoutNeeded = false;
                    int displayCount = this.mRoot.mChildren.size();
                    for (int i = 0; i < displayCount; i++) {
                        DisplayContent displayContent = (DisplayContent) this.mRoot.mChildren.get(i);
                        Trace.traceBegin(32L, "updateRotation: display");
                        boolean rotationChanged = displayContent.updateRotationUnchecked();
                        Trace.traceEnd(32L);
                        if (rotationChanged) {
                            this.mAtmService.getTaskChangeNotificationController().notifyOnActivityRotation(displayContent.mDisplayId);
                        }
                        if (!rotationChanged || forceRelayout) {
                            displayContent.setLayoutNeeded();
                            layoutNeeded = true;
                        }
                        if (rotationChanged || alwaysSendConfiguration) {
                            displayContent.sendNewConfiguration();
                        }
                    }
                    if (layoutNeeded) {
                        Trace.traceBegin(32L, "updateRotation: performSurfacePlacement");
                        this.mWindowPlacerLocked.performSurfacePlacement();
                        Trace.traceEnd(32L);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(origId);
            Trace.traceEnd(32L);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            Trace.traceEnd(32L);
            throw th2;
        }
    }

    public int getDefaultDisplayRotation() {
        int rotation;
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                rotation = getDefaultDisplayContentLocked().getRotation();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return rotation;
    }

    public void setDisplayWindowRotationController(IDisplayWindowRotationController controller) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MANAGE_ACTIVITY_STACKS") != 0) {
            throw new SecurityException("Must hold permission android.permission.MANAGE_ACTIVITY_STACKS");
        }
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    if (this.mDisplayRotationController != null) {
                        this.mDisplayRotationController.asBinder().unlinkToDeath(this.mDisplayRotationControllerDeath, 0);
                        this.mDisplayRotationController = null;
                    }
                    controller.asBinder().linkToDeath(this.mDisplayRotationControllerDeath, 0);
                    this.mDisplayRotationController = controller;
                } finally {
                    resetPriorityAfterLockedSection();
                }
            }
        } catch (RemoteException e) {
            throw new RuntimeException("Unable to set rotation controller");
        }
    }

    public SurfaceControl addShellRoot(int displayId, IWindow client, int windowType) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MANAGE_APP_TOKENS") != 0) {
            throw new SecurityException("Must hold permission android.permission.MANAGE_APP_TOKENS");
        }
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent dc = this.mRoot.getDisplayContent(displayId);
                    if (dc != null) {
                        SurfaceControl surfaceControlAddShellRoot = dc.addShellRoot(client, windowType);
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return surfaceControlAddShellRoot;
                    }
                    resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(origId);
                    return null;
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public void setShellRootAccessibilityWindow(int displayId, int windowType, IWindow target) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MANAGE_APP_TOKENS") != 0) {
            throw new SecurityException("Must hold permission android.permission.MANAGE_APP_TOKENS");
        }
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent dc = this.mRoot.getDisplayContent(displayId);
                    if (dc == null) {
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return;
                    }
                    ShellRoot root = dc.mShellRoots.get(windowType);
                    if (root == null) {
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                    } else {
                        root.setAccessibilityWindow(target);
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public void setDisplayWindowInsetsController(int displayId, IDisplayWindowInsetsController insetsController) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MANAGE_APP_TOKENS") != 0) {
            throw new SecurityException("Must hold permission android.permission.MANAGE_APP_TOKENS");
        }
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent dc = this.mRoot.getDisplayContent(displayId);
                    if (dc != null) {
                        dc.setRemoteInsetsController(insetsController);
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                    } else {
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public void modifyDisplayWindowInsets(int displayId, InsetsState state) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MANAGE_APP_TOKENS") != 0) {
            throw new SecurityException("Must hold permission android.permission.MANAGE_APP_TOKENS");
        }
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent dc = this.mRoot.getDisplayContent(displayId);
                    if (dc != null && dc.mRemoteInsetsControlTarget != null) {
                        dc.getInsetsStateController().onInsetsModified(dc.mRemoteInsetsControlTarget, state);
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return;
                    }
                    resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public int watchRotation(IRotationWatcher watcher, int displayId) {
        DisplayContent displayContent;
        int rotation;
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                displayContent = this.mRoot.getDisplayContent(displayId);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        if (displayContent == null) {
            throw new IllegalArgumentException("Trying to register rotation event for invalid display: " + displayId);
        }
        final IBinder watcherBinder = watcher.asBinder();
        IBinder.DeathRecipient dr = new IBinder.DeathRecipient() { // from class: com.android.server.wm.WindowManagerService.10
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                synchronized (WindowManagerService.this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        int i = 0;
                        while (i < WindowManagerService.this.mRotationWatchers.size()) {
                            if (watcherBinder == WindowManagerService.this.mRotationWatchers.get(i).mWatcher.asBinder()) {
                                RotationWatcher removed = WindowManagerService.this.mRotationWatchers.remove(i);
                                IBinder binder = removed.mWatcher.asBinder();
                                if (binder != null) {
                                    binder.unlinkToDeath(this, 0);
                                }
                                i--;
                            }
                            i++;
                        }
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
            }
        };
        synchronized (this.mGlobalLock) {
            try {
                try {
                    boostPriorityForLockedSection();
                    watcher.asBinder().linkToDeath(dr, 0);
                    this.mRotationWatchers.add(new RotationWatcher(watcher, dr, displayId));
                } finally {
                    resetPriorityAfterLockedSection();
                }
            } catch (RemoteException e) {
            }
            rotation = displayContent.getRotation();
        }
        return rotation;
    }

    public void removeRotationWatcher(IRotationWatcher watcher) {
        IBinder watcherBinder = watcher.asBinder();
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                int i = 0;
                while (i < this.mRotationWatchers.size()) {
                    RotationWatcher rotationWatcher = this.mRotationWatchers.get(i);
                    if (watcherBinder == rotationWatcher.mWatcher.asBinder()) {
                        RotationWatcher removed = this.mRotationWatchers.remove(i);
                        IBinder binder = removed.mWatcher.asBinder();
                        if (binder != null) {
                            binder.unlinkToDeath(removed.mDeathRecipient, 0);
                        }
                        i--;
                    }
                    i++;
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean registerWallpaperVisibilityListener(IWallpaperVisibilityListener listener, int displayId) {
        boolean zIsWallpaperVisible;
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent == null) {
                    throw new IllegalArgumentException("Trying to register visibility event for invalid display: " + displayId);
                }
                this.mWallpaperVisibilityListeners.registerWallpaperVisibilityListener(listener, displayId);
                zIsWallpaperVisible = displayContent.mWallpaperController.isWallpaperVisible();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return zIsWallpaperVisible;
    }

    public void unregisterWallpaperVisibilityListener(IWallpaperVisibilityListener listener, int displayId) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mWallpaperVisibilityListeners.unregisterWallpaperVisibilityListener(listener, displayId);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void registerSystemGestureExclusionListener(ISystemGestureExclusionListener listener, int displayId) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent == null) {
                    throw new IllegalArgumentException("Trying to register visibility event for invalid display: " + displayId);
                }
                displayContent.registerSystemGestureExclusionListener(listener);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void unregisterSystemGestureExclusionListener(ISystemGestureExclusionListener listener, int displayId) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent == null) {
                    throw new IllegalArgumentException("Trying to register visibility event for invalid display: " + displayId);
                }
                displayContent.unregisterSystemGestureExclusionListener(listener);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    void reportSystemGestureExclusionChanged(Session session, IWindow window, List<Rect> exclusionRects) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                WindowState win = windowForClientLocked(session, window, true);
                if (win.setSystemGestureExclusion(exclusionRects)) {
                    win.getDisplayContent().updateSystemGestureExclusion();
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void registerDisplayFoldListener(IDisplayFoldListener listener) {
        this.mPolicy.registerDisplayFoldListener(listener);
    }

    public void unregisterDisplayFoldListener(IDisplayFoldListener listener) {
        this.mPolicy.unregisterDisplayFoldListener(listener);
    }

    void setOverrideFoldedArea(Rect area) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_SECURE_SETTINGS") != 0) {
            throw new SecurityException("Must hold permission android.permission.WRITE_SECURE_SETTINGS");
        }
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    this.mPolicy.setOverrideFoldedArea(area);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(origId);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    Rect getFoldedArea() {
        Rect foldedArea;
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    foldedArea = this.mPolicy.getFoldedArea();
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(origId);
            return foldedArea;
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public void registerDisplayWindowListener(IDisplayWindowListener listener) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MANAGE_ACTIVITY_STACKS") != 0) {
            throw new SecurityException("Must hold permission android.permission.MANAGE_ACTIVITY_STACKS");
        }
        long ident = Binder.clearCallingIdentity();
        try {
            this.mDisplayNotificationController.registerListener(listener);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    public void unregisterDisplayWindowListener(IDisplayWindowListener listener) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MANAGE_ACTIVITY_STACKS") != 0) {
            throw new SecurityException("Must hold permission android.permission.MANAGE_ACTIVITY_STACKS");
        }
        this.mDisplayNotificationController.unregisterListener(listener);
    }

    public int getPreferredOptionsPanelGravity(int displayId) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent == null) {
                    return 81;
                }
                return displayContent.getPreferredOptionsPanelGravity();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean startViewServer(int port) {
        if (isSystemSecure() || !checkCallingPermission("android.permission.DUMP", "startViewServer") || port < 1024) {
            return false;
        }
        ViewServer viewServer = this.mViewServer;
        if (viewServer != null) {
            if (!viewServer.isRunning()) {
                try {
                    return this.mViewServer.start();
                } catch (IOException e) {
                    if (ProtoLog$Cache.WM_ERROR_enabled) {
                        ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -1545962566, 0, "View server did not start", (Object[]) null);
                    }
                }
            }
            return false;
        }
        try {
            ViewServer viewServer2 = new ViewServer(this, port);
            this.mViewServer = viewServer2;
            return viewServer2.start();
        } catch (IOException e2) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -1545962566, 0, "View server did not start", (Object[]) null);
            }
            return false;
        }
    }

    private boolean isSystemSecure() {
        return SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION.equals(SystemProperties.get(SYSTEM_SECURE, SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION)) && "0".equals(SystemProperties.get(SYSTEM_DEBUGGABLE, "0"));
    }

    public boolean stopViewServer() {
        ViewServer viewServer;
        if (isSystemSecure() || !checkCallingPermission("android.permission.DUMP", "stopViewServer") || (viewServer = this.mViewServer) == null) {
            return false;
        }
        return viewServer.stop();
    }

    public boolean isViewServerRunning() {
        ViewServer viewServer;
        return !isSystemSecure() && checkCallingPermission("android.permission.DUMP", "isViewServerRunning") && (viewServer = this.mViewServer) != null && viewServer.isRunning();
    }

    boolean viewServerListWindows(Socket client) {
        if (isSystemSecure()) {
            return false;
        }
        final ArrayList<WindowState> windows = new ArrayList<>();
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mRoot.forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$6VFVB3AkdywmGR794bmLNE4Pl4Q
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        windows.add((WindowState) obj);
                    }
                }, false);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        BufferedWriter out = null;
        try {
            try {
                OutputStream clientStream = client.getOutputStream();
                out = new BufferedWriter(new OutputStreamWriter(clientStream), 8192);
                int count = windows.size();
                for (int i = 0; i < count; i++) {
                    WindowState w = windows.get(i);
                    out.write(Integer.toHexString(System.identityHashCode(w)));
                    out.write(32);
                    out.append(w.mAttrs.getTitle());
                    out.write(10);
                }
                out.write("DONE.\n");
                out.flush();
                out.close();
                return true;
            } catch (Exception e) {
                if (out == null) {
                    return false;
                }
                out.close();
                return false;
            } catch (Throwable th2) {
                if (out != null) {
                    try {
                        out.close();
                    } catch (IOException e2) {
                    }
                }
                throw th2;
            }
        } catch (IOException e3) {
            return false;
        }
    }

    boolean viewServerGetFocusedWindow(Socket client) {
        if (isSystemSecure()) {
            return false;
        }
        WindowState focusedWindow = getFocusedWindow();
        BufferedWriter out = null;
        try {
            try {
                OutputStream clientStream = client.getOutputStream();
                out = new BufferedWriter(new OutputStreamWriter(clientStream), 8192);
                if (focusedWindow != null) {
                    out.write(Integer.toHexString(System.identityHashCode(focusedWindow)));
                    out.write(32);
                    out.append(focusedWindow.mAttrs.getTitle());
                }
                out.write(10);
                out.flush();
                out.close();
                return true;
            } catch (IOException e) {
                return false;
            }
        } catch (Exception e2) {
            if (out == null) {
                return false;
            }
            out.close();
            return false;
        } catch (Throwable th) {
            if (out != null) {
                try {
                    out.close();
                } catch (IOException e3) {
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00cf A[Catch: all -> 0x0104, TRY_LEAVE, TryCatch #0 {all -> 0x0104, blocks: (B:30:0x0064, B:32:0x008b, B:52:0x00cb, B:54:0x00cf), top: B:75:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:59:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ff A[Catch: IOException -> 0x00b2, TRY_ENTER, TRY_LEAVE, TryCatch #5 {IOException -> 0x00b2, blocks: (B:38:0x00ae, B:61:0x00ff), top: B:81:0x0011 }] */
    boolean viewServerWindowCommand(Socket client, String command, String parameters) throws Throwable {
        Throwable th;
        String parameters2 = parameters;
        if (isSystemSecure()) {
            return false;
        }
        boolean success = true;
        Parcel data = null;
        Parcel reply = null;
        BufferedWriter out = null;
        try {
            try {
                try {
                    int index = parameters2.indexOf(32);
                    int index2 = index == -1 ? parameters.length() : index;
                    String code = parameters2.substring(0, index2);
                    int hashCode = (int) Long.parseLong(code, 16);
                    if (index2 < parameters.length()) {
                        parameters2 = parameters2.substring(index2 + 1);
                    } else {
                        parameters2 = "";
                    }
                    try {
                        WindowState window = findWindow(hashCode);
                        if (window == null) {
                            if (0 != 0) {
                                data.recycle();
                            }
                            if (0 != 0) {
                                reply.recycle();
                            }
                            if (0 != 0) {
                                try {
                                    out.close();
                                } catch (IOException e) {
                                }
                            }
                            return false;
                        }
                        data = Parcel.obtain();
                        data.writeInterfaceToken("android.view.IWindow");
                        try {
                            data.writeString(command);
                            data.writeString(parameters2);
                            data.writeInt(1);
                            ParcelFileDescriptor.fromSocket(client).writeToParcel(data, 0);
                            reply = Parcel.obtain();
                            IBinder binder = window.mClient.asBinder();
                            binder.transact(1, data, reply, 0);
                            reply.readException();
                            if (!client.isOutputShutdown()) {
                                out = new BufferedWriter(new OutputStreamWriter(client.getOutputStream()));
                                out.write("DONE\n");
                                out.flush();
                            }
                            if (data != null) {
                                data.recycle();
                            }
                            if (reply != null) {
                                reply.recycle();
                            }
                            if (out != null) {
                                out.close();
                            }
                        } catch (Exception e2) {
                            e = e2;
                            if (ProtoLog$Cache.WM_ERROR_enabled) {
                                String protoLogParam0 = String.valueOf(command);
                                String protoLogParam1 = String.valueOf(parameters2);
                                String protoLogParam2 = String.valueOf(e);
                                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 2086878461, 0, "Could not send command %s with parameters %s. %s", protoLogParam0, protoLogParam1, protoLogParam2);
                            }
                            success = false;
                            if (data != null) {
                                data.recycle();
                            }
                            if (reply != null) {
                                reply.recycle();
                            }
                            if (out != null) {
                                out.close();
                            }
                            return success;
                        }
                        return success;
                    } catch (Exception e3) {
                        e = e3;
                    } catch (Throwable th2) {
                        th = th2;
                        if (data != null) {
                            data.recycle();
                        }
                        if (0 != 0) {
                            reply.recycle();
                        }
                        if (0 == 0) {
                            throw th;
                        }
                        try {
                            out.close();
                            throw th;
                        } catch (IOException e4) {
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Exception e5) {
                e = e5;
            } catch (Throwable th4) {
                th = th4;
            }
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam3 = String.valueOf(command);
                String protoLogParam4 = String.valueOf(parameters2);
                String protoLogParam5 = String.valueOf(e);
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 2086878461, 0, "Could not send command %s with parameters %s. %s", protoLogParam3, protoLogParam4, protoLogParam5);
            }
            success = false;
            if (data != null) {
                data.recycle();
            }
            if (reply != null) {
                reply.recycle();
            }
            if (out != null) {
                out.close();
            }
        } catch (IOException e6) {
        }
        return success;
    }

    public void addWindowChangeListener(WindowChangeListener listener) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mWindowChangeListeners.add(listener);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void removeWindowChangeListener(WindowChangeListener listener) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mWindowChangeListeners.remove(listener);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyWindowsChanged() {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                if (this.mWindowChangeListeners.isEmpty()) {
                    resetPriorityAfterLockedSection();
                    return;
                }
                WindowChangeListener[] windowChangeListeners = (WindowChangeListener[]) this.mWindowChangeListeners.toArray(new WindowChangeListener[this.mWindowChangeListeners.size()]);
                resetPriorityAfterLockedSection();
                for (WindowChangeListener windowChangeListener : windowChangeListeners) {
                    windowChangeListener.windowsChanged();
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFocusChanged() {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                if (this.mWindowChangeListeners.isEmpty()) {
                    resetPriorityAfterLockedSection();
                    return;
                }
                WindowChangeListener[] windowChangeListeners = (WindowChangeListener[]) this.mWindowChangeListeners.toArray(new WindowChangeListener[this.mWindowChangeListeners.size()]);
                resetPriorityAfterLockedSection();
                for (WindowChangeListener windowChangeListener : windowChangeListeners) {
                    windowChangeListener.focusChanged();
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    private WindowState findWindow(final int hashCode) {
        WindowState window;
        if (hashCode == -1) {
            return getFocusedWindow();
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                window = this.mRoot.getWindow(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$oLnBPlm1K8b3ndahjZkt9CtdMc0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return WindowManagerService.lambda$findWindow$7(hashCode, (WindowState) obj);
                    }
                });
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return window;
    }

    static /* synthetic */ boolean lambda$findWindow$7(int hashCode, WindowState w) {
        return System.identityHashCode(w) == hashCode;
    }

    public Configuration computeNewConfiguration(int displayId) {
        Configuration configurationComputeNewConfigurationLocked;
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                configurationComputeNewConfigurationLocked = computeNewConfigurationLocked(displayId);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return configurationComputeNewConfigurationLocked;
    }

    private Configuration computeNewConfigurationLocked(int displayId) {
        if (!this.mDisplayReady) {
            return null;
        }
        Configuration config = new Configuration();
        DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
        displayContent.computeScreenConfiguration(config);
        return config;
    }

    void notifyHardKeyboardStatusChange() {
        WindowManagerInternal.OnHardKeyboardStatusChangeListener listener;
        boolean available;
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                listener = this.mHardKeyboardStatusChangeListener;
                available = this.mHardKeyboardAvailable;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        if (listener != null) {
            listener.onHardKeyboardStatusChange(available);
        }
    }

    public void setEventDispatching(boolean enabled) {
        if (!checkCallingPermission("android.permission.MANAGE_APP_TOKENS", "setEventDispatching()")) {
            throw new SecurityException("Requires MANAGE_APP_TOKENS permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mEventDispatchingEnabled = enabled;
                if (this.mDisplayEnabled) {
                    this.mInputManagerCallback.setEventDispatchingLw(enabled);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    private WindowState getFocusedWindow() {
        WindowState focusedWindowLocked;
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                focusedWindowLocked = getFocusedWindowLocked();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return focusedWindowLocked;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WindowState getFocusedWindowLocked() {
        return this.mRoot.getTopFocusedDisplayContent().mCurrentFocus;
    }

    ActivityStack getImeFocusStackLocked() {
        DisplayContent topFocusedDisplay = this.mRoot.getTopFocusedDisplayContent();
        ActivityRecord focusedApp = topFocusedDisplay.mFocusedApp;
        if (focusedApp == null || focusedApp.getTask() == null) {
            return null;
        }
        return focusedApp.getTask().getStack();
    }

    public boolean detectSafeMode() {
        if (!this.mInputManagerCallback.waitForInputDevicesReady(1000L) && ProtoLog$Cache.WM_ERROR_enabled) {
            ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1774661765, 1, "Devices still not ready after waiting %d milliseconds before attempting to detect safe mode.", 1000L);
        }
        if (Settings.Global.getInt(this.mContext.getContentResolver(), "safe_boot_disallowed", 0) != 0) {
            return false;
        }
        int menuState = this.mInputManager.getKeyCodeState(-1, -256, 82);
        int sState = this.mInputManager.getKeyCodeState(-1, -256, 47);
        int dpadState = this.mInputManager.getKeyCodeState(-1, UsbTerminalTypes.TERMINAL_IN_MIC, 23);
        int trackballState = this.mInputManager.getScanCodeState(-1, 65540, 272);
        int volumeDownState = this.mInputManager.getKeyCodeState(-1, -256, 25);
        this.mSafeMode = menuState > 0 || sState > 0 || dpadState > 0 || trackballState > 0 || volumeDownState > 0;
        try {
            if (SystemProperties.getInt(ShutdownThread.REBOOT_SAFEMODE_PROPERTY, 0) != 0 || SystemProperties.getInt(ShutdownThread.RO_SAFEMODE_PROPERTY, 0) != 0) {
                this.mSafeMode = true;
                SystemProperties.set(ShutdownThread.REBOOT_SAFEMODE_PROPERTY, "");
            }
        } catch (IllegalArgumentException e) {
        }
        if (this.mSafeMode) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                long protoLogParam0 = menuState;
                long protoLogParam1 = sState;
                long protoLogParam2 = dpadState;
                long protoLogParam3 = trackballState;
                ProtoLogImpl.i(ProtoLogGroup.WM_ERROR, -1443029505, 85, "SAFE MODE ENABLED (menu=%d s=%d dpad=%d trackball=%d)", Long.valueOf(protoLogParam0), Long.valueOf(protoLogParam1), Long.valueOf(protoLogParam2), Long.valueOf(protoLogParam3));
            }
            if (SystemProperties.getInt(ShutdownThread.RO_SAFEMODE_PROPERTY, 0) == 0) {
                SystemProperties.set(ShutdownThread.RO_SAFEMODE_PROPERTY, SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
            }
        } else if (ProtoLog$Cache.WM_ERROR_enabled) {
            ProtoLogImpl.i(ProtoLogGroup.WM_ERROR, 1866772666, 0, "SAFE MODE not enabled", (Object[]) null);
        }
        this.mPolicy.setSafeMode(this.mSafeMode);
        return this.mSafeMode;
    }

    public void displayReady() {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                if (this.mMaxUiWidth > 0) {
                    this.mRoot.forAllDisplays(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$jvp576kfGCxqKXDJXJsMXSPpBfM
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            this.f$0.lambda$displayReady$8$WindowManagerService((DisplayContent) obj);
                        }
                    });
                }
                applyForcedPropertiesForDefaultDisplay();
                this.mAnimator.ready();
                this.mDisplayReady = true;
                this.mRoot.forAllDisplays(new Consumer() { // from class: com.android.server.wm.-$$Lambda$-hxY8aP13MItXHILC9K9vyNQgr4
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((DisplayContent) obj).reconfigureDisplayLocked();
                    }
                });
                this.mIsTouchDevice = this.mContext.getPackageManager().hasSystemFeature("android.hardware.touchscreen");
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        try {
            this.mActivityTaskManager.updateConfiguration((Configuration) null);
        } catch (RemoteException e) {
        }
    }

    public /* synthetic */ void lambda$displayReady$8$WindowManagerService(DisplayContent displayContent) {
        displayContent.setMaxUiWidth(this.mMaxUiWidth);
    }

    public void systemReady() {
        this.mSystemReady = true;
        this.mPolicy.systemReady();
        this.mRoot.forAllDisplayPolicies(new Consumer() { // from class: com.android.server.wm.-$$Lambda$cJE-iQ28Rv-ThCcuht9wXeFzPgo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((DisplayPolicy) obj).systemReady();
            }
        });
        this.mTaskSnapshotController.systemReady();
        this.mHasWideColorGamutSupport = queryWideColorGamutSupport();
        this.mHasHdrSupport = queryHdrSupport();
        Handler handler = UiThread.getHandler();
        final SettingsObserver settingsObserver = this.mSettingsObserver;
        Objects.requireNonNull(settingsObserver);
        handler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$saxKzkaCgueXiijz1VFL4g-SiV0
            @Override // java.lang.Runnable
            public final void run() {
                settingsObserver.loadSettings();
            }
        });
        IVrManager vrManager = IVrManager.Stub.asInterface(ServiceManager.getService("vrmanager"));
        if (vrManager != null) {
            try {
                boolean vrModeEnabled = vrManager.getVrModeState();
                synchronized (this.mGlobalLock) {
                    try {
                        boostPriorityForLockedSection();
                        vrManager.registerListener(this.mVrStateCallbacks);
                        if (vrModeEnabled) {
                            this.mVrModeEnabled = vrModeEnabled;
                            this.mVrStateCallbacks.onVrStateChanged(vrModeEnabled);
                        }
                    } finally {
                        resetPriorityAfterLockedSection();
                    }
                }
            } catch (RemoteException e) {
            }
        }
    }

    private static boolean queryWideColorGamutSupport() {
        Optional<Boolean> hasWideColorProp = SurfaceFlingerProperties.has_wide_color_display();
        if (hasWideColorProp.isPresent()) {
            return hasWideColorProp.get().booleanValue();
        }
        try {
            ISurfaceFlingerConfigs surfaceFlinger = ISurfaceFlingerConfigs.getService();
            OptionalBool hasWideColor = surfaceFlinger.hasWideColorDisplay();
            if (hasWideColor != null) {
                return hasWideColor.value;
            }
            return false;
        } catch (RemoteException e) {
            return false;
        } catch (NoSuchElementException e2) {
            return false;
        }
    }

    private static boolean queryHdrSupport() {
        Optional<Boolean> hasHdrProp = SurfaceFlingerProperties.has_HDR_display();
        if (hasHdrProp.isPresent()) {
            return hasHdrProp.get().booleanValue();
        }
        try {
            ISurfaceFlingerConfigs surfaceFlinger = ISurfaceFlingerConfigs.getService();
            OptionalBool hasHdr = surfaceFlinger.hasHDRDisplay();
            if (hasHdr != null) {
                return hasHdr.value;
            }
            return false;
        } catch (RemoteException e) {
            return false;
        } catch (NoSuchElementException e2) {
            return false;
        }
    }

    final class H extends Handler {
        public static final int ADD_NEW_WINDOW = 100;
        public static final int ALL_WINDOWS_DRAWN = 33;
        public static final int ANIMATION_FAILSAFE = 60;
        public static final int APP_FREEZE_TIMEOUT = 17;
        public static final int BOOT_TIMEOUT = 23;
        public static final int CHECK_IF_BOOT_ANIMATION_FINISHED = 37;
        public static final int CLIENT_FREEZE_TIMEOUT = 30;
        public static final int ENABLE_SCREEN = 16;
        public static final int FORCE_GC = 15;
        public static final int LAYOUT_AND_ASSIGN_WINDOW_LAYERS_IF_NEEDED = 63;
        public static final int NEW_ANIMATOR_SCALE = 34;
        public static final int NOTIFY_ACTIVITY_DRAWN = 32;
        public static final int ON_POINTER_DOWN_OUTSIDE_FOCUS = 62;
        public static final int PERSIST_ANIMATION_SCALE = 14;
        public static final int RECOMPUTE_FOCUS = 61;
        public static final int REMOVE_WINDOW = 101;
        public static final int REPORT_FOCUS_CHANGE = 2;
        public static final int REPORT_HARD_KEYBOARD_STATUS_CHANGE = 22;
        public static final int REPORT_LOSING_FOCUS = 3;
        public static final int REPORT_WINDOWS_CHANGE = 19;
        public static final int RESET_ANR_MESSAGE = 38;
        public static final int RESTORE_POINTER_ICON = 55;
        public static final int SEAMLESS_ROTATION_TIMEOUT = 54;
        public static final int SET_HAS_OVERLAY_UI = 58;
        public static final int SHOW_EMULATOR_DISPLAY_OVERLAY = 36;
        public static final int SHOW_STRICT_MODE_VIOLATION = 25;
        public static final int UNUSED = 0;
        public static final int UPDATE_ANIMATION_SCALE = 51;
        public static final int UPDATE_MULTI_WINDOW_STACKS = 41;
        public static final int WAITING_FOR_DRAWN_TIMEOUT = 24;
        public static final int WALLPAPER_DRAW_PENDING_TIMEOUT = 39;
        public static final int WINDOW_FREEZE_TIMEOUT = 11;
        public static final int WINDOW_HIDE_TIMEOUT = 52;
        public static final int WINDOW_REPLACEMENT_TIMEOUT = 46;
        public static final int WINDOW_STATE_BLAST_SYNC_TIMEOUT = 64;

        H() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            ArrayList<WindowState> losers;
            Runnable callback;
            Runnable callback2;
            boolean bootAnimationComplete;
            int i = msg.what;
            if (i == 2) {
                DisplayContent displayContent = (DisplayContent) msg.obj;
                AccessibilityController accessibilityController = null;
                synchronized (WindowManagerService.this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        if (WindowManagerService.this.mAccessibilityController != null) {
                            accessibilityController = WindowManagerService.this.mAccessibilityController;
                        }
                        WindowState lastFocus = displayContent.mLastFocus;
                        WindowState newFocus = displayContent.mCurrentFocus;
                        if (lastFocus == newFocus) {
                            WindowManagerService.resetPriorityAfterLockedSection();
                            return;
                        }
                        displayContent.mLastFocus = newFocus;
                        Slog.d(WindowManagerService.TAG, "Focus moving from " + lastFocus + " to " + newFocus + " displayId = " + displayContent.getDisplayId());
                        if (newFocus != null && lastFocus != null && !newFocus.isDisplayedLw()) {
                            if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
                                ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, 385096046, 0, null, (Object[]) null);
                            }
                            displayContent.mLosingFocus.add(lastFocus);
                            lastFocus = null;
                        }
                        WindowManagerService.resetPriorityAfterLockedSection();
                        if (accessibilityController != null) {
                            accessibilityController.onWindowFocusChangedNotLocked(displayContent.getDisplayId());
                        }
                        if (newFocus != null) {
                            if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
                                String protoLogParam0 = String.valueOf(newFocus);
                                ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, -96848838, 0, null, protoLogParam0);
                            }
                            newFocus.reportFocusChangedSerialized(true);
                            WindowManagerService.this.notifyFocusChanged();
                        }
                        if (lastFocus != null) {
                            if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
                                String protoLogParam1 = String.valueOf(lastFocus);
                                ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, -771282525, 0, null, protoLogParam1);
                            }
                            lastFocus.reportFocusChangedSerialized(false);
                            return;
                        }
                        return;
                    } catch (Throwable th) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
            }
            if (i == 3) {
                DisplayContent displayContent2 = (DisplayContent) msg.obj;
                synchronized (WindowManagerService.this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        losers = displayContent2.mLosingFocus;
                        displayContent2.mLosingFocus = new ArrayList<>();
                    } catch (Throwable th2) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th2;
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
                int N = losers.size();
                for (int i2 = 0; i2 < N; i2++) {
                    if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
                        String protoLogParam2 = String.valueOf(losers.get(i2));
                        ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, -714291355, 0, null, protoLogParam2);
                    }
                    losers.get(i2).reportFocusChangedSerialized(false);
                }
                return;
            }
            if (i == 11) {
                DisplayContent displayContent3 = (DisplayContent) msg.obj;
                synchronized (WindowManagerService.this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        displayContent3.onWindowFreezeTimeout();
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
                return;
            }
            if (i == 19) {
                if (WindowManagerService.this.mWindowsChanged) {
                    synchronized (WindowManagerService.this.mGlobalLock) {
                        try {
                            WindowManagerService.boostPriorityForLockedSection();
                            WindowManagerService.this.mWindowsChanged = false;
                        } catch (Throwable th3) {
                            WindowManagerService.resetPriorityAfterLockedSection();
                            throw th3;
                        }
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    WindowManagerService.this.notifyWindowsChanged();
                    return;
                }
                return;
            }
            if (i == 30) {
                synchronized (WindowManagerService.this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        if (WindowManagerService.this.mClientFreezingScreen) {
                            WindowManagerService.this.mClientFreezingScreen = false;
                            WindowManagerService.this.mLastFinishedFreezeSource = "client-timeout";
                            WindowManagerService.this.stopFreezingDisplayLocked();
                        }
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
                return;
            }
            if (i == 41) {
                synchronized (WindowManagerService.this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        DisplayContent displayContent4 = WindowManagerService.this.getDefaultDisplayContentLocked();
                        if (displayContent4 != null) {
                            displayContent4.adjustForImeIfNeeded();
                        }
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
                return;
            }
            if (i == 46) {
                synchronized (WindowManagerService.this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        for (int i3 = WindowManagerService.this.mWindowReplacementTimeouts.size() - 1; i3 >= 0; i3--) {
                            ActivityRecord activity = WindowManagerService.this.mWindowReplacementTimeouts.get(i3);
                            activity.onWindowReplacementTimeout();
                        }
                        WindowManagerService.this.mWindowReplacementTimeouts.clear();
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
                return;
            }
            if (i == 58) {
                WindowManagerService.this.mAmInternal.setHasOverlayUi(msg.arg1, msg.arg2 == 1);
                return;
            }
            if (i == 51) {
                int mode = msg.arg1;
                if (mode == 0) {
                    WindowManagerService windowManagerService = WindowManagerService.this;
                    windowManagerService.mWindowAnimationScaleSetting = Settings.Global.getFloat(windowManagerService.mContext.getContentResolver(), "window_animation_scale", WindowManagerService.this.mWindowAnimationScaleSetting);
                    return;
                } else if (mode == 1) {
                    WindowManagerService windowManagerService2 = WindowManagerService.this;
                    windowManagerService2.mTransitionAnimationScaleSetting = Settings.Global.getFloat(windowManagerService2.mContext.getContentResolver(), "transition_animation_scale", WindowManagerService.this.mTransitionAnimationScaleSetting);
                    return;
                } else {
                    if (mode == 2) {
                        WindowManagerService windowManagerService3 = WindowManagerService.this;
                        windowManagerService3.mAnimatorDurationScaleSetting = Settings.Global.getFloat(windowManagerService3.mContext.getContentResolver(), "animator_duration_scale", WindowManagerService.this.mAnimatorDurationScaleSetting);
                        WindowManagerService.this.dispatchNewAnimatorScaleLocked(null);
                        return;
                    }
                    return;
                }
            }
            if (i == 52) {
                WindowState window = (WindowState) msg.obj;
                synchronized (WindowManagerService.this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        window.mAttrs.flags &= -129;
                        window.hidePermanentlyLw();
                        window.setDisplayLayoutNeeded();
                        WindowManagerService.this.mWindowPlacerLocked.performSurfacePlacement();
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
                return;
            }
            if (i == 54) {
                DisplayContent displayContent5 = (DisplayContent) msg.obj;
                synchronized (WindowManagerService.this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        displayContent5.getDisplayRotation().onSeamlessRotationTimeout();
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
                return;
            }
            if (i == 55) {
                synchronized (WindowManagerService.this.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        WindowManagerService.this.restorePointerIconLocked((DisplayContent) msg.obj, msg.arg1, msg.arg2);
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
                return;
            }
            if (i == 100) {
                try {
                    WindowManagerService.this.notifyWindowAdded((WindowAttributes) msg.obj);
                    return;
                } catch (RemoteException e) {
                    Slog.e(WindowManagerService.TAG, "notifyWindowAdded failed.", e);
                    return;
                }
            }
            if (i == 101) {
                try {
                    WindowManagerService.this.notifyWindowRemoved((WindowAttributes) msg.obj);
                    return;
                } catch (RemoteException e2) {
                    Slog.e(WindowManagerService.TAG, "notifyWindowRemoved failed.", e2);
                    return;
                }
            }
            switch (i) {
                case 14:
                    Settings.Global.putFloat(WindowManagerService.this.mContext.getContentResolver(), "window_animation_scale", WindowManagerService.this.mWindowAnimationScaleSetting);
                    Settings.Global.putFloat(WindowManagerService.this.mContext.getContentResolver(), "transition_animation_scale", WindowManagerService.this.mTransitionAnimationScaleSetting);
                    Settings.Global.putFloat(WindowManagerService.this.mContext.getContentResolver(), "animator_duration_scale", WindowManagerService.this.mAnimatorDurationScaleSetting);
                    return;
                case 15:
                    synchronized (WindowManagerService.this.mGlobalLock) {
                        try {
                            WindowManagerService.boostPriorityForLockedSection();
                            if (WindowManagerService.this.mAnimator.isAnimationScheduled()) {
                                sendEmptyMessageDelayed(15, 2000L);
                                WindowManagerService.resetPriorityAfterLockedSection();
                                return;
                            } else if (WindowManagerService.this.mDisplayFrozen) {
                                WindowManagerService.resetPriorityAfterLockedSection();
                                return;
                            } else {
                                WindowManagerService.resetPriorityAfterLockedSection();
                                Runtime.getRuntime().gc();
                                return;
                            }
                        } catch (Throwable th4) {
                            WindowManagerService.resetPriorityAfterLockedSection();
                            throw th4;
                        }
                    }
                case 16:
                    WindowManagerService.this.performEnableScreen();
                    return;
                case 17:
                    synchronized (WindowManagerService.this.mGlobalLock) {
                        try {
                            WindowManagerService.boostPriorityForLockedSection();
                            if (ProtoLog$Cache.WM_ERROR_enabled) {
                                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -322035974, 0, "App freeze timeout expired.", (Object[]) null);
                            }
                            WindowManagerService.this.mWindowsFreezingScreen = 2;
                            for (int i4 = WindowManagerService.this.mAppFreezeListeners.size() - 1; i4 >= 0; i4--) {
                                WindowManagerService.this.mAppFreezeListeners.get(i4).onAppFreezeTimeout();
                            }
                        } finally {
                            WindowManagerService.resetPriorityAfterLockedSection();
                        }
                        break;
                    }
                    return;
                default:
                    switch (i) {
                        case 22:
                            WindowManagerService.this.notifyHardKeyboardStatusChange();
                            return;
                        case BOOT_TIMEOUT /* 23 */:
                            WindowManagerService.this.performBootTimeout();
                            return;
                        case WAITING_FOR_DRAWN_TIMEOUT /* 24 */:
                            WindowContainer container = (WindowContainer) msg.obj;
                            synchronized (WindowManagerService.this.mGlobalLock) {
                                try {
                                    WindowManagerService.boostPriorityForLockedSection();
                                    if (ProtoLog$Cache.WM_ERROR_enabled) {
                                        String protoLogParam3 = String.valueOf(container.mWaitingForDrawn);
                                        ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -1526645239, 0, "Timeout waiting for drawn: undrawn=%s", protoLogParam3);
                                    }
                                    container.mWaitingForDrawn.clear();
                                    callback = WindowManagerService.this.mWaitingForDrawnCallbacks.remove(container);
                                } catch (Throwable th5) {
                                    WindowManagerService.resetPriorityAfterLockedSection();
                                    throw th5;
                                }
                                break;
                            }
                            WindowManagerService.resetPriorityAfterLockedSection();
                            if (callback != null) {
                                callback.run();
                                return;
                            }
                            return;
                        case SHOW_STRICT_MODE_VIOLATION /* 25 */:
                            WindowManagerService.this.showStrictModeViolation(msg.arg1, msg.arg2);
                            return;
                        default:
                            switch (i) {
                                case 32:
                                    try {
                                        WindowManagerService.this.mActivityTaskManager.notifyActivityDrawn((IBinder) msg.obj);
                                        return;
                                    } catch (RemoteException e3) {
                                        return;
                                    }
                                case 33:
                                    WindowContainer container2 = (WindowContainer) msg.obj;
                                    synchronized (WindowManagerService.this.mGlobalLock) {
                                        try {
                                            WindowManagerService.boostPriorityForLockedSection();
                                            callback2 = WindowManagerService.this.mWaitingForDrawnCallbacks.remove(container2);
                                        } catch (Throwable th6) {
                                            WindowManagerService.resetPriorityAfterLockedSection();
                                            throw th6;
                                        }
                                        break;
                                    }
                                    WindowManagerService.resetPriorityAfterLockedSection();
                                    if (callback2 != null) {
                                        callback2.run();
                                        return;
                                    }
                                    return;
                                case 34:
                                    float scale = WindowManagerService.this.getCurrentAnimatorScale();
                                    ValueAnimator.setDurationScale(scale);
                                    Session session = (Session) msg.obj;
                                    if (session != null) {
                                        try {
                                            session.mCallback.onAnimatorScaleChanged(scale);
                                            return;
                                        } catch (RemoteException e4) {
                                            return;
                                        }
                                    }
                                    ArrayList<IWindowSessionCallback> callbacks = new ArrayList<>();
                                    synchronized (WindowManagerService.this.mGlobalLock) {
                                        try {
                                            WindowManagerService.boostPriorityForLockedSection();
                                            for (int i5 = 0; i5 < WindowManagerService.this.mSessions.size(); i5++) {
                                                callbacks.add(WindowManagerService.this.mSessions.valueAt(i5).mCallback);
                                            }
                                        } catch (Throwable th7) {
                                            WindowManagerService.resetPriorityAfterLockedSection();
                                            throw th7;
                                        }
                                        break;
                                    }
                                    WindowManagerService.resetPriorityAfterLockedSection();
                                    for (int i6 = 0; i6 < callbacks.size(); i6++) {
                                        try {
                                            callbacks.get(i6).onAnimatorScaleChanged(scale);
                                        } catch (RemoteException e5) {
                                        }
                                    }
                                    return;
                                default:
                                    switch (i) {
                                        case 36:
                                            WindowManagerService.this.showEmulatorDisplayOverlay();
                                            return;
                                        case 37:
                                            synchronized (WindowManagerService.this.mGlobalLock) {
                                                try {
                                                    WindowManagerService.boostPriorityForLockedSection();
                                                    if (ProtoLog$Cache.WM_DEBUG_BOOT_enabled) {
                                                        ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_BOOT, 2034780299, 0, null, (Object[]) null);
                                                    }
                                                    bootAnimationComplete = WindowManagerService.this.checkBootAnimationCompleteLocked();
                                                } catch (Throwable th8) {
                                                    WindowManagerService.resetPriorityAfterLockedSection();
                                                    throw th8;
                                                }
                                                break;
                                            }
                                            WindowManagerService.resetPriorityAfterLockedSection();
                                            if (bootAnimationComplete) {
                                                WindowManagerService.this.performEnableScreen();
                                                return;
                                            }
                                            return;
                                        case 38:
                                            synchronized (WindowManagerService.this.mGlobalLock) {
                                                try {
                                                    WindowManagerService.boostPriorityForLockedSection();
                                                    WindowManagerService.this.mLastANRState = null;
                                                } catch (Throwable th9) {
                                                    WindowManagerService.resetPriorityAfterLockedSection();
                                                    throw th9;
                                                }
                                                break;
                                            }
                                            WindowManagerService.resetPriorityAfterLockedSection();
                                            WindowManagerService.this.mAtmInternal.clearSavedANRState();
                                            return;
                                        case 39:
                                            synchronized (WindowManagerService.this.mGlobalLock) {
                                                try {
                                                    WindowManagerService.boostPriorityForLockedSection();
                                                    WallpaperController wallpaperController = (WallpaperController) msg.obj;
                                                    if (wallpaperController != null && wallpaperController.processWallpaperDrawPendingTimeout()) {
                                                        WindowManagerService.this.mWindowPlacerLocked.performSurfacePlacement();
                                                    }
                                                } finally {
                                                    WindowManagerService.resetPriorityAfterLockedSection();
                                                }
                                                break;
                                            }
                                            return;
                                        default:
                                            switch (i) {
                                                case ANIMATION_FAILSAFE /* 60 */:
                                                    synchronized (WindowManagerService.this.mGlobalLock) {
                                                        try {
                                                            WindowManagerService.boostPriorityForLockedSection();
                                                            if (WindowManagerService.this.mRecentsAnimationController != null) {
                                                                WindowManagerService.this.mRecentsAnimationController.scheduleFailsafe();
                                                            }
                                                        } finally {
                                                            WindowManagerService.resetPriorityAfterLockedSection();
                                                        }
                                                        break;
                                                    }
                                                    return;
                                                case RECOMPUTE_FOCUS /* 61 */:
                                                    synchronized (WindowManagerService.this.mGlobalLock) {
                                                        try {
                                                            WindowManagerService.boostPriorityForLockedSection();
                                                            WindowManagerService.this.updateFocusedWindowLocked(0, true);
                                                        } finally {
                                                            WindowManagerService.resetPriorityAfterLockedSection();
                                                        }
                                                        break;
                                                    }
                                                    return;
                                                case ON_POINTER_DOWN_OUTSIDE_FOCUS /* 62 */:
                                                    synchronized (WindowManagerService.this.mGlobalLock) {
                                                        try {
                                                            WindowManagerService.boostPriorityForLockedSection();
                                                            IBinder touchedToken = (IBinder) msg.obj;
                                                            WindowManagerService.this.onPointerDownOutsideFocusLocked(touchedToken);
                                                        } finally {
                                                            WindowManagerService.resetPriorityAfterLockedSection();
                                                        }
                                                        break;
                                                    }
                                                    return;
                                                case 63:
                                                    synchronized (WindowManagerService.this.mGlobalLock) {
                                                        try {
                                                            WindowManagerService.boostPriorityForLockedSection();
                                                            ((DisplayContent) msg.obj).layoutAndAssignWindowLayersIfNeeded();
                                                        } finally {
                                                            WindowManagerService.resetPriorityAfterLockedSection();
                                                        }
                                                        break;
                                                    }
                                                    return;
                                                case 64:
                                                    synchronized (WindowManagerService.this.mGlobalLock) {
                                                        try {
                                                            WindowManagerService.boostPriorityForLockedSection();
                                                            WindowState ws = (WindowState) msg.obj;
                                                            ws.immediatelyNotifyBlastSync();
                                                        } finally {
                                                            WindowManagerService.resetPriorityAfterLockedSection();
                                                        }
                                                        break;
                                                    }
                                                    return;
                                                default:
                                                    return;
                                            }
                                    }
                            }
                    }
            }
        }

        void sendNewMessageDelayed(int what, Object obj, long delayMillis) {
            removeMessages(what, obj);
            sendMessageDelayed(obtainMessage(what, obj), delayMillis);
        }
    }

    void destroyPreservedSurfaceLocked() {
        for (int i = this.mDestroyPreservedSurface.size() - 1; i >= 0; i--) {
            WindowState w = this.mDestroyPreservedSurface.get(i);
            w.mWinAnimator.destroyPreservedSurfaceLocked();
        }
        this.mDestroyPreservedSurface.clear();
    }

    public IWindowSession openSession(IWindowSessionCallback callback) {
        return new Session(this, callback);
    }

    public boolean useBLAST() {
        return this.mUseBLAST;
    }

    public void getInitialDisplaySize(int displayId, Point size) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent != null && displayContent.hasAccess(Binder.getCallingUid())) {
                    size.x = displayContent.mInitialDisplayWidth;
                    size.y = displayContent.mInitialDisplayHeight;
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void getBaseDisplaySize(int displayId, Point size) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent != null && displayContent.hasAccess(Binder.getCallingUid())) {
                    size.x = displayContent.mBaseDisplayWidth;
                    size.y = displayContent.mBaseDisplayHeight;
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setForcedDisplaySize(int displayId, int width, int height) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_SECURE_SETTINGS") != 0) {
            throw new SecurityException("Must hold permission android.permission.WRITE_SECURE_SETTINGS");
        }
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                    if (displayContent != null) {
                        displayContent.setForcedSize(width, height);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public void setForcedDisplayScalingMode(int displayId, int mode) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_SECURE_SETTINGS") != 0) {
            throw new SecurityException("Must hold permission android.permission.WRITE_SECURE_SETTINGS");
        }
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                    if (displayContent != null) {
                        displayContent.setForcedScalingMode(mode);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    private boolean applyForcedPropertiesForDefaultDisplay() {
        int pos;
        boolean changed = false;
        DisplayContent displayContent = getDefaultDisplayContentLocked();
        String sizeStr = Settings.Global.getString(this.mContext.getContentResolver(), "display_size_forced");
        String sizeStr2 = (sizeStr == null || sizeStr.length() == 0) ? SystemProperties.get(SIZE_OVERRIDE, (String) null) : sizeStr;
        if (sizeStr2 != null && sizeStr2.length() > 0 && (pos = sizeStr2.indexOf(44)) > 0 && sizeStr2.lastIndexOf(44) == pos) {
            try {
                int width = Integer.parseInt(sizeStr2.substring(0, pos));
                int height = Integer.parseInt(sizeStr2.substring(pos + 1));
                if (displayContent.mBaseDisplayWidth != width || displayContent.mBaseDisplayHeight != height) {
                    if (ProtoLog$Cache.WM_ERROR_enabled) {
                        long protoLogParam0 = width;
                        long protoLogParam1 = height;
                        ProtoLogImpl.i(ProtoLogGroup.WM_ERROR, 1115417974, 5, "FORCED DISPLAY SIZE: %dx%d", Long.valueOf(protoLogParam0), Long.valueOf(protoLogParam1));
                    }
                    displayContent.updateBaseDisplayMetrics(width, height, displayContent.mBaseDisplayDensity);
                    changed = true;
                }
            } catch (NumberFormatException e) {
            }
        }
        int density = getForcedDisplayDensityForUserLocked(this.mCurrentUserId);
        if (density != 0 && density != displayContent.mBaseDisplayDensity) {
            displayContent.mBaseDisplayDensity = density;
            changed = true;
        }
        int mode = Settings.Global.getInt(this.mContext.getContentResolver(), "display_scaling_force", 0);
        if (displayContent.mDisplayScalingDisabled != (mode != 0)) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                ProtoLogImpl.i(ProtoLogGroup.WM_ERROR, 954470154, 0, "FORCED DISPLAY SCALING DISABLED", (Object[]) null);
            }
            displayContent.mDisplayScalingDisabled = true;
            return true;
        }
        return changed;
    }

    public void clearForcedDisplaySize(int displayId) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_SECURE_SETTINGS") != 0) {
            throw new SecurityException("Must hold permission android.permission.WRITE_SECURE_SETTINGS");
        }
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                    if (displayContent != null) {
                        displayContent.setForcedSize(displayContent.mInitialDisplayWidth, displayContent.mInitialDisplayHeight);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public int getInitialDisplayDensity(int displayId) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent != null && displayContent.hasAccess(Binder.getCallingUid())) {
                    return displayContent.mInitialDisplayDensity;
                }
                return -1;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public int getBaseDisplayDensity(int displayId) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent != null && displayContent.hasAccess(Binder.getCallingUid())) {
                    return displayContent.mBaseDisplayDensity;
                }
                return -1;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setForcedDisplayDensityForUser(int displayId, int density, int userId) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_SECURE_SETTINGS") != 0) {
            throw new SecurityException("Must hold permission android.permission.WRITE_SECURE_SETTINGS");
        }
        int targetUserId = ActivityManager.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, false, true, "setForcedDisplayDensityForUser", null);
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                    if (displayContent != null) {
                        displayContent.setForcedDensity(density, targetUserId);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    public void clearForcedDisplayDensityForUser(int displayId, int userId) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.WRITE_SECURE_SETTINGS") != 0) {
            throw new SecurityException("Must hold permission android.permission.WRITE_SECURE_SETTINGS");
        }
        int callingUserId = ActivityManager.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, false, true, "clearForcedDisplayDensityForUser", null);
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                    if (displayContent != null) {
                        displayContent.setForcedDensity(displayContent.mInitialDisplayDensity, callingUserId);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(ident);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(ident);
            throw th2;
        }
    }

    private int getForcedDisplayDensityForUserLocked(int userId) {
        String densityStr = Settings.Secure.getStringForUser(this.mContext.getContentResolver(), "display_density_forced", userId);
        if (densityStr == null || densityStr.length() == 0) {
            densityStr = SystemProperties.get(DENSITY_OVERRIDE, (String) null);
        }
        if (densityStr != null && densityStr.length() > 0) {
            try {
                return Integer.parseInt(densityStr);
            } catch (NumberFormatException e) {
                return 0;
            }
        }
        return 0;
    }

    public void startWindowTrace() {
        this.mWindowTracing.startTrace(null);
    }

    public void stopWindowTrace() {
        this.mWindowTracing.stopTrace(null);
    }

    public boolean isWindowTraceEnabled() {
        return this.mWindowTracing.isEnabled();
    }

    final WindowState windowForClientLocked(Session session, IWindow client, boolean throwOnError) {
        return windowForClientLocked(session, client.asBinder(), throwOnError);
    }

    final WindowState windowForClientLocked(Session session, IBinder client, boolean throwOnError) {
        WindowState win = this.mWindowMap.get(client);
        if (win == null) {
            if (throwOnError) {
                throw new IllegalArgumentException("Requested window " + client + " does not exist");
            }
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam0 = String.valueOf(session);
                String protoLogParam1 = String.valueOf(Debug.getCallers(3));
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -2101985723, 0, "Failed looking up window session=%s callers=%s", protoLogParam0, protoLogParam1);
            }
            return null;
        }
        if (session != null && win.mSession != session) {
            if (throwOnError) {
                throw new IllegalArgumentException("Requested window " + client + " is in session " + win.mSession + ", not " + session);
            }
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam2 = String.valueOf(session);
                String protoLogParam3 = String.valueOf(Debug.getCallers(3));
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -2101985723, 0, "Failed looking up window session=%s callers=%s", protoLogParam2, protoLogParam3);
            }
            return null;
        }
        return win;
    }

    void makeWindowFreezingScreenIfNeededLocked(WindowState w) {
        if (!w.mToken.okToDisplay() && this.mWindowsFreezingScreen != 2) {
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                String protoLogParam0 = String.valueOf(w);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -1632122349, 0, null, protoLogParam0);
            }
            w.setOrientationChanging(true);
            w.mLastFreezeDuration = 0;
            this.mRoot.mOrientationChangeComplete = false;
            if (this.mWindowsFreezingScreen == 0) {
                this.mWindowsFreezingScreen = 1;
                this.mH.sendNewMessageDelayed(11, w.getDisplayContent(), 2000L);
            }
        }
    }

    void checkDrawnWindowsLocked() {
        if (this.mWaitingForDrawnCallbacks.isEmpty()) {
            return;
        }
        this.mWaitingForDrawnCallbacks.forEach(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$mtQmfigNXJ1YjHL9uPPFrPO_hzQ
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                this.f$0.lambda$checkDrawnWindowsLocked$9$WindowManagerService((WindowContainer) obj, (Runnable) obj2);
            }
        });
    }

    public /* synthetic */ void lambda$checkDrawnWindowsLocked$9$WindowManagerService(WindowContainer container, Runnable callback) {
        for (int j = container.mWaitingForDrawn.size() - 1; j >= 0; j--) {
            WindowState win = container.mWaitingForDrawn.get(j);
            if (ProtoLog$Cache.WM_DEBUG_SCREEN_ON_enabled) {
                String protoLogParam0 = String.valueOf(win);
                boolean protoLogParam1 = win.mRemoved;
                boolean protoLogParam2 = win.isVisibleLw();
                boolean protoLogParam3 = win.mHasSurface;
                long protoLogParam4 = win.mWinAnimator.mDrawState;
                ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_SCREEN_ON, 892244061, 508, null, protoLogParam0, Boolean.valueOf(protoLogParam1), Boolean.valueOf(protoLogParam2), Boolean.valueOf(protoLogParam3), Long.valueOf(protoLogParam4));
            }
            if (win.mRemoved || !win.mHasSurface || !win.isVisibleByPolicy()) {
                if (ProtoLog$Cache.WM_DEBUG_SCREEN_ON_enabled) {
                    String protoLogParam5 = String.valueOf(win);
                    ProtoLogImpl.w(ProtoLogGroup.WM_DEBUG_SCREEN_ON, 463993897, 0, null, protoLogParam5);
                }
                container.mWaitingForDrawn.remove(win);
            } else if (win.hasDrawnLw()) {
                if (ProtoLog$Cache.WM_DEBUG_SCREEN_ON_enabled) {
                    String protoLogParam6 = String.valueOf(win);
                    ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_SCREEN_ON, 1401700824, 0, null, protoLogParam6);
                }
                container.mWaitingForDrawn.remove(win);
            }
        }
        if (container.mWaitingForDrawn.isEmpty()) {
            if (ProtoLog$Cache.WM_DEBUG_SCREEN_ON_enabled) {
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_SCREEN_ON, 665256544, 0, null, (Object[]) null);
            }
            this.mH.removeMessages(24, container);
            H h = this.mH;
            h.sendMessage(h.obtainMessage(33, container));
        }
    }

    void setHoldScreenLocked(Session newHoldScreen) {
        boolean hold = newHoldScreen != null;
        if (hold && this.mHoldingScreenOn != newHoldScreen) {
            this.mHoldingScreenWakeLock.setWorkSource(new WorkSource(newHoldScreen.mUid));
        }
        this.mHoldingScreenOn = newHoldScreen;
        boolean state = this.mHoldingScreenWakeLock.isHeld();
        if (hold != state) {
            if (hold) {
                if (ProtoLog$Cache.WM_DEBUG_KEEP_SCREEN_ON_enabled) {
                    String protoLogParam0 = String.valueOf(this.mRoot.mHoldScreenWindow);
                    ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_KEEP_SCREEN_ON, 2096635066, 0, null, protoLogParam0);
                }
                this.mLastWakeLockHoldingWindow = this.mRoot.mHoldScreenWindow;
                this.mLastWakeLockObscuringWindow = null;
                this.mHoldingScreenWakeLock.acquire();
                this.mPolicy.keepScreenOnStartedLw();
                return;
            }
            if (ProtoLog$Cache.WM_DEBUG_KEEP_SCREEN_ON_enabled) {
                String protoLogParam1 = String.valueOf(this.mRoot.mObscuringWindow);
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_KEEP_SCREEN_ON, -2146181682, 0, null, protoLogParam1);
            }
            this.mLastWakeLockHoldingWindow = null;
            this.mLastWakeLockObscuringWindow = this.mRoot.mObscuringWindow;
            this.mPolicy.keepScreenOnStoppedLw();
            this.mHoldingScreenWakeLock.release();
        }
    }

    void requestTraversal() {
        this.mWindowPlacerLocked.requestTraversal();
    }

    void scheduleAnimationLocked() {
        WindowAnimator windowAnimator = this.mAnimator;
        if (windowAnimator != null) {
            windowAnimator.scheduleAnimation();
        }
    }

    boolean updateFocusedWindowLocked(int mode, boolean updateInputWindows) {
        Trace.traceBegin(32L, "wmUpdateFocus");
        boolean changed = this.mRoot.updateFocusedWindowLocked(mode, updateInputWindows);
        Trace.traceEnd(32L);
        return changed;
    }

    void startFreezingDisplay(int exitAnim, int enterAnim) {
        startFreezingDisplay(exitAnim, enterAnim, getDefaultDisplayContentLocked());
    }

    void startFreezingDisplay(int exitAnim, int enterAnim, DisplayContent displayContent) {
        startFreezingDisplay(exitAnim, enterAnim, displayContent, -1);
    }

    void startFreezingDisplay(int exitAnim, int enterAnim, DisplayContent displayContent, int overrideOriginalRotation) {
        int originalRotation;
        if (!this.mDisplayFrozen && !displayContent.getDisplayRotation().isRotatingSeamlessly()) {
            if (displayContent.isReady() && this.mPolicy.isScreenOn()) {
                if (!displayContent.okToAnimate()) {
                    return;
                }
                if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                    long protoLogParam0 = exitAnim;
                    long protoLogParam1 = enterAnim;
                    String protoLogParam2 = String.valueOf(Debug.getCallers(8));
                    ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ORIENTATION, 9803449, 5, null, Long.valueOf(protoLogParam0), Long.valueOf(protoLogParam1), protoLogParam2);
                }
                this.mScreenFrozenLock.acquire();
                this.mDisplayFrozen = true;
                this.mDisplayFreezeTime = SystemClock.elapsedRealtime();
                this.mLastFinishedFreezeSource = null;
                this.mFrozenDisplayId = displayContent.getDisplayId();
                this.mInputManagerCallback.freezeInputDispatchingLw();
                if (displayContent.mAppTransition.isTransitionSet()) {
                    displayContent.mAppTransition.freeze();
                }
                this.mLatencyTracker.onActionStart(6);
                this.mExitAnimId = exitAnim;
                this.mEnterAnimId = enterAnim;
                displayContent.updateDisplayInfo();
                if (overrideOriginalRotation != -1) {
                    originalRotation = overrideOriginalRotation;
                } else {
                    originalRotation = displayContent.getDisplayInfo().rotation;
                }
                displayContent.setRotationAnimation(new ScreenRotationAnimation(displayContent, originalRotation));
            }
        }
    }

    void stopFreezingDisplayLocked() {
        boolean waitingForRemoteRotation;
        boolean waitingForConfig;
        int numOpeningApps;
        if (this.mDisplayFrozen) {
            DisplayContent displayContent = this.mRoot.getDisplayContent(this.mFrozenDisplayId);
            if (displayContent != null) {
                numOpeningApps = displayContent.mOpeningApps.size();
                waitingForConfig = displayContent.mWaitingForConfig;
                waitingForRemoteRotation = displayContent.getDisplayRotation().isWaitingForRemoteRotation();
            } else {
                waitingForRemoteRotation = false;
                waitingForConfig = false;
                numOpeningApps = 0;
            }
            if (waitingForConfig || waitingForRemoteRotation || this.mAppsFreezingScreen > 0 || this.mWindowsFreezingScreen == 1 || this.mClientFreezingScreen || numOpeningApps > 0) {
                if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                    boolean protoLogParam0 = waitingForConfig;
                    boolean protoLogParam1 = waitingForRemoteRotation;
                    long protoLogParam2 = this.mAppsFreezingScreen;
                    long protoLogParam3 = this.mWindowsFreezingScreen;
                    boolean protoLogParam4 = this.mClientFreezingScreen;
                    long protoLogParam5 = numOpeningApps;
                    ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1246035185, 1887, null, Boolean.valueOf(protoLogParam0), Boolean.valueOf(protoLogParam1), Long.valueOf(protoLogParam2), Long.valueOf(protoLogParam3), Boolean.valueOf(protoLogParam4), Long.valueOf(protoLogParam5));
                    return;
                }
                return;
            }
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ORIENTATION, 355720268, 0, null, (Object[]) null);
            }
            this.mFrozenDisplayId = -1;
            this.mDisplayFrozen = false;
            this.mInputManagerCallback.thawInputDispatchingLw();
            this.mLastDisplayFreezeDuration = (int) (SystemClock.elapsedRealtime() - this.mDisplayFreezeTime);
            StringBuilder sb = new StringBuilder(128);
            sb.append("Screen frozen for ");
            TimeUtils.formatDuration(this.mLastDisplayFreezeDuration, sb);
            if (this.mLastFinishedFreezeSource != null) {
                sb.append(" due to ");
                sb.append(this.mLastFinishedFreezeSource);
            }
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam6 = String.valueOf(sb.toString());
                ProtoLogImpl.i(ProtoLogGroup.WM_ERROR, -583031528, 0, "%s", protoLogParam6);
            }
            this.mH.removeMessages(17);
            this.mH.removeMessages(30);
            boolean updateRotation = false;
            ScreenRotationAnimation screenRotationAnimation = displayContent == null ? null : displayContent.getRotationAnimation();
            if (screenRotationAnimation != null && screenRotationAnimation.hasScreenshot()) {
                if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                    ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1634557978, 0, null, (Object[]) null);
                }
                DisplayInfo displayInfo = displayContent.getDisplayInfo();
                if (!displayContent.getDisplayRotation().validateRotationAnimation(this.mExitAnimId, this.mEnterAnimId, false)) {
                    this.mEnterAnimId = 0;
                    this.mExitAnimId = 0;
                }
                if (screenRotationAnimation.dismiss(this.mTransaction, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY, getTransitionAnimationScaleLocked(), displayInfo.logicalWidth, displayInfo.logicalHeight, this.mExitAnimId, this.mEnterAnimId)) {
                    this.mTransaction.apply();
                } else {
                    screenRotationAnimation.kill();
                    displayContent.setRotationAnimation(null);
                    updateRotation = true;
                }
            } else {
                if (screenRotationAnimation != null) {
                    screenRotationAnimation.kill();
                    displayContent.setRotationAnimation(null);
                }
                updateRotation = true;
            }
            boolean configChanged = displayContent != null && displayContent.updateOrientation();
            this.mH.removeMessages(15);
            this.mH.sendEmptyMessageDelayed(15, 2000L);
            this.mScreenFrozenLock.release();
            if (updateRotation && displayContent != null) {
                if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                    ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ORIENTATION, -783405930, 0, null, (Object[]) null);
                }
                configChanged |= displayContent.updateRotationUnchecked();
            }
            if (configChanged) {
                displayContent.sendNewConfiguration();
            }
            this.mLatencyTracker.onActionEnd(6);
        }
    }

    static int getPropertyInt(String[] tokens, int index, int defUnits, int defDps, DisplayMetrics dm) {
        String str;
        if (index < tokens.length && (str = tokens[index]) != null && str.length() > 0) {
            try {
                int val = Integer.parseInt(str);
                return val;
            } catch (Exception e) {
            }
        }
        if (defUnits == 0) {
            return defDps;
        }
        int val2 = (int) TypedValue.applyDimension(defUnits, defDps, dm);
        return val2;
    }

    void createWatermark() {
        String[] toks;
        if (this.mWatermark != null) {
            return;
        }
        File file = new File("/system/etc/setup.conf");
        FileInputStream in = null;
        DataInputStream ind = null;
        try {
            try {
                try {
                    try {
                        in = new FileInputStream(file);
                        ind = new DataInputStream(in);
                        String line = ind.readLine();
                        if (line != null && (toks = line.split("%")) != null && toks.length > 0) {
                            DisplayContent displayContent = getDefaultDisplayContentLocked();
                            this.mWatermark = new Watermark(this.mSurfaceFactory, displayContent, displayContent.mRealDisplayMetrics, toks, this.mTransaction);
                            this.mTransaction.apply();
                        }
                        ind.close();
                    } catch (IOException e) {
                    }
                } catch (IOException e2) {
                    if (ind != null) {
                        ind.close();
                    } else if (in != null) {
                        in.close();
                    }
                }
            } catch (FileNotFoundException e3) {
                if (ind != null) {
                    ind.close();
                } else if (in != null) {
                    in.close();
                }
            } catch (Throwable th) {
                if (ind != null) {
                    try {
                        ind.close();
                    } catch (IOException e4) {
                    }
                } else if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e5) {
                    }
                }
                throw th;
            }
        } catch (IOException e6) {
        }
    }

    public void setRecentsVisibility(boolean visible) {
        this.mAtmInternal.enforceCallerIsRecentsOrHasPermission("android.permission.STATUS_BAR", "setRecentsVisibility()");
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mPolicy.setRecentsVisibilityLw(visible);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setPipVisibility(boolean visible) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.STATUS_BAR") != 0) {
            throw new SecurityException("Caller does not hold permission android.permission.STATUS_BAR");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mPolicy.setPipVisibilityLw(visible);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void statusBarVisibilityChanged(int displayId, int visibility) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.STATUS_BAR") != 0) {
            throw new SecurityException("Caller does not hold permission android.permission.STATUS_BAR");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent != null) {
                    displayContent.statusBarVisibilityChanged(visibility);
                } else {
                    Slog.w(TAG, "statusBarVisibilityChanged with invalid displayId=" + displayId);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void hideTransientBars(int displayId) {
        this.mAtmInternal.enforceCallerIsRecentsOrHasPermission("android.permission.STATUS_BAR", "hideTransientBars()");
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent != null) {
                    displayContent.hideTransientBars();
                } else {
                    Slog.w(TAG, "hideTransientBars with invalid displayId=" + displayId);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setNavBarVirtualKeyHapticFeedbackEnabled(boolean enabled) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.STATUS_BAR") != 0) {
            throw new SecurityException("Caller does not hold permission android.permission.STATUS_BAR");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mPolicy.setNavBarVirtualKeyHapticFeedbackEnabledLw(enabled);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public int getNavBarPosition(int displayId) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent == null) {
                    Slog.w(TAG, "getNavBarPosition with invalid displayId=" + displayId + " callers=" + Debug.getCallers(3));
                    return -1;
                }
                displayContent.performLayout(false, false);
                return displayContent.getDisplayPolicy().getNavBarPosition();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void createInputConsumer(IBinder token, String name, int displayId, InputChannel inputChannel) {
        if (!this.mAtmInternal.isCallerRecents(Binder.getCallingUid()) && this.mContext.checkCallingOrSelfPermission("android.permission.INPUT_CONSUMER") != 0) {
            throw new SecurityException("createInputConsumer requires INPUT_CONSUMER permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent display = this.mRoot.getDisplayContent(displayId);
                if (display != null) {
                    display.getInputMonitor().createInputConsumer(token, name, inputChannel, Binder.getCallingPid(), Binder.getCallingUserHandle());
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean destroyInputConsumer(String name, int displayId) {
        if (!this.mAtmInternal.isCallerRecents(Binder.getCallingUid()) && this.mContext.checkCallingOrSelfPermission("android.permission.INPUT_CONSUMER") != 0) {
            throw new SecurityException("destroyInputConsumer requires INPUT_CONSUMER permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent display = this.mRoot.getDisplayContent(displayId);
                if (display != null) {
                    return display.getInputMonitor().destroyInputConsumer(name);
                }
                return false;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public Region getCurrentImeTouchRegion() {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.RESTRICTED_VR_ACCESS") != 0) {
            throw new SecurityException("getCurrentImeTouchRegion is restricted to VR services");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                Region r = new Region();
                for (int i = this.mRoot.mChildren.size() - 1; i >= 0; i--) {
                    DisplayContent displayContent = (DisplayContent) this.mRoot.mChildren.get(i);
                    if (displayContent.mInputMethodWindow != null) {
                        displayContent.mInputMethodWindow.getTouchableRegion(r);
                        resetPriorityAfterLockedSection();
                        return r;
                    }
                }
                resetPriorityAfterLockedSection();
                return r;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public boolean hasNavigationBar(int displayId) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent dc = this.mRoot.getDisplayContent(displayId);
                if (dc == null) {
                    return false;
                }
                return dc.getDisplayPolicy().hasNavigationBar();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void lockNow(Bundle options) {
        this.mPolicy.lockNow(options);
    }

    public void showRecentApps() {
        this.mPolicy.showRecentApps();
    }

    public boolean isSafeModeEnabled() {
        return this.mSafeMode;
    }

    public boolean clearWindowContentFrameStats(IBinder token) {
        if (!checkCallingPermission("android.permission.FRAME_STATS", "clearWindowContentFrameStats()")) {
            throw new SecurityException("Requires FRAME_STATS permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                WindowState windowState = this.mWindowMap.get(token);
                if (windowState == null) {
                    return false;
                }
                WindowSurfaceController surfaceController = windowState.mWinAnimator.mSurfaceController;
                if (surfaceController == null) {
                    return false;
                }
                return surfaceController.clearWindowContentFrameStats();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public WindowContentFrameStats getWindowContentFrameStats(IBinder token) {
        if (!checkCallingPermission("android.permission.FRAME_STATS", "getWindowContentFrameStats()")) {
            throw new SecurityException("Requires FRAME_STATS permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                WindowState windowState = this.mWindowMap.get(token);
                if (windowState == null) {
                    return null;
                }
                WindowSurfaceController surfaceController = windowState.mWinAnimator.mSurfaceController;
                if (surfaceController == null) {
                    return null;
                }
                if (this.mTempWindowRenderStats == null) {
                    this.mTempWindowRenderStats = new WindowContentFrameStats();
                }
                WindowContentFrameStats stats = this.mTempWindowRenderStats;
                if (surfaceController.getWindowContentFrameStats(stats)) {
                    return stats;
                }
                return null;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    private void dumpPolicyLocked(PrintWriter pw, String[] args, boolean dumpAll) {
        pw.println("WINDOW MANAGER POLICY STATE (dumpsys window policy)");
        this.mPolicy.dump("    ", pw, args);
    }

    private void dumpAnimatorLocked(PrintWriter pw, String[] args, boolean dumpAll) {
        pw.println("WINDOW MANAGER ANIMATOR STATE (dumpsys window animator)");
        this.mAnimator.dumpLocked(pw, "    ", dumpAll);
    }

    private void dumpTokensLocked(PrintWriter pw, boolean dumpAll) {
        pw.println("WINDOW MANAGER TOKENS (dumpsys window tokens)");
        this.mRoot.dumpTokens(pw, dumpAll);
    }

    private void dumpHighRefreshRateBlacklist(PrintWriter pw) {
        pw.println("WINDOW MANAGER HIGH REFRESH RATE BLACKLIST (dumpsys window refresh)");
        this.mHighRefreshRateBlacklist.dump(pw);
    }

    private void dumpTraceStatus(PrintWriter pw) {
        pw.println("WINDOW MANAGER TRACE (dumpsys window trace)");
        pw.print(this.mWindowTracing.getStatus() + "\n");
    }

    private void dumpLogStatus(PrintWriter pw) {
        pw.println("WINDOW MANAGER LOGGING (dumpsys window logging)");
        pw.println(ProtoLogImpl.getSingleInstance().getStatus());
    }

    private void dumpSessionsLocked(PrintWriter pw, boolean dumpAll) {
        pw.println("WINDOW MANAGER SESSIONS (dumpsys window sessions)");
        for (int i = 0; i < this.mSessions.size(); i++) {
            Session s = this.mSessions.valueAt(i);
            pw.print("  Session ");
            pw.print(s);
            pw.println(':');
            s.dump(pw, "    ");
        }
    }

    void dumpDebugLocked(ProtoOutputStream proto, int logLevel) {
        this.mPolicy.dumpDebug(proto, 1146756268033L);
        this.mRoot.dumpDebug(proto, 1146756268034L, logLevel);
        DisplayContent topFocusedDisplayContent = this.mRoot.getTopFocusedDisplayContent();
        if (topFocusedDisplayContent.mCurrentFocus != null) {
            topFocusedDisplayContent.mCurrentFocus.writeIdentifierToProto(proto, 1146756268035L);
        }
        if (topFocusedDisplayContent.mFocusedApp != null) {
            topFocusedDisplayContent.mFocusedApp.writeNameToProto(proto, 1138166333444L);
        }
        WindowState imeWindow = this.mRoot.getCurrentInputMethodWindow();
        if (imeWindow != null) {
            imeWindow.writeIdentifierToProto(proto, 1146756268037L);
        }
        proto.write(1133871366150L, this.mDisplayFrozen);
        DisplayContent defaultDisplayContent = getDefaultDisplayContentLocked();
        proto.write(1120986464263L, defaultDisplayContent.getRotation());
        proto.write(1120986464264L, defaultDisplayContent.getLastOrientation());
        proto.write(1120986464265L, topFocusedDisplayContent.getDisplayId());
    }

    private void dumpWindowsLocked(PrintWriter pw, boolean dumpAll, ArrayList<WindowState> windows) {
        pw.println("WINDOW MANAGER WINDOWS (dumpsys window windows)");
        dumpWindowsNoHeaderLocked(pw, dumpAll, windows);
    }

    private void dumpWindowsNoHeaderLocked(final PrintWriter pw, boolean dumpAll, ArrayList<WindowState> windows) {
        this.mRoot.dumpWindowsNoHeader(pw, dumpAll, windows);
        if (!this.mHidingNonSystemOverlayWindows.isEmpty()) {
            pw.println();
            pw.println("  Hiding System Alert Windows:");
            for (int i = this.mHidingNonSystemOverlayWindows.size() - 1; i >= 0; i--) {
                WindowState w = this.mHidingNonSystemOverlayWindows.get(i);
                pw.print("  #");
                pw.print(i);
                pw.print(' ');
                pw.print(w);
                if (dumpAll) {
                    pw.println(":");
                    w.dump(pw, "    ", true);
                } else {
                    pw.println();
                }
            }
        }
        if (this.mPendingRemove.size() > 0) {
            pw.println();
            pw.println("  Remove pending for:");
            for (int i2 = this.mPendingRemove.size() - 1; i2 >= 0; i2--) {
                WindowState w2 = this.mPendingRemove.get(i2);
                if (windows == null || windows.contains(w2)) {
                    pw.print("  Remove #");
                    pw.print(i2);
                    pw.print(' ');
                    pw.print(w2);
                    if (dumpAll) {
                        pw.println(":");
                        w2.dump(pw, "    ", true);
                    } else {
                        pw.println();
                    }
                }
            }
        }
        ArrayList<WindowState> arrayList = this.mForceRemoves;
        if (arrayList != null && arrayList.size() > 0) {
            pw.println();
            pw.println("  Windows force removing:");
            for (int i3 = this.mForceRemoves.size() - 1; i3 >= 0; i3--) {
                WindowState w3 = this.mForceRemoves.get(i3);
                pw.print("  Removing #");
                pw.print(i3);
                pw.print(' ');
                pw.print(w3);
                if (dumpAll) {
                    pw.println(":");
                    w3.dump(pw, "    ", true);
                } else {
                    pw.println();
                }
            }
        }
        if (this.mDestroySurface.size() > 0) {
            pw.println();
            pw.println("  Windows waiting to destroy their surface:");
            for (int i4 = this.mDestroySurface.size() - 1; i4 >= 0; i4--) {
                WindowState w4 = this.mDestroySurface.get(i4);
                if (windows == null || windows.contains(w4)) {
                    pw.print("  Destroy #");
                    pw.print(i4);
                    pw.print(' ');
                    pw.print(w4);
                    if (dumpAll) {
                        pw.println(":");
                        w4.dump(pw, "    ", true);
                    } else {
                        pw.println();
                    }
                }
            }
        }
        if (this.mResizingWindows.size() > 0) {
            pw.println();
            pw.println("  Windows waiting to resize:");
            for (int i5 = this.mResizingWindows.size() - 1; i5 >= 0; i5--) {
                WindowState w5 = this.mResizingWindows.get(i5);
                if (windows == null || windows.contains(w5)) {
                    pw.print("  Resizing #");
                    pw.print(i5);
                    pw.print(' ');
                    pw.print(w5);
                    if (dumpAll) {
                        pw.println(":");
                        w5.dump(pw, "    ", true);
                    } else {
                        pw.println();
                    }
                }
            }
        }
        if (!this.mWaitingForDrawnCallbacks.isEmpty()) {
            pw.println();
            pw.println("  Clients waiting for these windows to be drawn:");
            this.mWaitingForDrawnCallbacks.forEach(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$KFQrpl8FvzNWOT1tc9e5RB7zVvk
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    WindowManagerService.lambda$dumpWindowsNoHeaderLocked$10(pw, (WindowContainer) obj, (Runnable) obj2);
                }
            });
        }
        pw.println();
        pw.print("  mGlobalConfiguration=");
        pw.println(this.mRoot.getConfiguration());
        pw.print("  mHasPermanentDpad=");
        pw.println(this.mHasPermanentDpad);
        this.mRoot.dumpTopFocusedDisplayId(pw);
        this.mRoot.forAllDisplays(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$uE6hRhWIGH2DDQfqukTuAYMej-4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WindowManagerService.lambda$dumpWindowsNoHeaderLocked$11(pw, (DisplayContent) obj);
            }
        });
        pw.print("  mInTouchMode=");
        pw.println(this.mInTouchMode);
        pw.print("  mLastDisplayFreezeDuration=");
        TimeUtils.formatDuration(this.mLastDisplayFreezeDuration, pw);
        if (this.mLastFinishedFreezeSource != null) {
            pw.print(" due to ");
            pw.print(this.mLastFinishedFreezeSource);
        }
        pw.println();
        pw.print("  mLastWakeLockHoldingWindow=");
        pw.print(this.mLastWakeLockHoldingWindow);
        pw.print(" mLastWakeLockObscuringWindow=");
        pw.print(this.mLastWakeLockObscuringWindow);
        pw.println();
        this.mInputManagerCallback.dump(pw, "  ");
        this.mTaskSnapshotController.dump(pw, "  ");
        AccessibilityController accessibilityController = this.mAccessibilityController;
        if (accessibilityController != null) {
            accessibilityController.dump(pw, "  ");
        }
        if (dumpAll) {
            WindowState imeWindow = this.mRoot.getCurrentInputMethodWindow();
            if (imeWindow != null) {
                pw.print("  mInputMethodWindow=");
                pw.println(imeWindow);
            }
            this.mWindowPlacerLocked.dump(pw, "  ");
            pw.print("  mSystemBooted=");
            pw.print(this.mSystemBooted);
            pw.print(" mDisplayEnabled=");
            pw.println(this.mDisplayEnabled);
            this.mRoot.dumpLayoutNeededDisplayIds(pw);
            pw.print("  mTransactionSequence=");
            pw.println(this.mTransactionSequence);
            pw.print("  mDisplayFrozen=");
            pw.print(this.mDisplayFrozen);
            pw.print(" windows=");
            pw.print(this.mWindowsFreezingScreen);
            pw.print(" client=");
            pw.print(this.mClientFreezingScreen);
            pw.print(" apps=");
            pw.print(this.mAppsFreezingScreen);
            DisplayContent defaultDisplayContent = getDefaultDisplayContentLocked();
            pw.print("  mRotation=");
            pw.print(defaultDisplayContent.getRotation());
            pw.print("  mLastOrientation=");
            pw.println(defaultDisplayContent.getLastOrientation());
            pw.print(" waitingForConfig=");
            pw.println(defaultDisplayContent.mWaitingForConfig);
            pw.print("  Animation settings: disabled=");
            pw.print(this.mAnimationsDisabled);
            pw.print(" window=");
            pw.print(this.mWindowAnimationScaleSetting);
            pw.print(" transition=");
            pw.print(this.mTransitionAnimationScaleSetting);
            pw.print(" animator=");
            pw.println(this.mAnimatorDurationScaleSetting);
            if (this.mRecentsAnimationController != null) {
                pw.print("  mRecentsAnimationController=");
                pw.println(this.mRecentsAnimationController);
                this.mRecentsAnimationController.dump(pw, "    ");
            }
            PolicyControl.dump("  ", pw);
        }
    }

    static /* synthetic */ void lambda$dumpWindowsNoHeaderLocked$10(PrintWriter pw, WindowContainer wc, Runnable callback) {
        pw.print("  WindowContainer ");
        pw.println(wc.getName());
        for (int i = wc.mWaitingForDrawn.size() - 1; i >= 0; i--) {
            WindowState win = wc.mWaitingForDrawn.get(i);
            pw.print("  Waiting #");
            pw.print(i);
            pw.print(' ');
            pw.print(win);
        }
    }

    static /* synthetic */ void lambda$dumpWindowsNoHeaderLocked$11(PrintWriter pw, DisplayContent dc) {
        int displayId = dc.getDisplayId();
        WindowState inputMethodTarget = dc.mInputMethodTarget;
        WindowState inputMethodInputTarget = dc.mInputMethodInputTarget;
        InsetsControlTarget inputMethodControlTarget = dc.mInputMethodControlTarget;
        if (inputMethodTarget != null) {
            pw.print("  mInputMethodTarget in display# ");
            pw.print(displayId);
            pw.print(' ');
            pw.println(inputMethodTarget);
        }
        if (inputMethodInputTarget != null) {
            pw.print("  mInputMethodInputTarget in display# ");
            pw.print(displayId);
            pw.print(' ');
            pw.println(inputMethodInputTarget);
        }
        if (inputMethodControlTarget != null) {
            pw.print("  inputMethodControlTarget in display# ");
            pw.print(displayId);
            pw.print(' ');
            pw.println(inputMethodControlTarget);
        }
    }

    private boolean dumpWindows(PrintWriter pw, String name, String[] args, int opti, boolean dumpAll) {
        final ArrayList<WindowState> windows = new ArrayList<>();
        if ("apps".equals(name) || "visible".equals(name) || "visible-apps".equals(name)) {
            final boolean appsOnly = name.contains("apps");
            final boolean visibleOnly = name.contains("visible");
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    if (appsOnly) {
                        this.mRoot.dumpDisplayContents(pw);
                    }
                    this.mRoot.forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$qvS1sttfB-sbufxV7e_mRw2hV0w
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            WindowManagerService.lambda$dumpWindows$12(visibleOnly, appsOnly, windows, (WindowState) obj);
                        }
                    }, true);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
        } else {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    this.mRoot.getWindowsByName(windows, name);
                } catch (Throwable th2) {
                    resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            resetPriorityAfterLockedSection();
        }
        if (windows.size() <= 0) {
            return false;
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                dumpWindowsLocked(pw, dumpAll, windows);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return true;
    }

    static /* synthetic */ void lambda$dumpWindows$12(boolean visibleOnly, boolean appsOnly, ArrayList windows, WindowState w) {
        if (!visibleOnly || w.isVisible()) {
            if (!appsOnly || w.mActivityRecord != null) {
                windows.add(w);
            }
        }
    }

    private void dumpLastANRLocked(PrintWriter pw) {
        pw.println("WINDOW MANAGER LAST ANR (dumpsys window lastanr)");
        String str = this.mLastANRState;
        if (str == null) {
            pw.println("  <no ANR has occurred since boot>");
        } else {
            pw.println(str);
        }
    }

    void saveANRStateLocked(ActivityRecord activity, WindowState windowState, String reason) {
        StringWriter sw = new StringWriter();
        PrintWriter pw = new FastPrintWriter(sw, false, 1024);
        pw.println("  ANR time: " + DateFormat.getDateTimeInstance().format(new Date()));
        if (activity != null) {
            pw.println("  Application at fault: " + activity.stringName);
        }
        if (windowState != null) {
            pw.println("  Window at fault: " + ((Object) windowState.mAttrs.getTitle()));
        }
        if (reason != null) {
            pw.println("  Reason: " + reason);
        }
        for (int i = this.mRoot.getChildCount() - 1; i >= 0; i--) {
            DisplayContent dc = (DisplayContent) this.mRoot.getChildAt(i);
            int displayId = dc.getDisplayId();
            if (!dc.mWinAddedSinceNullFocus.isEmpty()) {
                pw.println("  Windows added in display #" + displayId + " since null focus: " + dc.mWinAddedSinceNullFocus);
            }
            if (!dc.mWinRemovedSinceNullFocus.isEmpty()) {
                pw.println("  Windows removed in display #" + displayId + " since null focus: " + dc.mWinRemovedSinceNullFocus);
            }
        }
        pw.println();
        dumpWindowsNoHeaderLocked(pw, true, null);
        pw.println();
        pw.println("Last ANR continued");
        this.mRoot.dumpDisplayContents(pw);
        pw.close();
        this.mLastANRState = sw.toString();
        this.mH.removeMessages(38);
        this.mH.sendEmptyMessageDelayed(38, AppStandbyController.SettingsObserver.DEFAULT_SYSTEM_UPDATE_TIMEOUT);
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        PriorityDump.dump(this.mPriorityDumper, fd, pw, args);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doDump(FileDescriptor fd, final PrintWriter pw, String[] args, boolean useProto) {
        String opt;
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            boolean dumpAll = false;
            int opti = 0;
            while (opti < args.length && (opt = args[opti]) != null && opt.length() > 0 && opt.charAt(0) == '-') {
                opti++;
                if ("-a".equals(opt)) {
                    dumpAll = true;
                } else {
                    if ("-h".equals(opt)) {
                        pw.println("Window manager dump options:");
                        pw.println("  [-a] [-h] [cmd] ...");
                        pw.println("  cmd may be one of:");
                        pw.println("    l[astanr]: last ANR information");
                        pw.println("    p[policy]: policy state");
                        pw.println("    a[animator]: animator state");
                        pw.println("    s[essions]: active sessions");
                        pw.println("    surfaces: active surfaces (debugging enabled only)");
                        pw.println("    d[isplays]: active display contents");
                        pw.println("    t[okens]: token list");
                        pw.println("    w[indows]: window list");
                        pw.println("    trace: print trace status and write Winscope trace to file");
                        pw.println("  cmd may also be a NAME to dump windows.  NAME may");
                        pw.println("    be a partial substring in a window name, a");
                        pw.println("    Window hex object identifier, or");
                        pw.println("    \"all\" for all windows, or");
                        pw.println("    \"visible\" for the visible windows.");
                        pw.println("    \"visible-apps\" for the visible app windows.");
                        pw.println("  -a: include all available server state.");
                        pw.println("  --proto: output dump in protocol buffer format.");
                        return;
                    }
                    pw.println("Unknown argument: " + opt + "; use -h for help");
                }
            }
            if (useProto) {
                ProtoOutputStream proto = new ProtoOutputStream(fd);
                synchronized (this.mGlobalLock) {
                    try {
                        boostPriorityForLockedSection();
                        dumpDebugLocked(proto, 0);
                    } catch (Throwable th) {
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                resetPriorityAfterLockedSection();
                proto.flush();
                return;
            }
            if (opti < args.length) {
                String cmd = args[opti];
                int opti2 = opti + 1;
                if (ActivityTaskManagerService.DUMP_LASTANR_CMD.equals(cmd) || "l".equals(cmd)) {
                    synchronized (this.mGlobalLock) {
                        try {
                            boostPriorityForLockedSection();
                            dumpLastANRLocked(pw);
                        } finally {
                            resetPriorityAfterLockedSection();
                        }
                    }
                    return;
                }
                if ("policy".equals(cmd) || "p".equals(cmd)) {
                    synchronized (this.mGlobalLock) {
                        try {
                            boostPriorityForLockedSection();
                            dumpPolicyLocked(pw, args, true);
                        } finally {
                            resetPriorityAfterLockedSection();
                        }
                    }
                    return;
                }
                if ("animator".equals(cmd) || ActivityTaskManagerService.DUMP_ACTIVITIES_SHORT_CMD.equals(cmd)) {
                    synchronized (this.mGlobalLock) {
                        try {
                            boostPriorityForLockedSection();
                            dumpAnimatorLocked(pw, args, true);
                        } finally {
                            resetPriorityAfterLockedSection();
                        }
                    }
                    return;
                }
                if ("sessions".equals(cmd) || "s".equals(cmd)) {
                    synchronized (this.mGlobalLock) {
                        try {
                            boostPriorityForLockedSection();
                            dumpSessionsLocked(pw, true);
                        } finally {
                            resetPriorityAfterLockedSection();
                        }
                    }
                    return;
                }
                if ("displays".equals(cmd) || "d".equals(cmd)) {
                    synchronized (this.mGlobalLock) {
                        try {
                            boostPriorityForLockedSection();
                            this.mRoot.dumpDisplayContents(pw);
                        } finally {
                            resetPriorityAfterLockedSection();
                        }
                    }
                    return;
                }
                if ("tokens".equals(cmd) || "t".equals(cmd)) {
                    synchronized (this.mGlobalLock) {
                        try {
                            boostPriorityForLockedSection();
                            dumpTokensLocked(pw, true);
                        } finally {
                            resetPriorityAfterLockedSection();
                        }
                    }
                    return;
                }
                if ("windows".equals(cmd) || "w".equals(cmd)) {
                    synchronized (this.mGlobalLock) {
                        try {
                            boostPriorityForLockedSection();
                            dumpWindowsLocked(pw, true, null);
                        } finally {
                            resetPriorityAfterLockedSection();
                        }
                    }
                    return;
                }
                if ("all".equals(cmd)) {
                    synchronized (this.mGlobalLock) {
                        try {
                            boostPriorityForLockedSection();
                            dumpWindowsLocked(pw, true, null);
                        } finally {
                            resetPriorityAfterLockedSection();
                        }
                    }
                    return;
                }
                if (ActivityTaskManagerService.DUMP_CONTAINERS_CMD.equals(cmd)) {
                    synchronized (this.mGlobalLock) {
                        try {
                            boostPriorityForLockedSection();
                            this.mRoot.dumpChildrenNames(pw, " ");
                            pw.println(" ");
                            this.mRoot.forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$nuQPCjHQ4t83NR-tVT9X0JlxHXU
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    pw.println((WindowState) obj);
                                }
                            }, true);
                        } finally {
                            resetPriorityAfterLockedSection();
                        }
                    }
                    return;
                }
                if ("trace".equals(cmd)) {
                    dumpTraceStatus(pw);
                    return;
                }
                if ("logging".equals(cmd)) {
                    dumpLogStatus(pw);
                    return;
                }
                if ("refresh".equals(cmd)) {
                    dumpHighRefreshRateBlacklist(pw);
                    return;
                }
                if ("constants".equals(cmd)) {
                    this.mConstants.dump(pw);
                    return;
                }
                if (!dumpWindows(pw, cmd, args, opti2, dumpAll)) {
                    pw.println("Bad window command, or no windows match: " + cmd);
                    pw.println("Use -h for help.");
                    return;
                }
                return;
            }
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    pw.println();
                    if (dumpAll) {
                        pw.println("-------------------------------------------------------------------------------");
                    }
                    dumpLastANRLocked(pw);
                    pw.println();
                    if (dumpAll) {
                        pw.println("-------------------------------------------------------------------------------");
                    }
                    dumpPolicyLocked(pw, args, dumpAll);
                    pw.println();
                    if (dumpAll) {
                        pw.println("-------------------------------------------------------------------------------");
                    }
                    dumpAnimatorLocked(pw, args, dumpAll);
                    pw.println();
                    if (dumpAll) {
                        pw.println("-------------------------------------------------------------------------------");
                    }
                    dumpSessionsLocked(pw, dumpAll);
                    pw.println();
                    if (dumpAll) {
                        pw.println("-------------------------------------------------------------------------------");
                    }
                    if (dumpAll) {
                        pw.println("-------------------------------------------------------------------------------");
                    }
                    this.mRoot.dumpDisplayContents(pw);
                    pw.println();
                    if (dumpAll) {
                        pw.println("-------------------------------------------------------------------------------");
                    }
                    dumpTokensLocked(pw, dumpAll);
                    pw.println();
                    if (dumpAll) {
                        pw.println("-------------------------------------------------------------------------------");
                    }
                    dumpWindowsLocked(pw, dumpAll, null);
                    if (dumpAll) {
                        pw.println("-------------------------------------------------------------------------------");
                    }
                    dumpTraceStatus(pw);
                    if (dumpAll) {
                        pw.println("-------------------------------------------------------------------------------");
                    }
                    dumpLogStatus(pw);
                    if (dumpAll) {
                        pw.println("-------------------------------------------------------------------------------");
                    }
                    dumpHighRefreshRateBlacklist(pw);
                    if (dumpAll) {
                        pw.println("-------------------------------------------------------------------------------");
                    }
                    this.mConstants.dump(pw);
                } finally {
                    resetPriorityAfterLockedSection();
                }
            }
        }
    }

    @Override // com.android.server.Watchdog.Monitor
    public void monitor() {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    DisplayContent getDefaultDisplayContentLocked() {
        return this.mRoot.getDisplayContent(0);
    }

    public void onOverlayChanged() {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mRoot.forAllDisplays(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$znDC8XnIA9e5x3wxigHHeDGpL_U
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        WindowManagerService.lambda$onOverlayChanged$14((DisplayContent) obj);
                    }
                });
                requestTraversal();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    static /* synthetic */ void lambda$onOverlayChanged$14(DisplayContent displayContent) {
        displayContent.getDisplayPolicy().onOverlayChangedLw();
        displayContent.updateDisplayInfo();
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowManagerFuncs
    public Object getWindowManagerLock() {
        return this.mGlobalLock;
    }

    void setWillReplaceWindow(IBinder token, boolean animate) {
        ActivityRecord activity = this.mRoot.getActivityRecord(token);
        if (activity == null) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam0 = String.valueOf(token);
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -1661704580, 0, "Attempted to set replacing window on non-existing app token %s", protoLogParam0);
                return;
            }
            return;
        }
        if (!activity.hasContentToDisplay()) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam1 = String.valueOf(token);
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -1270731689, 0, "Attempted to set replacing window on app token with no content %s", protoLogParam1);
                return;
            }
            return;
        }
        activity.setWillReplaceWindows(animate);
    }

    void setWillReplaceWindows(IBinder token, boolean childrenOnly) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                ActivityRecord activity = this.mRoot.getActivityRecord(token);
                if (activity == null) {
                    if (ProtoLog$Cache.WM_ERROR_enabled) {
                        String protoLogParam0 = String.valueOf(token);
                        ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -1661704580, 0, "Attempted to set replacing window on non-existing app token %s", protoLogParam0);
                    }
                } else if (!activity.hasContentToDisplay()) {
                    if (ProtoLog$Cache.WM_ERROR_enabled) {
                        String protoLogParam1 = String.valueOf(token);
                        ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -1270731689, 0, "Attempted to set replacing window on app token with no content %s", protoLogParam1);
                    }
                } else {
                    if (childrenOnly) {
                        activity.setWillReplaceChildWindows();
                    } else {
                        activity.setWillReplaceWindows(false);
                    }
                    scheduleClearWillReplaceWindows(token, true);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void scheduleClearWillReplaceWindows(IBinder token, boolean replacing) {
        ActivityRecord activity = this.mRoot.getActivityRecord(token);
        if (activity == null) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                String protoLogParam0 = String.valueOf(token);
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 38267433, 0, "Attempted to reset replacing window on non-existing app token %s", protoLogParam0);
                return;
            }
            return;
        }
        if (replacing) {
            scheduleWindowReplacementTimeouts(activity);
        } else {
            activity.clearWillReplaceWindows();
        }
    }

    void scheduleWindowReplacementTimeouts(ActivityRecord activity) {
        if (!this.mWindowReplacementTimeouts.contains(activity)) {
            this.mWindowReplacementTimeouts.add(activity);
        }
        this.mH.removeMessages(46);
        this.mH.sendEmptyMessageDelayed(46, 2000L);
    }

    public int getDockedStackSide() {
        return 0;
    }

    void setDockedStackResizing(boolean resizing) {
        getDefaultDisplayContentLocked().getDockedDividerController().setResizing(resizing);
        requestTraversal();
    }

    public void setDockedStackDividerTouchRegion(Rect touchRegion) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent dc = getDefaultDisplayContentLocked();
                dc.getDockedDividerController().setTouchRegion(touchRegion);
                dc.updateTouchExcludeRegion();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void setForceDesktopModeOnExternalDisplays(boolean forceDesktopModeOnExternalDisplays) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mForceDesktopModeOnExternalDisplays = forceDesktopModeOnExternalDisplays;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void setIsPc(boolean isPc) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mIsPc = isPc;
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    static int dipToPixel(int dip, DisplayMetrics displayMetrics) {
        return (int) TypedValue.applyDimension(1, dip, displayMetrics);
    }

    public void registerPinnedStackListener(int displayId, IPinnedStackListener listener) {
        if (!checkCallingPermission("android.permission.REGISTER_WINDOW_MANAGER_LISTENERS", "registerPinnedStackListener()") || !this.mAtmService.mSupportsPictureInPicture) {
            return;
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                displayContent.getPinnedStackController().registerPinnedStackListener(listener);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void requestAppKeyboardShortcuts(IResultReceiver receiver, int deviceId) {
        try {
            WindowState focusedWindow = getFocusedWindow();
            if (focusedWindow != null && focusedWindow.mClient != null) {
                getFocusedWindow().mClient.requestAppKeyboardShortcuts(receiver, deviceId);
            }
        } catch (RemoteException e) {
        }
    }

    public void getStableInsets(int displayId, Rect outInsets) throws RemoteException {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                getStableInsetsLocked(displayId, outInsets);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void getStableInsetsLocked(int displayId, Rect outInsets) {
        outInsets.setEmpty();
        DisplayContent dc = this.mRoot.getDisplayContent(displayId);
        if (dc != null) {
            DisplayInfo di = dc.getDisplayInfo();
            dc.getDisplayPolicy().getStableInsetsLw(di.rotation, di.logicalWidth, di.logicalHeight, di.displayCutout, outInsets);
        }
    }

    public void setForwardedInsets(int displayId, Insets insets) throws RemoteException {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent dc = this.mRoot.getDisplayContent(displayId);
                if (dc == null) {
                    resetPriorityAfterLockedSection();
                    return;
                }
                int callingUid = Binder.getCallingUid();
                int displayOwnerUid = dc.getDisplay().getOwnerUid();
                if (callingUid != displayOwnerUid) {
                    throw new SecurityException("Only owner of the display can set ForwardedInsets to it.");
                }
                dc.setForwardedInsets(insets);
                resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    void intersectDisplayInsetBounds(Rect display, Rect insets, Rect inOutBounds) {
        this.mTmpRect3.set(display);
        this.mTmpRect3.inset(insets);
        inOutBounds.intersect(this.mTmpRect3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class MousePositionTracker implements WindowManagerPolicyConstants.PointerEventListener {
        private boolean mLatestEventWasMouse;
        private float mLatestMouseX;
        private float mLatestMouseY;

        private MousePositionTracker() {
        }

        void updatePosition(float x, float y) {
            synchronized (this) {
                this.mLatestEventWasMouse = true;
                this.mLatestMouseX = x;
                this.mLatestMouseY = y;
            }
        }

        public void onPointerEvent(MotionEvent motionEvent) {
            if (motionEvent.isFromSource(UsbACInterface.FORMAT_III_IEC1937_MPEG1_Layer1)) {
                updatePosition(motionEvent.getRawX(), motionEvent.getRawY());
            } else {
                synchronized (this) {
                    this.mLatestEventWasMouse = false;
                }
            }
        }
    }

    void updatePointerIcon(IWindow client) {
        synchronized (this.mMousePositionTracker) {
            if (this.mMousePositionTracker.mLatestEventWasMouse) {
                float mouseX = this.mMousePositionTracker.mLatestMouseX;
                float mouseY = this.mMousePositionTracker.mLatestMouseY;
                synchronized (this.mGlobalLock) {
                    try {
                        boostPriorityForLockedSection();
                        if (this.mDragDropController.dragDropActiveLocked()) {
                            resetPriorityAfterLockedSection();
                            return;
                        }
                        WindowState callingWin = windowForClientLocked((Session) null, client, false);
                        if (callingWin == null) {
                            if (ProtoLog$Cache.WM_ERROR_enabled) {
                                String protoLogParam0 = String.valueOf(client);
                                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1325649102, 0, "Bad requesting window %s", protoLogParam0);
                            }
                            resetPriorityAfterLockedSection();
                            return;
                        }
                        DisplayContent displayContent = callingWin.getDisplayContent();
                        if (displayContent == null) {
                            resetPriorityAfterLockedSection();
                            return;
                        }
                        WindowState windowUnderPointer = displayContent.getTouchableWinAtPointLocked(mouseX, mouseY);
                        if (windowUnderPointer != callingWin) {
                            resetPriorityAfterLockedSection();
                            return;
                        }
                        try {
                            windowUnderPointer.mClient.updatePointerIcon(windowUnderPointer.translateToWindowX(mouseX), windowUnderPointer.translateToWindowY(mouseY));
                        } catch (RemoteException e) {
                            if (ProtoLog$Cache.WM_ERROR_enabled) {
                                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -393505149, 0, "unable to update pointer icon", (Object[]) null);
                            }
                        }
                        resetPriorityAfterLockedSection();
                    } catch (Throwable th) {
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
            }
        }
    }

    void restorePointerIconLocked(DisplayContent displayContent, float latestX, float latestY) {
        this.mMousePositionTracker.updatePosition(latestX, latestY);
        WindowState windowUnderPointer = displayContent.getTouchableWinAtPointLocked(latestX, latestY);
        if (windowUnderPointer != null) {
            try {
                windowUnderPointer.mClient.updatePointerIcon(windowUnderPointer.translateToWindowX(latestX), windowUnderPointer.translateToWindowY(latestY));
                return;
            } catch (RemoteException e) {
                if (ProtoLog$Cache.WM_ERROR_enabled) {
                    ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1423418408, 0, "unable to restore pointer icon", (Object[]) null);
                    return;
                }
                return;
            }
        }
        InputManager.getInstance().setPointerIconType(1000);
    }

    private void checkCallerOwnsDisplay(int displayId) {
        Display display = this.mDisplayManager.getDisplay(displayId);
        if (display == null) {
            throw new IllegalArgumentException("Cannot find display for non-existent displayId: " + displayId);
        }
        int callingUid = Binder.getCallingUid();
        int displayOwnerUid = display.getOwnerUid();
        if (callingUid != displayOwnerUid) {
            throw new SecurityException("The caller doesn't own the display.");
        }
    }

    void reparentDisplayContent(IWindow client, SurfaceControl sc, int displayId) {
        checkCallerOwnsDisplay(displayId);
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                long token = Binder.clearCallingIdentity();
                try {
                    WindowState win = windowForClientLocked((Session) null, client, false);
                    if (win == null) {
                        if (ProtoLog$Cache.WM_ERROR_enabled) {
                            String protoLogParam0 = String.valueOf(client);
                            ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1325649102, 0, "Bad requesting window %s", protoLogParam0);
                        }
                        Binder.restoreCallingIdentity(token);
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    getDisplayContentOrCreate(displayId, null).reparentDisplayContent(win, sc);
                    if (this.mAccessibilityController != null) {
                        this.mAccessibilityController.handleWindowObserverOfEmbeddedDisplayLocked(displayId, win);
                    }
                    Binder.restoreCallingIdentity(token);
                    resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    void updateDisplayContentLocation(IWindow client, int x, int y, int displayId) {
        checkCallerOwnsDisplay(displayId);
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                long token = Binder.clearCallingIdentity();
                try {
                    WindowState win = windowForClientLocked((Session) null, client, false);
                    if (win == null) {
                        if (ProtoLog$Cache.WM_ERROR_enabled) {
                            String protoLogParam0 = String.valueOf(client);
                            ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1325649102, 0, "Bad requesting window %s", protoLogParam0);
                        }
                        Binder.restoreCallingIdentity(token);
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                    if (displayContent != null) {
                        displayContent.updateLocation(win, x, y);
                    }
                    Binder.restoreCallingIdentity(token);
                    resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    void updateTapExcludeRegion(IWindow client, Region region) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                WindowState callingWin = windowForClientLocked((Session) null, client, false);
                if (callingWin == null) {
                    if (ProtoLog$Cache.WM_ERROR_enabled) {
                        String protoLogParam0 = String.valueOf(client);
                        ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1325649102, 0, "Bad requesting window %s", protoLogParam0);
                    }
                    return;
                }
                callingWin.updateTapExcludeRegion(region);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void requestScrollCapture(int displayId, IBinder behindClient, int taskId, IScrollCaptureController controller) throws Throwable {
        if (!checkCallingPermission("android.permission.READ_FRAME_BUFFER", "requestScrollCapture()")) {
            throw new SecurityException("Requires READ_FRAME_BUFFER permission");
        }
        long token = Binder.clearCallingIdentity();
        try {
            try {
                try {
                    try {
                        synchronized (this.mGlobalLock) {
                            try {
                                boostPriorityForLockedSection();
                                DisplayContent dc = this.mRoot.getDisplayContent(displayId);
                                if (dc == null) {
                                    if (ProtoLog$Cache.WM_ERROR_enabled) {
                                        long protoLogParam0 = displayId;
                                        ProtoLogImpl.e(ProtoLogGroup.WM_ERROR, 646981048, 1, "Invalid displayId for requestScrollCapture: %d", Long.valueOf(protoLogParam0));
                                    }
                                    controller.onClientUnavailable();
                                    resetPriorityAfterLockedSection();
                                    Binder.restoreCallingIdentity(token);
                                    return;
                                }
                                WindowState topWindow = behindClient != null ? windowForClientLocked((Session) null, behindClient, true) : null;
                                try {
                                    WindowState targetWindow = dc.findScrollCaptureTargetWindow(topWindow, taskId);
                                    if (targetWindow == null) {
                                        controller.onClientUnavailable();
                                        resetPriorityAfterLockedSection();
                                        Binder.restoreCallingIdentity(token);
                                        return;
                                    }
                                    try {
                                        try {
                                            targetWindow.mClient.requestScrollCapture(controller);
                                        } catch (RemoteException e) {
                                            e = e;
                                            if (ProtoLog$Cache.WM_ERROR_enabled) {
                                                String protoLogParam1 = String.valueOf(targetWindow.mClient.asBinder());
                                                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -1517908912, 0, "requestScrollCapture: caught exception dispatching to window.token=%s", protoLogParam1);
                                            }
                                            controller.onClientUnavailable();
                                        }
                                    } catch (RemoteException e2) {
                                        e = e2;
                                    }
                                    resetPriorityAfterLockedSection();
                                    Binder.restoreCallingIdentity(token);
                                } catch (Throwable th) {
                                    th = th;
                                    resetPriorityAfterLockedSection();
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    } catch (RemoteException e3) {
                        e = e3;
                        if (ProtoLog$Cache.WM_ERROR_enabled) {
                            String protoLogParam2 = String.valueOf(e);
                            ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1046922686, 0, "requestScrollCapture: caught exception dispatching callback: %s", protoLogParam2);
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        } catch (RemoteException e4) {
            e = e4;
        } catch (Throwable th5) {
            th = th5;
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    public void dontOverrideDisplayInfo(int displayId) {
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent dc = getDisplayContentOrCreate(displayId, null);
                    if (dc == null) {
                        throw new IllegalArgumentException("Trying to configure a non existent display.");
                    }
                    dc.mShouldOverrideDisplayConfiguration = false;
                    this.mDisplayManagerInternal.setDisplayInfoOverrideFromWindowManager(displayId, (DisplayInfo) null);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(token);
            throw th2;
        }
    }

    public int getWindowingMode(int displayId) {
        if (!checkCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW", "getWindowingMode()")) {
            throw new SecurityException("Requires INTERNAL_SYSTEM_WINDOW permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent == null) {
                    if (ProtoLog$Cache.WM_ERROR_enabled) {
                        long protoLogParam0 = displayId;
                        ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 51628177, 1, "Attempted to get windowing mode of a display that does not exist: %d", Long.valueOf(protoLogParam0));
                    }
                    return 0;
                }
                return this.mDisplayWindowSettings.getWindowingModeLocked(displayContent);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setWindowingMode(int displayId, int mode) {
        if (!checkCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW", "setWindowingMode()")) {
            throw new SecurityException("Requires INTERNAL_SYSTEM_WINDOW permission");
        }
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent displayContent = getDisplayContentOrCreate(displayId, null);
                    if (displayContent == null) {
                        if (ProtoLog$Cache.WM_ERROR_enabled) {
                            long protoLogParam0 = displayId;
                            ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -1838803135, 1, "Attempted to set windowing mode to a display that does not exist: %d", Long.valueOf(protoLogParam0));
                        }
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return;
                    }
                    int lastWindowingMode = displayContent.getWindowingMode();
                    this.mDisplayWindowSettings.setWindowingModeLocked(displayContent, mode);
                    displayContent.reconfigureDisplayLocked();
                    if (lastWindowingMode != displayContent.getWindowingMode()) {
                        displayContent.sendNewConfiguration();
                        displayContent.executeAppTransition();
                    }
                    resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public int getRemoveContentMode(int displayId) {
        if (!checkCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW", "getRemoveContentMode()")) {
            throw new SecurityException("Requires INTERNAL_SYSTEM_WINDOW permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent == null) {
                    if (ProtoLog$Cache.WM_ERROR_enabled) {
                        long protoLogParam0 = displayId;
                        ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -496681057, 1, "Attempted to get remove mode of a display that does not exist: %d", Long.valueOf(protoLogParam0));
                    }
                    return 0;
                }
                return this.mDisplayWindowSettings.getRemoveContentModeLocked(displayContent);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setRemoveContentMode(int displayId, int mode) {
        if (!checkCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW", "setRemoveContentMode()")) {
            throw new SecurityException("Requires INTERNAL_SYSTEM_WINDOW permission");
        }
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent displayContent = getDisplayContentOrCreate(displayId, null);
                    if (displayContent == null) {
                        if (ProtoLog$Cache.WM_ERROR_enabled) {
                            long protoLogParam0 = displayId;
                            ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 288485303, 1, "Attempted to set remove mode to a display that does not exist: %d", Long.valueOf(protoLogParam0));
                        }
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return;
                    }
                    this.mDisplayWindowSettings.setRemoveContentModeLocked(displayContent, mode);
                    displayContent.reconfigureDisplayLocked();
                    resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public boolean shouldShowWithInsecureKeyguard(int displayId) {
        if (!checkCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW", "shouldShowWithInsecureKeyguard()")) {
            throw new SecurityException("Requires INTERNAL_SYSTEM_WINDOW permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent == null) {
                    if (ProtoLog$Cache.WM_ERROR_enabled) {
                        long protoLogParam0 = displayId;
                        ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1434383382, 1, "Attempted to get flag of a display that does not exist: %d", Long.valueOf(protoLogParam0));
                    }
                    return false;
                }
                return this.mDisplayWindowSettings.shouldShowWithInsecureKeyguardLocked(displayContent);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setShouldShowWithInsecureKeyguard(int displayId, boolean shouldShow) {
        if (!checkCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW", "setShouldShowWithInsecureKeyguard()")) {
            throw new SecurityException("Requires INTERNAL_SYSTEM_WINDOW permission");
        }
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent displayContent = getDisplayContentOrCreate(displayId, null);
                    if (displayContent == null) {
                        if (ProtoLog$Cache.WM_ERROR_enabled) {
                            long protoLogParam0 = displayId;
                            ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1521476038, 1, "Attempted to set flag to a display that does not exist: %d", Long.valueOf(protoLogParam0));
                        }
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return;
                    }
                    this.mDisplayWindowSettings.setShouldShowWithInsecureKeyguardLocked(displayContent, shouldShow);
                    displayContent.reconfigureDisplayLocked();
                    resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public boolean shouldShowSystemDecors(int displayId) {
        if (!checkCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW", "shouldShowSystemDecors()")) {
            throw new SecurityException("Requires INTERNAL_SYSTEM_WINDOW permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent == null) {
                    if (ProtoLog$Cache.WM_ERROR_enabled) {
                        long protoLogParam0 = displayId;
                        ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 11060725, 1, "Attempted to get system decors flag of a display that does not exist: %d", Long.valueOf(protoLogParam0));
                    }
                    return false;
                }
                return displayContent.supportsSystemDecorations();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setShouldShowSystemDecors(int displayId, boolean shouldShow) {
        if (!checkCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW", "setShouldShowSystemDecors()")) {
            throw new SecurityException("Requires INTERNAL_SYSTEM_WINDOW permission");
        }
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent displayContent = getDisplayContentOrCreate(displayId, null);
                    if (displayContent == null) {
                        if (ProtoLog$Cache.WM_ERROR_enabled) {
                            long protoLogParam0 = displayId;
                            ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, -386552155, 1, "Attempted to set system decors flag to a display that does not exist: %d", Long.valueOf(protoLogParam0));
                        }
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return;
                    }
                    if (!displayContent.isTrusted()) {
                        throw new SecurityException("Attempted to set system decors flag to an untrusted virtual display: " + displayId);
                    }
                    this.mDisplayWindowSettings.setShouldShowSystemDecorsLocked(displayContent, shouldShow);
                    displayContent.reconfigureDisplayLocked();
                    resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public boolean shouldShowIme(int displayId) {
        boolean show;
        if (!checkCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW", "shouldShowIme()")) {
            throw new SecurityException("Requires INTERNAL_SYSTEM_WINDOW permission");
        }
        DisplayContent dc = this.mRoot.getDisplayContent(displayId);
        if (dc == null) {
            if (ProtoLog$Cache.WM_ERROR_enabled) {
                long protoLogParam0 = displayId;
                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 95281111, 1, "Attempted to get IME flag of a display that does not exist: %d", Long.valueOf(protoLogParam0));
            }
            return false;
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                show = dc.canShowIme();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        return show;
    }

    public void setShouldShowIme(int displayId, boolean shouldShow) {
        if (!checkCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW", "setShouldShowIme()")) {
            throw new SecurityException("Requires INTERNAL_SYSTEM_WINDOW permission");
        }
        long origId = Binder.clearCallingIdentity();
        try {
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    DisplayContent displayContent = getDisplayContentOrCreate(displayId, null);
                    if (displayContent == null) {
                        if (ProtoLog$Cache.WM_ERROR_enabled) {
                            long protoLogParam0 = displayId;
                            ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 91350919, 1, "Attempted to set IME flag to a display that does not exist: %d", Long.valueOf(protoLogParam0));
                        }
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return;
                    }
                    if (!displayContent.isTrusted()) {
                        throw new SecurityException("Attempted to set IME flag to an untrusted virtual display: " + displayId);
                    }
                    this.mDisplayWindowSettings.setShouldShowImeLocked(displayContent, shouldShow);
                    displayContent.reconfigureDisplayLocked();
                    resetPriorityAfterLockedSection();
                    Binder.restoreCallingIdentity(origId);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(origId);
            throw th2;
        }
    }

    public void registerShortcutKey(long shortcutCode, IShortcutService shortcutKeyReceiver) throws RemoteException {
        if (!checkCallingPermission("android.permission.REGISTER_WINDOW_MANAGER_LISTENERS", "registerShortcutKey")) {
            throw new SecurityException("Requires REGISTER_WINDOW_MANAGER_LISTENERS permission");
        }
        this.mPolicy.registerShortcutKey(shortcutCode, shortcutKeyReceiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class LocalService extends WindowManagerInternal {
        private LocalService() {
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void clearSnapshotCache() {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowManagerService.this.mTaskSnapshotController.clearSnapshotCache();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void requestTraversalFromDisplayManager() {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowManagerService.this.requestTraversal();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void setMagnificationSpec(int displayId, MagnificationSpec spec) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (WindowManagerService.this.mAccessibilityController != null) {
                        WindowManagerService.this.mAccessibilityController.setMagnificationSpecLocked(displayId, spec);
                    } else {
                        throw new IllegalStateException("Magnification callbacks not set!");
                    }
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            if (Binder.getCallingPid() != Process.myPid()) {
                spec.recycle();
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void setForceShowMagnifiableBounds(int displayId, boolean show) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (WindowManagerService.this.mAccessibilityController != null) {
                        WindowManagerService.this.mAccessibilityController.setForceShowMagnifiableBoundsLocked(displayId, show);
                    } else {
                        throw new IllegalStateException("Magnification callbacks not set!");
                    }
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void getMagnificationRegion(int displayId, Region magnificationRegion) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (WindowManagerService.this.mAccessibilityController != null) {
                        WindowManagerService.this.mAccessibilityController.getMagnificationRegionLocked(displayId, magnificationRegion);
                    } else {
                        throw new IllegalStateException("Magnification callbacks not set!");
                    }
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public MagnificationSpec getCompatibleMagnificationSpecForWindow(IBinder windowToken) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowState windowState = WindowManagerService.this.mWindowMap.get(windowToken);
                    if (windowState == null) {
                        return null;
                    }
                    MagnificationSpec spec = null;
                    if (WindowManagerService.this.mAccessibilityController != null) {
                        spec = WindowManagerService.this.mAccessibilityController.getMagnificationSpecForWindowLocked(windowState);
                    }
                    if ((spec == null || spec.isNop()) && windowState.mGlobalScale == 1.0f) {
                        return null;
                    }
                    MagnificationSpec spec2 = spec == null ? MagnificationSpec.obtain() : MagnificationSpec.obtain(spec);
                    spec2.scale *= windowState.mGlobalScale;
                    return spec2;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public boolean setMagnificationCallbacks(int displayId, WindowManagerInternal.MagnificationCallbacks callbacks) {
            boolean result;
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (WindowManagerService.this.mAccessibilityController == null) {
                        WindowManagerService.this.mAccessibilityController = new AccessibilityController(WindowManagerService.this);
                    }
                    result = WindowManagerService.this.mAccessibilityController.setMagnificationCallbacksLocked(displayId, callbacks);
                    if (!WindowManagerService.this.mAccessibilityController.hasCallbacksLocked()) {
                        WindowManagerService.this.mAccessibilityController = null;
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return result;
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public boolean setWindowsForAccessibilityCallback(int displayId, WindowManagerInternal.WindowsForAccessibilityCallback callback) {
            boolean result;
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (WindowManagerService.this.mAccessibilityController == null) {
                        WindowManagerService.this.mAccessibilityController = new AccessibilityController(WindowManagerService.this);
                    }
                    result = WindowManagerService.this.mAccessibilityController.setWindowsForAccessibilityCallbackLocked(displayId, callback);
                    if (!WindowManagerService.this.mAccessibilityController.hasCallbacksLocked()) {
                        WindowManagerService.this.mAccessibilityController = null;
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return result;
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void setInputFilter(IInputFilter filter) {
            WindowManagerService.this.mInputManager.setInputFilter(filter);
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public IBinder getFocusedWindowToken() {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowState windowState = WindowManagerService.this.getFocusedWindowLocked();
                    if (windowState != null) {
                        return windowState.mClient.asBinder();
                    }
                    return null;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public boolean isKeyguardLocked() {
            return WindowManagerService.this.isKeyguardLocked();
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public boolean isKeyguardShowingAndNotOccluded() {
            return WindowManagerService.this.isKeyguardShowingAndNotOccluded();
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void showGlobalActions() {
            WindowManagerService.this.showGlobalActions();
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void getWindowFrame(IBinder token, Rect outBounds) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowState windowState = WindowManagerService.this.mWindowMap.get(token);
                    if (windowState != null) {
                        outBounds.set(windowState.getFrameLw());
                    } else {
                        outBounds.setEmpty();
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void waitForAllWindowsDrawn(Runnable callback, long timeout, int displayId) {
            WindowContainer container = displayId == -1 ? WindowManagerService.this.mRoot : WindowManagerService.this.mRoot.getDisplayContent(displayId);
            if (container == null) {
                callback.run();
                return;
            }
            boolean allWindowsDrawn = false;
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    container.waitForAllWindowsDrawn();
                    WindowManagerService.this.mWindowPlacerLocked.requestTraversal();
                    WindowManagerService.this.mH.removeMessages(24, container);
                    if (container.mWaitingForDrawn.isEmpty()) {
                        allWindowsDrawn = true;
                    } else {
                        WindowManagerService.this.mWaitingForDrawnCallbacks.put(container, callback);
                        WindowManagerService.this.mH.sendNewMessageDelayed(24, container, timeout);
                        WindowManagerService.this.checkDrawnWindowsLocked();
                    }
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            if (allWindowsDrawn) {
                callback.run();
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void setForcedDisplaySize(int displayId, int width, int height) {
            WindowManagerService.this.setForcedDisplaySize(displayId, width, height);
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void clearForcedDisplaySize(int displayId) {
            WindowManagerService.this.clearForcedDisplaySize(displayId);
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void addWindowToken(IBinder token, int type, int displayId) {
            WindowManagerService.this.addWindowToken(token, type, displayId);
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void removeWindowToken(IBinder binder, boolean removeWindows, int displayId) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    if (removeWindows) {
                        DisplayContent dc = WindowManagerService.this.mRoot.getDisplayContent(displayId);
                        if (dc == null) {
                            if (ProtoLog$Cache.WM_ERROR_enabled) {
                                String protoLogParam0 = String.valueOf(binder);
                                long protoLogParam1 = displayId;
                                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1739298851, 4, "removeWindowToken: Attempted to remove token: %s for non-exiting displayId=%d", protoLogParam0, Long.valueOf(protoLogParam1));
                            }
                            return;
                        }
                        WindowToken token = dc.removeWindowToken(binder);
                        if (token == null) {
                            if (ProtoLog$Cache.WM_ERROR_enabled) {
                                String protoLogParam2 = String.valueOf(binder);
                                ProtoLogImpl.w(ProtoLogGroup.WM_ERROR, 1518495446, 0, "removeWindowToken: Attempted to remove non-existing token: %s", protoLogParam2);
                            }
                            return;
                        }
                        token.removeAllWindowsIfPossible();
                    }
                    WindowManagerService.this.removeWindowToken(binder, displayId);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void registerAppTransitionListener(WindowManagerInternal.AppTransitionListener listener) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowManagerService.this.getDefaultDisplayContentLocked().mAppTransition.registerListenerLocked(listener);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void reportPasswordChanged(int userId) {
            WindowManagerService.this.mKeyguardDisableHandler.updateKeyguardEnabled(userId);
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public int getInputMethodWindowVisibleHeight(int displayId) {
            int inputMethodWindowVisibleHeight;
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    DisplayContent dc = WindowManagerService.this.mRoot.getDisplayContent(displayId);
                    inputMethodWindowVisibleHeight = dc.mDisplayFrames.getInputMethodWindowVisibleHeight();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return inputMethodWindowVisibleHeight;
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void updateInputMethodWindowStatus(IBinder imeToken, boolean imeWindowVisible, boolean dismissImeOnBackKeyPressed) {
            WindowManagerService.this.mPolicy.setDismissImeOnBackKeyPressed(dismissImeOnBackKeyPressed);
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void updateInputMethodTargetWindow(IBinder imeToken, IBinder imeTargetWindowToken) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowState imeTarget = WindowManagerService.this.mWindowMap.get(imeTargetWindowToken);
                    if (imeTarget != null) {
                        imeTarget.getDisplayContent().setInputMethodInputTarget(imeTarget);
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public boolean isHardKeyboardAvailable() {
            boolean z;
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    z = WindowManagerService.this.mHardKeyboardAvailable;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return z;
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void setOnHardKeyboardStatusChangeListener(WindowManagerInternal.OnHardKeyboardStatusChangeListener listener) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowManagerService.this.mHardKeyboardStatusChangeListener = listener;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public boolean isStackVisibleLw(int windowingMode) {
            TaskDisplayArea tc = WindowManagerService.this.mRoot.getDefaultTaskDisplayArea();
            return tc.isStackVisible(windowingMode);
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void computeWindowsForAccessibility(int displayId) {
            AccessibilityController accessibilityController;
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    accessibilityController = WindowManagerService.this.mAccessibilityController;
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
            if (accessibilityController != null) {
                accessibilityController.performComputeChangedWindowsNotLocked(displayId, true);
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void setVr2dDisplayId(int vr2dDisplayId) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowManagerService.this.mVr2dDisplayId = vr2dDisplayId;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void registerDragDropControllerCallback(WindowManagerInternal.IDragDropCallback callback) {
            WindowManagerService.this.mDragDropController.registerCallback(callback);
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void lockNow() {
            WindowManagerService.this.lockNow(null);
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public int getWindowOwnerUserId(IBinder token) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowState window = WindowManagerService.this.mWindowMap.get(token);
                    if (window != null) {
                        return window.mShowUserId;
                    }
                    return -10000;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public boolean isUidFocused(int uid) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    for (int i = WindowManagerService.this.mRoot.getChildCount() - 1; i >= 0; i--) {
                        DisplayContent displayContent = (DisplayContent) WindowManagerService.this.mRoot.getChildAt(i);
                        if (displayContent.mCurrentFocus != null && uid == displayContent.mCurrentFocus.getOwningUid()) {
                            WindowManagerService.resetPriorityAfterLockedSection();
                            return true;
                        }
                    }
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return false;
                } catch (Throwable th) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public boolean isInputMethodClientFocus(int uid, int pid, int displayId) {
            if (displayId == -1) {
                return false;
            }
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    DisplayContent displayContent = WindowManagerService.this.mRoot.getTopFocusedDisplayContent();
                    if (displayContent != null && displayContent.getDisplayId() == displayId && displayContent.hasAccess(uid)) {
                        if (displayContent.isInputMethodClientFocus(uid, pid)) {
                            return true;
                        }
                        WindowState currentFocus = displayContent.mCurrentFocus;
                        return currentFocus != null && currentFocus.mSession.mUid == uid && currentFocus.mSession.mPid == pid;
                    }
                    return false;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void showImePostLayout(IBinder imeTargetWindowToken) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowState imeTarget = WindowManagerService.this.mWindowMap.get(imeTargetWindowToken);
                    if (imeTarget == null) {
                        return;
                    }
                    InsetsControlTarget controlTarget = imeTarget.getImeControlTarget();
                    WindowState imeTarget2 = controlTarget.getWindow();
                    DisplayContent dc = imeTarget2 != null ? imeTarget2.getDisplayContent() : WindowManagerService.this.getDefaultDisplayContentLocked();
                    dc.getInsetsStateController().getImeSourceProvider().scheduleShowImePostLayout(controlTarget);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void hideIme(IBinder imeTargetWindowToken, int displayId) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowState imeTarget = WindowManagerService.this.mWindowMap.get(imeTargetWindowToken);
                    if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
                        String protoLogParam0 = String.valueOf(imeTarget);
                        ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_IME, 95216706, 0, null, protoLogParam0);
                    }
                    DisplayContent dc = WindowManagerService.this.mRoot.getDisplayContent(displayId);
                    if (imeTarget != null) {
                        WindowState imeTarget2 = imeTarget.getImeControlTarget().getWindow();
                        if (imeTarget2 != null) {
                            dc = imeTarget2.getDisplayContent();
                        }
                        dc.getInsetsStateController().getImeSourceProvider().abortShowImePostLayout();
                    }
                    if (dc != null && dc.mInputMethodControlTarget != null) {
                        if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
                            String protoLogParam1 = String.valueOf(dc.mInputMethodControlTarget);
                            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_IME, -547111355, 0, null, protoLogParam1);
                        }
                        dc.mInputMethodControlTarget.hideInsets(WindowInsets.Type.ime(), true);
                    }
                    if (dc != null) {
                        dc.getInsetsStateController().getImeSourceProvider().setImeShowing(false);
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public boolean isUidAllowedOnDisplay(int displayId, int uid) {
            boolean z = true;
            if (displayId == 0) {
                return true;
            }
            if (displayId == -1) {
                return false;
            }
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    DisplayContent displayContent = WindowManagerService.this.mRoot.getDisplayContent(displayId);
                    if (displayContent == null || !displayContent.hasAccess(uid)) {
                        z = false;
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return z;
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public int getDisplayIdForWindow(IBinder windowToken) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowState window = WindowManagerService.this.mWindowMap.get(windowToken);
                    if (window != null) {
                        return window.getDisplayContent().getDisplayId();
                    }
                    return -1;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public int getTopFocusedDisplayId() {
            int displayId;
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    displayId = WindowManagerService.this.mRoot.getTopFocusedDisplayContent().getDisplayId();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return displayId;
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public Context getTopFocusedDisplayUiContext() {
            Context displayUiContext;
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    displayUiContext = WindowManagerService.this.mRoot.getTopFocusedDisplayContent().getDisplayUiContext();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return displayUiContext;
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public boolean shouldShowSystemDecorOnDisplay(int displayId) {
            boolean zShouldShowSystemDecors;
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    zShouldShowSystemDecors = WindowManagerService.this.shouldShowSystemDecors(displayId);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return zShouldShowSystemDecors;
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public boolean shouldShowIme(int displayId) {
            boolean zShouldShowIme;
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    zShouldShowIme = WindowManagerService.this.shouldShowIme(displayId);
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return zShouldShowIme;
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void addNonHighRefreshRatePackage(final String packageName) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowManagerService.this.mRoot.forAllDisplays(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$LocalService$_nYJRiVOgbON7mI191FIzNAk4Xs
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            ((DisplayContent) obj).getDisplayPolicy().getRefreshRatePolicy().addNonHighRefreshRatePackage(packageName);
                        }
                    });
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void removeNonHighRefreshRatePackage(final String packageName) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowManagerService.this.mRoot.forAllDisplays(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$LocalService$rEGrcIRCgYp-4kzr5xA12LKQX0E
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            ((DisplayContent) obj).getDisplayPolicy().getRefreshRatePolicy().removeNonHighRefreshRatePackage(packageName);
                        }
                    });
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public boolean isTouchableDisplay(int displayId) {
            boolean z;
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    DisplayContent displayContent = WindowManagerService.this.mRoot.getDisplayContent(displayId);
                    Configuration configuration = displayContent != null ? displayContent.getConfiguration() : null;
                    z = configuration != null && configuration.touchscreen == 3;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return z;
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public KeyInterceptionInfo getKeyInterceptionInfoFromToken(IBinder inputToken) {
            return WindowManagerService.this.mKeyInterceptionInfoForToken.get(inputToken);
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public void setAccessibilityIdToSurfaceMetadata(IBinder windowToken, int accessibilityWindowId) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowState state = WindowManagerService.this.mWindowMap.get(windowToken);
                    if (state == null) {
                        Slog.w(WindowManagerService.TAG, "Cannot find window which accessibility connection is added to");
                    } else {
                        WindowManagerService.this.mTransaction.setMetadata(state.mSurfaceControl, 5, accessibilityWindowId).apply();
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public String getWindowName(IBinder binder) {
            String name;
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    WindowState w = WindowManagerService.this.mWindowMap.get(binder);
                    name = w != null ? w.getName() : null;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
            return name;
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public String getImeControlTargetNameForLogging(int displayId) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    DisplayContent dc = WindowManagerService.this.mRoot.getDisplayContent(displayId);
                    if (dc == null) {
                        return null;
                    }
                    InsetsControlTarget target = dc.mInputMethodControlTarget;
                    if (target == null) {
                        return null;
                    }
                    WindowState win = target.getWindow();
                    return win != null ? win.getName() : target.toString();
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal
        public String getImeTargetNameForLogging(int displayId) {
            synchronized (WindowManagerService.this.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    DisplayContent dc = WindowManagerService.this.mRoot.getDisplayContent(displayId);
                    if (dc == null) {
                        return null;
                    }
                    return dc.mInputMethodTarget != null ? dc.mInputMethodTarget.getName() : null;
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    }

    void registerAppFreezeListener(AppFreezeListener listener) {
        if (!this.mAppFreezeListeners.contains(listener)) {
            this.mAppFreezeListeners.add(listener);
        }
    }

    void unregisterAppFreezeListener(AppFreezeListener listener) {
        this.mAppFreezeListeners.remove(listener);
    }

    void inSurfaceTransaction(Runnable exec) {
        SurfaceControl.openTransaction();
        try {
            exec.run();
        } finally {
            SurfaceControl.closeTransaction();
        }
    }

    public void disableNonVrUi(boolean disable) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                boolean showAlertWindowNotifications = !disable;
                if (showAlertWindowNotifications == this.mShowAlertWindowNotifications) {
                    return;
                }
                this.mShowAlertWindowNotifications = showAlertWindowNotifications;
                for (int i = this.mSessions.size() - 1; i >= 0; i--) {
                    Session s = this.mSessions.valueAt(i);
                    s.setShowingAlertWindowNotificationAllowed(this.mShowAlertWindowNotifications);
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    boolean hasWideColorGamutSupport() {
        return this.mHasWideColorGamutSupport && SystemProperties.getInt("persist.sys.sf.native_mode", 0) != 1;
    }

    boolean hasHdrSupport() {
        return this.mHasHdrSupport && hasWideColorGamutSupport();
    }

    void updateNonSystemOverlayWindowsVisibilityIfNeeded(WindowState win, boolean surfaceShown) {
        if (!win.hideNonSystemOverlayWindowsWhenVisible() && !this.mHidingNonSystemOverlayWindows.contains(win)) {
            return;
        }
        boolean systemAlertWindowsHidden = !this.mHidingNonSystemOverlayWindows.isEmpty();
        if (surfaceShown && win.hideNonSystemOverlayWindowsWhenVisible()) {
            if (!this.mHidingNonSystemOverlayWindows.contains(win)) {
                this.mHidingNonSystemOverlayWindows.add(win);
            }
        } else {
            this.mHidingNonSystemOverlayWindows.remove(win);
        }
        final boolean hideSystemAlertWindows = !this.mHidingNonSystemOverlayWindows.isEmpty();
        if (systemAlertWindowsHidden == hideSystemAlertWindows) {
            return;
        }
        this.mRoot.forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$xY9JKWQyxCWj-DlV0t_IQjVigYc
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WindowState) obj).setForceHideNonSystemOverlayWindowIfNeeded(hideSystemAlertWindows);
            }
        }, false);
    }

    public void applyMagnificationSpecLocked(int displayId, MagnificationSpec spec) {
        DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
        if (displayContent != null) {
            displayContent.applyMagnificationSpec(spec);
        }
    }

    SurfaceControl.Builder makeSurfaceBuilder(SurfaceSession s) {
        return this.mSurfaceControlFactory.apply(s);
    }

    void onLockTaskStateChanged(int lockTaskState) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                Consumer<DisplayPolicy> consumerObtainConsumer = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$5zz5Ugt4wxIXoNE3lZS6NA9z_Jk
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        ((DisplayPolicy) obj).onLockTaskStateChangedLw(((Integer) obj2).intValue());
                    }
                }, PooledLambda.__(), Integer.valueOf(lockTaskState));
                this.mRoot.forAllDisplayPolicies(consumerObtainConsumer);
                consumerObtainConsumer.recycle();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public void setAodShowing(boolean aodShowing) {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                if (this.mPolicy.setAodShowing(aodShowing)) {
                    this.mWindowPlacerLocked.performSurfacePlacement();
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean injectInputAfterTransactionsApplied(InputEvent ev, int mode) {
        boolean isDown;
        boolean isUp;
        if (ev instanceof KeyEvent) {
            KeyEvent keyEvent = (KeyEvent) ev;
            isDown = keyEvent.getAction() == 0;
            isUp = keyEvent.getAction() == 1;
        } else {
            MotionEvent motionEvent = (MotionEvent) ev;
            isDown = motionEvent.getAction() == 0;
            isUp = motionEvent.getAction() == 1;
        }
        boolean isMouseEvent = ev.getSource() == 8194;
        if (isDown || isMouseEvent) {
            syncInputTransactions();
        }
        boolean result = ((InputManagerInternal) LocalServices.getService(InputManagerInternal.class)).injectInputEvent(ev, mode);
        if (isUp) {
            syncInputTransactions();
        }
        return result;
    }

    public void syncInputTransactions() {
        long token = Binder.clearCallingIdentity();
        try {
            waitForAnimationsToComplete();
            final SurfaceControl.Transaction t = this.mTransactionFactory.get();
            synchronized (this.mGlobalLock) {
                try {
                    boostPriorityForLockedSection();
                    this.mWindowPlacerLocked.performSurfacePlacementIfScheduled();
                    this.mRoot.forAllDisplays(new Consumer() { // from class: com.android.server.wm.-$$Lambda$WindowManagerService$04fTf2qIkbj1fCJ085NX9clEbWw
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            ((DisplayContent) obj).getInputMonitor().updateInputWindowsImmediately(t);
                        }
                    });
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            t.syncInputWindows().apply();
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(token);
            throw th2;
        }
    }

    private void waitForAnimationsToComplete() {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                long timeoutRemaining = 5000;
                this.mAnimator.mNotifyWhenNoAnimation = true;
                while (true) {
                    if ((!this.mAnimator.isAnimationScheduled() && !this.mRoot.isAnimating(5)) || timeoutRemaining <= 0) {
                        break;
                    }
                    long startTime = System.currentTimeMillis();
                    try {
                        this.mGlobalLock.wait(timeoutRemaining);
                    } catch (InterruptedException e) {
                    }
                    timeoutRemaining -= System.currentTimeMillis() - startTime;
                }
                this.mAnimator.mNotifyWhenNoAnimation = false;
                if (this.mAnimator.isAnimationScheduled() || this.mRoot.isAnimating(5)) {
                    Slog.w(TAG, "Timed out waiting for animations to complete.");
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    void onAnimationFinished() {
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                this.mGlobalLock.notifyAll();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPointerDownOutsideFocusLocked(IBinder touchedToken) {
        WindowState touchedWindow = this.mInputToWindowMap.get(touchedToken);
        if (touchedWindow == null) {
            touchedWindow = this.mEmbeddedWindowController.getHostWindow(touchedToken);
        }
        if (touchedWindow == null || !touchedWindow.canReceiveKeys(true)) {
            return;
        }
        DisplayContent displayContent = touchedWindow.getDisplayContent();
        if (!displayContent.isOnTop()) {
            displayContent.positionDisplayAt(Integer.MAX_VALUE, true);
        }
        handleTaskFocusChange(touchedWindow.getTask());
    }

    void handleTaskFocusChange(Task task) {
        if (task == null) {
            return;
        }
        if (task.isActivityTypeHome()) {
            if (Resources.getSystem().getBoolean(R.bool.config_cecQuerySadDstDisabled_default)) {
                return;
            }
            TaskDisplayArea homeTda = task.getDisplayArea();
            WindowState curFocusedWindow = getFocusedWindow();
            if (curFocusedWindow != null && homeTda != null && curFocusedWindow.isDescendantOf(homeTda)) {
                return;
            }
        }
        try {
            this.mActivityTaskManager.setFocusedTask(task.mTaskId);
        } catch (RemoteException e) {
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x006a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void grantInputChannel(int r17, int r18, int r19, android.view.SurfaceControl r20, android.view.IWindow r21, android.os.IBinder r22, int r23, int r24, int r25, android.view.InputChannel r26) throws java.lang.Throwable {
        /*
            r16 = this;
            r13 = r16
            com.android.server.wm.WindowManagerGlobalLock r9 = r13.mGlobalLock
            monitor-enter(r9)
            boostPriorityForLockedSection()     // Catch: java.lang.Throwable -> L60
            com.android.server.wm.EmbeddedWindowController$EmbeddedWindow r0 = new com.android.server.wm.EmbeddedWindowController$EmbeddedWindow     // Catch: java.lang.Throwable -> L60
            java.util.HashMap<android.os.IBinder, com.android.server.wm.WindowState> r1 = r13.mInputToWindowMap     // Catch: java.lang.Throwable -> L60
            r14 = r22
            java.lang.Object r1 = r1.get(r14)     // Catch: java.lang.Throwable -> L5e
            r4 = r1
            com.android.server.wm.WindowState r4 = (com.android.server.wm.WindowState) r4     // Catch: java.lang.Throwable -> L5e
            r1 = r0
            r2 = r16
            r3 = r21
            r5 = r17
            r6 = r18
            r7 = r25
            r1.<init>(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L5e
            android.view.InputChannel r1 = r0.openInputChannel()     // Catch: java.lang.Throwable -> L5e
            r15 = r1
            com.android.server.wm.EmbeddedWindowController r1 = r13.mEmbeddedWindowController     // Catch: java.lang.Throwable -> L5e
            android.os.IBinder r2 = r15.getToken()     // Catch: java.lang.Throwable -> L5e
            r1.add(r2, r0)     // Catch: java.lang.Throwable -> L5e
            android.view.InputApplicationHandle r8 = r0.getApplicationHandle()     // Catch: java.lang.Throwable -> L5e
            java.lang.String r7 = r0.getName()     // Catch: java.lang.Throwable -> L5e
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L5e
            resetPriorityAfterLockedSection()
            android.os.IBinder r2 = r15.getToken()
            r12 = 0
            r1 = r16
            r3 = r17
            r4 = r18
            r5 = r19
            r6 = r20
            r9 = r23
            r10 = r24
            r11 = r25
            r1.updateInputChannel(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            r1 = r26
            r15.transferTo(r1)
            r15.dispose()
            return
        L5e:
            r0 = move-exception
            goto L63
        L60:
            r0 = move-exception
            r14 = r22
        L63:
            r1 = r26
        L65:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L6a
            resetPriorityAfterLockedSection()
            throw r0
        L6a:
            r0 = move-exception
            goto L65
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.WindowManagerService.grantInputChannel(int, int, int, android.view.SurfaceControl, android.view.IWindow, android.os.IBinder, int, int, int, android.view.InputChannel):void");
    }

    private void updateInputChannel(IBinder channelToken, int callingUid, int callingPid, int displayId, SurfaceControl surface, String name, InputApplicationHandle applicationHandle, int flags, int privateFlags, int type, Region region) {
        InputWindowHandle h = new InputWindowHandle(applicationHandle, displayId);
        h.token = channelToken;
        h.name = name;
        int sanitizedFlags = 536870928 & flags;
        h.layoutParamsFlags = sanitizedFlags | 32;
        h.layoutParamsType = type;
        h.dispatchingTimeoutNanos = DEFAULT_INPUT_DISPATCHING_TIMEOUT_NANOS;
        h.canReceiveKeys = false;
        h.hasFocus = false;
        h.hasWallpaper = false;
        h.paused = false;
        h.ownerUid = callingUid;
        h.ownerPid = callingPid;
        h.inputFeatures = 0;
        if (region == null) {
            h.replaceTouchableRegionWithCrop((SurfaceControl) null);
        } else {
            h.touchableRegion.set(region);
            h.replaceTouchableRegionWithCrop = false;
            h.setTouchableRegionCrop(surface);
        }
        h.trustedOverlay = (536870912 & privateFlags) != 0;
        SurfaceControl.Transaction t = this.mTransactionFactory.get();
        t.setInputWindowInfo(surface, h);
        t.apply();
        t.close();
        surface.release();
    }

    void updateInputChannel(IBinder channelToken, int displayId, SurfaceControl surface, int flags, int privateFlags, Region region) throws Throwable {
        synchronized (this.mGlobalLock) {
            try {
                try {
                    boostPriorityForLockedSection();
                    EmbeddedWindowController.EmbeddedWindow win = this.mEmbeddedWindowController.get(channelToken);
                    if (win == null) {
                        Slog.e(TAG, "Couldn't find window for provided channelToken.");
                        resetPriorityAfterLockedSection();
                    } else {
                        String name = win.getName();
                        InputApplicationHandle applicationHandle = win.getApplicationHandle();
                        resetPriorityAfterLockedSection();
                        updateInputChannel(channelToken, win.mOwnerUid, win.mOwnerPid, displayId, surface, name, applicationHandle, flags, privateFlags, win.mWindowType, region);
                    }
                } catch (Throwable th) {
                    th = th;
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public boolean isLayerTracing() {
        this.mAtmInternal.enforceCallerIsRecentsOrHasPermission("android.permission.DUMP", "isLayerTracing");
        long token = Binder.clearCallingIdentity();
        Parcel data = null;
        Parcel reply = null;
        try {
            try {
                try {
                    IBinder sf = ServiceManager.getService("SurfaceFlinger");
                    if (sf == null) {
                        if (0 != 0) {
                            data.recycle();
                        }
                        if (0 != 0) {
                        }
                        Binder.restoreCallingIdentity(token);
                        return false;
                    }
                    reply = Parcel.obtain();
                    data = Parcel.obtain();
                    data.writeInterfaceToken("android.ui.ISurfaceComposer");
                    sf.transact(UsbTerminalTypes.TERMINAL_BIDIR_HEADSET, data, reply, 0);
                    boolean z = reply.readBoolean();
                    if (data != null) {
                        data.recycle();
                    }
                    if (reply != null) {
                        reply.recycle();
                    }
                    Binder.restoreCallingIdentity(token);
                    return z;
                } catch (RemoteException e) {
                    Slog.e(TAG, "Failed to get layer tracing");
                    if (data != null) {
                        data.recycle();
                    }
                    if (reply != null) {
                    }
                }
                reply.recycle();
                Binder.restoreCallingIdentity(token);
                return false;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                data.recycle();
            }
            if (0 != 0) {
                reply.recycle();
            }
            throw th2;
        }
    }

    public void setLayerTracing(boolean enabled) {
        this.mAtmInternal.enforceCallerIsRecentsOrHasPermission("android.permission.DUMP", "setLayerTracing");
        long token = Binder.clearCallingIdentity();
        Parcel data = null;
        try {
            try {
                try {
                    IBinder sf = ServiceManager.getService("SurfaceFlinger");
                    if (sf != null) {
                        data = Parcel.obtain();
                        data.writeInterfaceToken("android.ui.ISurfaceComposer");
                        data.writeInt(enabled ? 1 : 0);
                        sf.transact(UsbTerminalTypes.TERMINAL_BIDIR_HANDSET, data, null, 0);
                    }
                    if (data != null) {
                        data.recycle();
                    }
                } catch (Throwable th) {
                    if (data != null) {
                        data.recycle();
                    }
                    throw th;
                }
            } catch (RemoteException e) {
                Slog.e(TAG, "Failed to set layer tracing");
                if (data != null) {
                }
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(token);
            throw th2;
        }
    }

    public void setLayerTracingFlags(int flags) {
        this.mAtmInternal.enforceCallerIsRecentsOrHasPermission("android.permission.DUMP", "setLayerTracingFlags");
        long token = Binder.clearCallingIdentity();
        Parcel data = null;
        try {
            try {
                try {
                    IBinder sf = ServiceManager.getService("SurfaceFlinger");
                    if (sf != null) {
                        data = Parcel.obtain();
                        data.writeInterfaceToken("android.ui.ISurfaceComposer");
                        data.writeInt(flags);
                        sf.transact(1033, data, null, 0);
                    }
                    if (data != null) {
                        data.recycle();
                    }
                } catch (RemoteException e) {
                    Slog.e(TAG, "Failed to set layer tracing flags");
                    if (data != null) {
                    }
                }
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                if (data != null) {
                    data.recycle();
                }
                throw th;
            }
        } catch (Throwable th2) {
            Binder.restoreCallingIdentity(token);
            throw th2;
        }
    }

    public boolean mirrorDisplay(int displayId, SurfaceControl outSurfaceControl) {
        if (!checkCallingPermission("android.permission.READ_FRAME_BUFFER", "mirrorDisplay()")) {
            throw new SecurityException("Requires READ_FRAME_BUFFER permission");
        }
        synchronized (this.mGlobalLock) {
            try {
                boostPriorityForLockedSection();
                DisplayContent displayContent = this.mRoot.getDisplayContent(displayId);
                if (displayContent == null) {
                    Slog.e(TAG, "Invalid displayId " + displayId + " for mirrorDisplay");
                    resetPriorityAfterLockedSection();
                    return false;
                }
                SurfaceControl displaySc = displayContent.getWindowingLayer();
                resetPriorityAfterLockedSection();
                SurfaceControl mirror = SurfaceControl.mirrorSurface(displaySc);
                outSurfaceControl.copyFrom(mirror, "WMS.mirrorDisplay");
                return true;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public boolean getWindowInsets(WindowManager.LayoutParams attrs, int displayId, Rect outContentInsets, Rect outStableInsets, DisplayCutout.ParcelableWrapper outDisplayCutout, InsetsState outInsetsState) throws Throwable {
        long origId = Binder.clearCallingIdentity();
        try {
            try {
                synchronized (this.mGlobalLock) {
                    try {
                        boostPriorityForLockedSection();
                        DisplayContent dc = getDisplayContentOrCreate(displayId, attrs.token);
                        if (dc == null) {
                            throw new WindowManager.InvalidDisplayException("Display#" + displayId + "could not be found!");
                        }
                        WindowToken windowToken = dc.getWindowToken(attrs.token);
                        InsetsStateController insetsStateController = dc.getInsetsStateController();
                        outInsetsState.set(insetsStateController.getInsetsForWindowMetrics(attrs));
                        boolean layoutHint = dc.getDisplayPolicy().getLayoutHint(attrs, windowToken, this.mTmpRect, outContentInsets, outStableInsets, outDisplayCutout);
                        resetPriorityAfterLockedSection();
                        Binder.restoreCallingIdentity(origId);
                        return layoutHint;
                    } catch (Throwable th) {
                        th = th;
                        try {
                            resetPriorityAfterLockedSection();
                            throw th;
                        } catch (Throwable th2) {
                            th = th2;
                            Binder.restoreCallingIdentity(origId);
                            throw th;
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
