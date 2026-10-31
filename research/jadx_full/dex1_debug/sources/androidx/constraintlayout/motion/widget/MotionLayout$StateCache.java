package androidx.constraintlayout.motion.widget;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionLayout$StateCache {
    final /* synthetic */ MotionLayout this$0;
    float mProgress = Float.NaN;
    float mVelocity = Float.NaN;
    int mStartState = -1;
    int mEndState = -1;
    final String mKeyProgress = "motion.progress";
    final String mKeyVelocity = "motion.velocity";
    final String mKeyStartState = "motion.StartState";
    final String mKeyEndState = "motion.EndState";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MotionLayout$StateCache(MotionLayout motionLayout) {
        this.this$0 = motionLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void apply() {
        int i9 = this.mStartState;
        if (i9 != -1 || this.mEndState != -1) {
            if (i9 == -1) {
                this.this$0.transitionToState(this.mEndState);
            } else {
                int i10 = this.mEndState;
                MotionLayout motionLayout = this.this$0;
                if (i10 == -1) {
                    motionLayout.setState(i9, -1, -1);
                } else {
                    motionLayout.setTransition(i9, i10);
                }
            }
            this.this$0.setState(MotionLayout$TransitionState.SETUP);
        }
        if (Float.isNaN(this.mVelocity)) {
            if (Float.isNaN(this.mProgress)) {
                return;
            }
            this.this$0.setProgress(this.mProgress);
        } else {
            this.this$0.setProgress(this.mProgress, this.mVelocity);
            this.mProgress = Float.NaN;
            this.mVelocity = Float.NaN;
            this.mStartState = -1;
            this.mEndState = -1;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Bundle getTransitionState() {
        Bundle bundle = new Bundle();
        bundle.putFloat("motion.progress", this.mProgress);
        bundle.putFloat("motion.velocity", this.mVelocity);
        bundle.putInt("motion.StartState", this.mStartState);
        bundle.putInt("motion.EndState", this.mEndState);
        return bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void recordState() {
        this.mEndState = MotionLayout.access$100(this.this$0);
        this.mStartState = MotionLayout.access$200(this.this$0);
        this.mVelocity = this.this$0.getVelocity();
        this.mProgress = this.this$0.getProgress();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEndState(int i9) {
        this.mEndState = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setProgress(float f8) {
        this.mProgress = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartState(int i9) {
        this.mStartState = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTransitionState(Bundle bundle) {
        this.mProgress = bundle.getFloat("motion.progress");
        this.mVelocity = bundle.getFloat("motion.velocity");
        this.mStartState = bundle.getInt("motion.StartState");
        this.mEndState = bundle.getInt("motion.EndState");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVelocity(float f8) {
        this.mVelocity = f8;
    }
}
