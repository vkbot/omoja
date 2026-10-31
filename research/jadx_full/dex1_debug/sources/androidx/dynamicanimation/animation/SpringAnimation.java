package androidx.dynamicanimation.animation;

import android.util.AndroidRuntimeException;
import androidx.annotation.MainThread;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class SpringAnimation extends DynamicAnimation<SpringAnimation> {
    private static final float UNSET = Float.MAX_VALUE;
    private boolean mEndRequested;
    private float mPendingPosition;
    private SpringForce mSpring;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SpringAnimation(FloatValueHolder floatValueHolder, float f8) {
        super(floatValueHolder);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
        this.mSpring = new SpringForce(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void sanityCheck() {
        SpringForce springForce = this.mSpring;
        if (springForce == null) {
            androidx.navigation.b.g("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
            return;
        }
        double finalPosition = springForce.getFinalPosition();
        if (finalPosition > this.mMaxValue) {
            androidx.navigation.b.g("Final position of the spring cannot be greater than the max value.");
        } else {
            if (finalPosition >= this.mMinValue) {
                return;
            }
            androidx.navigation.b.g("Final position of the spring cannot be less than the min value.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void animateToFinalPosition(float f8) {
        if (isRunning()) {
            this.mPendingPosition = f8;
            return;
        }
        if (this.mSpring == null) {
            this.mSpring = new SpringForce(f8);
        }
        this.mSpring.setFinalPosition(f8);
        start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canSkipToEnd() {
        return this.mSpring.mDampingRatio > 0.0d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    @MainThread
    public void cancel() {
        super.cancel();
        float f8 = this.mPendingPosition;
        if (f8 != Float.MAX_VALUE) {
            SpringForce springForce = this.mSpring;
            if (springForce == null) {
                this.mSpring = new SpringForce(f8);
            } else {
                springForce.setFinalPosition(f8);
            }
            this.mPendingPosition = Float.MAX_VALUE;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public float getAcceleration(float f8, float f9) {
        return this.mSpring.getAcceleration(f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SpringForce getSpring() {
        return this.mSpring;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public boolean isAtEquilibrium(float f8, float f9) {
        return this.mSpring.isAtEquilibrium(f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SpringAnimation setSpring(SpringForce springForce) {
        this.mSpring = springForce;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void skipToEnd() {
        if (!canSkipToEnd()) {
            androidx.navigation.b.g("Spring animations can only come to an end when there is damping");
        } else {
            if (!getAnimationHandler().isCurrentThread()) {
                throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
            }
            if (this.mRunning) {
                this.mEndRequested = true;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    @MainThread
    public void start() {
        sanityCheck();
        this.mSpring.setValueThreshold(getValueThreshold());
        super.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public boolean updateValueAndVelocity(long j9) {
        boolean z8 = this.mEndRequested;
        float f8 = this.mPendingPosition;
        if (z8) {
            if (f8 != Float.MAX_VALUE) {
                this.mSpring.setFinalPosition(f8);
                this.mPendingPosition = Float.MAX_VALUE;
            }
            this.mValue = this.mSpring.getFinalPosition();
            this.mVelocity = 0.0f;
            this.mEndRequested = false;
            return true;
        }
        SpringForce springForce = this.mSpring;
        if (f8 != Float.MAX_VALUE) {
            long j10 = j9 / 2;
            DynamicAnimation$MassState dynamicAnimation$MassStateUpdateValues = springForce.updateValues(this.mValue, this.mVelocity, j10);
            this.mSpring.setFinalPosition(this.mPendingPosition);
            this.mPendingPosition = Float.MAX_VALUE;
            DynamicAnimation$MassState dynamicAnimation$MassStateUpdateValues2 = this.mSpring.updateValues(dynamicAnimation$MassStateUpdateValues.mValue, dynamicAnimation$MassStateUpdateValues.mVelocity, j10);
            this.mValue = dynamicAnimation$MassStateUpdateValues2.mValue;
            this.mVelocity = dynamicAnimation$MassStateUpdateValues2.mVelocity;
        } else {
            DynamicAnimation$MassState dynamicAnimation$MassStateUpdateValues3 = springForce.updateValues(this.mValue, this.mVelocity, j9);
            this.mValue = dynamicAnimation$MassStateUpdateValues3.mValue;
            this.mVelocity = dynamicAnimation$MassStateUpdateValues3.mVelocity;
        }
        float fMax = Math.max(this.mValue, this.mMinValue);
        this.mValue = fMax;
        float fMin = Math.min(fMax, this.mMaxValue);
        this.mValue = fMin;
        if (!isAtEquilibrium(fMin, this.mVelocity)) {
            return false;
        }
        this.mValue = this.mSpring.getFinalPosition();
        this.mVelocity = 0.0f;
        return true;
    }

    public SpringAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public void setValueThreshold(float f8) {
    }

    public <K> SpringAnimation(K k6, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k6, floatPropertyCompat);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
    }

    public <K> SpringAnimation(K k6, FloatPropertyCompat<K> floatPropertyCompat, float f8) {
        super(k6, floatPropertyCompat);
        this.mSpring = null;
        this.mPendingPosition = Float.MAX_VALUE;
        this.mEndRequested = false;
        this.mSpring = new SpringForce(f8);
    }
}
