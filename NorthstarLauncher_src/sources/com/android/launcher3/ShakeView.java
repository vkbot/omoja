package com.android.launcher3;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.constraintlayout.motion.widget.Key;

/* JADX INFO: loaded from: classes.dex */
public interface ShakeView {
    boolean isShaking();

    void startShake();

    void stopShake();

    static ObjectAnimator getShakeAnimator(View view) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, Key.ROTATION, 0.0f, 1.0f, 0.0f, -1.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(400L);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setRepeatMode(1);
        return objectAnimatorOfFloat;
    }
}
