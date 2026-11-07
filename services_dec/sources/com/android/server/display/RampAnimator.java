package com.android.server.display;

import android.animation.ValueAnimator;
import android.util.FloatProperty;
import android.util.Slog;
import android.view.Choreographer;
import com.android.internal.BrightnessSynchronizer;

/* JADX INFO: loaded from: classes.dex */
final class RampAnimator<T> {
    private static final String TAG = "RampAnimator";
    private float mAnimatedValue;
    private boolean mAnimating;
    private float mCurrentValue;
    private long mLastFrameTimeNanos;
    private Listener mListener;
    private final T mObject;
    private final FloatProperty<T> mProperty;
    private float mRate;
    private float mTargetValue;
    private boolean mFirstTime = true;
    private final Runnable mAnimationCallback = new Runnable() { // from class: com.android.server.display.RampAnimator.1
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            long frameTimeNanos = RampAnimator.this.mChoreographer.getFrameTimeNanos();
            float timeDelta = (frameTimeNanos - RampAnimator.this.mLastFrameTimeNanos) * 1.0E-9f;
            RampAnimator.this.mLastFrameTimeNanos = frameTimeNanos;
            float scale = ValueAnimator.getDurationScale();
            if (scale != 0.0f) {
                float amount = (RampAnimator.this.mRate * timeDelta) / scale;
                if (RampAnimator.this.mTargetValue > RampAnimator.this.mCurrentValue) {
                    RampAnimator rampAnimator = RampAnimator.this;
                    rampAnimator.mAnimatedValue = Math.min(rampAnimator.mAnimatedValue + amount, RampAnimator.this.mTargetValue);
                } else {
                    RampAnimator rampAnimator2 = RampAnimator.this;
                    rampAnimator2.mAnimatedValue = Math.max(rampAnimator2.mAnimatedValue - amount, RampAnimator.this.mTargetValue);
                }
            } else {
                RampAnimator rampAnimator3 = RampAnimator.this;
                rampAnimator3.mAnimatedValue = rampAnimator3.mTargetValue;
            }
            float oldCurrentValue = RampAnimator.this.mCurrentValue;
            RampAnimator rampAnimator4 = RampAnimator.this;
            rampAnimator4.mCurrentValue = rampAnimator4.mAnimatedValue;
            if (!BrightnessSynchronizer.floatEquals(oldCurrentValue, RampAnimator.this.mCurrentValue)) {
                RampAnimator.this.mProperty.setValue(RampAnimator.this.mObject, RampAnimator.this.mCurrentValue);
            }
            if (!BrightnessSynchronizer.floatEquals(RampAnimator.this.mTargetValue, RampAnimator.this.mCurrentValue)) {
                RampAnimator.this.postAnimationCallback();
                return;
            }
            RampAnimator.this.mAnimating = false;
            if (RampAnimator.this.mListener != null) {
                RampAnimator.this.mListener.onAnimationEnd();
            }
        }
    };
    private final Choreographer mChoreographer = Choreographer.getInstance();

    public interface Listener {
        void onAnimationEnd();
    }

    public RampAnimator(T object, FloatProperty<T> property) {
        this.mObject = object;
        this.mProperty = property;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002e  */
    public boolean animateTo(float target, float rate) {
        if (this.mFirstTime || rate <= 0.0f) {
            boolean changed = this.mFirstTime;
            if (!changed && target == this.mCurrentValue) {
                return false;
            }
            this.mFirstTime = false;
            this.mRate = 0.0f;
            this.mTargetValue = target;
            this.mCurrentValue = target;
            if (rate == -1.0f) {
                Slog.i(TAG, "rate is -1.0, immediately set target brightness float " + target + " without animate");
            }
            this.mProperty.setValue(this.mObject, target);
            if (this.mAnimating) {
                this.mAnimating = false;
                cancelAnimationCallback();
            }
            Listener listener = this.mListener;
            if (listener != null) {
                listener.onAnimationEnd();
            }
            return true;
        }
        if (!this.mAnimating || rate > this.mRate) {
            this.mRate = rate;
        } else {
            float f = this.mCurrentValue;
            if (target > f || f > this.mTargetValue) {
                float f2 = this.mTargetValue;
                float f3 = this.mCurrentValue;
                if (f2 <= f3 && f3 <= target) {
                    this.mRate = rate;
                }
            } else {
                this.mRate = rate;
            }
        }
        boolean changed2 = this.mTargetValue != target;
        this.mTargetValue = target;
        if (!this.mAnimating) {
            float f4 = this.mCurrentValue;
            if (target != f4) {
                this.mAnimating = true;
                this.mAnimatedValue = f4;
                this.mLastFrameTimeNanos = System.nanoTime();
                postAnimationCallback();
            }
        }
        return changed2;
    }

    public boolean isAnimating() {
        return this.mAnimating;
    }

    public void setListener(Listener listener) {
        this.mListener = listener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postAnimationCallback() {
        this.mChoreographer.postCallback(1, this.mAnimationCallback, null);
    }

    private void cancelAnimationCallback() {
        this.mChoreographer.removeCallbacks(1, this.mAnimationCallback, null);
    }
}
