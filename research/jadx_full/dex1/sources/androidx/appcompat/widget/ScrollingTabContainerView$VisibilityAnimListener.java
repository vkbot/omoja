package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.ViewPropertyAnimator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ScrollingTabContainerView$VisibilityAnimListener extends AnimatorListenerAdapter {
    private boolean mCanceled = false;
    private int mFinalVisibility;
    final /* synthetic */ ScrollingTabContainerView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ScrollingTabContainerView$VisibilityAnimListener(ScrollingTabContainerView scrollingTabContainerView) {
        this.this$0 = scrollingTabContainerView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.mCanceled = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.mCanceled) {
            return;
        }
        ScrollingTabContainerView scrollingTabContainerView = this.this$0;
        scrollingTabContainerView.mVisibilityAnim = null;
        scrollingTabContainerView.setVisibility(this.mFinalVisibility);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.this$0.setVisibility(0);
        this.mCanceled = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ScrollingTabContainerView$VisibilityAnimListener withFinalVisibility(ViewPropertyAnimator viewPropertyAnimator, int i9) {
        this.mFinalVisibility = i9;
        this.this$0.mVisibilityAnim = viewPropertyAnimator;
        return this;
    }
}
