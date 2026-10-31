package androidx.transition;

import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChangeBounds$SuppressLayoutListener extends TransitionListenerAdapter {
    boolean mCanceled = false;
    final ViewGroup mParent;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChangeBounds$SuppressLayoutListener(@NonNull ViewGroup viewGroup) {
        this.mParent = viewGroup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition$TransitionListener
    public void onTransitionCancel(@NonNull Transition transition) {
        ViewGroupUtils.suppressLayout(this.mParent, false);
        this.mCanceled = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition$TransitionListener
    public void onTransitionEnd(@NonNull Transition transition) {
        if (!this.mCanceled) {
            ViewGroupUtils.suppressLayout(this.mParent, false);
        }
        transition.removeListener(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition$TransitionListener
    public void onTransitionPause(@NonNull Transition transition) {
        ViewGroupUtils.suppressLayout(this.mParent, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition$TransitionListener
    public void onTransitionResume(@NonNull Transition transition) {
        ViewGroupUtils.suppressLayout(this.mParent, true);
    }
}
