package androidx.transition;

import android.view.View;
import androidx.annotation.NonNull;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentTransitionSupport$2 implements Transition$TransitionListener {
    final /* synthetic */ FragmentTransitionSupport this$0;
    final /* synthetic */ ArrayList val$exitingViews;
    final /* synthetic */ View val$fragmentView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FragmentTransitionSupport$2(FragmentTransitionSupport fragmentTransitionSupport, View view, ArrayList arrayList) {
        this.this$0 = fragmentTransitionSupport;
        this.val$fragmentView = view;
        this.val$exitingViews = arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionEnd(@NonNull Transition transition) {
        transition.removeListener(this);
        this.val$fragmentView.setVisibility(8);
        int size = this.val$exitingViews.size();
        for (int i9 = 0; i9 < size; i9++) {
            ((View) this.val$exitingViews.get(i9)).setVisibility(0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionStart(@NonNull Transition transition) {
        transition.removeListener(this);
        transition.addListener(this);
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
}
