package com.android.server.wm;

import android.R;
import android.animation.ArgbEvaluator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Trace;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import android.view.DisplayInfo;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.wm.utils.RotationAnimationUtils;
import java.io.PrintWriter;
import java.util.Objects;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
class ScreenRotationAnimation {
    private static final int SCREEN_FREEZE_LAYER_BASE = 2010000;
    private static final int SCREEN_FREEZE_LAYER_ENTER = 2010000;
    private static final String TAG = "WindowManager";
    private boolean mAnimRunning;
    private SurfaceControl mBackColorSurface;
    private final Context mContext;
    private int mCurRotation;
    private final DisplayContent mDisplayContent;
    private float mEndLuma;
    private SurfaceControl mEnterBlackFrameLayer;
    private BlackFrame mEnteringBlackFrame;
    private boolean mFinishAnimReady;
    private long mFinishAnimStartTime;
    private boolean mForceDefaultOrientation;
    private int mHeight;
    private final int mOriginalHeight;
    private final int mOriginalRotation;
    private final int mOriginalWidth;
    private Animation mRotateAlphaAnimation;
    private Animation mRotateEnterAnimation;
    private Animation mRotateExitAnimation;
    private SurfaceControl mScreenshotLayer;
    private final WindowManagerService mService;
    private float mStartLuma;
    private boolean mStarted;
    private SurfaceRotationAnimationController mSurfaceRotationAnimationController;
    private int mWidth;
    private final float[] mTmpFloats = new float[9];
    private final Transformation mRotateExitTransformation = new Transformation();
    private final Transformation mRotateEnterTransformation = new Transformation();
    private final Transformation mEnterTransformation = new Transformation();
    private final Matrix mSnapshotInitialMatrix = new Matrix();
    private Rect mOriginalDisplayRect = new Rect();
    private Rect mCurrentDisplayRect = new Rect();

    ScreenRotationAnimation(DisplayContent displayContent, int originalRotation) {
        int originalWidth;
        int originalHeight;
        WindowManagerService windowManagerService = displayContent.mWmService;
        this.mService = windowManagerService;
        this.mContext = windowManagerService.mContext;
        this.mDisplayContent = displayContent;
        displayContent.getBounds(this.mOriginalDisplayRect);
        DisplayInfo displayInfo = displayContent.getDisplayInfo();
        int realOriginalRotation = displayInfo.rotation;
        if (displayContent.getDisplayRotation().isFixedToUserRotation()) {
            this.mForceDefaultOrientation = true;
            originalWidth = displayContent.mBaseDisplayWidth;
            originalHeight = displayContent.mBaseDisplayHeight;
        } else {
            originalWidth = displayInfo.logicalWidth;
            originalHeight = displayInfo.logicalHeight;
        }
        if (realOriginalRotation == 1 || realOriginalRotation == 3) {
            this.mWidth = originalHeight;
            this.mHeight = originalWidth;
        } else {
            this.mWidth = originalWidth;
            this.mHeight = originalHeight;
        }
        this.mOriginalRotation = originalRotation;
        int delta = DisplayContent.deltaRotation(originalRotation, realOriginalRotation);
        boolean flipped = delta == 1 || delta == 3;
        this.mOriginalWidth = flipped ? originalHeight : originalWidth;
        this.mOriginalHeight = flipped ? originalWidth : originalHeight;
        this.mSurfaceRotationAnimationController = new SurfaceRotationAnimationController();
        boolean isSecure = displayContent.hasSecureWindowOnScreen();
        SurfaceControl.Transaction t = this.mService.mTransactionFactory.get();
        try {
            this.mBackColorSurface = displayContent.makeChildSurface(null).setName("BackColorSurface").setColorLayer().setCallsite("ScreenRotationAnimation").build();
            this.mScreenshotLayer = displayContent.makeOverlay().setName("RotationLayer").setBufferSize(this.mWidth, this.mHeight).setSecure(isSecure).setCallsite("ScreenRotationAnimation").build();
            this.mEnterBlackFrameLayer = displayContent.makeOverlay().setName("EnterBlackFrameLayer").setContainerLayer().setCallsite("ScreenRotationAnimation").build();
            SurfaceControl.Transaction t2 = this.mService.mTransactionFactory.get();
            t2.setOverrideScalingMode(this.mScreenshotLayer, 1);
            t2.apply(true);
            int displayId = displayContent.getDisplayId();
            Surface surface = this.mService.mSurfaceFactory.get();
            surface.copyFrom(this.mScreenshotLayer);
            SurfaceControl.ScreenshotGraphicBuffer gb = this.mService.mDisplayManagerInternal.systemScreenshot(displayId);
            if (gb != null) {
                Trace.traceBegin(32L, "ScreenRotationAnimation#getMedianBorderLuma");
                this.mStartLuma = RotationAnimationUtils.getMedianBorderLuma(gb.getGraphicBuffer(), gb.getColorSpace());
                Trace.traceEnd(32L);
                try {
                    surface.attachAndQueueBufferWithColorSpace(gb.getGraphicBuffer(), gb.getColorSpace());
                } catch (RuntimeException e) {
                    Slog.w(TAG, "Failed to attach screenshot - " + e.getMessage());
                }
                if (gb.containsSecureLayers()) {
                    t.setSecure(this.mScreenshotLayer, true);
                }
                t.setLayer(this.mScreenshotLayer, 2010000);
                t.reparent(this.mBackColorSurface, displayContent.getSurfaceControl());
                t.setLayer(this.mBackColorSurface, -1);
                t.setColor(this.mBackColorSurface, new float[]{this.mStartLuma, this.mStartLuma, this.mStartLuma});
                t.setAlpha(this.mBackColorSurface, 1.0f);
                t.show(this.mScreenshotLayer);
                t.show(this.mBackColorSurface);
            } else {
                Slog.w(TAG, "Unable to take screenshot of display " + displayId);
            }
            surface.destroy();
        } catch (Surface.OutOfResourcesException e2) {
            Slog.w(TAG, "Unable to allocate freeze surface", e2);
        }
        if (ProtoLog$Cache.WM_SHOW_SURFACE_ALLOC_enabled) {
            String protoLogParam0 = String.valueOf(this.mScreenshotLayer);
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_SURFACE_ALLOC, 10608884, 0, null, protoLogParam0);
        }
        setRotation(t, realOriginalRotation);
        t.apply();
    }

    public void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1133871366145L, this.mStarted);
        proto.write(1133871366146L, this.mAnimRunning);
        proto.end(token);
    }

    boolean hasScreenshot() {
        return this.mScreenshotLayer != null;
    }

    private void setRotationTransform(SurfaceControl.Transaction t, Matrix matrix) {
        if (this.mScreenshotLayer == null) {
            return;
        }
        matrix.getValues(this.mTmpFloats);
        float[] fArr = this.mTmpFloats;
        float x = fArr[2];
        float y = fArr[5];
        if (this.mForceDefaultOrientation) {
            this.mDisplayContent.getBounds(this.mCurrentDisplayRect);
            x -= this.mCurrentDisplayRect.left;
            y -= this.mCurrentDisplayRect.top;
        }
        t.setPosition(this.mScreenshotLayer, x, y);
        SurfaceControl surfaceControl = this.mScreenshotLayer;
        float[] fArr2 = this.mTmpFloats;
        t.setMatrix(surfaceControl, fArr2[0], fArr2[3], fArr2[1], fArr2[4]);
        t.setAlpha(this.mScreenshotLayer, 1.0f);
        t.show(this.mScreenshotLayer);
    }

    public void printTo(String prefix, PrintWriter pw) {
        pw.print(prefix);
        pw.print("mSurface=");
        pw.print(this.mScreenshotLayer);
        pw.print(" mWidth=");
        pw.print(this.mWidth);
        pw.print(" mHeight=");
        pw.println(this.mHeight);
        pw.print(prefix);
        pw.print("mEnteringBlackFrame=");
        pw.println(this.mEnteringBlackFrame);
        BlackFrame blackFrame = this.mEnteringBlackFrame;
        if (blackFrame != null) {
            blackFrame.printTo(prefix + "  ", pw);
        }
        pw.print(prefix);
        pw.print("mCurRotation=");
        pw.print(this.mCurRotation);
        pw.print(" mOriginalRotation=");
        pw.println(this.mOriginalRotation);
        pw.print(prefix);
        pw.print("mOriginalWidth=");
        pw.print(this.mOriginalWidth);
        pw.print(" mOriginalHeight=");
        pw.println(this.mOriginalHeight);
        pw.print(prefix);
        pw.print("mStarted=");
        pw.print(this.mStarted);
        pw.print(" mAnimRunning=");
        pw.print(this.mAnimRunning);
        pw.print(" mFinishAnimReady=");
        pw.print(this.mFinishAnimReady);
        pw.print(" mFinishAnimStartTime=");
        pw.println(this.mFinishAnimStartTime);
        pw.print(prefix);
        pw.print("mRotateExitAnimation=");
        pw.print(this.mRotateExitAnimation);
        pw.print(" ");
        this.mRotateExitTransformation.printShortString(pw);
        pw.println();
        pw.print(prefix);
        pw.print("mRotateEnterAnimation=");
        pw.print(this.mRotateEnterAnimation);
        pw.print(" ");
        this.mRotateEnterTransformation.printShortString(pw);
        pw.println();
        pw.print(prefix);
        pw.print("mEnterTransformation=");
        this.mEnterTransformation.printShortString(pw);
        pw.println();
        pw.print(prefix);
        pw.print("mSnapshotInitialMatrix=");
        this.mSnapshotInitialMatrix.printShortString(pw);
        pw.println();
        pw.print(prefix);
        pw.print("mForceDefaultOrientation=");
        pw.print(this.mForceDefaultOrientation);
        if (this.mForceDefaultOrientation) {
            pw.print(" mOriginalDisplayRect=");
            pw.print(this.mOriginalDisplayRect.toShortString());
            pw.print(" mCurrentDisplayRect=");
            pw.println(this.mCurrentDisplayRect.toShortString());
        }
    }

    public void setRotation(SurfaceControl.Transaction t, int rotation) {
        this.mCurRotation = rotation;
        int delta = DisplayContent.deltaRotation(rotation, 0);
        RotationAnimationUtils.createRotationMatrix(delta, this.mWidth, this.mHeight, this.mSnapshotInitialMatrix);
        setRotationTransform(t, this.mSnapshotInitialMatrix);
    }

    private boolean startAnimation(SurfaceControl.Transaction t, long maxAnimationDuration, float animationScale, int finalWidth, int finalHeight, int exitAnim, int enterAnim) {
        boolean customAnim;
        if (this.mScreenshotLayer == null) {
            return false;
        }
        if (this.mStarted) {
            return true;
        }
        this.mStarted = true;
        int delta = DisplayContent.deltaRotation(this.mCurRotation, this.mOriginalRotation);
        if (exitAnim != 0 && enterAnim != 0) {
            customAnim = true;
            this.mRotateExitAnimation = AnimationUtils.loadAnimation(this.mContext, exitAnim);
            this.mRotateEnterAnimation = AnimationUtils.loadAnimation(this.mContext, enterAnim);
            this.mRotateAlphaAnimation = AnimationUtils.loadAnimation(this.mContext, R.anim.screen_rotate_180_frame);
        } else {
            customAnim = false;
            if (delta == 0) {
                this.mRotateExitAnimation = AnimationUtils.loadAnimation(this.mContext, R.anim.screen_rotate_0_enter);
                this.mRotateEnterAnimation = AnimationUtils.loadAnimation(this.mContext, R.anim.rounded_window_exit);
            } else if (delta == 1) {
                this.mRotateExitAnimation = AnimationUtils.loadAnimation(this.mContext, R.anim.screen_rotate_plus_90_enter);
                this.mRotateEnterAnimation = AnimationUtils.loadAnimation(this.mContext, R.anim.screen_rotate_minus_90_exit);
            } else if (delta == 2) {
                this.mRotateExitAnimation = AnimationUtils.loadAnimation(this.mContext, R.anim.screen_rotate_180_enter);
                this.mRotateEnterAnimation = AnimationUtils.loadAnimation(this.mContext, R.anim.screen_rotate_0_exit);
            } else if (delta == 3) {
                this.mRotateExitAnimation = AnimationUtils.loadAnimation(this.mContext, R.anim.screen_rotate_minus_90_enter);
                this.mRotateEnterAnimation = AnimationUtils.loadAnimation(this.mContext, R.anim.screen_rotate_finish_frame);
            }
        }
        if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            String protoLogParam0 = String.valueOf(customAnim);
            String protoLogParam1 = String.valueOf(Surface.rotationToString(this.mCurRotation));
            String protoLogParam2 = String.valueOf(Surface.rotationToString(this.mOriginalRotation));
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ORIENTATION, -177040661, 0, null, protoLogParam0, protoLogParam1, protoLogParam2);
        }
        this.mRotateExitAnimation.initialize(finalWidth, finalHeight, this.mOriginalWidth, this.mOriginalHeight);
        this.mRotateExitAnimation.restrictDuration(maxAnimationDuration);
        this.mRotateExitAnimation.scaleCurrentDuration(animationScale);
        this.mRotateEnterAnimation.initialize(finalWidth, finalHeight, this.mOriginalWidth, this.mOriginalHeight);
        this.mRotateEnterAnimation.restrictDuration(maxAnimationDuration);
        this.mRotateEnterAnimation.scaleCurrentDuration(animationScale);
        this.mAnimRunning = false;
        this.mFinishAnimReady = false;
        this.mFinishAnimStartTime = -1L;
        if (customAnim) {
            this.mRotateAlphaAnimation.restrictDuration(maxAnimationDuration);
            this.mRotateAlphaAnimation.scaleCurrentDuration(animationScale);
        }
        if (customAnim && this.mEnteringBlackFrame == null) {
            try {
                Rect outer = new Rect(-finalWidth, -finalHeight, finalWidth * 2, finalHeight * 2);
                Rect inner = new Rect(0, 0, finalWidth, finalHeight);
                this.mEnteringBlackFrame = new BlackFrame(this.mService.mTransactionFactory, t, outer, inner, 2010000, this.mDisplayContent, false, this.mEnterBlackFrameLayer);
            } catch (Surface.OutOfResourcesException e) {
                Slog.w(TAG, "Unable to allocate black surface", e);
            }
        }
        if (customAnim) {
            this.mSurfaceRotationAnimationController.startCustomAnimation();
            return true;
        }
        this.mSurfaceRotationAnimationController.startScreenRotationAnimation();
        return true;
    }

    public boolean dismiss(SurfaceControl.Transaction t, long maxAnimationDuration, float animationScale, int finalWidth, int finalHeight, int exitAnim, int enterAnim) {
        if (this.mScreenshotLayer == null) {
            return false;
        }
        if (!this.mStarted) {
            this.mEndLuma = RotationAnimationUtils.getLumaOfSurfaceControl(this.mDisplayContent.getDisplay(), this.mDisplayContent.getWindowingLayer());
            startAnimation(t, maxAnimationDuration, animationScale, finalWidth, finalHeight, exitAnim, enterAnim);
        }
        if (!this.mStarted) {
            return false;
        }
        this.mFinishAnimReady = true;
        return true;
    }

    public void kill() {
        SurfaceRotationAnimationController surfaceRotationAnimationController = this.mSurfaceRotationAnimationController;
        if (surfaceRotationAnimationController != null) {
            surfaceRotationAnimationController.cancel();
            this.mSurfaceRotationAnimationController = null;
        }
        if (this.mScreenshotLayer != null) {
            if (ProtoLog$Cache.WM_SHOW_SURFACE_ALLOC_enabled) {
                String protoLogParam0 = String.valueOf(this.mScreenshotLayer);
                ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_SURFACE_ALLOC, 1089714158, 0, null, protoLogParam0);
            }
            SurfaceControl.Transaction t = this.mService.mTransactionFactory.get();
            if (this.mScreenshotLayer.isValid()) {
                t.remove(this.mScreenshotLayer);
            }
            this.mScreenshotLayer = null;
            SurfaceControl surfaceControl = this.mEnterBlackFrameLayer;
            if (surfaceControl != null) {
                if (surfaceControl.isValid()) {
                    t.remove(this.mEnterBlackFrameLayer);
                }
                this.mEnterBlackFrameLayer = null;
            }
            SurfaceControl surfaceControl2 = this.mBackColorSurface;
            if (surfaceControl2 != null) {
                if (surfaceControl2.isValid()) {
                    t.remove(this.mBackColorSurface);
                }
                this.mBackColorSurface = null;
            }
            t.apply();
        }
        BlackFrame blackFrame = this.mEnteringBlackFrame;
        if (blackFrame != null) {
            blackFrame.kill();
            this.mEnteringBlackFrame = null;
        }
        Animation animation = this.mRotateExitAnimation;
        if (animation != null) {
            animation.cancel();
            this.mRotateExitAnimation = null;
        }
        Animation animation2 = this.mRotateEnterAnimation;
        if (animation2 != null) {
            animation2.cancel();
            this.mRotateEnterAnimation = null;
        }
        Animation animation3 = this.mRotateAlphaAnimation;
        if (animation3 != null) {
            animation3.cancel();
            this.mRotateAlphaAnimation = null;
        }
    }

    public boolean isAnimating() {
        SurfaceRotationAnimationController surfaceRotationAnimationController = this.mSurfaceRotationAnimationController;
        return surfaceRotationAnimationController != null && surfaceRotationAnimationController.isAnimating();
    }

    public boolean isRotating() {
        return this.mCurRotation != this.mOriginalRotation;
    }

    public Transformation getEnterTransformation() {
        return this.mEnterTransformation;
    }

    class SurfaceRotationAnimationController {
        private SurfaceAnimator mDisplayAnimator;
        private SurfaceAnimator mEnterBlackFrameAnimator;
        private SurfaceAnimator mRotateScreenAnimator;
        private SurfaceAnimator mScreenshotRotationAnimator;

        SurfaceRotationAnimationController() {
        }

        void startCustomAnimation() {
            try {
                ScreenRotationAnimation.this.mService.mSurfaceAnimationRunner.deferStartingAnimations();
                this.mRotateScreenAnimator = startScreenshotAlphaAnimation();
                this.mDisplayAnimator = startDisplayRotation();
                if (ScreenRotationAnimation.this.mEnteringBlackFrame != null) {
                    this.mEnterBlackFrameAnimator = startEnterBlackFrameAnimation();
                }
            } finally {
                ScreenRotationAnimation.this.mService.mSurfaceAnimationRunner.continueStartingAnimations();
            }
        }

        void startScreenRotationAnimation() {
            try {
                ScreenRotationAnimation.this.mService.mSurfaceAnimationRunner.deferStartingAnimations();
                this.mDisplayAnimator = startDisplayRotation();
                this.mScreenshotRotationAnimator = startScreenshotRotationAnimation();
                startColorAnimation();
            } finally {
                ScreenRotationAnimation.this.mService.mSurfaceAnimationRunner.continueStartingAnimations();
            }
        }

        private SimpleSurfaceAnimatable.Builder initializeBuilder() {
            SimpleSurfaceAnimatable.Builder builder = new SimpleSurfaceAnimatable.Builder();
            final DisplayContent displayContent = ScreenRotationAnimation.this.mDisplayContent;
            Objects.requireNonNull(displayContent);
            SimpleSurfaceAnimatable.Builder pendingTransactionSupplier = builder.setPendingTransactionSupplier(new Supplier() { // from class: com.android.server.wm.-$$Lambda$CkqCuQmAGdLOVExbosZfF3sXdHQ
                @Override // java.util.function.Supplier
                public final Object get() {
                    return displayContent.getPendingTransaction();
                }
            });
            final DisplayContent displayContent2 = ScreenRotationAnimation.this.mDisplayContent;
            Objects.requireNonNull(displayContent2);
            SimpleSurfaceAnimatable.Builder commitTransactionRunnable = pendingTransactionSupplier.setCommitTransactionRunnable(new Runnable() { // from class: com.android.server.wm.-$$Lambda$CvWmQaXToMTllLb80KQ9WdJHYXo
                @Override // java.lang.Runnable
                public final void run() {
                    displayContent2.commitPendingTransaction();
                }
            });
            final DisplayContent displayContent3 = ScreenRotationAnimation.this.mDisplayContent;
            Objects.requireNonNull(displayContent3);
            return commitTransactionRunnable.setAnimationLeashSupplier(new Supplier() { // from class: com.android.server.wm.-$$Lambda$IamNNBZp056cXLajnE4zHKSqj-c
                @Override // java.util.function.Supplier
                public final Object get() {
                    return displayContent3.makeOverlay();
                }
            });
        }

        private SurfaceAnimator startDisplayRotation() {
            return startAnimation(initializeBuilder().setAnimationLeashParent(ScreenRotationAnimation.this.mDisplayContent.getSurfaceControl()).setSurfaceControl(ScreenRotationAnimation.this.mDisplayContent.getWindowingLayer()).setParentSurfaceControl(ScreenRotationAnimation.this.mDisplayContent.getSurfaceControl()).setWidth(ScreenRotationAnimation.this.mDisplayContent.getSurfaceWidth()).setHeight(ScreenRotationAnimation.this.mDisplayContent.getSurfaceHeight()).build(), createWindowAnimationSpec(ScreenRotationAnimation.this.mRotateEnterAnimation), new $$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c(this));
        }

        private SurfaceAnimator startScreenshotAlphaAnimation() {
            return startAnimation(initializeBuilder().setSurfaceControl(ScreenRotationAnimation.this.mScreenshotLayer).setAnimationLeashParent(ScreenRotationAnimation.this.mDisplayContent.getOverlayLayer()).setWidth(ScreenRotationAnimation.this.mDisplayContent.getSurfaceWidth()).setHeight(ScreenRotationAnimation.this.mDisplayContent.getSurfaceHeight()).build(), createWindowAnimationSpec(ScreenRotationAnimation.this.mRotateAlphaAnimation), new $$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c(this));
        }

        private SurfaceAnimator startEnterBlackFrameAnimation() {
            return startAnimation(initializeBuilder().setSurfaceControl(ScreenRotationAnimation.this.mEnterBlackFrameLayer).setAnimationLeashParent(ScreenRotationAnimation.this.mDisplayContent.getOverlayLayer()).build(), createWindowAnimationSpec(ScreenRotationAnimation.this.mRotateEnterAnimation), new $$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c(this));
        }

        private SurfaceAnimator startScreenshotRotationAnimation() {
            return startAnimation(initializeBuilder().setSurfaceControl(ScreenRotationAnimation.this.mScreenshotLayer).setAnimationLeashParent(ScreenRotationAnimation.this.mDisplayContent.getOverlayLayer()).build(), createWindowAnimationSpec(ScreenRotationAnimation.this.mRotateExitAnimation), new $$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c(this));
        }

        private void startColorAnimation() {
            final int colorTransitionMs = ScreenRotationAnimation.this.mContext.getResources().getInteger(R.integer.config_lidOpenRotation);
            SurfaceAnimationRunner runner = ScreenRotationAnimation.this.mService.mSurfaceAnimationRunner;
            final float[] rgbTmpFloat = new float[3];
            final int startColor = Color.rgb(ScreenRotationAnimation.this.mStartLuma, ScreenRotationAnimation.this.mStartLuma, ScreenRotationAnimation.this.mStartLuma);
            final int endColor = Color.rgb(ScreenRotationAnimation.this.mEndLuma, ScreenRotationAnimation.this.mEndLuma, ScreenRotationAnimation.this.mEndLuma);
            final long duration = ((long) colorTransitionMs) * ((long) ScreenRotationAnimation.this.mService.getCurrentAnimatorScale());
            final ArgbEvaluator va = ArgbEvaluator.getInstance();
            runner.startAnimation(new LocalAnimationAdapter.AnimationSpec() { // from class: com.android.server.wm.ScreenRotationAnimation.SurfaceRotationAnimationController.1
                @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
                public long getDuration() {
                    return duration;
                }

                @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
                public void apply(SurfaceControl.Transaction t, SurfaceControl leash, long currentPlayTime) {
                    float fraction = getFraction(currentPlayTime);
                    int color = ((Integer) va.evaluate(fraction, Integer.valueOf(startColor), Integer.valueOf(endColor))).intValue();
                    Color middleColor = Color.valueOf(color);
                    rgbTmpFloat[0] = middleColor.red();
                    rgbTmpFloat[1] = middleColor.green();
                    rgbTmpFloat[2] = middleColor.blue();
                    if (leash.isValid()) {
                        t.setColor(leash, rgbTmpFloat);
                    }
                }

                @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
                public void dump(PrintWriter pw, String prefix) {
                    pw.println(prefix + "startLuma=" + ScreenRotationAnimation.this.mStartLuma + " endLuma=" + ScreenRotationAnimation.this.mEndLuma + " durationMs=" + colorTransitionMs);
                }

                @Override // com.android.server.wm.LocalAnimationAdapter.AnimationSpec
                public void dumpDebugInner(ProtoOutputStream proto) {
                    long token = proto.start(1146756268036L);
                    proto.write(1108101562369L, ScreenRotationAnimation.this.mStartLuma);
                    proto.write(1108101562370L, ScreenRotationAnimation.this.mEndLuma);
                    proto.write(1112396529667L, colorTransitionMs);
                    proto.end(token);
                }
            }, ScreenRotationAnimation.this.mBackColorSurface, ScreenRotationAnimation.this.mDisplayContent.getPendingTransaction(), null);
        }

        private WindowAnimationSpec createWindowAnimationSpec(Animation mAnimation) {
            return new WindowAnimationSpec(mAnimation, new Point(0, 0), false, 0.0f);
        }

        private SurfaceAnimator startAnimation(SurfaceAnimator.Animatable animatable, LocalAnimationAdapter.AnimationSpec animationSpec, SurfaceAnimator.OnAnimationFinishedCallback animationFinishedCallback) {
            SurfaceAnimator animator = new SurfaceAnimator(animatable, animationFinishedCallback, ScreenRotationAnimation.this.mService);
            LocalAnimationAdapter localAnimationAdapter = new LocalAnimationAdapter(animationSpec, ScreenRotationAnimation.this.mService.mSurfaceAnimationRunner);
            animator.startAnimation(ScreenRotationAnimation.this.mDisplayContent.getPendingTransaction(), localAnimationAdapter, false, 2);
            return animator;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onAnimationEnd(int type, AnimationAdapter anim) throws Throwable {
            synchronized (ScreenRotationAnimation.this.mService.mGlobalLock) {
                try {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        if (isAnimating()) {
                            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                                long protoLogParam0 = type;
                                String protoLogParam1 = String.valueOf(this.mDisplayAnimator != null ? Boolean.valueOf(this.mDisplayAnimator.isAnimating()) : null);
                                String protoLogParam2 = String.valueOf(this.mEnterBlackFrameAnimator != null ? Boolean.valueOf(this.mEnterBlackFrameAnimator.isAnimating()) : null);
                                String protoLogParam3 = String.valueOf(this.mRotateScreenAnimator != null ? Boolean.valueOf(this.mRotateScreenAnimator.isAnimating()) : null);
                                String protoLogParam4 = String.valueOf(this.mScreenshotRotationAnimator != null ? Boolean.valueOf(this.mScreenshotRotationAnimator.isAnimating()) : null);
                                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1346895820, 1, null, Long.valueOf(protoLogParam0), protoLogParam1, protoLogParam2, protoLogParam3, protoLogParam4);
                            }
                            WindowManagerService.resetPriorityAfterLockedSection();
                            return;
                        }
                        if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ORIENTATION, 200829729, 0, null, (Object[]) null);
                        }
                        this.mEnterBlackFrameAnimator = null;
                        this.mScreenshotRotationAnimator = null;
                        this.mRotateScreenAnimator = null;
                        WindowAnimator windowAnimator = ScreenRotationAnimation.this.mService.mAnimator;
                        windowAnimator.mBulkUpdateParams = 1 | windowAnimator.mBulkUpdateParams;
                        ScreenRotationAnimation.this.kill();
                        ScreenRotationAnimation.this.mService.updateRotation(false, false);
                        WindowManagerService.resetPriorityAfterLockedSection();
                    } catch (Throwable th) {
                        th = th;
                        WindowManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        public void cancel() {
            SurfaceAnimator surfaceAnimator = this.mEnterBlackFrameAnimator;
            if (surfaceAnimator != null) {
                surfaceAnimator.cancelAnimation();
            }
            SurfaceAnimator surfaceAnimator2 = this.mScreenshotRotationAnimator;
            if (surfaceAnimator2 != null) {
                surfaceAnimator2.cancelAnimation();
            }
            SurfaceAnimator surfaceAnimator3 = this.mRotateScreenAnimator;
            if (surfaceAnimator3 != null) {
                surfaceAnimator3.cancelAnimation();
            }
            SurfaceAnimator surfaceAnimator4 = this.mDisplayAnimator;
            if (surfaceAnimator4 != null) {
                surfaceAnimator4.cancelAnimation();
            }
            if (ScreenRotationAnimation.this.mBackColorSurface != null) {
                ScreenRotationAnimation.this.mService.mSurfaceAnimationRunner.onAnimationCancelled(ScreenRotationAnimation.this.mBackColorSurface);
            }
        }

        public boolean isAnimating() {
            SurfaceAnimator surfaceAnimator;
            SurfaceAnimator surfaceAnimator2;
            SurfaceAnimator surfaceAnimator3;
            SurfaceAnimator surfaceAnimator4 = this.mDisplayAnimator;
            return (surfaceAnimator4 != null && surfaceAnimator4.isAnimating()) || ((surfaceAnimator = this.mEnterBlackFrameAnimator) != null && surfaceAnimator.isAnimating()) || (((surfaceAnimator2 = this.mRotateScreenAnimator) != null && surfaceAnimator2.isAnimating()) || ((surfaceAnimator3 = this.mScreenshotRotationAnimator) != null && surfaceAnimator3.isAnimating()));
        }
    }
}
