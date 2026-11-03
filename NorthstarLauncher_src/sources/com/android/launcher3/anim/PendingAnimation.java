package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.util.FloatProperty;
import android.util.IntProperty;
import android.util.Property;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class PendingAnimation implements PropertySetter {
    private final long mDuration;
    private ValueAnimator mProgressAnimator;
    private final ArrayList<Consumer<EndState>> mEndListeners = new ArrayList<>();
    private final ArrayList<AnimatorPlaybackController.Holder> mAnimHolders = new ArrayList<>();
    private final AnimatorSet mAnim = new AnimatorSet();

    public PendingAnimation(long duration) {
        this.mDuration = duration;
    }

    public void add(Animator anim, TimeInterpolator interpolator, SpringProperty springProperty) {
        anim.setInterpolator(interpolator);
        add(anim, springProperty);
    }

    public void add(Animator anim) {
        add(anim, SpringProperty.DEFAULT);
    }

    public void add(Animator a, SpringProperty springProperty) {
        this.mAnim.play(a.setDuration(this.mDuration));
        AnimatorPlaybackController.addAnimationHoldersRecur(a, this.mDuration, springProperty, this.mAnimHolders);
    }

    public void finish(boolean isSuccess, int logAction) {
        Iterator<Consumer<EndState>> it = this.mEndListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new EndState(isSuccess, logAction));
        }
        this.mEndListeners.clear();
    }

    @Override // com.android.launcher3.anim.PropertySetter
    public void setViewAlpha(View view, float alpha, TimeInterpolator interpolator) {
        if (view == null || view.getAlpha() == alpha) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, alpha);
        objectAnimatorOfFloat.addListener(new AlphaUpdateListener(view));
        objectAnimatorOfFloat.setInterpolator(interpolator);
        add(objectAnimatorOfFloat);
    }

    @Override // com.android.launcher3.anim.PropertySetter
    public <T> void setFloat(T target, FloatProperty<T> property, float value, TimeInterpolator interpolator) {
        if (target == null || ((Float) property.get(target)).floatValue() == value) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(target, property, value);
        objectAnimatorOfFloat.setDuration(this.mDuration).setInterpolator(interpolator);
        add(objectAnimatorOfFloat);
    }

    public <T> void addFloat(T target, FloatProperty<T> property, float from, float to, TimeInterpolator interpolator) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(target, property, from, to);
        objectAnimatorOfFloat.setInterpolator(interpolator);
        add(objectAnimatorOfFloat);
    }

    @Override // com.android.launcher3.anim.PropertySetter
    public <T> void setInt(T target, IntProperty<T> property, int value, TimeInterpolator interpolator) {
        if (((Integer) property.get(target)).intValue() == value) {
            return;
        }
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(target, property, value);
        objectAnimatorOfInt.setInterpolator(interpolator);
        add(objectAnimatorOfInt);
    }

    public void addOnFrameCallback(final Runnable runnable) {
        if (this.mProgressAnimator == null) {
            this.mProgressAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
        }
        this.mProgressAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.anim.PendingAnimation$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                runnable.run();
            }
        });
    }

    public void addListener(Animator.AnimatorListener listener) {
        this.mAnim.addListener(listener);
    }

    public AnimatorSet buildAnim() {
        ValueAnimator valueAnimator = this.mProgressAnimator;
        if (valueAnimator != null) {
            add(valueAnimator);
            this.mProgressAnimator = null;
        }
        if (this.mAnimHolders.isEmpty()) {
            add(ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(this.mDuration));
        }
        return this.mAnim;
    }

    public AnimatorPlaybackController createPlaybackController() {
        return new AnimatorPlaybackController(buildAnim(), this.mDuration, this.mAnimHolders);
    }

    public void addEndListener(Consumer<EndState> listener) {
        this.mEndListeners.add(listener);
    }

    public static class EndState {
        public boolean isSuccess;
        public int logAction;

        public EndState(boolean isSuccess, int logAction) {
            this.isSuccess = isSuccess;
            this.logAction = logAction;
        }
    }
}
