package com.android.server.wm;

import android.graphics.GraphicBuffer;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.SurfaceSession;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.util.function.Function;

/* JADX INFO: loaded from: classes2.dex */
class TaskScreenshotAnimatable implements SurfaceAnimator.Animatable {
    private static final String TAG = "TaskScreenshotAnim";
    private int mHeight;
    private SurfaceControl mSurfaceControl;
    private Task mTask;
    private int mWidth;

    TaskScreenshotAnimatable(Function<SurfaceSession, SurfaceControl.Builder> surfaceControlFactory, Task task, SurfaceControl.ScreenshotGraphicBuffer screenshotBuffer) {
        GraphicBuffer buffer = screenshotBuffer == null ? null : screenshotBuffer.getGraphicBuffer();
        this.mTask = task;
        this.mWidth = buffer != null ? buffer.getWidth() : 1;
        this.mHeight = buffer != null ? buffer.getHeight() : 1;
        if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
            String protoLogParam0 = String.valueOf(task);
            long protoLogParam1 = this.mWidth;
            long protoLogParam2 = this.mHeight;
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 1984470582, 20, null, protoLogParam0, Long.valueOf(protoLogParam1), Long.valueOf(protoLogParam2));
        }
        this.mSurfaceControl = surfaceControlFactory.apply(new SurfaceSession()).setName("RecentTaskScreenshotSurface").setBufferSize(this.mWidth, this.mHeight).setCallsite("TaskScreenshotAnimatable").build();
        if (buffer != null) {
            Surface surface = new Surface();
            surface.copyFrom(this.mSurfaceControl);
            surface.attachAndQueueBufferWithColorSpace(buffer, screenshotBuffer.getColorSpace());
            surface.release();
            float scale = (this.mTask.getBounds().width() * 1.0f) / this.mWidth;
            this.mSurfaceControl.setMatrix(scale, 0.0f, 0.0f, scale);
        }
        getPendingTransaction().show(this.mSurfaceControl);
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl.Transaction getPendingTransaction() {
        return this.mTask.getPendingTransaction();
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public void commitPendingTransaction() {
        this.mTask.commitPendingTransaction();
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public void onAnimationLeashCreated(SurfaceControl.Transaction t, SurfaceControl leash) {
        t.setLayer(leash, 1);
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public void onAnimationLeashLost(SurfaceControl.Transaction t) {
        SurfaceControl surfaceControl = this.mSurfaceControl;
        if (surfaceControl != null) {
            t.remove(surfaceControl);
            this.mSurfaceControl = null;
        }
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl.Builder makeAnimationLeash() {
        return this.mTask.makeAnimationLeash();
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl getAnimationLeashParent() {
        return this.mTask.getAnimationLeashParent();
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl getSurfaceControl() {
        return this.mSurfaceControl;
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl getParentSurfaceControl() {
        return this.mTask.mSurfaceControl;
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
