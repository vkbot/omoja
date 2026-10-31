package androidx.recyclerview.widget;

import ai.onnxruntime.a;
import android.animation.Animator;
import android.animation.Animator$AnimatorListener;
import android.animation.ValueAnimator;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@VisibleForTesting
public class ItemTouchHelper$RecoverAnimation implements Animator$AnimatorListener {
    final int mActionState;
    final int mAnimationType;
    private float mFraction;
    boolean mIsPendingCleanup;
    final float mStartDx;
    final float mStartDy;
    final float mTargetX;
    final float mTargetY;

    @VisibleForTesting
    final ValueAnimator mValueAnimator;
    final RecyclerView$ViewHolder mViewHolder;
    float mX;
    float mY;
    boolean mOverridden = false;
    boolean mEnded = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ItemTouchHelper$RecoverAnimation(RecyclerView$ViewHolder recyclerView$ViewHolder, int i9, int i10, float f8, float f9, float f10, float f11) {
        this.mActionState = i10;
        this.mAnimationType = i9;
        this.mViewHolder = recyclerView$ViewHolder;
        this.mStartDx = f8;
        this.mStartDy = f9;
        this.mTargetX = f10;
        this.mTargetY = f11;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mValueAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ItemTouchHelper$RecoverAnimation$1(this));
        valueAnimatorOfFloat.setTarget(recyclerView$ViewHolder.itemView);
        valueAnimatorOfFloat.addListener(this);
        setFraction(0.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void cancel() {
        this.mValueAnimator.cancel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        setFraction(1.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.mEnded) {
            this.mViewHolder.setIsRecyclable(true);
        }
        this.mEnded = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDuration(long j9) {
        this.mValueAnimator.setDuration(j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFraction(float f8) {
        this.mFraction = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void start() {
        this.mViewHolder.setIsRecyclable(false);
        this.mValueAnimator.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void update() {
        float f8 = this.mStartDx;
        float f9 = this.mTargetX;
        if (f8 == f9) {
            this.mX = this.mViewHolder.itemView.getTranslationX();
        } else {
            this.mX = a.b(f9, f8, this.mFraction, f8);
        }
        float f10 = this.mStartDy;
        float f11 = this.mTargetY;
        if (f10 == f11) {
            this.mY = this.mViewHolder.itemView.getTranslationY();
        } else {
            this.mY = a.b(f11, f10, this.mFraction, f10);
        }
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
    }
}
