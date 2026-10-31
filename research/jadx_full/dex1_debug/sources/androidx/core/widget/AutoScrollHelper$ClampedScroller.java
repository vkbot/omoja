package androidx.core.widget;

import ai.onnxruntime.b;
import android.view.animation.AnimationUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AutoScrollHelper$ClampedScroller {
    private int mEffectiveRampDown;
    private int mRampDownDuration;
    private int mRampUpDuration;
    private float mStopValue;
    private float mTargetVelocityX;
    private float mTargetVelocityY;
    private long mStartTime = Long.MIN_VALUE;
    private long mStopTime = -1;
    private long mDeltaTime = 0;
    private int mDeltaX = 0;
    private int mDeltaY = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private float getValueAt(long j9) {
        long j10 = this.mStartTime;
        if (j9 < j10) {
            return 0.0f;
        }
        long j11 = this.mStopTime;
        if (j11 < 0 || j9 < j11) {
            return AutoScrollHelper.constrain((j9 - j10) / this.mRampUpDuration, 0.0f, 1.0f) * 0.5f;
        }
        float f8 = this.mStopValue;
        return (AutoScrollHelper.constrain((j9 - j11) / this.mEffectiveRampDown, 0.0f, 1.0f) * f8) + (1.0f - f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private float interpolateValue(float f8) {
        return (f8 * 4.0f) + ((-4.0f) * f8 * f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void computeScrollDelta() {
        if (this.mDeltaTime == 0) {
            b.h("Cannot compute scroll delta before calling start()");
            return;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        float fInterpolateValue = interpolateValue(getValueAt(jCurrentAnimationTimeMillis));
        long j9 = jCurrentAnimationTimeMillis - this.mDeltaTime;
        this.mDeltaTime = jCurrentAnimationTimeMillis;
        float f8 = j9 * fInterpolateValue;
        this.mDeltaX = (int) (this.mTargetVelocityX * f8);
        this.mDeltaY = (int) (f8 * this.mTargetVelocityY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDeltaX() {
        return this.mDeltaX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDeltaY() {
        return this.mDeltaY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHorizontalDirection() {
        float f8 = this.mTargetVelocityX;
        return (int) (f8 / Math.abs(f8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getVerticalDirection() {
        float f8 = this.mTargetVelocityY;
        return (int) (f8 / Math.abs(f8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isFinished() {
        return this.mStopTime > 0 && AnimationUtils.currentAnimationTimeMillis() > this.mStopTime + ((long) this.mEffectiveRampDown);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void requestStop() {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.mEffectiveRampDown = AutoScrollHelper.constrain((int) (jCurrentAnimationTimeMillis - this.mStartTime), 0, this.mRampDownDuration);
        this.mStopValue = getValueAt(jCurrentAnimationTimeMillis);
        this.mStopTime = jCurrentAnimationTimeMillis;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRampDownDuration(int i9) {
        this.mRampDownDuration = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRampUpDuration(int i9) {
        this.mRampUpDuration = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTargetVelocity(float f8, float f9) {
        this.mTargetVelocityX = f8;
        this.mTargetVelocityY = f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void start() {
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.mStartTime = jCurrentAnimationTimeMillis;
        this.mStopTime = -1L;
        this.mDeltaTime = jCurrentAnimationTimeMillis;
        this.mStopValue = 0.5f;
        this.mDeltaX = 0;
        this.mDeltaY = 0;
    }
}
