package com.mega.chery.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mega.chery.R;
import com.mega.chery.utils.OnEventListener;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class EasyConstraintLayout extends ConstraintLayout implements View.OnClickListener {
    public static final int INTERCEPT = 1;
    public static final int NOT_INTERCEPT = 0;
    public static final int SUPER = 2;
    public static final String TAG = "EasyConstraintLayout";
    private int mClickInterval;
    private View.OnClickListener mClickListener;
    private long mLastClick;
    private OnEventListener<Boolean> mOnSetEnabledListener;
    OnInterceptTouchEventListener onInterceptTouchEventListener;

    public interface OnInterceptTouchEventListener {
        int onInterceptTouchEvent(MotionEvent motionEvent);
    }

    public void setOnInterceptTouchEventListener(OnInterceptTouchEventListener onInterceptTouchEventListener) {
        this.onInterceptTouchEventListener = onInterceptTouchEventListener;
    }

    public void setOnSetEnabledListener(OnEventListener<Boolean> onEventListener) {
        this.mOnSetEnabledListener = onEventListener;
    }

    public EasyConstraintLayout(Context context) {
        super(context);
    }

    public EasyConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.EasyConstraintLayout);
        this.mClickInterval = typedArrayObtainStyledAttributes.getInt(R.styleable.EasyConstraintLayout_click_interval, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (this.mClickInterval > 0) {
            super.setOnClickListener(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return true;
        }
        OnInterceptTouchEventListener onInterceptTouchEventListener = this.onInterceptTouchEventListener;
        if (onInterceptTouchEventListener != null) {
            int iOnInterceptTouchEvent = onInterceptTouchEventListener.onInterceptTouchEvent(motionEvent);
            if (iOnInterceptTouchEvent == 0) {
                return false;
            }
            if (iOnInterceptTouchEvent == 1) {
                return true;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        if (this.mClickInterval > 0) {
            this.mClickListener = onClickListener;
        } else {
            super.setOnClickListener(onClickListener);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.mLastClick < this.mClickInterval) {
            MLog.d(TAG, "fast click return");
            this.mLastClick = jElapsedRealtime;
        } else {
            View.OnClickListener onClickListener = this.mClickListener;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
            this.mLastClick = jElapsedRealtime;
        }
    }

    @Override // android.view.View
    public boolean performClick() {
        if (!isEnabled()) {
            MLog.e(TAG, "is disabled,can not perform click");
            return false;
        }
        return super.performClick();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        boolean zIsEnabled = isEnabled();
        super.setEnabled(z);
        OnEventListener<Boolean> onEventListener = this.mOnSetEnabledListener;
        if (onEventListener != null && zIsEnabled != z) {
            onEventListener.onCallBack(Boolean.valueOf(z));
        }
        super.setEnabled(z);
        dispatchEnabled(this, z);
    }

    public void dispatchEnabled(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                childAt.setEnabled(z);
                dispatchEnabled((ViewGroup) childAt, z);
            } else {
                childAt.setEnabled(z);
            }
        }
    }
}
