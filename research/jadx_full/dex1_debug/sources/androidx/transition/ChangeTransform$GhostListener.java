package androidx.transition;

import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChangeTransform$GhostListener extends TransitionListenerAdapter {
    private GhostView mGhostView;
    private View mView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChangeTransform$GhostListener(View view, GhostView ghostView) {
        this.mView = view;
        this.mGhostView = ghostView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition$TransitionListener
    public void onTransitionEnd(@NonNull Transition transition) {
        transition.removeListener(this);
        GhostViewUtils.removeGhost(this.mView);
        this.mView.setTag(R$id.transition_transform, null);
        this.mView.setTag(R$id.parent_matrix, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition$TransitionListener
    public void onTransitionPause(@NonNull Transition transition) {
        this.mGhostView.setVisibility(4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition$TransitionListener
    public void onTransitionResume(@NonNull Transition transition) {
        this.mGhostView.setVisibility(0);
    }
}
