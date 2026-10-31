package androidx.fragment.app;

import android.transition.Transition;
import android.transition.Transition$TransitionListener;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentTransitionCompat21$3 implements Transition$TransitionListener {
    final /* synthetic */ FragmentTransitionCompat21 this$0;
    final /* synthetic */ Object val$enterTransition;
    final /* synthetic */ ArrayList val$enteringViews;
    final /* synthetic */ Object val$exitTransition;
    final /* synthetic */ ArrayList val$exitingViews;
    final /* synthetic */ Object val$sharedElementTransition;
    final /* synthetic */ ArrayList val$sharedElementsIn;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public FragmentTransitionCompat21$3(FragmentTransitionCompat21 fragmentTransitionCompat21, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
        this.this$0 = fragmentTransitionCompat21;
        this.val$enterTransition = obj;
        this.val$enteringViews = arrayList;
        this.val$exitTransition = obj2;
        this.val$exitingViews = arrayList2;
        this.val$sharedElementTransition = obj3;
        this.val$sharedElementsIn = arrayList3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.transition.Transition$TransitionListener
    public void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.transition.Transition$TransitionListener
    public void onTransitionStart(Transition transition) {
        Object obj = this.val$enterTransition;
        if (obj != null) {
            this.this$0.replaceTargets(obj, this.val$enteringViews, null);
        }
        Object obj2 = this.val$exitTransition;
        if (obj2 != null) {
            this.this$0.replaceTargets(obj2, this.val$exitingViews, null);
        }
        Object obj3 = this.val$sharedElementTransition;
        if (obj3 != null) {
            this.this$0.replaceTargets(obj3, this.val$sharedElementsIn, null);
        }
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
