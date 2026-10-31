package androidx.core.widget;

import ai.onnxruntime.C0075b;
import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AutoScrollHelper implements View.OnTouchListener {
    private static final int DEFAULT_ACTIVATION_DELAY = ViewConfiguration.getTapTimeout();
    private static final int DEFAULT_EDGE_TYPE = 1;
    private static final float DEFAULT_MAXIMUM_EDGE = Float.MAX_VALUE;
    private static final int DEFAULT_MAXIMUM_VELOCITY_DIPS = 1575;
    private static final int DEFAULT_MINIMUM_VELOCITY_DIPS = 315;
    private static final int DEFAULT_RAMP_DOWN_DURATION = 500;
    private static final int DEFAULT_RAMP_UP_DURATION = 500;
    private static final float DEFAULT_RELATIVE_EDGE = 0.2f;
    private static final float DEFAULT_RELATIVE_VELOCITY = 1.0f;
    public static final int EDGE_TYPE_INSIDE = 0;
    public static final int EDGE_TYPE_INSIDE_EXTEND = 1;
    public static final int EDGE_TYPE_OUTSIDE = 2;
    private static final int HORIZONTAL = 0;
    public static final float NO_MAX = Float.MAX_VALUE;
    public static final float NO_MIN = 0.0f;
    public static final float RELATIVE_UNSPECIFIED = 0.0f;
    private static final int VERTICAL = 1;
    private int mActivationDelay;
    private boolean mAlreadyDelayed;
    boolean mAnimating;
    private int mEdgeType;
    private boolean mEnabled;
    private boolean mExclusive;
    boolean mNeedsCancel;
    boolean mNeedsReset;
    private Runnable mRunnable;
    final View mTarget;
    final ClampedScroller mScroller = new ClampedScroller();
    private final Interpolator mEdgeInterpolator = new AccelerateInterpolator();
    private float[] mRelativeEdges = {0.0f, 0.0f};
    private float[] mMaximumEdges = {Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] mRelativeVelocity = {0.0f, 0.0f};
    private float[] mMinimumVelocity = {0.0f, 0.0f};
    private float[] mMaximumVelocity = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class ClampedScroller {
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

        private float getValueAt(long j10) {
            long j11 = this.mStartTime;
            if (j10 < j11) {
                return 0.0f;
            }
            long j12 = this.mStopTime;
            if (j12 < 0 || j10 < j12) {
                return AutoScrollHelper.constrain((j10 - j11) / this.mRampUpDuration, 0.0f, 1.0f) * 0.5f;
            }
            float f8 = this.mStopValue;
            return (AutoScrollHelper.constrain((j10 - j12) / this.mEffectiveRampDown, 0.0f, 1.0f) * f8) + (1.0f - f8);
        }

        private float interpolateValue(float f8) {
            return (f8 * 4.0f) + ((-4.0f) * f8 * f8);
        }

        public void computeScrollDelta() {
            if (this.mDeltaTime == 0) {
                C0075b.m183h("Cannot compute scroll delta before calling start()");
                return;
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fInterpolateValue = interpolateValue(getValueAt(jCurrentAnimationTimeMillis));
            long j10 = jCurrentAnimationTimeMillis - this.mDeltaTime;
            this.mDeltaTime = jCurrentAnimationTimeMillis;
            float f8 = j10 * fInterpolateValue;
            this.mDeltaX = (int) (this.mTargetVelocityX * f8);
            this.mDeltaY = (int) (f8 * this.mTargetVelocityY);
        }

        public int getDeltaX() {
            return this.mDeltaX;
        }

        public int getDeltaY() {
            return this.mDeltaY;
        }

        public int getHorizontalDirection() {
            float f8 = this.mTargetVelocityX;
            return (int) (f8 / Math.abs(f8));
        }

        public int getVerticalDirection() {
            float f8 = this.mTargetVelocityY;
            return (int) (f8 / Math.abs(f8));
        }

        public boolean isFinished() {
            return this.mStopTime > 0 && AnimationUtils.currentAnimationTimeMillis() > this.mStopTime + ((long) this.mEffectiveRampDown);
        }

        public void requestStop() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.mEffectiveRampDown = AutoScrollHelper.constrain((int) (jCurrentAnimationTimeMillis - this.mStartTime), 0, this.mRampDownDuration);
            this.mStopValue = getValueAt(jCurrentAnimationTimeMillis);
            this.mStopTime = jCurrentAnimationTimeMillis;
        }

        public void setRampDownDuration(int i10) {
            this.mRampDownDuration = i10;
        }

        public void setRampUpDuration(int i10) {
            this.mRampUpDuration = i10;
        }

        public void setTargetVelocity(float f8, float f10) {
            this.mTargetVelocityX = f8;
            this.mTargetVelocityY = f10;
        }

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

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public class ScrollAnimationRunnable implements Runnable {
        public ScrollAnimationRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            if (autoScrollHelper.mAnimating) {
                if (autoScrollHelper.mNeedsReset) {
                    autoScrollHelper.mNeedsReset = false;
                    autoScrollHelper.mScroller.start();
                }
                ClampedScroller clampedScroller = AutoScrollHelper.this.mScroller;
                if (clampedScroller.isFinished() || !AutoScrollHelper.this.shouldAnimate()) {
                    AutoScrollHelper.this.mAnimating = false;
                    return;
                }
                AutoScrollHelper autoScrollHelper2 = AutoScrollHelper.this;
                if (autoScrollHelper2.mNeedsCancel) {
                    autoScrollHelper2.mNeedsCancel = false;
                    autoScrollHelper2.cancelTargetTouch();
                }
                clampedScroller.computeScrollDelta();
                AutoScrollHelper.this.scrollTargetBy(clampedScroller.getDeltaX(), clampedScroller.getDeltaY());
                ViewCompat.postOnAnimation(AutoScrollHelper.this.mTarget, this);
            }
        }
    }

    public AutoScrollHelper(@NonNull View view) {
        this.mTarget = view;
        float f8 = Resources.getSystem().getDisplayMetrics().density;
        float f10 = (int) ((1575.0f * f8) + 0.5f);
        setMaximumVelocity(f10, f10);
        float f11 = (int) ((f8 * 315.0f) + 0.5f);
        setMinimumVelocity(f11, f11);
        setEdgeType(1);
        setMaximumEdges(Float.MAX_VALUE, Float.MAX_VALUE);
        setRelativeEdges(0.2f, 0.2f);
        setRelativeVelocity(1.0f, 1.0f);
        setActivationDelay(DEFAULT_ACTIVATION_DELAY);
        setRampUpDuration(500);
        setRampDownDuration(500);
    }

    private float computeTargetVelocity(int i10, float f8, float f10, float f11) {
        float edgeValue = getEdgeValue(this.mRelativeEdges[i10], f10, this.mMaximumEdges[i10], f8);
        if (edgeValue == 0.0f) {
            return 0.0f;
        }
        float f12 = this.mRelativeVelocity[i10];
        float f13 = this.mMinimumVelocity[i10];
        float f14 = this.mMaximumVelocity[i10];
        float f15 = f12 * f11;
        return edgeValue > 0.0f ? constrain(edgeValue * f15, f13, f14) : -constrain((-edgeValue) * f15, f13, f14);
    }

    public static float constrain(float f8, float f10, float f11) {
        if (f8 > f11) {
            return f11;
        }
        return f8 < f10 ? f10 : f8;
    }

    private float constrainEdgeValue(float f8, float f10) {
        if (f10 == 0.0f) {
            return 0.0f;
        }
        int i10 = this.mEdgeType;
        if (i10 == 0 || i10 == 1) {
            if (f8 < f10) {
                if (f8 >= 0.0f) {
                    return 1.0f - (f8 / f10);
                }
                if (this.mAnimating && i10 == 1) {
                    return 1.0f;
                }
            }
        } else if (i10 == 2 && f8 < 0.0f) {
            return f8 / (-f10);
        }
        return 0.0f;
    }

    private float getEdgeValue(float f8, float f10, float f11, float f12) {
        float interpolation;
        float fConstrain = constrain(f8 * f10, 0.0f, f11);
        float fConstrainEdgeValue = constrainEdgeValue(f10 - f12, fConstrain) - constrainEdgeValue(f12, fConstrain);
        if (fConstrainEdgeValue < 0.0f) {
            interpolation = -this.mEdgeInterpolator.getInterpolation(-fConstrainEdgeValue);
        } else {
            if (fConstrainEdgeValue <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.mEdgeInterpolator.getInterpolation(fConstrainEdgeValue);
        }
        return constrain(interpolation, -1.0f, 1.0f);
    }

    private void requestStop() {
        if (this.mNeedsReset) {
            this.mAnimating = false;
        } else {
            this.mScroller.requestStop();
        }
    }

    private void startAnimating() {
        int i10;
        if (this.mRunnable == null) {
            this.mRunnable = new ScrollAnimationRunnable();
        }
        this.mAnimating = true;
        this.mNeedsReset = true;
        if (this.mAlreadyDelayed || (i10 = this.mActivationDelay) <= 0) {
            this.mRunnable.run();
        } else {
            ViewCompat.postOnAnimationDelayed(this.mTarget, this.mRunnable, i10);
        }
        this.mAlreadyDelayed = true;
    }

    public abstract boolean canTargetScrollHorizontally(int i10);

    public abstract boolean canTargetScrollVertically(int i10);

    public void cancelTargetTouch() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        this.mTarget.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public boolean isExclusive() {
        return this.mExclusive;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.mEnabled) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                requestStop();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    requestStop();
                }
            }
            return !this.mExclusive && this.mAnimating;
        }
        this.mNeedsCancel = true;
        this.mAlreadyDelayed = false;
        this.mScroller.setTargetVelocity(computeTargetVelocity(0, motionEvent.getX(), view.getWidth(), this.mTarget.getWidth()), computeTargetVelocity(1, motionEvent.getY(), view.getHeight(), this.mTarget.getHeight()));
        if (!this.mAnimating && shouldAnimate()) {
            startAnimating();
        }
        if (this.mExclusive) {
        }
    }

    public abstract void scrollTargetBy(int i10, int i11);

    @NonNull
    public AutoScrollHelper setActivationDelay(int i10) {
        this.mActivationDelay = i10;
        return this;
    }

    @NonNull
    public AutoScrollHelper setEdgeType(int i10) {
        this.mEdgeType = i10;
        return this;
    }

    public AutoScrollHelper setEnabled(boolean z9) {
        if (this.mEnabled && !z9) {
            requestStop();
        }
        this.mEnabled = z9;
        return this;
    }

    public AutoScrollHelper setExclusive(boolean z9) {
        this.mExclusive = z9;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMaximumEdges(float f8, float f10) {
        float[] fArr = this.mMaximumEdges;
        fArr[0] = f8;
        fArr[1] = f10;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMaximumVelocity(float f8, float f10) {
        float[] fArr = this.mMaximumVelocity;
        fArr[0] = f8 / 1000.0f;
        fArr[1] = f10 / 1000.0f;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMinimumVelocity(float f8, float f10) {
        float[] fArr = this.mMinimumVelocity;
        fArr[0] = f8 / 1000.0f;
        fArr[1] = f10 / 1000.0f;
        return this;
    }

    @NonNull
    public AutoScrollHelper setRampDownDuration(int i10) {
        this.mScroller.setRampDownDuration(i10);
        return this;
    }

    @NonNull
    public AutoScrollHelper setRampUpDuration(int i10) {
        this.mScroller.setRampUpDuration(i10);
        return this;
    }

    @NonNull
    public AutoScrollHelper setRelativeEdges(float f8, float f10) {
        float[] fArr = this.mRelativeEdges;
        fArr[0] = f8;
        fArr[1] = f10;
        return this;
    }

    @NonNull
    public AutoScrollHelper setRelativeVelocity(float f8, float f10) {
        float[] fArr = this.mRelativeVelocity;
        fArr[0] = f8 / 1000.0f;
        fArr[1] = f10 / 1000.0f;
        return this;
    }

    public boolean shouldAnimate() {
        ClampedScroller clampedScroller = this.mScroller;
        int verticalDirection = clampedScroller.getVerticalDirection();
        int horizontalDirection = clampedScroller.getHorizontalDirection();
        if (verticalDirection == 0 || !canTargetScrollVertically(verticalDirection)) {
            return horizontalDirection != 0 && canTargetScrollHorizontally(horizontalDirection);
        }
        return true;
    }

    public static int constrain(int i10, int i11, int i12) {
        if (i10 > i12) {
            return i12;
        }
        return i10 < i11 ? i11 : i10;
    }
}
