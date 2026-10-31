package androidx.transition;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TransitionSet$1 extends TransitionListenerAdapter {
    final /* synthetic */ TransitionSet this$0;
    final /* synthetic */ Transition val$nextTransition;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TransitionSet$1(TransitionSet transitionSet, Transition transition) {
        this.this$0 = transitionSet;
        this.val$nextTransition = transition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition$TransitionListener
    public void onTransitionEnd(@NonNull Transition transition) {
        this.val$nextTransition.runAnimators();
        transition.removeListener(this);
    }
}
