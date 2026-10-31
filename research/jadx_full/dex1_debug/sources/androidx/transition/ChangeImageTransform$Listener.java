package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.graphics.Matrix;
import android.widget.ImageView;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChangeImageTransform$Listener extends AnimatorListenerAdapter implements Transition$TransitionListener {
    private final Matrix mEndMatrix;
    private final ImageView mImageView;
    private boolean mIsBeforeAnimator = true;
    private final Matrix mStartMatrix;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChangeImageTransform$Listener(ImageView imageView, Matrix matrix, Matrix matrix2) {
        this.mImageView = imageView;
        this.mStartMatrix = matrix;
        this.mEndMatrix = matrix2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void restoreMatrix() {
        Matrix matrix = (Matrix) this.mImageView.getTag(R$id.transition_image_transform);
        if (matrix != null) {
            ImageViewUtils.animateTransform(this.mImageView, matrix);
            this.mImageView.setTag(R$id.transition_image_transform, null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void saveMatrix(Matrix matrix) {
        this.mImageView.setTag(R$id.transition_image_transform, matrix);
        ImageViewUtils.animateTransform(this.mImageView, this.mEndMatrix);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.mIsBeforeAnimator = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorPauseListener
    public void onAnimationPause(Animator animator) {
        saveMatrix((Matrix) ((ObjectAnimator) animator).getAnimatedValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorPauseListener
    public void onAnimationResume(Animator animator) {
        restoreMatrix();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(@NonNull Animator animator, boolean z8) {
        this.mIsBeforeAnimator = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionPause(@NonNull Transition transition) {
        if (this.mIsBeforeAnimator) {
            saveMatrix(this.mStartMatrix);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionResume(@NonNull Transition transition) {
        restoreMatrix();
    }

    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(@NonNull Animator animator, boolean z8) {
        this.mIsBeforeAnimator = z8;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.mIsBeforeAnimator = false;
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionCancel(@NonNull Transition transition) {
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionEnd(@NonNull Transition transition) {
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionStart(@NonNull Transition transition) {
    }
}
