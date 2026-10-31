package androidx.fragment.app;

import android.transition.Transition;
import android.transition.Transition$TransitionListener;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentTransitionCompat21$2 implements Transition$TransitionListener {
    final /* synthetic */ FragmentTransitionCompat21 this$0;
    final /* synthetic */ ArrayList val$exitingViews;
    final /* synthetic */ View val$fragmentView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FragmentTransitionCompat21$2(FragmentTransitionCompat21 fragmentTransitionCompat21, View view, ArrayList arrayList) {
        this.this$0 = fragmentTransitionCompat21;
        this.val$fragmentView = view;
        this.val$exitingViews = arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.transition.Transition$TransitionListener
    public void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
        this.val$fragmentView.setVisibility(8);
        int size = this.val$exitingViews.size();
        for (int i9 = 0; i9 < size; i9++) {
            ((View) this.val$exitingViews.get(i9)).setVisibility(0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.transition.Transition$TransitionListener
    public void onTransitionStart(Transition transition) {
        transition.removeListener(this);
        transition.addListener(this);
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
}
