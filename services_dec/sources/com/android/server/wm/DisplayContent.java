package com.android.server.wm;

import android.R;
import android.app.ActivityManagerInternal;
import android.app.WindowConfiguration;
import android.content.Context;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.hardware.display.DisplayManagerInternal;
import android.metrics.LogMaker;
import android.os.Binder;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Process;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.Trace;
import android.provider.Settings;
import android.util.ArraySet;
import android.util.DisplayMetrics;
import android.util.IntArray;
import android.util.RotationUtils;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.proto.ProtoOutputStream;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.DisplayInfo;
import android.view.IApplicationToken;
import android.view.IDisplayWindowInsetsController;
import android.view.ISystemGestureExclusionListener;
import android.view.IWindow;
import android.view.InputApplicationHandle;
import android.view.InputChannel;
import android.view.InputDevice;
import android.view.InputWindowHandle;
import android.view.InsetsSource;
import android.view.InsetsState;
import android.view.MagnificationSpec;
import android.view.RemoteAnimationDefinition;
import android.view.SurfaceControl;
import android.view.SurfaceSession;
import android.view.ViewRootImpl;
import android.view.WindowManager;
import android.view.WindowManagerPolicyConstants;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.ToBooleanFunction;
import com.android.internal.util.function.QuadConsumer;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledConsumer;
import com.android.internal.util.function.pooled.PooledFunction;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.internal.util.function.pooled.PooledPredicate;
import com.android.server.UiModeManagerService;
import com.android.server.display.color.DisplayTransformManager;
import com.android.server.inputmethod.InputMethodManagerInternal;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.usb.descriptors.UsbACInterface;
import com.android.server.usb.descriptors.UsbTerminalTypes;
import com.android.server.wm.utils.DisplayRotationUtil;
import com.android.server.wm.utils.RegionUtils;
import com.android.server.wm.utils.RotationCache;
import com.android.server.wm.utils.WmDisplayCutout;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
class DisplayContent extends WindowContainer<DisplayChildWindowContainer> implements WindowManagerPolicy.DisplayContentInfo {
    static final int FORCE_SCALING_MODE_AUTO = 0;
    static final int FORCE_SCALING_MODE_DISABLED = 1;
    private static final String TAG = "WindowManager";
    private static final String TAG_STACK = "WindowManager";
    boolean isDefaultDisplay;
    final ArrayList<RootWindowContainer.SleepToken> mAllSleepTokens;
    final AppTransition mAppTransition;
    final AppTransitionController mAppTransitionController;
    private final Consumer<WindowState> mApplyPostLayoutPolicy;
    private final Consumer<WindowState> mApplySurfaceChangesTransaction;
    ActivityTaskManagerService mAtmService;
    int mBaseDisplayDensity;
    int mBaseDisplayHeight;
    private Rect mBaseDisplayRect;
    int mBaseDisplayWidth;
    final ArraySet<WindowContainer> mChangingContainers;
    final float mCloseToSquareMaxAspectRatio;
    final ArraySet<ActivityRecord> mClosingApps;
    private final DisplayMetrics mCompatDisplayMetrics;
    float mCompatibleScreenScale;
    private final Predicate<WindowState> mComputeImeTargetPredicate;
    WindowState mCurrentFocus;
    private int mCurrentOverrideConfigurationChanges;
    private int mDeferUpdateImeTargetCount;
    private boolean mDeferredRemoval;
    final Display mDisplay;
    private IntArray mDisplayAccessUIDs;
    final DisplayAreaPolicy mDisplayAreaPolicy;
    private final RotationCache<DisplayCutout, WmDisplayCutout> mDisplayCutoutCache;
    DisplayFrames mDisplayFrames;
    final int mDisplayId;
    private final DisplayInfo mDisplayInfo;
    private final DisplayMetrics mDisplayMetrics;
    private final DisplayPolicy mDisplayPolicy;
    private boolean mDisplayReady;
    private final DisplayRotation mDisplayRotation;
    boolean mDisplayScalingDisabled;
    final DockedStackDividerController mDividerControllerLocked;
    final ArrayList<WindowToken> mExitingTokens;
    private final ToBooleanFunction<WindowState> mFindFocusedWindow;
    private FixedRotationAnimationController mFixedRotationAnimationController;
    private ActivityRecord mFixedRotationLaunchingApp;
    final FixedRotationTransitionListener mFixedRotationTransitionListener;
    ActivityRecord mFocusedApp;
    private boolean mIgnoreRotationForApps;
    private final ImeContainer mImeWindowsContainers;
    private boolean mInEnsureActivitiesVisible;
    DisplayCutout mInitialDisplayCutout;
    int mInitialDisplayDensity;
    int mInitialDisplayHeight;
    int mInitialDisplayWidth;
    InsetsControlTarget mInputMethodControlTarget;
    WindowState mInputMethodInputTarget;
    WindowState mInputMethodTarget;
    boolean mInputMethodTargetWaitingAnim;
    WindowState mInputMethodWindow;
    private InputMonitor mInputMonitor;
    private final InsetsPolicy mInsetsPolicy;
    private final InsetsStateController mInsetsStateController;
    private ActivityRecord mLastCompatModeActivity;
    private int mLastDispatchedSystemUiVisibility;
    WindowState mLastFocus;
    private boolean mLastHasContent;
    private int mLastStatusBarVisibility;
    private boolean mLastWallpaperVisible;
    private boolean mLayoutNeeded;
    int mLayoutSeq;
    private Point mLocationInParentWindow;
    ArrayList<WindowState> mLosingFocus;
    private MagnificationSpec mMagnificationSpec;
    private int mMaxUiWidth;
    private MetricsLogger mMetricsLogger;
    final List<IBinder> mNoAnimationNotifyOnTransitionFinished;
    private final ActivityTaskManagerInternal.SleepTokenAcquirer mOffTokenAcquirer;
    final ArraySet<ActivityRecord> mOpeningApps;
    private final NonAppWindowContainers mOverlayContainers;
    private SurfaceControl mParentSurfaceControl;
    private WindowState mParentWindow;
    private final Consumer<WindowState> mPerformLayout;
    private final Consumer<WindowState> mPerformLayoutAttached;
    final PinnedStackController mPinnedStackControllerLocked;
    private final PointerEventDispatcher mPointerEventDispatcher;
    private InputWindowHandle mPortalWindowHandle;
    final DisplayMetrics mRealDisplayMetrics;
    RemoteInsetsControlTarget mRemoteInsetsControlTarget;
    private final IBinder.DeathRecipient mRemoteInsetsDeath;
    private boolean mRemoved;
    private boolean mRemoving;
    private boolean mRemovingDisplay;
    private final DisplayArea.Root mRootDisplayArea;
    private RootWindowContainer mRootWindowContainer;
    private DisplayRotationUtil mRotationUtil;
    private final Consumer<WindowState> mScheduleToastTimeout;
    private ScreenRotationAnimation mScreenRotationAnimation;
    private final SurfaceSession mSession;
    final SparseArray<ShellRoot> mShellRoots;
    boolean mShouldOverrideDisplayConfiguration;
    boolean mSingleTaskInstance;
    boolean mSkipAppTransitionAnimation;
    private boolean mSleeping;
    private final Region mSystemGestureExclusion;
    private int mSystemGestureExclusionLimit;
    private final RemoteCallbackList<ISystemGestureExclusionListener> mSystemGestureExclusionListeners;
    private final Region mSystemGestureExclusionUnrestricted;
    private boolean mSystemGestureExclusionWasRestricted;
    final TaskTapPointerEventListener mTapDetector;
    final ArraySet<WindowState> mTapExcludeProvidingWindows;
    final ArrayList<WindowState> mTapExcludedWindows;
    private final Configuration mTempConfig;
    private final ApplySurfaceChangesTransactionState mTmpApplySurfaceChangesTransactionState;
    private final Rect mTmpBounds;
    private final Configuration mTmpConfiguration;
    private final DisplayMetrics mTmpDisplayMetrics;
    private Point mTmpDisplaySize;
    private boolean mTmpInitial;
    private final Matrix mTmpMatrix;
    private final Rect mTmpRect;
    private final Rect mTmpRect2;
    private final RectF mTmpRectF;
    private final Region mTmpRegion;
    private final TaskForResizePointSearchResult mTmpTaskForResizePointSearchResult;
    private final LinkedList<ActivityRecord> mTmpUpdateAllDrawn;
    private WindowState mTmpWindow;
    private WindowState mTmpWindow2;
    private boolean mTmpWindowsBehindIme;
    private final HashMap<IBinder, WindowToken> mTokenMap;
    private Region mTouchExcludeRegion;
    final UnknownAppVisibilityController mUnknownAppVisibilityController;
    private boolean mUpdateImeTarget;
    private final Consumer<WindowState> mUpdateWindowsForAnimator;
    boolean mWaitingForConfig;
    WallpaperController mWallpaperController;
    boolean mWallpaperMayChange;
    final ArrayList<WindowState> mWinAddedSinceNullFocus;
    final ArrayList<WindowState> mWinInsetsChanged;
    final ArrayList<WindowState> mWinRemovedSinceNullFocus;
    private final WindowContainers mWindowContainers;
    private final float mWindowCornerRadius;
    int pendingLayoutChanges;

    @Retention(RetentionPolicy.SOURCE)
    @interface ForceScalingMode {
    }

    @Override // com.android.server.wm.WindowContainer
    protected /* bridge */ /* synthetic */ void addChild(WindowContainer windowContainer, Comparator comparator) {
        addChild((DisplayChildWindowContainer) windowContainer, (Comparator<DisplayChildWindowContainer>) comparator);
    }

    public /* synthetic */ void lambda$new$0$DisplayContent() {
        synchronized (this.mWmService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                this.mRemoteInsetsControlTarget = null;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public /* synthetic */ void lambda$new$1$DisplayContent(WindowState w) {
        WindowStateAnimator winAnimator = w.mWinAnimator;
        ActivityRecord activity = w.mActivityRecord;
        if (winAnimator.mDrawState == 3) {
            if ((activity == null || activity.canShowWindows()) && w.performShowLocked()) {
                this.pendingLayoutChanges |= 8;
            }
        }
    }

    public /* synthetic */ void lambda$new$2$DisplayContent(WindowState w) {
        int lostFocusUid = this.mTmpWindow.mOwnerUid;
        Handler handler = this.mWmService.mH;
        if (w.mAttrs.type == 2005 && w.mOwnerUid == lostFocusUid && !handler.hasMessages(52, w)) {
            handler.sendMessageDelayed(handler.obtainMessage(52, w), w.mAttrs.hideTimeoutMilliseconds);
        }
    }

    public /* synthetic */ boolean lambda$new$3$DisplayContent(WindowState w) {
        ActivityRecord focusedApp = this.mFocusedApp;
        if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
            String protoLogParam0 = String.valueOf(w);
            long protoLogParam1 = w.mAttrs.flags;
            boolean protoLogParam2 = w.canReceiveKeys();
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS, 1358462645, 52, null, protoLogParam0, Long.valueOf(protoLogParam1), Boolean.valueOf(protoLogParam2));
        }
        if (!w.canReceiveKeys()) {
            return false;
        }
        ActivityRecord activity = w.mActivityRecord;
        if (focusedApp == null) {
            if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
                String protoLogParam3 = String.valueOf(w);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, -87705714, 0, null, protoLogParam3);
            }
            this.mTmpWindow = w;
            return true;
        }
        if (!focusedApp.windowsAreFocusable()) {
            if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
                String protoLogParam4 = String.valueOf(w);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, 1430336882, 0, null, protoLogParam4);
            }
            this.mTmpWindow = w;
            return true;
        }
        if (activity != null && w.mAttrs.type != 3 && focusedApp.compareTo((WindowContainer) activity) > 0) {
            if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
                String protoLogParam5 = String.valueOf(focusedApp);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, -809771899, 0, null, protoLogParam5);
            }
            this.mTmpWindow = null;
            return true;
        }
        if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
            String protoLogParam6 = String.valueOf(w);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, -415865166, 0, null, protoLogParam6);
        }
        this.mTmpWindow = w;
        return true;
    }

    public /* synthetic */ void lambda$new$4$DisplayContent(WindowState w) {
        boolean gone = (this.mTmpWindow != null && this.mWmService.mPolicy.canBeHiddenByKeyguardLw(w)) || w.isGoneForLayoutLw();
        boolean z = w.mBehindIme;
        boolean z2 = this.mTmpWindowsBehindIme;
        if (z != z2) {
            w.mBehindIme = z2;
            if (getInsetsStateController().getRawInsetsState().getSourceOrDefaultVisibility(17)) {
                this.mWinInsetsChanged.add(w);
            }
        }
        if (w == this.mInputMethodWindow) {
            this.mTmpWindowsBehindIme = true;
        }
        if ((!gone || !w.mHaveFrame || w.mLayoutNeeded) && !w.mLayoutAttached) {
            if (this.mTmpInitial) {
                w.resetContentChanged();
            }
            if (w.mAttrs.type == 2044) {
                this.mTmpWindow = w;
            }
            w.mLayoutNeeded = false;
            w.prelayout();
            boolean firstLayout = !w.isLaidOut();
            getDisplayPolicy().layoutWindowLw(w, null, this.mDisplayFrames);
            w.mLayoutSeq = this.mLayoutSeq;
            if (firstLayout) {
                if (!w.getFrameLw().isEmpty()) {
                    w.updateLastFrames();
                }
                w.updateLastInsetValues();
                w.updateLocationInParentDisplayIfNeeded();
            }
            if (w.mActivityRecord != null) {
                w.mActivityRecord.layoutLetterbox(w);
            }
        }
    }

    public /* synthetic */ void lambda$new$5$DisplayContent(WindowState w) {
        if (w.mLayoutAttached) {
            if (this.mTmpWindow != null && this.mWmService.mPolicy.canBeHiddenByKeyguardLw(w)) {
                return;
            }
            if ((w.mViewVisibility != 8 && w.mRelayoutCalled) || !w.mHaveFrame || w.mLayoutNeeded) {
                if (this.mTmpInitial) {
                    w.resetContentChanged();
                }
                w.mLayoutNeeded = false;
                w.prelayout();
                getDisplayPolicy().layoutWindowLw(w, w.getParentWindow(), this.mDisplayFrames);
                w.mLayoutSeq = this.mLayoutSeq;
                return;
            }
            return;
        }
        if (w.mAttrs.type == 2044) {
            this.mTmpWindow = this.mTmpWindow2;
        }
    }

    public /* synthetic */ boolean lambda$new$6$DisplayContent(WindowState w) {
        return w.canBeImeTarget();
    }

    public /* synthetic */ void lambda$new$7$DisplayContent(WindowState w) {
        getDisplayPolicy().applyPostLayoutPolicyLw(w, w.mAttrs, w.getParentWindow(), this.mInputMethodTarget);
    }

    public /* synthetic */ void lambda$new$8$DisplayContent(WindowState w) {
        WindowSurfacePlacer windowSurfacePlacer = this.mWmService.mWindowPlacerLocked;
        boolean obscuredChanged = w.mObscured != this.mTmpApplySurfaceChangesTransactionState.obscured;
        RootWindowContainer root = this.mWmService.mRoot;
        w.mObscured = this.mTmpApplySurfaceChangesTransactionState.obscured;
        if (!this.mTmpApplySurfaceChangesTransactionState.obscured) {
            boolean isDisplayed = w.isDisplayedLw();
            if (isDisplayed && w.isObscuringDisplay()) {
                root.mObscuringWindow = w;
                this.mTmpApplySurfaceChangesTransactionState.obscured = true;
            }
            boolean displayHasContent = root.handleNotObscuredLocked(w, this.mTmpApplySurfaceChangesTransactionState.obscured, this.mTmpApplySurfaceChangesTransactionState.syswin);
            if (!this.mTmpApplySurfaceChangesTransactionState.displayHasContent && !getDisplayPolicy().isWindowExcludedFromContent(w)) {
                this.mTmpApplySurfaceChangesTransactionState.displayHasContent |= displayHasContent;
            }
            if (w.mHasSurface && isDisplayed) {
                int type = w.mAttrs.type;
                if (type == 2008 || type == 2010 || (type == 2040 && this.mWmService.mPolicy.isKeyguardShowing())) {
                    this.mTmpApplySurfaceChangesTransactionState.syswin = true;
                }
                if (this.mTmpApplySurfaceChangesTransactionState.preferredRefreshRate == 0.0f && w.mAttrs.preferredRefreshRate != 0.0f) {
                    this.mTmpApplySurfaceChangesTransactionState.preferredRefreshRate = w.mAttrs.preferredRefreshRate;
                }
                this.mTmpApplySurfaceChangesTransactionState.preferMinimalPostProcessing |= w.mAttrs.preferMinimalPostProcessing;
                int preferredModeId = getDisplayPolicy().getRefreshRatePolicy().getPreferredModeId(w);
                if (this.mTmpApplySurfaceChangesTransactionState.preferredModeId == 0 && preferredModeId != 0) {
                    this.mTmpApplySurfaceChangesTransactionState.preferredModeId = preferredModeId;
                }
            }
        }
        if (obscuredChanged && w.isVisibleLw() && this.mWallpaperController.isWallpaperTarget(w)) {
            this.mWallpaperController.updateWallpaperVisibility();
        }
        w.handleWindowMovedIfNeeded();
        WindowStateAnimator winAnimator = w.mWinAnimator;
        w.resetContentChanged();
        if (w.mHasSurface) {
            boolean committed = winAnimator.commitFinishDrawingLocked();
            if (committed) {
                if (this.isDefaultDisplay && (w.mAttrs.flags & 1048576) != 0) {
                    this.mWallpaperMayChange = true;
                    this.pendingLayoutChanges |= 4;
                }
                if (w.mAttrs.type == 2044) {
                    this.pendingLayoutChanges = 1 | this.pendingLayoutChanges;
                }
            }
        }
        ActivityRecord activity = w.mActivityRecord;
        if (activity != null) {
            activity.updateLetterboxSurface(w);
            boolean updateAllDrawn = activity.updateDrawnWindowStates(w);
            if (updateAllDrawn && !this.mTmpUpdateAllDrawn.contains(activity)) {
                this.mTmpUpdateAllDrawn.add(activity);
            }
        }
        if (!this.mLosingFocus.isEmpty() && w.isFocused() && w.isDisplayedLw()) {
            this.mWmService.mH.obtainMessage(3, this).sendToTarget();
        }
        w.updateResizingWindowIfNeeded();
    }

    DisplayContent(Display display, RootWindowContainer root) {
        boolean z;
        super(root.mWindowManager);
        this.mWindowContainers = new WindowContainers("mWindowContainers", this.mWmService);
        this.mOverlayContainers = new NonAppWindowContainers("mOverlayContainers", this.mWmService);
        this.mImeWindowsContainers = new ImeContainer(this.mWmService);
        this.mRootDisplayArea = new DisplayArea.Root(this.mWmService);
        this.mSkipAppTransitionAnimation = false;
        this.mOpeningApps = new ArraySet<>();
        this.mClosingApps = new ArraySet<>();
        this.mChangingContainers = new ArraySet<>();
        this.mNoAnimationNotifyOnTransitionFinished = new ArrayList();
        this.mTokenMap = new HashMap<>();
        this.mInitialDisplayWidth = 0;
        this.mInitialDisplayHeight = 0;
        this.mInitialDisplayDensity = 0;
        this.mDisplayCutoutCache = new RotationCache<>(new RotationCache.RotationDependentComputation() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$fiC19lMy-d_-rvza7hhOSw6bOM8
            @Override // com.android.server.wm.utils.RotationCache.RotationDependentComputation
            public final Object compute(Object obj, int i) {
                return this.f$0.calculateDisplayCutoutForRotationUncached((DisplayCutout) obj, i);
            }
        });
        this.mBaseDisplayWidth = 0;
        this.mBaseDisplayHeight = 0;
        this.mBaseDisplayDensity = 0;
        this.mDisplayInfo = new DisplayInfo();
        this.mDisplayMetrics = new DisplayMetrics();
        this.mSystemGestureExclusionListeners = new RemoteCallbackList<>();
        this.mSystemGestureExclusion = new Region();
        this.mSystemGestureExclusionWasRestricted = false;
        this.mSystemGestureExclusionUnrestricted = new Region();
        this.mRealDisplayMetrics = new DisplayMetrics();
        this.mTmpDisplayMetrics = new DisplayMetrics();
        this.mCompatDisplayMetrics = new DisplayMetrics();
        this.mLastWallpaperVisible = false;
        this.mBaseDisplayRect = new Rect();
        this.mShouldOverrideDisplayConfiguration = true;
        this.mExitingTokens = new ArrayList<>();
        this.mTouchExcludeRegion = new Region();
        this.mTmpRect = new Rect();
        this.mTmpRect2 = new Rect();
        this.mTmpRectF = new RectF();
        this.mTmpMatrix = new Matrix();
        this.mTmpRegion = new Region();
        this.mTmpBounds = new Rect();
        this.mTmpConfiguration = new Configuration();
        this.mTapExcludedWindows = new ArrayList<>();
        this.mTapExcludeProvidingWindows = new ArraySet<>();
        this.mTmpUpdateAllDrawn = new LinkedList<>();
        this.mTmpTaskForResizePointSearchResult = new TaskForResizePointSearchResult();
        this.mTmpApplySurfaceChangesTransactionState = new ApplySurfaceChangesTransactionState();
        this.mRemovingDisplay = false;
        this.mDisplayReady = false;
        this.mWallpaperMayChange = false;
        this.mSession = new SurfaceSession();
        this.mCurrentFocus = null;
        this.mLastFocus = null;
        this.mLosingFocus = new ArrayList<>();
        this.mFocusedApp = null;
        this.mFixedRotationTransitionListener = new FixedRotationTransitionListener();
        this.mWinAddedSinceNullFocus = new ArrayList<>();
        this.mWinRemovedSinceNullFocus = new ArrayList<>();
        this.mWinInsetsChanged = new ArrayList<>();
        this.mLayoutSeq = 0;
        this.mRotationUtil = new DisplayRotationUtil();
        this.mLocationInParentWindow = new Point();
        this.mLastStatusBarVisibility = 0;
        this.mLastDispatchedSystemUiVisibility = 0;
        this.mShellRoots = new SparseArray<>();
        this.mRemoteInsetsControlTarget = null;
        this.mRemoteInsetsDeath = new IBinder.DeathRecipient() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$DjwkABhnEVEEFPHXKA0QFcHdb2w
            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                this.f$0.lambda$new$0$DisplayContent();
            }
        };
        this.mDisplayAccessUIDs = new IntArray();
        this.mAllSleepTokens = new ArrayList<>();
        this.mTmpDisplaySize = new Point();
        this.mTempConfig = new Configuration();
        this.mInEnsureActivitiesVisible = false;
        this.mUpdateWindowsForAnimator = new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$D0QJUvhaQkGgoMtOmjw5foY9F8M
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$1$DisplayContent((WindowState) obj);
            }
        };
        this.mScheduleToastTimeout = new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$hRKjZwmneu0T85LNNY6_Zcs4gKM
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$2$DisplayContent((WindowState) obj);
            }
        };
        this.mFindFocusedWindow = new ToBooleanFunction() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$7uZtakUXzuXqF_Qht5Uq7LUvubI
            public final boolean apply(Object obj) {
                return this.f$0.lambda$new$3$DisplayContent((WindowState) obj);
            }
        };
        this.mPerformLayout = new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$qT01Aq6xt_ZOs86A1yDQe-qmPFQ
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$4$DisplayContent((WindowState) obj);
            }
        };
        this.mPerformLayoutAttached = new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$7voe_dEKk2BYMriCvPuvaznb9WQ
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$5$DisplayContent((WindowState) obj);
            }
        };
        this.mComputeImeTargetPredicate = new Predicate() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$new$6$DisplayContent((WindowState) obj);
            }
        };
        this.mApplyPostLayoutPolicy = new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$JibsaX4YnJd0ta_wiDDdSp-PjQk
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$7$DisplayContent((WindowState) obj);
            }
        };
        this.mApplySurfaceChangesTransaction = new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$qxt4izS31fb0LF2uo_OF9DMa7gc
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$8$DisplayContent((WindowState) obj);
            }
        };
        if (this.mWmService.mRoot.getDisplayContent(display.getDisplayId()) != null) {
            throw new IllegalArgumentException("Display with ID=" + display.getDisplayId() + " already exists=" + this.mWmService.mRoot.getDisplayContent(display.getDisplayId()) + " new=" + display);
        }
        this.mRootWindowContainer = root;
        this.mAtmService = this.mWmService.mAtmService;
        this.mDisplay = display;
        this.mDisplayId = display.getDisplayId();
        this.mOffTokenAcquirer = this.mRootWindowContainer.mDisplayOffTokenAcquirer;
        this.mWallpaperController = new WallpaperController(this.mWmService, this);
        display.getDisplayInfo(this.mDisplayInfo);
        display.getMetrics(this.mDisplayMetrics);
        this.mSystemGestureExclusionLimit = (this.mWmService.mConstants.mSystemGestureExclusionLimitDp * this.mDisplayMetrics.densityDpi) / 160;
        if (this.mDisplayId != 0) {
            z = false;
        } else {
            z = true;
        }
        this.isDefaultDisplay = z;
        int i = this.mDisplayId;
        DisplayInfo displayInfo = this.mDisplayInfo;
        this.mDisplayFrames = new DisplayFrames(i, displayInfo, calculateDisplayCutoutForRotation(displayInfo.rotation));
        initializeDisplayBaseInfo();
        AppTransition appTransition = new AppTransition(this.mWmService.mContext, this.mWmService, this);
        this.mAppTransition = appTransition;
        appTransition.registerListenerLocked(this.mWmService.mActivityManagerAppTransitionNotifier);
        this.mAppTransition.registerListenerLocked(this.mFixedRotationTransitionListener);
        this.mAppTransitionController = new AppTransitionController(this.mWmService, this);
        this.mUnknownAppVisibilityController = new UnknownAppVisibilityController(this.mWmService, this);
        InputChannel inputChannel = this.mWmService.mInputManager.monitorInput("PointerEventDispatcher" + this.mDisplayId, this.mDisplayId);
        this.mPointerEventDispatcher = new PointerEventDispatcher(inputChannel);
        TaskTapPointerEventListener taskTapPointerEventListener = new TaskTapPointerEventListener(this.mWmService, this);
        this.mTapDetector = taskTapPointerEventListener;
        registerPointerEventListener(taskTapPointerEventListener);
        registerPointerEventListener(this.mWmService.mMousePositionTracker);
        if (this.mWmService.mAtmService.getRecentTasks() != null) {
            registerPointerEventListener(this.mWmService.mAtmService.getRecentTasks().getInputListener());
        }
        this.mDisplayPolicy = new DisplayPolicy(this.mWmService, this);
        this.mDisplayRotation = new DisplayRotation(this.mWmService, this);
        this.mCloseToSquareMaxAspectRatio = this.mWmService.mContext.getResources().getFloat(R.dimen.config_backGestureInset);
        if (this.isDefaultDisplay) {
            this.mWmService.mPolicy.setDefaultDisplay(this);
        }
        if (this.mWmService.mDisplayReady) {
            this.mDisplayPolicy.onConfigurationChanged();
        }
        if (this.mWmService.mSystemReady) {
            this.mDisplayPolicy.systemReady();
        }
        this.mWindowCornerRadius = this.mDisplayPolicy.getWindowCornerRadius();
        this.mDividerControllerLocked = new DockedStackDividerController(this);
        this.mPinnedStackControllerLocked = new PinnedStackController(this.mWmService, this);
        SurfaceControl.Builder b = this.mWmService.makeSurfaceBuilder(this.mSession).setOpaque(true).setContainerLayer();
        this.mSurfaceControl = b.setName("Root").setContainerLayer().setCallsite("DisplayContent").build();
        getPendingTransaction().setLayer(this.mSurfaceControl, 0).setLayerStack(this.mSurfaceControl, this.mDisplayId).show(this.mSurfaceControl);
        getPendingTransaction().apply();
        super.addChild(this.mWindowContainers, (Comparator<WindowContainers>) null);
        super.addChild(this.mOverlayContainers, (Comparator<NonAppWindowContainers>) null);
        this.mDisplayAreaPolicy = this.mWmService.mDisplayAreaPolicyProvider.instantiate(this.mWmService, this, this.mRootDisplayArea, this.mImeWindowsContainers);
        this.mWindowContainers.addChildren();
        onDisplayChanged(this);
        this.mInputMonitor = new InputMonitor(this.mWmService, this);
        InsetsStateController insetsStateController = new InsetsStateController(this);
        this.mInsetsStateController = insetsStateController;
        this.mInsetsPolicy = new InsetsPolicy(insetsStateController, this);
        this.mWmService.mDisplayWindowSettings.applySettingsToDisplayLocked(this);
    }

    boolean isReady() {
        return this.mWmService.mDisplayReady && this.mDisplayReady;
    }

    int getDisplayId() {
        return this.mDisplayId;
    }

    float getWindowCornerRadius() {
        return this.mWindowCornerRadius;
    }

    WindowToken getWindowToken(IBinder binder) {
        return this.mTokenMap.get(binder);
    }

    ActivityRecord getActivityRecord(IBinder binder) {
        WindowToken token = getWindowToken(binder);
        if (token == null) {
            return null;
        }
        return token.asActivityRecord();
    }

    void addWindowToken(IBinder binder, WindowToken token) {
        DisplayContent dc = this.mWmService.mRoot.getWindowTokenDisplay(token);
        if (dc != null) {
            throw new IllegalArgumentException("Can't map token=" + token + " to display=" + getName() + " already mapped to display=" + dc + " tokens=" + dc.mTokenMap);
        }
        if (binder == null) {
            throw new IllegalArgumentException("Can't map token=" + token + " to display=" + getName() + " binder is null");
        }
        if (token == null) {
            throw new IllegalArgumentException("Can't map null token to display=" + getName() + " binder=" + binder);
        }
        this.mTokenMap.put(binder, token);
        if (token.asActivityRecord() == null) {
            token.mDisplayContent = this;
            int i = token.windowType;
            if (i == 2011 || i == 2012) {
                this.mImeWindowsContainers.addChild(token);
            } else if (i == 2039) {
                this.mOverlayContainers.addChild(token);
            } else {
                this.mDisplayAreaPolicy.addWindow(token);
            }
        }
    }

    WindowToken removeWindowToken(IBinder binder) {
        WindowToken token = this.mTokenMap.remove(binder);
        if (token != null && token.asActivityRecord() == null) {
            token.setExiting();
        }
        return token;
    }

    SurfaceControl addShellRoot(IWindow client, int windowType) {
        ShellRoot root = this.mShellRoots.get(windowType);
        if (root != null) {
            if (root.getClient() == client) {
                return root.getSurfaceControl();
            }
            root.clear();
            this.mShellRoots.remove(windowType);
        }
        ShellRoot root2 = new ShellRoot(client, this, windowType);
        SurfaceControl rootLeash = root2.getSurfaceControl();
        if (rootLeash == null) {
            root2.clear();
            return null;
        }
        this.mShellRoots.put(windowType, root2);
        SurfaceControl out = new SurfaceControl(rootLeash, "DisplayContent.addShellRoot");
        return out;
    }

    void removeShellRoot(int windowType) {
        synchronized (this.mWmService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                ShellRoot root = this.mShellRoots.get(windowType);
                if (root == null) {
                    return;
                }
                root.clear();
                this.mShellRoots.remove(windowType);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    void setRemoteInsetsController(IDisplayWindowInsetsController controller) {
        RemoteInsetsControlTarget remoteInsetsControlTarget = this.mRemoteInsetsControlTarget;
        if (remoteInsetsControlTarget != null) {
            remoteInsetsControlTarget.mRemoteInsetsController.asBinder().unlinkToDeath(this.mRemoteInsetsDeath, 0);
            this.mRemoteInsetsControlTarget = null;
        }
        if (controller != null) {
            try {
                controller.asBinder().linkToDeath(this.mRemoteInsetsDeath, 0);
                this.mRemoteInsetsControlTarget = new RemoteInsetsControlTarget(controller);
            } catch (RemoteException e) {
            }
        }
    }

    void reParentWindowToken(WindowToken token) {
        DisplayContent prevDc = token.getDisplayContent();
        if (prevDc == this) {
            return;
        }
        if (prevDc != null) {
            if (prevDc.mTokenMap.remove(token.token) != null && token.asActivityRecord() == null) {
                token.getParent().removeChild(token);
            }
            if (token.hasChild(prevDc.mLastFocus)) {
                prevDc.mLastFocus = null;
            }
        }
        addWindowToken(token.token, token);
        if (this.mWmService.mAccessibilityController != null) {
            int prevDisplayId = prevDc != null ? prevDc.getDisplayId() : -1;
            this.mWmService.mAccessibilityController.onSomeWindowResizedOrMovedLocked(prevDisplayId, getDisplayId());
        }
    }

    void removeAppToken(IBinder binder) {
        WindowToken token = removeWindowToken(binder);
        if (token == null) {
            Slog.w("WindowManager", "removeAppToken: Attempted to remove non-existing token: " + binder);
            return;
        }
        ActivityRecord activity = token.asActivityRecord();
        if (activity == null) {
            Slog.w("WindowManager", "Attempted to remove non-App token: " + binder + " token=" + token);
            return;
        }
        activity.onRemovedFromDisplay();
        if (activity == this.mFixedRotationLaunchingApp) {
            activity.finishFixedRotationTransform();
            setFixedRotationLaunchingAppUnchecked(null);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy.DisplayContentInfo
    public Display getDisplay() {
        return this.mDisplay;
    }

    DisplayInfo getDisplayInfo() {
        return this.mDisplayInfo;
    }

    DisplayMetrics getDisplayMetrics() {
        return this.mDisplayMetrics;
    }

    DisplayPolicy getDisplayPolicy() {
        return this.mDisplayPolicy;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.DisplayContentInfo
    public DisplayRotation getDisplayRotation() {
        return this.mDisplayRotation;
    }

    void setInsetProvider(int type, WindowState win, TriConsumer<DisplayFrames, WindowState, Rect> frameProvider) {
        setInsetProvider(type, win, frameProvider, null);
    }

    void setInsetProvider(int type, WindowState win, TriConsumer<DisplayFrames, WindowState, Rect> frameProvider, TriConsumer<DisplayFrames, WindowState, Rect> imeFrameProvider) {
        this.mInsetsStateController.getSourceProvider(type).setWindow(win, frameProvider, imeFrameProvider);
    }

    InsetsStateController getInsetsStateController() {
        return this.mInsetsStateController;
    }

    InsetsPolicy getInsetsPolicy() {
        return this.mInsetsPolicy;
    }

    int getRotation() {
        return this.mDisplayRotation.getRotation();
    }

    int getLastOrientation() {
        return this.mDisplayRotation.getLastOrientation();
    }

    void registerRemoteAnimations(RemoteAnimationDefinition definition) {
        this.mAppTransitionController.registerRemoteAnimations(definition);
    }

    void reconfigureDisplayLocked() {
        if (!isReady()) {
            return;
        }
        configureDisplayPolicy();
        setLayoutNeeded();
        boolean configChanged = updateOrientation();
        Configuration currentDisplayConfig = getConfiguration();
        this.mTmpConfiguration.setTo(currentDisplayConfig);
        computeScreenConfiguration(this.mTmpConfiguration);
        if (configChanged | (currentDisplayConfig.diff(this.mTmpConfiguration) != 0)) {
            this.mWaitingForConfig = true;
            this.mWmService.startFreezingDisplay(0, 0, this);
            sendNewConfiguration();
        }
        this.mWmService.mWindowPlacerLocked.performSurfacePlacement();
    }

    void sendNewConfiguration() {
        if (!isReady() || this.mDisplayRotation.isWaitingForRemoteRotation()) {
            return;
        }
        boolean configUpdated = updateDisplayOverrideConfigurationLocked();
        if (configUpdated) {
            return;
        }
        clearFixedRotationLaunchingApp();
        if (this.mWaitingForConfig) {
            this.mWaitingForConfig = false;
            this.mWmService.mLastFinishedFreezeSource = "config-unchanged";
            setLayoutNeeded();
            this.mWmService.mWindowPlacerLocked.performSurfacePlacement();
        }
    }

    @Override // com.android.server.wm.WindowContainer
    boolean onDescendantOrientationChanged(IBinder freezeDisplayToken, ConfigurationContainer requestingContainer) {
        Configuration config = updateOrientation(getRequestedOverrideConfiguration(), freezeDisplayToken, false);
        boolean handled = getDisplayRotation().respectAppRequestedOrientation();
        if (config == null) {
            return handled;
        }
        if (handled && (requestingContainer instanceof ActivityRecord)) {
            ActivityRecord activityRecord = (ActivityRecord) requestingContainer;
            boolean kept = updateDisplayOverrideConfigurationLocked(config, activityRecord, false, null);
            activityRecord.frozenBeforeDestroy = true;
            if (!kept) {
                this.mRootWindowContainer.resumeFocusedStacksTopActivities();
            }
        } else {
            updateDisplayOverrideConfigurationLocked(config, null, false, null);
        }
        return handled;
    }

    @Override // com.android.server.wm.WindowContainer
    boolean handlesOrientationChangeFromDescendant() {
        return getDisplayRotation().respectAppRequestedOrientation();
    }

    boolean updateOrientation() {
        return updateOrientation(false);
    }

    Configuration updateOrientation(Configuration currentConfig, IBinder freezeDisplayToken, boolean forceUpdate) {
        ActivityRecord activity;
        if (!this.mDisplayReady) {
            return null;
        }
        if (updateOrientation(forceUpdate)) {
            if (freezeDisplayToken != null && !this.mWmService.mRoot.mOrientationChangeComplete && (activity = getActivityRecord(freezeDisplayToken)) != null) {
                activity.startFreezingScreen();
            }
            Configuration config = new Configuration();
            computeScreenConfiguration(config);
            return config;
        }
        if (currentConfig == null) {
            return null;
        }
        this.mTmpConfiguration.unset();
        this.mTmpConfiguration.updateFrom(currentConfig);
        computeScreenConfiguration(this.mTmpConfiguration, true);
        if (currentConfig.diff(this.mTmpConfiguration) == 0) {
            return null;
        }
        this.mWaitingForConfig = true;
        setLayoutNeeded();
        this.mDisplayRotation.prepareNormalRotationAnimation();
        return new Configuration(this.mTmpConfiguration);
    }

    private boolean updateOrientation(boolean forceUpdate) {
        int orientation = getOrientation();
        WindowContainer orientationSource = getLastOrientationSource();
        ActivityRecord r = orientationSource != null ? orientationSource.asActivityRecord() : null;
        if (r != null) {
            Task task = r.getTask();
            if (task != null && orientation != task.mLastReportedRequestedOrientation) {
                task.mLastReportedRequestedOrientation = orientation;
                this.mAtmService.getTaskChangeNotificationController().notifyTaskRequestedOrientationChanged(task.mTaskId, orientation);
            }
            if (handleTopActivityLaunchingInDifferentOrientation(r, true)) {
                return false;
            }
        }
        return this.mDisplayRotation.updateOrientation(orientation, forceUpdate);
    }

    int rotationForActivityInDifferentOrientation(ActivityRecord r) {
        int currentRotation;
        int rotation;
        if (!WindowManagerService.ENABLE_FIXED_ROTATION_TRANSFORM || r.inMultiWindowMode() || r.getRequestedConfigurationOrientation() == getConfiguration().orientation || (rotation = this.mDisplayRotation.rotationForOrientation(r.getRequestedOrientation(), (currentRotation = getRotation()))) == currentRotation) {
            return -1;
        }
        return rotation;
    }

    boolean handleTopActivityLaunchingInDifferentOrientation(ActivityRecord r, boolean checkOpening) {
        if (!WindowManagerService.ENABLE_FIXED_ROTATION_TRANSFORM || r.isFinishingFixedRotationTransform()) {
            return false;
        }
        if (r.hasFixedRotationTransform()) {
            return true;
        }
        if (!r.occludesParent() || r.isVisible()) {
            return false;
        }
        if (checkOpening) {
            if (!this.mAppTransition.isTransitionSet() || !this.mOpeningApps.contains(r) || (this.mAppTransition.getTransitFlags() & 2) != 0) {
                return false;
            }
            if (r.isState(ActivityStack.ActivityState.RESUMED) && !r.getRootTask().mInResumeTopActivity) {
                return false;
            }
        } else if (r != topRunningActivity()) {
            return false;
        }
        int rotation = rotationForActivityInDifferentOrientation(r);
        if (rotation == -1) {
            if (hasTopFixedRotationLaunchingApp()) {
                this.mFixedRotationLaunchingApp.notifyFixedRotationTransform(false);
            }
            return false;
        }
        if (!r.getParent().matchParentBounds() || this.mPinnedStackControllerLocked.isPipActiveOrWindowingModeChanging()) {
            return false;
        }
        setFixedRotationLaunchingApp(r, rotation);
        return true;
    }

    boolean hasTopFixedRotationLaunchingApp() {
        ActivityRecord activityRecord = this.mFixedRotationLaunchingApp;
        return (activityRecord == null || activityRecord == this.mFixedRotationTransitionListener.mAnimatingRecents) ? false : true;
    }

    boolean isFixedRotationLaunchingApp(ActivityRecord r) {
        return this.mFixedRotationLaunchingApp == r;
    }

    FixedRotationAnimationController getFixedRotationAnimationController() {
        return this.mFixedRotationAnimationController;
    }

    void setFixedRotationLaunchingAppUnchecked(ActivityRecord r) {
        setFixedRotationLaunchingAppUnchecked(r, -1);
    }

    void setFixedRotationLaunchingAppUnchecked(ActivityRecord r, int rotation) {
        if (this.mFixedRotationLaunchingApp == null && r != null) {
            this.mWmService.mDisplayNotificationController.dispatchFixedRotationStarted(this, rotation);
            if (this.mFixedRotationAnimationController == null) {
                FixedRotationAnimationController fixedRotationAnimationController = new FixedRotationAnimationController(this);
                this.mFixedRotationAnimationController = fixedRotationAnimationController;
                fixedRotationAnimationController.hide();
            }
        } else if (this.mFixedRotationLaunchingApp != null && r == null) {
            this.mWmService.mDisplayNotificationController.dispatchFixedRotationFinished(this);
            finishFixedRotationAnimationIfPossible();
        }
        this.mFixedRotationLaunchingApp = r;
    }

    void setFixedRotationLaunchingApp(ActivityRecord r, int rotation) {
        WindowToken prevRotatedLaunchingApp = this.mFixedRotationLaunchingApp;
        if (prevRotatedLaunchingApp == r && r.getWindowConfiguration().getRotation() == rotation) {
            return;
        }
        if (prevRotatedLaunchingApp != null && prevRotatedLaunchingApp.getWindowConfiguration().getRotation() == rotation && prevRotatedLaunchingApp.isAnimating(3)) {
            r.linkFixedRotationTransform(prevRotatedLaunchingApp);
            if (r != this.mFixedRotationTransitionListener.mAnimatingRecents) {
                setFixedRotationLaunchingAppUnchecked(r, rotation);
                return;
            }
            return;
        }
        if (!r.hasFixedRotationTransform()) {
            startFixedRotationTransform(r, rotation);
        }
        setFixedRotationLaunchingAppUnchecked(r, rotation);
        if (prevRotatedLaunchingApp != null) {
            prevRotatedLaunchingApp.finishFixedRotationTransform();
        }
    }

    void continueUpdateOrientationForDiffOrienLaunchingApp() {
        if (this.mFixedRotationLaunchingApp == null) {
            return;
        }
        if (this.mDisplayRotation.updateOrientation(getOrientation(), false)) {
            sendNewConfiguration();
        } else {
            if (this.mDisplayRotation.isWaitingForRemoteRotation()) {
                return;
            }
            clearFixedRotationLaunchingApp();
        }
    }

    private void clearFixedRotationLaunchingApp() {
        ActivityRecord activityRecord = this.mFixedRotationLaunchingApp;
        if (activityRecord == null) {
            return;
        }
        activityRecord.finishFixedRotationTransform();
        setFixedRotationLaunchingAppUnchecked(null);
    }

    private void startFixedRotationTransform(WindowToken token, int rotation) {
        this.mTmpConfiguration.unset();
        DisplayInfo info = computeScreenConfiguration(this.mTmpConfiguration, rotation);
        WmDisplayCutout cutout = calculateDisplayCutoutForRotation(rotation);
        DisplayFrames displayFrames = new DisplayFrames(this.mDisplayId, info, cutout);
        token.applyFixedRotationTransform(info, displayFrames, this.mTmpConfiguration);
    }

    void rotateInDifferentOrientationIfNeeded(ActivityRecord activityRecord) {
        int rotation = rotationForActivityInDifferentOrientation(activityRecord);
        if (rotation != -1) {
            startFixedRotationTransform(activityRecord, rotation);
        }
    }

    void finishFixedRotationAnimationIfPossible() {
        FixedRotationAnimationController controller = this.mFixedRotationAnimationController;
        if (controller != null && !this.mDisplayRotation.hasSeamlessRotatingWindow()) {
            controller.show();
            this.mFixedRotationAnimationController = null;
        }
    }

    void notifyInsetsChanged(Consumer<WindowState> dispatchInsetsChanged) {
        InsetsState rotatedState;
        ActivityRecord activityRecord = this.mFixedRotationLaunchingApp;
        if (activityRecord != null && (rotatedState = activityRecord.getFixedRotationTransformInsetsState()) != null) {
            InsetsState state = this.mInsetsStateController.getRawInsetsState();
            for (int i = 0; i < 20; i++) {
                InsetsSource source = state.peekSource(i);
                if (source != null) {
                    rotatedState.setSourceVisible(i, source.isVisible());
                }
            }
        }
        forAllWindows(dispatchInsetsChanged, true);
        RemoteInsetsControlTarget remoteInsetsControlTarget = this.mRemoteInsetsControlTarget;
        if (remoteInsetsControlTarget != null) {
            remoteInsetsControlTarget.notifyInsetsChanged();
        }
    }

    boolean updateRotationUnchecked() {
        return this.mDisplayRotation.updateRotationUnchecked(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: applyRotation, reason: merged with bridge method [inline-methods] */
    public void lambda$applyRotationAndFinishFixedRotation$26$DisplayContent(final int oldRotation, final int rotation) {
        this.mDisplayRotation.applyCurrentRotation(rotation);
        final boolean rotateSeamlessly = this.mDisplayRotation.isRotatingSeamlessly();
        final SurfaceControl.Transaction transaction = getPendingTransaction();
        ScreenRotationAnimation screenRotationAnimation = rotateSeamlessly ? null : getRotationAnimation();
        updateDisplayAndOrientation(getConfiguration().uiMode, null);
        if (screenRotationAnimation != null && screenRotationAnimation.hasScreenshot()) {
            screenRotationAnimation.setRotation(transaction, rotation);
        }
        forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$rrIyMuu-GcQqYYNiuxrgp7_xvhQ
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WindowState) obj).seamlesslyRotateIfAllowed(transaction, oldRotation, rotation, rotateSeamlessly);
            }
        }, true);
        this.mWmService.mDisplayManagerInternal.performTraversal(transaction);
        scheduleAnimation();
        forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$-lwLvC_wAU5sgJoEjpK20Cc7yDo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$applyRotation$10$DisplayContent(rotateSeamlessly, (WindowState) obj);
            }
        }, true);
        if (rotateSeamlessly) {
            this.mWmService.mH.sendNewMessageDelayed(54, this, 2000L);
        }
        for (int i = this.mWmService.mRotationWatchers.size() - 1; i >= 0; i--) {
            WindowManagerService.RotationWatcher rotationWatcher = this.mWmService.mRotationWatchers.get(i);
            if (rotationWatcher.mDisplayId == this.mDisplayId) {
                try {
                    rotationWatcher.mWatcher.onRotationChanged(rotation);
                } catch (RemoteException e) {
                }
            }
        }
        if (this.mWmService.mAccessibilityController != null) {
            this.mWmService.mAccessibilityController.onRotationChangedLocked(this);
        }
    }

    public /* synthetic */ void lambda$applyRotation$10$DisplayContent(boolean rotateSeamlessly, WindowState w) {
        if (w.mHasSurface && !rotateSeamlessly) {
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                String protoLogParam0 = String.valueOf(w);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 2083556954, 0, null, protoLogParam0);
            }
            w.setOrientationChanging(true);
            this.mWmService.mRoot.mOrientationChangeComplete = false;
            w.mLastFreezeDuration = 0;
        }
        w.mReportOrientationChanged = true;
    }

    void configureDisplayPolicy() {
        int shortSize;
        int longSize;
        int width = this.mBaseDisplayWidth;
        int height = this.mBaseDisplayHeight;
        if (width > height) {
            shortSize = height;
            longSize = width;
        } else {
            shortSize = width;
            longSize = height;
        }
        int i = this.mBaseDisplayDensity;
        int shortSizeDp = (shortSize * 160) / i;
        int longSizeDp = (longSize * 160) / i;
        this.mDisplayPolicy.updateConfigurationAndScreenSizeDependentBehaviors();
        this.mDisplayRotation.configure(width, height, shortSizeDp, longSizeDp);
        DisplayFrames displayFrames = this.mDisplayFrames;
        DisplayInfo displayInfo = this.mDisplayInfo;
        displayFrames.onDisplayInfoUpdated(displayInfo, calculateDisplayCutoutForRotation(displayInfo.rotation));
        this.mIgnoreRotationForApps = isNonDecorDisplayCloseToSquare(0, width, height);
    }

    boolean ignoreRotationForApps() {
        return this.mIgnoreRotationForApps;
    }

    private boolean isNonDecorDisplayCloseToSquare(int rotation, int width, int height) {
        DisplayCutout displayCutout = calculateDisplayCutoutForRotation(rotation).getDisplayCutout();
        int uiMode = this.mWmService.mPolicy.getUiMode();
        int w = this.mDisplayPolicy.getNonDecorDisplayWidth(width, height, rotation, uiMode, displayCutout);
        int h = this.mDisplayPolicy.getNonDecorDisplayHeight(width, height, rotation, uiMode, displayCutout);
        float aspectRatio = Math.max(w, h) / Math.min(w, h);
        return aspectRatio <= this.mCloseToSquareMaxAspectRatio;
    }

    private DisplayInfo updateDisplayAndOrientation(int uiMode, Configuration outConfig) {
        int rotation = getRotation();
        boolean z = true;
        if (rotation != 1 && rotation != 3) {
            z = false;
        }
        boolean rotated = z;
        int dw = rotated ? this.mBaseDisplayHeight : this.mBaseDisplayWidth;
        int dh = rotated ? this.mBaseDisplayWidth : this.mBaseDisplayHeight;
        WmDisplayCutout wmDisplayCutout = calculateDisplayCutoutForRotation(rotation);
        DisplayCutout displayCutout = wmDisplayCutout.getDisplayCutout();
        int appWidth = this.mDisplayPolicy.getNonDecorDisplayWidth(dw, dh, rotation, uiMode, displayCutout);
        int appHeight = this.mDisplayPolicy.getNonDecorDisplayHeight(dw, dh, rotation, uiMode, displayCutout);
        this.mDisplayInfo.rotation = rotation;
        this.mDisplayInfo.logicalWidth = dw;
        this.mDisplayInfo.logicalHeight = dh;
        this.mDisplayInfo.logicalDensityDpi = this.mBaseDisplayDensity;
        this.mDisplayInfo.appWidth = appWidth;
        this.mDisplayInfo.appHeight = appHeight;
        if (this.isDefaultDisplay) {
            this.mDisplayInfo.getLogicalMetrics(this.mRealDisplayMetrics, CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO, (Configuration) null);
        }
        this.mDisplayInfo.displayCutout = displayCutout.isEmpty() ? null : displayCutout;
        this.mDisplayInfo.getAppMetrics(this.mDisplayMetrics);
        if (this.mDisplayScalingDisabled) {
            this.mDisplayInfo.flags |= 1073741824;
        } else {
            this.mDisplayInfo.flags &= -1073741825;
        }
        computeSizeRangesAndScreenLayout(this.mDisplayInfo, rotated, uiMode, dw, dh, this.mDisplayMetrics.density, outConfig);
        DisplayInfo overrideDisplayInfo = this.mShouldOverrideDisplayConfiguration ? this.mDisplayInfo : null;
        this.mWmService.mDisplayManagerInternal.setDisplayInfoOverrideFromWindowManager(this.mDisplayId, overrideDisplayInfo);
        this.mBaseDisplayRect.set(0, 0, dw, dh);
        if (this.isDefaultDisplay) {
            this.mCompatibleScreenScale = CompatibilityInfo.computeCompatibleScaling(this.mDisplayMetrics, this.mCompatDisplayMetrics);
        }
        return this.mDisplayInfo;
    }

    WmDisplayCutout calculateDisplayCutoutForRotation(int rotation) {
        return this.mDisplayCutoutCache.getOrCompute(this.mInitialDisplayCutout, rotation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WmDisplayCutout calculateDisplayCutoutForRotationUncached(DisplayCutout cutout, int rotation) {
        if (cutout == null || cutout == DisplayCutout.NO_CUTOUT) {
            return WmDisplayCutout.NO_CUTOUT;
        }
        Insets waterfallInsets = RotationUtils.rotateInsets(cutout.getWaterfallInsets(), rotation);
        if (rotation == 0) {
            return WmDisplayCutout.computeSafeInsets(cutout, this.mInitialDisplayWidth, this.mInitialDisplayHeight);
        }
        boolean rotated = true;
        if (rotation != 1 && rotation != 3) {
            rotated = false;
        }
        Rect[] newBounds = this.mRotationUtil.getRotatedBounds(cutout.getBoundingRectsAll(), rotation, this.mInitialDisplayWidth, this.mInitialDisplayHeight);
        return WmDisplayCutout.computeSafeInsets(DisplayCutout.fromBoundsAndWaterfall(newBounds, waterfallInsets), rotated ? this.mInitialDisplayHeight : this.mInitialDisplayWidth, rotated ? this.mInitialDisplayWidth : this.mInitialDisplayHeight);
    }

    DisplayInfo computeScreenConfiguration(Configuration outConfig, int rotation) {
        boolean z = true;
        if (rotation != 1 && rotation != 3) {
            z = false;
        }
        boolean rotated = z;
        int dw = rotated ? this.mBaseDisplayHeight : this.mBaseDisplayWidth;
        int dh = rotated ? this.mBaseDisplayWidth : this.mBaseDisplayHeight;
        outConfig.windowConfiguration.getBounds().set(0, 0, dw, dh);
        int uiMode = getConfiguration().uiMode;
        DisplayCutout displayCutout = calculateDisplayCutoutForRotation(rotation).getDisplayCutout();
        computeScreenAppConfiguration(outConfig, dw, dh, rotation, uiMode, displayCutout);
        DisplayInfo displayInfo = new DisplayInfo(this.mDisplayInfo);
        displayInfo.rotation = rotation;
        displayInfo.logicalWidth = dw;
        displayInfo.logicalHeight = dh;
        Rect appBounds = outConfig.windowConfiguration.getAppBounds();
        displayInfo.appWidth = appBounds.width();
        displayInfo.appHeight = appBounds.height();
        displayInfo.displayCutout = displayCutout.isEmpty() ? null : displayCutout;
        computeSizeRangesAndScreenLayout(displayInfo, rotated, uiMode, dw, dh, this.mDisplayMetrics.density, outConfig);
        return displayInfo;
    }

    private void computeScreenAppConfiguration(Configuration outConfig, int dw, int dh, int rotation, int uiMode, DisplayCutout displayCutout) {
        int appWidth = this.mDisplayPolicy.getNonDecorDisplayWidth(dw, dh, rotation, uiMode, displayCutout);
        int appHeight = this.mDisplayPolicy.getNonDecorDisplayHeight(dw, dh, rotation, uiMode, displayCutout);
        this.mDisplayPolicy.getNonDecorInsetsLw(rotation, dw, dh, displayCutout, this.mTmpRect);
        int leftInset = this.mTmpRect.left;
        int topInset = this.mTmpRect.top;
        outConfig.windowConfiguration.setAppBounds(leftInset, topInset, leftInset + appWidth, topInset + appHeight);
        outConfig.windowConfiguration.setRotation(rotation);
        boolean z = true;
        outConfig.orientation = dw <= dh ? 1 : 2;
        float density = this.mDisplayMetrics.density;
        outConfig.screenWidthDp = (int) (this.mDisplayPolicy.getConfigDisplayWidth(dw, dh, rotation, uiMode, displayCutout) / density);
        outConfig.screenHeightDp = (int) (this.mDisplayPolicy.getConfigDisplayHeight(dw, dh, rotation, uiMode, displayCutout) / density);
        outConfig.compatScreenWidthDp = (int) (outConfig.screenWidthDp / this.mCompatibleScreenScale);
        outConfig.compatScreenHeightDp = (int) (outConfig.screenHeightDp / this.mCompatibleScreenScale);
        if (rotation != 1 && rotation != 3) {
            z = false;
        }
        boolean rotated = z;
        outConfig.compatSmallestScreenWidthDp = computeCompatSmallestWidth(rotated, uiMode, dw, dh);
    }

    void computeScreenConfiguration(Configuration config) {
        computeScreenConfiguration(config, false);
    }

    void computeScreenConfiguration(Configuration config, boolean ignoreTouchScreenChange) {
        int i;
        int i2;
        int i3;
        int i4;
        DisplayInfo displayInfo = updateDisplayAndOrientation(config.uiMode, config);
        calculateBounds(displayInfo, this.mTmpBounds);
        config.windowConfiguration.setBounds(this.mTmpBounds);
        config.windowConfiguration.setWindowingMode(getWindowingMode());
        config.windowConfiguration.setDisplayWindowingMode(getWindowingMode());
        int dw = displayInfo.logicalWidth;
        int dh = displayInfo.logicalHeight;
        computeScreenAppConfiguration(config, dw, dh, displayInfo.rotation, config.uiMode, displayInfo.displayCutout);
        int i5 = config.screenLayout & (-769);
        if ((displayInfo.flags & 16) != 0) {
            i = 512;
        } else {
            i = 256;
        }
        config.screenLayout = i5 | i;
        config.densityDpi = displayInfo.logicalDensityDpi;
        if (displayInfo.isHdr() && this.mWmService.hasHdrSupport()) {
            i2 = 8;
        } else {
            i2 = 4;
        }
        int i6 = 1;
        if (displayInfo.isWideColorGamut() && this.mWmService.hasWideColorGamutSupport()) {
            i3 = 2;
        } else {
            i3 = 1;
        }
        config.colorMode = i2 | i3;
        config.touchscreen = 1;
        config.keyboard = 1;
        config.navigation = 1;
        int keyboardPresence = 0;
        int navigationPresence = 0;
        InputDevice[] devices = this.mWmService.mInputManager.getInputDevices();
        int len = devices != null ? devices.length : 0;
        int i7 = 0;
        while (i7 < len) {
            InputDevice device = devices[i7];
            if (!device.isVirtual()) {
                if (this.mWmService.mInputManager.canDispatchToDisplay(device.getId(), displayInfo.type == 5 ? 0 : this.mDisplayId) || ignoreTouchScreenChange) {
                    int sources = device.getSources();
                    int presenceFlag = device.isExternal() ? 2 : i6;
                    if (this.mWmService.mIsTouchDevice) {
                        if ((sources & UsbACInterface.FORMAT_II_AC3) == 4098) {
                            config.touchscreen = 3;
                        }
                    } else {
                        config.touchscreen = 1;
                    }
                    if ((sources & 65540) == 65540) {
                        config.navigation = 3;
                        navigationPresence |= presenceFlag;
                        i4 = 2;
                    } else if ((sources & UsbTerminalTypes.TERMINAL_IN_MIC) != 513 || config.navigation != 1) {
                        i4 = 2;
                    } else {
                        i4 = 2;
                        config.navigation = 2;
                        navigationPresence |= presenceFlag;
                    }
                    if (device.getKeyboardType() == i4) {
                        config.keyboard = i4;
                        keyboardPresence |= presenceFlag;
                    }
                }
            }
            i7++;
            i6 = 1;
        }
        if (config.navigation == 1 && this.mWmService.mHasPermanentDpad) {
            config.navigation = 2;
            navigationPresence |= 1;
        }
        boolean hardKeyboardAvailable = config.keyboard != 1;
        if (hardKeyboardAvailable != this.mWmService.mHardKeyboardAvailable) {
            this.mWmService.mHardKeyboardAvailable = hardKeyboardAvailable;
            this.mWmService.mH.removeMessages(22);
            this.mWmService.mH.sendEmptyMessage(22);
        }
        this.mDisplayPolicy.updateConfigurationAndScreenSizeDependentBehaviors();
        config.keyboardHidden = 1;
        config.hardKeyboardHidden = 1;
        config.navigationHidden = 1;
        this.mWmService.mPolicy.adjustConfigurationLw(config, keyboardPresence, navigationPresence);
    }

    private int computeCompatSmallestWidth(boolean rotated, int uiMode, int dw, int dh) {
        int unrotDw;
        int unrotDh;
        this.mTmpDisplayMetrics.setTo(this.mDisplayMetrics);
        DisplayMetrics tmpDm = this.mTmpDisplayMetrics;
        if (rotated) {
            unrotDw = dh;
            unrotDh = dw;
        } else {
            unrotDw = dw;
            unrotDh = dh;
        }
        int sw = reduceCompatConfigWidthSize(0, 0, uiMode, tmpDm, unrotDw, unrotDh);
        return reduceCompatConfigWidthSize(reduceCompatConfigWidthSize(reduceCompatConfigWidthSize(sw, 1, uiMode, tmpDm, unrotDh, unrotDw), 2, uiMode, tmpDm, unrotDw, unrotDh), 3, uiMode, tmpDm, unrotDh, unrotDw);
    }

    private int reduceCompatConfigWidthSize(int curSize, int rotation, int uiMode, DisplayMetrics dm, int dw, int dh) {
        DisplayCutout displayCutout = calculateDisplayCutoutForRotation(rotation).getDisplayCutout();
        dm.noncompatWidthPixels = this.mDisplayPolicy.getNonDecorDisplayWidth(dw, dh, rotation, uiMode, displayCutout);
        dm.noncompatHeightPixels = this.mDisplayPolicy.getNonDecorDisplayHeight(dw, dh, rotation, uiMode, displayCutout);
        float scale = CompatibilityInfo.computeCompatibleScaling(dm, (DisplayMetrics) null);
        int size = (int) (((dm.noncompatWidthPixels / scale) / dm.density) + 0.5f);
        if (curSize == 0 || size < curSize) {
            return size;
        }
        return curSize;
    }

    private void computeSizeRangesAndScreenLayout(DisplayInfo displayInfo, boolean rotated, int uiMode, int dw, int dh, float density, Configuration outConfig) {
        int unrotDw;
        int unrotDh;
        if (rotated) {
            unrotDw = dh;
            unrotDh = dw;
        } else {
            unrotDw = dw;
            unrotDh = dh;
        }
        displayInfo.smallestNominalAppWidth = 1073741824;
        displayInfo.smallestNominalAppHeight = 1073741824;
        displayInfo.largestNominalAppWidth = 0;
        displayInfo.largestNominalAppHeight = 0;
        adjustDisplaySizeRanges(displayInfo, 0, uiMode, unrotDw, unrotDh);
        adjustDisplaySizeRanges(displayInfo, 1, uiMode, unrotDh, unrotDw);
        adjustDisplaySizeRanges(displayInfo, 2, uiMode, unrotDw, unrotDh);
        adjustDisplaySizeRanges(displayInfo, 3, uiMode, unrotDh, unrotDw);
        if (outConfig == null) {
            return;
        }
        int sl = Configuration.resetScreenLayout(outConfig.screenLayout);
        int sl2 = reduceConfigLayout(reduceConfigLayout(reduceConfigLayout(reduceConfigLayout(sl, 0, density, unrotDw, unrotDh, uiMode), 1, density, unrotDh, unrotDw, uiMode), 2, density, unrotDw, unrotDh, uiMode), 3, density, unrotDh, unrotDw, uiMode);
        outConfig.smallestScreenWidthDp = (int) (displayInfo.smallestNominalAppWidth / density);
        outConfig.screenLayout = sl2;
    }

    private int reduceConfigLayout(int curLayout, int rotation, float density, int dw, int dh, int uiMode) {
        DisplayCutout displayCutout = calculateDisplayCutoutForRotation(rotation).getDisplayCutout();
        int w = this.mDisplayPolicy.getNonDecorDisplayWidth(dw, dh, rotation, uiMode, displayCutout);
        int h = this.mDisplayPolicy.getNonDecorDisplayHeight(dw, dh, rotation, uiMode, displayCutout);
        int longSize = w;
        int shortSize = h;
        if (longSize < shortSize) {
            longSize = shortSize;
            shortSize = longSize;
        }
        return Configuration.reduceScreenLayout(curLayout, (int) (longSize / density), (int) (shortSize / density));
    }

    private void adjustDisplaySizeRanges(DisplayInfo displayInfo, int rotation, int uiMode, int dw, int dh) {
        DisplayCutout displayCutout = calculateDisplayCutoutForRotation(rotation).getDisplayCutout();
        int width = this.mDisplayPolicy.getConfigDisplayWidth(dw, dh, rotation, uiMode, displayCutout);
        if (width < displayInfo.smallestNominalAppWidth) {
            displayInfo.smallestNominalAppWidth = width;
        }
        if (width > displayInfo.largestNominalAppWidth) {
            displayInfo.largestNominalAppWidth = width;
        }
        int height = this.mDisplayPolicy.getConfigDisplayHeight(dw, dh, rotation, uiMode, displayCutout);
        if (height < displayInfo.smallestNominalAppHeight) {
            displayInfo.smallestNominalAppHeight = height;
        }
        if (height > displayInfo.largestNominalAppHeight) {
            displayInfo.largestNominalAppHeight = height;
        }
    }

    int getPreferredOptionsPanelGravity() {
        int rotation = getRotation();
        if (this.mInitialDisplayWidth < this.mInitialDisplayHeight) {
            if (rotation != 1) {
                return rotation != 3 ? 81 : 8388691;
            }
            return 85;
        }
        if (rotation == 1) {
            return 81;
        }
        if (rotation != 2) {
            return rotation != 3 ? 85 : 81;
        }
        return 8388691;
    }

    DockedStackDividerController getDockedDividerController() {
        return this.mDividerControllerLocked;
    }

    PinnedStackController getPinnedStackController() {
        return this.mPinnedStackControllerLocked;
    }

    boolean hasAccess(int uid) {
        return this.mDisplay.hasAccess(uid);
    }

    boolean isPrivate() {
        return (this.mDisplay.getFlags() & 4) != 0;
    }

    boolean isTrusted() {
        return this.mDisplay.isTrusted();
    }

    ActivityStack getStack(int windowingMode, int activityType) {
        for (int tdaNdx = getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
            ActivityStack stack = getTaskDisplayAreaAt(tdaNdx).getStack(windowingMode, activityType);
            if (stack != null) {
                return stack;
            }
        }
        return null;
    }

    protected int getTaskDisplayAreaCount() {
        return this.mDisplayAreaPolicy.getTaskDisplayAreaCount();
    }

    protected TaskDisplayArea getTaskDisplayAreaAt(int index) {
        return this.mDisplayAreaPolicy.getTaskDisplayAreaAt(index);
    }

    ActivityStack getStack(int rootTaskId) {
        for (int tdaNdx = getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
            ActivityStack stack = getTaskDisplayAreaAt(tdaNdx).getStack(rootTaskId);
            if (stack != null) {
                return stack;
            }
        }
        return null;
    }

    protected int getStackCount() {
        int totalStackCount = 0;
        for (int i = getTaskDisplayAreaCount() - 1; i >= 0; i--) {
            totalStackCount += getTaskDisplayAreaAt(i).getStackCount();
        }
        return totalStackCount;
    }

    ActivityStack getTopStack() {
        for (int i = getTaskDisplayAreaCount() - 1; i >= 0; i--) {
            ActivityStack stack = getTaskDisplayAreaAt(i).getTopStack();
            if (stack != null) {
                return stack;
            }
        }
        return null;
    }

    int getCurrentOverrideConfigurationChanges() {
        return this.mCurrentOverrideConfigurationChanges;
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public void onConfigurationChanged(Configuration newParentConfig) {
        preOnConfigurationChanged();
        int lastOrientation = getConfiguration().orientation;
        super.onConfigurationChanged(newParentConfig);
        DisplayPolicy displayPolicy = this.mDisplayPolicy;
        if (displayPolicy != null) {
            displayPolicy.onConfigurationChanged();
        }
        if (lastOrientation != getConfiguration().orientation) {
            getMetricsLogger().write(new LogMaker(1659).setSubtype(getConfiguration().orientation).addTaggedData(1660, Integer.valueOf(getDisplayId())));
        }
        PinnedStackController pinnedStackController = this.mPinnedStackControllerLocked;
        if (pinnedStackController != null) {
            pinnedStackController.onDisplayInfoChanged(getDisplayInfo());
        }
    }

    void preOnConfigurationChanged() {
        PinnedStackController pinnedStackController = getPinnedStackController();
        if (pinnedStackController != null) {
            getPinnedStackController().onConfigurationChanged();
        }
    }

    @Override // com.android.server.wm.WindowContainer
    boolean fillsParent() {
        return true;
    }

    @Override // com.android.server.wm.WindowContainer
    boolean isVisible() {
        return true;
    }

    @Override // com.android.server.wm.WindowContainer
    void onAppTransitionDone() {
        super.onAppTransitionDone();
        this.mWmService.mWindowsChanged = true;
        ActivityRecord activityRecord = this.mFixedRotationLaunchingApp;
        if (activityRecord != null && !activityRecord.mVisibleRequested && !this.mFixedRotationLaunchingApp.isVisible() && !this.mDisplayRotation.isRotatingSeamlessly()) {
            clearFixedRotationLaunchingApp();
        }
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public void setWindowingMode(int windowingMode) {
        super.setWindowingMode(windowingMode);
        super.setDisplayWindowingMode(windowingMode);
    }

    @Override // com.android.server.wm.ConfigurationContainer
    void setDisplayWindowingMode(int windowingMode) {
        setWindowingMode(windowingMode);
    }

    boolean forAllImeWindows(ToBooleanFunction<WindowState> callback, boolean traverseTopToBottom) {
        return this.mImeWindowsContainers.forAllWindowForce(callback, traverseTopToBottom);
    }

    @Override // com.android.server.wm.WindowContainer
    int getOrientation() {
        this.mLastOrientationSource = null;
        if (this.mIgnoreRotationForApps) {
            return 2;
        }
        if (this.mWmService.mDisplayFrozen && this.mWmService.mPolicy.isKeyguardLocked()) {
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                long protoLogParam0 = this.mDisplayId;
                long protoLogParam1 = getLastOrientation();
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -1710206702, 5, null, Long.valueOf(protoLogParam0), Long.valueOf(protoLogParam1));
            }
            return getLastOrientation();
        }
        int rootOrientation = this.mRootDisplayArea.getOrientation();
        this.mLastOrientationSource = this.mRootDisplayArea.getLastOrientationSource();
        return rootOrientation;
    }

    void updateDisplayInfo() {
        updateBaseDisplayMetricsIfNeeded();
        this.mDisplay.getDisplayInfo(this.mDisplayInfo);
        this.mDisplay.getMetrics(this.mDisplayMetrics);
        onDisplayChanged(this);
    }

    @Override // com.android.server.wm.WindowContainer
    void onDisplayChanged(DisplayContent dc) {
        super.onDisplayChanged(dc);
        updateSystemGestureExclusionLimit();
    }

    void updateSystemGestureExclusionLimit() {
        this.mSystemGestureExclusionLimit = (this.mWmService.mConstants.mSystemGestureExclusionLimitDp * this.mDisplayMetrics.densityDpi) / 160;
        updateSystemGestureExclusion();
    }

    void initializeDisplayBaseInfo() {
        DisplayInfo newDisplayInfo;
        DisplayManagerInternal displayManagerInternal = this.mWmService.mDisplayManagerInternal;
        if (displayManagerInternal != null && (newDisplayInfo = displayManagerInternal.getDisplayInfo(this.mDisplayId)) != null) {
            this.mDisplayInfo.copyFrom(newDisplayInfo);
        }
        updateBaseDisplayMetrics(this.mDisplayInfo.logicalWidth, this.mDisplayInfo.logicalHeight, this.mDisplayInfo.logicalDensityDpi);
        this.mInitialDisplayWidth = this.mDisplayInfo.logicalWidth;
        this.mInitialDisplayHeight = this.mDisplayInfo.logicalHeight;
        this.mInitialDisplayDensity = this.mDisplayInfo.logicalDensityDpi;
        this.mInitialDisplayCutout = this.mDisplayInfo.displayCutout;
    }

    private void updateBaseDisplayMetricsIfNeeded() {
        this.mWmService.mDisplayManagerInternal.getNonOverrideDisplayInfo(this.mDisplayId, this.mDisplayInfo);
        int orientation = this.mDisplayInfo.rotation;
        boolean rotated = orientation == 1 || orientation == 3;
        DisplayInfo displayInfo = this.mDisplayInfo;
        int newWidth = rotated ? displayInfo.logicalHeight : displayInfo.logicalWidth;
        DisplayInfo displayInfo2 = this.mDisplayInfo;
        int newHeight = rotated ? displayInfo2.logicalWidth : displayInfo2.logicalHeight;
        int newDensity = this.mDisplayInfo.logicalDensityDpi;
        DisplayCutout newCutout = this.mDisplayInfo.displayCutout;
        boolean displayMetricsChanged = (this.mInitialDisplayWidth == newWidth && this.mInitialDisplayHeight == newHeight && this.mInitialDisplayDensity == this.mDisplayInfo.logicalDensityDpi && Objects.equals(this.mInitialDisplayCutout, newCutout)) ? false : true;
        if (displayMetricsChanged) {
            boolean isDisplaySizeForced = (this.mBaseDisplayWidth == this.mInitialDisplayWidth && this.mBaseDisplayHeight == this.mInitialDisplayHeight) ? false : true;
            boolean isDisplayDensityForced = this.mBaseDisplayDensity != this.mInitialDisplayDensity;
            updateBaseDisplayMetrics(isDisplaySizeForced ? this.mBaseDisplayWidth : newWidth, isDisplaySizeForced ? this.mBaseDisplayHeight : newHeight, isDisplayDensityForced ? this.mBaseDisplayDensity : newDensity);
            this.mInitialDisplayWidth = newWidth;
            this.mInitialDisplayHeight = newHeight;
            this.mInitialDisplayDensity = newDensity;
            this.mInitialDisplayCutout = newCutout;
            reconfigureDisplayLocked();
        }
    }

    void setMaxUiWidth(int width) {
        this.mMaxUiWidth = width;
        updateBaseDisplayMetrics(this.mBaseDisplayWidth, this.mBaseDisplayHeight, this.mBaseDisplayDensity);
    }

    void updateBaseDisplayMetrics(int baseWidth, int baseHeight, int baseDensity) {
        this.mBaseDisplayWidth = baseWidth;
        this.mBaseDisplayHeight = baseHeight;
        this.mBaseDisplayDensity = baseDensity;
        int i = this.mMaxUiWidth;
        if (i > 0 && baseWidth > i) {
            this.mBaseDisplayHeight = (i * baseHeight) / baseWidth;
            this.mBaseDisplayDensity = (i * baseDensity) / baseWidth;
            this.mBaseDisplayWidth = i;
        }
        this.mBaseDisplayRect.set(0, 0, this.mBaseDisplayWidth, this.mBaseDisplayHeight);
        updateBounds();
    }

    void setForcedDensity(int density, int userId) {
        boolean updateCurrent = userId == -2;
        if (this.mWmService.mCurrentUserId == userId || updateCurrent) {
            this.mBaseDisplayDensity = density;
            reconfigureDisplayLocked();
        }
        if (updateCurrent) {
            return;
        }
        if (density == this.mInitialDisplayDensity) {
            density = 0;
        }
        this.mWmService.mDisplayWindowSettings.setForcedDensity(this, density, userId);
    }

    void setForcedScalingMode(int mode) {
        if (mode != 1) {
            mode = 0;
        }
        this.mDisplayScalingDisabled = mode != 0;
        StringBuilder sb = new StringBuilder();
        sb.append("Using display scaling mode: ");
        sb.append(this.mDisplayScalingDisabled ? "off" : UiModeManagerService.Shell.NIGHT_MODE_STR_AUTO);
        Slog.i("WindowManager", sb.toString());
        reconfigureDisplayLocked();
        this.mWmService.mDisplayWindowSettings.setForcedScalingMode(this, mode);
    }

    void setForcedSize(int width, int height) {
        boolean clear = this.mInitialDisplayWidth == width && this.mInitialDisplayHeight == height;
        if (!clear) {
            width = Math.min(Math.max(width, DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE), this.mInitialDisplayWidth * 2);
            height = Math.min(Math.max(height, DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE), this.mInitialDisplayHeight * 2);
        }
        Slog.i("WindowManager", "Using new display size: " + width + "x" + height);
        updateBaseDisplayMetrics(width, height, this.mBaseDisplayDensity);
        reconfigureDisplayLocked();
        if (clear) {
            height = 0;
            width = 0;
        }
        this.mWmService.mDisplayWindowSettings.setForcedSize(this, width, height);
    }

    void getStableRect(Rect out) {
        out.set(this.mDisplayFrames.mStable);
    }

    TaskDisplayArea getDefaultTaskDisplayArea() {
        return this.mDisplayAreaPolicy.getTaskDisplayAreaAt(0);
    }

    protected void addChild(DisplayChildWindowContainer child, Comparator<DisplayChildWindowContainer> comparator) {
        throw new UnsupportedOperationException("See DisplayChildWindowContainer");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.wm.WindowContainer
    public void addChild(DisplayChildWindowContainer child, int index) {
        throw new UnsupportedOperationException("See DisplayChildWindowContainer");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.wm.WindowContainer
    public void removeChild(DisplayChildWindowContainer child) {
        if (this.mRemovingDisplay) {
            super.removeChild(child);
            return;
        }
        throw new UnsupportedOperationException("See DisplayChildWindowContainer");
    }

    void positionDisplayAt(int position, boolean includingParents) {
        getParent().positionChildAt(position, this, includingParents);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.android.server.wm.WindowContainer
    public void positionChildAt(int position, DisplayChildWindowContainer child, boolean includingParents) {
        positionDisplayAt(position, includingParents);
    }

    boolean pointWithinAppWindow(final int x, final int y) {
        final int[] targetWindowType = {-1};
        PooledConsumer fn = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$n90JauAfTfQVesyRzx0-TX7s1LM
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                DisplayContent.lambda$pointWithinAppWindow$11(targetWindowType, x, y, (WindowState) obj, (Rect) obj2);
            }
        }, PooledLambda.__(WindowState.class), this.mTmpRect);
        forAllWindows((Consumer<WindowState>) fn, true);
        fn.recycle();
        return 1 <= targetWindowType[0] && targetWindowType[0] <= 99;
    }

    static /* synthetic */ void lambda$pointWithinAppWindow$11(int[] targetWindowType, int x, int y, WindowState w, Rect nonArg) {
        if (targetWindowType[0] == -1 && w.isOnScreen() && w.isVisibleLw() && w.getFrameLw().contains(x, y)) {
            targetWindowType[0] = w.mAttrs.type;
        }
    }

    Task findTaskForResizePoint(int x, int y) {
        int delta = WindowManagerService.dipToPixel(30, this.mDisplayMetrics);
        return this.mTmpTaskForResizePointSearchResult.process(getDefaultTaskDisplayArea(), x, y, delta);
    }

    void updateTouchExcludeRegion() {
        ActivityRecord activityRecord = this.mFocusedApp;
        Task focusedTask = activityRecord != null ? activityRecord.getTask() : null;
        if (focusedTask == null) {
            this.mTouchExcludeRegion.setEmpty();
        } else {
            this.mTouchExcludeRegion.set(this.mBaseDisplayRect);
            int delta = WindowManagerService.dipToPixel(30, this.mDisplayMetrics);
            this.mTmpRect.setEmpty();
            this.mTmpRect2.setEmpty();
            PooledConsumer c = PooledLambda.obtainConsumer(new QuadConsumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$cDcvMzGxc6XW13Q8FrU5X4DagqE
                public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                    ((DisplayContent) obj).processTaskForTouchExcludeRegion((Task) obj2, (Task) obj3, ((Integer) obj4).intValue());
                }
            }, this, PooledLambda.__(Task.class), focusedTask, Integer.valueOf(delta));
            forAllTasks((Consumer<Task>) c);
            c.recycle();
            if (!this.mTmpRect2.isEmpty()) {
                this.mTouchExcludeRegion.op(this.mTmpRect2, Region.Op.UNION);
            }
        }
        WindowState windowState = this.mInputMethodWindow;
        if (windowState != null && windowState.isVisibleLw()) {
            this.mInputMethodWindow.getTouchableRegion(this.mTmpRegion);
            this.mTouchExcludeRegion.op(this.mTmpRegion, Region.Op.UNION);
        }
        for (int i = this.mTapExcludedWindows.size() - 1; i >= 0; i--) {
            WindowState win = this.mTapExcludedWindows.get(i);
            if (win.isVisibleLw()) {
                win.getTouchableRegion(this.mTmpRegion);
                this.mTouchExcludeRegion.op(this.mTmpRegion, Region.Op.UNION);
            }
        }
        amendWindowTapExcludeRegion(this.mTouchExcludeRegion);
        if (this.mDisplayId == 0 && getDefaultTaskDisplayArea().isSplitScreenModeActivated()) {
            this.mDividerControllerLocked.getTouchRegion(this.mTmpRect);
            this.mTmpRegion.set(this.mTmpRect);
            this.mTouchExcludeRegion.op(this.mTmpRegion, Region.Op.UNION);
        }
        this.mTapDetector.setTouchExcludeRegion(this.mTouchExcludeRegion);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processTaskForTouchExcludeRegion(Task task, Task focusedTask, int delta) {
        ActivityRecord topVisibleActivity = task.getTopVisibleActivity();
        if (topVisibleActivity == null || !topVisibleActivity.hasContentToDisplay()) {
            return;
        }
        if (task.isActivityTypeHome() && task.isVisible() && task.isResizeable()) {
            this.mDisplayContent.getBounds(this.mTmpRect);
        } else {
            task.getDimBounds(this.mTmpRect);
        }
        if (task == focusedTask) {
            this.mTmpRect2.set(this.mTmpRect);
        }
        boolean isFreeformed = task.inFreeformWindowingMode();
        if (task != focusedTask || isFreeformed) {
            if (isFreeformed) {
                this.mTmpRect.inset(-delta, -delta);
                this.mTmpRect.intersect(this.mDisplayFrames.mContent);
            }
            this.mTouchExcludeRegion.op(this.mTmpRect, Region.Op.DIFFERENCE);
        }
    }

    private void amendWindowTapExcludeRegion(Region inOutRegion) {
        Region region = Region.obtain();
        for (int i = this.mTapExcludeProvidingWindows.size() - 1; i >= 0; i--) {
            WindowState win = this.mTapExcludeProvidingWindows.valueAt(i);
            win.getTapExcludeRegion(region);
            inOutRegion.op(region, Region.Op.UNION);
        }
        region.recycle();
    }

    @Override // com.android.server.wm.WindowContainer
    void switchUser(int userId) {
        super.switchUser(userId);
        this.mWmService.mWindowsChanged = true;
        this.mDisplayPolicy.switchUser();
    }

    @Override // com.android.server.wm.WindowContainer
    void removeIfPossible() {
        if (isAnimating(3)) {
            this.mDeferredRemoval = true;
        } else {
            removeImmediately();
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void removeImmediately() {
        this.mRemovingDisplay = true;
        this.mDeferredRemoval = false;
        try {
            if (this.mParentWindow != null) {
                this.mParentWindow.removeEmbeddedDisplayContent(this);
            }
            this.mOpeningApps.clear();
            this.mClosingApps.clear();
            this.mChangingContainers.clear();
            this.mUnknownAppVisibilityController.clear();
            this.mAppTransition.removeAppTransitionTimeoutCallbacks();
            handleAnimatingStoppedAndTransition();
            this.mWmService.stopFreezingDisplayLocked();
            super.removeImmediately();
            this.mPointerEventDispatcher.dispose();
            setRotationAnimation(null);
            this.mWmService.mAnimator.removeDisplayLocked(this.mDisplayId);
            this.mInputMonitor.onDisplayRemoved();
            this.mWmService.mDisplayNotificationController.dispatchDisplayRemoved(this);
            this.mDisplayReady = false;
            this.mRemovingDisplay = false;
            getPendingTransaction().apply();
            this.mWmService.mWindowPlacerLocked.requestTraversal();
        } catch (Throwable th) {
            this.mDisplayReady = false;
            this.mRemovingDisplay = false;
            throw th;
        }
    }

    @Override // com.android.server.wm.WindowContainer
    boolean handleCompleteDeferredRemoval() {
        boolean stillDeferringRemoval = super.handleCompleteDeferredRemoval();
        if (!stillDeferringRemoval && this.mDeferredRemoval) {
            removeImmediately();
            return false;
        }
        return stillDeferringRemoval;
    }

    void adjustForImeIfNeeded() {
        WindowState imeWin = this.mInputMethodWindow;
        boolean imeVisible = imeWin != null && imeWin.isVisibleLw() && imeWin.isDisplayedLw();
        int imeHeight = this.mDisplayFrames.getInputMethodWindowVisibleHeight();
        this.mPinnedStackControllerLocked.setAdjustedForIme(imeVisible, imeHeight);
    }

    void prepareFreezingTaskBounds() {
        for (int tdaNdx = getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
            getTaskDisplayAreaAt(tdaNdx).prepareFreezingTaskBounds();
        }
    }

    void rotateBounds(int oldRotation, int newRotation, Rect bounds) {
        getBounds(this.mTmpRect, newRotation);
        rotateBounds(this.mTmpRect, oldRotation, newRotation, bounds);
    }

    void rotateBounds(Rect parentBounds, int oldRotation, int newRotation, Rect bounds) {
        int deltaRotation = deltaRotation(newRotation, oldRotation);
        createRotationMatrix(deltaRotation, parentBounds.width(), parentBounds.height(), this.mTmpMatrix);
        this.mTmpRectF.set(bounds);
        this.mTmpMatrix.mapRect(this.mTmpRectF);
        this.mTmpRectF.round(bounds);
    }

    static int deltaRotation(int oldRotation, int newRotation) {
        int delta = newRotation - oldRotation;
        return delta < 0 ? delta + 4 : delta;
    }

    public void setRotationAnimation(ScreenRotationAnimation screenRotationAnimation) {
        ScreenRotationAnimation screenRotationAnimation2 = this.mScreenRotationAnimation;
        if (screenRotationAnimation2 != null) {
            screenRotationAnimation2.kill();
        }
        this.mScreenRotationAnimation = screenRotationAnimation;
    }

    public ScreenRotationAnimation getRotationAnimation() {
        return this.mScreenRotationAnimation;
    }

    private static void createRotationMatrix(int rotation, float displayWidth, float displayHeight, Matrix outMatrix) {
        createRotationMatrix(rotation, 0.0f, 0.0f, displayWidth, displayHeight, outMatrix);
    }

    static void createRotationMatrix(int rotation, float rectLeft, float rectTop, float displayWidth, float displayHeight, Matrix outMatrix) {
        if (rotation == 0) {
            outMatrix.reset();
            return;
        }
        if (rotation == 1) {
            outMatrix.setRotate(90.0f, 0.0f, 0.0f);
            outMatrix.postTranslate(displayWidth, 0.0f);
            outMatrix.postTranslate(-rectTop, rectLeft);
        } else if (rotation == 2) {
            outMatrix.reset();
        } else if (rotation == 3) {
            outMatrix.setRotate(270.0f, 0.0f, 0.0f);
            outMatrix.postTranslate(0.0f, displayHeight);
            outMatrix.postTranslate(rectTop, 0.0f);
        }
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public void dumpDebug(ProtoOutputStream proto, long fieldId, int logLevel) {
        if (logLevel == 2 && !isVisible()) {
            return;
        }
        long token = proto.start(fieldId);
        super.dumpDebug(proto, 1146756268033L, logLevel);
        proto.write(1120986464258L, this.mDisplayId);
        this.mRootDisplayArea.dumpDebug(proto, 1146756268053L, logLevel);
        for (int i = this.mOverlayContainers.getChildCount() - 1; i >= 0; i--) {
            WindowToken windowToken = (WindowToken) this.mOverlayContainers.getChildAt(i);
            windowToken.dumpDebug(proto, 2246267895828L, logLevel);
        }
        proto.write(1120986464265L, this.mBaseDisplayDensity);
        this.mDisplayInfo.dumpDebug(proto, 1146756268042L);
        proto.write(1120986464267L, getRotation());
        ScreenRotationAnimation screenRotationAnimation = getRotationAnimation();
        if (screenRotationAnimation != null) {
            screenRotationAnimation.dumpDebug(proto, 1146756268044L);
        }
        this.mDisplayFrames.dumpDebug(proto, 1146756268045L);
        this.mAppTransition.dumpDebug(proto, 1146756268048L);
        ActivityRecord activityRecord = this.mFocusedApp;
        if (activityRecord != null) {
            activityRecord.writeNameToProto(proto, 1138166333455L);
        }
        for (int i2 = this.mOpeningApps.size() - 1; i2 >= 0; i2--) {
            this.mOpeningApps.valueAt(i2).writeIdentifierToProto(proto, 2246267895825L);
        }
        for (int i3 = this.mClosingApps.size() - 1; i3 >= 0; i3--) {
            this.mClosingApps.valueAt(i3).writeIdentifierToProto(proto, 2246267895826L);
        }
        proto.write(1133871366166L, this.mSingleTaskInstance);
        ActivityStack focusedStack = getFocusedStack();
        if (focusedStack != null) {
            proto.write(1120986464279L, focusedStack.getRootTaskId());
            ActivityRecord focusedActivity = focusedStack.getDisplayArea().getFocusedActivity();
            if (focusedActivity != null) {
                focusedActivity.writeIdentifierToProto(proto, 1146756268056L);
            }
        } else {
            proto.write(1120986464279L, -1);
        }
        proto.write(1133871366170L, isReady());
        proto.end(token);
    }

    @Override // com.android.server.wm.WindowContainer
    long getProtoFieldId() {
        return 1146756268035L;
    }

    @Override // com.android.server.wm.WindowContainer
    public void dump(PrintWriter pw, String prefix, boolean dumpAll) {
        super.dump(pw, prefix, dumpAll);
        pw.print(prefix);
        StringBuilder sb = new StringBuilder();
        sb.append("Display: mDisplayId=");
        sb.append(this.mDisplayId);
        sb.append(" stacks=");
        sb.append(getStackCount());
        sb.append(this.mSingleTaskInstance ? " mSingleTaskInstance" : "");
        pw.println(sb.toString());
        String subPrefix = "  " + prefix;
        pw.print(subPrefix);
        pw.print("init=");
        pw.print(this.mInitialDisplayWidth);
        pw.print("x");
        pw.print(this.mInitialDisplayHeight);
        pw.print(" ");
        pw.print(this.mInitialDisplayDensity);
        pw.print("dpi");
        if (this.mInitialDisplayWidth != this.mBaseDisplayWidth || this.mInitialDisplayHeight != this.mBaseDisplayHeight || this.mInitialDisplayDensity != this.mBaseDisplayDensity) {
            pw.print(" base=");
            pw.print(this.mBaseDisplayWidth);
            pw.print("x");
            pw.print(this.mBaseDisplayHeight);
            pw.print(" ");
            pw.print(this.mBaseDisplayDensity);
            pw.print("dpi");
        }
        if (this.mDisplayScalingDisabled) {
            pw.println(" noscale");
        }
        pw.print(" cur=");
        pw.print(this.mDisplayInfo.logicalWidth);
        pw.print("x");
        pw.print(this.mDisplayInfo.logicalHeight);
        pw.print(" app=");
        pw.print(this.mDisplayInfo.appWidth);
        pw.print("x");
        pw.print(this.mDisplayInfo.appHeight);
        pw.print(" rng=");
        pw.print(this.mDisplayInfo.smallestNominalAppWidth);
        pw.print("x");
        pw.print(this.mDisplayInfo.smallestNominalAppHeight);
        pw.print("-");
        pw.print(this.mDisplayInfo.largestNominalAppWidth);
        pw.print("x");
        pw.println(this.mDisplayInfo.largestNominalAppHeight);
        pw.print(subPrefix + "deferred=" + this.mDeferredRemoval + " mLayoutNeeded=" + this.mLayoutNeeded);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(" mTouchExcludeRegion=");
        sb2.append(this.mTouchExcludeRegion);
        pw.println(sb2.toString());
        pw.println();
        pw.print(prefix);
        pw.print("mLayoutSeq=");
        pw.println(this.mLayoutSeq);
        pw.print("  mCurrentFocus=");
        pw.println(this.mCurrentFocus);
        if (this.mLastFocus != this.mCurrentFocus) {
            pw.print("  mLastFocus=");
            pw.println(this.mLastFocus);
        }
        if (this.mLosingFocus.size() > 0) {
            pw.println();
            pw.println("  Windows losing focus:");
            for (int i = this.mLosingFocus.size() - 1; i >= 0; i--) {
                WindowState w = this.mLosingFocus.get(i);
                pw.print("  Losing #");
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
        pw.print("  mFocusedApp=");
        pw.println(this.mFocusedApp);
        if (this.mLastStatusBarVisibility != 0) {
            pw.print("  mLastStatusBarVisibility=0x");
            pw.println(Integer.toHexString(this.mLastStatusBarVisibility));
        }
        if (this.mFixedRotationLaunchingApp != null) {
            pw.println("  mFixedRotationLaunchingApp=" + this.mFixedRotationLaunchingApp);
        }
        pw.println();
        this.mWallpaperController.dump(pw, "  ");
        if (this.mSystemGestureExclusionListeners.getRegisteredCallbackCount() > 0) {
            pw.println();
            pw.print("  mSystemGestureExclusion=");
            pw.println(this.mSystemGestureExclusion);
        }
        pw.println();
        pw.println(prefix + "Task display areas in top down Z order:");
        for (int tdaNdx = getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx += -1) {
            getTaskDisplayAreaAt(tdaNdx).dump(pw, prefix + "  ", dumpAll);
        }
        pw.println();
        if (!this.mExitingTokens.isEmpty()) {
            pw.println();
            pw.println("  Exiting tokens:");
            for (int i2 = this.mExitingTokens.size() - 1; i2 >= 0; i2--) {
                WindowToken token = this.mExitingTokens.get(i2);
                pw.print("  Exiting #");
                pw.print(i2);
                pw.print(' ');
                pw.print(token);
                pw.println(':');
                token.dump(pw, "    ", dumpAll);
            }
        }
        ScreenRotationAnimation rotationAnimation = getRotationAnimation();
        if (rotationAnimation != null) {
            pw.println("  mScreenRotationAnimation:");
            rotationAnimation.printTo(subPrefix, pw);
        } else if (dumpAll) {
            pw.println("  no ScreenRotationAnimation ");
        }
        pw.println();
        ActivityStack homeStack = getDefaultTaskDisplayArea().getRootHomeTask();
        if (homeStack != null) {
            pw.println(prefix + "homeStack=" + homeStack.getName());
        }
        ActivityStack pinnedStack = getDefaultTaskDisplayArea().getRootPinnedTask();
        if (pinnedStack != null) {
            pw.println(prefix + "pinnedStack=" + pinnedStack.getName());
        }
        ActivityStack splitScreenPrimaryStack = getDefaultTaskDisplayArea().getRootSplitScreenPrimaryTask();
        if (splitScreenPrimaryStack != null) {
            pw.println(prefix + "splitScreenPrimaryStack=" + splitScreenPrimaryStack.getName());
        }
        ActivityStack recentsStack = getDefaultTaskDisplayArea().getStack(0, 3);
        if (recentsStack != null) {
            pw.println(prefix + "recentsStack=" + recentsStack.getName());
        }
        ActivityStack dreamStack = getStack(0, 5);
        if (dreamStack != null) {
            pw.println(prefix + "dreamStack=" + dreamStack.getName());
        }
        pw.println();
        this.mPinnedStackControllerLocked.dump(prefix, pw);
        pw.println();
        this.mDisplayFrames.dump(prefix, pw);
        pw.println();
        this.mDisplayPolicy.dump(prefix, pw);
        pw.println();
        this.mDisplayRotation.dump(prefix, pw);
        pw.println();
        this.mInputMonitor.dump(pw, "  ");
        pw.println();
        this.mInsetsStateController.dump(prefix, pw);
    }

    public String toString() {
        return "Display " + this.mDisplayId + " info=" + this.mDisplayInfo + " stacks=" + this.mChildren;
    }

    @Override // com.android.server.wm.ConfigurationContainer
    String getName() {
        return "Display " + this.mDisplayId + " name=\"" + this.mDisplayInfo.name + "\"";
    }

    WindowState getTouchableWinAtPointLocked(float xf, float yf) {
        final int x = (int) xf;
        final int y = (int) yf;
        WindowState touchedWin = getWindow(new Predicate() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$UpcoNmXQIJX_lHKnFIxs4t_Pu24
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$getTouchableWinAtPointLocked$12$DisplayContent(x, y, (WindowState) obj);
            }
        });
        return touchedWin;
    }

    public /* synthetic */ boolean lambda$getTouchableWinAtPointLocked$12$DisplayContent(int x, int y, WindowState w) {
        int flags = w.mAttrs.flags;
        if (!w.isVisibleLw() || (flags & 16) != 0) {
            return false;
        }
        w.getVisibleBounds(this.mTmpRect);
        if (!this.mTmpRect.contains(x, y)) {
            return false;
        }
        w.getTouchableRegion(this.mTmpRegion);
        int touchFlags = flags & 40;
        return this.mTmpRegion.contains(x, y) || touchFlags == 0;
    }

    boolean canAddToastWindowForUid(final int uid) {
        WindowState focusedWindowForUid = getWindow(new Predicate() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$mRojqgB8byVtZRzyTl2qSRFPgIo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return DisplayContent.lambda$canAddToastWindowForUid$13(uid, (WindowState) obj);
            }
        });
        if (focusedWindowForUid != null) {
            return true;
        }
        WindowState win = getWindow(new Predicate() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$2VlyMN8z2sOPqE9-yf-z3-peRMI
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return DisplayContent.lambda$canAddToastWindowForUid$14(uid, (WindowState) obj);
            }
        });
        return win == null;
    }

    static /* synthetic */ boolean lambda$canAddToastWindowForUid$13(int uid, WindowState w) {
        return w.mOwnerUid == uid && w.isFocused();
    }

    static /* synthetic */ boolean lambda$canAddToastWindowForUid$14(int uid, WindowState w) {
        return w.mAttrs.type == 2005 && w.mOwnerUid == uid && !w.mPermanentlyHidden && !w.mWindowRemovalAllowed;
    }

    void scheduleToastWindowsTimeoutIfNeededLocked(WindowState oldFocus, WindowState newFocus) {
        if (oldFocus != null) {
            if (newFocus != null && newFocus.mOwnerUid == oldFocus.mOwnerUid) {
                return;
            }
            this.mTmpWindow = oldFocus;
            forAllWindows(this.mScheduleToastTimeout, false);
        }
    }

    WindowState findFocusedWindowIfNeeded(int topFocusedDisplayId) {
        if (this.mWmService.mPerDisplayFocusEnabled || topFocusedDisplayId == -1) {
            return findFocusedWindow();
        }
        return null;
    }

    WindowState findFocusedWindow() {
        this.mTmpWindow = null;
        forAllWindows(this.mFindFocusedWindow, true);
        WindowState windowState = this.mTmpWindow;
        if (windowState == null) {
            if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, 2128604122, 0, null, (Object[]) null);
            }
            return null;
        }
        return windowState;
    }

    boolean updateFocusedWindowLocked(int mode, boolean updateInputWindows, int topFocusedDisplayId) {
        WindowState newFocus = findFocusedWindowIfNeeded(topFocusedDisplayId);
        if (this.mCurrentFocus == newFocus) {
            return false;
        }
        boolean imWindowChanged = false;
        WindowState imWindow = this.mInputMethodWindow;
        if (imWindow != null) {
            WindowState prevTarget = this.mInputMethodTarget;
            WindowState newTarget = computeImeTarget(true);
            imWindowChanged = prevTarget != newTarget;
            if (mode != 1 && mode != 3) {
                assignWindowLayers(false);
            }
        }
        if (imWindowChanged) {
            this.mWmService.mWindowsChanged = true;
            setLayoutNeeded();
            newFocus = findFocusedWindowIfNeeded(topFocusedDisplayId);
        }
        if (this.mCurrentFocus != newFocus) {
            this.mWmService.mH.obtainMessage(2, this).sendToTarget();
        }
        if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
            String protoLogParam0 = String.valueOf(this.mCurrentFocus);
            String protoLogParam1 = String.valueOf(newFocus);
            long protoLogParam2 = getDisplayId();
            String protoLogParam3 = String.valueOf(Debug.getCallers(4));
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, 1469292670, 16, null, protoLogParam0, protoLogParam1, Long.valueOf(protoLogParam2), protoLogParam3);
        }
        WindowState oldFocus = this.mCurrentFocus;
        this.mCurrentFocus = newFocus;
        this.mLosingFocus.remove(newFocus);
        if (newFocus != null) {
            this.mWinAddedSinceNullFocus.clear();
            this.mWinRemovedSinceNullFocus.clear();
            if (newFocus.canReceiveKeys()) {
                newFocus.mToken.paused = false;
            }
        }
        onWindowFocusChanged(oldFocus, newFocus);
        int focusChanged = getDisplayPolicy().focusChangedLw(oldFocus, newFocus);
        if (imWindowChanged && oldFocus != this.mInputMethodWindow) {
            if (mode == 2) {
                performLayout(true, updateInputWindows);
                focusChanged &= -2;
            } else if (mode == 3) {
                assignWindowLayers(false);
            }
        }
        if ((focusChanged & 1) != 0) {
            setLayoutNeeded();
            if (mode == 2) {
                performLayout(true, updateInputWindows);
            } else if (mode == 4) {
                this.mWmService.mRoot.performSurfacePlacement();
            }
        }
        if (mode != 1) {
            getInputMonitor().setInputFocusLw(newFocus, updateInputWindows);
        }
        adjustForImeIfNeeded();
        scheduleToastWindowsTimeoutIfNeededLocked(oldFocus, newFocus);
        if (mode == 2) {
            this.pendingLayoutChanges |= 8;
            return true;
        }
        return true;
    }

    private static void onWindowFocusChanged(WindowState oldFocus, WindowState newFocus) {
        Task focusedTask = newFocus != null ? newFocus.getTask() : null;
        Task unfocusedTask = oldFocus != null ? oldFocus.getTask() : null;
        if (focusedTask == unfocusedTask) {
            return;
        }
        if (focusedTask != null) {
            focusedTask.onWindowFocusChanged(true);
        }
        if (unfocusedTask != null) {
            unfocusedTask.onWindowFocusChanged(false);
        }
    }

    boolean setFocusedApp(ActivityRecord newFocus) {
        DisplayContent appDisplay;
        if (newFocus != null && (appDisplay = newFocus.getDisplayContent()) != this) {
            StringBuilder sb = new StringBuilder();
            sb.append(newFocus);
            sb.append(" is not on ");
            sb.append(getName());
            sb.append(" but ");
            sb.append(appDisplay != null ? appDisplay.getName() : "none");
            throw new IllegalStateException(sb.toString());
        }
        if (this.mFocusedApp == newFocus) {
            return false;
        }
        this.mFocusedApp = newFocus;
        getInputMonitor().setFocusedAppLw(newFocus);
        updateTouchExcludeRegion();
        return true;
    }

    void assignWindowLayers(boolean setLayoutNeeded) {
        Trace.traceBegin(32L, "assignWindowLayers");
        assignChildLayers(getPendingTransaction());
        if (setLayoutNeeded) {
            setLayoutNeeded();
        }
        scheduleAnimation();
        Trace.traceEnd(32L);
    }

    void layoutAndAssignWindowLayersIfNeeded() {
        this.mWmService.mWindowsChanged = true;
        setLayoutNeeded();
        if (!this.mWmService.updateFocusedWindowLocked(3, false)) {
            assignWindowLayers(false);
        }
        this.mInputMonitor.setUpdateInputWindowsNeededLw();
        this.mWmService.mWindowPlacerLocked.performSurfacePlacement();
        this.mInputMonitor.updateInputWindowsLw(false);
    }

    boolean destroyLeakedSurfaces() {
        this.mTmpWindow = null;
        forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$cUrRhr9F2jovlTUmfY9boAvOD98
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$destroyLeakedSurfaces$15$DisplayContent((WindowState) obj);
            }
        }, false);
        return this.mTmpWindow != null;
    }

    public /* synthetic */ void lambda$destroyLeakedSurfaces$15$DisplayContent(WindowState w) {
        WindowStateAnimator wsa = w.mWinAnimator;
        if (wsa.mSurfaceController == null) {
            return;
        }
        if (!this.mWmService.mSessions.contains(wsa.mSession)) {
            Slog.w("WindowManager", "LEAKED SURFACE (session doesn't exist): " + w + " surface=" + wsa.mSurfaceController + " token=" + w.mToken + " pid=" + w.mSession.mPid + " uid=" + w.mSession.mUid);
            wsa.destroySurface();
            this.mWmService.mForceRemoves.add(w);
            this.mTmpWindow = w;
            return;
        }
        if (w.mActivityRecord != null && !w.mActivityRecord.isClientVisible()) {
            Slog.w("WindowManager", "LEAKED SURFACE (app token hidden): " + w + " surface=" + wsa.mSurfaceController + " token=" + w.mActivityRecord);
            if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
                String protoLogParam0 = String.valueOf(w);
                ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, -1938839202, 0, null, protoLogParam0);
            }
            wsa.destroySurface();
            this.mTmpWindow = w;
        }
    }

    boolean hasAlertWindowSurfaces() {
        for (int i = this.mWmService.mSessions.size() - 1; i >= 0; i--) {
            if (this.mWmService.mSessions.valueAt(i).hasAlertWindowSurfaces(this)) {
                return true;
            }
        }
        return false;
    }

    void setInputMethodWindowLocked(WindowState win) {
        this.mInputMethodWindow = win;
        if (win != null) {
            int imePid = win.mSession.mPid;
            this.mWmService.mAtmInternal.onImeWindowSetOnDisplay(imePid, this.mInputMethodWindow.getDisplayId());
        }
        this.mInsetsStateController.getSourceProvider(17).setWindow(win, this.mDisplayPolicy.getImeSourceFrameProvider(), null);
        computeImeTarget(true);
        updateImeControlTarget();
    }

    WindowState computeImeTarget(boolean updateImeTarget) {
        ActivityRecord activity;
        WindowState betterTarget;
        if (this.mInputMethodWindow == null) {
            if (updateImeTarget) {
                setInputMethodTarget(null, this.mInputMethodTargetWaitingAnim);
            }
            return null;
        }
        WindowState curTarget = this.mInputMethodTarget;
        if (!canUpdateImeTarget()) {
            return curTarget;
        }
        this.mUpdateImeTarget = updateImeTarget;
        WindowState target = getWindow(this.mComputeImeTargetPredicate);
        if (target != null && target.mAttrs.type == 3 && (activity = target.mActivityRecord) != null && (betterTarget = activity.getImeTargetBelowWindow(target)) != null) {
            target = betterTarget;
        }
        if (curTarget != null && !curTarget.mRemoved && curTarget.isDisplayedLw() && curTarget.isClosing() && !curTarget.isActivityTypeHome()) {
            return curTarget;
        }
        if (target == null) {
            if (updateImeTarget) {
                setInputMethodTarget(null, this.mInputMethodTargetWaitingAnim);
            }
            return null;
        }
        if (updateImeTarget) {
            ActivityRecord activity2 = curTarget != null ? curTarget.mActivityRecord : null;
            if (activity2 != null) {
                WindowState highestTarget = null;
                if (activity2.isAnimating(3)) {
                    highestTarget = activity2.getHighestAnimLayerWindow(curTarget);
                }
                if (highestTarget != null && this.mAppTransition.isTransitionSet()) {
                    setInputMethodTarget(highestTarget, true);
                    return highestTarget;
                }
            }
            setInputMethodTarget(target, false);
        }
        return target;
    }

    void computeImeTargetIfNeeded(ActivityRecord candidate) {
        WindowState windowState = this.mInputMethodTarget;
        if (windowState != null && windowState.mActivityRecord == candidate) {
            computeImeTarget(true);
        }
    }

    private boolean isImeControlledByApp() {
        WindowState windowState = this.mInputMethodInputTarget;
        return (windowState == null || WindowConfiguration.isSplitScreenWindowingMode(windowState.getWindowingMode())) ? false : true;
    }

    boolean isImeAttachedToApp() {
        WindowState windowState;
        return isImeControlledByApp() && (windowState = this.mInputMethodTarget) != null && windowState.mActivityRecord != null && this.mInputMethodTarget.getWindowingMode() == 1 && this.mInputMethodTarget.mActivityRecord.matchParentBounds();
    }

    InsetsControlTarget getImeHostOrFallback(WindowState target) {
        if (target != null && target.getDisplayContent().canShowIme()) {
            return target;
        }
        return getImeFallback();
    }

    InsetsControlTarget getImeFallback() {
        DisplayContent defaultDc = this.mWmService.getDefaultDisplayContentLocked();
        WindowState statusBar = defaultDc.getDisplayPolicy().getStatusBar();
        return statusBar != null ? statusBar : defaultDc.mRemoteInsetsControlTarget;
    }

    boolean canShowIme() {
        if (isTrusted()) {
            return this.mWmService.mDisplayWindowSettings.shouldShowImeLocked(this) || forceDesktopMode();
        }
        return false;
    }

    boolean forceDesktopMode() {
        return (!this.mWmService.mForceDesktopModeOnExternalDisplays || this.isDefaultDisplay || isPrivate()) ? false : true;
    }

    private void setInputMethodTarget(WindowState target, boolean targetWaitingAnim) {
        if (target == this.mInputMethodTarget && this.mInputMethodTargetWaitingAnim == targetWaitingAnim) {
            return;
        }
        if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
            String protoLogParam0 = String.valueOf(target);
            ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_IME, 2119122320, 0, null, protoLogParam0);
        }
        this.mInputMethodTarget = target;
        this.mInputMethodTargetWaitingAnim = targetWaitingAnim;
        assignWindowLayers(true);
        updateImeParent();
        updateImeControlTarget();
    }

    void setInputMethodInputTarget(WindowState target) {
        if (this.mInputMethodInputTarget != target) {
            if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
                String protoLogParam0 = String.valueOf(target);
                ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_IME, -322743468, 0, null, protoLogParam0);
            }
            this.mInputMethodInputTarget = target;
            updateImeControlTarget();
        }
    }

    void updateImeControlTarget() {
        InsetsControlTarget insetsControlTargetComputeImeControlTarget = computeImeControlTarget();
        this.mInputMethodControlTarget = insetsControlTargetComputeImeControlTarget;
        this.mInsetsStateController.onImeControlTargetChanged(insetsControlTargetComputeImeControlTarget);
        WindowState win = InsetsControlTarget.asWindowOrNull(this.mInputMethodControlTarget);
        final IBinder token = win != null ? win.mClient.asBinder() : null;
        this.mWmService.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$-xtu90EUfC_AM8Qe5g8vDDI07_E
            @Override // java.lang.Runnable
            public final void run() {
                InputMethodManagerInternal.get().reportImeControl(token);
            }
        });
    }

    private void updateImeParent() {
        SurfaceControl newParent = computeImeParent();
        if (newParent != null) {
            getPendingTransaction().reparent(this.mImeWindowsContainers.mSurfaceControl, newParent);
            scheduleAnimation();
        }
    }

    InsetsControlTarget computeImeControlTarget() {
        WindowState windowState;
        if ((!isImeControlledByApp() && this.mRemoteInsetsControlTarget != null) || ((windowState = this.mInputMethodInputTarget) != null && getImeHostOrFallback(windowState.getWindow()) == this.mRemoteInsetsControlTarget)) {
            return this.mRemoteInsetsControlTarget;
        }
        return this.mInputMethodInputTarget;
    }

    SurfaceControl computeImeParent() {
        boolean allowAttachToApp = this.mMagnificationSpec == null;
        if (allowAttachToApp && isImeAttachedToApp()) {
            return this.mInputMethodTarget.mActivityRecord.getSurfaceControl();
        }
        return this.mImeWindowsContainers.getParent().getSurfaceControl();
    }

    void setLayoutNeeded() {
        this.mLayoutNeeded = true;
    }

    private void clearLayoutNeeded() {
        this.mLayoutNeeded = false;
    }

    boolean isLayoutNeeded() {
        return this.mLayoutNeeded;
    }

    void dumpTokens(PrintWriter pw, boolean dumpAll) {
        if (this.mTokenMap.isEmpty()) {
            return;
        }
        pw.println("  Display #" + this.mDisplayId);
        for (WindowToken token : this.mTokenMap.values()) {
            pw.print("  ");
            pw.print(token);
            if (dumpAll) {
                pw.println(':');
                token.dump(pw, "    ", dumpAll);
            } else {
                pw.println();
            }
        }
        if (!this.mOpeningApps.isEmpty() || !this.mClosingApps.isEmpty() || !this.mChangingContainers.isEmpty()) {
            pw.println();
            if (this.mOpeningApps.size() > 0) {
                pw.print("  mOpeningApps=");
                pw.println(this.mOpeningApps);
            }
            if (this.mClosingApps.size() > 0) {
                pw.print("  mClosingApps=");
                pw.println(this.mClosingApps);
            }
            if (this.mChangingContainers.size() > 0) {
                pw.print("  mChangingApps=");
                pw.println(this.mChangingContainers);
            }
        }
        this.mUnknownAppVisibilityController.dump(pw, "  ");
    }

    void dumpWindowAnimators(final PrintWriter pw, final String subPrefix) {
        final int[] index = new int[1];
        forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$Gs1I9c16qswnvvDSPXoEhteQcFM
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DisplayContent.lambda$dumpWindowAnimators$17(pw, subPrefix, index, (WindowState) obj);
            }
        }, false);
    }

    static /* synthetic */ void lambda$dumpWindowAnimators$17(PrintWriter pw, String subPrefix, int[] index, WindowState w) {
        WindowStateAnimator wAnim = w.mWinAnimator;
        pw.println(subPrefix + "Window #" + index[0] + ": " + wAnim);
        index[0] = index[0] + 1;
    }

    void startKeyguardExitOnNonAppWindows(final boolean onWallpaper, final boolean goingToShade, final boolean subtle) {
        final WindowManagerPolicy policy = this.mWmService.mPolicy;
        forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$Ufn2ZjVS0i1L8aeQ8GZMJNJfmcY
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DisplayContent.lambda$startKeyguardExitOnNonAppWindows$18(policy, onWallpaper, goingToShade, subtle, (WindowState) obj);
            }
        }, true);
        for (int i = this.mShellRoots.size() - 1; i >= 0; i--) {
            this.mShellRoots.valueAt(i).startAnimation(policy.createHiddenByKeyguardExit(onWallpaper, goingToShade, subtle));
        }
    }

    static /* synthetic */ void lambda$startKeyguardExitOnNonAppWindows$18(WindowManagerPolicy policy, boolean onWallpaper, boolean goingToShade, boolean subtle, WindowState w) {
        if (w.mActivityRecord == null && policy.canBeHiddenByKeyguardLw(w) && w.wouldBeVisibleIfPolicyIgnored() && !w.isVisible()) {
            w.startAnimation(policy.createHiddenByKeyguardExit(onWallpaper, goingToShade, subtle));
        }
    }

    boolean shouldWaitForSystemDecorWindowsOnBoot() {
        if (!this.isDefaultDisplay && !supportsSystemDecorations()) {
            return false;
        }
        final SparseBooleanArray drawnWindowTypes = new SparseBooleanArray();
        drawnWindowTypes.put(2040, true);
        WindowState visibleNotDrawnWindow = getWindow(new Predicate() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$x9QSHnWitjvGOC1SnurRP5ASz48
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$shouldWaitForSystemDecorWindowsOnBoot$19$DisplayContent(drawnWindowTypes, (WindowState) obj);
            }
        });
        if (visibleNotDrawnWindow != null) {
            return true;
        }
        boolean wallpaperEnabled = this.mWmService.mContext.getResources().getBoolean(R.bool.config_cecQuerySadAtrac_userConfigurable) && this.mWmService.mContext.getResources().getBoolean(R.bool.config_bg_current_drain_event_duration_based_threshold_enabled) && !this.mWmService.mOnlyCore;
        boolean haveBootMsg = drawnWindowTypes.get(2021);
        boolean haveApp = drawnWindowTypes.get(1);
        boolean haveWallpaper = drawnWindowTypes.get(2013);
        boolean haveKeyguard = drawnWindowTypes.get(2040);
        if (ProtoLog$Cache.WM_DEBUG_SCREEN_ON_enabled) {
            boolean protoLogParam0 = this.mWmService.mSystemBooted;
            boolean protoLogParam1 = this.mWmService.mShowingBootMessages;
            boolean protoLogParam5 = wallpaperEnabled;
            ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_SCREEN_ON, -635082269, 16383, null, Boolean.valueOf(protoLogParam0), Boolean.valueOf(protoLogParam1), Boolean.valueOf(haveBootMsg), Boolean.valueOf(haveApp), Boolean.valueOf(haveWallpaper), Boolean.valueOf(protoLogParam5), Boolean.valueOf(haveKeyguard));
        }
        if (!this.mWmService.mSystemBooted && !haveBootMsg) {
            return true;
        }
        if (!this.mWmService.mSystemBooted) {
            return false;
        }
        if (!haveApp && !haveKeyguard) {
            return true;
        }
        if (wallpaperEnabled && !haveWallpaper) {
            return true;
        }
        return false;
    }

    public /* synthetic */ boolean lambda$shouldWaitForSystemDecorWindowsOnBoot$19$DisplayContent(SparseBooleanArray drawnWindowTypes, WindowState w) {
        boolean isVisible = w.isVisible() && !w.mObscured;
        boolean isDrawn = w.isDrawnLw();
        if (isVisible && !isDrawn) {
            return true;
        }
        if (isDrawn) {
            int i = w.mAttrs.type;
            if (i == 1 || i == 2013 || i == 2021) {
                drawnWindowTypes.put(w.mAttrs.type, true);
            } else if (i == 2040) {
                drawnWindowTypes.put(2040, this.mWmService.mPolicy.isKeyguardDrawnLw());
            }
        }
        return false;
    }

    void updateWindowsForAnimator() {
        forAllWindows(this.mUpdateWindowsForAnimator, true);
    }

    boolean isInputMethodClientFocus(int uid, int pid) {
        WindowState imFocus = computeImeTarget(false);
        return imFocus != null && imFocus.mSession.mUid == uid && imFocus.mSession.mPid == pid;
    }

    static /* synthetic */ boolean lambda$hasSecureWindowOnScreen$20(WindowState w) {
        return w.isOnScreen() && w.isSecureLocked();
    }

    boolean hasSecureWindowOnScreen() {
        WindowState win = getWindow(new Predicate() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$7Z9gsguOLtfXssJUALjgEsOLZoE
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return DisplayContent.lambda$hasSecureWindowOnScreen$20((WindowState) obj);
            }
        });
        return win != null;
    }

    void hideTransientBars() {
        statusBarVisibilityChanged(this.mLastStatusBarVisibility & (-201326593));
        getInsetsPolicy().hideTransient();
    }

    void statusBarVisibilityChanged(int visibility) {
        this.mLastStatusBarVisibility = visibility;
        updateStatusBarVisibilityLocked(getDisplayPolicy().adjustSystemUiVisibilityLw(visibility));
    }

    private boolean updateStatusBarVisibilityLocked(int visibility) {
        int i = this.mLastDispatchedSystemUiVisibility;
        if (i == visibility) {
            return false;
        }
        int globalDiff = (i ^ visibility) & 7 & (~visibility);
        this.mLastDispatchedSystemUiVisibility = visibility;
        if (this.isDefaultDisplay) {
            this.mWmService.mInputManager.setSystemUiVisibility(visibility);
        }
        updateSystemUiVisibility(visibility, globalDiff);
        return true;
    }

    void updateSystemUiVisibility(final int visibility, final int globalDiff) {
        forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$w9ep5dwa3CsKsu0rpKSQwF-60A4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DisplayContent.lambda$updateSystemUiVisibility$21(visibility, globalDiff, (WindowState) obj);
            }
        }, true);
    }

    static /* synthetic */ void lambda$updateSystemUiVisibility$21(int visibility, int globalDiff, WindowState w) {
        try {
            int curValue = w.mSystemUiVisibility;
            int diff = (curValue ^ visibility) & globalDiff;
            int newValue = ((~diff) & curValue) | (visibility & diff);
            if (newValue != curValue) {
                w.mSeq++;
                w.mSystemUiVisibility = newValue;
            }
            if ((newValue != curValue || w.mAttrs.hasSystemUiListeners) && ViewRootImpl.sNewInsetsMode != 2) {
                w.mClient.dispatchSystemUiVisibilityChanged(w.mSeq, visibility, newValue, diff);
            }
        } catch (RemoteException e) {
        }
    }

    void reevaluateStatusBarVisibility() {
        int visibility = getDisplayPolicy().adjustSystemUiVisibilityLw(this.mLastStatusBarVisibility);
        if (updateStatusBarVisibilityLocked(visibility)) {
            this.mWmService.mWindowPlacerLocked.requestTraversal();
        }
    }

    void onWindowFreezeTimeout() {
        Slog.w("WindowManager", "Window freeze timeout expired.");
        this.mWmService.mWindowsFreezingScreen = 2;
        forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$GdYfLI7hkBs2XfGJkN6DbdzEs8U
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$onWindowFreezeTimeout$22$DisplayContent((WindowState) obj);
            }
        }, true);
        this.mWmService.mWindowPlacerLocked.performSurfacePlacement();
    }

    public /* synthetic */ void lambda$onWindowFreezeTimeout$22$DisplayContent(WindowState w) {
        if (!w.getOrientationChanging()) {
            return;
        }
        w.orientationChangeTimedOut();
        w.mLastFreezeDuration = (int) (SystemClock.elapsedRealtime() - this.mWmService.mDisplayFreezeTime);
        Slog.w("WindowManager", "Force clearing orientation change: " + w);
    }

    void applySurfaceChangesTransaction() {
        boolean z;
        WindowSurfacePlacer windowSurfacePlacer = this.mWmService.mWindowPlacerLocked;
        this.mTmpUpdateAllDrawn.clear();
        int repeats = 0;
        do {
            repeats++;
            if (repeats > 6) {
                Slog.w("WindowManager", "Animation repeat aborted after too many iterations");
                clearLayoutNeeded();
                break;
            }
            if ((this.pendingLayoutChanges & 4) != 0) {
                this.mWallpaperController.adjustWallpaperWindows();
            }
            if ((this.pendingLayoutChanges & 2) != 0 && updateOrientation()) {
                setLayoutNeeded();
                sendNewConfiguration();
            }
            if ((this.pendingLayoutChanges & 1) != 0) {
                setLayoutNeeded();
            }
            if (repeats < 4) {
                if (repeats == 1) {
                    z = true;
                } else {
                    z = false;
                }
                performLayout(z, false);
            } else {
                Slog.w("WindowManager", "Layout repeat skipped after too many iterations");
            }
            this.pendingLayoutChanges = 0;
            Trace.traceBegin(32L, "applyPostLayoutPolicy");
            try {
                this.mDisplayPolicy.beginPostLayoutPolicyLw();
                forAllWindows(this.mApplyPostLayoutPolicy, true);
                this.pendingLayoutChanges |= this.mDisplayPolicy.finishPostLayoutPolicyLw();
                Trace.traceEnd(32L);
                this.mInsetsStateController.onPostLayout();
            } catch (Throwable th) {
                Trace.traceEnd(32L);
                throw th;
            }
        } while (this.pendingLayoutChanges != 0);
        this.mTmpApplySurfaceChangesTransactionState.reset();
        Trace.traceBegin(32L, "applyWindowSurfaceChanges");
        try {
            forAllWindows(this.mApplySurfaceChangesTransaction, true);
            Trace.traceEnd(32L);
            prepareSurfaces();
            this.mInsetsStateController.getImeSourceProvider().checkShowImePostLayout();
            this.mLastHasContent = this.mTmpApplySurfaceChangesTransactionState.displayHasContent;
            this.mWmService.mDisplayManagerInternal.setDisplayProperties(this.mDisplayId, this.mLastHasContent, this.mTmpApplySurfaceChangesTransactionState.preferredRefreshRate, this.mTmpApplySurfaceChangesTransactionState.preferredModeId, this.mTmpApplySurfaceChangesTransactionState.preferMinimalPostProcessing, true);
            boolean wallpaperVisible = this.mWallpaperController.isWallpaperVisible();
            if (wallpaperVisible != this.mLastWallpaperVisible) {
                this.mLastWallpaperVisible = wallpaperVisible;
                this.mWmService.mWallpaperVisibilityListeners.notifyWallpaperVisibilityChanged(this);
            }
            while (!this.mTmpUpdateAllDrawn.isEmpty()) {
                ActivityRecord activity = this.mTmpUpdateAllDrawn.removeLast();
                activity.updateAllDrawn();
            }
        } catch (Throwable th2) {
            Trace.traceEnd(32L);
            throw th2;
        }
    }

    private void updateBounds() {
        calculateBounds(this.mDisplayInfo, this.mTmpBounds);
        setBounds(this.mTmpBounds);
        InputWindowHandle inputWindowHandle = this.mPortalWindowHandle;
        if (inputWindowHandle != null && this.mParentSurfaceControl != null) {
            inputWindowHandle.touchableRegion.getBounds(this.mTmpRect);
            if (!this.mTmpBounds.equals(this.mTmpRect)) {
                this.mPortalWindowHandle.touchableRegion.set(this.mTmpBounds);
                getPendingTransaction().setInputWindowInfo(this.mParentSurfaceControl, this.mPortalWindowHandle);
            }
        }
    }

    private void calculateBounds(DisplayInfo displayInfo, Rect out) {
        int rotation = displayInfo.rotation;
        boolean rotated = true;
        if (rotation != 1 && rotation != 3) {
            rotated = false;
        }
        int physWidth = rotated ? this.mBaseDisplayHeight : this.mBaseDisplayWidth;
        int physHeight = rotated ? this.mBaseDisplayWidth : this.mBaseDisplayHeight;
        int width = displayInfo.logicalWidth;
        int left = (physWidth - width) / 2;
        int height = displayInfo.logicalHeight;
        int top = (physHeight - height) / 2;
        out.set(left, top, left + width, top + height);
    }

    private void getBounds(Rect out, int orientation) {
        getBounds(out);
        int currentRotation = this.mDisplayInfo.rotation;
        int rotationDelta = deltaRotation(currentRotation, orientation);
        if (rotationDelta == 1 || rotationDelta == 3) {
            createRotationMatrix(rotationDelta, this.mBaseDisplayWidth, this.mBaseDisplayHeight, this.mTmpMatrix);
            this.mTmpRectF.set(out);
            this.mTmpMatrix.mapRect(this.mTmpRectF);
            this.mTmpRectF.round(out);
        }
    }

    int getNaturalOrientation() {
        return this.mBaseDisplayWidth < this.mBaseDisplayHeight ? 1 : 2;
    }

    void performLayout(boolean initial, boolean updateInputWindows) {
        Trace.traceBegin(32L, "performLayout");
        try {
            performLayoutNoTrace(initial, updateInputWindows);
        } finally {
            Trace.traceEnd(32L);
        }
    }

    private void performLayoutNoTrace(boolean initial, boolean updateInputWindows) {
        if (!isLayoutNeeded()) {
            return;
        }
        clearLayoutNeeded();
        int dw = this.mDisplayInfo.logicalWidth;
        int dh = this.mDisplayInfo.logicalHeight;
        DisplayFrames displayFrames = this.mDisplayFrames;
        DisplayInfo displayInfo = this.mDisplayInfo;
        displayFrames.onDisplayInfoUpdated(displayInfo, calculateDisplayCutoutForRotation(displayInfo.rotation));
        this.mDisplayFrames.mRotation = getRotation();
        this.mDisplayPolicy.beginLayoutLw(this.mDisplayFrames, getConfiguration().uiMode);
        int seq = this.mLayoutSeq + 1;
        if (seq < 0) {
            seq = 0;
        }
        this.mLayoutSeq = seq;
        this.mTmpWindow = null;
        this.mTmpInitial = initial;
        this.mTmpWindowsBehindIme = false;
        forAllWindows(this.mPerformLayout, true);
        this.mTmpWindow2 = this.mTmpWindow;
        this.mTmpWindow = null;
        forAllWindows(this.mPerformLayoutAttached, true);
        this.mInputMonitor.layoutInputConsumers(dw, dh);
        this.mInputMonitor.setUpdateInputWindowsNeededLw();
        if (updateInputWindows) {
            this.mInputMonitor.updateInputWindowsLw(false);
        }
        this.mWmService.mH.sendEmptyMessage(41);
    }

    Bitmap screenshotDisplayLocked(Bitmap.Config config) {
        if (!this.mWmService.mPolicy.isScreenOn()) {
            return null;
        }
        int dw = this.mDisplayInfo.logicalWidth;
        int dh = this.mDisplayInfo.logicalHeight;
        if (dw <= 0 || dh <= 0) {
            return null;
        }
        boolean inRotation = false;
        Rect frame = new Rect(0, 0, dw, dh);
        int rot = this.mDisplay.getRotation();
        if (rot == 1 || rot == 3) {
            rot = rot != 1 ? 1 : 3;
        }
        convertCropForSurfaceFlinger(frame, rot, dw, dh);
        ScreenRotationAnimation screenRotationAnimation = this.mWmService.mRoot.getDisplayContent(0).getRotationAnimation();
        if (screenRotationAnimation != null && screenRotationAnimation.isAnimating()) {
            inRotation = true;
        }
        Bitmap bitmap = SurfaceControl.screenshot(frame, dw, dh, inRotation, rot);
        if (bitmap == null) {
            Slog.w("WindowManager", "Failed to take screenshot");
            return null;
        }
        Bitmap ret = bitmap.createAshmemBitmap(config);
        bitmap.recycle();
        return ret;
    }

    private static void convertCropForSurfaceFlinger(Rect crop, int rot, int dw, int dh) {
        if (rot == 1) {
            int tmp = crop.top;
            crop.top = dw - crop.right;
            crop.right = crop.bottom;
            crop.bottom = dw - crop.left;
            crop.left = tmp;
            return;
        }
        if (rot == 2) {
            int tmp2 = crop.top;
            crop.top = dh - crop.bottom;
            crop.bottom = dh - tmp2;
            int tmp3 = crop.right;
            crop.right = dw - crop.left;
            crop.left = dw - tmp3;
            return;
        }
        if (rot == 3) {
            int tmp4 = crop.top;
            crop.top = crop.left;
            crop.left = dh - crop.bottom;
            crop.bottom = crop.right;
            crop.right = dh - tmp4;
        }
    }

    void setExitingTokensHasVisible(boolean hasVisible) {
        for (int i = this.mExitingTokens.size() - 1; i >= 0; i--) {
            this.mExitingTokens.get(i).hasVisible = hasVisible;
        }
        int i2 = getTaskDisplayAreaCount();
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            getTaskDisplayAreaAt(i3).setExitingTokensHasVisible(hasVisible);
        }
    }

    void removeExistingTokensIfPossible() {
        for (int i = this.mExitingTokens.size() - 1; i >= 0; i--) {
            WindowToken token = this.mExitingTokens.get(i);
            if (!token.hasVisible) {
                this.mExitingTokens.remove(i);
            }
        }
        int i2 = getTaskDisplayAreaCount();
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            getTaskDisplayAreaAt(i3).removeExistingAppTokensIfPossible();
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void onDescendantOverrideConfigurationChanged() {
        setLayoutNeeded();
        this.mWmService.requestTraversal();
    }

    @Override // com.android.server.wm.WindowContainer
    boolean okToDisplay() {
        return okToDisplay(false);
    }

    boolean okToDisplay(boolean ignoreFrozen) {
        if (this.mDisplayId == 0) {
            return (!this.mWmService.mDisplayFrozen || ignoreFrozen) && this.mWmService.mDisplayEnabled && this.mWmService.mPolicy.isScreenOn();
        }
        return this.mDisplayInfo.state == 2;
    }

    @Override // com.android.server.wm.WindowContainer
    boolean okToAnimate() {
        return okToAnimate(false);
    }

    @Override // com.android.server.wm.WindowContainer
    boolean okToAnimate(boolean ignoreFrozen) {
        return okToDisplay(ignoreFrozen) && (this.mDisplayId != 0 || this.mWmService.mPolicy.okToAnimate());
    }

    static final class TaskForResizePointSearchResult {
        private int delta;
        private Rect mTmpRect = new Rect();
        private Task taskForResize;
        private int x;
        private int y;

        TaskForResizePointSearchResult() {
        }

        Task process(WindowContainer root, int x, int y, int delta) {
            this.taskForResize = null;
            this.x = x;
            this.y = y;
            this.delta = delta;
            this.mTmpRect.setEmpty();
            PooledFunction f = PooledLambda.obtainFunction(new BiFunction() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$TaskForResizePointSearchResult$1FHFJXiYTNFcgi5tiBrxzbmjdWw
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return Boolean.valueOf(((DisplayContent.TaskForResizePointSearchResult) obj).processTask((Task) obj2));
                }
            }, this, PooledLambda.__(Task.class));
            root.forAllTasks((Function<Task, Boolean>) f);
            f.recycle();
            return this.taskForResize;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean processTask(Task task) {
            if (!task.getStack().getWindowConfiguration().canResizeTask() || task.getWindowingMode() == 1 || task.isOrganized()) {
                return true;
            }
            task.getDimBounds(this.mTmpRect);
            Rect rect = this.mTmpRect;
            int i = this.delta;
            rect.inset(-i, -i);
            if (this.mTmpRect.contains(this.x, this.y)) {
                Rect rect2 = this.mTmpRect;
                int i2 = this.delta;
                rect2.inset(i2, i2);
                if (this.mTmpRect.contains(this.x, this.y)) {
                    return true;
                }
                this.taskForResize = task;
                return true;
            }
            return false;
        }
    }

    private static final class ApplySurfaceChangesTransactionState {
        boolean displayHasContent;
        boolean obscured;
        boolean preferMinimalPostProcessing;
        int preferredModeId;
        float preferredRefreshRate;
        boolean syswin;

        private ApplySurfaceChangesTransactionState() {
        }

        void reset() {
            this.displayHasContent = false;
            this.obscured = false;
            this.syswin = false;
            this.preferMinimalPostProcessing = false;
            this.preferredRefreshRate = 0.0f;
            this.preferredModeId = 0;
        }
    }

    static class DisplayChildWindowContainer<E extends WindowContainer> extends WindowContainer<E> {
        DisplayChildWindowContainer(WindowManagerService service) {
            super(service);
            this.mOrientation = -2;
        }

        @Override // com.android.server.wm.WindowContainer
        boolean fillsParent() {
            return true;
        }

        @Override // com.android.server.wm.WindowContainer
        boolean isVisible() {
            return true;
        }
    }

    private class WindowContainers extends DisplayChildWindowContainer<WindowContainer> {
        private final String mName;

        WindowContainers(String name, WindowManagerService service) {
            super(service);
            this.mName = name;
        }

        @Override // com.android.server.wm.WindowContainer
        void assignChildLayers(SurfaceControl.Transaction t) {
            DisplayContent.this.mImeWindowsContainers.setNeedsLayer();
            DisplayContent.this.mRootDisplayArea.assignLayer(t, 0);
            WindowState imeTarget = DisplayContent.this.mInputMethodTarget;
            if (imeTarget != null && ((imeTarget.mActivityRecord == null || !imeTarget.mActivityRecord.hasStartingWindow()) && !imeTarget.inMultiWindowMode() && !imeTarget.mToken.isAppTransitioning() && imeTarget.getSurfaceControl() != null)) {
                DisplayContent.this.mImeWindowsContainers.assignRelativeLayer(t, imeTarget.getSurfaceControl(), 1);
            }
            DisplayContent.this.mRootDisplayArea.assignChildLayers(t);
        }

        @Override // com.android.server.wm.ConfigurationContainer
        String getName() {
            return this.mName;
        }

        void addChildren() {
            addChild(DisplayContent.this.mRootDisplayArea, 0);
            DisplayContent.this.mDisplayAreaPolicy.attachDisplayAreas();
        }

        @Override // com.android.server.wm.WindowContainer
        void positionChildAt(int position, WindowContainer child, boolean includingParents) {
            getParent().positionChildAt(position, this, includingParents);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class NonAppWindowContainers extends DisplayChildWindowContainer<WindowToken> {
        private final Dimmer mDimmer;
        private final String mName;
        private final Rect mTmpDimBoundsRect;
        private final Comparator<WindowToken> mWindowComparator;

        public /* synthetic */ int lambda$new$0$DisplayContent$NonAppWindowContainers(WindowToken token1, WindowToken token2) {
            return this.mWmService.mPolicy.getWindowLayerFromTypeLw(token1.windowType, token1.mOwnerCanManageAppTokens) < this.mWmService.mPolicy.getWindowLayerFromTypeLw(token2.windowType, token2.mOwnerCanManageAppTokens) ? -1 : 1;
        }

        NonAppWindowContainers(String name, WindowManagerService service) {
            super(service);
            this.mWindowComparator = new Comparator() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$NonAppWindowContainers$nqCymC3xR9b3qaeohnnJJpSiajc
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return this.f$0.lambda$new$0$DisplayContent$NonAppWindowContainers((WindowToken) obj, (WindowToken) obj2);
                }
            };
            this.mDimmer = new Dimmer(this);
            this.mTmpDimBoundsRect = new Rect();
            this.mName = name;
        }

        @Override // com.android.server.wm.WindowContainer
        boolean hasActivity() {
            return false;
        }

        void addChild(WindowToken token) {
            addChild(token, this.mWindowComparator);
        }

        @Override // com.android.server.wm.WindowContainer
        int getOrientation(int candidate) {
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                String protoLogParam0 = String.valueOf(this);
                ProtoLogImpl.w(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1389009035, 0, null, protoLogParam0);
                return -2;
            }
            return -2;
        }

        @Override // com.android.server.wm.ConfigurationContainer
        String getName() {
            return this.mName;
        }

        @Override // com.android.server.wm.WindowContainer
        Dimmer getDimmer() {
            return this.mDimmer;
        }

        @Override // com.android.server.wm.WindowContainer
        void prepareSurfaces() {
            this.mDimmer.resetDimStates();
            super.prepareSurfaces();
            getBounds(this.mTmpDimBoundsRect);
            if (this.mDimmer.updateDims(getPendingTransaction(), this.mTmpDimBoundsRect)) {
                scheduleAnimation();
            }
        }

        @Override // com.android.server.wm.WindowContainer
        boolean shouldMagnify() {
            return false;
        }
    }

    private static class ImeContainer extends DisplayArea.Tokens {
        boolean mNeedsLayer;

        ImeContainer(WindowManagerService wms) {
            super(wms, DisplayArea.Type.ABOVE_TASKS, "ImeContainer");
            this.mNeedsLayer = false;
        }

        public void setNeedsLayer() {
            this.mNeedsLayer = true;
        }

        @Override // com.android.server.wm.DisplayArea.Tokens, com.android.server.wm.WindowContainer
        int getOrientation(int candidate) {
            return candidate;
        }

        @Override // com.android.server.wm.WindowContainer
        boolean forAllWindows(ToBooleanFunction<WindowState> callback, boolean traverseTopToBottom) {
            DisplayContent dc = this.mDisplayContent;
            if (skipImeWindowsDuringTraversal(dc)) {
                return false;
            }
            return super.forAllWindows(callback, traverseTopToBottom);
        }

        private boolean skipImeWindowsDuringTraversal(DisplayContent dc) {
            return (dc.mInputMethodTarget == null || dc.getDefaultTaskDisplayArea().isSplitScreenModeActivated()) ? false : true;
        }

        boolean forAllWindowForce(ToBooleanFunction<WindowState> callback, boolean traverseTopToBottom) {
            return super.forAllWindows(callback, traverseTopToBottom);
        }

        @Override // com.android.server.wm.WindowContainer
        void assignLayer(SurfaceControl.Transaction t, int layer) {
            if (!this.mNeedsLayer) {
                return;
            }
            super.assignLayer(t, layer);
            this.mNeedsLayer = false;
        }

        @Override // com.android.server.wm.WindowContainer
        void assignRelativeLayer(SurfaceControl.Transaction t, SurfaceControl relativeTo, int layer) {
            if (!this.mNeedsLayer) {
                return;
            }
            super.assignRelativeLayer(t, relativeTo, layer);
            this.mNeedsLayer = false;
        }
    }

    @Override // com.android.server.wm.WindowContainer
    SurfaceSession getSession() {
        return this.mSession;
    }

    @Override // com.android.server.wm.WindowContainer
    SurfaceControl.Builder makeChildSurface(WindowContainer child) {
        SurfaceSession s = child != null ? child.getSession() : getSession();
        SurfaceControl.Builder b = this.mWmService.makeSurfaceBuilder(s).setContainerLayer();
        if (child == null) {
            return b;
        }
        return b.setName(child.getName()).setParent(this.mSurfaceControl);
    }

    SurfaceControl.Builder makeOverlay() {
        return this.mWmService.makeSurfaceBuilder(this.mSession).setParent(this.mOverlayContainers.getSurfaceControl());
    }

    void reparentToOverlay(SurfaceControl.Transaction transaction, SurfaceControl surface) {
        transaction.reparent(surface, this.mOverlayContainers.getSurfaceControl());
    }

    void applyMagnificationSpec(MagnificationSpec spec) {
        if (spec.scale != 1.0d) {
            this.mMagnificationSpec = spec;
        } else {
            this.mMagnificationSpec = null;
        }
        updateImeParent();
        if (spec.scale != 1.0d) {
            applyMagnificationSpec(getPendingTransaction(), spec);
        } else {
            clearMagnificationSpec(getPendingTransaction());
        }
        getPendingTransaction().apply();
    }

    void reapplyMagnificationSpec() {
        if (this.mMagnificationSpec != null) {
            applyMagnificationSpec(getPendingTransaction(), this.mMagnificationSpec);
        }
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    void onParentChanged(ConfigurationContainer newParent, ConfigurationContainer oldParent) {
        if (!isReady()) {
            this.mDisplayReady = true;
            this.mWmService.mAnimator.addDisplayLocked(this.mDisplayId);
            if (this.mWmService.mDisplayManagerInternal != null) {
                this.mWmService.mDisplayManagerInternal.setDisplayInfoOverrideFromWindowManager(this.mDisplayId, getDisplayInfo());
                configureDisplayPolicy();
            }
            reconfigureDisplayLocked();
            onRequestedOverrideConfigurationChanged(getRequestedOverrideConfiguration());
            this.mWmService.mDisplayNotificationController.dispatchDisplayAdded(this);
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void assignChildLayers(SurfaceControl.Transaction t) {
        this.mWindowContainers.assignLayer(t, 0);
        this.mOverlayContainers.assignLayer(t, 1);
        this.mWindowContainers.assignChildLayers(t);
        this.mOverlayContainers.assignChildLayers(t);
    }

    void assignRelativeLayerForImeTargetChild(SurfaceControl.Transaction t, WindowContainer child) {
        this.mImeWindowsContainers.setNeedsLayer();
        child.assignRelativeLayer(t, this.mImeWindowsContainers.getSurfaceControl(), 1);
    }

    @Override // com.android.server.wm.WindowContainer
    void prepareSurfaces() {
        Trace.traceBegin(32L, "prepareSurfaces");
        try {
            SurfaceControl.Transaction transaction = getPendingTransaction();
            super.prepareSurfaces();
            SurfaceControl.mergeToGlobalTransaction(transaction);
        } finally {
            Trace.traceEnd(32L);
        }
    }

    void assignStackOrdering() {
        for (int i = getTaskDisplayAreaCount() - 1; i >= 0; i--) {
            getTaskDisplayAreaAt(i).assignStackOrdering(getPendingTransaction());
        }
    }

    void deferUpdateImeTarget() {
        this.mDeferUpdateImeTargetCount++;
    }

    void continueUpdateImeTarget() {
        int i = this.mDeferUpdateImeTargetCount;
        if (i == 0) {
            return;
        }
        int i2 = i - 1;
        this.mDeferUpdateImeTargetCount = i2;
        if (i2 == 0) {
            computeImeTarget(true);
        }
    }

    private boolean canUpdateImeTarget() {
        return this.mDeferUpdateImeTargetCount == 0;
    }

    InputMonitor getInputMonitor() {
        return this.mInputMonitor;
    }

    boolean getLastHasContent() {
        return this.mLastHasContent;
    }

    void registerPointerEventListener(WindowManagerPolicyConstants.PointerEventListener listener) {
        this.mPointerEventDispatcher.registerInputEventListener(listener);
    }

    void unregisterPointerEventListener(WindowManagerPolicyConstants.PointerEventListener listener) {
        this.mPointerEventDispatcher.unregisterInputEventListener(listener);
    }

    void prepareAppTransition(int transit, boolean alwaysKeepCurrent) {
        prepareAppTransition(transit, alwaysKeepCurrent, 0, false);
    }

    void prepareAppTransition(int transit, boolean alwaysKeepCurrent, int flags, boolean forceOverride) {
        boolean prepared = this.mAppTransition.prepareAppTransitionLocked(transit, alwaysKeepCurrent, flags, forceOverride);
        if (prepared && okToAnimate()) {
            this.mSkipAppTransitionAnimation = false;
        }
    }

    void executeAppTransition() {
        if (this.mAppTransition.isTransitionSet()) {
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                String protoLogParam0 = String.valueOf(this.mAppTransition);
                long protoLogParam1 = this.mDisplayId;
                String protoLogParam2 = String.valueOf(Debug.getCallers(5));
                ProtoLogImpl.w(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 1166381079, 4, null, protoLogParam0, Long.valueOf(protoLogParam1), protoLogParam2);
            }
            this.mAppTransition.setReady();
            this.mWmService.mWindowPlacerLocked.requestTraversal();
        }
    }

    void handleAnimatingStoppedAndTransition() {
        this.mAppTransition.setIdle();
        for (int i = this.mNoAnimationNotifyOnTransitionFinished.size() - 1; i >= 0; i--) {
            IBinder token = this.mNoAnimationNotifyOnTransitionFinished.get(i);
            this.mAppTransition.notifyAppTransitionFinishedLocked(token);
        }
        this.mNoAnimationNotifyOnTransitionFinished.clear();
        this.mWallpaperController.hideDeferredWallpapersIfNeeded();
        onAppTransitionDone();
        int changes = 0 | 1;
        computeImeTarget(true);
        this.mWallpaperMayChange = true;
        this.mWmService.mFocusMayChange = true;
        this.pendingLayoutChanges |= changes;
    }

    boolean isNextTransitionForward() {
        int transit = this.mAppTransition.getAppTransition();
        return transit == 6 || transit == 8 || transit == 10;
    }

    boolean supportsSystemDecorations() {
        return (this.mWmService.mDisplayWindowSettings.shouldShowSystemDecorsLocked(this) || (this.mDisplay.getFlags() & 64) != 0 || forceDesktopMode()) && this.mDisplayId != this.mWmService.mVr2dDisplayId && isTrusted();
    }

    void reparentDisplayContent(WindowState win, SurfaceControl sc) {
        WindowState windowState = this.mParentWindow;
        if (windowState != null) {
            windowState.removeEmbeddedDisplayContent(this);
        }
        this.mParentWindow = win;
        win.addEmbeddedDisplayContent(this);
        this.mParentSurfaceControl = sc;
        if (this.mPortalWindowHandle == null) {
            this.mPortalWindowHandle = createPortalWindowHandle(sc.toString());
        }
        getPendingTransaction().setInputWindowInfo(sc, this.mPortalWindowHandle).reparent(this.mSurfaceControl, sc);
    }

    WindowState getParentWindow() {
        return this.mParentWindow;
    }

    void updateLocation(WindowState win, int x, int y) {
        if (this.mParentWindow != win) {
            throw new IllegalArgumentException("The given window is not the parent window of this display.");
        }
        if (!this.mLocationInParentWindow.equals(x, y)) {
            this.mLocationInParentWindow.set(x, y);
            if (this.mWmService.mAccessibilityController != null) {
                this.mWmService.mAccessibilityController.onSomeWindowResizedOrMovedLocked(this.mDisplayId);
            }
            notifyLocationInParentDisplayChanged();
        }
    }

    Point getLocationInParentWindow() {
        return this.mLocationInParentWindow;
    }

    Point getLocationInParentDisplay() {
        Point location = new Point();
        if (this.mParentWindow != null) {
            DisplayContent dc = this;
            do {
                WindowState displayParent = dc.getParentWindow();
                location.x = (int) (location.x + displayParent.getFrameLw().left + (dc.getLocationInParentWindow().x * displayParent.mGlobalScale) + 0.5f);
                location.y = (int) (location.y + displayParent.getFrameLw().top + (dc.getLocationInParentWindow().y * displayParent.mGlobalScale) + 0.5f);
                dc = displayParent.getDisplayContent();
                if (dc == null) {
                    break;
                }
            } while (dc.getParentWindow() != null);
        }
        return location;
    }

    void notifyLocationInParentDisplayChanged() {
        forAllWindows((Consumer<WindowState>) new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$Ei1gEKrsGOVbEpUtkye4DxvMrow
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WindowState) obj).updateLocationInParentDisplayIfNeeded();
            }
        }, false);
    }

    SurfaceControl getWindowingLayer() {
        return this.mWindowContainers.getSurfaceControl();
    }

    WindowContainer<?> getImeContainer() {
        return this.mImeWindowsContainers;
    }

    SurfaceControl getOverlayLayer() {
        return this.mOverlayContainers.getSurfaceControl();
    }

    boolean updateSystemGestureExclusion() {
        if (this.mSystemGestureExclusionListeners.getRegisteredCallbackCount() == 0) {
            return false;
        }
        Region systemGestureExclusion = Region.obtain();
        this.mSystemGestureExclusionWasRestricted = calculateSystemGestureExclusion(systemGestureExclusion, this.mSystemGestureExclusionUnrestricted);
        try {
            if (!this.mSystemGestureExclusion.equals(systemGestureExclusion)) {
                this.mSystemGestureExclusion.set(systemGestureExclusion);
                Region unrestrictedOrNull = this.mSystemGestureExclusionWasRestricted ? this.mSystemGestureExclusionUnrestricted : null;
                for (int i = this.mSystemGestureExclusionListeners.beginBroadcast() - 1; i >= 0; i--) {
                    try {
                        this.mSystemGestureExclusionListeners.getBroadcastItem(i).onSystemGestureExclusionChanged(this.mDisplayId, systemGestureExclusion, unrestrictedOrNull);
                    } catch (RemoteException e) {
                        Slog.e("WindowManager", "Failed to notify SystemGestureExclusionListener", e);
                    }
                }
                this.mSystemGestureExclusionListeners.finishBroadcast();
                systemGestureExclusion.recycle();
                return true;
            }
            systemGestureExclusion.recycle();
            return false;
        } catch (Throwable th) {
            systemGestureExclusion.recycle();
            throw th;
        }
    }

    boolean calculateSystemGestureExclusion(final Region outExclusion, final Region outExclusionUnrestricted) {
        outExclusion.setEmpty();
        if (outExclusionUnrestricted != null) {
            outExclusionUnrestricted.setEmpty();
        }
        final Region unhandled = Region.obtain();
        unhandled.set(0, 0, this.mDisplayFrames.mDisplayWidth, this.mDisplayFrames.mDisplayHeight);
        final Rect leftEdge = this.mInsetsStateController.getSourceProvider(5).getSource().getFrame();
        final Rect rightEdge = this.mInsetsStateController.getSourceProvider(6).getSource().getFrame();
        final Region touchableRegion = Region.obtain();
        final Region local = Region.obtain();
        int i = this.mSystemGestureExclusionLimit;
        final int[] remainingLeftRight = {i, i};
        forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$BdTpXoSgyfSu0RkjbBJFgdRaQ0g
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DisplayContent.lambda$calculateSystemGestureExclusion$24(unhandled, touchableRegion, local, remainingLeftRight, outExclusion, leftEdge, rightEdge, outExclusionUnrestricted, (WindowState) obj);
            }
        }, true);
        local.recycle();
        touchableRegion.recycle();
        unhandled.recycle();
        int i2 = remainingLeftRight[0];
        int i3 = this.mSystemGestureExclusionLimit;
        return i2 < i3 || remainingLeftRight[1] < i3;
    }

    static /* synthetic */ void lambda$calculateSystemGestureExclusion$24(Region unhandled, Region touchableRegion, Region local, int[] remainingLeftRight, Region outExclusion, Rect leftEdge, Rect rightEdge, Region outExclusionUnrestricted, WindowState w) {
        if (!w.cantReceiveTouchInput() && w.isVisible()) {
            if ((w.getAttrs().flags & 16) == 0 && !unhandled.isEmpty()) {
                w.getEffectiveTouchableRegion(touchableRegion);
                touchableRegion.op(unhandled, Region.Op.INTERSECT);
                if (w.isImplicitlyExcludingAllSystemGestures()) {
                    local.set(touchableRegion);
                } else {
                    RegionUtils.rectListToRegion(w.getSystemGestureExclusion(), local);
                    local.scale(w.mGlobalScale);
                    Rect frame = w.getWindowFrames().mFrame;
                    local.translate(frame.left, frame.top);
                    local.op(touchableRegion, Region.Op.INTERSECT);
                }
                if (needsGestureExclusionRestrictions(w, false)) {
                    remainingLeftRight[0] = addToGlobalAndConsumeLimit(local, outExclusion, leftEdge, remainingLeftRight[0], w, 0);
                    remainingLeftRight[1] = addToGlobalAndConsumeLimit(local, outExclusion, rightEdge, remainingLeftRight[1], w, 1);
                    Region middle = Region.obtain(local);
                    middle.op(leftEdge, Region.Op.DIFFERENCE);
                    middle.op(rightEdge, Region.Op.DIFFERENCE);
                    outExclusion.op(middle, Region.Op.UNION);
                    middle.recycle();
                } else {
                    boolean loggable = needsGestureExclusionRestrictions(w, true);
                    if (loggable) {
                        addToGlobalAndConsumeLimit(local, outExclusion, leftEdge, Integer.MAX_VALUE, w, 0);
                        addToGlobalAndConsumeLimit(local, outExclusion, rightEdge, Integer.MAX_VALUE, w, 1);
                    }
                    outExclusion.op(local, Region.Op.UNION);
                }
                if (outExclusionUnrestricted != null) {
                    outExclusionUnrestricted.op(local, Region.Op.UNION);
                }
                unhandled.op(touchableRegion, Region.Op.DIFFERENCE);
            }
        }
    }

    private static boolean needsGestureExclusionRestrictions(WindowState win, boolean ignoreRequest) {
        int type = win.mAttrs.type;
        boolean stickyHideNav = !win.getRequestedInsetsState().getSourceOrDefaultVisibility(1) && win.mAttrs.insetsFlags.behavior == 2;
        return ((stickyHideNav && !ignoreRequest) || type == 2011 || type == 2040 || win.getActivityType() == 2) ? false : true;
    }

    static boolean logsGestureExclusionRestrictions(WindowState win) {
        WindowManager.LayoutParams attrs;
        int type;
        return win.mWmService.mConstants.mSystemGestureExclusionLogDebounceTimeoutMillis > 0 && (type = (attrs = win.getAttrs()).type) != 2013 && type != 3 && type != 2019 && (attrs.flags & 16) == 0 && needsGestureExclusionRestrictions(win, true) && win.getDisplayContent().mDisplayPolicy.hasSideGestures();
    }

    private static int addToGlobalAndConsumeLimit(Region local, final Region global, Rect edge, int limit, WindowState win, int side) {
        Region r = Region.obtain(local);
        r.op(edge, Region.Op.INTERSECT);
        final int[] remaining = {limit};
        final int[] requestedExclusion = {0};
        RegionUtils.forEachRectReverse(r, new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$-t02M5j-NY8t_HMWggKym0SrI5k
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DisplayContent.lambda$addToGlobalAndConsumeLimit$25(remaining, requestedExclusion, global, (Rect) obj);
            }
        });
        int grantedExclusion = limit - remaining[0];
        win.setLastExclusionHeights(side, requestedExclusion[0], grantedExclusion);
        r.recycle();
        return remaining[0];
    }

    static /* synthetic */ void lambda$addToGlobalAndConsumeLimit$25(int[] remaining, int[] requestedExclusion, Region global, Rect rect) {
        if (remaining[0] <= 0) {
            return;
        }
        int height = rect.height();
        requestedExclusion[0] = requestedExclusion[0] + height;
        if (height > remaining[0]) {
            rect.top = rect.bottom - remaining[0];
        }
        remaining[0] = remaining[0] - height;
        global.op(rect, Region.Op.UNION);
    }

    void registerSystemGestureExclusionListener(ISystemGestureExclusionListener listener) {
        boolean changed;
        this.mSystemGestureExclusionListeners.register(listener);
        if (this.mSystemGestureExclusionListeners.getRegisteredCallbackCount() == 1) {
            changed = updateSystemGestureExclusion();
        } else {
            changed = false;
        }
        if (!changed) {
            Region unrestrictedOrNull = this.mSystemGestureExclusionWasRestricted ? this.mSystemGestureExclusionUnrestricted : null;
            try {
                listener.onSystemGestureExclusionChanged(this.mDisplayId, this.mSystemGestureExclusion, unrestrictedOrNull);
            } catch (RemoteException e) {
                Slog.e("WindowManager", "Failed to notify SystemGestureExclusionListener during register", e);
            }
        }
    }

    void unregisterSystemGestureExclusionListener(ISystemGestureExclusionListener listener) {
        this.mSystemGestureExclusionListeners.unregister(listener);
    }

    private InputWindowHandle createPortalWindowHandle(String name) {
        InputWindowHandle portalWindowHandle = new InputWindowHandle((InputApplicationHandle) null, -1);
        portalWindowHandle.name = name;
        portalWindowHandle.token = new Binder();
        portalWindowHandle.layoutParamsFlags = 8388648;
        getBounds(this.mTmpBounds);
        portalWindowHandle.touchableRegion.set(this.mTmpBounds);
        portalWindowHandle.scaleFactor = 1.0f;
        portalWindowHandle.ownerPid = Process.myPid();
        portalWindowHandle.ownerUid = Process.myUid();
        portalWindowHandle.portalToDisplayId = this.mDisplayId;
        return portalWindowHandle;
    }

    public void setForwardedInsets(Insets insets) {
        if (insets == null) {
            insets = Insets.NONE;
        }
        if (this.mDisplayPolicy.getForwardedInsets().equals(insets)) {
            return;
        }
        this.mDisplayPolicy.setForwardedInsets(insets);
        setLayoutNeeded();
        this.mWmService.mWindowPlacerLocked.requestTraversal();
    }

    protected MetricsLogger getMetricsLogger() {
        if (this.mMetricsLogger == null) {
            this.mMetricsLogger = new MetricsLogger();
        }
        return this.mMetricsLogger;
    }

    void onDisplayChanged() {
        this.mDisplay.getRealSize(this.mTmpDisplaySize);
        setBounds(0, 0, this.mTmpDisplaySize.x, this.mTmpDisplaySize.y);
        updateDisplayInfo();
        int displayId = this.mDisplay.getDisplayId();
        if (displayId != 0) {
            int displayState = this.mDisplay.getState();
            if (displayState == 1) {
                this.mOffTokenAcquirer.acquire(this.mDisplayId);
            } else if (displayState == 2) {
                this.mOffTokenAcquirer.release(this.mDisplayId);
            }
        }
        this.mWmService.requestTraversal();
    }

    static boolean alwaysCreateStack(int windowingMode, int activityType) {
        return activityType == 1 && (windowingMode == 1 || windowingMode == 5 || windowingMode == 2 || windowingMode == 4 || windowingMode == 6);
    }

    ActivityStack getFocusedStack() {
        for (int i = getTaskDisplayAreaCount() - 1; i >= 0; i--) {
            ActivityStack stack = getTaskDisplayAreaAt(i).getFocusedStack();
            if (stack != null) {
                return stack;
            }
        }
        return null;
    }

    void removeStacksInWindowingModes(int... windowingModes) {
        for (int i = getTaskDisplayAreaCount() - 1; i >= 0; i--) {
            getTaskDisplayAreaAt(i).removeStacksInWindowingModes(windowingModes);
        }
    }

    void removeStacksWithActivityTypes(int... activityTypes) {
        for (int i = getTaskDisplayAreaCount() - 1; i >= 0; i--) {
            getTaskDisplayAreaAt(i).removeStacksWithActivityTypes(activityTypes);
        }
    }

    ActivityRecord topRunningActivity() {
        return topRunningActivity(false);
    }

    ActivityRecord topRunningActivity(boolean considerKeyguardState) {
        for (int i = getTaskDisplayAreaCount() - 1; i >= 0; i--) {
            ActivityRecord activity = getTaskDisplayAreaAt(i).topRunningActivity(considerKeyguardState);
            if (activity != null) {
                return activity;
            }
        }
        return null;
    }

    boolean updateDisplayOverrideConfigurationLocked() {
        Configuration values = new Configuration();
        computeScreenConfiguration(values);
        this.mAtmService.mH.sendMessage(PooledLambda.obtainMessage($$Lambda$ADNhW0r9Skcs9ezrOGURijIlyQ.INSTANCE, this.mAtmService.mAmInternal, Integer.valueOf(this.mDisplayId)));
        Settings.System.clearConfiguration(values);
        updateDisplayOverrideConfigurationLocked(values, null, false, this.mAtmService.mTmpUpdateConfigurationResult);
        return this.mAtmService.mTmpUpdateConfigurationResult.changes != 0;
    }

    boolean updateDisplayOverrideConfigurationLocked(Configuration values, ActivityRecord starting, boolean deferResume, ActivityTaskManagerService.UpdateConfigurationResult result) {
        int changes = 0;
        this.mAtmService.deferWindowLayout();
        if (values != null) {
            try {
                if (this.mDisplayId == 0) {
                    changes = this.mAtmService.updateGlobalConfigurationLocked(values, false, false, -10000, deferResume);
                } else {
                    changes = performDisplayOverrideConfigUpdate(values, deferResume);
                }
            } catch (Throwable th) {
                this.mAtmService.continueWindowLayout();
                throw th;
            }
        }
        boolean kept = this.mAtmService.ensureConfigAndVisibilityAfterUpdate(starting, changes);
        this.mAtmService.continueWindowLayout();
        if (result != null) {
            result.changes = changes;
            result.activityRelaunched = !kept;
        }
        return kept;
    }

    int performDisplayOverrideConfigUpdate(Configuration values, boolean deferResume) {
        this.mTempConfig.setTo(getRequestedOverrideConfiguration());
        int changes = this.mTempConfig.updateFrom(values);
        if (changes != 0) {
            Slog.i("WindowManager", "Override config changes=" + Integer.toHexString(changes) + " " + this.mTempConfig + " for displayId=" + this.mDisplayId);
            onRequestedOverrideConfigurationChanged(this.mTempConfig);
            boolean isDensityChange = (changes & 4096) != 0;
            if (isDensityChange && this.mDisplayId == 0) {
                this.mAtmService.mAppWarnings.onDensityChanged();
                Message msg = PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$ibmQVLjaQW2x74Wk8TcE0Og2MJM
                    public final void accept(Object obj, Object obj2, Object obj3) {
                        ((ActivityManagerInternal) obj).killAllBackgroundProcessesExcept(((Integer) obj2).intValue(), ((Integer) obj3).intValue());
                    }
                }, this.mAtmService.mAmInternal, 24, 6);
                this.mAtmService.mH.sendMessage(msg);
            }
            this.mWmService.mDisplayNotificationController.dispatchDisplayChanged(this, getConfiguration());
        }
        return changes;
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public void onRequestedOverrideConfigurationChanged(Configuration overrideConfiguration) {
        Configuration currOverrideConfig = getRequestedOverrideConfiguration();
        int currRotation = currOverrideConfig.windowConfiguration.getRotation();
        int overrideRotation = overrideConfiguration.windowConfiguration.getRotation();
        if (currRotation != -1 && currRotation != overrideRotation) {
            applyRotationAndFinishFixedRotation(currRotation, overrideRotation);
        }
        this.mCurrentOverrideConfigurationChanges = currOverrideConfig.diff(overrideConfiguration);
        super.onRequestedOverrideConfigurationChanged(overrideConfiguration);
        this.mCurrentOverrideConfigurationChanges = 0;
        this.mWmService.setNewDisplayOverrideConfiguration(overrideConfiguration, this);
        this.mAtmService.addWindowLayoutReasons(1);
    }

    private void applyRotationAndFinishFixedRotation(final int oldRotation, final int newRotation) {
        WindowToken rotatedLaunchingApp = this.mFixedRotationLaunchingApp;
        if (rotatedLaunchingApp == null) {
            lambda$applyRotationAndFinishFixedRotation$26$DisplayContent(oldRotation, newRotation);
        } else {
            rotatedLaunchingApp.finishFixedRotationTransform(new Runnable() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$nLtIl6G_J9ubuqCmo2SmaYpTt_E
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$applyRotationAndFinishFixedRotation$26$DisplayContent(oldRotation, newRotation);
                }
            });
            setFixedRotationLaunchingAppUnchecked(null);
        }
    }

    void handleActivitySizeCompatModeIfNeeded(ActivityRecord r) {
        if (!r.isState(ActivityStack.ActivityState.RESUMED) || r.getWindowingMode() != 1) {
            return;
        }
        if (!r.inSizeCompatMode()) {
            if (this.mLastCompatModeActivity != null) {
                this.mAtmService.getTaskChangeNotificationController().notifySizeCompatModeActivityChanged(this.mDisplayId, null);
            }
            this.mLastCompatModeActivity = null;
        } else {
            if (this.mLastCompatModeActivity == r) {
                return;
            }
            this.mLastCompatModeActivity = r;
            this.mAtmService.getTaskChangeNotificationController().notifySizeCompatModeActivityChanged(this.mDisplayId, r.appToken);
        }
    }

    boolean isUidPresent(int uid) {
        Predicate<ActivityRecord> predicateObtainPredicate = PooledLambda.obtainPredicate($$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc.INSTANCE, PooledLambda.__(ActivityRecord.class), Integer.valueOf(uid));
        boolean isUidPresent = this.mDisplayContent.getActivity(predicateObtainPredicate) != null;
        predicateObtainPredicate.recycle();
        return isUidPresent;
    }

    boolean isRemoved() {
        return this.mRemoved;
    }

    boolean isRemoving() {
        return this.mRemoving;
    }

    void remove() {
        this.mRemoving = true;
        ActivityStack lastReparentedStack = null;
        this.mRootWindowContainer.mStackSupervisor.beginDeferResume();
        try {
            int numTaskContainers = getTaskDisplayAreaCount();
            for (int tdaNdx = 0; tdaNdx < numTaskContainers; tdaNdx++) {
                ActivityStack lastReparentedStackFromArea = getTaskDisplayAreaAt(tdaNdx).remove();
                if (lastReparentedStackFromArea != null) {
                    lastReparentedStack = lastReparentedStackFromArea;
                }
            }
            this.mRootWindowContainer.mStackSupervisor.endDeferResume();
            this.mRemoved = true;
            if (lastReparentedStack != null) {
                lastReparentedStack.postReparent();
            }
            releaseSelfIfNeeded();
            this.mDisplayPolicy.release();
            if (!this.mAllSleepTokens.isEmpty()) {
                this.mAllSleepTokens.forEach(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$FQQU9quIzEky08rAR5Wj9IHXiPQ
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$remove$27$DisplayContent((RootWindowContainer.SleepToken) obj);
                    }
                });
                this.mAllSleepTokens.clear();
                this.mAtmService.updateSleepIfNeededLocked();
            }
        } catch (Throwable th) {
            this.mRootWindowContainer.mStackSupervisor.endDeferResume();
            throw th;
        }
    }

    public /* synthetic */ void lambda$remove$27$DisplayContent(RootWindowContainer.SleepToken token) {
        this.mRootWindowContainer.mSleepTokens.remove(token.mHashKey);
    }

    void releaseSelfIfNeeded() {
        if (!this.mRemoved) {
            return;
        }
        boolean onlyEmptyHomeStacksLeft = true;
        for (int tdaNdx = getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
            TaskDisplayArea taskDisplayArea = getTaskDisplayAreaAt(tdaNdx);
            if (taskDisplayArea.getStackCount() != 1) {
                onlyEmptyHomeStacksLeft = false;
                break;
            }
            ActivityStack stack = taskDisplayArea.getStackAt(0);
            if (!stack.isActivityTypeHome() || stack.hasChild()) {
                onlyEmptyHomeStacksLeft = false;
                break;
            }
        }
        if (onlyEmptyHomeStacksLeft) {
            for (int tdaNdx2 = getTaskDisplayAreaCount() - 1; tdaNdx2 >= 0; tdaNdx2--) {
                ActivityStack s = getTaskDisplayAreaAt(tdaNdx2).getStackAt(0);
                s.removeIfPossible();
            }
            return;
        }
        if (getTopStack() == null) {
            removeIfPossible();
            this.mRootWindowContainer.mStackSupervisor.getKeyguardController().onDisplayRemoved(this.mDisplayId);
        }
    }

    IntArray getPresentUIDs() {
        this.mDisplayAccessUIDs.clear();
        Consumer<ActivityRecord> consumerObtainConsumer = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$olEtDzkJbp6PCECUFtRISV0LCpk
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                DisplayContent.addActivityUid((ActivityRecord) obj, (IntArray) obj2);
            }
        }, PooledLambda.__(ActivityRecord.class), this.mDisplayAccessUIDs);
        this.mDisplayContent.forAllActivities(consumerObtainConsumer);
        consumerObtainConsumer.recycle();
        return this.mDisplayAccessUIDs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void addActivityUid(ActivityRecord r, IntArray uids) {
        uids.add(r.getUid());
    }

    boolean shouldDestroyContentOnRemove() {
        return this.mDisplay.getRemoveMode() == 1;
    }

    boolean shouldSleep() {
        return (getStackCount() == 0 || !this.mAllSleepTokens.isEmpty()) && this.mAtmService.mRunningVoice == null;
    }

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
    void setFocusedApp(ActivityRecord r, boolean moveFocusNow) {
        ActivityRecord newFocus;
        IApplicationToken.Stub stub = r.appToken;
        if (stub == null) {
            if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
                long protoLogParam0 = this.mDisplayId;
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, -603199586, 1, null, Long.valueOf(protoLogParam0));
            }
            newFocus = null;
        } else {
            ActivityRecord newFocus2 = this.mWmService.mRoot.getActivityRecord(stub);
            if (newFocus2 == null) {
                Slog.w("WindowManager", "Attempted to set focus to non-existing app token: " + stub + ", displayId=" + this.mDisplayId);
            }
            if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
                String protoLogParam1 = String.valueOf(newFocus2);
                long protoLogParam2 = this.mDisplayId;
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, 584499099, 28, null, protoLogParam1, Boolean.valueOf(moveFocusNow), Long.valueOf(protoLogParam2));
            }
            newFocus = newFocus2;
        }
        boolean changed = setFocusedApp(newFocus);
        if (moveFocusNow && changed) {
            this.mWmService.updateFocusedWindowLocked(0, true);
        }
    }

    void ensureActivitiesVisible(ActivityRecord starting, int configChanges, boolean preserveWindows, boolean notifyClients) {
        if (this.mInEnsureActivitiesVisible) {
            return;
        }
        this.mInEnsureActivitiesVisible = true;
        try {
            for (int i = getTaskDisplayAreaCount() - 1; i >= 0; i--) {
                getTaskDisplayAreaAt(i).ensureActivitiesVisible(starting, configChanges, preserveWindows, notifyClients);
            }
            this.mInEnsureActivitiesVisible = false;
        } catch (Throwable th) {
            this.mInEnsureActivitiesVisible = false;
            throw th;
        }
    }

    boolean isSleeping() {
        return this.mSleeping;
    }

    void setIsSleeping(boolean asleep) {
        this.mSleeping = asleep;
    }

    void setDisplayToSingleTaskInstance() {
        int taskDisplayAreaCount = getTaskDisplayAreaCount();
        if (taskDisplayAreaCount > 1) {
            throw new IllegalArgumentException("Display already has multiple task display areas. display=" + this);
        }
        int stackCount = getDefaultTaskDisplayArea().getStackCount();
        if (stackCount > 1) {
            throw new IllegalArgumentException("Display already has multiple stacks. display=" + this);
        }
        if (stackCount > 0) {
            ActivityStack stack = getDefaultTaskDisplayArea().getStackAt(0);
            if (stack.getChildCount() > 1) {
                throw new IllegalArgumentException("Display stack already has multiple tasks. display=" + this + " stack=" + stack);
            }
        }
        this.mSingleTaskInstance = true;
    }

    boolean isSingleTaskInstance() {
        return this.mSingleTaskInstance;
    }

    void removeAllTasks() {
        forAllTasks(new Consumer() { // from class: com.android.server.wm.-$$Lambda$DisplayContent$2ZEsBoS8Sw_NSha6EO7e9ul1TN8
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Task task = (Task) obj;
                task.getStack().removeChild(task, "removeAllTasks");
            }
        });
    }

    boolean isAnyNonToastWindowVisibleForPid(int pid) {
        PooledPredicate p = PooledLambda.obtainPredicate(new BiPredicate() { // from class: com.android.server.wm.-$$Lambda$VYR_ckkt7281-Ti8Ps0f0Tx3ljY
            @Override // java.util.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                return ((WindowState) obj).isNonToastWindowVisibleForPid(((Integer) obj2).intValue());
            }
        }, PooledLambda.__(WindowState.class), Integer.valueOf(pid));
        WindowState w = getWindow(p);
        p.recycle();
        return w != null;
    }

    Context getDisplayUiContext() {
        return this.mDisplayPolicy.getSystemUiContext();
    }

    Point getDisplayPosition() {
        return this.mWmService.mDisplayManagerInternal.getDisplayPosition(getDisplayId());
    }

    WindowState findScrollCaptureTargetWindow(final WindowState searchBehind, final int taskId) {
        return getWindow(new Predicate<WindowState>() { // from class: com.android.server.wm.DisplayContent.1
            boolean behindTopWindow;

            {
                this.behindTopWindow = searchBehind == null;
            }

            @Override // java.util.function.Predicate
            public boolean test(WindowState nextWindow) {
                Task task;
                if (this.behindTopWindow) {
                    return (taskId == -1 || ((task = nextWindow.getTask()) != null && task.isTaskId(taskId))) && nextWindow.canReceiveKeys();
                }
                if (nextWindow == searchBehind) {
                    this.behindTopWindow = true;
                }
                return false;
            }
        });
    }

    class FixedRotationTransitionListener extends WindowManagerInternal.AppTransitionListener {
        private ActivityRecord mAnimatingRecents;
        private boolean mRecentsWillBeTop;

        FixedRotationTransitionListener() {
        }

        void onStartRecentsAnimation(ActivityRecord r) {
            this.mAnimatingRecents = r;
            if (r.isVisible() && DisplayContent.this.mFocusedApp != null && !DisplayContent.this.mFocusedApp.occludesParent()) {
                return;
            }
            DisplayContent.this.rotateInDifferentOrientationIfNeeded(r);
            if (r.hasFixedRotationTransform()) {
                DisplayContent.this.setFixedRotationLaunchingApp(r, r.getWindowConfiguration().getRotation());
            }
        }

        void onFinishRecentsAnimation() {
            ActivityRecord animatingRecents = this.mAnimatingRecents;
            boolean recentsWillBeTop = this.mRecentsWillBeTop;
            this.mAnimatingRecents = null;
            this.mRecentsWillBeTop = false;
            if (recentsWillBeTop) {
                return;
            }
            if (animatingRecents != null && animatingRecents == DisplayContent.this.mFixedRotationLaunchingApp && animatingRecents.isVisible() && animatingRecents != DisplayContent.this.topRunningActivity()) {
                DisplayContent.this.setFixedRotationLaunchingAppUnchecked(null);
            } else {
                DisplayContent.this.continueUpdateOrientationForDiffOrienLaunchingApp();
            }
        }

        void notifyRecentsWillBeTop() {
            this.mRecentsWillBeTop = true;
        }

        boolean isTopFixedOrientationRecentsAnimating() {
            ActivityRecord activityRecord = this.mAnimatingRecents;
            return (activityRecord == null || activityRecord.getRequestedConfigurationOrientation() == 0 || DisplayContent.this.hasTopFixedRotationLaunchingApp()) ? false : true;
        }

        @Override // com.android.server.wm.WindowManagerInternal.AppTransitionListener
        public void onAppTransitionFinishedLocked(IBinder token) {
            ActivityRecord activityRecord;
            ActivityRecord r = DisplayContent.this.getActivityRecord(token);
            if (r == null || r == (activityRecord = this.mAnimatingRecents)) {
                return;
            }
            if (activityRecord == null || !this.mRecentsWillBeTop) {
                if (DisplayContent.this.mFixedRotationLaunchingApp != null) {
                    if (DisplayContent.this.mFixedRotationLaunchingApp.hasFixedRotationTransform(r)) {
                        if (DisplayContent.this.mFixedRotationLaunchingApp.hasAnimatingFixedRotationTransition()) {
                            return;
                        }
                    } else {
                        Task task = r.getTask();
                        if (task == null || task != DisplayContent.this.mFixedRotationLaunchingApp.getTask() || task.isAppTransitioning()) {
                            return;
                        }
                    }
                    DisplayContent.this.continueUpdateOrientationForDiffOrienLaunchingApp();
                    return;
                }
                r.finishFixedRotationTransform();
            }
        }

        @Override // com.android.server.wm.WindowManagerInternal.AppTransitionListener
        public void onAppTransitionCancelledLocked(int transit) {
            DisplayContent.this.continueUpdateOrientationForDiffOrienLaunchingApp();
        }

        @Override // com.android.server.wm.WindowManagerInternal.AppTransitionListener
        public void onAppTransitionTimeoutLocked() {
            DisplayContent.this.continueUpdateOrientationForDiffOrienLaunchingApp();
        }
    }

    class RemoteInsetsControlTarget implements InsetsControlTarget {
        private final IDisplayWindowInsetsController mRemoteInsetsController;

        RemoteInsetsControlTarget(IDisplayWindowInsetsController controller) {
            this.mRemoteInsetsController = controller;
        }

        void topFocusedWindowChanged(String packageName) {
            try {
                this.mRemoteInsetsController.topFocusedWindowChanged(packageName);
            } catch (RemoteException e) {
                Slog.w("WindowManager", "Failed to deliver package in top focused window change", e);
            }
        }

        void notifyInsetsChanged() {
            try {
                this.mRemoteInsetsController.insetsChanged(DisplayContent.this.getInsetsStateController().getRawInsetsState());
            } catch (RemoteException e) {
                Slog.w("WindowManager", "Failed to deliver inset state change", e);
            }
        }

        @Override // com.android.server.wm.InsetsControlTarget
        public void notifyInsetsControlChanged() {
            InsetsStateController stateController = DisplayContent.this.getInsetsStateController();
            try {
                this.mRemoteInsetsController.insetsControlChanged(stateController.getRawInsetsState(), stateController.getControlsForDispatch(this));
            } catch (RemoteException e) {
                Slog.w("WindowManager", "Failed to deliver inset state change", e);
            }
        }

        @Override // com.android.server.wm.InsetsControlTarget
        public void showInsets(int types, boolean fromIme) {
            try {
                this.mRemoteInsetsController.showInsets(types, fromIme);
            } catch (RemoteException e) {
                Slog.w("WindowManager", "Failed to deliver showInsets", e);
            }
        }

        @Override // com.android.server.wm.InsetsControlTarget
        public void hideInsets(int types, boolean fromIme) {
            try {
                this.mRemoteInsetsController.hideInsets(types, fromIme);
            } catch (RemoteException e) {
                Slog.w("WindowManager", "Failed to deliver showInsets", e);
            }
        }

        @Override // com.android.server.wm.InsetsControlTarget
        public boolean getImeRequestedVisibility(int type) {
            return DisplayContent.this.getInsetsStateController().getImeSourceProvider().isImeShowing();
        }
    }

    int getWindowTokensWithoutSurfaceCount(int callingUid) {
        List<WindowToken> tokens = new ArrayList<>(this.mTokenMap.values());
        int count = 0;
        for (int i = tokens.size() - 1; i >= 0; i--) {
            WindowToken token = tokens.get(i);
            if (callingUid == token.getOwnerUid() && token.asActivityRecord() == null && token.mSurfaceControl == null) {
                count++;
            }
        }
        return count;
    }
}
