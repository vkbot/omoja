package com.android.server.wm;

import android.graphics.GraphicBuffer;
import android.graphics.Rect;
import android.view.Surface;
import android.view.SurfaceControl;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
class SurfaceFreezer {
    private final Freezable mAnimatable;
    private SurfaceControl mLeash;
    private final WindowManagerService mWmService;
    Snapshot mSnapshot = null;
    final Rect mFreezeBounds = new Rect();

    public interface Freezable extends SurfaceAnimator.Animatable {
        SurfaceControl getFreezeSnapshotTarget();
    }

    SurfaceFreezer(Freezable animatable, WindowManagerService service) {
        this.mAnimatable = animatable;
        this.mWmService = service;
    }

    void freeze(SurfaceControl.Transaction t, Rect startBounds) {
        GraphicBuffer snapshot;
        this.mFreezeBounds.set(startBounds);
        Freezable freezable = this.mAnimatable;
        SurfaceControl surfaceControlCreateAnimationLeash = SurfaceAnimator.createAnimationLeash(freezable, freezable.getSurfaceControl(), t, 2, startBounds.width(), startBounds.height(), startBounds.left, startBounds.top, false, this.mWmService.mTransactionFactory);
        this.mLeash = surfaceControlCreateAnimationLeash;
        this.mAnimatable.onAnimationLeashCreated(t, surfaceControlCreateAnimationLeash);
        SurfaceControl freezeTarget = this.mAnimatable.getFreezeSnapshotTarget();
        if (freezeTarget != null && (snapshot = createSnapshotBuffer(freezeTarget, startBounds)) != null) {
            this.mSnapshot = new Snapshot(this.mWmService.mSurfaceFactory, t, snapshot, this.mLeash);
        }
    }

    SurfaceControl takeLeashForAnimation() {
        SurfaceControl out = this.mLeash;
        this.mLeash = null;
        return out;
    }

    void unfreeze(SurfaceControl.Transaction t) {
        Snapshot snapshot = this.mSnapshot;
        if (snapshot != null) {
            snapshot.cancelAnimation(t, false);
        }
        if (this.mLeash == null) {
            return;
        }
        SurfaceControl leash = this.mLeash;
        this.mLeash = null;
        boolean scheduleAnim = SurfaceAnimator.removeLeash(t, this.mAnimatable, leash, false);
        if (scheduleAnim) {
            this.mWmService.scheduleAnimationLocked();
        }
    }

    boolean hasLeash() {
        return this.mLeash != null;
    }

    private static GraphicBuffer createSnapshotBuffer(SurfaceControl target, Rect bounds) {
        Rect cropBounds = null;
        if (bounds != null) {
            cropBounds = new Rect(bounds);
            cropBounds.offsetTo(0, 0);
        }
        SurfaceControl.ScreenshotGraphicBuffer screenshotBuffer = SurfaceControl.captureLayers(target, cropBounds, 1.0f, 1);
        GraphicBuffer buffer = screenshotBuffer != null ? screenshotBuffer.getGraphicBuffer() : null;
        if (buffer == null || buffer.getWidth() <= 1 || buffer.getHeight() <= 1) {
            return null;
        }
        return buffer;
    }

    class Snapshot {
        private AnimationAdapter mAnimation;
        private SurfaceAnimator.OnAnimationFinishedCallback mFinishedCallback;
        private SurfaceControl mSurfaceControl;

        Snapshot(Supplier<Surface> surfaceFactory, SurfaceControl.Transaction t, GraphicBuffer thumbnailHeader, SurfaceControl parent) {
            Surface drawSurface = surfaceFactory.get();
            int width = thumbnailHeader.getWidth();
            int height = thumbnailHeader.getHeight();
            this.mSurfaceControl = SurfaceFreezer.this.mAnimatable.makeAnimationLeash().setName("snapshot anim: " + SurfaceFreezer.this.mAnimatable.toString()).setBufferSize(width, height).setFormat(-3).setParent(parent).setCallsite("SurfaceFreezer.Snapshot").build();
            if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
                String protoLogParam0 = String.valueOf(this.mSurfaceControl);
                ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, -668956537, 0, null, protoLogParam0);
            }
            drawSurface.copyFrom(this.mSurfaceControl);
            drawSurface.attachAndQueueBuffer(thumbnailHeader);
            drawSurface.release();
            t.show(this.mSurfaceControl);
            t.setLayer(this.mSurfaceControl, Integer.MAX_VALUE);
        }

        void destroy(SurfaceControl.Transaction t) {
            SurfaceControl surfaceControl = this.mSurfaceControl;
            if (surfaceControl == null) {
                return;
            }
            t.remove(surfaceControl);
            this.mSurfaceControl = null;
        }

        void startAnimation(SurfaceControl.Transaction t, AnimationAdapter anim, int type, SurfaceAnimator.OnAnimationFinishedCallback animationFinishedCallback) {
            cancelAnimation(t, true);
            this.mAnimation = anim;
            this.mFinishedCallback = animationFinishedCallback;
            SurfaceControl surfaceControl = this.mSurfaceControl;
            if (surfaceControl == null) {
                cancelAnimation(t, false);
            } else {
                anim.startAnimation(surfaceControl, t, type, animationFinishedCallback);
            }
        }

        void cancelAnimation(SurfaceControl.Transaction t, boolean restarting) {
            SurfaceControl leash = this.mSurfaceControl;
            AnimationAdapter animation = this.mAnimation;
            SurfaceAnimator.OnAnimationFinishedCallback animationFinishedCallback = this.mFinishedCallback;
            this.mAnimation = null;
            this.mFinishedCallback = null;
            if (animation != null) {
                animation.onAnimationCancelled(leash);
                if (!restarting && animationFinishedCallback != null) {
                    animationFinishedCallback.onAnimationFinished(1, animation);
                }
            }
            if (!restarting) {
                destroy(t);
            }
        }
    }
}
