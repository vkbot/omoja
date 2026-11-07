package com.android.server.wm;

import android.graphics.GraphicBuffer;
import android.graphics.Rect;
import android.view.Surface;
import android.view.SurfaceControl;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;

/* JADX INFO: loaded from: classes2.dex */
class TaskDisplayChangeAnimatable implements SurfaceAnimator.Animatable {
    private static final String TAG = "TaskScreenshotAnim";
    DisplayContent dc;
    private int mHeight;
    private SurfaceControl mSurfaceControl;
    private Task mTask;
    private int mWidth;

    public static TaskDisplayChangeAnimatable create(Task task) {
        return new TaskDisplayChangeAnimatable(task, getBufferFromTask(task));
    }

    private static SurfaceControl.ScreenshotGraphicBuffer getBufferFromTask(Task task) {
        if (task == null) {
            return null;
        }
        Rect tmpRect = task.getBounds();
        tmpRect.offset(0, 0);
        return SurfaceControl.captureLayers(task.getSurfaceControl(), tmpRect, 1.0f);
    }

    private TaskDisplayChangeAnimatable(Task task, SurfaceControl.ScreenshotGraphicBuffer screenshotBuffer) {
        GraphicBuffer buffer = screenshotBuffer == null ? null : screenshotBuffer.getGraphicBuffer();
        this.mTask = task;
        this.mWidth = buffer != null ? buffer.getWidth() : 1;
        this.mHeight = buffer != null ? buffer.getHeight() : 1;
        this.dc = task.getDisplayContent();
        if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
            String protoLogParam0 = String.valueOf(task);
            long protoLogParam1 = this.mWidth;
            long protoLogParam2 = this.mHeight;
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, -1185213430, 20, null, protoLogParam0, Long.valueOf(protoLogParam1), Long.valueOf(protoLogParam2));
        }
        this.mSurfaceControl = new SurfaceControl.Builder(this.mTask.getTopVisibleAppMainWindow().mSession.mSurfaceSession).setName("RecentTaskScreenshotSurface").setBufferSize(this.mWidth, this.mHeight).build();
        if (buffer != null) {
            Surface surface = new Surface();
            surface.copyFrom(this.mSurfaceControl);
            surface.attachAndQueueBufferWithColorSpace(buffer, screenshotBuffer.getColorSpace());
            surface.release();
        }
        getPendingTransaction().setLayerStack(this.mSurfaceControl, this.dc.getDisplayId()).show(this.mSurfaceControl);
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl.Transaction getPendingTransaction() {
        return this.dc.getPendingTransaction();
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public void commitPendingTransaction() {
        this.dc.commitPendingTransaction();
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public void onAnimationLeashCreated(SurfaceControl.Transaction t, SurfaceControl leash) {
        t.setLayer(leash, 1).setLayerStack(leash, this.dc.getDisplayId());
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public void onAnimationLeashLost(SurfaceControl.Transaction t) {
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl.Builder makeAnimationLeash() {
        return this.dc.makeChildSurface(null);
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl getAnimationLeashParent() {
        return this.dc.getAppAnimationLayer(0);
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl getSurfaceControl() {
        return this.mSurfaceControl;
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl getParentSurfaceControl() {
        return this.dc.getWindowingLayer();
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
