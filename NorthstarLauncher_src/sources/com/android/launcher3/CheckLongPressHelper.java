package com.android.launcher3;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class CheckLongPressHelper {
    public static final float DEFAULT_LONG_PRESS_TIMEOUT_FACTOR = 0.75f;
    private static final String TAG = "CheckLongPressHelper";
    private boolean mHasPerformedLongPress;
    private final View.OnLongClickListener mListener;
    private float mLongPressTimeoutFactor;
    private Runnable mPendingCheckForLongPress;
    private final float mSlop;
    private final View mView;

    public boolean hasPerformedLongPress() {
        return this.mHasPerformedLongPress;
    }

    public void setLongPressTimeoutFactor(float longPressTimeoutFactor) {
        this.mLongPressTimeoutFactor = longPressTimeoutFactor;
    }

    public CheckLongPressHelper(View v) {
        this(v, null);
    }

    public CheckLongPressHelper(View v, View.OnLongClickListener listener) {
        this.mLongPressTimeoutFactor = 0.75f;
        this.mView = v;
        this.mListener = listener;
        this.mSlop = ViewConfiguration.get(v.getContext()).getScaledTouchSlop();
    }

    public void onTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 0) {
            cancelLongPress();
            postCheckForLongPress();
            if (isStylusButtonPressed(ev)) {
                triggerLongPress();
                return;
            }
            return;
        }
        if (action != 1) {
            if (action == 2) {
                if (!Utilities.pointInView(this.mView, ev.getX(), ev.getY(), this.mSlop)) {
                    cancelLongPress();
                    return;
                } else {
                    if (this.mPendingCheckForLongPress == null || !isStylusButtonPressed(ev)) {
                        return;
                    }
                    triggerLongPress();
                    return;
                }
            }
            if (action != 3) {
                return;
            }
        }
        cancelLongPress();
    }

    private void postCheckForLongPress() {
        this.mHasPerformedLongPress = false;
        if (this.mPendingCheckForLongPress == null) {
            this.mPendingCheckForLongPress = new Runnable() { // from class: com.android.launcher3.CheckLongPressHelper$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.triggerLongPress();
                }
            };
        }
        this.mView.postDelayed(this.mPendingCheckForLongPress, (long) (ViewConfiguration.getLongPressTimeout() * this.mLongPressTimeoutFactor));
    }

    public void cancelLongPress() {
        this.mHasPerformedLongPress = false;
        clearCallbacks();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void triggerLongPress() {
        boolean zPerformLongClick;
        if (this.mView.getParent() == null || !this.mView.hasWindowFocus()) {
            return;
        }
        if ((!this.mView.isPressed() || this.mListener == null) && !this.mHasPerformedLongPress) {
            MLog.d(TAG, "triggerLongPress() called");
            View.OnLongClickListener onLongClickListener = this.mListener;
            if (onLongClickListener != null) {
                zPerformLongClick = onLongClickListener.onLongClick(this.mView);
            } else {
                zPerformLongClick = this.mView.performLongClick();
            }
            if (zPerformLongClick) {
                this.mView.setPressed(false);
                this.mHasPerformedLongPress = true;
            }
            clearCallbacks();
        }
    }

    private void clearCallbacks() {
        Runnable runnable = this.mPendingCheckForLongPress;
        if (runnable != null) {
            this.mView.removeCallbacks(runnable);
            this.mPendingCheckForLongPress = null;
        }
    }

    private static boolean isStylusButtonPressed(MotionEvent event) {
        return event.getToolType(0) == 2 && event.isButtonPressed(2);
    }
}
