package androidx.constraintlayout.motion.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionLayout$DecelerateInterpolator extends MotionInterpolator {
    float mMaxA;
    final /* synthetic */ MotionLayout this$0;
    float mInitialV = 0.0f;
    float mCurrentP = 0.0f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionLayout$DecelerateInterpolator(MotionLayout motionLayout) {
        this.this$0 = motionLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void config(float f8, float f9, float f10) {
        this.mInitialV = f8;
        this.mCurrentP = f9;
        this.mMaxA = f10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.MotionInterpolator, android.animation.TimeInterpolator
    public float getInterpolation(float f8) {
        float f9 = this.mInitialV;
        float f10 = this.mMaxA;
        if (f9 > 0.0f) {
            if (f9 / f10 < f8) {
                f8 = f9 / f10;
            }
            this.this$0.mLastVelocity = f9 - (f10 * f8);
            return ((f9 * f8) - (((f10 * f8) * f8) / 2.0f)) + this.mCurrentP;
        }
        if ((-f9) / f10 < f8) {
            f8 = (-f9) / f10;
        }
        this.this$0.mLastVelocity = (f10 * f8) + f9;
        return (((f10 * f8) * f8) / 2.0f) + (f9 * f8) + this.mCurrentP;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
    public float getVelocity() {
        return this.this$0.mLastVelocity;
    }
}
