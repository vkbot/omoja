package androidx.fragment.app;

import android.transition.Transition;
import android.transition.Transition$TransitionListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentTransitionCompat21$4 implements Transition$TransitionListener {
    final /* synthetic */ FragmentTransitionCompat21 this$0;
    final /* synthetic */ Runnable val$transitionCompleteRunnable;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FragmentTransitionCompat21$4(FragmentTransitionCompat21 fragmentTransitionCompat21, Runnable runnable) {
        this.this$0 = fragmentTransitionCompat21;
        this.val$transitionCompleteRunnable = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.transition.Transition$TransitionListener
    public void onTransitionEnd(Transition transition) {
        this.val$transitionCompleteRunnable.run();
    }

    @Override // android.transition.Transition$TransitionListener
    public void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition$TransitionListener
    public void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition$TransitionListener
    public void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition$TransitionListener
    public void onTransitionStart(Transition transition) {
    }
}
