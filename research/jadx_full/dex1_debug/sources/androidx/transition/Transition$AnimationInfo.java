package androidx.transition;

import android.animation.Animator;
import android.view.View;
import android.view.WindowId;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Transition$AnimationInfo {
    Animator mAnimator;
    String mName;
    Transition mTransition;
    TransitionValues mValues;
    View mView;
    WindowId mWindowId;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Transition$AnimationInfo(View view, String str, Transition transition, WindowId windowId, TransitionValues transitionValues, Animator animator) {
        this.mView = view;
        this.mName = str;
        this.mValues = transitionValues;
        this.mWindowId = windowId;
        this.mTransition = transition;
        this.mAnimator = animator;
    }
}
