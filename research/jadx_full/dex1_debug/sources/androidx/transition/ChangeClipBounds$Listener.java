package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Rect;
import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChangeClipBounds$Listener extends AnimatorListenerAdapter implements Transition$TransitionListener {
    private final Rect mEnd;
    private final Rect mStart;
    private final View mView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChangeClipBounds$Listener(View view, Rect rect, Rect rect2) {
        this.mView = view;
        this.mStart = rect;
        this.mEnd = rect2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator, boolean z8) {
        View view = this.mView;
        if (z8) {
            view.setClipBounds(this.mStart);
        } else {
            view.setClipBounds(this.mEnd);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionPause(@NonNull Transition transition) {
        Rect clipBounds = this.mView.getClipBounds();
        if (clipBounds == null) {
            clipBounds = ChangeClipBounds.NULL_SENTINEL;
        }
        this.mView.setTag(R$id.transition_clip, clipBounds);
        this.mView.setClipBounds(this.mEnd);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionResume(@NonNull Transition transition) {
        this.mView.setClipBounds((Rect) this.mView.getTag(R$id.transition_clip));
        this.mView.setTag(R$id.transition_clip, null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        onAnimationEnd(animator, false);
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionCancel(@NonNull Transition transition) {
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionEnd(@NonNull Transition transition) {
    }

    @Override // androidx.transition.Transition$TransitionListener
    public void onTransitionStart(@NonNull Transition transition) {
    }
}
