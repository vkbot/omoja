package com.android.server.wm;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Display;
import android.view.Surface;
import android.view.SurfaceControl;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
class EmulatorDisplayOverlay {
    private static final String TAG = "WindowManager";
    private boolean mDrawNeeded;
    private int mLastDH;
    private int mLastDW;
    private Drawable mOverlay;
    private int mRotation;
    private Point mScreenSize;
    private final Surface mSurface;
    private final SurfaceControl mSurfaceControl;
    private boolean mVisible;

    EmulatorDisplayOverlay(Supplier<Surface> surfaceFactory, Context context, DisplayContent dc, int zOrder, SurfaceControl.Transaction t) {
        this.mSurface = surfaceFactory.get();
        Display display = dc.getDisplay();
        Point point = new Point();
        this.mScreenSize = point;
        display.getSize(point);
        SurfaceControl ctrl = null;
        try {
            ctrl = dc.makeOverlay().setName("EmulatorDisplayOverlay").setBufferSize(this.mScreenSize.x, this.mScreenSize.y).setFormat(-3).setCallsite("EmulatorDisplayOverlay").build();
            t.setLayer(ctrl, zOrder);
            t.setPosition(ctrl, 0.0f, 0.0f);
            t.show(ctrl);
            InputMonitor.setTrustedOverlayInputInfo(ctrl, t, dc.getDisplayId(), "EmulatorDisplayOverlay");
            this.mSurface.copyFrom(ctrl);
        } catch (Surface.OutOfResourcesException e) {
        }
        this.mSurfaceControl = ctrl;
        this.mDrawNeeded = true;
        this.mOverlay = context.getDrawable(R.drawable.dialog_ic_close_pressed_holo_dark);
    }

    private void drawIfNeeded(SurfaceControl.Transaction t) {
        if (!this.mDrawNeeded || !this.mVisible) {
            return;
        }
        this.mDrawNeeded = false;
        Rect dirty = new Rect(0, 0, this.mScreenSize.x, this.mScreenSize.y);
        Canvas c = null;
        try {
            c = this.mSurface.lockCanvas(dirty);
        } catch (Surface.OutOfResourcesException e) {
        } catch (IllegalArgumentException e2) {
        }
        if (c != null) {
            c.drawColor(0, PorterDuff.Mode.SRC);
            t.setPosition(this.mSurfaceControl, 0.0f, 0.0f);
            int size = Math.max(this.mScreenSize.x, this.mScreenSize.y);
            this.mOverlay.setBounds(0, 0, size, size);
            this.mOverlay.draw(c);
            this.mSurface.unlockCanvasAndPost(c);
        }
    }

    public void setVisibility(boolean on, SurfaceControl.Transaction t) {
        if (this.mSurfaceControl == null) {
            return;
        }
        this.mVisible = on;
        drawIfNeeded(t);
        if (on) {
            t.show(this.mSurfaceControl);
        } else {
            t.hide(this.mSurfaceControl);
        }
    }

    void positionSurface(int dw, int dh, int rotation, SurfaceControl.Transaction t) {
        if (this.mLastDW == dw && this.mLastDH == dh && this.mRotation == rotation) {
            return;
        }
        this.mLastDW = dw;
        this.mLastDH = dh;
        this.mDrawNeeded = true;
        this.mRotation = rotation;
        drawIfNeeded(t);
    }
}
