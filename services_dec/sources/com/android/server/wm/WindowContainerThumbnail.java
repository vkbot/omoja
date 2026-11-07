package com.android.server.wm;

import android.graphics.GraphicBuffer;
import android.graphics.Point;
import android.os.Process;
import android.util.proto.ProtoOutputStream;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.animation.Animation;
import com.android.server.job.controllers.JobStatus;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
class WindowContainerThumbnail implements SurfaceAnimator.Animatable {
    private static final String TAG = "WindowManager";
    private final int mHeight;
    private final boolean mRelative;
    private final SurfaceAnimator mSurfaceAnimator;
    private SurfaceControl mSurfaceControl;
    private final int mWidth;
    private final WindowContainer mWindowContainer;

    WindowContainerThumbnail(Supplier<Surface> surfaceFactory, SurfaceControl.Transaction t, WindowContainer container, GraphicBuffer thumbnailHeader) {
        this(surfaceFactory, t, container, thumbnailHeader, false);
    }

    WindowContainerThumbnail(Supplier<Surface> surfaceFactory, SurfaceControl.Transaction t, WindowContainer container, GraphicBuffer thumbnailHeader, boolean relative) {
        this(t, container, thumbnailHeader, relative, surfaceFactory.get(), null);
    }

    WindowContainerThumbnail(SurfaceControl.Transaction t, WindowContainer container, GraphicBuffer thumbnailHeader, boolean relative, Surface drawSurface, SurfaceAnimator animator) {
        this.mWindowContainer = container;
        this.mRelative = relative;
        if (animator != null) {
            this.mSurfaceAnimator = animator;
        } else {
            this.mSurfaceAnimator = new SurfaceAnimator(this, new SurfaceAnimator.OnAnimationFinishedCallback() { // from class: com.android.server.wm.-$$Lambda$WindowContainerThumbnail$TAAowaUKTiUY1j0FFlQQfUHXn0U
                @Override // com.android.server.wm.SurfaceAnimator.OnAnimationFinishedCallback
                public final void onAnimationFinished(int i, AnimationAdapter animationAdapter) {
                    this.f$0.onAnimationFinished(i, animationAdapter);
                }
            }, container.mWmService);
        }
        this.mWidth = thumbnailHeader.getWidth();
        this.mHeight = thumbnailHeader.getHeight();
        WindowContainer windowContainer = this.mWindowContainer;
        this.mSurfaceControl = windowContainer.makeChildSurface(windowContainer.getTopChild()).setName("thumbnail anim: " + this.mWindowContainer.toString()).setBufferSize(this.mWidth, this.mHeight).setFormat(-3).setMetadata(2, this.mWindowContainer.getWindowingMode()).setMetadata(1, Process.myUid()).setCallsite("WindowContainerThumbnail").build();
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            String protoLogParam0 = String.valueOf(this.mSurfaceControl);
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, 531242746, 0, null, protoLogParam0);
        }
        drawSurface.copyFrom(this.mSurfaceControl);
        drawSurface.attachAndQueueBuffer(thumbnailHeader);
        drawSurface.release();
        t.show(this.mSurfaceControl);
        t.setLayer(this.mSurfaceControl, Integer.MAX_VALUE);
        if (relative) {
            t.reparent(this.mSurfaceControl, this.mWindowContainer.getSurfaceControl());
        }
    }

    void startAnimation(SurfaceControl.Transaction t, Animation anim) {
        startAnimation(t, anim, (Point) null);
    }

    void startAnimation(SurfaceControl.Transaction t, Animation anim, Point position) {
        anim.restrictDuration(JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
        anim.scaleCurrentDuration(this.mWindowContainer.mWmService.getTransitionAnimationScaleLocked());
        this.mSurfaceAnimator.startAnimation(t, new LocalAnimationAdapter(new WindowAnimationSpec(anim, position, this.mWindowContainer.getDisplayContent().mAppTransition.canSkipFirstFrame(), this.mWindowContainer.getDisplayContent().getWindowCornerRadius()), this.mWindowContainer.mWmService.mSurfaceAnimationRunner), false, 8);
    }

    void startAnimation(SurfaceControl.Transaction t, AnimationAdapter anim, boolean hidden) {
        this.mSurfaceAnimator.startAnimation(t, anim, hidden, 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAnimationFinished(int type, AnimationAdapter anim) {
    }

    void setShowing(SurfaceControl.Transaction pendingTransaction, boolean show) {
        if (show) {
            pendingTransaction.show(this.mSurfaceControl);
        } else {
            pendingTransaction.hide(this.mSurfaceControl);
        }
    }

    void destroy() {
        this.mSurfaceAnimator.cancelAnimation();
        getPendingTransaction().remove(this.mSurfaceControl);
        this.mSurfaceControl = null;
    }

    void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1120986464257L, this.mWidth);
        proto.write(1120986464258L, this.mHeight);
        if (this.mSurfaceAnimator.isAnimating()) {
            this.mSurfaceAnimator.dumpDebug(proto, 1146756268035L);
        }
        proto.end(token);
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl.Transaction getPendingTransaction() {
        return this.mWindowContainer.getPendingTransaction();
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public void commitPendingTransaction() {
        this.mWindowContainer.commitPendingTransaction();
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public void onAnimationLeashCreated(SurfaceControl.Transaction t, SurfaceControl leash) {
        t.setLayer(leash, Integer.MAX_VALUE);
        if (this.mRelative) {
            t.reparent(leash, this.mWindowContainer.getSurfaceControl());
        }
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public void onAnimationLeashLost(SurfaceControl.Transaction t) {
        t.hide(this.mSurfaceControl);
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl.Builder makeAnimationLeash() {
        WindowContainer windowContainer = this.mWindowContainer;
        return windowContainer.makeChildSurface(windowContainer.getTopChild());
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl getSurfaceControl() {
        return this.mSurfaceControl;
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl getAnimationLeashParent() {
        return this.mWindowContainer.getAnimationLeashParent();
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl getParentSurfaceControl() {
        return this.mWindowContainer.getParentSurfaceControl();
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public int getSurfaceWidth() {
        return this.mWidth;
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public int getSurfaceHeight() {
        return this.mHeight;
    }
}
