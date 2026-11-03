package com.android.launcher3.views;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.ViewGroup;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.testing.TestProtocol;

/* JADX INFO: loaded from: classes.dex */
public class ListenerView extends AbstractFloatingView {
    private Runnable mCloseListener;

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean canInterceptEventsInSystemGestureRegion() {
        return true;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    protected boolean isOfType(int type) {
        return (type & 256) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int command) {
    }

    public ListenerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setVisibility(8);
    }

    public void setListener(Runnable listener) {
        if (TestProtocol.sDebugTracing) {
            Log.d(TestProtocol.PAUSE_NOT_DETECTED, "ListenerView setListener lv=" + this + ", listener=" + listener, new Exception());
        }
        this.mCloseListener = listener;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (TestProtocol.sDebugTracing) {
            Log.d(TestProtocol.PAUSE_NOT_DETECTED, "ListenerView onAttachedToWindow lv=" + this, new Exception());
        }
        this.mIsOpen = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsOpen = false;
        if (TestProtocol.sDebugTracing) {
            Log.d(TestProtocol.PAUSE_NOT_DETECTED, "ListenerView onDetachedFromView lv=" + this, new Exception());
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    protected void handleClose(boolean animate) {
        if (TestProtocol.sDebugTracing) {
            Log.d(TestProtocol.PAUSE_NOT_DETECTED, "ListenerView handeClose lv=" + this + ", mIsOpen=" + this.mIsOpen + ", mCloseListener=" + this.mCloseListener + ", getParent()=" + getParent(), new Exception());
        }
        if (this.mIsOpen) {
            Runnable runnable = this.mCloseListener;
            if (runnable != null) {
                runnable.run();
            } else if (getParent() instanceof ViewGroup) {
                ((ViewGroup) getParent()).removeView(this);
            }
        }
        this.mIsOpen = false;
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent ev) {
        if (TestProtocol.sDebugTracing) {
            Log.d(TestProtocol.PAUSE_NOT_DETECTED, "ListenerView touchEvent lv=" + this + ", ev=" + ev, new Exception());
        }
        if (ev.getAction() == 0) {
            handleClose(false);
        }
        return false;
    }
}
