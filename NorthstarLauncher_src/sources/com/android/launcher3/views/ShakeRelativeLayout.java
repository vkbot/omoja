package com.android.launcher3.views;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.android.launcher3.ShakeView;

/* JADX INFO: loaded from: classes.dex */
public class ShakeRelativeLayout extends RelativeLayout implements ShakeView {
    private boolean mIsShaking;
    private ObjectAnimator mShakeAnimator;

    @Override // com.android.launcher3.ShakeView
    public boolean isShaking() {
        return this.mIsShaking;
    }

    public ShakeRelativeLayout(Context context) {
        this(context, null);
    }

    public ShakeRelativeLayout(Context context, AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public ShakeRelativeLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mIsShaking = false;
    }

    @Override // com.android.launcher3.ShakeView
    public void startShake() {
        this.mIsShaking = true;
        ObjectAnimator objectAnimator = this.mShakeAnimator;
        if (objectAnimator == null) {
            this.mShakeAnimator = ShakeView.getShakeAnimator(this);
        } else {
            objectAnimator.cancel();
        }
        this.mShakeAnimator.start();
    }

    @Override // com.android.launcher3.ShakeView
    public void stopShake() {
        this.mIsShaking = false;
        ObjectAnimator objectAnimator = this.mShakeAnimator;
        if (objectAnimator != null) {
            objectAnimator.end();
        }
    }
}
