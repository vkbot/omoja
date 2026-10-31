package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class StopLogicEngine$Decelerate implements StopEngine {
    private float mAcceleration;
    private float mDestination;
    private boolean mDone = false;
    private float mDuration;
    private float mInitialPos;
    private float mInitialVelocity;
    private float mLastVelocity;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void config(float f8, float f9, float f10) {
        this.mDone = false;
        this.mDestination = f9;
        this.mInitialVelocity = f10;
        this.mInitialPos = f8;
        float f11 = (f9 - f8) / (f10 / 2.0f);
        this.mDuration = f11;
        this.mAcceleration = (-f10) / f11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public String debug(String str, float f8) {
        return this.mDuration + " " + this.mLastVelocity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getInterpolation(float f8) {
        if (f8 > this.mDuration) {
            this.mDone = true;
            return this.mDestination;
        }
        getVelocity(f8);
        return ((((this.mAcceleration * f8) / 2.0f) + this.mInitialVelocity) * f8) + this.mInitialPos;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity(float f8) {
        if (f8 > this.mDuration) {
            return 0.0f;
        }
        float f9 = (this.mAcceleration * f8) + this.mInitialVelocity;
        this.mLastVelocity = f9;
        return f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public boolean isStopped() {
        return this.mDone;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity() {
        return this.mLastVelocity;
    }
}
