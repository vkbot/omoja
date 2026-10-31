package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Visibility$OverlayListener extends AnimatorListenerAdapter implements Transition$TransitionListener {
    private boolean mHasOverlay = true;
    private final ViewGroup mOverlayHost;
    private final View mOverlayView;
    private final View mStartView;
    final /* synthetic */ Visibility this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Visibility$OverlayListener(Visibility visibility, ViewGroup viewGroup, View view, View view2) {
        this.this$0 = visibility;
        this.mOverlayHost = viewGroup;
        this.mOverlayView = view;
        this.mStartView = view2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void removeFromOverlay() {
        this.mStartView.setTag(R$id.save_overlay_view, null);
        this.mOverlayHost.getOverlay().remove(this.mOverlayView);
        this.mHasOverlay = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(@NonNull Animator animator, boolean z8) {
        if (z8) {
            return;
        }
        removeFromOverlay();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorPauseListener
    public void onAnimationPause(Animator animator) {
        this.mOverlayHost.getOverlay().remove(this.mOverlayView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorPauseListener
    public void onAnimationResume(Animator animator) {
        if (this.mOverlayView.getParent() == null) {
            this.mOverlayHost.getOverlay().add(this.mOverlayView);
        } else {
            this.this$0.cancel();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationStart(@NonNull Animator animator, boolean z8) {
        if (z8) {
            this.mStartView.setTag(R$id.save_overlay_view, this.mOverlayView);
            this.mOverlayHost.getOverlay().add(this.mOverlayView);
            this.mHasOverlay = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionCancel(@NonNull Transition transition) {
        if (this.mHasOverlay) {
            removeFromOverlay();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionEnd(@NonNull Transition transition) {
        transition.removeListener(this);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        removeFromOverlay();
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionPause(@NonNull Transition transition) {
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionResume(@NonNull Transition transition) {
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionStart(@NonNull Transition transition) {
    }
}
