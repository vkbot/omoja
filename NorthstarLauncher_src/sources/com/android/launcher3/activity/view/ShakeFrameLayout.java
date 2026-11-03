package com.android.launcher3.activity.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.android.launcher3.ShakeView;

/* JADX INFO: loaded from: classes.dex */
public class ShakeFrameLayout extends FrameLayout implements ShakeView {
    private boolean mIsShaking;
    private ObjectAnimator mShakeAnimator;

    @Override // com.android.launcher3.ShakeView
    public boolean isShaking() {
        return this.mIsShaking;
    }

    public ShakeFrameLayout(Context context) {
        this(context, null);
    }

    public ShakeFrameLayout(Context context, AttributeSet attrs) {
        this(context, attrs, -1);
    }

    public ShakeFrameLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mIsShaking = false;
    }

    @Override // com.android.launcher3.ShakeView
    public void startShake() {
        if (this.mIsShaking) {
            return;
        }
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
