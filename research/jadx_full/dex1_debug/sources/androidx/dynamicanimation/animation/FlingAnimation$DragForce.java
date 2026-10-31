package androidx.dynamicanimation.animation;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class FlingAnimation$DragForce implements Force {
    private static final float DEFAULT_FRICTION = -4.2f;
    private static final float VELOCITY_THRESHOLD_MULTIPLIER = 62.5f;
    private float mFriction = DEFAULT_FRICTION;
    private final DynamicAnimation$MassState mMassState = new DynamicAnimation$MassState();
    private float mVelocityThreshold;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.Force
    public float getAcceleration(float f8, float f9) {
        return f9 * this.mFriction;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFrictionScalar() {
        return this.mFriction / DEFAULT_FRICTION;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.Force
    public boolean isAtEquilibrium(float f8, float f9) {
        return Math.abs(f9) < this.mVelocityThreshold;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFrictionScalar(float f8) {
        this.mFriction = f8 * DEFAULT_FRICTION;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setValueThreshold(float f8) {
        this.mVelocityThreshold = f8 * VELOCITY_THRESHOLD_MULTIPLIER;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DynamicAnimation$MassState updateValueAndVelocity(float f8, float f9, long j9) {
        this.mMassState.mVelocity = (float) (Math.exp((j9 / 1000.0f) * this.mFriction) * ((double) f9));
        DynamicAnimation$MassState dynamicAnimation$MassState = this.mMassState;
        float f10 = dynamicAnimation$MassState.mVelocity;
        float f11 = ((f10 - f9) / this.mFriction) + f8;
        dynamicAnimation$MassState.mValue = f11;
        if (isAtEquilibrium(f11, f10)) {
            this.mMassState.mVelocity = 0.0f;
        }
        return this.mMassState;
    }
}
