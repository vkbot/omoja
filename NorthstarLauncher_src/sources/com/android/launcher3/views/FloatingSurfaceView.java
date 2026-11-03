package com.android.launcher3.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.GestureNavContract;
import com.android.launcher3.Insettable;
import com.android.launcher3.Launcher;
import com.android.launcher3.R;
import com.android.launcher3.util.DefaultDisplay;
import com.android.launcher3.util.Executors;

/* JADX INFO: loaded from: classes.dex */
public class FloatingSurfaceView extends AbstractFloatingView implements ViewTreeObserver.OnGlobalLayoutListener, Insettable, SurfaceHolder.Callback2 {
    private GestureNavContract mContract;
    private View mIcon;
    private final Rect mIconBounds;
    private final RectF mIconPosition;
    private final Launcher mLauncher;
    private final Picture mPicture;
    private final Runnable mRemoveViewRunnable;
    private final SurfaceView mSurfaceView;
    private final RectF mTmpPosition;

    @Override // com.android.launcher3.AbstractFloatingView
    protected boolean isOfType(int type) {
        return (type & 4096) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int command) {
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect insets) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
    }

    public FloatingSurfaceView(Context context) {
        this(context, null);
    }

    public FloatingSurfaceView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public FloatingSurfaceView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mTmpPosition = new RectF();
        this.mIconPosition = new RectF();
        this.mIconBounds = new Rect();
        this.mPicture = new Picture();
        this.mRemoveViewRunnable = new Runnable() { // from class: com.android.launcher3.views.FloatingSurfaceView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.removeViewFromParent();
            }
        };
        this.mLauncher = Launcher.getLauncher(context);
        SurfaceView surfaceView = new SurfaceView(context);
        this.mSurfaceView = surfaceView;
        surfaceView.setZOrderOnTop(true);
        surfaceView.getHolder().setFormat(-3);
        surfaceView.getHolder().addCallback(this);
        this.mIsOpen = true;
        addView(surfaceView);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    protected void handleClose(boolean animate) {
        setCurrentIconVisible(true);
        this.mLauncher.getViewCache().recycleView(R.layout.floating_surface_view, this);
        this.mContract = null;
        this.mIcon = null;
        this.mIsOpen = false;
        Executors.MAIN_EXECUTOR.getHandler().postDelayed(this.mRemoveViewRunnable, DefaultDisplay.INSTANCE.m166x39265fe7(this.mLauncher).getInfo().singleFrameMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeViewFromParent() {
        this.mPicture.beginRecording(1, 1);
        this.mPicture.endRecording();
        this.mLauncher.getDragLayer().removeView(this);
    }

    public static void show(Launcher launcher, GestureNavContract contract) {
        FloatingSurfaceView floatingSurfaceView = (FloatingSurfaceView) launcher.getViewCache().getView(R.layout.floating_surface_view, launcher, launcher.getDragLayer());
        floatingSurfaceView.mContract = contract;
        floatingSurfaceView.mIsOpen = true;
        Executors.MAIN_EXECUTOR.getHandler().removeCallbacks(floatingSurfaceView.mRemoveViewRunnable);
        floatingSurfaceView.removeViewFromParent();
        launcher.getDragLayer().addView(floatingSurfaceView);
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent ev) {
        close(false);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(this);
        updateIconLocation();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
        setCurrentIconVisible(true);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        updateIconLocation();
    }

    private void updateIconLocation() {
        if (this.mContract == null) {
            return;
        }
        View firstMatchForAppClose = this.mLauncher.getWorkspace().getFirstMatchForAppClose(this.mContract.componentName.getPackageName(), this.mContract.user);
        boolean z = this.mIcon != firstMatchForAppClose;
        if (z) {
            setCurrentIconVisible(true);
            this.mIcon = firstMatchForAppClose;
            setCurrentIconVisible(false);
        }
        if (firstMatchForAppClose != null && firstMatchForAppClose.isAttachedToWindow()) {
            FloatingIconView.getLocationBoundsForView(this.mLauncher, firstMatchForAppClose, false, this.mTmpPosition, this.mIconBounds);
            if (!this.mTmpPosition.equals(this.mIconPosition)) {
                this.mIconPosition.set(this.mTmpPosition);
                sendIconInfo();
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mSurfaceView.getLayoutParams();
                layoutParams.width = Math.round(this.mIconPosition.width());
                layoutParams.height = Math.round(this.mIconPosition.height());
                layoutParams.leftMargin = Math.round(this.mIconPosition.left);
                layoutParams.topMargin = Math.round(this.mIconPosition.top);
            }
        }
        if (!z || this.mIconBounds.isEmpty()) {
            return;
        }
        setCurrentIconVisible(true);
        Canvas canvasBeginRecording = this.mPicture.beginRecording(this.mIconBounds.width(), this.mIconBounds.height());
        canvasBeginRecording.translate(-this.mIconBounds.left, -this.mIconBounds.top);
        this.mIcon.draw(canvasBeginRecording);
        this.mPicture.endRecording();
        setCurrentIconVisible(false);
        drawOnSurface();
    }

    private void sendIconInfo() {
        if (this.mContract == null || this.mIconPosition.isEmpty()) {
            return;
        }
        this.mContract.sendEndPosition(this.mIconPosition, this.mSurfaceView.getSurfaceControl());
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        drawOnSurface();
        sendIconInfo();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int format, int width, int height) {
        drawOnSurface();
    }

    @Override // android.view.SurfaceHolder.Callback2
    public void surfaceRedrawNeeded(SurfaceHolder surfaceHolder) {
        drawOnSurface();
    }

    private void drawOnSurface() {
        SurfaceHolder holder = this.mSurfaceView.getHolder();
        Canvas canvasLockHardwareCanvas = holder.lockHardwareCanvas();
        if (canvasLockHardwareCanvas != null) {
            this.mPicture.draw(canvasLockHardwareCanvas);
            holder.unlockCanvasAndPost(canvasLockHardwareCanvas);
        }
    }

    private void setCurrentIconVisible(boolean isVisible) {
        View view = this.mIcon;
        if (view != null) {
            IconLabelDotView.setIconAndDotVisible(view, isVisible);
        }
    }
}
