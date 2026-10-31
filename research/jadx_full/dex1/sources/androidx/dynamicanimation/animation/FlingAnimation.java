package androidx.dynamicanimation.animation;

import androidx.annotation.FloatRange;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class FlingAnimation extends DynamicAnimation<FlingAnimation> {
    private final FlingAnimation$DragForce mFlingForce;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlingAnimation(FloatValueHolder floatValueHolder) {
        super(floatValueHolder);
        FlingAnimation$DragForce flingAnimation$DragForce = new FlingAnimation$DragForce();
        this.mFlingForce = flingAnimation$DragForce;
        flingAnimation$DragForce.setValueThreshold(getValueThreshold());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public float getAcceleration(float f8, float f9) {
        return this.mFlingForce.getAcceleration(f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFriction() {
        return this.mFlingForce.getFrictionScalar();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public boolean isAtEquilibrium(float f8, float f9) {
        return f8 >= this.mMaxValue || f8 <= this.mMinValue || this.mFlingForce.isAtEquilibrium(f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlingAnimation setFriction(@FloatRange(from = 0.0d, fromInclusive = false) float f8) {
        if (f8 > 0.0f) {
            this.mFlingForce.setFrictionScalar(f8);
            return this;
        }
        i.k("Friction must be positive");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public /* bridge */ /* synthetic */ DynamicAnimation setMaxValue(float f8) {
        return setMaxValue(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public /* bridge */ /* synthetic */ DynamicAnimation setMinValue(float f8) {
        return setMinValue(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public /* bridge */ /* synthetic */ DynamicAnimation setStartVelocity(float f8) {
        return setStartVelocity(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public void setValueThreshold(float f8) {
        this.mFlingForce.setValueThreshold(f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.DynamicAnimation
    public boolean updateValueAndVelocity(long j9) {
        DynamicAnimation$MassState dynamicAnimation$MassStateUpdateValueAndVelocity = this.mFlingForce.updateValueAndVelocity(this.mValue, this.mVelocity, j9);
        float f8 = dynamicAnimation$MassStateUpdateValueAndVelocity.mValue;
        this.mValue = f8;
        float f9 = dynamicAnimation$MassStateUpdateValueAndVelocity.mVelocity;
        this.mVelocity = f9;
        float f10 = this.mMinValue;
        if (f8 < f10) {
            this.mValue = f10;
            return true;
        }
        float f11 = this.mMaxValue;
        if (f8 <= f11) {
            return isAtEquilibrium(f8, f9);
        }
        this.mValue = f11;
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
        FlingAnimation$DragForce flingAnimation$DragForce = new FlingAnimation$DragForce();
        this.mFlingForce = flingAnimation$DragForce;
        flingAnimation$DragForce.setValueThreshold(getValueThreshold());
    }
}
