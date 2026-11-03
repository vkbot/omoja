package com.mega.chery.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.widget.NestedScrollView;

/* JADX INFO: loaded from: classes2.dex */
public class ReboundNestedScrollView extends NestedScrollView {
    private static final float SWIPE_THRESHOLD = 0.0f;
    private static final String TAG = "ReboundNestedScrollView";
    private boolean mDisableScrollWhenChildFits;
    private float mLastMotionX;
    private float mLastMotionY;
    private VelocityTracker mVelocityTracker;

    public void setDisableScrollWhenChildFits(boolean z) {
        this.mDisableScrollWhenChildFits = z;
    }

    public ReboundNestedScrollView(Context context) {
        this(context, null);
    }

    public ReboundNestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ReboundNestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLastMotionX = -1.0f;
        this.mDisableScrollWhenChildFits = false;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x008b  */
    /* JADX WARN: Code duplicated, block: B:31:0x008f  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b4  */
    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (this.mDisableScrollWhenChildFits && isChildFullyVisible()) {
            if (motionEvent.getActionMasked() == 2) {
                return true;
            }
            return super.dispatchTouchEvent(motionEvent);
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                velocityTracker = this.mVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.mVelocityTracker = null;
                }
                getChildAt(0).animate().translationY(0.0f).setDuration(200L).start();
                if (!checkChildClickable(motionEvent, getChildAt(0))) {
                    awakenScrollBars();
                }
            } else if (actionMasked == 2) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                float f = y - this.mLastMotionY;
                float f2 = x - this.mLastMotionX;
                this.mLastMotionY = y;
                this.mVelocityTracker.computeCurrentVelocity(1000);
                float yVelocity = this.mVelocityTracker.getYVelocity();
                float xVelocity = this.mVelocityTracker.getXVelocity();
                if (Math.abs(f) > Math.abs(f2) + 0.0f && Math.abs(yVelocity) > Math.abs(xVelocity) && isOverScroll()) {
                    View childAt = getChildAt(0);
                    childAt.setTranslationY(childAt.getTranslationY() + (f / 2.0f));
                }
            } else if (actionMasked == 3) {
                velocityTracker = this.mVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.mVelocityTracker = null;
                }
                getChildAt(0).animate().translationY(0.0f).setDuration(200L).start();
                if (!checkChildClickable(motionEvent, getChildAt(0))) {
                    awakenScrollBars();
                }
            }
        } else if (getChildCount() != 0) {
            this.mLastMotionY = motionEvent.getY();
            this.mLastMotionX = motionEvent.getX();
            this.mVelocityTracker.clear();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    private boolean isOverScroll() {
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return getScrollY() == 0 || getScrollY() == ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom());
    }

    private boolean checkChildClickable(MotionEvent motionEvent, View view) {
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            boolean z = false;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                z = z || checkChildClickable(motionEvent, viewGroup.getChildAt(i));
            }
            return z;
        }
        if (isPointInView(rawX, rawY, view)) {
            return view.isClickable();
        }
        return false;
    }

    private boolean isPointInView(float f, float f2, View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        if (f < i || f > i + view.getWidth()) {
            return false;
        }
        int i2 = iArr[1];
        return f2 >= ((float) i2) && f2 <= ((float) (i2 + view.getHeight()));
    }

    private boolean isChildFullyVisible() {
        return getChildCount() == 0 || getChildAt(0).getMeasuredHeight() <= (getHeight() - getPaddingTop()) - getPaddingBottom();
    }
}
