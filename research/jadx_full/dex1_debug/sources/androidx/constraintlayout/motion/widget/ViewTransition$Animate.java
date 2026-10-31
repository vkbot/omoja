package androidx.constraintlayout.motion.widget;

import android.graphics.Rect;
import android.view.animation.Interpolator;
import androidx.constraintlayout.core.motion.utils.KeyCache;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewTransition$Animate {
    private final int mClearsTag;
    float mDpositionDt;
    int mDuration;
    boolean mHoldAt100;
    Interpolator mInterpolator;
    long mLastRender;
    MotionController mMC;
    float mPosition;
    private final int mSetsTag;
    long mStart;
    int mUpDuration;
    ViewTransitionController mVtController;
    KeyCache mCache = new KeyCache();
    boolean mReverse = false;
    Rect mTempRec = new Rect();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewTransition$Animate(ViewTransitionController viewTransitionController, MotionController motionController, int i9, int i10, int i11, Interpolator interpolator, int i12, int i13) {
        this.mHoldAt100 = false;
        this.mVtController = viewTransitionController;
        this.mMC = motionController;
        this.mDuration = i9;
        this.mUpDuration = i10;
        long jNanoTime = System.nanoTime();
        this.mStart = jNanoTime;
        this.mLastRender = jNanoTime;
        this.mVtController.addAnimation(this);
        this.mInterpolator = interpolator;
        this.mSetsTag = i12;
        this.mClearsTag = i13;
        if (i11 == 3) {
            this.mHoldAt100 = true;
        }
        this.mDpositionDt = i9 == 0 ? Float.MAX_VALUE : 1.0f / i9;
        mutate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void mutate() {
        if (this.mReverse) {
            mutateReverse();
        } else {
            mutateForward();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void mutateForward() {
        long jNanoTime = System.nanoTime();
        long j9 = jNanoTime - this.mLastRender;
        this.mLastRender = jNanoTime;
        float f8 = (((float) (j9 * 1.0E-6d)) * this.mDpositionDt) + this.mPosition;
        this.mPosition = f8;
        if (f8 >= 1.0f) {
            this.mPosition = 1.0f;
        }
        Interpolator interpolator = this.mInterpolator;
        float interpolation = this.mPosition;
        if (interpolator != null) {
            interpolation = interpolator.getInterpolation(interpolation);
        }
        float f9 = interpolation;
        MotionController motionController = this.mMC;
        boolean zInterpolate = motionController.interpolate(motionController.mView, f9, jNanoTime, this.mCache);
        if (this.mPosition >= 1.0f) {
            if (this.mSetsTag != -1) {
                this.mMC.getView().setTag(this.mSetsTag, Long.valueOf(System.nanoTime()));
            }
            if (this.mClearsTag != -1) {
                this.mMC.getView().setTag(this.mClearsTag, null);
            }
            if (!this.mHoldAt100) {
                this.mVtController.removeAnimation(this);
            }
        }
        if (this.mPosition < 1.0f || zInterpolate) {
            this.mVtController.invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void mutateReverse() {
        long jNanoTime = System.nanoTime();
        long j9 = jNanoTime - this.mLastRender;
        this.mLastRender = jNanoTime;
        float f8 = this.mPosition - (((float) (j9 * 1.0E-6d)) * this.mDpositionDt);
        this.mPosition = f8;
        if (f8 < 0.0f) {
            this.mPosition = 0.0f;
        }
        Interpolator interpolator = this.mInterpolator;
        float interpolation = this.mPosition;
        if (interpolator != null) {
            interpolation = interpolator.getInterpolation(interpolation);
        }
        float f9 = interpolation;
        MotionController motionController = this.mMC;
        boolean zInterpolate = motionController.interpolate(motionController.mView, f9, jNanoTime, this.mCache);
        if (this.mPosition <= 0.0f) {
            if (this.mSetsTag != -1) {
                this.mMC.getView().setTag(this.mSetsTag, Long.valueOf(System.nanoTime()));
            }
            if (this.mClearsTag != -1) {
                this.mMC.getView().setTag(this.mClearsTag, null);
            }
            this.mVtController.removeAnimation(this);
        }
        if (this.mPosition > 0.0f || zInterpolate) {
            this.mVtController.invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reactTo(int i9, float f8, float f9) {
        if (i9 == 1) {
            if (this.mReverse) {
                return;
            }
            reverse(true);
        } else {
            if (i9 != 2) {
                return;
            }
            this.mMC.getView().getHitRect(this.mTempRec);
            if (this.mTempRec.contains((int) f8, (int) f9) || this.mReverse) {
                return;
            }
            reverse(true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reverse(boolean z8) {
        int i9;
        this.mReverse = z8;
        if (z8 && (i9 = this.mUpDuration) != -1) {
            this.mDpositionDt = i9 == 0 ? Float.MAX_VALUE : 1.0f / i9;
        }
        this.mVtController.invalidate();
        this.mLastRender = System.nanoTime();
    }
}
