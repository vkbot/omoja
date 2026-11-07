package com.android.server.wm;

import android.R;
import android.app.AppOpsManager;
import android.app.WindowConfiguration;
import android.app.admin.DevicePolicyCache;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.hardware.audio.common.V2_0.AudioChannelMask;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Binder;
import android.os.Debug;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.Trace;
import android.os.WorkSource;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.DisplayMetrics;
import android.util.MergedConfiguration;
import android.util.Slog;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import android.view.DisplayCutout;
import android.view.DisplayInfo;
import android.view.Gravity;
import android.view.IApplicationToken;
import android.view.IWindow;
import android.view.IWindowFocusObserver;
import android.view.IWindowId;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventReceiver;
import android.view.InputWindowHandle;
import android.view.InsetsSource;
import android.view.InsetsState;
import android.view.SurfaceControl;
import android.view.SurfaceSession;
import android.view.WindowInfo;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.android.internal.policy.KeyInterceptionInfo;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.ToBooleanFunction;
import com.android.server.am.ActivityManagerService;
import com.android.server.job.controllers.JobStatus;
import com.android.server.notification.NotificationShellCmd;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.usb.descriptors.UsbACInterface;
import com.android.server.wm.utils.WmDisplayCutout;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
class WindowState extends WindowContainer<WindowState> implements WindowManagerPolicy.WindowState, InsetsControlTarget {
    static final int BLAST_TIMEOUT_DURATION = 5000;
    private static final float DEFAULT_DIM_AMOUNT_DEAD_WINDOW = 0.5f;
    static final int EXCLUSION_LEFT = 0;
    static final int EXCLUSION_RIGHT = 1;
    static final int LEGACY_POLICY_VISIBILITY = 1;
    static final int MINIMUM_VISIBLE_HEIGHT_IN_DP = 32;
    static final int MINIMUM_VISIBLE_WIDTH_IN_DP = 48;
    private static final int POLICY_VISIBILITY_ALL = 3;
    static final int RESIZE_HANDLE_WIDTH_IN_DP = 30;
    static final String TAG = "WindowManager";
    private static final int VISIBLE_FOR_USER = 2;
    private static final StringBuilder sTmpSB = new StringBuilder();
    private static final Comparator<WindowState> sWindowSubLayerComparator = new Comparator<WindowState>() { // from class: com.android.server.wm.WindowState.1
        @Override // java.util.Comparator
        public int compare(WindowState w1, WindowState w2) {
            int layer1 = w1.mSubLayer;
            int layer2 = w2.mSubLayer;
            if (layer1 < layer2) {
                return -1;
            }
            if (layer1 == layer2 && layer2 < 0) {
                return -1;
            }
            return 1;
        }
    };
    ActivityRecord mActivityRecord;
    private boolean mAnimateReplacingWindow;
    boolean mAnimatingExit;
    boolean mAppDied;
    boolean mAppFreezing;
    final int mAppOp;
    private boolean mAppOpVisibility;
    final WindowManager.LayoutParams mAttrs;
    final int mBaseLayer;
    boolean mBehindIme;
    final IWindow mClient;
    private InputChannel mClientChannel;
    final Context mContext;
    private InsetsSourceProvider mControllableInsetProvider;
    private DeadWindowEventReceiver mDeadWindowEventReceiver;
    final DeathRecipient mDeathRecipient;
    boolean mDestroying;
    private boolean mDragResizing;
    private boolean mDragResizingChangeReported;
    private PowerManager.WakeLock mDrawLock;
    private boolean mDrawnStateEvaluated;
    private final ArraySet<DisplayContent> mEmbeddedDisplayContents;
    private final List<Rect> mExclusionRects;
    long mFinishSeamlessRotateFrameNumber;
    private RemoteCallbackList<IWindowFocusObserver> mFocusCallbacks;
    private boolean mForceHideNonSystemOverlayWindow;
    final boolean mForceSeamlesslyRotate;
    private long mFrameNumber;
    int mFrameRateSelectionPriority;
    final Rect mGivenContentInsets;
    boolean mGivenInsetsPending;
    final Region mGivenTouchableRegion;
    final Rect mGivenVisibleInsets;
    float mGlobalScale;
    float mHScale;
    boolean mHasSurface;
    boolean mHaveFrame;
    boolean mHidden;
    private boolean mHiddenWhileSuspended;
    boolean mInRelayout;
    InputChannel mInputChannel;
    final InputWindowHandle mInputWindowHandle;
    private final Rect mInsetFrame;
    float mInvGlobalScale;
    private boolean mIsChildWindow;
    private boolean mIsDimming;
    private final boolean mIsFloatingLayer;
    final boolean mIsImWindow;
    final boolean mIsWallpaper;
    private KeyInterceptionInfo mKeyInterceptionInfo;
    private boolean mLastConfigReportedToClient;
    private final long[] mLastExclusionLogUptimeMillis;
    int mLastFreezeDuration;
    private final int[] mLastGrantedExclusionHeight;
    float mLastHScale;
    final Rect mLastRelayoutContentInsets;
    private final MergedConfiguration mLastReportedConfiguration;
    private final Point mLastReportedDisplayOffset;
    private final int[] mLastRequestedExclusionHeight;
    private int mLastRequestedHeight;
    private int mLastRequestedWidth;
    private boolean mLastShownChangedReported;
    final Rect mLastSurfaceInsets;
    private CharSequence mLastTitle;
    float mLastVScale;
    int mLastVisibleLayoutRotation;
    int mLayer;
    final boolean mLayoutAttached;
    boolean mLayoutNeeded;
    int mLayoutSeq;
    boolean mLegacyPolicyVisibilityAfterAnim;
    private int mLocalSyncId;
    private boolean mMovedByResize;
    private boolean mNotifyBlastOnSurfacePlacement;
    boolean mObscured;
    private boolean mOrientationChangeTimedOut;
    private boolean mOrientationChanging;
    final boolean mOwnerCanAddInternalSystemWindow;
    final int mOwnerUid;
    SeamlessRotator mPendingSeamlessRotate;
    boolean mPermanentlyHidden;
    final WindowManagerPolicy mPolicy;
    private int mPolicyVisibility;
    private PowerManagerWrapper mPowerManagerWrapper;
    private boolean mRedrawForSyncReported;
    boolean mRelayoutCalled;
    boolean mRemoveOnExit;
    boolean mRemoved;
    private WindowState mReplacementWindow;
    private boolean mReplacingRemoveRequested;
    boolean mReportOrientationChanged;
    int mRequestedHeight;
    private final InsetsState mRequestedInsetsState;
    int mRequestedWidth;
    private int mResizeMode;
    boolean mResizedWhileGone;
    boolean mSeamlesslyRotated;
    int mSeq;
    final Session mSession;
    boolean mShouldScaleWallpaper;
    final int mShowUserId;
    private WindowFrames mSimulatedWindowFrames;
    boolean mSkipEnterAnimationForSeamlessReplacement;
    private String mStringNameCache;
    final int mSubLayer;
    private final Point mSurfacePosition;
    int mSystemUiVisibility;
    private final Region mTapExcludeRegion;
    private final Configuration mTempConfiguration;
    final Matrix mTmpMatrix;
    final float[] mTmpMatrixArray;
    private final Point mTmpPoint;
    private final Rect mTmpRect;
    WindowToken mToken;
    int mTouchableInsets;
    float mVScale;
    int mViewVisibility;
    int mWallpaperDisplayOffsetX;
    int mWallpaperDisplayOffsetY;
    boolean mWallpaperVisible;
    float mWallpaperX;
    float mWallpaperXStep;
    float mWallpaperY;
    float mWallpaperYStep;
    float mWallpaperZoomOut;
    private boolean mWasExiting;
    boolean mWillReplaceWindow;
    final WindowStateAnimator mWinAnimator;
    private final WindowFrames mWindowFrames;
    final WindowId mWindowId;
    boolean mWindowRemovalAllowed;
    private final WindowProcessController mWpcForDisplayConfigChanges;

    interface PowerManagerWrapper {
        boolean isInteractive();

        void wakeUp(long j, int i, String str);
    }

    @Override // com.android.server.wm.InsetsControlTarget
    public InsetsState getRequestedInsetsState() {
        return this.mRequestedInsetsState;
    }

    void updateRequestedInsetsState(InsetsState state) {
        for (int i = 0; i < 20; i++) {
            InsetsSource source = state.peekSource(i);
            if (source != null) {
                this.mRequestedInsetsState.addSource(source);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void seamlesslyRotateIfAllowed(SurfaceControl.Transaction transaction, int oldRotation, int rotation, boolean requested) {
        if (!isVisibleNow() || this.mIsWallpaper || this.mToken.hasFixedRotationTransform()) {
            return;
        }
        SeamlessRotator seamlessRotator = this.mPendingSeamlessRotate;
        if (seamlessRotator != null) {
            oldRotation = seamlessRotator.getOldRotation();
        }
        InsetsSourceProvider insetsSourceProvider = this.mControllableInsetProvider;
        if (insetsSourceProvider != null && insetsSourceProvider.getSource().getType() == 17) {
            return;
        }
        if (this.mForceSeamlesslyRotate || requested) {
            InsetsSourceProvider insetsSourceProvider2 = this.mControllableInsetProvider;
            if (insetsSourceProvider2 != null) {
                insetsSourceProvider2.startSeamlessRotation();
            }
            SeamlessRotator seamlessRotator2 = new SeamlessRotator(oldRotation, rotation, getDisplayInfo(), false);
            this.mPendingSeamlessRotate = seamlessRotator2;
            seamlessRotator2.unrotate(transaction, this);
            getDisplayContent().getDisplayRotation().markForSeamlessRotation(this, true);
        }
    }

    void finishSeamlessRotation(boolean timeout) {
        SeamlessRotator seamlessRotator = this.mPendingSeamlessRotate;
        if (seamlessRotator != null) {
            seamlessRotator.finish(this, timeout);
            this.mFinishSeamlessRotateFrameNumber = getFrameNumber();
            this.mPendingSeamlessRotate = null;
            getDisplayContent().getDisplayRotation().markForSeamlessRotation(this, false);
            InsetsSourceProvider insetsSourceProvider = this.mControllableInsetProvider;
            if (insetsSourceProvider != null) {
                insetsSourceProvider.finishSeamlessRotation(timeout);
            }
        }
    }

    List<Rect> getSystemGestureExclusion() {
        return this.mExclusionRects;
    }

    boolean setSystemGestureExclusion(List<Rect> exclusionRects) {
        if (this.mExclusionRects.equals(exclusionRects)) {
            return false;
        }
        this.mExclusionRects.clear();
        this.mExclusionRects.addAll(exclusionRects);
        return true;
    }

    boolean isImplicitlyExcludingAllSystemGestures() {
        ActivityRecord activityRecord;
        boolean immersiveSticky = (this.mSystemUiVisibility & UsbACInterface.FORMAT_II_AC3) == 4098;
        return immersiveSticky && this.mWmService.mConstants.mSystemGestureExcludedByPreQStickyImmersive && (activityRecord = this.mActivityRecord) != null && activityRecord.mTargetSdk < 29;
    }

    void setLastExclusionHeights(int side, int requested, int granted) {
        boolean changed = (this.mLastGrantedExclusionHeight[side] == granted && this.mLastRequestedExclusionHeight[side] == requested) ? false : true;
        if (changed) {
            if (this.mLastShownChangedReported) {
                logExclusionRestrictions(side);
            }
            this.mLastGrantedExclusionHeight[side] = granted;
            this.mLastRequestedExclusionHeight[side] = requested;
        }
    }

    WindowState(final WindowManagerService service, Session s, IWindow c, WindowToken token, WindowState parentWindow, int appOp, int seq, WindowManager.LayoutParams a, int viewVisibility, int ownerId, int showUserId, boolean ownerCanAddInternalSystemWindow) {
        this(service, s, c, token, parentWindow, appOp, seq, a, viewVisibility, ownerId, showUserId, ownerCanAddInternalSystemWindow, new PowerManagerWrapper() { // from class: com.android.server.wm.WindowState.2
            @Override // com.android.server.wm.WindowState.PowerManagerWrapper
            public void wakeUp(long time, int reason, String details) {
                service.mPowerManager.wakeUp(time, reason, details);
            }

            @Override // com.android.server.wm.WindowState.PowerManagerWrapper
            public boolean isInteractive() {
                return service.mPowerManager.isInteractive();
            }
        });
    }

    WindowState(WindowManagerService service, Session s, IWindow c, WindowToken token, WindowState parentWindow, int appOp, int seq, WindowManager.LayoutParams a, int viewVisibility, int ownerId, int showUserId, boolean ownerCanAddInternalSystemWindow, PowerManagerWrapper powerManagerWrapper) {
        WindowProcessController processController;
        super(service);
        this.mAttrs = new WindowManager.LayoutParams();
        this.mPolicyVisibility = 3;
        this.mLegacyPolicyVisibilityAfterAnim = true;
        this.mAppOpVisibility = true;
        this.mHidden = true;
        this.mDragResizingChangeReported = true;
        this.mLayoutSeq = -1;
        this.mEmbeddedDisplayContents = new ArraySet<>();
        this.mLastReportedConfiguration = new MergedConfiguration();
        this.mTempConfiguration = new Configuration();
        this.mLastRelayoutContentInsets = new Rect();
        this.mGivenContentInsets = new Rect();
        this.mGivenVisibleInsets = new Rect();
        this.mGivenTouchableRegion = new Region();
        this.mTouchableInsets = 0;
        this.mGlobalScale = 1.0f;
        this.mInvGlobalScale = 1.0f;
        this.mHScale = 1.0f;
        this.mVScale = 1.0f;
        this.mLastHScale = 1.0f;
        this.mLastVScale = 1.0f;
        this.mTmpMatrix = new Matrix();
        this.mTmpMatrixArray = new float[9];
        this.mWindowFrames = new WindowFrames();
        this.mInsetFrame = new Rect();
        this.mExclusionRects = new ArrayList();
        this.mLastRequestedExclusionHeight = new int[]{0, 0};
        this.mLastGrantedExclusionHeight = new int[]{0, 0};
        this.mLastExclusionLogUptimeMillis = new long[]{0, 0};
        this.mWallpaperX = -1.0f;
        this.mWallpaperY = -1.0f;
        this.mWallpaperZoomOut = -1.0f;
        this.mWallpaperXStep = -1.0f;
        this.mWallpaperYStep = -1.0f;
        this.mWallpaperDisplayOffsetX = Integer.MIN_VALUE;
        this.mWallpaperDisplayOffsetY = Integer.MIN_VALUE;
        this.mLastVisibleLayoutRotation = -1;
        this.mHasSurface = false;
        this.mWillReplaceWindow = false;
        this.mReplacingRemoveRequested = false;
        this.mAnimateReplacingWindow = false;
        this.mReplacementWindow = null;
        this.mSkipEnterAnimationForSeamlessReplacement = false;
        this.mTmpRect = new Rect();
        this.mTmpPoint = new Point();
        this.mLastReportedDisplayOffset = new Point();
        this.mResizedWhileGone = false;
        this.mSeamlesslyRotated = false;
        this.mBehindIme = false;
        this.mLastSurfaceInsets = new Rect();
        this.mSurfacePosition = new Point();
        this.mTapExcludeRegion = new Region();
        this.mFrameNumber = -1L;
        this.mIsDimming = false;
        this.mRequestedInsetsState = new InsetsState();
        this.mFrameRateSelectionPriority = -1;
        this.mLocalSyncId = -1;
        this.mSession = s;
        this.mClient = c;
        this.mAppOp = appOp;
        this.mToken = token;
        this.mActivityRecord = token.asActivityRecord();
        this.mOwnerUid = ownerId;
        this.mShowUserId = showUserId;
        this.mOwnerCanAddInternalSystemWindow = ownerCanAddInternalSystemWindow;
        this.mWindowId = new WindowId();
        this.mAttrs.copyFrom(a);
        this.mLastSurfaceInsets.set(this.mAttrs.surfaceInsets);
        this.mViewVisibility = viewVisibility;
        this.mPolicy = this.mWmService.mPolicy;
        this.mContext = this.mWmService.mContext;
        DeathRecipient deathRecipient = new DeathRecipient();
        this.mSeq = seq;
        this.mPowerManagerWrapper = powerManagerWrapper;
        this.mForceSeamlesslyRotate = token.mRoundedCornerOverlay;
        try {
            c.asBinder().linkToDeath(deathRecipient, 0);
            this.mDeathRecipient = deathRecipient;
            if (this.mAttrs.type < 1000 || this.mAttrs.type > 1999) {
                this.mBaseLayer = (this.mPolicy.getWindowLayerLw(this) * 10000) + 1000;
                this.mSubLayer = 0;
                this.mIsChildWindow = false;
                this.mLayoutAttached = false;
                this.mIsImWindow = this.mAttrs.type == 2011 || this.mAttrs.type == 2012;
                this.mIsWallpaper = this.mAttrs.type == 2013;
            } else {
                this.mBaseLayer = (this.mPolicy.getWindowLayerLw(parentWindow) * 10000) + 1000;
                this.mSubLayer = this.mPolicy.getSubWindowLayerFromTypeLw(a.type);
                this.mIsChildWindow = true;
                this.mLayoutAttached = this.mAttrs.type != 1003;
                this.mIsImWindow = parentWindow.mAttrs.type == 2011 || parentWindow.mAttrs.type == 2012;
                this.mIsWallpaper = parentWindow.mAttrs.type == 2013;
            }
            this.mIsFloatingLayer = this.mIsImWindow || this.mIsWallpaper;
            ActivityRecord activityRecord = this.mActivityRecord;
            if (activityRecord != null && activityRecord.mShowForAllUsers) {
                this.mAttrs.flags |= 524288;
            }
            WindowStateAnimator windowStateAnimator = new WindowStateAnimator(this);
            this.mWinAnimator = windowStateAnimator;
            windowStateAnimator.mAlpha = a.alpha;
            this.mRequestedWidth = 0;
            this.mRequestedHeight = 0;
            this.mLastRequestedWidth = 0;
            this.mLastRequestedHeight = 0;
            this.mLayer = 0;
            ActivityRecord activityRecord2 = this.mActivityRecord;
            InputWindowHandle inputWindowHandle = new InputWindowHandle(activityRecord2 != null ? activityRecord2.getInputApplicationHandle(false) : null, getDisplayId());
            this.mInputWindowHandle = inputWindowHandle;
            inputWindowHandle.trustedOverlay = (this.mAttrs.privateFlags & AudioFormat.APTX) != 0 && this.mOwnerCanAddInternalSystemWindow;
            this.mInputWindowHandle.trustedOverlay |= InputMonitor.isTrustedOverlay(this.mAttrs.type);
            if (this.mIsChildWindow) {
                if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
                    String protoLogParam0 = String.valueOf(this);
                    String protoLogParam1 = String.valueOf(parentWindow);
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, -916108501, 0, null, protoLogParam0, protoLogParam1);
                }
                parentWindow.addChild(this, sWindowSubLayerComparator);
            }
            if (s.mPid == ActivityManagerService.MY_PID || s.mPid < 0) {
                processController = null;
            } else {
                processController = service.mAtmService.getProcessController(s.mPid, s.mUid);
            }
            this.mWpcForDisplayConfigChanges = processController;
        } catch (RemoteException e) {
            this.mDeathRecipient = null;
            this.mIsChildWindow = false;
            this.mLayoutAttached = false;
            this.mIsImWindow = false;
            this.mIsWallpaper = false;
            this.mIsFloatingLayer = false;
            this.mBaseLayer = 0;
            this.mSubLayer = 0;
            this.mInputWindowHandle = null;
            this.mWinAnimator = null;
            this.mWpcForDisplayConfigChanges = null;
        }
    }

    void attach() {
        this.mSession.windowAddedLocked(this.mAttrs.packageName);
    }

    boolean inSizeCompatMode() {
        ActivityRecord activityRecord;
        return ((this.mAttrs.privateFlags & 128) == 0 && ((activityRecord = this.mActivityRecord) == null || !activityRecord.hasSizeCompatBounds() || this.mAttrs.type == 3)) ? false : true;
    }

    boolean getDrawnStateEvaluated() {
        return this.mDrawnStateEvaluated;
    }

    void setDrawnStateEvaluated(boolean evaluated) {
        this.mDrawnStateEvaluated = evaluated;
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    void onParentChanged(ConfigurationContainer newParent, ConfigurationContainer oldParent) {
        super.onParentChanged(newParent, oldParent);
        setDrawnStateEvaluated(false);
        getDisplayContent().reapplyMagnificationSpec();
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public int getOwningUid() {
        return this.mOwnerUid;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public String getOwningPackage() {
        return this.mAttrs.packageName;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean canAddInternalSystemWindow() {
        return this.mOwnerCanAddInternalSystemWindow;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean canAcquireSleepToken() {
        return this.mSession.mCanAcquireSleepToken;
    }

    private void subtractInsets(Rect frame, Rect layoutFrame, Rect insetFrame, Rect displayFrame) {
        int left = Math.max(0, insetFrame.left - Math.max(layoutFrame.left, displayFrame.left));
        int top = Math.max(0, insetFrame.top - Math.max(layoutFrame.top, displayFrame.top));
        int right = Math.max(0, Math.min(layoutFrame.right, displayFrame.right) - insetFrame.right);
        int bottom = Math.max(0, Math.min(layoutFrame.bottom, displayFrame.bottom) - insetFrame.bottom);
        frame.inset(left, top, right, bottom);
    }

    void computeFrame(DisplayFrames displayFrames) {
        getLayoutingWindowFrames().setDisplayCutout(displayFrames.mDisplayCutout);
        computeFrameLw();
        InsetsSourceProvider insetsSourceProvider = this.mControllableInsetProvider;
        if (insetsSourceProvider != null && this.mSimulatedWindowFrames == null) {
            insetsSourceProvider.updateSourceFrame();
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public void computeFrameLw() {
        boolean isInputMethodAdjustTarget;
        Rect layoutContainingFrame;
        int layoutYDiff;
        int layoutXDiff;
        Rect layoutDisplayFrame;
        if (!this.mWillReplaceWindow || (!this.mAnimatingExit && this.mReplacingRemoveRequested)) {
            this.mHaveFrame = true;
            Task task = getTask();
            boolean isFullscreenAndFillsDisplay = !inMultiWindowMode() && matchesDisplayBounds();
            boolean windowsAreFloating = task != null && task.isFloating();
            DisplayContent dc = getDisplayContent();
            DisplayInfo displayInfo = getDisplayInfo();
            WindowFrames windowFrames = getLayoutingWindowFrames();
            this.mInsetFrame.set(getBounds());
            WindowState imeWin = this.mWmService.mRoot.getCurrentInputMethodWindow();
            if (windowsAreFloating) {
                isInputMethodAdjustTarget = dc.mInputMethodTarget != null && task == dc.mInputMethodTarget.getTask();
            } else {
                isInputMethodAdjustTarget = isInputMethodTarget();
            }
            boolean isImeTarget = imeWin != null && imeWin.isVisibleNow() && isInputMethodAdjustTarget;
            if (isFullscreenAndFillsDisplay || layoutInParentFrame()) {
                windowFrames.mContainingFrame.set(windowFrames.mParentFrame);
                layoutDisplayFrame = windowFrames.mDisplayFrame;
                layoutContainingFrame = windowFrames.mParentFrame;
                layoutXDiff = 0;
                layoutYDiff = 0;
            } else {
                windowFrames.mContainingFrame.set(getBounds());
                ActivityRecord activityRecord = this.mActivityRecord;
                if (activityRecord != null && !activityRecord.mFrozenBounds.isEmpty()) {
                    Rect frozen = this.mActivityRecord.mFrozenBounds.peek();
                    windowFrames.mContainingFrame.right = windowFrames.mContainingFrame.left + frozen.width();
                    windowFrames.mContainingFrame.bottom = windowFrames.mContainingFrame.top + frozen.height();
                }
                if (isImeTarget) {
                    if (inFreeformWindowingMode()) {
                        int bottomOverlap = windowFrames.mContainingFrame.bottom - windowFrames.mVisibleFrame.bottom;
                        if (bottomOverlap > 0) {
                            int distanceToTop = Math.max(windowFrames.mContainingFrame.top - windowFrames.mContentFrame.top, 0);
                            int offs = Math.min(bottomOverlap, distanceToTop);
                            windowFrames.mContainingFrame.offset(0, -offs);
                            this.mInsetFrame.offset(0, -offs);
                        }
                    } else if (!inPinnedWindowingMode() && windowFrames.mContainingFrame.bottom > windowFrames.mParentFrame.bottom) {
                        windowFrames.mContainingFrame.bottom = windowFrames.mParentFrame.bottom;
                    }
                }
                if (windowsAreFloating && windowFrames.mContainingFrame.isEmpty()) {
                    windowFrames.mContainingFrame.set(windowFrames.mContentFrame);
                }
                layoutDisplayFrame = new Rect(windowFrames.mDisplayFrame);
                windowFrames.mDisplayFrame.set(windowFrames.mContainingFrame);
                layoutXDiff = this.mInsetFrame.left - windowFrames.mContainingFrame.left;
                layoutYDiff = this.mInsetFrame.top - windowFrames.mContainingFrame.top;
                layoutContainingFrame = this.mInsetFrame;
                this.mTmpRect.set(0, 0, displayInfo.logicalWidth, displayInfo.logicalHeight);
                subtractInsets(windowFrames.mDisplayFrame, layoutContainingFrame, layoutDisplayFrame, this.mTmpRect);
                if (!layoutInParentFrame()) {
                    subtractInsets(windowFrames.mContainingFrame, layoutContainingFrame, windowFrames.mParentFrame, this.mTmpRect);
                    subtractInsets(this.mInsetFrame, layoutContainingFrame, windowFrames.mParentFrame, this.mTmpRect);
                }
                layoutDisplayFrame.intersect(layoutContainingFrame);
            }
            windowFrames.mContainingFrame.width();
            windowFrames.mContainingFrame.height();
            if (this.mRequestedWidth != this.mLastRequestedWidth || this.mRequestedHeight != this.mLastRequestedHeight) {
                this.mLastRequestedWidth = this.mRequestedWidth;
                this.mLastRequestedHeight = this.mRequestedHeight;
                windowFrames.setContentChanged(true);
            }
            int fw = windowFrames.mFrame.width();
            int fh = windowFrames.mFrame.height();
            applyGravityAndUpdateFrame(windowFrames, layoutContainingFrame, layoutDisplayFrame);
            if (windowsAreFloating && !windowFrames.mFrame.isEmpty()) {
                int visBottom = windowFrames.mVisibleFrame.bottom;
                int contentBottom = windowFrames.mContentFrame.bottom;
                windowFrames.mContentFrame.set(windowFrames.mFrame);
                windowFrames.mVisibleFrame.set(windowFrames.mContentFrame);
                windowFrames.mStableFrame.set(windowFrames.mContentFrame);
                if (isImeTarget && inFreeformWindowingMode()) {
                    if (contentBottom + layoutYDiff < windowFrames.mContentFrame.bottom) {
                        windowFrames.mContentFrame.bottom = contentBottom + layoutYDiff;
                    }
                    if (visBottom + layoutYDiff < windowFrames.mVisibleFrame.bottom) {
                        windowFrames.mVisibleFrame.bottom = visBottom + layoutYDiff;
                    }
                }
            } else if (this.mAttrs.type == 2034) {
                windowFrames.mContentFrame.set(windowFrames.mFrame);
                if (!windowFrames.mFrame.equals(windowFrames.mLastFrame)) {
                    this.mMovedByResize = true;
                }
            } else {
                windowFrames.mContentFrame.set(Math.max(windowFrames.mContentFrame.left, windowFrames.mFrame.left), Math.max(windowFrames.mContentFrame.top, windowFrames.mFrame.top), Math.min(windowFrames.mContentFrame.right, windowFrames.mFrame.right), Math.min(windowFrames.mContentFrame.bottom, windowFrames.mFrame.bottom));
                windowFrames.mVisibleFrame.set(Math.max(windowFrames.mVisibleFrame.left, windowFrames.mFrame.left), Math.max(windowFrames.mVisibleFrame.top, windowFrames.mFrame.top), Math.min(windowFrames.mVisibleFrame.right, windowFrames.mFrame.right), Math.min(windowFrames.mVisibleFrame.bottom, windowFrames.mFrame.bottom));
                windowFrames.mStableFrame.set(Math.max(windowFrames.mStableFrame.left, windowFrames.mFrame.left), Math.max(windowFrames.mStableFrame.top, windowFrames.mFrame.top), Math.min(windowFrames.mStableFrame.right, windowFrames.mFrame.right), Math.min(windowFrames.mStableFrame.bottom, windowFrames.mFrame.bottom));
            }
            if (this.mAttrs.type == 2034) {
                WmDisplayCutout c = windowFrames.mDisplayCutout.calculateRelativeTo(windowFrames.mDisplayFrame);
                windowFrames.calculateDockedDividerInsets(c.getDisplayCutout().getSafeInsets());
            } else {
                windowFrames.calculateInsets(windowsAreFloating, isFullscreenAndFillsDisplay, getDisplayFrames(dc.mDisplayFrames).mUnrestricted);
            }
            windowFrames.setDisplayCutout(windowFrames.mDisplayCutout.calculateRelativeTo(windowFrames.mFrame));
            windowFrames.offsetFrames(-layoutXDiff, -layoutYDiff);
            windowFrames.mCompatFrame.set(windowFrames.mFrame);
            if (inSizeCompatMode()) {
                windowFrames.scaleInsets(this.mInvGlobalScale);
                windowFrames.mCompatFrame.scale(this.mInvGlobalScale);
            }
            if (this.mIsWallpaper && (fw != windowFrames.mFrame.width() || fh != windowFrames.mFrame.height())) {
                dc.mWallpaperController.updateWallpaperOffset(this, false);
            }
            windowFrames.mRelFrame.set(windowFrames.mFrame);
            WindowContainer parent = getParent();
            int parentLeft = 0;
            int parentTop = 0;
            if (this.mIsChildWindow) {
                parentLeft = ((WindowState) parent).mWindowFrames.mFrame.left;
                parentTop = ((WindowState) parent).mWindowFrames.mFrame.top;
            } else if (parent != null) {
                Rect parentBounds = parent.getBounds();
                parentLeft = parentBounds.left;
                parentTop = parentBounds.top;
            }
            windowFrames.mRelFrame.offsetTo(windowFrames.mFrame.left - parentLeft, windowFrames.mFrame.top - parentTop);
        }
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public Rect getBounds() {
        ActivityRecord activityRecord = this.mActivityRecord;
        if (activityRecord != null) {
            return activityRecord.getBounds();
        }
        return super.getBounds();
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public Rect getFrameLw() {
        return this.mWindowFrames.mFrame;
    }

    Rect getRelativeFrameLw() {
        return this.mWindowFrames.mRelFrame;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public Rect getDisplayFrameLw() {
        return this.mWindowFrames.mDisplayFrame;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public Rect getContentFrameLw() {
        return this.mWindowFrames.mContentFrame;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public Rect getVisibleFrameLw() {
        return this.mWindowFrames.mVisibleFrame;
    }

    Rect getStableFrameLw() {
        return this.mWindowFrames.mStableFrame;
    }

    Rect getDecorFrame() {
        return this.mWindowFrames.mDecorFrame;
    }

    Rect getParentFrame() {
        return this.mWindowFrames.mParentFrame;
    }

    Rect getContainingFrame() {
        return this.mWindowFrames.mContainingFrame;
    }

    WmDisplayCutout getWmDisplayCutout() {
        return this.mWindowFrames.mDisplayCutout;
    }

    void getCompatFrame(Rect outFrame) {
        outFrame.set(this.mWindowFrames.mCompatFrame);
    }

    void getCompatFrameSize(Rect outFrame) {
        outFrame.set(0, 0, this.mWindowFrames.mCompatFrame.width(), this.mWindowFrames.mCompatFrame.height());
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean getGivenInsetsPendingLw() {
        return this.mGivenInsetsPending;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public Rect getGivenContentInsetsLw() {
        return this.mGivenContentInsets;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public Rect getGivenVisibleInsetsLw() {
        return this.mGivenVisibleInsets;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public WindowManager.LayoutParams getAttrs() {
        return this.mAttrs;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public int getSystemUiVisibility() {
        return this.mSystemUiVisibility;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public int getSurfaceLayer() {
        return this.mLayer;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public int getBaseType() {
        return getTopParentWindow().mAttrs.type;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public IApplicationToken getAppToken() {
        ActivityRecord activityRecord = this.mActivityRecord;
        if (activityRecord != null) {
            return activityRecord.appToken;
        }
        return null;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean isVoiceInteraction() {
        ActivityRecord activityRecord = this.mActivityRecord;
        return activityRecord != null && activityRecord.mVoiceInteraction;
    }

    boolean setReportResizeHints() {
        return this.mWindowFrames.setReportResizeHints();
    }

    void updateResizingWindowIfNeeded() {
        int i;
        WindowStateAnimator winAnimator = this.mWinAnimator;
        if (!this.mHasSurface || getDisplayContent().mLayoutSeq != this.mLayoutSeq || isGoneForLayoutLw()) {
            return;
        }
        boolean didFrameInsetsChange = setReportResizeHints();
        boolean configChanged = !isLastConfigReportedToClient();
        boolean dragResizingChanged = isDragResizeChanged() && !isDragResizingChangeReported();
        updateLastFrames();
        if (didFrameInsetsChange || winAnimator.mSurfaceResized || configChanged || dragResizingChanged || this.mReportOrientationChanged || shouldSendRedrawForSync()) {
            if (ProtoLog$Cache.WM_DEBUG_RESIZE_enabled) {
                String protoLogParam0 = String.valueOf(this);
                String protoLogParam1 = String.valueOf(this.mWindowFrames.getInsetsChangedInfo());
                boolean protoLogParam2 = winAnimator.mSurfaceResized;
                boolean protoLogParam4 = dragResizingChanged;
                boolean protoLogParam5 = this.mReportOrientationChanged;
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_RESIZE, 1160771501, 4080, null, protoLogParam0, protoLogParam1, Boolean.valueOf(protoLogParam2), Boolean.valueOf(configChanged), Boolean.valueOf(protoLogParam4), Boolean.valueOf(protoLogParam5));
            }
            ActivityRecord activityRecord = this.mActivityRecord;
            if (activityRecord != null && this.mAppDied) {
                activityRecord.removeDeadWindows();
                return;
            }
            updateLastInsetValues();
            this.mWmService.makeWindowFreezingScreenIfNeededLocked(this);
            if (getOrientationChanging() || dragResizingChanged) {
                if (getOrientationChanging()) {
                    Slog.v(TAG, "Orientation start waiting for draw, mDrawState=DRAW_PENDING in " + this + ", surfaceController " + winAnimator.mSurfaceController);
                }
                if (dragResizingChanged && ProtoLog$Cache.WM_DEBUG_RESIZE_enabled) {
                    String protoLogParam3 = String.valueOf(this);
                    String protoLogParam6 = String.valueOf(winAnimator.mSurfaceController);
                    i = 1;
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_RESIZE, -1270148832, 0, null, protoLogParam3, protoLogParam6);
                } else {
                    i = 1;
                }
                winAnimator.mDrawState = i;
                ActivityRecord activityRecord2 = this.mActivityRecord;
                if (activityRecord2 != null) {
                    activityRecord2.clearAllDrawn();
                }
            }
            if (!this.mWmService.mResizingWindows.contains(this)) {
                if (ProtoLog$Cache.WM_DEBUG_RESIZE_enabled) {
                    String protoLogParam7 = String.valueOf(this);
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_RESIZE, 685047360, 0, null, protoLogParam7);
                }
                this.mWmService.mResizingWindows.add(this);
                return;
            }
            return;
        }
        if (getOrientationChanging() && isDrawnLw()) {
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                String protoLogParam8 = String.valueOf(this);
                String protoLogParam9 = String.valueOf(winAnimator.mSurfaceController);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1329340614, 0, null, protoLogParam8, protoLogParam9);
            }
            setOrientationChanging(false);
            this.mLastFreezeDuration = (int) (SystemClock.elapsedRealtime() - this.mWmService.mDisplayFreezeTime);
        }
    }

    boolean getOrientationChanging() {
        return ((!this.mOrientationChanging && (!isVisible() || getConfiguration().orientation == getLastReportedConfiguration().orientation)) || this.mSeamlesslyRotated || this.mOrientationChangeTimedOut) ? false : true;
    }

    void setOrientationChanging(boolean changing) {
        this.mOrientationChanging = changing;
        this.mOrientationChangeTimedOut = false;
    }

    void orientationChangeTimedOut() {
        this.mOrientationChangeTimedOut = true;
    }

    @Override // com.android.server.wm.WindowContainer
    DisplayContent getDisplayContent() {
        return this.mToken.getDisplayContent();
    }

    @Override // com.android.server.wm.WindowContainer
    void onDisplayChanged(DisplayContent dc) {
        if (dc != null && this.mDisplayContent != null && dc != this.mDisplayContent && this.mDisplayContent.mInputMethodInputTarget == this) {
            dc.setInputMethodInputTarget(this.mDisplayContent.mInputMethodInputTarget);
            this.mDisplayContent.mInputMethodInputTarget = null;
        }
        super.onDisplayChanged(dc);
        if (dc != null && this.mInputWindowHandle.displayId != dc.getDisplayId()) {
            this.mLayoutSeq = dc.mLayoutSeq - 1;
            this.mInputWindowHandle.displayId = dc.getDisplayId();
        }
    }

    DisplayFrames getDisplayFrames(DisplayFrames originalFrames) {
        DisplayFrames diplayFrames = this.mToken.getFixedRotationTransformDisplayFrames();
        if (diplayFrames != null) {
            return diplayFrames;
        }
        return originalFrames;
    }

    DisplayInfo getDisplayInfo() {
        DisplayInfo displayInfo = this.mToken.getFixedRotationTransformDisplayInfo();
        if (displayInfo != null) {
            return displayInfo;
        }
        return getDisplayContent().getDisplayInfo();
    }

    InsetsState getInsetsState() {
        return getDisplayContent().getInsetsPolicy().getInsetsForDispatch(this);
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public int getDisplayId() {
        DisplayContent displayContent = getDisplayContent();
        if (displayContent == null) {
            return -1;
        }
        return displayContent.getDisplayId();
    }

    Task getTask() {
        ActivityRecord activityRecord = this.mActivityRecord;
        if (activityRecord != null) {
            return activityRecord.getTask();
        }
        return null;
    }

    ActivityStack getRootTask() {
        Task task = getTask();
        if (task != null) {
            return (ActivityStack) task.getRootTask();
        }
        DisplayContent dc = getDisplayContent();
        if (this.mAttrs.type < 2000 || dc == null) {
            return null;
        }
        return dc.getDefaultTaskDisplayArea().getRootHomeTask();
    }

    private void cutRect(Rect rect, Rect toRemove) {
        if (toRemove.isEmpty()) {
            return;
        }
        if (toRemove.top < rect.bottom && toRemove.bottom > rect.top) {
            if (toRemove.right >= rect.right && toRemove.left >= rect.left) {
                rect.right = toRemove.left;
            } else if (toRemove.left <= rect.left && toRemove.right <= rect.right) {
                rect.left = toRemove.right;
            }
        }
        if (toRemove.left < rect.right && toRemove.right > rect.left) {
            if (toRemove.bottom >= rect.bottom && toRemove.top >= rect.top) {
                rect.bottom = toRemove.top;
            } else if (toRemove.top <= rect.top && toRemove.bottom <= rect.bottom) {
                rect.top = toRemove.bottom;
            }
        }
    }

    void getVisibleBounds(Rect bounds) {
        Task task = getTask();
        boolean intersectWithStackBounds = task != null && task.cropWindowsToStackBounds();
        bounds.setEmpty();
        this.mTmpRect.setEmpty();
        if (intersectWithStackBounds) {
            ActivityStack stack = task.getStack();
            if (stack != null) {
                stack.getDimBounds(this.mTmpRect);
            } else {
                intersectWithStackBounds = false;
            }
            if (inSplitScreenPrimaryWindowingMode()) {
                ActivityStack rootSecondary = task.getDisplayArea().getRootSplitScreenSecondaryTask();
                if (rootSecondary.isActivityTypeHome() || rootSecondary.isActivityTypeRecents()) {
                    WindowContainer topTask = rootSecondary.getTopChild();
                    if (topTask.isVisible()) {
                        cutRect(this.mTmpRect, topTask.getBounds());
                    }
                }
            }
        }
        bounds.set(this.mWindowFrames.mVisibleFrame);
        if (intersectWithStackBounds) {
            bounds.intersect(this.mTmpRect);
        }
        if (bounds.isEmpty()) {
            bounds.set(this.mWindowFrames.mFrame);
            if (intersectWithStackBounds) {
                bounds.intersect(this.mTmpRect);
            }
        }
    }

    public long getInputDispatchingTimeoutNanos() {
        ActivityRecord activityRecord = this.mActivityRecord;
        if (activityRecord != null) {
            return activityRecord.mInputDispatchingTimeoutNanos;
        }
        return 5000000000L;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean hasAppShownWindows() {
        ActivityRecord activityRecord = this.mActivityRecord;
        return activityRecord != null && (activityRecord.firstWindowDrawn || this.mActivityRecord.startingDisplayed);
    }

    boolean isIdentityMatrix(float dsdx, float dtdx, float dsdy, float dtdy) {
        return dsdx >= 0.99999f && dsdx <= 1.00001f && dtdy >= 0.99999f && dtdy <= 1.00001f && dtdx >= -1.0E-6f && dtdx <= 1.0E-6f && dsdy >= -1.0E-6f && dsdy <= 1.0E-6f;
    }

    void prelayout() {
        if (inSizeCompatMode()) {
            float sizeCompatScale = this.mToken.getSizeCompatScale();
            this.mGlobalScale = sizeCompatScale;
            this.mInvGlobalScale = 1.0f / sizeCompatScale;
        } else {
            this.mInvGlobalScale = 1.0f;
            this.mGlobalScale = 1.0f;
        }
    }

    @Override // com.android.server.wm.WindowContainer
    boolean hasContentToDisplay() {
        if (!this.mAppFreezing && isDrawnLw()) {
            if (this.mViewVisibility != 0) {
                if (isAnimating(3) && !getDisplayContent().mAppTransition.isTransitionSet()) {
                    return true;
                }
            } else {
                return true;
            }
        }
        return super.hasContentToDisplay();
    }

    @Override // com.android.server.wm.WindowContainer
    boolean isVisible() {
        InsetsSourceProvider insetsSourceProvider;
        return wouldBeVisibleIfPolicyIgnored() && isVisibleByPolicy() && ((insetsSourceProvider = this.mControllableInsetProvider) == null || insetsSourceProvider.isClientVisible());
    }

    boolean isVisibleByPolicy() {
        return (this.mPolicyVisibility & 3) == 3;
    }

    void clearPolicyVisibilityFlag(int policyVisibilityFlag) {
        this.mPolicyVisibility &= ~policyVisibilityFlag;
        this.mWmService.scheduleAnimationLocked();
    }

    void setPolicyVisibilityFlag(int policyVisibilityFlag) {
        this.mPolicyVisibility |= policyVisibilityFlag;
        this.mWmService.scheduleAnimationLocked();
    }

    private boolean isLegacyPolicyVisibility() {
        return (this.mPolicyVisibility & 1) != 0;
    }

    boolean wouldBeVisibleIfPolicyIgnored() {
        return (!this.mHasSurface || isParentWindowHidden() || this.mAnimatingExit || this.mDestroying || (this.mIsWallpaper && !this.mWallpaperVisible)) ? false : true;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean isVisibleLw() {
        return isVisible();
    }

    boolean isWinVisibleLw() {
        ActivityRecord activityRecord = this.mActivityRecord;
        return (activityRecord == null || activityRecord.mVisibleRequested || this.mActivityRecord.isAnimating(3)) && isVisible();
    }

    boolean isVisibleNow() {
        return (this.mToken.isVisible() || this.mAttrs.type == 3) && isVisible();
    }

    boolean isPotentialDragTarget() {
        return (!isVisibleNow() || this.mRemoved || this.mInputChannel == null || this.mInputWindowHandle == null) ? false : true;
    }

    boolean isVisibleOrAdding() {
        ActivityRecord atoken = this.mActivityRecord;
        return (this.mHasSurface || (!this.mRelayoutCalled && this.mViewVisibility == 0)) && isVisibleByPolicy() && !isParentWindowHidden() && !((atoken != null && !atoken.mVisibleRequested) || this.mAnimatingExit || this.mDestroying);
    }

    boolean isOnScreen() {
        if (!this.mHasSurface || this.mDestroying || !isVisibleByPolicy()) {
            return false;
        }
        ActivityRecord atoken = this.mActivityRecord;
        if (atoken != null) {
            return (!isParentWindowHidden() && atoken.mVisibleRequested) || isAnimating(3);
        }
        return !isParentWindowHidden() || isAnimating(3);
    }

    boolean isDreamWindow() {
        ActivityRecord activityRecord = this.mActivityRecord;
        return activityRecord != null && activityRecord.getActivityType() == 5;
    }

    boolean isSecureLocked() {
        if ((this.mAttrs.flags & 8192) != 0) {
            return true;
        }
        return !DevicePolicyCache.getInstance().isScreenCaptureAllowed(this.mShowUserId, this.mOwnerCanAddInternalSystemWindow);
    }

    boolean mightAffectAllDrawn() {
        boolean isAppType = this.mWinAnimator.mAttrType == 1 || this.mWinAnimator.mAttrType == 4;
        return ((!isOnScreen() && !isAppType) || this.mAnimatingExit || this.mDestroying) ? false : true;
    }

    boolean isInteresting() {
        ActivityRecord activityRecord = this.mActivityRecord;
        return (activityRecord == null || this.mAppDied || (activityRecord.isFreezingScreen() && this.mAppFreezing) || this.mViewVisibility != 0) ? false : true;
    }

    boolean isReadyForDisplay() {
        if (this.mToken.waitingToShow && getDisplayContent().mAppTransition.isTransitionSet()) {
            return false;
        }
        boolean parentAndClientVisible = !isParentWindowHidden() && this.mViewVisibility == 0 && this.mToken.isVisible();
        if (this.mHasSurface && isVisibleByPolicy() && !this.mDestroying) {
            return parentAndClientVisible || isAnimating(3);
        }
        return false;
    }

    boolean isFullyTransparent() {
        return this.mAttrs.alpha == 0.0f;
    }

    boolean canAffectSystemUiFlags() {
        if (isFullyTransparent()) {
            return false;
        }
        if (this.mActivityRecord == null) {
            boolean shown = this.mWinAnimator.getShown();
            boolean exiting = this.mAnimatingExit || this.mDestroying;
            return shown && !exiting;
        }
        Task task = getTask();
        boolean canFromTask = task != null && task.canAffectSystemUiFlags();
        return canFromTask && this.mActivityRecord.isVisible();
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean isDisplayedLw() {
        ActivityRecord atoken = this.mActivityRecord;
        return isDrawnLw() && isVisibleByPolicy() && ((!isParentWindowHidden() && (atoken == null || atoken.mVisibleRequested)) || isAnimating(3));
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean isAnimatingLw() {
        return isAnimating(3);
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean isGoneForLayoutLw() {
        ActivityRecord atoken = this.mActivityRecord;
        return this.mViewVisibility == 8 || !this.mRelayoutCalled || (atoken == null && !(wouldBeVisibleIfPolicyIgnored() && isVisibleByPolicy())) || (!(atoken == null || atoken.mVisibleRequested) || isParentWindowGoneForLayout() || ((this.mAnimatingExit && !isAnimatingLw()) || this.mDestroying));
    }

    public boolean isDrawFinishedLw() {
        return this.mHasSurface && !this.mDestroying && (this.mWinAnimator.mDrawState == 2 || this.mWinAnimator.mDrawState == 3 || this.mWinAnimator.mDrawState == 4);
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean isDrawnLw() {
        return this.mHasSurface && !this.mDestroying && (this.mWinAnimator.mDrawState == 3 || this.mWinAnimator.mDrawState == 4);
    }

    private boolean isOpaqueDrawn() {
        return ((!this.mIsWallpaper && this.mAttrs.format == -1) || (this.mIsWallpaper && this.mWallpaperVisible)) && isDrawnLw() && !isAnimating(3);
    }

    void requestDrawIfNeeded(List<WindowState> outWaitingForDrawn) {
        if (!isVisible()) {
            return;
        }
        ActivityRecord activityRecord = this.mActivityRecord;
        if (activityRecord != null) {
            if (activityRecord.allDrawn) {
                return;
            }
            if (this.mAttrs.type == 3) {
                if (isDrawnLw()) {
                    return;
                }
            } else if (this.mActivityRecord.startingWindow != null) {
                return;
            }
        } else if (!this.mPolicy.isKeyguardHostWindow(this.mAttrs)) {
            return;
        }
        this.mWinAnimator.mDrawState = 1;
        resetLastContentInsets();
        outWaitingForDrawn.add(this);
    }

    @Override // com.android.server.wm.WindowContainer
    void onMovedByResize() {
        if (ProtoLog$Cache.WM_DEBUG_RESIZE_enabled) {
            String protoLogParam0 = String.valueOf(this);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RESIZE, 1635462459, 0, null, protoLogParam0);
        }
        this.mMovedByResize = true;
        super.onMovedByResize();
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
    void onAppVisibilityChanged(boolean visible, boolean runningAppAnimation) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            ((WindowState) this.mChildren.get(i)).onAppVisibilityChanged(visible, runningAppAnimation);
        }
        boolean isVisibleNow = isVisibleNow();
        if (this.mAttrs.type == 3) {
            if (!visible && isVisibleNow && this.mActivityRecord.isAnimating(3)) {
                this.mAnimatingExit = true;
                this.mRemoveOnExit = true;
                this.mWindowRemovalAllowed = true;
                return;
            }
            return;
        }
        if (visible != isVisibleNow) {
            if (!runningAppAnimation && isVisibleNow) {
                AccessibilityController accessibilityController = this.mWmService.mAccessibilityController;
                this.mWinAnimator.applyAnimationLocked(2, false);
                if (accessibilityController != null) {
                    accessibilityController.onWindowTransitionLocked(this, 2);
                }
            }
            setDisplayLayoutNeeded();
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
    boolean onSetAppExiting() {
        DisplayContent displayContent = getDisplayContent();
        boolean changed = false;
        if (isVisibleNow()) {
            this.mWinAnimator.applyAnimationLocked(2, false);
            if (this.mWmService.mAccessibilityController != null) {
                this.mWmService.mAccessibilityController.onWindowTransitionLocked(this, 2);
            }
            changed = true;
            if (displayContent != null) {
                displayContent.setLayoutNeeded();
            }
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            changed |= c.onSetAppExiting();
        }
        return changed;
    }

    @Override // com.android.server.wm.WindowContainer
    void onResize() {
        ArrayList<WindowState> resizingWindows = this.mWmService.mResizingWindows;
        if (this.mHasSurface && !isGoneForLayoutLw() && !resizingWindows.contains(this)) {
            if (ProtoLog$Cache.WM_DEBUG_RESIZE_enabled) {
                String protoLogParam0 = String.valueOf(this);
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RESIZE, 417311568, 0, null, protoLogParam0);
            }
            resizingWindows.add(this);
        }
        if (isGoneForLayoutLw()) {
            this.mResizedWhileGone = true;
        }
        super.onResize();
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
    void onUnfreezeBounds() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            c.onUnfreezeBounds();
        }
        if (!this.mHasSurface) {
            return;
        }
        this.mLayoutNeeded = true;
        setDisplayLayoutNeeded();
        if (!this.mWmService.mResizingWindows.contains(this)) {
            this.mWmService.mResizingWindows.add(this);
        }
    }

    void handleWindowMovedIfNeeded() {
        boolean hasMovementAnimation;
        if (!hasMoved()) {
            return;
        }
        int left = this.mWindowFrames.mFrame.left;
        int top = this.mWindowFrames.mFrame.top;
        if (getTask() == null) {
            hasMovementAnimation = getWindowConfiguration().hasMovementAnimations();
        } else {
            hasMovementAnimation = getTask().getWindowConfiguration().hasMovementAnimations();
        }
        if (this.mToken.okToAnimate() && (this.mAttrs.privateFlags & 64) == 0 && !isDragResizing() && hasMovementAnimation && !this.mWinAnimator.mLastHidden && !this.mSeamlesslyRotated) {
            startMoveAnimation(left, top);
        }
        if (this.mWmService.mAccessibilityController != null) {
            this.mWmService.mAccessibilityController.onSomeWindowResizedOrMovedLocked(getDisplayId());
        }
        updateLocationInParentDisplayIfNeeded();
        try {
            this.mClient.moved(left, top);
        } catch (RemoteException e) {
        }
        this.mMovedByResize = false;
    }

    private boolean hasMoved() {
        return this.mHasSurface && !((!this.mWindowFrames.hasContentChanged() && !this.mMovedByResize) || this.mAnimatingExit || ((this.mWindowFrames.mRelFrame.top == this.mWindowFrames.mLastRelFrame.top && this.mWindowFrames.mRelFrame.left == this.mWindowFrames.mLastRelFrame.left) || (this.mIsChildWindow && getParentWindow().hasMoved())));
    }

    boolean isObscuringDisplay() {
        Task task = getTask();
        return (task == null || task.getStack() == null || task.getStack().fillsParent()) && isOpaqueDrawn() && fillsDisplay();
    }

    boolean fillsDisplay() {
        DisplayInfo displayInfo = getDisplayInfo();
        return this.mWindowFrames.mFrame.left <= 0 && this.mWindowFrames.mFrame.top <= 0 && this.mWindowFrames.mFrame.right >= displayInfo.appWidth && this.mWindowFrames.mFrame.bottom >= displayInfo.appHeight;
    }

    private boolean matchesDisplayBounds() {
        Rect displayBounds = this.mToken.getFixedRotationTransformDisplayBounds();
        if (displayBounds != null) {
            return displayBounds.equals(getBounds());
        }
        return getDisplayContent().getBounds().equals(getBounds());
    }

    boolean isLastConfigReportedToClient() {
        return this.mLastConfigReportedToClient;
    }

    @Override // com.android.server.wm.ConfigurationContainer
    void onMergedOverrideConfigurationChanged() {
        super.onMergedOverrideConfigurationChanged();
        this.mLastConfigReportedToClient = false;
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
    void onWindowReplacementTimeout() {
        if (this.mWillReplaceWindow) {
            removeImmediately();
            return;
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            c.onWindowReplacementTimeout();
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void forceWindowsScaleableInTransaction(boolean force) {
        WindowStateAnimator windowStateAnimator = this.mWinAnimator;
        if (windowStateAnimator != null && windowStateAnimator.hasSurface()) {
            this.mWinAnimator.mSurfaceController.forceScaleableInTransaction(force);
        }
        super.forceWindowsScaleableInTransaction(force);
    }

    @Override // com.android.server.wm.WindowContainer
    void removeImmediately() {
        super.removeImmediately();
        if (this.mRemoved) {
            if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
                String protoLogParam0 = String.valueOf(this);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, 2018454757, 0, null, protoLogParam0);
                return;
            }
            return;
        }
        this.mRemoved = true;
        this.mWillReplaceWindow = false;
        WindowState windowState = this.mReplacementWindow;
        if (windowState != null) {
            windowState.mSkipEnterAnimationForSeamlessReplacement = false;
        }
        DisplayContent dc = getDisplayContent();
        if (isInputMethodTarget()) {
            dc.computeImeTarget(true);
        }
        if (dc.mInputMethodInputTarget == this) {
            dc.setInputMethodInputTarget(null);
        }
        int type = this.mAttrs.type;
        if (WindowManagerService.excludeWindowTypeFromTapOutTask(type)) {
            dc.mTapExcludedWindows.remove(this);
        }
        dc.mTapExcludeProvidingWindows.remove(this);
        dc.getDisplayPolicy().removeWindowLw(this);
        disposeInputChannel();
        this.mWinAnimator.destroyDeferredSurfaceLocked();
        this.mWinAnimator.destroySurfaceLocked();
        this.mSession.windowRemovedLocked();
        try {
            this.mClient.asBinder().unlinkToDeath(this.mDeathRecipient, 0);
        } catch (RuntimeException e) {
        }
        this.mWmService.postWindowRemoveCleanupLocked(this);
    }

    @Override // com.android.server.wm.WindowContainer
    void removeIfPossible() {
        super.removeIfPossible();
        removeIfPossible(false);
        immediatelyNotifyBlastSync();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeIfPossible(boolean keepVisibleDeadWindow) {
        int i;
        int i2;
        int i3;
        int i4;
        this.mWindowRemovalAllowed = true;
        if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
            String protoLogParam0 = String.valueOf(this);
            String protoLogParam1 = String.valueOf(Debug.getCallers(5));
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, 1504168072, 0, null, protoLogParam0, protoLogParam1);
        }
        boolean startingWindow = this.mAttrs.type == 3;
        if (startingWindow && ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
            String protoLogParam2 = String.valueOf(this);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, -986746907, 0, null, protoLogParam2);
        }
        if (ProtoLog$Cache.WM_DEBUG_FOCUS_enabled) {
            long protoLogParam3 = System.identityHashCode(this.mClient.asBinder());
            String protoLogParam4 = String.valueOf(this.mWinAnimator.mSurfaceController);
            String protoLogParam5 = String.valueOf(Debug.getCallers(5));
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS, -1047945589, 1, null, Long.valueOf(protoLogParam3), protoLogParam4, protoLogParam5);
        }
        long origId = Binder.clearCallingIdentity();
        try {
            disposeInputChannel();
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                String protoLogParam6 = String.valueOf(this);
                String protoLogParam7 = String.valueOf(this.mWinAnimator.mSurfaceController);
                boolean protoLogParam8 = this.mAnimatingExit;
                boolean protoLogParam9 = this.mRemoveOnExit;
                boolean protoLogParam10 = this.mHasSurface;
                boolean protoLogParam11 = this.mWinAnimator.getShown();
                boolean protoLogParam12 = isAnimating(3);
                boolean protoLogParam13 = this.mActivityRecord != null && this.mActivityRecord.isAnimating(3);
                boolean protoLogParam14 = this.mWillReplaceWindow;
                boolean protoLogParam15 = this.mWmService.mDisplayFrozen;
                String protoLogParam16 = String.valueOf(Debug.getCallers(6));
                i = 2;
                i3 = 4;
                i2 = 5;
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 594260654, 1048560, null, protoLogParam6, protoLogParam7, Boolean.valueOf(protoLogParam8), Boolean.valueOf(protoLogParam9), Boolean.valueOf(protoLogParam10), Boolean.valueOf(protoLogParam11), Boolean.valueOf(protoLogParam12), Boolean.valueOf(protoLogParam13), Boolean.valueOf(protoLogParam14), Boolean.valueOf(protoLogParam15), protoLogParam16);
            } else {
                i = 2;
                i2 = 5;
                i3 = 4;
            }
            boolean wasVisible = false;
            if (!this.mHasSurface || !this.mToken.okToAnimate()) {
                i4 = 0;
            } else {
                if (this.mWillReplaceWindow) {
                    if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
                        String protoLogParam17 = String.valueOf(this);
                        ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, 1921821199, 0, null, protoLogParam17);
                    }
                    this.mAnimatingExit = true;
                    this.mReplacingRemoveRequested = true;
                    return;
                }
                wasVisible = isWinVisibleLw();
                if (keepVisibleDeadWindow) {
                    if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
                        String protoLogParam18 = String.valueOf(this);
                        ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, 2114149926, 0, null, protoLogParam18);
                    }
                    this.mAppDied = true;
                    setDisplayLayoutNeeded();
                    this.mWmService.mWindowPlacerLocked.performSurfacePlacement();
                    openInputChannel(null);
                    getDisplayContent().getInputMonitor().updateInputWindowsLw(true);
                    return;
                }
                if (wasVisible) {
                    int transit = !startingWindow ? i : i2;
                    if (this.mWinAnimator.applyAnimationLocked(transit, false)) {
                        this.mAnimatingExit = true;
                        setDisplayLayoutNeeded();
                        this.mWmService.requestTraversal();
                    }
                    if (this.mWmService.mAccessibilityController != null) {
                        this.mWmService.mAccessibilityController.onWindowTransitionLocked(this, transit);
                    }
                }
                boolean isAnimating = isAnimating(3) && (this.mActivityRecord == null || !this.mActivityRecord.isWaitingForTransitionStart());
                boolean lastWindowIsStartingWindow = startingWindow && this.mActivityRecord != null && this.mActivityRecord.isLastWindow(this);
                if (this.mWinAnimator.getShown() && this.mAnimatingExit) {
                    if (lastWindowIsStartingWindow && !isAnimating) {
                        i4 = 0;
                    }
                    if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
                        String protoLogParam19 = String.valueOf(this);
                        ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, -1103716954, 0, null, protoLogParam19);
                    }
                    setupWindowForRemoveOnExit();
                    if (this.mActivityRecord != null) {
                        this.mActivityRecord.updateReportedVisibilityLocked();
                    }
                    return;
                }
                i4 = 0;
            }
            removeImmediately();
            if (wasVisible) {
                DisplayContent displayContent = getDisplayContent();
                if (displayContent.updateOrientation()) {
                    displayContent.sendNewConfiguration();
                }
            }
            this.mWmService.updateFocusedWindowLocked(isFocused() ? i3 : i4, true);
        } finally {
            Binder.restoreCallingIdentity(origId);
        }
    }

    private void setupWindowForRemoveOnExit() {
        this.mRemoveOnExit = true;
        setDisplayLayoutNeeded();
        boolean focusChanged = this.mWmService.updateFocusedWindowLocked(3, false);
        this.mWmService.mWindowPlacerLocked.performSurfacePlacement();
        if (focusChanged) {
            getDisplayContent().getInputMonitor().updateInputWindowsLw(false);
        }
    }

    void setHasSurface(boolean hasSurface) {
        this.mHasSurface = hasSurface;
    }

    private boolean canWindowInEmbeddedDisplayBeImeTarget() {
        int embeddedDisplayContentsSize = this.mEmbeddedDisplayContents.size();
        for (int i = embeddedDisplayContentsSize - 1; i >= 0; i--) {
            DisplayContent edc = this.mEmbeddedDisplayContents.valueAt(i);
            if (edc.forAllWindows((ToBooleanFunction<WindowState>) new ToBooleanFunction() { // from class: com.android.server.wm.-$$Lambda$vNw1FL8qoJwmKQm6_fCaVoUasrM
                public final boolean apply(Object obj) {
                    return ((WindowState) obj).canBeImeTarget();
                }
            }, true)) {
                return true;
            }
        }
        return false;
    }

    boolean canBeImeTarget() {
        int fl;
        boolean z = true;
        if (canWindowInEmbeddedDisplayBeImeTarget()) {
            return true;
        }
        if (this.mIsImWindow || inPinnedWindowingMode() || this.mAttrs.type == 2036) {
            return false;
        }
        ActivityRecord activityRecord = this.mActivityRecord;
        if (activityRecord != null && !activityRecord.windowsAreFocusable()) {
            z = false;
        }
        boolean windowsAreFocusable = z;
        if (!windowsAreFocusable) {
            return false;
        }
        ActivityStack stack = getRootTask();
        if (stack != null && !stack.isFocusable()) {
            return false;
        }
        if (this.mAttrs.type == 3 || (fl = this.mAttrs.flags & 131080) == 0 || fl == 131080) {
            return isVisibleOrAdding();
        }
        return false;
    }

    private final class DeadWindowEventReceiver extends InputEventReceiver {
        DeadWindowEventReceiver(InputChannel inputChannel) {
            super(inputChannel, WindowState.this.mWmService.mH.getLooper());
        }

        public void onInputEvent(InputEvent event) {
            finishInputEvent(event, true);
        }
    }

    void openInputChannel(InputChannel outInputChannel) {
        if (this.mInputChannel != null) {
            throw new IllegalStateException("Window already has an input channel.");
        }
        String name = getName();
        InputChannel[] inputChannels = InputChannel.openInputChannelPair(name);
        this.mInputChannel = inputChannels[0];
        this.mClientChannel = inputChannels[1];
        this.mWmService.mInputManager.registerInputChannel(this.mInputChannel);
        this.mInputWindowHandle.token = this.mInputChannel.getToken();
        if (outInputChannel != null) {
            this.mClientChannel.transferTo(outInputChannel);
            this.mClientChannel.dispose();
            this.mClientChannel = null;
        } else {
            this.mDeadWindowEventReceiver = new DeadWindowEventReceiver(this.mClientChannel);
        }
        this.mWmService.mInputToWindowMap.put(this.mInputWindowHandle.token, this);
    }

    void disposeInputChannel() {
        DeadWindowEventReceiver deadWindowEventReceiver = this.mDeadWindowEventReceiver;
        if (deadWindowEventReceiver != null) {
            deadWindowEventReceiver.dispose();
            this.mDeadWindowEventReceiver = null;
        }
        if (this.mInputChannel != null) {
            this.mWmService.mInputManager.unregisterInputChannel(this.mInputChannel);
            this.mInputChannel.dispose();
            this.mInputChannel = null;
        }
        InputChannel inputChannel = this.mClientChannel;
        if (inputChannel != null) {
            inputChannel.dispose();
            this.mClientChannel = null;
        }
        this.mWmService.mKeyInterceptionInfoForToken.remove(this.mInputWindowHandle.token);
        this.mWmService.mInputToWindowMap.remove(this.mInputWindowHandle.token);
        this.mInputWindowHandle.token = null;
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
    boolean removeReplacedWindowIfNeeded(WindowState replacement) {
        if (this.mWillReplaceWindow && this.mReplacementWindow == replacement && replacement.hasDrawnLw()) {
            replacement.mSkipEnterAnimationForSeamlessReplacement = false;
            removeReplacedWindow();
            return true;
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            if (c.removeReplacedWindowIfNeeded(replacement)) {
                return true;
            }
        }
        return false;
    }

    private void removeReplacedWindow() {
        if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
            String protoLogParam0 = String.valueOf(this);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, -320419645, 0, null, protoLogParam0);
        }
        this.mWillReplaceWindow = false;
        this.mAnimateReplacingWindow = false;
        this.mReplacingRemoveRequested = false;
        this.mReplacementWindow = null;
        if (this.mAnimatingExit || 0 == 0) {
            removeImmediately();
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
    boolean setReplacementWindowIfNeeded(WindowState replacementCandidate) {
        boolean replacementSet = false;
        if (this.mWillReplaceWindow && this.mReplacementWindow == null && getWindowTag().toString().equals(replacementCandidate.getWindowTag().toString())) {
            this.mReplacementWindow = replacementCandidate;
            replacementCandidate.mSkipEnterAnimationForSeamlessReplacement = !this.mAnimateReplacingWindow;
            replacementSet = true;
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            replacementSet |= c.setReplacementWindowIfNeeded(replacementCandidate);
        }
        return replacementSet;
    }

    void setDisplayLayoutNeeded() {
        DisplayContent dc = getDisplayContent();
        if (dc != null) {
            dc.setLayoutNeeded();
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void switchUser(int userId) {
        super.switchUser(userId);
        if (showToCurrentUser()) {
            setPolicyVisibilityFlag(2);
        } else {
            clearPolicyVisibilityFlag(2);
        }
    }

    int getSurfaceTouchableRegion(InputWindowHandle inputWindowHandle, int flags) {
        boolean modal = (flags & 40) == 0;
        Region region = inputWindowHandle.touchableRegion;
        setTouchableRegionCropIfNeeded(inputWindowHandle);
        if (modal) {
            flags |= 32;
            if (this.mActivityRecord != null) {
                updateRegionForModalActivityWindow(region);
            } else {
                getDisplayContent().getBounds(this.mTmpRect);
                int dw = this.mTmpRect.width();
                int dh = this.mTmpRect.height();
                region.set(-dw, -dh, dw + dw, dh + dh);
            }
            subtractTouchExcludeRegionIfNeeded(region);
        } else {
            getTouchableRegion(region);
        }
        region.translate(-this.mWindowFrames.mFrame.left, -this.mWindowFrames.mFrame.top);
        ActivityRecord activityRecord = this.mActivityRecord;
        if (activityRecord != null && activityRecord.hasSizeCompatBounds() && this.mGlobalScale != 1.0f) {
            region.scale(this.mInvGlobalScale);
        }
        return flags;
    }

    private void adjustRegionInFreefromWindowMode(Rect inOutRect) {
        if (!inFreeformWindowingMode()) {
            return;
        }
        DisplayMetrics displayMetrics = getDisplayContent().getDisplayMetrics();
        int delta = WindowManagerService.dipToPixel(30, displayMetrics);
        inOutRect.inset(-delta, -delta);
    }

    private void updateRegionForModalActivityWindow(Region outRegion) {
        this.mActivityRecord.getLetterboxInnerBounds(this.mTmpRect);
        if (this.mTmpRect.isEmpty()) {
            Task task = getTask();
            if (task != null) {
                task.getDimBounds(this.mTmpRect);
            } else if (getRootTask() != null) {
                getRootTask().getDimBounds(this.mTmpRect);
            }
        }
        adjustRegionInFreefromWindowMode(this.mTmpRect);
        outRegion.set(this.mTmpRect);
        cropRegionToStackBoundsIfNeeded(outRegion);
    }

    void checkPolicyVisibilityChange() {
        boolean zIsLegacyPolicyVisibility = isLegacyPolicyVisibility();
        boolean z = this.mLegacyPolicyVisibilityAfterAnim;
        if (zIsLegacyPolicyVisibility != z) {
            if (z) {
                setPolicyVisibilityFlag(1);
            } else {
                clearPolicyVisibilityFlag(1);
            }
            if (!isVisibleByPolicy()) {
                this.mWinAnimator.hide("checkPolicyVisibilityChange");
                if (isFocused()) {
                    if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
                        ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, 693423992, 0, null, (Object[]) null);
                    }
                    this.mWmService.mFocusMayChange = true;
                }
                setDisplayLayoutNeeded();
                this.mWmService.enableScreenIfNeededLocked();
            }
        }
    }

    void setRequestedSize(int requestedWidth, int requestedHeight) {
        if (this.mRequestedWidth != requestedWidth || this.mRequestedHeight != requestedHeight) {
            this.mLayoutNeeded = true;
            this.mRequestedWidth = requestedWidth;
            this.mRequestedHeight = requestedHeight;
        }
    }

    void prepareWindowToDisplayDuringRelayout(boolean wasVisible) {
        ActivityRecord activityRecord;
        boolean hasTurnScreenOnFlag = (this.mAttrs.flags & 2097152) != 0 || ((activityRecord = this.mActivityRecord) != null && activityRecord.canTurnScreenOn());
        if (hasTurnScreenOnFlag) {
            boolean allowTheaterMode = this.mWmService.mAllowTheaterModeWakeFromLayout || Settings.Global.getInt(this.mWmService.mContext.getContentResolver(), "theater_mode_on", 0) == 0;
            ActivityRecord activityRecord2 = this.mActivityRecord;
            boolean canTurnScreenOn = activityRecord2 == null || activityRecord2.currentLaunchCanTurnScreenOn();
            if (allowTheaterMode && canTurnScreenOn && (this.mWmService.mAtmInternal.isDreaming() || !this.mPowerManagerWrapper.isInteractive())) {
                this.mPowerManagerWrapper.wakeUp(SystemClock.uptimeMillis(), 2, "android.server.wm:SCREEN_ON_FLAG");
            }
            ActivityRecord activityRecord3 = this.mActivityRecord;
            if (activityRecord3 != null) {
                activityRecord3.setCurrentLaunchCanTurnScreenOn(false);
            }
        }
        if (wasVisible) {
            return;
        }
        if ((this.mAttrs.softInputMode & 240) == 16) {
            this.mLayoutNeeded = true;
        }
        if (isDrawnLw() && this.mToken.okToAnimate()) {
            this.mWinAnimator.applyEnterAnimationLocked();
        }
    }

    private Configuration getProcessGlobalConfiguration() {
        WindowState parentWindow = getParentWindow();
        int pid = (parentWindow != null ? parentWindow.mSession : this.mSession).mPid;
        Configuration processConfig = this.mWmService.mAtmService.getGlobalConfigurationForPid(pid);
        return processConfig;
    }

    void getMergedConfiguration(MergedConfiguration outConfiguration) {
        Configuration globalConfig = getProcessGlobalConfiguration();
        Configuration overrideConfig = getMergedOverrideConfiguration();
        outConfiguration.setConfiguration(globalConfig, overrideConfig);
    }

    void setLastReportedMergedConfiguration(MergedConfiguration config) {
        this.mLastReportedConfiguration.setTo(config);
        this.mLastConfigReportedToClient = true;
    }

    void getLastReportedMergedConfiguration(MergedConfiguration config) {
        config.setTo(this.mLastReportedConfiguration);
    }

    private Configuration getLastReportedConfiguration() {
        return this.mLastReportedConfiguration.getMergedConfiguration();
    }

    void adjustStartingWindowFlags() {
        ActivityRecord activityRecord;
        if (this.mAttrs.type == 1 && (activityRecord = this.mActivityRecord) != null && activityRecord.startingWindow != null) {
            WindowManager.LayoutParams sa = this.mActivityRecord.startingWindow.mAttrs;
            sa.flags = (sa.flags & (-4718594)) | (this.mAttrs.flags & 4718593);
        }
    }

    void setWindowScale(int requestedWidth, int requestedHeight) {
        float f;
        boolean scaledWindow = (this.mAttrs.flags & 16384) != 0;
        float f2 = 1.0f;
        if (scaledWindow) {
            if (this.mAttrs.width == requestedWidth) {
                f = 1.0f;
            } else {
                f = this.mAttrs.width / requestedWidth;
            }
            this.mHScale = f;
            if (this.mAttrs.height != requestedHeight) {
                f2 = this.mAttrs.height / requestedHeight;
            }
            this.mVScale = f2;
            return;
        }
        this.mVScale = 1.0f;
        this.mHScale = 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class DeathRecipient implements IBinder.DeathRecipient {
        private DeathRecipient() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            try {
                synchronized (WindowState.this.mWmService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        WindowState win = WindowState.this.mWmService.windowForClientLocked(WindowState.this.mSession, WindowState.this.mClient, false);
                        Slog.i(WindowState.TAG, "WIN DEATH: " + win);
                        if (win != null) {
                            WindowState.this.getDisplayContent();
                            if (win.mActivityRecord != null && win.mActivityRecord.findMainWindow() == win) {
                                WindowState.this.mWmService.mTaskSnapshotController.onAppDied(win.mActivityRecord);
                            }
                            win.removeIfPossible(WindowState.this.shouldKeepVisibleDeadAppWindow());
                        } else if (WindowState.this.mHasSurface) {
                            Slog.e(WindowState.TAG, "!!! LEAK !!! Window removed but surface still valid.");
                            WindowState.this.removeIfPossible();
                        }
                    } catch (Throwable th) {
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
                if (0 != 0) {
                    try {
                        WindowState.this.mWmService.mActivityTaskManager.setSplitScreenResizing(false);
                    } catch (RemoteException e) {
                        throw e.rethrowAsRuntimeException();
                    }
                }
            } catch (IllegalArgumentException e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldKeepVisibleDeadAppWindow() {
        ActivityRecord activityRecord;
        if (isWinVisibleLw() && (activityRecord = this.mActivityRecord) != null && activityRecord.isClientVisible() && this.mAttrs.token == this.mClient.asBinder() && this.mAttrs.type != 3) {
            return getWindowConfiguration().keepVisibleDeadAppWindowOnScreen();
        }
        return false;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean canReceiveKeys() {
        return canReceiveKeys(false);
    }

    public boolean canReceiveKeys(boolean fromUserTouch) {
        ActivityRecord activityRecord;
        boolean canReceiveKeys = isVisibleOrAdding() && this.mViewVisibility == 0 && !this.mRemoveOnExit && (this.mAttrs.flags & 8) == 0 && ((activityRecord = this.mActivityRecord) == null || activityRecord.windowsAreFocusable(fromUserTouch)) && !cantReceiveTouchInput();
        if (canReceiveKeys) {
            return fromUserTouch || getDisplayContent().isOnTop() || getDisplayContent().isTrusted();
        }
        return false;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean canShowWhenLocked() {
        ActivityRecord activityRecord = this.mActivityRecord;
        boolean showBecauseOfActivity = activityRecord != null && activityRecord.canShowWhenLocked();
        boolean showBecauseOfWindow = (getAttrs().flags & 524288) != 0;
        return showBecauseOfActivity || showBecauseOfWindow;
    }

    boolean cantReceiveTouchInput() {
        ActivityRecord activityRecord = this.mActivityRecord;
        if (activityRecord == null || activityRecord.getTask() == null) {
            return false;
        }
        return this.mActivityRecord.getTask().getStack().shouldIgnoreInput() || !this.mActivityRecord.mVisibleRequested || isRecentsAnimationConsumingAppInput();
    }

    private boolean isRecentsAnimationConsumingAppInput() {
        RecentsAnimationController recentsAnimationController = this.mWmService.getRecentsAnimationController();
        return recentsAnimationController != null && recentsAnimationController.shouldApplyInputConsumer(this.mActivityRecord);
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean hasDrawnLw() {
        return this.mWinAnimator.mDrawState == 4;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean showLw(boolean doAnimation) {
        return showLw(doAnimation, true);
    }

    boolean showLw(boolean doAnimation, boolean requestAnim) {
        if ((isLegacyPolicyVisibility() && this.mLegacyPolicyVisibilityAfterAnim) || !showToCurrentUser() || !this.mAppOpVisibility || this.mPermanentlyHidden || this.mHiddenWhileSuspended || this.mForceHideNonSystemOverlayWindow) {
            return false;
        }
        if (doAnimation) {
            if (!this.mToken.okToAnimate()) {
                doAnimation = false;
            } else if (isLegacyPolicyVisibility() && !isAnimating(3)) {
                doAnimation = false;
            }
        }
        setPolicyVisibilityFlag(1);
        this.mLegacyPolicyVisibilityAfterAnim = true;
        if (doAnimation) {
            this.mWinAnimator.applyAnimationLocked(1, true);
        }
        if (requestAnim) {
            this.mWmService.scheduleAnimationLocked();
        }
        if ((this.mAttrs.flags & 8) == 0) {
            this.mWmService.updateFocusedWindowLocked(0, false);
        }
        return true;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean hideLw(boolean doAnimation) {
        return hideLw(doAnimation, true);
    }

    boolean hideLw(boolean doAnimation, boolean requestAnim) {
        if (doAnimation && !this.mToken.okToAnimate()) {
            doAnimation = false;
        }
        boolean current = doAnimation ? this.mLegacyPolicyVisibilityAfterAnim : isLegacyPolicyVisibility();
        if (!current) {
            return false;
        }
        if (doAnimation) {
            this.mWinAnimator.applyAnimationLocked(2, false);
            if (!isAnimating(3)) {
                doAnimation = false;
            }
        }
        this.mLegacyPolicyVisibilityAfterAnim = false;
        boolean isFocused = isFocused();
        if (!doAnimation) {
            clearPolicyVisibilityFlag(1);
            this.mWmService.enableScreenIfNeededLocked();
            if (isFocused) {
                if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
                    ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, 1288731814, 0, null, (Object[]) null);
                }
                this.mWmService.mFocusMayChange = true;
            }
        }
        if (requestAnim) {
            this.mWmService.scheduleAnimationLocked();
        }
        if (isFocused) {
            this.mWmService.updateFocusedWindowLocked(0, false);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setForceHideNonSystemOverlayWindowIfNeeded(boolean forceHide) {
        if (!this.mOwnerCanAddInternalSystemWindow) {
            if ((!WindowManager.LayoutParams.isSystemAlertWindowType(this.mAttrs.type) && this.mAttrs.type != 2005) || this.mForceHideNonSystemOverlayWindow == forceHide) {
                return;
            }
            this.mForceHideNonSystemOverlayWindow = forceHide;
            if (forceHide) {
                hideLw(true, true);
            } else {
                showLw(true, true);
            }
        }
    }

    void setHiddenWhileSuspended(boolean hide) {
        if (!this.mOwnerCanAddInternalSystemWindow) {
            if ((!WindowManager.LayoutParams.isSystemAlertWindowType(this.mAttrs.type) && this.mAttrs.type != 2005) || this.mHiddenWhileSuspended == hide) {
                return;
            }
            this.mHiddenWhileSuspended = hide;
            if (hide) {
                hideLw(true, true);
            } else {
                showLw(true, true);
            }
        }
    }

    private void setAppOpVisibilityLw(boolean state) {
        if (this.mAppOpVisibility != state) {
            this.mAppOpVisibility = state;
            if (state) {
                showLw(true, true);
            } else {
                hideLw(true, true);
            }
        }
    }

    void initAppOpsState() {
        int mode;
        if (this.mAppOp != -1 && this.mAppOpVisibility && (mode = this.mWmService.mAppOps.startOpNoThrow(this.mAppOp, getOwningUid(), getOwningPackage(), true, null, "init-default-visibility")) != 0 && mode != 3) {
            setAppOpVisibilityLw(false);
        }
    }

    void resetAppOpsState() {
        if (this.mAppOp != -1 && this.mAppOpVisibility) {
            this.mWmService.mAppOps.finishOp(this.mAppOp, getOwningUid(), getOwningPackage(), (String) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateAppOpsState() {
        if (this.mAppOp == -1) {
            return;
        }
        int uid = getOwningUid();
        String packageName = getOwningPackage();
        if (this.mAppOpVisibility) {
            int mode = this.mWmService.mAppOps.checkOpNoThrow(this.mAppOp, uid, packageName);
            if (mode != 0 && mode != 3) {
                this.mWmService.mAppOps.finishOp(this.mAppOp, uid, packageName, (String) null);
                setAppOpVisibilityLw(false);
                return;
            }
            return;
        }
        int mode2 = this.mWmService.mAppOps.startOpNoThrow(this.mAppOp, uid, packageName, true, null, "attempt-to-be-visible");
        if (mode2 == 0 || mode2 == 3) {
            setAppOpVisibilityLw(true);
        }
    }

    public void hidePermanentlyLw() {
        if (!this.mPermanentlyHidden) {
            this.mPermanentlyHidden = true;
            hideLw(true, true);
        }
    }

    public void pokeDrawLockLw(long timeout) {
        if (isVisibleOrAdding()) {
            if (this.mDrawLock == null) {
                CharSequence tag = getWindowTag();
                PowerManager.WakeLock wakeLockNewWakeLock = this.mWmService.mPowerManager.newWakeLock(128, "Window:" + ((Object) tag));
                this.mDrawLock = wakeLockNewWakeLock;
                wakeLockNewWakeLock.setReferenceCounted(false);
                this.mDrawLock.setWorkSource(new WorkSource(this.mOwnerUid, this.mAttrs.packageName));
            }
            this.mDrawLock.acquire(timeout);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean isAlive() {
        return this.mClient.asBinder().isBinderAlive();
    }

    boolean isClosing() {
        ActivityRecord activityRecord;
        return this.mAnimatingExit || ((activityRecord = this.mActivityRecord) != null && activityRecord.isClosingOrEnteringPip());
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
    void addWinAnimatorToList(ArrayList<WindowStateAnimator> animators) {
        animators.add(this.mWinAnimator);
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            c.addWinAnimatorToList(animators);
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
    @Override // com.android.server.wm.WindowContainer
    void sendAppVisibilityToClients() {
        super.sendAppVisibilityToClients();
        boolean clientVisible = this.mActivityRecord.isClientVisible();
        if (this.mAttrs.type == 3 && !clientVisible) {
            return;
        }
        if (!clientVisible) {
            for (int i = this.mChildren.size() - 1; i >= 0; i--) {
                WindowState c = (WindowState) this.mChildren.get(i);
                c.mWinAnimator.detachChildren();
            }
            this.mWinAnimator.detachChildren();
        }
        try {
            this.mClient.dispatchAppVisibility(clientVisible);
        } catch (RemoteException e) {
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
    void onStartFreezingScreen() {
        this.mAppFreezing = true;
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            c.onStartFreezingScreen();
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
    boolean onStopFreezingScreen() {
        boolean unfrozeWindows = false;
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            unfrozeWindows |= c.onStopFreezingScreen();
        }
        if (!this.mAppFreezing) {
            return unfrozeWindows;
        }
        this.mAppFreezing = false;
        if (this.mHasSurface && !getOrientationChanging() && this.mWmService.mWindowsFreezingScreen != 2) {
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                String protoLogParam0 = String.valueOf(this);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -1747461042, 0, null, protoLogParam0);
            }
            setOrientationChanging(true);
            this.mWmService.mRoot.mOrientationChangeComplete = false;
        }
        this.mLastFreezeDuration = 0;
        setDisplayLayoutNeeded();
        return true;
    }

    boolean destroySurface(boolean cleanupOnResume, boolean appStopped) {
        boolean destroyedSomething = false;
        ArrayList<WindowState> childWindows = new ArrayList<>(this.mChildren);
        for (int i = childWindows.size() - 1; i >= 0; i--) {
            WindowState c = childWindows.get(i);
            destroyedSomething |= c.destroySurface(cleanupOnResume, appStopped);
        }
        if (!appStopped && !this.mWindowRemovalAllowed && !cleanupOnResume) {
            return destroyedSomething;
        }
        if (appStopped || this.mWindowRemovalAllowed) {
            this.mWinAnimator.destroyPreservedSurfaceLocked();
        }
        if (this.mDestroying) {
            if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
                String protoLogParam0 = String.valueOf(this);
                boolean protoLogParam2 = this.mWindowRemovalAllowed;
                boolean protoLogParam3 = this.mRemoveOnExit;
                ProtoLogImpl.e(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, 1577579529, AudioChannelMask.IN_6, null, protoLogParam0, Boolean.valueOf(appStopped), Boolean.valueOf(protoLogParam2), Boolean.valueOf(protoLogParam3));
            }
            if (!cleanupOnResume || this.mRemoveOnExit) {
                destroySurfaceUnchecked();
            }
            if (this.mRemoveOnExit) {
                removeImmediately();
            }
            if (cleanupOnResume) {
                requestUpdateWallpaperIfNeeded();
            }
            this.mDestroying = false;
            destroyedSomething = true;
            if (getDisplayContent().mAppTransition.isTransitionSet() && getDisplayContent().mOpeningApps.contains(this.mActivityRecord)) {
                this.mWmService.mWindowPlacerLocked.requestTraversal();
            }
        }
        return destroyedSomething;
    }

    void destroySurfaceUnchecked() {
        this.mWinAnimator.destroySurfaceLocked();
        this.mAnimatingExit = false;
    }

    void onSurfaceShownChanged(boolean shown) {
        if (this.mLastShownChangedReported == shown) {
            return;
        }
        this.mLastShownChangedReported = shown;
        if (shown) {
            initExclusionRestrictions();
        } else {
            logExclusionRestrictions(0);
            logExclusionRestrictions(1);
        }
    }

    private void logExclusionRestrictions(int side) {
        if (!DisplayContent.logsGestureExclusionRestrictions(this) || SystemClock.uptimeMillis() < this.mLastExclusionLogUptimeMillis[side] + this.mWmService.mConstants.mSystemGestureExclusionLogDebounceTimeoutMillis) {
            return;
        }
        long now = SystemClock.uptimeMillis();
        long[] jArr = this.mLastExclusionLogUptimeMillis;
        long duration = now - jArr[side];
        jArr[side] = now;
        int requested = this.mLastRequestedExclusionHeight[side];
        int granted = this.mLastGrantedExclusionHeight[side];
        FrameworkStatsLog.write(223, this.mAttrs.packageName, requested, requested - granted, side + 1, getConfiguration().orientation == 2, WindowConfiguration.isSplitScreenWindowingMode(getWindowingMode()), (int) duration);
    }

    private void initExclusionRestrictions() {
        long now = SystemClock.uptimeMillis();
        long[] jArr = this.mLastExclusionLogUptimeMillis;
        jArr[0] = now;
        jArr[1] = now;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean isDefaultDisplay() {
        DisplayContent displayContent = getDisplayContent();
        if (displayContent == null) {
            return false;
        }
        return displayContent.isDefaultDisplay;
    }

    boolean showForAllUsers() {
        int i = this.mAttrs.type;
        if (i != 3 && i != 2024 && i != 2030 && i != 2034 && i != 2037 && i != 2026 && i != 2027 && i != 2040 && i != 2041) {
            switch (i) {
                case 2000:
                case 2001:
                case 2002:
                    break;
                default:
                    switch (i) {
                        case 2007:
                        case 2008:
                        case 2009:
                            break;
                        default:
                            switch (i) {
                                case 2017:
                                case 2018:
                                case 2019:
                                case NotificationShellCmd.NOTIFICATION_ID /* 2020 */:
                                case 2021:
                                case 2022:
                                    break;
                                default:
                                    if ((this.mAttrs.privateFlags & 16) == 0) {
                                        return false;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        return this.mOwnerCanAddInternalSystemWindow;
    }

    @Override // com.android.server.wm.WindowContainer
    boolean showToCurrentUser() {
        ActivityRecord activityRecord;
        WindowState win = getTopParentWindow();
        return (win.mAttrs.type < 2000 && (activityRecord = win.mActivityRecord) != null && activityRecord.mShowForAllUsers && win.getFrameLw().left <= win.getDisplayFrameLw().left && win.getFrameLw().top <= win.getDisplayFrameLw().top && win.getFrameLw().right >= win.getStableFrameLw().right && win.getFrameLw().bottom >= win.getStableFrameLw().bottom) || win.showForAllUsers() || this.mWmService.isCurrentProfile(win.mShowUserId);
    }

    private static void applyInsets(Region outRegion, Rect frame, Rect inset) {
        outRegion.set(frame.left + inset.left, frame.top + inset.top, frame.right - inset.right, frame.bottom - inset.bottom);
    }

    void getTouchableRegion(Region outRegion) {
        Rect frame = this.mWindowFrames.mFrame;
        int i = this.mTouchableInsets;
        if (i == 1) {
            applyInsets(outRegion, frame, this.mGivenContentInsets);
        } else if (i == 2) {
            applyInsets(outRegion, frame, this.mGivenVisibleInsets);
        } else if (i != 3) {
            outRegion.set(frame);
        } else {
            outRegion.set(this.mGivenTouchableRegion);
            outRegion.translate(frame.left, frame.top);
        }
        cropRegionToStackBoundsIfNeeded(outRegion);
        subtractTouchExcludeRegionIfNeeded(outRegion);
    }

    void getEffectiveTouchableRegion(Region outRegion) {
        boolean modal = (this.mAttrs.flags & 40) == 0;
        DisplayContent dc = getDisplayContent();
        if (modal && dc != null) {
            outRegion.set(dc.getBounds());
            cropRegionToStackBoundsIfNeeded(outRegion);
            subtractTouchExcludeRegionIfNeeded(outRegion);
            return;
        }
        getTouchableRegion(outRegion);
    }

    private void setTouchableRegionCropIfNeeded(InputWindowHandle handle) {
        Task task = getTask();
        if (task == null || !task.cropWindowsToStackBounds()) {
            handle.setTouchableRegionCrop((SurfaceControl) null);
            return;
        }
        ActivityStack stack = task.getStack();
        if (stack == null || inFreeformWindowingMode()) {
            handle.setTouchableRegionCrop((SurfaceControl) null);
        } else {
            handle.setTouchableRegionCrop(stack.getSurfaceControl());
        }
    }

    private void cropRegionToStackBoundsIfNeeded(Region region) {
        ActivityStack stack;
        Task task = getTask();
        if (task == null || !task.cropWindowsToStackBounds() || (stack = task.getStack()) == null || stack.mCreatedByOrganizer) {
            return;
        }
        stack.getDimBounds(this.mTmpRect);
        adjustRegionInFreefromWindowMode(this.mTmpRect);
        region.op(this.mTmpRect, Region.Op.INTERSECT);
    }

    private void subtractTouchExcludeRegionIfNeeded(Region touchableRegion) {
        if (this.mTapExcludeRegion.isEmpty()) {
            return;
        }
        Region touchExcludeRegion = Region.obtain();
        getTapExcludeRegion(touchExcludeRegion);
        if (!touchExcludeRegion.isEmpty()) {
            touchableRegion.op(touchExcludeRegion, Region.Op.DIFFERENCE);
        }
        touchExcludeRegion.recycle();
    }

    void reportFocusChangedSerialized(boolean focused) {
        RemoteCallbackList<IWindowFocusObserver> remoteCallbackList = this.mFocusCallbacks;
        if (remoteCallbackList != null) {
            int N = remoteCallbackList.beginBroadcast();
            for (int i = 0; i < N; i++) {
                IWindowFocusObserver obs = this.mFocusCallbacks.getBroadcastItem(i);
                if (focused) {
                    try {
                        obs.focusGained(this.mWindowId.asBinder());
                    } catch (RemoteException e) {
                    }
                } else {
                    obs.focusLost(this.mWindowId.asBinder());
                }
            }
            this.mFocusCallbacks.finishBroadcast();
        }
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public Configuration getConfiguration() {
        ActivityRecord activityRecord = this.mActivityRecord;
        if (activityRecord != null && activityRecord.mFrozenMergedConfig.size() > 0) {
            return this.mActivityRecord.mFrozenMergedConfig.peek();
        }
        if (!registeredForDisplayConfigChanges()) {
            return super.getConfiguration();
        }
        this.mTempConfiguration.setTo(getProcessGlobalConfiguration());
        this.mTempConfiguration.updateFrom(getMergedOverrideConfiguration());
        return this.mTempConfiguration;
    }

    private boolean registeredForDisplayConfigChanges() {
        WindowProcessController wpc;
        WindowState parentWindow = getParentWindow();
        if (parentWindow != null) {
            wpc = parentWindow.mWpcForDisplayConfigChanges;
        } else {
            wpc = this.mWpcForDisplayConfigChanges;
        }
        return wpc != null && wpc.registeredForDisplayConfigChanges();
    }

    void reportResized() {
        if (Trace.isTagEnabled(32L)) {
            Trace.traceBegin(32L, "wm.reportResized_" + ((Object) getWindowTag()));
        }
        if (ProtoLog$Cache.WM_DEBUG_RESIZE_enabled) {
            String protoLogParam0 = String.valueOf(this);
            String protoLogParam1 = String.valueOf(this.mWindowFrames.mCompatFrame);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_RESIZE, -1824578273, 0, null, protoLogParam0, protoLogParam1);
        }
        if (this.mWinAnimator.mDrawState == 1 && ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            String protoLogParam2 = String.valueOf(this);
            ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_ORIENTATION, -1130868271, 0, null, protoLogParam2);
        }
        getMergedConfiguration(this.mLastReportedConfiguration);
        this.mLastConfigReportedToClient = true;
        boolean reportOrientation = this.mReportOrientationChanged;
        this.mReportOrientationChanged = false;
        this.mDragResizingChangeReported = true;
        this.mWinAnimator.mSurfaceResized = false;
        this.mWindowFrames.resetInsetsChanged();
        Rect frame = this.mWindowFrames.mCompatFrame;
        Rect contentInsets = this.mWindowFrames.mLastContentInsets;
        Rect visibleInsets = this.mWindowFrames.mLastVisibleInsets;
        Rect stableInsets = this.mWindowFrames.mLastStableInsets;
        MergedConfiguration mergedConfiguration = this.mLastReportedConfiguration;
        boolean reportDraw = this.mWinAnimator.mDrawState == 1 || useBLASTSync() || !this.mRedrawForSyncReported;
        boolean forceRelayout = reportOrientation || isDragResizeChanged() || !this.mRedrawForSyncReported;
        int displayId = getDisplayId();
        DisplayCutout displayCutout = getWmDisplayCutout().getDisplayCutout();
        this.mRedrawForSyncReported = true;
        try {
            try {
                this.mClient.resized(frame, contentInsets, visibleInsets, stableInsets, reportDraw, mergedConfiguration, getBackdropFrame(frame), forceRelayout, getDisplayContent().getDisplayPolicy().areSystemBarsForcedShownLw(this), displayId, new DisplayCutout.ParcelableWrapper(displayCutout));
                if (this.mWmService.mAccessibilityController != null) {
                    this.mWmService.mAccessibilityController.onSomeWindowResizedOrMovedLocked(displayId);
                }
                updateLocationInParentDisplayIfNeeded();
            } catch (RemoteException e) {
                e = e;
                setOrientationChanging(false);
                this.mLastFreezeDuration = (int) (SystemClock.elapsedRealtime() - this.mWmService.mDisplayFreezeTime);
                Slog.w(TAG, "Failed to report 'resized' to " + this + " due to " + e);
            }
        } catch (RemoteException e2) {
            e = e2;
        }
        Trace.traceEnd(32L);
    }

    boolean isClientLocal() {
        return this.mClient instanceof IWindow.Stub;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateLocationInParentDisplayIfNeeded() {
        int embeddedDisplayContentsSize = this.mEmbeddedDisplayContents.size();
        if (embeddedDisplayContentsSize != 0) {
            for (int i = embeddedDisplayContentsSize - 1; i >= 0; i--) {
                DisplayContent edc = this.mEmbeddedDisplayContents.valueAt(i);
                edc.notifyLocationInParentDisplayChanged();
            }
        }
        DisplayContent dc = getDisplayContent();
        if (dc.getParentWindow() == null) {
            return;
        }
        Point offset = dc.getLocationInParentDisplay();
        if (this.mLastReportedDisplayOffset.equals(offset)) {
            return;
        }
        this.mLastReportedDisplayOffset.set(offset.x, offset.y);
        try {
            this.mClient.locationInParentDisplayChanged(this.mLastReportedDisplayOffset);
        } catch (RemoteException e) {
            Slog.e(TAG, "Failed to update offset from DisplayContent", e);
        }
    }

    void notifyInsetsChanged() {
        if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
            String protoLogParam0 = String.valueOf(this);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_IME, 1533154777, 0, null, protoLogParam0);
        }
        try {
            this.mClient.insetsChanged(getInsetsState());
        } catch (RemoteException e) {
            Slog.w(TAG, "Failed to deliver inset state change w=" + this, e);
        }
    }

    @Override // com.android.server.wm.InsetsControlTarget
    public void notifyInsetsControlChanged() {
        if (ProtoLog$Cache.WM_DEBUG_IME_enabled) {
            String protoLogParam0 = String.valueOf(this);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_IME, -1312861660, 0, null, protoLogParam0);
        }
        if (this.mAppDied || this.mRemoved) {
            return;
        }
        InsetsStateController stateController = getDisplayContent().getInsetsStateController();
        try {
            this.mClient.insetsControlChanged(getInsetsState(), stateController.getControlsForDispatch(this));
        } catch (RemoteException e) {
            Slog.w(TAG, "Failed to deliver inset state change to w=" + this, e);
        }
    }

    @Override // com.android.server.wm.InsetsControlTarget
    public WindowState getWindow() {
        return this;
    }

    @Override // com.android.server.wm.InsetsControlTarget
    public void showInsets(int types, boolean fromIme) {
        try {
            this.mClient.showInsets(types, fromIme);
        } catch (RemoteException e) {
            Slog.w(TAG, "Failed to deliver showInsets", e);
        }
    }

    @Override // com.android.server.wm.InsetsControlTarget
    public void hideInsets(int types, boolean fromIme) {
        try {
            this.mClient.hideInsets(types, fromIme);
        } catch (RemoteException e) {
            Slog.w(TAG, "Failed to deliver showInsets", e);
        }
    }

    @Override // com.android.server.wm.InsetsControlTarget
    public boolean canShowTransient() {
        return (this.mAttrs.insetsFlags.behavior & 2) != 0;
    }

    Rect getBackdropFrame(Rect frame) {
        boolean resizing = isDragResizing() || isDragResizeChanged();
        if (getWindowConfiguration().useWindowFrameForBackdrop() || !resizing) {
            this.mTmpRect.set(frame);
            this.mTmpRect.offsetTo(0, 0);
            return this.mTmpRect;
        }
        DisplayInfo displayInfo = getDisplayInfo();
        this.mTmpRect.set(0, 0, displayInfo.logicalWidth, displayInfo.logicalHeight);
        return this.mTmpRect;
    }

    private int getRootTaskId() {
        ActivityStack stack = getRootTask();
        if (stack == null) {
            return -1;
        }
        return stack.mTaskId;
    }

    public void registerFocusObserver(IWindowFocusObserver observer) {
        synchronized (this.mWmService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (this.mFocusCallbacks == null) {
                    this.mFocusCallbacks = new RemoteCallbackList<>();
                }
                this.mFocusCallbacks.register(observer);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void unregisterFocusObserver(IWindowFocusObserver observer) {
        synchronized (this.mWmService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (this.mFocusCallbacks != null) {
                    this.mFocusCallbacks.unregister(observer);
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    boolean isFocused() {
        return getDisplayContent().mCurrentFocus == this;
    }

    private boolean inAppWindowThatMatchesParentBounds() {
        ActivityRecord activityRecord = this.mActivityRecord;
        return activityRecord == null || (activityRecord.matchParentBounds() && !inMultiWindowMode());
    }

    boolean isLetterboxedAppWindow() {
        return !(inMultiWindowMode() || matchesDisplayBounds()) || isLetterboxedForDisplayCutoutLw();
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean isLetterboxedForDisplayCutoutLw() {
        if (this.mActivityRecord != null && this.mWindowFrames.parentFrameWasClippedByDisplayCutout() && this.mAttrs.layoutInDisplayCutoutMode != 3 && this.mAttrs.isFullscreen()) {
            return !frameCoversEntireAppTokenBounds();
        }
        return false;
    }

    private boolean frameCoversEntireAppTokenBounds() {
        this.mTmpRect.set(this.mActivityRecord.getBounds());
        this.mTmpRect.intersectUnchecked(this.mWindowFrames.mFrame);
        return this.mActivityRecord.getBounds().equals(this.mTmpRect);
    }

    boolean letterboxNotIntersectsOrFullyContains(Rect rect) {
        ActivityRecord activityRecord = this.mActivityRecord;
        return activityRecord == null || activityRecord.letterboxNotIntersectsOrFullyContains(rect);
    }

    public boolean isLetterboxedOverlappingWith(Rect rect) {
        ActivityRecord activityRecord = this.mActivityRecord;
        return activityRecord != null && activityRecord.isLetterboxOverlappingWith(rect);
    }

    boolean isDragResizeChanged() {
        return this.mDragResizing != computeDragResizing();
    }

    @Override // com.android.server.wm.WindowContainer
    void setWaitingForDrawnIfResizingChanged() {
        if (isDragResizeChanged()) {
            this.mWmService.mRoot.mWaitingForDrawn.add(this);
        }
        super.setWaitingForDrawnIfResizingChanged();
    }

    private boolean isDragResizingChangeReported() {
        return this.mDragResizingChangeReported;
    }

    @Override // com.android.server.wm.WindowContainer
    void resetDragResizingChangeReported() {
        this.mDragResizingChangeReported = false;
        super.resetDragResizingChangeReported();
    }

    int getResizeMode() {
        return this.mResizeMode;
    }

    private boolean computeDragResizing() {
        ActivityRecord activityRecord;
        Task task = getTask();
        if (task == null) {
            return false;
        }
        if ((!inSplitScreenWindowingMode() && !inFreeformWindowingMode()) || task.getActivityType() == 2 || this.mAttrs.width != -1 || this.mAttrs.height != -1) {
            return false;
        }
        if (task.isDragResizing()) {
            return true;
        }
        return ((!getDisplayContent().mDividerControllerLocked.isResizing() && ((activityRecord = this.mActivityRecord) == null || activityRecord.mFrozenBounds.isEmpty())) || task.inFreeformWindowingMode() || isGoneForLayoutLw()) ? false : true;
    }

    void setDragResizing() {
        int i;
        boolean resizing = computeDragResizing();
        if (resizing == this.mDragResizing) {
            return;
        }
        this.mDragResizing = resizing;
        Task task = getTask();
        if (task != null && task.isDragResizing()) {
            this.mResizeMode = task.getDragResizeMode();
            return;
        }
        if (this.mDragResizing && getDisplayContent().mDividerControllerLocked.isResizing()) {
            i = 1;
        } else {
            i = 0;
        }
        this.mResizeMode = i;
    }

    boolean isDragResizing() {
        return this.mDragResizing;
    }

    boolean isDockedResizing() {
        if (this.mDragResizing && getResizeMode() == 1) {
            return true;
        }
        return isChildWindow() && getParentWindow().isDockedResizing();
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public void dumpDebug(ProtoOutputStream proto, long fieldId, int logLevel) {
        boolean isVisible = isVisible();
        if (logLevel == 2 && !isVisible) {
            return;
        }
        long token = proto.start(fieldId);
        super.dumpDebug(proto, 1146756268033L, logLevel);
        writeIdentifierToProto(proto, 1146756268034L);
        proto.write(1120986464259L, getDisplayId());
        proto.write(1120986464260L, getRootTaskId());
        this.mAttrs.dumpDebug(proto, 1146756268037L);
        this.mGivenContentInsets.dumpDebug(proto, 1146756268038L);
        this.mWindowFrames.dumpDebug(proto, 1146756268073L);
        this.mAttrs.surfaceInsets.dumpDebug(proto, 1146756268044L);
        this.mSurfacePosition.dumpDebug(proto, 1146756268048L);
        this.mWinAnimator.dumpDebug(proto, 1146756268045L);
        proto.write(1133871366158L, this.mAnimatingExit);
        proto.write(1120986464274L, this.mRequestedWidth);
        proto.write(1120986464275L, this.mRequestedHeight);
        proto.write(1120986464276L, this.mViewVisibility);
        proto.write(1120986464277L, this.mSystemUiVisibility);
        proto.write(1133871366166L, this.mHasSurface);
        proto.write(1133871366167L, isReadyForDisplay());
        proto.write(1133871366178L, this.mRemoveOnExit);
        proto.write(1133871366179L, this.mDestroying);
        proto.write(1133871366180L, this.mRemoved);
        proto.write(1133871366181L, isOnScreen());
        proto.write(1133871366182L, isVisible);
        proto.write(1133871366183L, this.mPendingSeamlessRotate != null);
        proto.write(1112396529704L, this.mFinishSeamlessRotateFrameNumber);
        proto.write(1133871366186L, this.mForceSeamlesslyRotate);
        proto.end(token);
    }

    @Override // com.android.server.wm.WindowContainer
    long getProtoFieldId() {
        return 1146756268040L;
    }

    @Override // com.android.server.wm.WindowContainer
    public void writeIdentifierToProto(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1120986464257L, System.identityHashCode(this));
        proto.write(1120986464258L, this.mShowUserId);
        CharSequence title = getWindowTag();
        if (title != null) {
            proto.write(1138166333443L, title.toString());
        }
        proto.end(token);
    }

    @Override // com.android.server.wm.WindowContainer
    void dump(PrintWriter pw, String prefix, boolean dumpAll) {
        pw.print(prefix + "mDisplayId=" + getDisplayId());
        if (getRootTask() != null) {
            pw.print(" rootTaskId=" + getRootTaskId());
        }
        pw.println(" mSession=" + this.mSession + " mClient=" + this.mClient.asBinder());
        pw.println(prefix + "mOwnerUid=" + this.mOwnerUid + " showForAllUsers=" + showForAllUsers() + " package=" + this.mAttrs.packageName + " appop=" + AppOpsManager.opToName(this.mAppOp));
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        sb.append("mAttrs=");
        sb.append(this.mAttrs.toString(prefix));
        pw.println(sb.toString());
        pw.println(prefix + "Requested w=" + this.mRequestedWidth + " h=" + this.mRequestedHeight + " mLayoutSeq=" + this.mLayoutSeq);
        if (this.mRequestedWidth != this.mLastRequestedWidth || this.mRequestedHeight != this.mLastRequestedHeight) {
            pw.println(prefix + "LastRequested w=" + this.mLastRequestedWidth + " h=" + this.mLastRequestedHeight);
        }
        if (this.mIsChildWindow || this.mLayoutAttached) {
            pw.println(prefix + "mParentWindow=" + getParentWindow() + " mLayoutAttached=" + this.mLayoutAttached);
        }
        if (this.mIsImWindow || this.mIsWallpaper || this.mIsFloatingLayer) {
            pw.println(prefix + "mIsImWindow=" + this.mIsImWindow + " mIsWallpaper=" + this.mIsWallpaper + " mIsFloatingLayer=" + this.mIsFloatingLayer + " mWallpaperVisible=" + this.mWallpaperVisible);
        }
        if (dumpAll) {
            pw.print(prefix);
            pw.print("mBaseLayer=");
            pw.print(this.mBaseLayer);
            pw.print(" mSubLayer=");
            pw.print(this.mSubLayer);
        }
        if (dumpAll) {
            pw.println(prefix + "mToken=" + this.mToken);
            if (this.mActivityRecord != null) {
                pw.println(prefix + "mActivityRecord=" + this.mActivityRecord);
                pw.print(prefix + "mAppDied=" + this.mAppDied);
                pw.print(prefix + "drawnStateEvaluated=" + getDrawnStateEvaluated());
                pw.println(prefix + "mightAffectAllDrawn=" + mightAffectAllDrawn());
            }
            pw.println(prefix + "mViewVisibility=0x" + Integer.toHexString(this.mViewVisibility) + " mHaveFrame=" + this.mHaveFrame + " mObscured=" + this.mObscured);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(prefix);
            sb2.append("mSeq=");
            sb2.append(this.mSeq);
            sb2.append(" mSystemUiVisibility=0x");
            sb2.append(Integer.toHexString(this.mSystemUiVisibility));
            pw.println(sb2.toString());
        }
        if (!isVisibleByPolicy() || !this.mLegacyPolicyVisibilityAfterAnim || !this.mAppOpVisibility || isParentWindowHidden() || this.mPermanentlyHidden || this.mForceHideNonSystemOverlayWindow || this.mHiddenWhileSuspended) {
            pw.println(prefix + "mPolicyVisibility=" + isVisibleByPolicy() + " mLegacyPolicyVisibilityAfterAnim=" + this.mLegacyPolicyVisibilityAfterAnim + " mAppOpVisibility=" + this.mAppOpVisibility + " parentHidden=" + isParentWindowHidden() + " mPermanentlyHidden=" + this.mPermanentlyHidden + " mHiddenWhileSuspended=" + this.mHiddenWhileSuspended + " mForceHideNonSystemOverlayWindow=" + this.mForceHideNonSystemOverlayWindow);
        }
        if (!this.mRelayoutCalled || this.mLayoutNeeded) {
            pw.println(prefix + "mRelayoutCalled=" + this.mRelayoutCalled + " mLayoutNeeded=" + this.mLayoutNeeded);
        }
        if (dumpAll) {
            pw.println(prefix + "mGivenContentInsets=" + this.mGivenContentInsets.toShortString(sTmpSB) + " mGivenVisibleInsets=" + this.mGivenVisibleInsets.toShortString(sTmpSB));
            if (this.mTouchableInsets != 0 || this.mGivenInsetsPending) {
                pw.println(prefix + "mTouchableInsets=" + this.mTouchableInsets + " mGivenInsetsPending=" + this.mGivenInsetsPending);
                Region region = new Region();
                getTouchableRegion(region);
                pw.println(prefix + "touchable region=" + region);
            }
            pw.println(prefix + "mFullConfiguration=" + getConfiguration());
            pw.println(prefix + "mLastReportedConfiguration=" + getLastReportedConfiguration());
        }
        pw.println(prefix + "mHasSurface=" + this.mHasSurface + " isReadyForDisplay()=" + isReadyForDisplay() + " mWindowRemovalAllowed=" + this.mWindowRemovalAllowed);
        if (inSizeCompatMode()) {
            pw.println(prefix + "mCompatFrame=" + this.mWindowFrames.mCompatFrame.toShortString(sTmpSB));
        }
        if (dumpAll) {
            this.mWindowFrames.dump(pw, prefix);
            pw.println(prefix + " surface=" + this.mAttrs.surfaceInsets.toShortString(sTmpSB));
        }
        super.dump(pw, prefix, dumpAll);
        pw.println(prefix + this.mWinAnimator + ":");
        this.mWinAnimator.dump(pw, prefix + "  ", dumpAll);
        if (this.mAnimatingExit || this.mRemoveOnExit || this.mDestroying || this.mRemoved) {
            pw.println(prefix + "mAnimatingExit=" + this.mAnimatingExit + " mRemoveOnExit=" + this.mRemoveOnExit + " mDestroying=" + this.mDestroying + " mRemoved=" + this.mRemoved);
        }
        if (getOrientationChanging() || this.mAppFreezing || this.mReportOrientationChanged) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(prefix);
            sb3.append("mOrientationChanging=");
            sb3.append(this.mOrientationChanging);
            sb3.append(" configOrientationChanging=");
            sb3.append(getLastReportedConfiguration().orientation != getConfiguration().orientation);
            sb3.append(" mAppFreezing=");
            sb3.append(this.mAppFreezing);
            sb3.append(" mReportOrientationChanged=");
            sb3.append(this.mReportOrientationChanged);
            pw.println(sb3.toString());
        }
        if (this.mLastFreezeDuration != 0) {
            pw.print(prefix + "mLastFreezeDuration=");
            TimeUtils.formatDuration((long) this.mLastFreezeDuration, pw);
            pw.println();
        }
        pw.print(prefix + "mForceSeamlesslyRotate=" + this.mForceSeamlesslyRotate + " seamlesslyRotate: pending=");
        SeamlessRotator seamlessRotator = this.mPendingSeamlessRotate;
        if (seamlessRotator != null) {
            seamlessRotator.dump(pw);
        } else {
            pw.print("null");
        }
        pw.println(" finishedFrameNumber=" + this.mFinishSeamlessRotateFrameNumber);
        if (this.mHScale != 1.0f || this.mVScale != 1.0f) {
            pw.println(prefix + "mHScale=" + this.mHScale + " mVScale=" + this.mVScale);
        }
        if (this.mWallpaperX != -1.0f || this.mWallpaperY != -1.0f) {
            pw.println(prefix + "mWallpaperX=" + this.mWallpaperX + " mWallpaperY=" + this.mWallpaperY);
        }
        if (this.mWallpaperXStep != -1.0f || this.mWallpaperYStep != -1.0f) {
            pw.println(prefix + "mWallpaperXStep=" + this.mWallpaperXStep + " mWallpaperYStep=" + this.mWallpaperYStep);
        }
        if (this.mWallpaperZoomOut != -1.0f) {
            pw.println(prefix + "mWallpaperZoomOut=" + this.mWallpaperZoomOut);
        }
        if (this.mWallpaperDisplayOffsetX != Integer.MIN_VALUE || this.mWallpaperDisplayOffsetY != Integer.MIN_VALUE) {
            pw.println(prefix + "mWallpaperDisplayOffsetX=" + this.mWallpaperDisplayOffsetX + " mWallpaperDisplayOffsetY=" + this.mWallpaperDisplayOffsetY);
        }
        if (this.mDrawLock != null) {
            pw.println(prefix + "mDrawLock=" + this.mDrawLock);
        }
        if (isDragResizing()) {
            pw.println(prefix + "isDragResizing=" + isDragResizing());
        }
        if (computeDragResizing()) {
            pw.println(prefix + "computeDragResizing=" + computeDragResizing());
        }
        pw.println(prefix + "isOnScreen=" + isOnScreen());
        pw.println(prefix + "isVisible=" + isVisible());
        if (!this.mEmbeddedDisplayContents.isEmpty()) {
            pw.println(prefix + "mEmbeddedDisplayContents=" + this.mEmbeddedDisplayContents);
        }
        if (dumpAll) {
            pw.println(prefix + "mRequestedInsetsState: " + this.mRequestedInsetsState);
        }
    }

    @Override // com.android.server.wm.ConfigurationContainer
    String getName() {
        return Integer.toHexString(System.identityHashCode(this)) + " " + ((Object) getWindowTag());
    }

    CharSequence getWindowTag() {
        CharSequence tag = this.mAttrs.getTitle();
        if (tag == null || tag.length() <= 0) {
            return this.mAttrs.packageName;
        }
        return tag;
    }

    public String toString() {
        CharSequence title = getWindowTag();
        if (this.mStringNameCache == null || this.mLastTitle != title || this.mWasExiting != this.mAnimatingExit) {
            this.mLastTitle = title;
            this.mWasExiting = this.mAnimatingExit;
            StringBuilder sb = new StringBuilder();
            sb.append("Window{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" u");
            sb.append(this.mShowUserId);
            sb.append(" ");
            sb.append((Object) this.mLastTitle);
            sb.append(this.mAnimatingExit ? " EXITING}" : "}");
            this.mStringNameCache = sb.toString();
        }
        return this.mStringNameCache;
    }

    void transformClipRectFromScreenToSurfaceSpace(Rect clipRect) {
        if (this.mHScale == 1.0f && this.mVScale == 1.0f) {
            return;
        }
        if (this.mHScale >= 0.0f) {
            clipRect.left = (int) (clipRect.left / this.mHScale);
            clipRect.right = (int) Math.ceil(clipRect.right / this.mHScale);
        }
        if (this.mVScale >= 0.0f) {
            clipRect.top = (int) (clipRect.top / this.mVScale);
            clipRect.bottom = (int) Math.ceil(clipRect.bottom / this.mVScale);
        }
    }

    private void applyGravityAndUpdateFrame(WindowFrames windowFrames, Rect containingFrame, Rect displayFrame) {
        int w;
        int h;
        float x;
        float y;
        int pw = containingFrame.width();
        int ph = containingFrame.height();
        Task task = getTask();
        boolean fitToDisplay = true;
        boolean inNonFullscreenContainer = !inAppWindowThatMatchesParentBounds();
        boolean noLimits = (this.mAttrs.flags & 512) != 0;
        if (task != null && inNonFullscreenContainer && (this.mAttrs.type == 1 || noLimits)) {
            fitToDisplay = false;
        }
        boolean inSizeCompatMode = inSizeCompatMode();
        if ((this.mAttrs.flags & 16384) != 0) {
            if (this.mAttrs.width < 0) {
                w = pw;
            } else if (inSizeCompatMode) {
                w = (int) ((this.mAttrs.width * this.mGlobalScale) + 0.5f);
            } else {
                w = this.mAttrs.width;
            }
            if (this.mAttrs.height < 0) {
                h = ph;
            } else {
                h = inSizeCompatMode ? (int) ((this.mAttrs.height * this.mGlobalScale) + 0.5f) : this.mAttrs.height;
            }
        } else {
            if (this.mAttrs.width == -1) {
                w = pw;
            } else if (inSizeCompatMode) {
                w = (int) ((this.mRequestedWidth * this.mGlobalScale) + 0.5f);
            } else {
                w = this.mRequestedWidth;
            }
            if (this.mAttrs.height == -1) {
                h = ph;
            } else if (inSizeCompatMode) {
                h = (int) ((this.mRequestedHeight * this.mGlobalScale) + 0.5f);
            } else {
                h = this.mRequestedHeight;
            }
        }
        if (inSizeCompatMode) {
            x = this.mAttrs.x * this.mGlobalScale;
            y = this.mAttrs.y * this.mGlobalScale;
        } else {
            x = this.mAttrs.x;
            y = this.mAttrs.y;
        }
        if (inNonFullscreenContainer && !layoutInParentFrame()) {
            w = Math.min(w, pw);
            h = Math.min(h, ph);
        }
        Gravity.apply(this.mAttrs.gravity, w, h, containingFrame, (int) ((this.mAttrs.horizontalMargin * pw) + x), (int) ((this.mAttrs.verticalMargin * ph) + y), windowFrames.mFrame);
        if (fitToDisplay) {
            Gravity.applyDisplay(this.mAttrs.gravity, displayFrame, windowFrames.mFrame);
        }
        windowFrames.mCompatFrame.set(windowFrames.mFrame);
        if (inSizeCompatMode) {
            windowFrames.mCompatFrame.scale(this.mInvGlobalScale);
        }
    }

    boolean isChildWindow() {
        return this.mIsChildWindow;
    }

    boolean layoutInParentFrame() {
        return this.mIsChildWindow && (this.mAttrs.privateFlags & 65536) != 0;
    }

    boolean hideNonSystemOverlayWindowsWhenVisible() {
        return (this.mAttrs.privateFlags & 524288) != 0 && this.mSession.mCanHideNonSystemOverlayWindows;
    }

    WindowState getParentWindow() {
        if (this.mIsChildWindow) {
            return (WindowState) super.getParent();
        }
        return null;
    }

    WindowState getTopParentWindow() {
        WindowState current = this;
        WindowState topParent = current;
        while (current != null && current.mIsChildWindow) {
            current = current.getParentWindow();
            if (current != null) {
                topParent = current;
            }
        }
        return topParent;
    }

    boolean isParentWindowHidden() {
        WindowState parent = getParentWindow();
        return parent != null && parent.mHidden;
    }

    private boolean isParentWindowGoneForLayout() {
        WindowState parent = getParentWindow();
        return parent != null && parent.isGoneForLayoutLw();
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
    void setWillReplaceWindow(boolean animate) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            c.setWillReplaceWindow(animate);
        }
        if ((this.mAttrs.privateFlags & 32768) != 0 || this.mAttrs.type == 3) {
            return;
        }
        this.mWillReplaceWindow = true;
        this.mReplacementWindow = null;
        this.mAnimateReplacingWindow = animate;
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
    void clearWillReplaceWindow() {
        this.mWillReplaceWindow = false;
        this.mReplacementWindow = null;
        this.mAnimateReplacingWindow = false;
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            c.clearWillReplaceWindow();
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
    boolean waitingForReplacement() {
        if (this.mWillReplaceWindow) {
            return true;
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            if (c.waitingForReplacement()) {
                return true;
            }
        }
        return false;
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
    void requestUpdateWallpaperIfNeeded() {
        DisplayContent dc = getDisplayContent();
        if (dc != null && (this.mAttrs.flags & 1048576) != 0) {
            dc.pendingLayoutChanges |= 4;
            dc.setLayoutNeeded();
            this.mWmService.mWindowPlacerLocked.requestTraversal();
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            c.requestUpdateWallpaperIfNeeded();
        }
    }

    float translateToWindowX(float x) {
        float winX = x - this.mWindowFrames.mFrame.left;
        if (inSizeCompatMode()) {
            return winX * this.mGlobalScale;
        }
        return winX;
    }

    float translateToWindowY(float y) {
        float winY = y - this.mWindowFrames.mFrame.top;
        if (inSizeCompatMode()) {
            return winY * this.mGlobalScale;
        }
        return winY;
    }

    boolean shouldBeReplacedWithChildren() {
        return this.mIsChildWindow || this.mAttrs.type == 2 || this.mAttrs.type == 4;
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
    void setWillReplaceChildWindows() {
        if (shouldBeReplacedWithChildren()) {
            setWillReplaceWindow(false);
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            c.setWillReplaceChildWindows();
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
    WindowState getReplacingWindow() {
        if (this.mAnimatingExit && this.mWillReplaceWindow && this.mAnimateReplacingWindow) {
            return this;
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            WindowState replacing = c.getReplacingWindow();
            if (replacing != null) {
                return replacing;
            }
        }
        return null;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public int getRotationAnimationHint() {
        ActivityRecord activityRecord = this.mActivityRecord;
        if (activityRecord != null) {
            return activityRecord.mRotationAnimationHint;
        }
        return -1;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean isInputMethodWindow() {
        return this.mIsImWindow;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
    public boolean performShowLocked() {
        if (!showToCurrentUser()) {
            clearPolicyVisibilityFlag(2);
            return false;
        }
        logPerformShow("performShow on ");
        int drawState = this.mWinAnimator.mDrawState;
        if ((drawState == 4 || drawState == 3) && this.mActivityRecord != null) {
            if (this.mAttrs.type != 3) {
                this.mActivityRecord.onFirstWindowDrawn(this, this.mWinAnimator);
            } else {
                this.mActivityRecord.onStartingWindowDrawn();
            }
        }
        if (this.mWinAnimator.mDrawState != 3 || !isReadyForDisplay()) {
            return false;
        }
        logPerformShow("Showing ");
        this.mWmService.enableScreenIfNeededLocked();
        this.mWinAnimator.applyEnterAnimationLocked();
        this.mWinAnimator.mLastAlpha = -1.0f;
        this.mWinAnimator.mDrawState = 4;
        this.mWmService.scheduleAnimationLocked();
        if (this.mHidden) {
            this.mHidden = false;
            DisplayContent displayContent = getDisplayContent();
            for (int i = this.mChildren.size() - 1; i >= 0; i--) {
                WindowState c = (WindowState) this.mChildren.get(i);
                if (c.mWinAnimator.mSurfaceController != null) {
                    c.performShowLocked();
                    if (displayContent != null) {
                        displayContent.setLayoutNeeded();
                    }
                }
            }
        }
        return true;
    }

    private void logPerformShow(String prefix) {
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
    WindowInfo getWindowInfo() {
        WindowInfo windowInfo = WindowInfo.obtain();
        windowInfo.displayId = getDisplayId();
        windowInfo.type = this.mAttrs.type;
        windowInfo.layer = this.mLayer;
        windowInfo.token = this.mClient.asBinder();
        ActivityRecord activityRecord = this.mActivityRecord;
        if (activityRecord != null) {
            windowInfo.activityToken = activityRecord.appToken.asBinder();
        }
        windowInfo.title = this.mAttrs.accessibilityTitle;
        boolean isPanelWindow = this.mAttrs.type >= 1000 && this.mAttrs.type <= 1999;
        boolean isAccessibilityOverlay = windowInfo.type == 2032;
        if (TextUtils.isEmpty(windowInfo.title) && (isPanelWindow || isAccessibilityOverlay)) {
            CharSequence title = this.mAttrs.getTitle();
            windowInfo.title = TextUtils.isEmpty(title) ? null : title;
        }
        windowInfo.accessibilityIdOfAnchor = this.mAttrs.accessibilityIdOfAnchor;
        windowInfo.focused = isFocused();
        Task task = getTask();
        windowInfo.inPictureInPicture = task != null && task.inPinnedWindowingMode();
        windowInfo.hasFlagWatchOutsideTouch = (this.mAttrs.flags & 262144) != 0;
        if (this.mIsChildWindow) {
            windowInfo.parentToken = getParentWindow().mClient.asBinder();
        }
        int childCount = this.mChildren.size();
        if (childCount > 0) {
            if (windowInfo.childTokens == null) {
                windowInfo.childTokens = new ArrayList(childCount);
            }
            for (int j = 0; j < childCount; j++) {
                WindowState child = (WindowState) this.mChildren.get(j);
                windowInfo.childTokens.add(child.mClient.asBinder());
            }
        }
        return windowInfo;
    }

    @Override // com.android.server.wm.WindowContainer
    boolean forAllWindows(ToBooleanFunction<WindowState> callback, boolean traverseTopToBottom) {
        if (this.mChildren.isEmpty()) {
            return applyInOrderWithImeWindows(callback, traverseTopToBottom);
        }
        if (traverseTopToBottom) {
            return forAllWindowTopToBottom(callback);
        }
        return forAllWindowBottomToTop(callback);
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
    private boolean forAllWindowBottomToTop(ToBooleanFunction<WindowState> callback) {
        WindowState child;
        int i = 0;
        int count = this.mChildren.size();
        Object obj = this.mChildren.get(0);
        while (true) {
            child = (WindowState) obj;
            if (i >= count || child.mSubLayer >= 0) {
                break;
            }
            if (child.applyInOrderWithImeWindows(callback, false)) {
                return true;
            }
            i++;
            if (i >= count) {
                break;
            }
            obj = this.mChildren.get(i);
        }
        if (applyInOrderWithImeWindows(callback, false)) {
            return true;
        }
        while (i < count) {
            if (child.applyInOrderWithImeWindows(callback, false)) {
                return true;
            }
            i++;
            if (i >= count) {
                break;
            }
            child = (WindowState) this.mChildren.get(i);
        }
        return false;
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
    private boolean forAllWindowTopToBottom(ToBooleanFunction<WindowState> callback) {
        int i = this.mChildren.size() - 1;
        WindowState child = (WindowState) this.mChildren.get(i);
        while (i >= 0 && child.mSubLayer >= 0) {
            if (child.applyInOrderWithImeWindows(callback, true)) {
                return true;
            }
            i--;
            if (i < 0) {
                break;
            }
            child = (WindowState) this.mChildren.get(i);
        }
        if (applyInOrderWithImeWindows(callback, true)) {
            return true;
        }
        while (i >= 0) {
            if (child.applyInOrderWithImeWindows(callback, true)) {
                return true;
            }
            i--;
            if (i >= 0) {
                child = (WindowState) this.mChildren.get(i);
            } else {
                return false;
            }
        }
        return false;
    }

    private boolean applyImeWindowsIfNeeded(ToBooleanFunction<WindowState> callback, boolean traverseTopToBottom) {
        if (isInputMethodTarget() && !inSplitScreenWindowingMode() && getDisplayContent().forAllImeWindows(callback, traverseTopToBottom)) {
            return true;
        }
        return false;
    }

    private boolean applyInOrderWithImeWindows(ToBooleanFunction<WindowState> callback, boolean traverseTopToBottom) {
        if (traverseTopToBottom) {
            if (applyImeWindowsIfNeeded(callback, traverseTopToBottom) || callback.apply(this)) {
                return true;
            }
            return false;
        }
        if (callback.apply(this) || applyImeWindowsIfNeeded(callback, traverseTopToBottom)) {
            return true;
        }
        return false;
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
    @Override // com.android.server.wm.WindowContainer
    WindowState getWindow(Predicate<WindowState> callback) {
        if (this.mChildren.isEmpty()) {
            if (callback.test(this)) {
                return this;
            }
            return null;
        }
        int i = this.mChildren.size() - 1;
        WindowState child = (WindowState) this.mChildren.get(i);
        while (i >= 0 && child.mSubLayer >= 0) {
            if (callback.test(child)) {
                return child;
            }
            i--;
            if (i < 0) {
                break;
            }
            child = (WindowState) this.mChildren.get(i);
        }
        if (callback.test(this)) {
            return this;
        }
        while (i >= 0) {
            if (callback.test(child)) {
                return child;
            }
            i--;
            if (i < 0) {
                break;
            }
            child = (WindowState) this.mChildren.get(i);
        }
        return null;
    }

    boolean isSelfOrAncestorWindowAnimatingExit() {
        WindowState window = this;
        while (!window.mAnimatingExit) {
            window = window.getParentWindow();
            if (window == null) {
                return false;
            }
        }
        return true;
    }

    void onExitAnimationDone() {
        if (!this.mChildren.isEmpty()) {
            ArrayList<WindowState> childWindows = new ArrayList<>(this.mChildren);
            for (int i = childWindows.size() - 1; i >= 0; i--) {
                childWindows.get(i).onExitAnimationDone();
            }
        }
        if (this.mWinAnimator.mEnteringAnimation) {
            this.mWinAnimator.mEnteringAnimation = false;
            this.mWmService.requestTraversal();
            if (this.mActivityRecord == null) {
                try {
                    this.mClient.dispatchWindowShown();
                } catch (RemoteException e) {
                }
            }
        }
        if (isAnimating()) {
            return;
        }
        if (this.mWmService.mAccessibilityController != null) {
            this.mWmService.mAccessibilityController.onSomeWindowResizedOrMovedLocked(getDisplayId());
        }
        if (!isSelfOrAncestorWindowAnimatingExit()) {
            return;
        }
        if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
            String protoLogParam0 = String.valueOf(this);
            boolean protoLogParam1 = this.mRemoveOnExit;
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, 1051545910, 12, null, protoLogParam0, Boolean.valueOf(protoLogParam1));
        }
        this.mDestroying = true;
        boolean hasSurface = this.mWinAnimator.hasSurface();
        this.mWinAnimator.hide(getPendingTransaction(), "onExitAnimationDone");
        ActivityRecord activityRecord = this.mActivityRecord;
        if (activityRecord != null) {
            activityRecord.destroySurfaces();
        } else {
            if (hasSurface) {
                this.mWmService.mDestroySurface.add(this);
            }
            if (this.mRemoveOnExit) {
                this.mWmService.mPendingRemove.add(this);
                this.mRemoveOnExit = false;
            }
        }
        this.mAnimatingExit = false;
        getDisplayContent().mWallpaperController.hideWallpapers(this);
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
    boolean clearAnimatingFlags() {
        boolean didSomething = false;
        if (!this.mWillReplaceWindow && !this.mRemoveOnExit) {
            if (this.mAnimatingExit) {
                this.mAnimatingExit = false;
                didSomething = true;
            }
            if (this.mDestroying) {
                this.mDestroying = false;
                this.mWmService.mDestroySurface.remove(this);
                didSomething = true;
            }
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            didSomething |= ((WindowState) this.mChildren.get(i)).clearAnimatingFlags();
        }
        return didSomething;
    }

    public boolean isRtl() {
        return getConfiguration().getLayoutDirection() == 1;
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
    void hideWallpaperWindow(boolean wasDeferred, String reason) {
        for (int j = this.mChildren.size() - 1; j >= 0; j--) {
            WindowState c = (WindowState) this.mChildren.get(j);
            c.hideWallpaperWindow(wasDeferred, reason);
        }
        if (!this.mWinAnimator.mLastHidden || wasDeferred) {
            this.mWinAnimator.hide(reason);
            getDisplayContent().mWallpaperController.mDeferredHideWallpaper = null;
            dispatchWallpaperVisibility(false);
            DisplayContent displayContent = getDisplayContent();
            if (displayContent != null) {
                displayContent.pendingLayoutChanges |= 4;
            }
        }
    }

    void dispatchWallpaperVisibility(boolean visible) {
        boolean hideAllowed = getDisplayContent().mWallpaperController.mDeferredHideWallpaper == null;
        if (this.mWallpaperVisible != visible) {
            if (hideAllowed || visible) {
                this.mWallpaperVisible = visible;
                try {
                    this.mClient.dispatchAppVisibility(visible);
                } catch (RemoteException e) {
                }
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
    boolean hasVisibleNotDrawnWallpaper() {
        if (this.mWallpaperVisible && !isDrawnLw()) {
            return true;
        }
        for (int j = this.mChildren.size() - 1; j >= 0; j--) {
            WindowState c = (WindowState) this.mChildren.get(j);
            if (c.hasVisibleNotDrawnWallpaper()) {
                return true;
            }
        }
        return false;
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
    void updateReportedVisibility(UpdateReportedVisibilityResults results) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState c = (WindowState) this.mChildren.get(i);
            c.updateReportedVisibility(results);
        }
        if (this.mAppFreezing || this.mViewVisibility != 0 || this.mAttrs.type == 3 || this.mDestroying) {
            return;
        }
        results.numInteresting++;
        if (isDrawnLw()) {
            results.numDrawn++;
            if (!isAnimating(3)) {
                results.numVisible++;
            }
            results.nowGone = false;
            return;
        }
        if (isAnimating(3)) {
            results.nowGone = false;
        }
    }

    private boolean skipDecorCrop() {
        if (this.mWindowFrames.mDecorFrame.isEmpty()) {
            return true;
        }
        if (this.mActivityRecord != null) {
            return false;
        }
        return this.mToken.canLayerAboveSystemBars();
    }

    void calculatePolicyCrop(Rect policyCrop) {
        DisplayContent displayContent = getDisplayContent();
        if (!displayContent.isDefaultDisplay && !displayContent.supportsSystemDecorations()) {
            DisplayInfo displayInfo = getDisplayInfo();
            policyCrop.set(0, 0, this.mWindowFrames.mCompatFrame.width(), this.mWindowFrames.mCompatFrame.height());
            policyCrop.intersect(-this.mWindowFrames.mCompatFrame.left, -this.mWindowFrames.mCompatFrame.top, displayInfo.logicalWidth - this.mWindowFrames.mCompatFrame.left, displayInfo.logicalHeight - this.mWindowFrames.mCompatFrame.top);
        } else if (skipDecorCrop()) {
            policyCrop.set(0, 0, this.mWindowFrames.mCompatFrame.width(), this.mWindowFrames.mCompatFrame.height());
        } else {
            calculateSystemDecorRect(policyCrop);
        }
    }

    private void calculateSystemDecorRect(Rect systemDecorRect) {
        Rect decorRect = this.mWindowFrames.mDecorFrame;
        int width = this.mWindowFrames.mFrame.width();
        int height = this.mWindowFrames.mFrame.height();
        int left = this.mWindowFrames.mFrame.left;
        int top = this.mWindowFrames.mFrame.top;
        boolean z = false;
        if (isDockedResizing()) {
            DisplayInfo displayInfo = getDisplayContent().getDisplayInfo();
            systemDecorRect.set(0, 0, Math.max(width, displayInfo.logicalWidth), Math.max(height, displayInfo.logicalHeight));
        } else {
            systemDecorRect.set(0, 0, width, height);
        }
        if ((!inFreeformWindowingMode() || !isAnimatingLw()) && !isDockedResizing()) {
            z = true;
        }
        boolean cropToDecor = z;
        if (cropToDecor) {
            systemDecorRect.intersect(decorRect.left - left, decorRect.top - top, decorRect.right - left, decorRect.bottom - top);
        }
        if (this.mInvGlobalScale != 1.0f && inSizeCompatMode()) {
            float scale = this.mInvGlobalScale;
            systemDecorRect.left = (int) ((systemDecorRect.left * scale) - 0.5f);
            systemDecorRect.top = (int) ((systemDecorRect.top * scale) - 0.5f);
            systemDecorRect.right = (int) (((systemDecorRect.right + 1) * scale) - 0.5f);
            systemDecorRect.bottom = (int) (((systemDecorRect.bottom + 1) * scale) - 0.5f);
        }
    }

    void expandForSurfaceInsets(Rect r) {
        r.inset(-this.mAttrs.surfaceInsets.left, -this.mAttrs.surfaceInsets.top, -this.mAttrs.surfaceInsets.right, -this.mAttrs.surfaceInsets.bottom);
    }

    boolean surfaceInsetsChanging() {
        return !this.mLastSurfaceInsets.equals(this.mAttrs.surfaceInsets);
    }

    int relayoutVisibleWindow(int result, int attrChanges) {
        boolean freeformResizing;
        boolean wasVisible = isVisibleLw();
        int result2 = result | ((wasVisible && isDrawnLw()) ? 0 : 2);
        if (this.mAnimatingExit) {
            Slog.d(TAG, "relayoutVisibleWindow: " + this + " mAnimatingExit=true, mRemoveOnExit=" + this.mRemoveOnExit + ", mDestroying=" + this.mDestroying);
            if (isAnimating()) {
                cancelAnimation();
                destroySurfaceUnchecked();
            }
            this.mAnimatingExit = false;
        }
        if (this.mDestroying) {
            this.mDestroying = false;
            this.mWmService.mDestroySurface.remove(this);
        }
        boolean dockedResizing = true;
        if (!wasVisible) {
            this.mWinAnimator.mEnterAnimationPending = true;
        }
        this.mLastVisibleLayoutRotation = getDisplayContent().getRotation();
        this.mWinAnimator.mEnteringAnimation = true;
        Trace.traceBegin(32L, "prepareToDisplay");
        try {
            prepareWindowToDisplayDuringRelayout(wasVisible);
            Trace.traceEnd(32L);
            if ((attrChanges & 8) != 0 && !this.mWinAnimator.tryChangeFormatInPlaceLocked()) {
                this.mWinAnimator.preserveSurfaceLocked();
                result2 |= 6;
            }
            if (isDragResizeChanged()) {
                setDragResizing();
                if (this.mHasSurface && !isChildWindow()) {
                    this.mWinAnimator.preserveSurfaceLocked();
                    result2 |= 6;
                }
            }
            if (!isDragResizing() || getResizeMode() != 0) {
                freeformResizing = false;
            } else {
                freeformResizing = true;
            }
            if (!isDragResizing() || getResizeMode() != 1) {
                dockedResizing = false;
            }
            return result2 | (freeformResizing ? 16 : 0) | (dockedResizing ? 8 : 0);
        } catch (Throwable th) {
            Trace.traceEnd(32L);
            throw th;
        }
    }

    boolean isLaidOut() {
        return this.mLayoutSeq != -1;
    }

    boolean addEmbeddedDisplayContent(DisplayContent dc) {
        return this.mEmbeddedDisplayContents.add(dc);
    }

    boolean removeEmbeddedDisplayContent(DisplayContent dc) {
        return this.mEmbeddedDisplayContents.remove(dc);
    }

    void updateLastFrames() {
        this.mWindowFrames.mLastFrame.set(this.mWindowFrames.mFrame);
        this.mWindowFrames.mLastRelFrame.set(this.mWindowFrames.mRelFrame);
    }

    void updateLastInsetValues() {
        this.mWindowFrames.updateLastInsetValues();
    }

    @Override // com.android.server.wm.WindowContainer
    protected boolean isSelfAnimating(int flags, int typesToCheck) {
        if (this.mControllableInsetProvider != null) {
            return false;
        }
        return super.isSelfAnimating(flags, typesToCheck);
    }

    void startAnimation(Animation anim) {
        if (this.mControllableInsetProvider != null) {
            return;
        }
        DisplayInfo displayInfo = getDisplayInfo();
        anim.initialize(this.mWindowFrames.mFrame.width(), this.mWindowFrames.mFrame.height(), displayInfo.appWidth, displayInfo.appHeight);
        anim.restrictDuration(JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
        anim.scaleCurrentDuration(this.mWmService.getWindowAnimationScaleLocked());
        AnimationAdapter adapter = new LocalAnimationAdapter(new WindowAnimationSpec(anim, this.mSurfacePosition, false, 0.0f), this.mWmService.mSurfaceAnimationRunner);
        startAnimation(getPendingTransaction(), adapter);
        commitPendingTransaction();
    }

    private void startMoveAnimation(int left, int top) {
        if (this.mControllableInsetProvider != null) {
            return;
        }
        Point oldPosition = new Point();
        Point newPosition = new Point();
        transformFrameToSurfacePosition(this.mWindowFrames.mLastFrame.left, this.mWindowFrames.mLastFrame.top, oldPosition);
        transformFrameToSurfacePosition(left, top, newPosition);
        AnimationAdapter adapter = new LocalAnimationAdapter(new MoveAnimationSpec(oldPosition.x, oldPosition.y, newPosition.x, newPosition.y), this.mWmService.mSurfaceAnimationRunner);
        startAnimation(getPendingTransaction(), adapter);
    }

    private void startAnimation(SurfaceControl.Transaction t, AnimationAdapter adapter) {
        startAnimation(t, adapter, this.mWinAnimator.mLastHidden, 16);
    }

    @Override // com.android.server.wm.WindowContainer
    protected void onAnimationFinished(int type, AnimationAdapter anim) {
        super.onAnimationFinished(type, anim);
        this.mWinAnimator.onAnimationFinished();
    }

    void getTransformationMatrix(float[] float9, Matrix outMatrix) {
        float9[0] = this.mWinAnimator.mDsDx;
        float9[3] = this.mWinAnimator.mDtDx;
        float9[1] = this.mWinAnimator.mDtDy;
        float9[4] = this.mWinAnimator.mDsDy;
        transformSurfaceInsetsPosition(this.mTmpPoint, this.mAttrs.surfaceInsets);
        int x = this.mSurfacePosition.x + this.mTmpPoint.x;
        int y = this.mSurfacePosition.y + this.mTmpPoint.y;
        DisplayContent dc = getDisplayContent();
        while (dc != null && dc.getParentWindow() != null) {
            WindowState displayParent = dc.getParentWindow();
            x = (int) (x + displayParent.mWindowFrames.mFrame.left + (dc.getLocationInParentWindow().x * displayParent.mGlobalScale) + 0.5f);
            y = (int) (y + displayParent.mWindowFrames.mFrame.top + (dc.getLocationInParentWindow().y * displayParent.mGlobalScale) + 0.5f);
            dc = displayParent.getDisplayContent();
        }
        WindowContainer parent = getParent();
        if (isChildWindow()) {
            WindowState parentWindow = getParentWindow();
            x += parentWindow.mWindowFrames.mFrame.left - parentWindow.mAttrs.surfaceInsets.left;
            y += parentWindow.mWindowFrames.mFrame.top - parentWindow.mAttrs.surfaceInsets.top;
        } else if (parent != null) {
            Rect parentBounds = parent.getBounds();
            x += parentBounds.left;
            y += parentBounds.top;
        }
        float9[2] = x;
        float9[5] = y;
        float9[6] = 0.0f;
        float9[7] = 0.0f;
        float9[8] = 1.0f;
        outMatrix.setValues(float9);
    }

    static final class UpdateReportedVisibilityResults {
        boolean nowGone = true;
        int numDrawn;
        int numInteresting;
        int numVisible;

        UpdateReportedVisibilityResults() {
        }

        void reset() {
            this.numInteresting = 0;
            this.numVisible = 0;
            this.numDrawn = 0;
            this.nowGone = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class WindowId extends IWindowId.Stub {
        private final WeakReference<WindowState> mOuter;

        private WindowId(WindowState outer) {
            this.mOuter = new WeakReference<>(outer);
        }

        public void registerFocusObserver(IWindowFocusObserver observer) {
            WindowState outer = this.mOuter.get();
            if (outer != null) {
                outer.registerFocusObserver(observer);
            }
        }

        public void unregisterFocusObserver(IWindowFocusObserver observer) {
            WindowState outer = this.mOuter.get();
            if (outer != null) {
                outer.unregisterFocusObserver(observer);
            }
        }

        public boolean isFocused() {
            boolean zIsFocused;
            WindowState outer = this.mOuter.get();
            if (outer != null) {
                synchronized (outer.mWmService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        zIsFocused = outer.isFocused();
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
                return zIsFocused;
            }
            return false;
        }
    }

    @Override // com.android.server.wm.WindowContainer
    boolean shouldMagnify() {
        if (this.mAttrs.type == 2011 || this.mAttrs.type == 2012 || this.mAttrs.type == 2027 || this.mAttrs.type == 2019 || this.mAttrs.type == 2024) {
            return false;
        }
        return true;
    }

    @Override // com.android.server.wm.WindowContainer
    SurfaceSession getSession() {
        if (this.mSession.mSurfaceSession != null) {
            return this.mSession.mSurfaceSession;
        }
        return getParent().getSession();
    }

    @Override // com.android.server.wm.WindowContainer
    boolean needsZBoost() {
        ActivityRecord activity;
        WindowState inputMethodTarget = getDisplayContent().mInputMethodTarget;
        if (this.mIsImWindow && inputMethodTarget != null && (activity = inputMethodTarget.mActivityRecord) != null) {
            return activity.needsZBoost();
        }
        return this.mWillReplaceWindow;
    }

    private void applyDims() {
        if (!this.mAnimatingExit && this.mAppDied) {
            this.mIsDimming = true;
            getDimmer().dimAbove(getSyncTransaction(), this, 0.5f);
        } else if ((this.mAttrs.flags & 2) != 0 && isVisibleNow() && !this.mHidden) {
            this.mIsDimming = true;
            getDimmer().dimBelow(getSyncTransaction(), this, this.mAttrs.dimAmount);
        }
    }

    void updateFrameRateSelectionPriorityIfNeeded() {
        int priority = getDisplayContent().getDisplayPolicy().getRefreshRatePolicy().calculatePriority(this);
        if (this.mFrameRateSelectionPriority != priority) {
            this.mFrameRateSelectionPriority = priority;
            getPendingTransaction().setFrameRateSelectionPriority(this.mSurfaceControl, this.mFrameRateSelectionPriority);
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void prepareSurfaces() {
        this.mIsDimming = false;
        applyDims();
        updateSurfacePosition();
        updateFrameRateSelectionPriorityIfNeeded();
        this.mWinAnimator.prepareSurfaceLocked(true);
        notifyBlastSyncTransaction();
        super.prepareSurfaces();
    }

    @Override // com.android.server.wm.WindowContainer
    void updateSurfacePosition(SurfaceControl.Transaction t) {
        if (this.mSurfaceControl == null) {
            return;
        }
        transformFrameToSurfacePosition(this.mWindowFrames.mFrame.left, this.mWindowFrames.mFrame.top, this.mSurfacePosition);
        if (!this.mSurfaceAnimator.hasLeash() && this.mPendingSeamlessRotate == null && !this.mLastSurfacePosition.equals(this.mSurfacePosition)) {
            t.setPosition(this.mSurfaceControl, this.mSurfacePosition.x, this.mSurfacePosition.y);
            this.mLastSurfacePosition.set(this.mSurfacePosition.x, this.mSurfacePosition.y);
            if (surfaceInsetsChanging() && this.mWinAnimator.hasSurface()) {
                this.mLastSurfaceInsets.set(this.mAttrs.surfaceInsets);
                t.deferTransactionUntil(this.mSurfaceControl, this.mWinAnimator.mSurfaceController.mSurfaceControl, getFrameNumber());
            }
        }
    }

    private void transformFrameToSurfacePosition(int left, int top, Point outPoint) {
        outPoint.set(left, top);
        WindowContainer parentWindowContainer = getParent();
        if (isChildWindow()) {
            WindowState parent = getParentWindow();
            transformSurfaceInsetsPosition(this.mTmpPoint, parent.mAttrs.surfaceInsets);
            outPoint.offset((-parent.mWindowFrames.mFrame.left) + this.mTmpPoint.x, (-parent.mWindowFrames.mFrame.top) + this.mTmpPoint.y);
        } else if (parentWindowContainer != null) {
            Rect parentBounds = parentWindowContainer.getBounds();
            outPoint.offset(-parentBounds.left, -parentBounds.top);
        }
        ActivityStack stack = getRootTask();
        if (stack != null) {
            int outset = stack.getTaskOutset();
            outPoint.offset(outset, outset);
        }
        transformSurfaceInsetsPosition(this.mTmpPoint, this.mAttrs.surfaceInsets);
        outPoint.offset(-this.mTmpPoint.x, -this.mTmpPoint.y);
    }

    private void transformSurfaceInsetsPosition(Point outPos, Rect surfaceInsets) {
        if (!inSizeCompatMode()) {
            outPos.x = surfaceInsets.left;
            outPos.y = surfaceInsets.top;
        } else {
            outPos.x = (int) ((surfaceInsets.left * this.mGlobalScale) + 0.5f);
            outPos.y = (int) ((surfaceInsets.top * this.mGlobalScale) + 0.5f);
        }
    }

    boolean needsRelativeLayeringToIme() {
        WindowState imeTarget;
        if (!inSplitScreenWindowingMode()) {
            return false;
        }
        if (!isChildWindow()) {
            return (this.mActivityRecord == null || (imeTarget = getDisplayContent().mInputMethodTarget) == null || imeTarget == this || imeTarget.mToken != this.mToken || this.mAttrs.type == 3 || getParent() == null || imeTarget.compareTo((WindowContainer) this) > 0) ? false : true;
        }
        if (getParentWindow().isInputMethodTarget()) {
            return true;
        }
        return false;
    }

    InsetsControlTarget getImeControlTarget() {
        DisplayContent dc = getDisplayContent();
        WindowState parentWindow = dc.getParentWindow();
        return dc.getImeHostOrFallback(parentWindow != null ? parentWindow : this);
    }

    @Override // com.android.server.wm.WindowContainer
    void assignLayer(SurfaceControl.Transaction t, int layer) {
        if (needsRelativeLayeringToIme()) {
            getDisplayContent().assignRelativeLayerForImeTargetChild(t, this);
        } else {
            super.assignLayer(t, layer);
        }
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean isDimming() {
        return this.mIsDimming;
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
    @Override // com.android.server.wm.WindowContainer
    public void assignChildLayers(SurfaceControl.Transaction t) {
        int layer = 2;
        for (int i = 0; i < this.mChildren.size(); i++) {
            WindowState w = (WindowState) this.mChildren.get(i);
            if (w.mAttrs.type == 1001) {
                if (this.mWinAnimator.hasSurface()) {
                    w.assignRelativeLayer(t, this.mWinAnimator.mSurfaceController.mSurfaceControl, -2);
                } else {
                    w.assignLayer(t, -2);
                }
            } else if (w.mAttrs.type == 1004) {
                if (this.mWinAnimator.hasSurface()) {
                    w.assignRelativeLayer(t, this.mWinAnimator.mSurfaceController.mSurfaceControl, -1);
                } else {
                    w.assignLayer(t, -1);
                }
            } else {
                w.assignLayer(t, layer);
            }
            w.assignChildLayers(t);
            layer++;
        }
    }

    void updateTapExcludeRegion(Region region) {
        DisplayContent currentDisplay = getDisplayContent();
        if (currentDisplay == null) {
            throw new IllegalStateException("Trying to update window not attached to any display.");
        }
        if (region == null || region.isEmpty()) {
            this.mTapExcludeRegion.setEmpty();
            currentDisplay.mTapExcludeProvidingWindows.remove(this);
        } else {
            this.mTapExcludeRegion.set(region);
            currentDisplay.mTapExcludeProvidingWindows.add(this);
        }
        currentDisplay.updateTouchExcludeRegion();
        currentDisplay.getInputMonitor().updateInputWindowsLw(true);
    }

    void getTapExcludeRegion(Region outRegion) {
        this.mTmpRect.set(this.mWindowFrames.mFrame);
        this.mTmpRect.offsetTo(0, 0);
        outRegion.set(this.mTapExcludeRegion);
        outRegion.op(this.mTmpRect, Region.Op.INTERSECT);
        outRegion.translate(this.mWindowFrames.mFrame.left, this.mWindowFrames.mFrame.top);
    }

    boolean hasTapExcludeRegion() {
        return !this.mTapExcludeRegion.isEmpty();
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public boolean isInputMethodTarget() {
        return getDisplayContent().mInputMethodTarget == this;
    }

    long getFrameNumber() {
        if (getFrameLw().isEmpty()) {
            return -1L;
        }
        return this.mFrameNumber;
    }

    void setFrameNumber(long frameNumber) {
        this.mFrameNumber = frameNumber;
    }

    public void getMaxVisibleBounds(Rect out) {
        if (out.isEmpty()) {
            out.set(this.mWindowFrames.mVisibleFrame);
            return;
        }
        if (this.mWindowFrames.mVisibleFrame.left < out.left) {
            out.left = this.mWindowFrames.mVisibleFrame.left;
        }
        if (this.mWindowFrames.mVisibleFrame.top < out.top) {
            out.top = this.mWindowFrames.mVisibleFrame.top;
        }
        if (this.mWindowFrames.mVisibleFrame.right > out.right) {
            out.right = this.mWindowFrames.mVisibleFrame.right;
        }
        if (this.mWindowFrames.mVisibleFrame.bottom > out.bottom) {
            out.bottom = this.mWindowFrames.mVisibleFrame.bottom;
        }
    }

    void getInsetsForRelayout(Rect outContentInsets, Rect outVisibleInsets, Rect outStableInsets) {
        outContentInsets.set(this.mWindowFrames.mContentInsets);
        outVisibleInsets.set(this.mWindowFrames.mVisibleInsets);
        outStableInsets.set(this.mWindowFrames.mStableInsets);
        this.mLastRelayoutContentInsets.set(this.mWindowFrames.mContentInsets);
    }

    void getContentInsets(Rect outContentInsets) {
        outContentInsets.set(this.mWindowFrames.mContentInsets);
    }

    Rect getContentInsets() {
        return this.mWindowFrames.mContentInsets;
    }

    void getStableInsets(Rect outStableInsets) {
        outStableInsets.set(this.mWindowFrames.mStableInsets);
    }

    Rect getStableInsets() {
        return this.mWindowFrames.mStableInsets;
    }

    void resetLastContentInsets() {
        this.mWindowFrames.resetLastContentInsets();
    }

    Rect getVisibleInsets() {
        return this.mWindowFrames.mVisibleInsets;
    }

    @Override // com.android.server.policy.WindowManagerPolicy.WindowState
    public WindowFrames getWindowFrames() {
        return this.mWindowFrames;
    }

    void setSimulatedWindowFrames(WindowFrames windowFrames) {
        this.mSimulatedWindowFrames = windowFrames;
    }

    WindowFrames getLayoutingWindowFrames() {
        WindowFrames windowFrames = this.mSimulatedWindowFrames;
        return windowFrames != null ? windowFrames : this.mWindowFrames;
    }

    void resetContentChanged() {
        this.mWindowFrames.setContentChanged(false);
    }

    void setControllableInsetProvider(InsetsSourceProvider insetProvider) {
        this.mControllableInsetProvider = insetProvider;
    }

    InsetsSourceProvider getControllableInsetProvider() {
        return this.mControllableInsetProvider;
    }

    private final class MoveAnimationSpec implements LocalAnimationAdapter.AnimationSpec {
        private final long mDuration;
        private Point mFrom;
        private Interpolator mInterpolator;
        private Point mTo;

        private MoveAnimationSpec(int fromX, int fromY, int toX, int toY) {
            this.mFrom = new Point();
            this.mTo = new Point();
            Animation anim = AnimationUtils.loadAnimation(WindowState.this.mContext, R.anim.wallpaper_close_enter);
            this.mDuration = (long) (anim.computeDurationHint() * WindowState.this.mWmService.getWindowAnimationScaleLocked());
            this.mInterpolator = anim.getInterpolator();
            this.mFrom.set(fromX, fromY);
            this.mTo.set(toX, toY);
        }

        @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
        public long getDuration() {
            return this.mDuration;
        }

        @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
        public void apply(SurfaceControl.Transaction t, SurfaceControl leash, long currentPlayTime) {
            float fraction = getFraction(currentPlayTime);
            float v = this.mInterpolator.getInterpolation(fraction);
            t.setPosition(leash, this.mFrom.x + ((this.mTo.x - this.mFrom.x) * v), this.mFrom.y + ((this.mTo.y - this.mFrom.y) * v));
        }

        @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
        public void dump(PrintWriter pw, String prefix) {
            pw.println(prefix + "from=" + this.mFrom + " to=" + this.mTo + " duration=" + this.mDuration);
        }

        @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
        public void dumpDebugInner(ProtoOutputStream proto) {
            long token = proto.start(1146756268034L);
            this.mFrom.dumpDebug(proto, 1146756268033L);
            this.mTo.dumpDebug(proto, 1146756268034L);
            proto.write(1112396529667L, this.mDuration);
            proto.end(token);
        }
    }

    KeyInterceptionInfo getKeyInterceptionInfo() {
        KeyInterceptionInfo keyInterceptionInfo = this.mKeyInterceptionInfo;
        if (keyInterceptionInfo == null || keyInterceptionInfo.layoutParamsPrivateFlags != getAttrs().privateFlags || this.mKeyInterceptionInfo.layoutParamsType != getAttrs().type || this.mKeyInterceptionInfo.windowTitle != getWindowTag()) {
            this.mKeyInterceptionInfo = new KeyInterceptionInfo(getAttrs().type, getAttrs().privateFlags, getWindowTag().toString());
        }
        return this.mKeyInterceptionInfo;
    }

    @Override // com.android.server.wm.WindowContainer
    void getAnimationFrames(Rect outFrame, Rect outInsets, Rect outStableInsets, Rect outSurfaceInsets) {
        if (inFreeformWindowingMode()) {
            outFrame.set(getFrameLw());
        } else if (isLetterboxedAppWindow() || this.mToken.isFixedRotationTransforming()) {
            outFrame.set(getTask().getBounds());
        } else if (isDockedResizing()) {
            outFrame.set(getTask().getParent().getBounds());
        } else {
            outFrame.set(getContainingFrame());
        }
        outSurfaceInsets.set(getAttrs().surfaceInsets);
        getContentInsets(outInsets);
        getStableInsets(outStableInsets);
    }

    boolean isNonToastOrStartingOrPrivatePresentation() {
        return (this.mAttrs.type == 2005 || this.mAttrs.type == 3 || this.mAttrs.type == 2030 || (this.mAttrs.type == 2037 && isOnVirtualDisplay())) ? false : true;
    }

    boolean isNonToastWindowVisibleForUid(int callingUid) {
        return getOwningUid() == callingUid && isNonToastOrStartingOrPrivatePresentation() && isVisibleNow();
    }

    boolean isNonToastWindowVisibleForPid(int pid) {
        return this.mSession.mPid == pid && isNonToastOrStartingOrPrivatePresentation() && isVisibleNow();
    }

    private boolean isOnVirtualDisplay() {
        return getDisplayContent().mDisplay.getType() == 5;
    }

    void setViewVisibility(int viewVisibility) {
        this.mViewVisibility = viewVisibility;
        if (viewVisibility == 8 && this.mUsingBLASTSyncTransaction) {
            immediatelyNotifyBlastSync();
        }
    }

    SurfaceControl getClientViewRootSurface() {
        return this.mWinAnimator.getClientViewRootSurface();
    }

    @Override // com.android.server.wm.WindowContainer
    boolean prepareForSync(BLASTSyncEngine.TransactionReadyListener waitingListener, int waitingId) {
        boolean willSync = setPendingListener(waitingListener, waitingId);
        if (!willSync) {
            return false;
        }
        requestRedrawForSync();
        int iStartSyncSet = this.mBLASTSyncEngine.startSyncSet(this);
        this.mLocalSyncId = iStartSyncSet;
        addChildrenToSyncSet(iStartSyncSet);
        this.mWmService.mH.removeMessages(64, this);
        this.mWmService.mH.sendNewMessageDelayed(64, this, 5000L);
        return true;
    }

    boolean finishDrawing(SurfaceControl.Transaction postDrawTransaction) {
        if (!this.mUsingBLASTSyncTransaction) {
            return this.mWinAnimator.finishDrawingLocked(postDrawTransaction);
        }
        if (postDrawTransaction != null) {
            this.mBLASTSyncTransaction.merge(postDrawTransaction);
        }
        this.mNotifyBlastOnSurfacePlacement = true;
        return this.mWinAnimator.finishDrawingLocked(null);
    }

    private void notifyBlastSyncTransaction() {
        this.mWmService.mH.removeMessages(64, this);
        if (!this.mNotifyBlastOnSurfacePlacement || this.mWaitingListener == null) {
            this.mNotifyBlastOnSurfacePlacement = false;
            return;
        }
        if (this.mLocalSyncId >= 0) {
            this.mBLASTSyncEngine.setReady(this.mLocalSyncId);
            return;
        }
        this.mWaitingListener.onTransactionReady(this.mWaitingSyncId, Collections.singleton(this));
        this.mWaitingSyncId = 0;
        this.mWaitingListener = null;
        this.mNotifyBlastOnSurfacePlacement = false;
    }

    void immediatelyNotifyBlastSync() {
        finishDrawing(null);
        notifyBlastSyncTransaction();
    }

    private boolean shouldSendRedrawForSync() {
        Task task = getTask();
        if (task == null || task.getMainWindowSizeChangeTransaction() == null) {
            return useBLASTSync() && !this.mRedrawForSyncReported;
        }
        return true ^ this.mRedrawForSyncReported;
    }

    void requestRedrawForSync() {
        this.mRedrawForSyncReported = false;
    }
}
