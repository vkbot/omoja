package com.android.server.wm;

import android.R;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.ArraySet;
import android.util.MathUtils;
import android.util.Slog;
import android.view.DisplayInfo;
import android.view.SurfaceControl;
import android.view.WindowManager;
import android.view.animation.Animation;
import com.android.internal.util.ToBooleanFunction;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
class WallpaperController {
    private static final String TAG = "WindowManager";
    private static final int WALLPAPER_DRAW_NORMAL = 0;
    private static final int WALLPAPER_DRAW_PENDING = 1;
    private static final long WALLPAPER_DRAW_PENDING_TIMEOUT_DURATION = 500;
    private static final int WALLPAPER_DRAW_TIMEOUT = 2;
    private static final long WALLPAPER_TIMEOUT = 150;
    private static final long WALLPAPER_TIMEOUT_RECOVERY = 10000;
    private final DisplayContent mDisplayContent;
    private long mLastWallpaperTimeoutTime;
    private final float mMaxWallpaperScale;
    private WindowManagerService mService;
    private boolean mShouldUpdateZoom;
    private WindowState mTmpTopWallpaper;
    private WindowState mWaitingOnWallpaper;
    private final ArrayList<WallpaperWindowToken> mWallpaperTokens = new ArrayList<>();
    private WindowState mWallpaperTarget = null;
    private WindowState mPrevWallpaperTarget = null;
    private float mLastWallpaperX = -1.0f;
    private float mLastWallpaperY = -1.0f;
    private float mLastWallpaperXStep = -1.0f;
    private float mLastWallpaperYStep = -1.0f;
    private float mLastWallpaperZoomOut = 0.0f;
    private int mLastWallpaperDisplayOffsetX = Integer.MIN_VALUE;
    private int mLastWallpaperDisplayOffsetY = Integer.MIN_VALUE;
    WindowState mDeferredHideWallpaper = null;
    private int mWallpaperDrawState = 0;
    private final FindWallpaperTargetResult mFindResults = new FindWallpaperTargetResult();
    private final ToBooleanFunction<WindowState> mFindWallpaperTargetFunction = new ToBooleanFunction() { // from class: com.android.server.wm.-$$Lambda$WallpaperController$6pruPGLeSJAwNl9vGfC87eso21w
        public final boolean apply(Object obj) {
            return this.f$0.lambda$new$0$WallpaperController((WindowState) obj);
        }
    };
    private Consumer<WindowState> mComputeMaxZoomOutFunction = new Consumer() { // from class: com.android.server.wm.-$$Lambda$WallpaperController$0Scukj2yhz26p26xa_96t0qdaCE
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            this.f$0.lambda$new$1$WallpaperController((WindowState) obj);
        }
    };

    public /* synthetic */ boolean lambda$new$0$WallpaperController(WindowState w) {
        if (w.mAttrs.type == 2013) {
            if (this.mFindResults.topWallpaper == null || this.mFindResults.resetTopWallpaper) {
                this.mFindResults.setTopWallpaper(w);
                this.mFindResults.resetTopWallpaper = false;
            }
            return false;
        }
        this.mFindResults.resetTopWallpaper = true;
        if (w.mActivityRecord != null && !w.mActivityRecord.isVisible() && !w.mActivityRecord.isAnimating(3)) {
            return false;
        }
        if (w.mWillReplaceWindow && this.mWallpaperTarget == null && !this.mFindResults.useTopWallpaperAsTarget) {
            this.mFindResults.setUseTopWallpaperAsTarget(true);
        }
        WindowContainer animatingContainer = w.mActivityRecord != null ? w.mActivityRecord.getAnimatingContainer() : null;
        boolean keyguardGoingAwayWithWallpaper = animatingContainer != null && animatingContainer.isAnimating(3) && AppTransition.isKeyguardGoingAwayTransit(animatingContainer.mTransit) && (animatingContainer.mTransitFlags & 4) != 0;
        boolean needsShowWhenLockedWallpaper = false;
        if ((w.mAttrs.flags & 524288) != 0 && this.mService.mPolicy.isKeyguardLocked() && this.mService.mPolicy.isKeyguardOccluded()) {
            needsShowWhenLockedWallpaper = (isFullscreen(w.mAttrs) && (w.mActivityRecord == null || w.mActivityRecord.fillsParent())) ? false : true;
        }
        if (keyguardGoingAwayWithWallpaper || needsShowWhenLockedWallpaper) {
            this.mFindResults.setUseTopWallpaperAsTarget(true);
        }
        RecentsAnimationController recentsAnimationController = this.mService.getRecentsAnimationController();
        boolean animationWallpaper = (animatingContainer == null || animatingContainer.getAnimation() == null || !animatingContainer.getAnimation().getShowWallpaper()) ? false : true;
        boolean hasWallpaper = (w.mAttrs.flags & 1048576) != 0 || animationWallpaper;
        boolean isRecentsTransitionTarget = recentsAnimationController != null && recentsAnimationController.isWallpaperVisible(w);
        if (isRecentsTransitionTarget) {
            this.mFindResults.setWallpaperTarget(w);
            return true;
        }
        if (!hasWallpaper || !w.isOnScreen() || (this.mWallpaperTarget != w && !w.isDrawFinishedLw())) {
            return false;
        }
        this.mFindResults.setWallpaperTarget(w);
        if (w == this.mWallpaperTarget) {
            w.isAnimating(3);
        }
        return true;
    }

    public /* synthetic */ void lambda$new$1$WallpaperController(WindowState windowState) {
        if (!windowState.mIsWallpaper && Float.compare(windowState.mWallpaperZoomOut, this.mLastWallpaperZoomOut) > 0) {
            this.mLastWallpaperZoomOut = windowState.mWallpaperZoomOut;
        }
    }

    WallpaperController(WindowManagerService service, DisplayContent displayContent) {
        this.mService = service;
        this.mDisplayContent = displayContent;
        this.mMaxWallpaperScale = service.mContext.getResources().getFloat(R.dimen.alert_dialog_round_padding);
    }

    WindowState getWallpaperTarget() {
        return this.mWallpaperTarget;
    }

    boolean isWallpaperTarget(WindowState win) {
        return win == this.mWallpaperTarget;
    }

    boolean isBelowWallpaperTarget(WindowState win) {
        WindowState windowState = this.mWallpaperTarget;
        return windowState != null && windowState.mLayer >= win.mBaseLayer;
    }

    boolean isWallpaperVisible() {
        return isWallpaperVisible(this.mWallpaperTarget);
    }

    void startWallpaperAnimation(Animation a) {
        for (int curTokenNdx = this.mWallpaperTokens.size() - 1; curTokenNdx >= 0; curTokenNdx--) {
            WallpaperWindowToken token = this.mWallpaperTokens.get(curTokenNdx);
            token.startAnimation(a);
        }
    }

    private boolean isWallpaperVisible(WindowState wallpaperTarget) {
        return (wallpaperTarget == null && this.mPrevWallpaperTarget == null) ? false : true;
    }

    boolean isWallpaperTargetAnimating() {
        WindowState windowState = this.mWallpaperTarget;
        return windowState != null && windowState.isAnimating(3) && (this.mWallpaperTarget.mActivityRecord == null || !this.mWallpaperTarget.mActivityRecord.isWaitingForTransitionStart());
    }

    void updateWallpaperVisibility() {
        boolean visible = isWallpaperVisible(this.mWallpaperTarget);
        for (int curTokenNdx = this.mWallpaperTokens.size() - 1; curTokenNdx >= 0; curTokenNdx--) {
            WallpaperWindowToken token = this.mWallpaperTokens.get(curTokenNdx);
            token.updateWallpaperVisibility(visible);
        }
    }

    void hideDeferredWallpapersIfNeeded() {
        WindowState windowState = this.mDeferredHideWallpaper;
        if (windowState != null) {
            hideWallpapers(windowState);
            this.mDeferredHideWallpaper = null;
        }
    }

    void hideWallpapers(WindowState winGoingAway) {
        WindowState windowState = this.mWallpaperTarget;
        if (windowState != null && (windowState != winGoingAway || this.mPrevWallpaperTarget != null)) {
            return;
        }
        WindowState windowState2 = this.mWallpaperTarget;
        if (windowState2 != null && windowState2.getDisplayContent().mAppTransition.isRunning()) {
            this.mDeferredHideWallpaper = winGoingAway;
            return;
        }
        boolean wasDeferred = this.mDeferredHideWallpaper == winGoingAway;
        for (int i = this.mWallpaperTokens.size() - 1; i >= 0; i--) {
            WallpaperWindowToken token = this.mWallpaperTokens.get(i);
            token.hideWallpaperToken(wasDeferred, "hideWallpapers");
        }
    }

    /* JADX WARN: Code duplicated, block: B:79:0x012b  */
    /* JADX WARN: Code duplicated, block: B:86:0x013f A[Catch: RemoteException -> 0x015b, TryCatch #4 {RemoteException -> 0x015b, blocks: (B:72:0x0115, B:74:0x011a, B:76:0x011e, B:80:0x012d, B:84:0x0137, B:86:0x013f, B:87:0x0157), top: B:109:0x0115 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:86:0x013f, please report this as an issue */
    boolean updateWallpaperOffset(WindowState wallpaperWin, boolean sync) {
        float wpy;
        int offset;
        int offset2;
        boolean rawChanged;
        long start;
        DisplayInfo displayInfo = wallpaperWin.getDisplayInfo();
        int dw = displayInfo.logicalWidth;
        int dh = displayInfo.logicalHeight;
        boolean rawChanged2 = false;
        float defaultWallpaperX = wallpaperWin.isRtl() ? 1.0f : 0.0f;
        float f = this.mLastWallpaperX;
        if (f < 0.0f) {
            f = defaultWallpaperX;
        }
        float wpx = f;
        float f2 = this.mLastWallpaperXStep;
        if (f2 < 0.0f) {
            f2 = -1.0f;
        }
        float wpxs = f2;
        int availw = (wallpaperWin.getFrameLw().right - wallpaperWin.getFrameLw().left) - dw;
        int offset3 = availw > 0 ? -((int) ((availw * wpx) + 0.5f)) : 0;
        int i = this.mLastWallpaperDisplayOffsetX;
        if (i != Integer.MIN_VALUE) {
            offset3 += i;
        }
        int xOffset = offset3;
        if (wallpaperWin.mWallpaperX != wpx || wallpaperWin.mWallpaperXStep != wpxs) {
            wallpaperWin.mWallpaperX = wpx;
            wallpaperWin.mWallpaperXStep = wpxs;
            rawChanged2 = true;
        }
        float f3 = this.mLastWallpaperY;
        if (f3 < 0.0f) {
            f3 = 0.5f;
        }
        float wpy2 = f3;
        float f4 = this.mLastWallpaperYStep;
        if (f4 < 0.0f) {
            f4 = -1.0f;
        }
        float wpys = f4;
        int availh = (wallpaperWin.getFrameLw().bottom - wallpaperWin.getFrameLw().top) - dh;
        if (availh > 0) {
            wpy = wpy2;
            offset = -((int) ((availh * wpy) + 0.5f));
        } else {
            wpy = wpy2;
            offset = 0;
        }
        int offset4 = this.mLastWallpaperDisplayOffsetY;
        if (offset4 == Integer.MIN_VALUE) {
            offset2 = offset;
        } else {
            offset2 = offset + offset4;
        }
        int yOffset = offset2;
        if (wallpaperWin.mWallpaperY != wpy || wallpaperWin.mWallpaperYStep != wpys) {
            wallpaperWin.mWallpaperY = wpy;
            wallpaperWin.mWallpaperYStep = wpys;
            rawChanged2 = true;
        }
        if (Float.compare(wallpaperWin.mWallpaperZoomOut, this.mLastWallpaperZoomOut) == 0) {
            rawChanged = rawChanged2;
        } else {
            wallpaperWin.mWallpaperZoomOut = this.mLastWallpaperZoomOut;
            rawChanged = true;
        }
        boolean changed = wallpaperWin.mWinAnimator.setWallpaperOffset(xOffset, yOffset, wallpaperWin.mShouldScaleWallpaper ? zoomOutToScale(wallpaperWin.mWallpaperZoomOut) : 1.0f);
        if (rawChanged && (wallpaperWin.mAttrs.privateFlags & 4) != 0) {
            if (sync) {
                try {
                    this.mWaitingOnWallpaper = wallpaperWin;
                    try {
                        try {
                            try {
                                try {
                                    try {
                                        wallpaperWin.mClient.dispatchWallpaperOffsets(wallpaperWin.mWallpaperX, wallpaperWin.mWallpaperY, wallpaperWin.mWallpaperXStep, wallpaperWin.mWallpaperYStep, wallpaperWin.mWallpaperZoomOut, sync);
                                        if (sync && this.mWaitingOnWallpaper != null) {
                                            start = SystemClock.uptimeMillis();
                                            if (this.mLastWallpaperTimeoutTime + 10000 < start) {
                                                try {
                                                    this.mService.mGlobalLock.wait(150L);
                                                } catch (InterruptedException e) {
                                                }
                                                if (150 + start < SystemClock.uptimeMillis()) {
                                                    Slog.i(TAG, "Timeout waiting for wallpaper to offset: " + wallpaperWin);
                                                    this.mLastWallpaperTimeoutTime = start;
                                                }
                                            }
                                            this.mWaitingOnWallpaper = null;
                                        }
                                    } catch (RemoteException e2) {
                                    }
                                } catch (RemoteException e3) {
                                }
                            } catch (RemoteException e4) {
                            }
                        } catch (RemoteException e5) {
                        }
                    } catch (RemoteException e6) {
                    }
                } catch (RemoteException e7) {
                }
            } else {
                wallpaperWin.mClient.dispatchWallpaperOffsets(wallpaperWin.mWallpaperX, wallpaperWin.mWallpaperY, wallpaperWin.mWallpaperXStep, wallpaperWin.mWallpaperYStep, wallpaperWin.mWallpaperZoomOut, sync);
                if (sync) {
                    start = SystemClock.uptimeMillis();
                    if (this.mLastWallpaperTimeoutTime + 10000 < start) {
                        this.mService.mGlobalLock.wait(150L);
                        if (150 + start < SystemClock.uptimeMillis()) {
                            Slog.i(TAG, "Timeout waiting for wallpaper to offset: " + wallpaperWin);
                            this.mLastWallpaperTimeoutTime = start;
                        }
                    }
                    this.mWaitingOnWallpaper = null;
                }
            }
        }
        return changed;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setWindowWallpaperPosition(WindowState window, float x, float y, float xStep, float yStep) {
        if (window.mWallpaperX != x || window.mWallpaperY != y) {
            window.mWallpaperX = x;
            window.mWallpaperY = y;
            window.mWallpaperXStep = xStep;
            window.mWallpaperYStep = yStep;
            updateWallpaperOffsetLocked(window, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setWallpaperZoomOut(WindowState window, float zoom) {
        if (Float.compare(window.mWallpaperZoomOut, zoom) != 0) {
            window.mWallpaperZoomOut = zoom;
            this.mShouldUpdateZoom = true;
            updateWallpaperOffsetLocked(window, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setShouldZoomOutWallpaper(WindowState window, boolean shouldZoom) {
        if (shouldZoom != window.mShouldScaleWallpaper) {
            window.mShouldScaleWallpaper = shouldZoom;
            updateWallpaperOffsetLocked(window, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setWindowWallpaperDisplayOffset(WindowState window, int x, int y) {
        if (window.mWallpaperDisplayOffsetX != x || window.mWallpaperDisplayOffsetY != y) {
            window.mWallpaperDisplayOffsetX = x;
            window.mWallpaperDisplayOffsetY = y;
            updateWallpaperOffsetLocked(window, true);
        }
    }

    Bundle sendWindowWallpaperCommand(WindowState window, String action, int x, int y, int z, Bundle extras, boolean sync) {
        if (window == this.mWallpaperTarget || window == this.mPrevWallpaperTarget) {
            for (int curTokenNdx = this.mWallpaperTokens.size() - 1; curTokenNdx >= 0; curTokenNdx--) {
                WallpaperWindowToken token = this.mWallpaperTokens.get(curTokenNdx);
                token.sendWindowWallpaperCommand(action, x, y, z, extras, sync);
            }
            return null;
        }
        return null;
    }

    private void updateWallpaperOffsetLocked(WindowState changingTarget, boolean sync) {
        WindowState target = this.mWallpaperTarget;
        if (target != null) {
            if (target.mWallpaperX >= 0.0f) {
                this.mLastWallpaperX = target.mWallpaperX;
            } else if (changingTarget.mWallpaperX >= 0.0f) {
                this.mLastWallpaperX = changingTarget.mWallpaperX;
            }
            if (target.mWallpaperY >= 0.0f) {
                this.mLastWallpaperY = target.mWallpaperY;
            } else if (changingTarget.mWallpaperY >= 0.0f) {
                this.mLastWallpaperY = changingTarget.mWallpaperY;
            }
            computeLastWallpaperZoomOut();
            if (target.mWallpaperDisplayOffsetX != Integer.MIN_VALUE) {
                this.mLastWallpaperDisplayOffsetX = target.mWallpaperDisplayOffsetX;
            } else if (changingTarget.mWallpaperDisplayOffsetX != Integer.MIN_VALUE) {
                this.mLastWallpaperDisplayOffsetX = changingTarget.mWallpaperDisplayOffsetX;
            }
            if (target.mWallpaperDisplayOffsetY != Integer.MIN_VALUE) {
                this.mLastWallpaperDisplayOffsetY = target.mWallpaperDisplayOffsetY;
            } else if (changingTarget.mWallpaperDisplayOffsetY != Integer.MIN_VALUE) {
                this.mLastWallpaperDisplayOffsetY = changingTarget.mWallpaperDisplayOffsetY;
            }
            if (target.mWallpaperXStep >= 0.0f) {
                this.mLastWallpaperXStep = target.mWallpaperXStep;
            } else if (changingTarget.mWallpaperXStep >= 0.0f) {
                this.mLastWallpaperXStep = changingTarget.mWallpaperXStep;
            }
            if (target.mWallpaperYStep >= 0.0f) {
                this.mLastWallpaperYStep = target.mWallpaperYStep;
            } else if (changingTarget.mWallpaperYStep >= 0.0f) {
                this.mLastWallpaperYStep = changingTarget.mWallpaperYStep;
            }
        }
        for (int curTokenNdx = this.mWallpaperTokens.size() - 1; curTokenNdx >= 0; curTokenNdx--) {
            this.mWallpaperTokens.get(curTokenNdx).updateWallpaperOffset(sync);
        }
    }

    void clearLastWallpaperTimeoutTime() {
        this.mLastWallpaperTimeoutTime = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void wallpaperCommandComplete(IBinder window) {
        WindowState windowState = this.mWaitingOnWallpaper;
        if (windowState != null && windowState.mClient.asBinder() == window) {
            this.mWaitingOnWallpaper = null;
            this.mService.mGlobalLock.notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void wallpaperOffsetsComplete(IBinder window) {
        WindowState windowState = this.mWaitingOnWallpaper;
        if (windowState != null && windowState.mClient.asBinder() == window) {
            this.mWaitingOnWallpaper = null;
            this.mService.mGlobalLock.notifyAll();
        }
    }

    private void findWallpaperTarget() {
        this.mFindResults.reset();
        if (this.mDisplayContent.getDefaultTaskDisplayArea().isStackVisible(5)) {
            this.mFindResults.setUseTopWallpaperAsTarget(true);
        }
        this.mDisplayContent.forAllWindows(this.mFindWallpaperTargetFunction, true);
        if (this.mFindResults.wallpaperTarget == null && this.mFindResults.useTopWallpaperAsTarget) {
            FindWallpaperTargetResult findWallpaperTargetResult = this.mFindResults;
            findWallpaperTargetResult.setWallpaperTarget(findWallpaperTargetResult.topWallpaper);
        }
    }

    private boolean isFullscreen(WindowManager.LayoutParams attrs) {
        return attrs.x == 0 && attrs.y == 0 && attrs.width == -1 && attrs.height == -1;
    }

    private void updateWallpaperWindowsTarget(FindWallpaperTargetResult result) {
        WindowState windowState;
        WindowState wallpaperTarget = result.wallpaperTarget;
        if (this.mWallpaperTarget == wallpaperTarget || ((windowState = this.mPrevWallpaperTarget) != null && windowState == wallpaperTarget)) {
            WindowState prevWallpaperTarget = this.mPrevWallpaperTarget;
            if (prevWallpaperTarget != null && !prevWallpaperTarget.isAnimatingLw()) {
                this.mPrevWallpaperTarget = null;
                this.mWallpaperTarget = wallpaperTarget;
                return;
            }
            return;
        }
        this.mPrevWallpaperTarget = null;
        final WindowState prevWallpaperTarget2 = this.mWallpaperTarget;
        this.mWallpaperTarget = wallpaperTarget;
        if (wallpaperTarget == null || prevWallpaperTarget2 == null) {
            return;
        }
        boolean oldAnim = prevWallpaperTarget2.isAnimatingLw();
        boolean foundAnim = wallpaperTarget.isAnimatingLw();
        if (!foundAnim || !oldAnim || this.mDisplayContent.getWindow(new Predicate() { // from class: com.android.server.wm.-$$Lambda$WallpaperController$BBasRkLKZIyG7orBtnzZo0qYk68
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return WallpaperController.lambda$updateWallpaperWindowsTarget$2(prevWallpaperTarget2, (WindowState) obj);
            }
        }) == null) {
            return;
        }
        boolean newTargetHidden = (wallpaperTarget.mActivityRecord == null || wallpaperTarget.mActivityRecord.mVisibleRequested) ? false : true;
        boolean oldTargetHidden = (prevWallpaperTarget2.mActivityRecord == null || prevWallpaperTarget2.mActivityRecord.mVisibleRequested) ? false : true;
        this.mPrevWallpaperTarget = prevWallpaperTarget2;
        if (newTargetHidden && !oldTargetHidden) {
            this.mWallpaperTarget = prevWallpaperTarget2;
        } else if (newTargetHidden == oldTargetHidden && !this.mDisplayContent.mOpeningApps.contains(wallpaperTarget.mActivityRecord) && (this.mDisplayContent.mOpeningApps.contains(prevWallpaperTarget2.mActivityRecord) || this.mDisplayContent.mClosingApps.contains(prevWallpaperTarget2.mActivityRecord))) {
            this.mWallpaperTarget = prevWallpaperTarget2;
        }
        result.setWallpaperTarget(wallpaperTarget);
    }

    static /* synthetic */ boolean lambda$updateWallpaperWindowsTarget$2(WindowState prevWallpaperTarget, WindowState w) {
        return w == prevWallpaperTarget;
    }

    private void updateWallpaperTokens(boolean visible) {
        for (int curTokenNdx = this.mWallpaperTokens.size() - 1; curTokenNdx >= 0; curTokenNdx--) {
            WallpaperWindowToken token = this.mWallpaperTokens.get(curTokenNdx);
            token.updateWallpaperWindows(visible);
            token.getDisplayContent().assignWindowLayers(false);
        }
    }

    void adjustWallpaperWindows() {
        boolean z = false;
        this.mDisplayContent.mWallpaperMayChange = false;
        findWallpaperTarget();
        updateWallpaperWindowsTarget(this.mFindResults);
        WindowState windowState = this.mWallpaperTarget;
        if (windowState != null && isWallpaperVisible(windowState)) {
            z = true;
        }
        boolean visible = z;
        if (visible) {
            if (this.mWallpaperTarget.mWallpaperX >= 0.0f) {
                this.mLastWallpaperX = this.mWallpaperTarget.mWallpaperX;
                this.mLastWallpaperXStep = this.mWallpaperTarget.mWallpaperXStep;
            }
            computeLastWallpaperZoomOut();
            if (this.mWallpaperTarget.mWallpaperY >= 0.0f) {
                this.mLastWallpaperY = this.mWallpaperTarget.mWallpaperY;
                this.mLastWallpaperYStep = this.mWallpaperTarget.mWallpaperYStep;
            }
            if (this.mWallpaperTarget.mWallpaperDisplayOffsetX != Integer.MIN_VALUE) {
                this.mLastWallpaperDisplayOffsetX = this.mWallpaperTarget.mWallpaperDisplayOffsetX;
            }
            if (this.mWallpaperTarget.mWallpaperDisplayOffsetY != Integer.MIN_VALUE) {
                this.mLastWallpaperDisplayOffsetY = this.mWallpaperTarget.mWallpaperDisplayOffsetY;
            }
        }
        updateWallpaperTokens(visible);
    }

    boolean processWallpaperDrawPendingTimeout() {
        if (this.mWallpaperDrawState == 1) {
            this.mWallpaperDrawState = 2;
            if (this.mService.getRecentsAnimationController() != null) {
                this.mService.getRecentsAnimationController().startAnimation();
            }
            return true;
        }
        return false;
    }

    boolean wallpaperTransitionReady() {
        boolean transitionReady = true;
        boolean wallpaperReady = true;
        for (int curTokenIndex = this.mWallpaperTokens.size() - 1; curTokenIndex >= 0 && 1 != 0; curTokenIndex--) {
            WallpaperWindowToken token = this.mWallpaperTokens.get(curTokenIndex);
            if (token.hasVisibleNotDrawnWallpaper()) {
                wallpaperReady = false;
                if (this.mWallpaperDrawState != 2) {
                    transitionReady = false;
                }
                if (this.mWallpaperDrawState != 0) {
                    break;
                }
                this.mWallpaperDrawState = 1;
                this.mService.mH.removeMessages(39, this);
                this.mService.mH.sendMessageDelayed(this.mService.mH.obtainMessage(39, this), 500L);
                break;
            }
        }
        if (wallpaperReady) {
            this.mWallpaperDrawState = 0;
            this.mService.mH.removeMessages(39, this);
        }
        return transitionReady;
    }

    void adjustWallpaperWindowsForAppTransitionIfNeeded(ArraySet<ActivityRecord> openingApps) {
        boolean adjust = false;
        if ((this.mDisplayContent.pendingLayoutChanges & 4) != 0) {
            adjust = true;
        } else {
            for (int i = openingApps.size() - 1; i >= 0; i--) {
                ActivityRecord activity = openingApps.valueAt(i);
                if (activity.windowsCanBeWallpaperTarget()) {
                    adjust = true;
                    break;
                }
            }
        }
        if (adjust) {
            adjustWallpaperWindows();
        }
    }

    void addWallpaperToken(WallpaperWindowToken token) {
        this.mWallpaperTokens.add(token);
    }

    void removeWallpaperToken(WallpaperWindowToken token) {
        this.mWallpaperTokens.remove(token);
    }

    boolean canScreenshotWallpaper() {
        return canScreenshotWallpaper(getTopVisibleWallpaper());
    }

    private boolean canScreenshotWallpaper(WindowState wallpaperWindowState) {
        return this.mService.mPolicy.isScreenOn() && wallpaperWindowState != null;
    }

    Bitmap screenshotWallpaperLocked() {
        WindowState wallpaperWindowState = getTopVisibleWallpaper();
        if (!canScreenshotWallpaper(wallpaperWindowState)) {
            return null;
        }
        Rect bounds = wallpaperWindowState.getBounds();
        bounds.offsetTo(0, 0);
        SurfaceControl.ScreenshotGraphicBuffer wallpaperBuffer = SurfaceControl.captureLayers(wallpaperWindowState.getSurfaceControl(), bounds, 1.0f);
        if (wallpaperBuffer == null) {
            Slog.w(TAG, "Failed to screenshot wallpaper");
            return null;
        }
        return Bitmap.wrapHardwareBuffer(wallpaperBuffer.getGraphicBuffer(), wallpaperBuffer.getColorSpace());
    }

    private WindowState getTopVisibleWallpaper() {
        this.mTmpTopWallpaper = null;
        for (int curTokenNdx = this.mWallpaperTokens.size() - 1; curTokenNdx >= 0; curTokenNdx--) {
            WallpaperWindowToken token = this.mWallpaperTokens.get(curTokenNdx);
            token.forAllWindows(new ToBooleanFunction() { // from class: com.android.server.wm.-$$Lambda$WallpaperController$_ZznVu8nX-g34s30xj77tgadyZA
                public final boolean apply(Object obj) {
                    return this.f$0.lambda$getTopVisibleWallpaper$3$WallpaperController((WindowState) obj);
                }
            }, true);
        }
        return this.mTmpTopWallpaper;
    }

    public /* synthetic */ boolean lambda$getTopVisibleWallpaper$3$WallpaperController(WindowState w) {
        WindowStateAnimator winAnim = w.mWinAnimator;
        if (winAnim != null && winAnim.getShown() && winAnim.mLastAlpha > 0.0f) {
            this.mTmpTopWallpaper = w;
            return true;
        }
        return false;
    }

    private void computeLastWallpaperZoomOut() {
        if (this.mShouldUpdateZoom) {
            this.mLastWallpaperZoomOut = 0.0f;
            this.mDisplayContent.forAllWindows(this.mComputeMaxZoomOutFunction, true);
            this.mShouldUpdateZoom = false;
        }
    }

    private float zoomOutToScale(float zoom) {
        return MathUtils.lerp(1.0f, this.mMaxWallpaperScale, 1.0f - zoom);
    }

    void dump(PrintWriter pw, String prefix) {
        pw.print(prefix);
        pw.print("displayId=");
        pw.println(this.mDisplayContent.getDisplayId());
        pw.print(prefix);
        pw.print("mWallpaperTarget=");
        pw.println(this.mWallpaperTarget);
        if (this.mPrevWallpaperTarget != null) {
            pw.print(prefix);
            pw.print("mPrevWallpaperTarget=");
            pw.println(this.mPrevWallpaperTarget);
        }
        pw.print(prefix);
        pw.print("mLastWallpaperX=");
        pw.print(this.mLastWallpaperX);
        pw.print(" mLastWallpaperY=");
        pw.println(this.mLastWallpaperY);
        if (this.mLastWallpaperDisplayOffsetX != Integer.MIN_VALUE || this.mLastWallpaperDisplayOffsetY != Integer.MIN_VALUE) {
            pw.print(prefix);
            pw.print("mLastWallpaperDisplayOffsetX=");
            pw.print(this.mLastWallpaperDisplayOffsetX);
            pw.print(" mLastWallpaperDisplayOffsetY=");
            pw.println(this.mLastWallpaperDisplayOffsetY);
        }
    }

    private static final class FindWallpaperTargetResult {
        boolean resetTopWallpaper;
        WindowState topWallpaper;
        boolean useTopWallpaperAsTarget;
        WindowState wallpaperTarget;

        private FindWallpaperTargetResult() {
            this.topWallpaper = null;
            this.useTopWallpaperAsTarget = false;
            this.wallpaperTarget = null;
            this.resetTopWallpaper = false;
        }

        void setTopWallpaper(WindowState win) {
            this.topWallpaper = win;
        }

        void setWallpaperTarget(WindowState win) {
            this.wallpaperTarget = win;
        }

        void setUseTopWallpaperAsTarget(boolean topWallpaperAsTarget) {
            this.useTopWallpaperAsTarget = topWallpaperAsTarget;
        }

        void reset() {
            this.topWallpaper = null;
            this.wallpaperTarget = null;
            this.useTopWallpaperAsTarget = false;
            this.resetTopWallpaper = false;
        }
    }
}
