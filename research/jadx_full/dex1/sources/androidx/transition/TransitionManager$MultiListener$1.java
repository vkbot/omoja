package androidx.transition;

import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TransitionManager$MultiListener$1 extends TransitionListenerAdapter {
    final /* synthetic */ TransitionManager$MultiListener this$0;
    final /* synthetic */ ArrayMap val$runningTransitions;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TransitionManager$MultiListener$1(TransitionManager$MultiListener transitionManager$MultiListener, ArrayMap arrayMap) {
        this.this$0 = transitionManager$MultiListener;
        this.val$runningTransitions = arrayMap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition$TransitionListener
    public void onTransitionEnd(@NonNull Transition transition) {
        ((ArrayList) this.val$runningTransitions.get(this.this$0.mSceneRoot)).remove(transition);
        transition.removeListener(this);
    }
}
