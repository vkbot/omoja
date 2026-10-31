package androidx.transition;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentTransitionSupport$4 implements Transition$TransitionListener {
    final /* synthetic */ FragmentTransitionSupport this$0;
    final /* synthetic */ Runnable val$transitionCompleteRunnable;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FragmentTransitionSupport$4(FragmentTransitionSupport fragmentTransitionSupport, Runnable runnable) {
        this.this$0 = fragmentTransitionSupport;
        this.val$transitionCompleteRunnable = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionEnd(@NonNull Transition transition) {
        this.val$transitionCompleteRunnable.run();
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionCancel(@NonNull Transition transition) {
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
