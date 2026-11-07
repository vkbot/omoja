package com.android.server.wm;

import android.app.WindowConfiguration;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.PixelFormat;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Trace;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import android.view.DisplayInfo;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
class WindowStateAnimator {
    static final int COMMIT_DRAW_PENDING = 2;
    static final int DRAW_PENDING = 1;
    static final int HAS_DRAWN = 4;
    static final int NO_SURFACE = 0;
    static final int PRESERVED_SURFACE_LAYER = 1;
    static final int READY_TO_SHOW = 3;
    static final int STACK_CLIP_AFTER_ANIM = 0;
    static final int STACK_CLIP_BEFORE_ANIM = 1;
    static final int STACK_CLIP_NONE = 2;
    static final String TAG = "WindowManager";
    static final int WINDOW_FREEZE_LAYER = 2000000;
    boolean mAnimationIsEntrance;
    final WindowAnimator mAnimator;
    int mAttrType;
    final Context mContext;
    private boolean mDestroyPreservedSurfaceUponRedraw;
    int mDrawState;
    boolean mEnterAnimationPending;
    boolean mEnteringAnimation;
    boolean mForceScaleUntilResize;
    boolean mHaveMatrix;
    final boolean mIsWallpaper;
    boolean mLastHidden;
    private boolean mOffsetPositionForStackResize;
    private WindowSurfaceController mPendingDestroySurface;
    final WindowManagerPolicy mPolicy;
    boolean mReportSurfaceResized;
    final WindowManagerService mService;
    final Session mSession;
    WindowSurfaceController mSurfaceController;
    boolean mSurfaceDestroyDeferred;
    int mSurfaceFormat;
    boolean mSurfaceResized;
    private final SurfaceControl.Transaction mTmpTransaction;
    private final WallpaperController mWallpaperControllerLocked;
    final WindowState mWin;
    float mShownAlpha = 0.0f;
    float mAlpha = 0.0f;
    float mLastAlpha = 0.0f;
    Rect mTmpClipRect = new Rect();
    Rect mLastClipRect = new Rect();
    Rect mLastFinalClipRect = new Rect();
    Rect mTmpStackBounds = new Rect();
    private Rect mTmpAnimatingBounds = new Rect();
    private Rect mTmpSourceBounds = new Rect();
    private final Rect mSystemDecorRect = new Rect();
    float mDsDx = 1.0f;
    float mDtDx = 0.0f;
    float mDsDy = 0.0f;
    float mDtDy = 1.0f;
    private float mLastDsDx = 1.0f;
    private float mLastDtDx = 0.0f;
    private float mLastDsDy = 0.0f;
    private float mLastDtDy = 1.0f;
    float mExtraHScale = 1.0f;
    float mExtraVScale = 1.0f;
    int mXOffset = 0;
    int mYOffset = 0;
    float mWallpaperScale = 1.0f;
    private final Rect mTmpSize = new Rect();
    private final SurfaceControl.Transaction mPostDrawTransaction = new SurfaceControl.Transaction();
    boolean mPipAnimationStarted = false;
    private final Point mTmpPos = new Point();

    String drawStateToString() {
        int i = this.mDrawState;
        if (i == 0) {
            return "NO_SURFACE";
        }
        if (i == 1) {
            return "DRAW_PENDING";
        }
        if (i == 2) {
            return "COMMIT_DRAW_PENDING";
        }
        if (i == 3) {
            return "READY_TO_SHOW";
        }
        if (i == 4) {
            return "HAS_DRAWN";
        }
        return Integer.toString(i);
    }

    WindowStateAnimator(WindowState win) {
        WindowManagerService service = win.mWmService;
        this.mService = service;
        this.mTmpTransaction = service.mTransactionFactory.get();
        this.mAnimator = service.mAnimator;
        this.mPolicy = service.mPolicy;
        this.mContext = service.mContext;
        this.mWin = win;
        this.mSession = win.mSession;
        this.mAttrType = win.mAttrs.type;
        this.mIsWallpaper = win.mIsWallpaper;
        this.mWallpaperControllerLocked = win.getDisplayContent().mWallpaperController;
    }

    void onAnimationFinished() {
        this.mWin.checkPolicyVisibilityChange();
        DisplayContent displayContent = this.mWin.getDisplayContent();
        int i = this.mAttrType;
        if ((i == 2000 || i == 2040) && this.mWin.isVisibleByPolicy()) {
            displayContent.setLayoutNeeded();
        }
        this.mWin.onExitAnimationDone();
        displayContent.pendingLayoutChanges |= 8;
        if (displayContent.mWallpaperController.isWallpaperTarget(this.mWin)) {
            displayContent.pendingLayoutChanges |= 4;
        }
        if (this.mWin.mActivityRecord != null) {
            this.mWin.mActivityRecord.updateReportedVisibilityLocked();
        }
    }

    void hide(SurfaceControl.Transaction transaction, String reason) {
        if (!this.mLastHidden) {
            this.mLastHidden = true;
            markPreservedSurfaceForDestroy();
            WindowSurfaceController windowSurfaceController = this.mSurfaceController;
            if (windowSurfaceController != null) {
                windowSurfaceController.hide(transaction, reason);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hide(String reason) {
        hide(this.mTmpTransaction, reason);
        SurfaceControl.mergeToGlobalTransaction(this.mTmpTransaction);
    }

    boolean finishDrawingLocked(SurfaceControl.Transaction postDrawTransaction) {
        boolean startingWindow = this.mWin.mAttrs.type == 3;
        if (startingWindow && ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
            String protoLogParam0 = String.valueOf(this.mWin);
            String protoLogParam1 = String.valueOf(drawStateToString());
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, -344488673, 0, null, protoLogParam0, protoLogParam1);
        }
        boolean layoutNeeded = false;
        if (this.mDrawState == 1) {
            if (ProtoLog$Cache.WM_DEBUG_DRAW_enabled) {
                String protoLogParam2 = String.valueOf(this.mWin);
                String protoLogParam3 = String.valueOf(this.mSurfaceController);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_DRAW, -993378225, 0, null, protoLogParam2, protoLogParam3);
            }
            if (startingWindow && ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                String protoLogParam4 = String.valueOf(this.mWin);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, 829434921, 0, null, protoLogParam4);
            }
            this.mDrawState = 2;
            layoutNeeded = true;
            if (postDrawTransaction != null) {
                this.mPostDrawTransaction.merge(postDrawTransaction);
            }
        } else if (postDrawTransaction != null) {
            postDrawTransaction.apply();
        }
        return layoutNeeded;
    }

    boolean commitFinishDrawingLocked() {
        int i = this.mDrawState;
        if (i != 2 && i != 3) {
            return false;
        }
        this.mDrawState = 3;
        ActivityRecord activity = this.mWin.mActivityRecord;
        if (activity != null && !activity.canShowWindows() && this.mWin.mAttrs.type != 3) {
            return false;
        }
        boolean result = this.mWin.performShowLocked();
        return result;
    }

    void preserveSurfaceLocked() {
        if (this.mDestroyPreservedSurfaceUponRedraw) {
            this.mSurfaceDestroyDeferred = false;
            WindowSurfaceController windowSurfaceController = this.mSurfaceController;
            if (windowSurfaceController != null && this.mPendingDestroySurface != null) {
                this.mPostDrawTransaction.reparentChildren(windowSurfaceController.getClientViewRootSurface(), this.mPendingDestroySurface.mSurfaceControl).apply();
            }
            destroySurfaceLocked();
            this.mSurfaceDestroyDeferred = true;
            return;
        }
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            String protoLogParam0 = String.valueOf(this.mWin);
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, -1144293044, 0, null, protoLogParam0);
        }
        WindowSurfaceController windowSurfaceController2 = this.mSurfaceController;
        if (windowSurfaceController2 != null) {
            windowSurfaceController2.mSurfaceControl.setLayer(1);
        }
        this.mDestroyPreservedSurfaceUponRedraw = true;
        this.mSurfaceDestroyDeferred = true;
        destroySurfaceLocked();
    }

    void destroyPreservedSurfaceLocked() {
        WindowSurfaceController windowSurfaceController;
        if (!this.mDestroyPreservedSurfaceUponRedraw) {
            return;
        }
        if (this.mSurfaceController != null && (windowSurfaceController = this.mPendingDestroySurface) != null && !windowSurfaceController.mChildrenDetached && (this.mWin.mActivityRecord == null || !this.mWin.mActivityRecord.isRelaunching())) {
            this.mPostDrawTransaction.reparentChildren(this.mPendingDestroySurface.getClientViewRootSurface(), this.mSurfaceController.mSurfaceControl).apply();
        }
        destroyDeferredSurfaceLocked();
        this.mDestroyPreservedSurfaceUponRedraw = false;
    }

    private void markPreservedSurfaceForDestroy() {
        if (this.mDestroyPreservedSurfaceUponRedraw && !this.mService.mDestroyPreservedSurface.contains(this.mWin)) {
            this.mService.mDestroyPreservedSurface.add(this.mWin);
        }
    }

    void resetDrawState() {
        this.mDrawState = 1;
        if (this.mWin.mActivityRecord != null && !this.mWin.mActivityRecord.isAnimating(1)) {
            this.mWin.mActivityRecord.clearAllDrawn();
        }
    }

    WindowSurfaceController createSurfaceLocked(int windowType, int ownerUid) throws Throwable {
        int flags;
        WindowSurfaceController windowSurfaceController;
        String str;
        String str2;
        WindowState w = this.mWin;
        WindowSurfaceController windowSurfaceController2 = this.mSurfaceController;
        if (windowSurfaceController2 != null) {
            return windowSurfaceController2;
        }
        int windowType2 = (this.mWin.mAttrs.privateFlags & 1048576) != 0 ? 441731 : windowType;
        w.setHasSurface(false);
        resetDrawState();
        this.mService.makeWindowFreezingScreenIfNeededLocked(w);
        WindowManager.LayoutParams attrs = w.mAttrs;
        int flags2 = w.isSecureLocked() ? 4 | 128 : 4;
        if ((this.mWin.mAttrs.privateFlags & 2097152) != 0) {
            Slog.i(TAG, this + " PRIVATE_FLAG_SKIP_SCREENSHOT flag is set, pirvateFlags = " + Integer.toHexString(this.mWin.mAttrs.privateFlags));
            flags = flags2 | 64;
        } else {
            flags = flags2;
        }
        calculateSurfaceBounds(w, attrs, this.mTmpSize);
        int width = this.mTmpSize.width();
        int height = this.mTmpSize.height();
        this.mLastClipRect.set(0, 0, 0, 0);
        try {
            boolean isHwAccelerated = (attrs.flags & 16777216) != 0;
            int format = isHwAccelerated ? -3 : attrs.format;
            int flags3 = (!PixelFormat.formatHasAlpha(attrs.format) && attrs.surfaceInsets.left == 0 && attrs.surfaceInsets.top == 0 && attrs.surfaceInsets.right == 0 && attrs.surfaceInsets.bottom == 0 && !w.isDragResizing()) ? flags | 1024 : flags;
            try {
                String string = attrs.getTitle().toString();
                int flags4 = flags3;
                str = TAG;
                try {
                    WindowSurfaceController windowSurfaceController3 = new WindowSurfaceController(string, width, height, format, flags3, this, windowType2, ownerUid);
                    this.mSurfaceController = windowSurfaceController3;
                    windowSurfaceController3.setColorSpaceAgnostic((attrs.privateFlags & 16777216) != 0);
                    setOffsetPositionForStackResize(false);
                    this.mSurfaceFormat = format;
                    w.setHasSurface(true);
                    if (ProtoLog$Cache.WM_SHOW_SURFACE_ALLOC_enabled) {
                        String protoLogParam0 = String.valueOf(this.mSurfaceController);
                        String protoLogParam1 = String.valueOf(this.mSession.mSurfaceSession);
                        long protoLogParam2 = this.mSession.mPid;
                        long protoLogParam3 = attrs.format;
                        long protoLogParam4 = flags4;
                        try {
                            String protoLogParam5 = String.valueOf(this);
                            ProtoLogGroup protoLogGroup = ProtoLogGroup.WM_SHOW_SURFACE_ALLOC;
                            Object[] objArr = {protoLogParam0, protoLogParam1, Long.valueOf(protoLogParam2), Long.valueOf(protoLogParam3), Long.valueOf(protoLogParam4), protoLogParam5};
                            windowSurfaceController = null;
                            try {
                                ProtoLogImpl.i(protoLogGroup, 745391677, 336, null, objArr);
                            } catch (Surface.OutOfResourcesException e) {
                                str2 = str;
                                Slog.w(str2, "OutOfResourcesException creating surface");
                                this.mService.mRoot.reclaimSomeSurfaceMemory(this, "create", true);
                                this.mDrawState = 0;
                                return windowSurfaceController;
                            } catch (Exception e2) {
                                e = e2;
                                Slog.e(str, "Exception creating surface (parent dead?)", e);
                                this.mDrawState = 0;
                                return windowSurfaceController;
                            }
                        } catch (Surface.OutOfResourcesException e3) {
                            windowSurfaceController = null;
                        } catch (Exception e4) {
                            e = e4;
                            windowSurfaceController = null;
                        }
                    }
                    this.mLastHidden = true;
                    return this.mSurfaceController;
                } catch (Surface.OutOfResourcesException e5) {
                    windowSurfaceController = null;
                    str2 = str;
                } catch (Exception e6) {
                    e = e6;
                    windowSurfaceController = null;
                }
            } catch (Surface.OutOfResourcesException e7) {
                windowSurfaceController = null;
                str2 = TAG;
            } catch (Exception e8) {
                e = e8;
                windowSurfaceController = null;
                str = TAG;
            }
        } catch (Surface.OutOfResourcesException e9) {
            windowSurfaceController = null;
            str2 = TAG;
        } catch (Exception e10) {
            e = e10;
            windowSurfaceController = null;
            str = TAG;
        }
    }

    private void calculateSurfaceBounds(WindowState w, WindowManager.LayoutParams attrs, Rect outSize) {
        outSize.setEmpty();
        if ((attrs.flags & 16384) != 0) {
            outSize.right = w.mRequestedWidth;
            outSize.bottom = w.mRequestedHeight;
        } else if (w.isDragResizing()) {
            DisplayInfo displayInfo = w.getDisplayInfo();
            outSize.right = displayInfo.logicalWidth;
            outSize.bottom = displayInfo.logicalHeight;
        } else {
            w.getCompatFrameSize(outSize);
        }
        if (outSize.width() < 1) {
            outSize.right = 1;
        }
        if (outSize.height() < 1) {
            outSize.bottom = 1;
        }
        outSize.inset(-attrs.surfaceInsets.left, -attrs.surfaceInsets.top, -attrs.surfaceInsets.right, -attrs.surfaceInsets.bottom);
    }

    boolean hasSurface() {
        WindowSurfaceController windowSurfaceController = this.mSurfaceController;
        return windowSurfaceController != null && windowSurfaceController.hasSurface();
    }

    void destroySurfaceLocked() {
        ActivityRecord activity = this.mWin.mActivityRecord;
        if (activity != null && this.mWin == activity.startingWindow) {
            activity.startingDisplayed = false;
        }
        if (this.mSurfaceController == null) {
            return;
        }
        if (!this.mDestroyPreservedSurfaceUponRedraw) {
            this.mWin.mHidden = true;
        }
        try {
            if (this.mSurfaceDestroyDeferred) {
                if (this.mSurfaceController != null && this.mPendingDestroySurface != this.mSurfaceController) {
                    if (this.mPendingDestroySurface != null) {
                        if (ProtoLog$Cache.WM_SHOW_SURFACE_ALLOC_enabled) {
                            String protoLogParam0 = String.valueOf(this.mWin);
                            String protoLogParam1 = String.valueOf(new RuntimeException().fillInStackTrace());
                            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_SURFACE_ALLOC, -477481651, 0, null, protoLogParam0, protoLogParam1);
                        }
                        this.mPendingDestroySurface.destroyNotInTransaction();
                    }
                    this.mPendingDestroySurface = this.mSurfaceController;
                }
            } else {
                if (ProtoLog$Cache.WM_SHOW_SURFACE_ALLOC_enabled) {
                    String protoLogParam2 = String.valueOf(this.mWin);
                    String protoLogParam3 = String.valueOf(new RuntimeException().fillInStackTrace());
                    ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_SURFACE_ALLOC, -1391944764, 0, null, protoLogParam2, protoLogParam3);
                }
                destroySurface();
            }
            if (!this.mDestroyPreservedSurfaceUponRedraw) {
                this.mWallpaperControllerLocked.hideWallpapers(this.mWin);
            }
        } catch (RuntimeException e) {
            Slog.w(TAG, "Exception thrown when destroying Window " + this + " surface " + this.mSurfaceController + " session " + this.mSession + ": " + e.toString());
        }
        this.mWin.setHasSurface(false);
        WindowSurfaceController windowSurfaceController = this.mSurfaceController;
        if (windowSurfaceController != null) {
            windowSurfaceController.setShown(false);
        }
        this.mSurfaceController = null;
        this.mDrawState = 0;
    }

    void destroyDeferredSurfaceLocked() {
        try {
            if (this.mPendingDestroySurface != null) {
                if (ProtoLog$Cache.WM_SHOW_SURFACE_ALLOC_enabled) {
                    String protoLogParam0 = String.valueOf(this.mWin);
                    String protoLogParam1 = String.valueOf(new RuntimeException().fillInStackTrace());
                    ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_SURFACE_ALLOC, -477481651, 0, null, protoLogParam0, protoLogParam1);
                }
                this.mPendingDestroySurface.destroyNotInTransaction();
                if (!this.mDestroyPreservedSurfaceUponRedraw) {
                    this.mWallpaperControllerLocked.hideWallpapers(this.mWin);
                }
            }
        } catch (RuntimeException e) {
            Slog.w(TAG, "Exception thrown when destroying Window " + this + " surface " + this.mPendingDestroySurface + " session " + this.mSession + ": " + e.toString());
        }
        this.mSurfaceDestroyDeferred = false;
        this.mPendingDestroySurface = null;
    }

    void computeShownFrameLocked() {
        ScreenRotationAnimation screenRotationAnimation = this.mWin.getDisplayContent().getRotationAnimation();
        boolean windowParticipatesInScreenRotationAnimation = !this.mWin.mForceSeamlesslyRotate;
        boolean screenAnimation = screenRotationAnimation != null && screenRotationAnimation.isAnimating() && windowParticipatesInScreenRotationAnimation;
        if (screenAnimation) {
            Rect frame = this.mWin.getFrameLw();
            float[] tmpFloats = this.mService.mTmpFloats;
            Matrix tmpMatrix = this.mWin.mTmpMatrix;
            if (screenRotationAnimation.isRotating()) {
                float w = frame.width();
                float h = frame.height();
                if (w >= 1.0f && h >= 1.0f) {
                    tmpMatrix.setScale((2.0f / w) + 1.0f, (2.0f / h) + 1.0f, w / 2.0f, h / 2.0f);
                } else {
                    tmpMatrix.reset();
                }
            } else {
                tmpMatrix.reset();
            }
            tmpMatrix.postScale(this.mWin.mGlobalScale, this.mWin.mGlobalScale);
            tmpMatrix.postTranslate(this.mWin.mAttrs.surfaceInsets.left, this.mWin.mAttrs.surfaceInsets.top);
            this.mHaveMatrix = true;
            tmpMatrix.getValues(tmpFloats);
            this.mDsDx = tmpFloats[0];
            this.mDtDx = tmpFloats[3];
            this.mDtDy = tmpFloats[1];
            this.mDsDy = tmpFloats[4];
            this.mShownAlpha = this.mAlpha;
            if (!this.mService.mLimitedAlphaCompositing || !PixelFormat.formatHasAlpha(this.mWin.mAttrs.format) || this.mWin.isIdentityMatrix(this.mDsDx, this.mDtDx, this.mDtDy, this.mDsDy)) {
                this.mShownAlpha *= screenRotationAnimation.getEnterTransformation().getAlpha();
                return;
            }
            return;
        }
        if ((this.mIsWallpaper && this.mService.mRoot.mWallpaperActionPending) || this.mWin.isDragResizeChanged()) {
            return;
        }
        this.mShownAlpha = this.mAlpha;
        this.mHaveMatrix = false;
        this.mDsDx = this.mWin.mGlobalScale;
        this.mDtDx = 0.0f;
        this.mDtDy = 0.0f;
        this.mDsDy = this.mWin.mGlobalScale;
    }

    private boolean calculateCrop(Rect clipRect) {
        WindowState w = this.mWin;
        DisplayContent displayContent = w.getDisplayContent();
        clipRect.setEmpty();
        if (displayContent == null || w.getWindowConfiguration().tasksAreFloating() || WindowConfiguration.isSplitScreenWindowingMode(w.getWindowingMode()) || w.mForceSeamlesslyRotate || w.mAttrs.type == 2013) {
            return false;
        }
        w.calculatePolicyCrop(this.mSystemDecorRect);
        clipRect.set(this.mSystemDecorRect);
        w.expandForSurfaceInsets(clipRect);
        clipRect.offset(w.mAttrs.surfaceInsets.left, w.mAttrs.surfaceInsets.top);
        w.transformClipRectFromScreenToSurfaceSpace(clipRect);
        return true;
    }

    private void applyCrop(Rect clipRect, boolean recoveringMemory) {
        if (clipRect != null) {
            if (!clipRect.equals(this.mLastClipRect)) {
                this.mLastClipRect.set(clipRect);
                this.mSurfaceController.setCropInTransaction(clipRect, recoveringMemory);
                return;
            }
            return;
        }
        this.mSurfaceController.clearCropInTransaction(recoveringMemory);
    }

    private boolean shouldConsumeMainWindowSizeTransaction() {
        Task task;
        return this.mWin.mInRelayout && this.mAttrType == 1 && (task = this.mWin.getTask()) != null && task.getMainWindowSizeChangeTransaction() != null && this.mWin.mActivityRecord.isRootOfTask();
    }

    void setSurfaceBoundariesLocked(boolean recoveringMemory) {
        Rect clipRect;
        Rect clipRect2;
        boolean allowStretching;
        Rect clipRect3;
        if (this.mSurfaceController == null) {
            return;
        }
        WindowState w = this.mWin;
        WindowManager.LayoutParams attrs = this.mWin.getAttrs();
        Task task = w.getTask();
        calculateSurfaceBounds(w, attrs, this.mTmpSize);
        this.mExtraHScale = 1.0f;
        this.mExtraVScale = 1.0f;
        boolean z = this.mForceScaleUntilResize;
        boolean relayout = !w.mRelayoutCalled || w.mInRelayout;
        if (relayout) {
            this.mSurfaceResized = this.mSurfaceController.setBufferSizeInTransaction(this.mTmpSize.width(), this.mTmpSize.height(), recoveringMemory);
        } else {
            this.mSurfaceResized = false;
        }
        this.mForceScaleUntilResize = this.mForceScaleUntilResize && !this.mSurfaceResized;
        Rect clipRect4 = null;
        if (calculateCrop(this.mTmpClipRect)) {
            clipRect4 = this.mTmpClipRect;
        }
        if (shouldConsumeMainWindowSizeTransaction()) {
            task.getMainWindowSizeChangeTask().getSurfaceControl().deferTransactionUntil(this.mWin.getClientViewRootSurface(), this.mWin.getFrameNumber());
            this.mSurfaceController.deferTransactionUntil(this.mWin.getClientViewRootSurface(), this.mWin.getFrameNumber());
            SurfaceControl.mergeToGlobalTransaction(task.getMainWindowSizeChangeTransaction());
            task.setMainWindowSizeChangeTransaction(null);
        }
        float surfaceWidth = this.mSurfaceController.getWidth();
        float surfaceHeight = this.mSurfaceController.getHeight();
        Rect insets = attrs.surfaceInsets;
        if (isForceScaled()) {
            int hInsets = insets.left + insets.right;
            int vInsets = insets.top + insets.bottom;
            float surfaceContentWidth = surfaceWidth - hInsets;
            float surfaceContentHeight = surfaceHeight - vInsets;
            if (!this.mForceScaleUntilResize) {
                this.mSurfaceController.forceScaleableInTransaction(true);
            }
            int posX = 0;
            int posY = 0;
            task.getStack().getDimBounds(this.mTmpStackBounds);
            task.getStack().getFinalAnimationSourceHintBounds(this.mTmpSourceBounds);
            if (this.mTmpSourceBounds.isEmpty() && (this.mWin.mLastRelayoutContentInsets.width() > 0 || this.mWin.mLastRelayoutContentInsets.height() > 0)) {
                this.mTmpSourceBounds.set(task.getStack().mPreAnimationBounds);
                this.mTmpSourceBounds.inset(this.mWin.mLastRelayoutContentInsets);
                allowStretching = true;
            } else {
                allowStretching = false;
            }
            Rect rect = this.mTmpStackBounds;
            Rect clipRect5 = w.getParentFrame();
            rect.intersectUnchecked(clipRect5);
            this.mTmpSourceBounds.intersectUnchecked(w.getParentFrame());
            this.mTmpAnimatingBounds.intersectUnchecked(w.getParentFrame());
            if (!this.mTmpSourceBounds.isEmpty()) {
                task.getStack().getFinalAnimationBounds(this.mTmpAnimatingBounds);
                float finalWidth = this.mTmpAnimatingBounds.width();
                float initialWidth = this.mTmpSourceBounds.width();
                float tw = (surfaceContentWidth - this.mTmpStackBounds.width()) / (surfaceContentWidth - this.mTmpAnimatingBounds.width());
                float th = tw;
                float finalWidth2 = (initialWidth + ((finalWidth - initialWidth) * tw)) / initialWidth;
                this.mExtraHScale = finalWidth2;
                if (!allowStretching) {
                    this.mExtraVScale = finalWidth2;
                } else {
                    float finalHeight = this.mTmpAnimatingBounds.height();
                    float initialHeight = this.mTmpSourceBounds.height();
                    th = (surfaceContentHeight - this.mTmpStackBounds.height()) / (surfaceContentHeight - this.mTmpAnimatingBounds.height());
                    this.mExtraVScale = (((finalHeight - initialHeight) * tw) + initialHeight) / initialHeight;
                }
                int posX2 = 0 - ((int) ((this.mExtraHScale * tw) * this.mTmpSourceBounds.left));
                int posY2 = 0 - ((int) ((this.mExtraVScale * th) * this.mTmpSourceBounds.top));
                clipRect3 = this.mTmpClipRect;
                clipRect3.set((int) ((insets.left + this.mTmpSourceBounds.left) * tw), (int) ((insets.top + this.mTmpSourceBounds.top) * th), insets.left + ((int) (surfaceWidth - ((surfaceWidth - this.mTmpSourceBounds.right) * tw))), insets.top + ((int) (surfaceHeight - ((surfaceHeight - this.mTmpSourceBounds.bottom) * th))));
                posX = posX2;
                posY = posY2;
            } else {
                this.mExtraHScale = this.mTmpStackBounds.width() / surfaceContentWidth;
                this.mExtraVScale = this.mTmpStackBounds.height() / surfaceContentHeight;
                clipRect3 = null;
            }
            this.mSurfaceController.setPositionInTransaction((float) Math.floor((int) ((posX - ((int) (attrs.x * (1.0f - this.mExtraHScale)))) + (insets.left * (1.0f - this.mExtraHScale)))), (float) Math.floor((int) ((posY - ((int) (attrs.y * (1.0f - this.mExtraVScale)))) + (insets.top * (1.0f - this.mExtraVScale)))), recoveringMemory);
            if (!this.mPipAnimationStarted) {
                this.mForceScaleUntilResize = true;
                this.mPipAnimationStarted = true;
            }
            clipRect2 = clipRect3;
        } else {
            Rect clipRect6 = clipRect4;
            this.mPipAnimationStarted = false;
            if (w.mSeamlesslyRotated) {
                clipRect = clipRect6;
            } else {
                int xOffset = this.mXOffset;
                int yOffset = this.mYOffset;
                if (!this.mOffsetPositionForStackResize) {
                    clipRect = clipRect6;
                } else if (relayout) {
                    setOffsetPositionForStackResize(false);
                    this.mSurfaceController.deferTransactionUntil(this.mWin.getClientViewRootSurface(), this.mWin.getFrameNumber());
                    clipRect = clipRect6;
                } else {
                    ActivityStack stack = this.mWin.getRootTask();
                    this.mTmpPos.x = 0;
                    this.mTmpPos.y = 0;
                    if (stack != null) {
                        stack.getRelativePosition(this.mTmpPos);
                    }
                    xOffset = -this.mTmpPos.x;
                    yOffset = -this.mTmpPos.y;
                    if (clipRect6 == null) {
                        clipRect = clipRect6;
                    } else {
                        clipRect = clipRect6;
                        clipRect.right += this.mTmpPos.x;
                        clipRect.bottom += this.mTmpPos.y;
                    }
                }
                if (this.mIsWallpaper) {
                    setWallpaperPositionAndScale(xOffset, yOffset, this.mWallpaperScale, recoveringMemory);
                } else {
                    this.mSurfaceController.setPositionInTransaction(xOffset, yOffset, recoveringMemory);
                }
            }
            clipRect2 = clipRect;
        }
        if (z && !this.mForceScaleUntilResize) {
            this.mSurfaceController.deferTransactionUntil(this.mWin.getClientViewRootSurface(), this.mWin.getFrameNumber());
            this.mSurfaceController.forceScaleableInTransaction(false);
        }
        if (!w.mSeamlesslyRotated && !this.mIsWallpaper) {
            applyCrop(clipRect2, recoveringMemory);
            this.mSurfaceController.setMatrixInTransaction(this.mDsDx * w.mHScale * this.mExtraHScale, this.mDtDx * w.mVScale * this.mExtraVScale, this.mDtDy * w.mHScale * this.mExtraHScale, this.mDsDy * w.mVScale * this.mExtraVScale, recoveringMemory);
        }
        if (this.mSurfaceResized) {
            this.mReportSurfaceResized = true;
            this.mWin.getDisplayContent().pendingLayoutChanges |= 4;
        }
    }

    void getContainerRect(Rect rect) {
        Task task = this.mWin.getTask();
        if (task != null) {
            task.getDimBounds(rect);
            return;
        }
        rect.bottom = 0;
        rect.right = 0;
        rect.top = 0;
        rect.left = 0;
    }

    void prepareSurfaceLocked(boolean recoveringMemory) {
        WindowState w = this.mWin;
        if (!hasSurface()) {
            if (w.getOrientationChanging() && w.isGoneForLayoutLw()) {
                if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                    String protoLogParam0 = String.valueOf(w);
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1756082882, 0, null, protoLogParam0);
                }
                w.setOrientationChanging(false);
                return;
            }
            return;
        }
        boolean displayed = false;
        computeShownFrameLocked();
        setSurfaceBoundariesLocked(recoveringMemory);
        if (this.mIsWallpaper && !w.mWallpaperVisible) {
            hide("prepareSurfaceLocked");
        } else if (!w.isParentWindowHidden() && w.isOnScreen()) {
            if (this.mLastAlpha != this.mShownAlpha || this.mLastDsDx != this.mDsDx || this.mLastDtDx != this.mDtDx || this.mLastDsDy != this.mDsDy || this.mLastDtDy != this.mDtDy || w.mLastHScale != w.mHScale || w.mLastVScale != w.mVScale || this.mLastHidden) {
                this.mLastAlpha = this.mShownAlpha;
                this.mLastDsDx = this.mDsDx;
                this.mLastDtDx = this.mDtDx;
                this.mLastDsDy = this.mDsDy;
                this.mLastDtDy = this.mDtDy;
                w.mLastHScale = w.mHScale;
                w.mLastVScale = w.mVScale;
                if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
                    String protoLogParam1 = String.valueOf(this.mSurfaceController);
                    double protoLogParam2 = this.mShownAlpha;
                    double protoLogParam3 = this.mDsDx;
                    double protoLogParam4 = w.mHScale;
                    double protoLogParam5 = this.mDtDx;
                    double protoLogParam6 = w.mVScale;
                    double protoLogParam7 = this.mDtDy;
                    double protoLogParam8 = w.mHScale;
                    double protoLogParam9 = this.mDsDy;
                    double protoLogParam10 = w.mVScale;
                    String protoLogParam11 = String.valueOf(w);
                    ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, 1747941491, 699048, null, protoLogParam1, Double.valueOf(protoLogParam2), Double.valueOf(protoLogParam3), Double.valueOf(protoLogParam4), Double.valueOf(protoLogParam5), Double.valueOf(protoLogParam6), Double.valueOf(protoLogParam7), Double.valueOf(protoLogParam8), Double.valueOf(protoLogParam9), Double.valueOf(protoLogParam10), protoLogParam11);
                }
                boolean prepared = true;
                if (this.mIsWallpaper) {
                    setWallpaperPositionAndScale(this.mXOffset, this.mYOffset, this.mWallpaperScale, recoveringMemory);
                } else {
                    prepared = this.mSurfaceController.prepareToShowInTransaction(this.mShownAlpha, this.mDsDx * w.mHScale * this.mExtraHScale, this.mDtDx * w.mVScale * this.mExtraVScale, this.mDtDy * w.mHScale * this.mExtraHScale, this.mDsDy * w.mVScale * this.mExtraVScale, recoveringMemory);
                }
                if (prepared && this.mDrawState == 4 && this.mLastHidden) {
                    if (showSurfaceRobustlyLocked()) {
                        markPreservedSurfaceForDestroy();
                        this.mAnimator.requestRemovalOfReplacedWindows(w);
                        this.mLastHidden = false;
                        if (this.mIsWallpaper) {
                            w.dispatchWallpaperVisibility(true);
                        }
                        DisplayContent displayContent = w.getDisplayContent();
                        if (!displayContent.getLastHasContent()) {
                            displayContent.pendingLayoutChanges |= 8;
                        }
                    } else {
                        w.setOrientationChanging(false);
                    }
                }
                if (hasSurface()) {
                    w.mToken.hasVisible = true;
                }
                displayed = true;
            } else {
                displayed = true;
            }
        } else {
            hide("prepareSurfaceLocked");
            this.mWallpaperControllerLocked.hideWallpapers(w);
            if (w.getOrientationChanging() && w.isGoneForLayoutLw()) {
                w.setOrientationChanging(false);
                if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                    String protoLogParam12 = String.valueOf(w);
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1756082882, 0, null, protoLogParam12);
                }
            }
        }
        if (w.getOrientationChanging()) {
            if (!w.isDrawnLw()) {
                this.mAnimator.mBulkUpdateParams &= -5;
                this.mAnimator.mLastWindowFreezeSource = w;
                if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                    String protoLogParam13 = String.valueOf(w);
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -1130891072, 0, null, protoLogParam13);
                }
            } else {
                w.setOrientationChanging(false);
                if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                    String protoLogParam14 = String.valueOf(w);
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 916191774, 0, null, protoLogParam14);
                }
            }
        }
        if (displayed) {
            w.mToken.hasVisible = true;
        }
    }

    void setTransparentRegionHintLocked(Region region) {
        WindowSurfaceController windowSurfaceController = this.mSurfaceController;
        if (windowSurfaceController == null) {
            Slog.w(TAG, "setTransparentRegionHint: null mSurface after mHasSurface true");
        } else {
            windowSurfaceController.setTransparentRegionHint(region);
        }
    }

    boolean setWallpaperOffset(int dx, int dy, float scale) {
        if (this.mXOffset == dx && this.mYOffset == dy && Float.compare(this.mWallpaperScale, scale) == 0) {
            return false;
        }
        this.mXOffset = dx;
        this.mYOffset = dy;
        this.mWallpaperScale = scale;
        if (this.mSurfaceController != null) {
            try {
                try {
                    this.mService.openSurfaceTransaction();
                    setWallpaperPositionAndScale(dx, dy, scale, false);
                } catch (RuntimeException e) {
                    Slog.w(TAG, "Error positioning surface of " + this.mWin + " pos=(" + dx + "," + dy + ")", e);
                }
                return true;
            } finally {
                this.mService.closeSurfaceTransaction("setWallpaperOffset");
            }
        }
        return true;
    }

    private void setWallpaperPositionAndScale(int dx, int dy, float scale, boolean recoveringMemory) {
        DisplayInfo displayInfo = this.mWin.getDisplayInfo();
        Matrix matrix = this.mWin.mTmpMatrix;
        matrix.setTranslate(dx, dy);
        matrix.postScale(scale, scale, displayInfo.logicalWidth / 2.0f, displayInfo.logicalHeight / 2.0f);
        matrix.getValues(this.mWin.mTmpMatrixArray);
        matrix.reset();
        this.mSurfaceController.setPositionInTransaction(this.mWin.mTmpMatrixArray[2], this.mWin.mTmpMatrixArray[5], recoveringMemory);
        this.mSurfaceController.setMatrixInTransaction(this.mDsDx * this.mWin.mTmpMatrixArray[0] * this.mWin.mHScale * this.mExtraHScale, this.mDtDx * this.mWin.mTmpMatrixArray[3] * this.mWin.mVScale * this.mExtraVScale, this.mDtDy * this.mWin.mTmpMatrixArray[1] * this.mWin.mHScale * this.mExtraHScale, this.mDsDy * this.mWin.mTmpMatrixArray[4] * this.mWin.mVScale * this.mExtraVScale, recoveringMemory);
        applyCrop(null, recoveringMemory);
    }

    boolean tryChangeFormatInPlaceLocked() {
        if (this.mSurfaceController == null) {
            return false;
        }
        WindowManager.LayoutParams attrs = this.mWin.getAttrs();
        boolean isHwAccelerated = (attrs.flags & 16777216) != 0;
        int format = isHwAccelerated ? -3 : attrs.format;
        if (format != this.mSurfaceFormat) {
            return false;
        }
        setOpaqueLocked(!PixelFormat.formatHasAlpha(attrs.format));
        return true;
    }

    void setOpaqueLocked(boolean isOpaque) {
        WindowSurfaceController windowSurfaceController = this.mSurfaceController;
        if (windowSurfaceController == null) {
            return;
        }
        windowSurfaceController.setOpaque(isOpaque);
    }

    void setSecureLocked(boolean isSecure) {
        WindowSurfaceController windowSurfaceController = this.mSurfaceController;
        if (windowSurfaceController == null) {
            return;
        }
        windowSurfaceController.setSecure(isSecure);
    }

    void setColorSpaceAgnosticLocked(boolean agnostic) {
        WindowSurfaceController windowSurfaceController = this.mSurfaceController;
        if (windowSurfaceController == null) {
            return;
        }
        windowSurfaceController.setColorSpaceAgnostic(agnostic);
    }

    private boolean showSurfaceRobustlyLocked() {
        if (this.mWin.getWindowConfiguration().windowsAreScaleable()) {
            this.mSurfaceController.forceScaleableInTransaction(true);
        }
        boolean shown = this.mSurfaceController.showRobustlyInTransaction();
        if (!shown) {
            return false;
        }
        WindowSurfaceController windowSurfaceController = this.mPendingDestroySurface;
        if (windowSurfaceController != null && this.mDestroyPreservedSurfaceUponRedraw) {
            SurfaceControl pendingSurfaceControl = windowSurfaceController.mSurfaceControl;
            this.mPostDrawTransaction.reparent(pendingSurfaceControl, null);
            if (!this.mPendingDestroySurface.mChildrenDetached) {
                this.mPostDrawTransaction.reparentChildren(this.mPendingDestroySurface.getClientViewRootSurface(), this.mSurfaceController.mSurfaceControl);
            }
        }
        SurfaceControl.mergeToGlobalTransaction(this.mPostDrawTransaction);
        return true;
    }

    void applyEnterAnimationLocked() {
        int transit;
        if (this.mWin.mSkipEnterAnimationForSeamlessReplacement) {
            return;
        }
        if (this.mEnterAnimationPending) {
            this.mEnterAnimationPending = false;
            transit = 1;
        } else {
            transit = 3;
        }
        if (this.mAttrType != 1) {
            applyAnimationLocked(transit, true);
        }
        if (this.mService.mAccessibilityController != null) {
            this.mService.mAccessibilityController.onWindowTransitionLocked(this.mWin, transit);
        }
    }

    boolean applyAnimationLocked(int transit, boolean isEntrance) {
        if (this.mWin.isAnimating() && this.mAnimationIsEntrance == isEntrance) {
            return true;
        }
        boolean isImeWindow = this.mWin.mAttrs.type == 2011;
        if (isEntrance && isImeWindow) {
            this.mWin.getDisplayContent().adjustForImeIfNeeded();
            this.mWin.setDisplayLayoutNeeded();
            this.mService.mWindowPlacerLocked.requestTraversal();
        }
        if (this.mWin.mToken.okToAnimate()) {
            int anim = this.mWin.getDisplayContent().getDisplayPolicy().selectAnimation(this.mWin, transit);
            int attr = -1;
            Animation a = null;
            if (anim != 0) {
                if (anim != -1) {
                    Trace.traceBegin(32L, "WSA#loadAnimation");
                    a = AnimationUtils.loadAnimation(this.mContext, anim);
                    Trace.traceEnd(32L);
                }
            } else {
                if (transit == 1) {
                    attr = 0;
                } else if (transit == 2) {
                    attr = 1;
                } else if (transit == 3) {
                    attr = 2;
                } else if (transit == 4) {
                    attr = 3;
                }
                if (attr >= 0) {
                    a = this.mWin.getDisplayContent().mAppTransition.loadAnimationAttr(this.mWin.mAttrs, attr, 0);
                }
            }
            if (a != null) {
                Trace.traceBegin(32L, "WSA#startAnimation");
                this.mWin.startAnimation(a);
                Trace.traceEnd(32L);
                this.mAnimationIsEntrance = isEntrance;
            }
        } else if (!isImeWindow) {
            this.mWin.cancelAnimation();
        }
        if (!isEntrance && isImeWindow) {
            this.mWin.getDisplayContent().adjustForImeIfNeeded();
        }
        return this.mWin.isAnimating(0, 16);
    }

    void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        this.mLastClipRect.dumpDebug(proto, 1146756268033L);
        WindowSurfaceController windowSurfaceController = this.mSurfaceController;
        if (windowSurfaceController != null) {
            windowSurfaceController.dumpDebug(proto, 1146756268034L);
        }
        proto.write(1159641169923L, this.mDrawState);
        this.mSystemDecorRect.dumpDebug(proto, 1146756268036L);
        proto.end(token);
    }

    public void dump(PrintWriter pw, String prefix, boolean dumpAll) {
        if (this.mAnimationIsEntrance) {
            pw.print(prefix);
            pw.print(" mAnimationIsEntrance=");
            pw.print(this.mAnimationIsEntrance);
        }
        WindowSurfaceController windowSurfaceController = this.mSurfaceController;
        if (windowSurfaceController != null) {
            windowSurfaceController.dump(pw, prefix, dumpAll);
        }
        if (dumpAll) {
            pw.print(prefix);
            pw.print("mDrawState=");
            pw.print(drawStateToString());
            pw.print(prefix);
            pw.print(" mLastHidden=");
            pw.println(this.mLastHidden);
            pw.print(prefix);
            pw.print("mEnterAnimationPending=" + this.mEnterAnimationPending);
            pw.print(prefix);
            pw.print("mSystemDecorRect=");
            this.mSystemDecorRect.printShortString(pw);
            pw.print(" mLastClipRect=");
            this.mLastClipRect.printShortString(pw);
            if (!this.mLastFinalClipRect.isEmpty()) {
                pw.print(" mLastFinalClipRect=");
                this.mLastFinalClipRect.printShortString(pw);
            }
            pw.println();
        }
        if (this.mPendingDestroySurface != null) {
            pw.print(prefix);
            pw.print("mPendingDestroySurface=");
            pw.println(this.mPendingDestroySurface);
        }
        if (this.mSurfaceResized || this.mSurfaceDestroyDeferred) {
            pw.print(prefix);
            pw.print("mSurfaceResized=");
            pw.print(this.mSurfaceResized);
            pw.print(" mSurfaceDestroyDeferred=");
            pw.println(this.mSurfaceDestroyDeferred);
        }
        if (this.mShownAlpha != 1.0f || this.mAlpha != 1.0f || this.mLastAlpha != 1.0f) {
            pw.print(prefix);
            pw.print("mShownAlpha=");
            pw.print(this.mShownAlpha);
            pw.print(" mAlpha=");
            pw.print(this.mAlpha);
            pw.print(" mLastAlpha=");
            pw.println(this.mLastAlpha);
        }
        if (this.mHaveMatrix || this.mWin.mGlobalScale != 1.0f) {
            pw.print(prefix);
            pw.print("mGlobalScale=");
            pw.print(this.mWin.mGlobalScale);
            pw.print(" mDsDx=");
            pw.print(this.mDsDx);
            pw.print(" mDtDx=");
            pw.print(this.mDtDx);
            pw.print(" mDtDy=");
            pw.print(this.mDtDy);
            pw.print(" mDsDy=");
            pw.println(this.mDsDy);
        }
    }

    public String toString() {
        StringBuffer sb = new StringBuffer("WindowStateAnimator{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(' ');
        sb.append(this.mWin.mAttrs.getTitle());
        sb.append('}');
        return sb.toString();
    }

    void reclaimSomeSurfaceMemory(String operation, boolean secure) throws Throwable {
        this.mService.mRoot.reclaimSomeSurfaceMemory(this, operation, secure);
    }

    boolean getShown() {
        WindowSurfaceController windowSurfaceController = this.mSurfaceController;
        if (windowSurfaceController != null) {
            return windowSurfaceController.getShown();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    void destroySurface() {
        try {
            try {
                if (this.mSurfaceController != null) {
                    this.mSurfaceController.destroyNotInTransaction();
                }
            } catch (RuntimeException e) {
                Slog.w(TAG, "Exception thrown when destroying surface " + this + " surface " + this.mSurfaceController + " session " + this.mSession + ": " + e);
            }
        } finally {
            this.mWin.setHasSurface(false);
            this.mSurfaceController = null;
            this.mDrawState = 0;
        }
    }

    boolean isForceScaled() {
        Task task = this.mWin.getTask();
        if (task != null && task.getStack().isForceScaled()) {
            return true;
        }
        return this.mForceScaleUntilResize;
    }

    void detachChildren() {
        WindowSurfaceController windowSurfaceController;
        if (this.mWin.mAttrs.type != 3 && (windowSurfaceController = this.mSurfaceController) != null) {
            windowSurfaceController.detachChildren();
        }
    }

    void setOffsetPositionForStackResize(boolean offsetPositionForStackResize) {
        this.mOffsetPositionForStackResize = offsetPositionForStackResize;
    }

    SurfaceControl getClientViewRootSurface() {
        if (!hasSurface()) {
            return null;
        }
        return this.mSurfaceController.getClientViewRootSurface();
    }
}
