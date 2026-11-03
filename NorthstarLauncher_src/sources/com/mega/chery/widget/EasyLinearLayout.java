package com.mega.chery.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.mega.chery.utils.OnEventListener;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class EasyLinearLayout extends LinearLayout {
    public static final String TAG = "EasyLinearLayout";
    private OnInterceptTouchEventListener mInterceptTouchEventListener;
    private OnEventListener<Boolean> mOnSetEnabledListener;

    public interface OnInterceptTouchEventListener {
        boolean onInterceptTouchEvent(MotionEvent motionEvent);
    }

    public void setOnInterceptTouchEventListener(OnInterceptTouchEventListener onInterceptTouchEventListener) {
        this.mInterceptTouchEventListener = onInterceptTouchEventListener;
    }

    public void setOnSetEnabledListener(OnEventListener<Boolean> onEventListener) {
        this.mOnSetEnabledListener = onEventListener;
    }

    public EasyLinearLayout(Context context) {
        super(context);
    }

    public EasyLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public EasyLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public EasyLinearLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return true;
        }
        OnInterceptTouchEventListener onInterceptTouchEventListener = this.mInterceptTouchEventListener;
        if (onInterceptTouchEventListener != null) {
            return onInterceptTouchEventListener.onInterceptTouchEvent(motionEvent);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        boolean zIsEnabled = isEnabled();
        super.setEnabled(z);
        if (this.mOnSetEnabledListener != null) {
            MLog.d("dbc", String.format("name = %s,lastState = %s,enabled = %s", getClass().getSimpleName(), Boolean.valueOf(zIsEnabled), Boolean.valueOf(z)));
            if (zIsEnabled != z) {
                this.mOnSetEnabledListener.onCallBack(Boolean.valueOf(z));
            }
        }
        super.setEnabled(z);
        dispatchSetEnabled(this, z);
    }

    public void dispatchSetEnabled(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                childAt.setEnabled(z);
                dispatchSetEnabled((ViewGroup) childAt, z);
            } else {
                childAt.setEnabled(z);
            }
        }
    }
}
