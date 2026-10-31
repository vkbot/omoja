package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Visibility$DisappearListener extends AnimatorListenerAdapter implements Transition$TransitionListener {
    boolean mCanceled = false;
    private final int mFinalVisibility;
    private boolean mLayoutSuppressed;
    private final ViewGroup mParent;
    private final boolean mSuppressLayout;
    private final View mView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Visibility$DisappearListener(View view, int i9, boolean z8) {
        this.mView = view;
        this.mFinalVisibility = i9;
        this.mParent = (ViewGroup) view.getParent();
        this.mSuppressLayout = z8;
        suppressLayout(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void hideViewWhenNotCanceled() {
        if (!this.mCanceled) {
            ViewUtils.setTransitionVisibility(this.mView, this.mFinalVisibility);
            ViewGroup viewGroup = this.mParent;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        suppressLayout(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void suppressLayout(boolean z8) {
        ViewGroup viewGroup;
        if (!this.mSuppressLayout || this.mLayoutSuppressed == z8 || (viewGroup = this.mParent) == null) {
            return;
        }
        this.mLayoutSuppressed = z8;
        ViewGroupUtils.suppressLayout(viewGroup, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.mCanceled = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(@NonNull Animator animator, boolean z8) {
        if (z8) {
            return;
        }
        hideViewWhenNotCanceled();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(@NonNull Animator animator, boolean z8) {
        if (z8) {
            ViewUtils.setTransitionVisibility(this.mView, 0);
            ViewGroup viewGroup = this.mParent;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionEnd(@NonNull Transition transition) {
        transition.removeListener(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionPause(@NonNull Transition transition) {
        suppressLayout(false);
        if (this.mCanceled) {
            return;
        }
        ViewUtils.setTransitionVisibility(this.mView, this.mFinalVisibility);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionResume(@NonNull Transition transition) {
        suppressLayout(true);
        if (this.mCanceled) {
            return;
        }
        ViewUtils.setTransitionVisibility(this.mView, 0);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        hideViewWhenNotCanceled();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionCancel(@NonNull Transition transition) {
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionStart(@NonNull Transition transition) {
    }
}
