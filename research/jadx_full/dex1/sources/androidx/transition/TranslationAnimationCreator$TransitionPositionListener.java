package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TranslationAnimationCreator$TransitionPositionListener extends AnimatorListenerAdapter implements Transition$TransitionListener {
    private boolean mIsTransitionCanceled;
    private final View mMovingView;
    private float mPausedX;
    private float mPausedY;
    private final float mTerminalX;
    private final float mTerminalY;
    private int[] mTransitionPosition;
    private final View mViewInHierarchy;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TranslationAnimationCreator$TransitionPositionListener(View view, View view2, float f8, float f9) {
        this.mMovingView = view;
        this.mViewInHierarchy = view2;
        this.mTerminalX = f8;
        this.mTerminalY = f9;
        int[] iArr = (int[]) view2.getTag(R$id.transition_position);
        this.mTransitionPosition = iArr;
        if (iArr != null) {
            view2.setTag(R$id.transition_position, null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setInterruptedPosition() {
        if (this.mTransitionPosition == null) {
            this.mTransitionPosition = new int[2];
        }
        this.mMovingView.getLocationOnScreen(this.mTransitionPosition);
        this.mViewInHierarchy.setTag(R$id.transition_position, this.mTransitionPosition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.mIsTransitionCanceled = true;
        this.mMovingView.setTranslationX(this.mTerminalX);
        this.mMovingView.setTranslationY(this.mTerminalY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(@NonNull Animator animator, boolean z8) {
        if (z8) {
            return;
        }
        this.mMovingView.setTranslationX(this.mTerminalX);
        this.mMovingView.setTranslationY(this.mTerminalY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionCancel(@NonNull Transition transition) {
        this.mIsTransitionCanceled = true;
        this.mMovingView.setTranslationX(this.mTerminalX);
        this.mMovingView.setTranslationY(this.mTerminalY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionEnd(@NonNull Transition transition, boolean z8) {
        if (this.mIsTransitionCanceled) {
            return;
        }
        this.mViewInHierarchy.setTag(R$id.transition_position, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionPause(@NonNull Transition transition) {
        setInterruptedPosition();
        this.mPausedX = this.mMovingView.getTranslationX();
        this.mPausedY = this.mMovingView.getTranslationY();
        this.mMovingView.setTranslationX(this.mTerminalX);
        this.mMovingView.setTranslationY(this.mTerminalY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionResume(@NonNull Transition transition) {
        this.mMovingView.setTranslationX(this.mPausedX);
        this.mMovingView.setTranslationY(this.mPausedY);
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionEnd(@NonNull Transition transition) {
        onTransitionEnd(transition, false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(@NonNull Animator animator) {
        onAnimationEnd(animator, false);
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionStart(@NonNull Transition transition) {
    }
}
