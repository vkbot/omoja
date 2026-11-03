package com.android.launcher3.util;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class TransformingTouchDelegate extends TouchDelegate {
    private static final Rect sTempRect = new Rect();
    private final RectF mBounds;
    private boolean mDelegateTargeted;
    private View mDelegateView;
    private final RectF mTouchCheckBounds;
    private float mTouchExtension;
    private boolean mWasTouchOutsideBounds;

    public void setDelegateView(View view) {
        this.mDelegateView = view;
    }

    public TransformingTouchDelegate(View delegateView) {
        super(sTempRect, delegateView);
        this.mDelegateView = delegateView;
        this.mBounds = new RectF();
        this.mTouchCheckBounds = new RectF();
    }

    public void setBounds(int left, int top, int right, int bottom) {
        this.mBounds.set(left, top, right, bottom);
        updateTouchBounds();
    }

    public void extendTouchBounds(float extension) {
        this.mTouchExtension = extension;
        updateTouchBounds();
    }

    private void updateTouchBounds() {
        this.mTouchCheckBounds.set(this.mBounds);
        RectF rectF = this.mTouchCheckBounds;
        float f = this.mTouchExtension;
        rectF.inset(-f, -f);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0014  */
    /* JADX WARN: Code duplicated, block: B:15:0x003d  */
    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(MotionEvent event) {
        int action = event.getAction();
        boolean z = true;
        if (action == 0) {
            boolean zContains = this.mTouchCheckBounds.contains(event.getX(), event.getY());
            this.mDelegateTargeted = zContains;
            if (zContains) {
                this.mWasTouchOutsideBounds = !this.mBounds.contains(event.getX(), event.getY());
            } else {
                z = false;
            }
        } else if (action == 1) {
            z = this.mDelegateTargeted;
            this.mDelegateTargeted = false;
        } else if (action == 2) {
            z = this.mDelegateTargeted;
        } else if (action != 3) {
            z = false;
        } else {
            z = this.mDelegateTargeted;
            this.mDelegateTargeted = false;
        }
        if (!z) {
            return false;
        }
        float x = event.getX();
        float y = event.getY();
        if (this.mWasTouchOutsideBounds) {
            event.setLocation(this.mBounds.centerX(), this.mBounds.centerY());
        } else {
            event.offsetLocation(-this.mBounds.left, -this.mBounds.top);
        }
        boolean zDispatchTouchEvent = this.mDelegateView.dispatchTouchEvent(event);
        event.setLocation(x, y);
        return zDispatchTouchEvent;
    }
}
