package androidx.dynamicanimation.animation;

import androidx.annotation.FloatRange;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class FlingAnimation extends DynamicAnimation<FlingAnimation> {
    private final DragForce mFlingForce;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class DragForce implements Force {
        private static final float DEFAULT_FRICTION = -4.2f;
        private static final float VELOCITY_THRESHOLD_MULTIPLIER = 62.5f;
        private float mFriction = DEFAULT_FRICTION;
        private final DynamicAnimation.MassState mMassState = new DynamicAnimation.MassState();
        private float mVelocityThreshold;

        @Override // androidx.dynamicanimation.animation.Force
        public float getAcceleration(float f8, float f10) {
            return f10 * this.mFriction;
        }

        public float getFrictionScalar() {
            return this.mFriction / DEFAULT_FRICTION;
        }

        @Override // androidx.dynamicanimation.animation.Force
        public boolean isAtEquilibrium(float f8, float f10) {
            return Math.abs(f10) < this.mVelocityThreshold;
        }

        public void setFrictionScalar(float f8) {
            this.mFriction = f8 * DEFAULT_FRICTION;
        }

        public void setValueThreshold(float f8) {
            this.mVelocityThreshold = f8 * VELOCITY_THRESHOLD_MULTIPLIER;
        }

        public DynamicAnimation.MassState updateValueAndVelocity(float f8, float f10, long j10) {
            this.mMassState.mVelocity = (float) (Math.exp((j10 / 1000.0f) * this.mFriction) * ((double) f10));
            DynamicAnimation.MassState massState = this.mMassState;
            float f11 = massState.mVelocity;
            float f12 = ((f11 - f10) / this.mFriction) + f8;
            massState.mValue = f12;
            if (isAtEquilibrium(f12, f11)) {
                this.mMassState.mVelocity = 0.0f;
            }
            return this.mMassState;
        }
    }

    public FlingAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        DragForce dragForce = new DragForce();
        this.mFlingForce = dragForce;
        dragForce.setValueThreshold(getValueThreshold());
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public float getAcceleration(float f8, float f10) {
        return this.mFlingForce.getAcceleration(f8, f10);
    }

    public float getFriction() {
        return this.mFlingForce.getFrictionScalar();
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public boolean isAtEquilibrium(float f8, float f10) {
        return f8 >= this.mMaxValue || f8 <= this.mMinValue || this.mFlingForce.isAtEquilibrium(f8, f10);
    }

    public FlingAnimation setFriction(@FloatRange(from = 0.0d, fromInclusive = false) float f8) {
        if (f8 > 0.0f) {
            this.mFlingForce.setFrictionScalar(f8);
            return this;
        }
        C1929i.m3029k("Friction must be positive");
        return null;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public void setValueThreshold(float f8) {
        this.mFlingForce.setValueThreshold(f8);
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public boolean updateValueAndVelocity(long j10) {
        DynamicAnimation.MassState massStateUpdateValueAndVelocity = this.mFlingForce.updateValueAndVelocity(this.mValue, this.mVelocity, j10);
        float f8 = massStateUpdateValueAndVelocity.mValue;
        this.mValue = f8;
        float f10 = massStateUpdateValueAndVelocity.mVelocity;
        this.mVelocity = f10;
        float f11 = this.mMinValue;
        if (f8 < f11) {
            this.mValue = f11;
            return true;
        }
        float f12 = this.mMaxValue;
        if (f8 <= f12) {
            return isAtEquilibrium(f8, f10);
        }
        this.mValue = f12;
        return true;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setMaxValue(float f8) {
        super.setMaxValue(f8);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setMinValue(float f8) {
        super.setMinValue(f8);
        return this;
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public FlingAnimation setStartVelocity(float f8) {
        super.setStartVelocity(f8);
        return this;
    }

    public <K> FlingAnimation(K k6, FloatPropertyCompat<K> floatPropertyCompat) {
        super(k6, floatPropertyCompat);
        DragForce dragForce = new DragForce();
        this.mFlingForce = dragForce;
        dragForce.setValueThreshold(getValueThreshold());
    }
}
