package androidx.constraintlayout.motion.widget;

import android.view.MotionEvent;
import android.view.VelocityTracker;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MotionLayout$MyTracker implements MotionLayout$MotionTracker {
    private static MotionLayout$MyTracker sMe = new MotionLayout$MyTracker();
    VelocityTracker mTracker;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private MotionLayout$MyTracker() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static MotionLayout$MyTracker obtain() {
        sMe.mTracker = VelocityTracker.obtain();
        return sMe;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.MotionLayout$MotionTracker
    public void addMovement(MotionEvent motionEvent) {
        VelocityTracker velocityTracker = this.mTracker;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.MotionLayout$MotionTracker
    public void clear() {
        VelocityTracker velocityTracker = this.mTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.MotionLayout$MotionTracker
    public void computeCurrentVelocity(int i9) {
        VelocityTracker velocityTracker = this.mTracker;
        if (velocityTracker != null) {
            velocityTracker.computeCurrentVelocity(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.MotionLayout$MotionTracker
    public float getXVelocity() {
        VelocityTracker velocityTracker = this.mTracker;
        if (velocityTracker != null) {
            return velocityTracker.getXVelocity();
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.MotionLayout$MotionTracker
    public float getYVelocity() {
        VelocityTracker velocityTracker = this.mTracker;
        if (velocityTracker != null) {
            return velocityTracker.getYVelocity();
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.widget.MotionLayout$MotionTracker
    public void recycle() {
        VelocityTracker velocityTracker = this.mTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mTracker = null;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout$MotionTracker
    public void computeCurrentVelocity(int i9, float f8) {
        VelocityTracker velocityTracker = this.mTracker;
        if (velocityTracker != null) {
            velocityTracker.computeCurrentVelocity(i9, f8);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout$MotionTracker
    public float getXVelocity(int i9) {
        VelocityTracker velocityTracker = this.mTracker;
        if (velocityTracker != null) {
            return velocityTracker.getXVelocity(i9);
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout$MotionTracker
    public float getYVelocity(int i9) {
        if (this.mTracker != null) {
            return getYVelocity(i9);
        }
        return 0.0f;
    }
}
