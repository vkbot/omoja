package androidx.transition;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TransitionSet$TransitionSetListener extends TransitionListenerAdapter {
    TransitionSet mTransitionSet;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TransitionSet$TransitionSetListener(TransitionSet transitionSet) {
        this.mTransitionSet = transitionSet;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition$TransitionListener
    public void onTransitionEnd(@NonNull Transition transition) {
        TransitionSet transitionSet = this.mTransitionSet;
        int i9 = transitionSet.mCurrentListeners - 1;
        transitionSet.mCurrentListeners = i9;
        if (i9 == 0) {
            transitionSet.mStarted = false;
            transitionSet.end();
        }
        transition.removeListener(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition$TransitionListener
    public void onTransitionStart(@NonNull Transition transition) {
        TransitionSet transitionSet = this.mTransitionSet;
        if (transitionSet.mStarted) {
            return;
        }
        transitionSet.start();
        this.mTransitionSet.mStarted = true;
    }
}
