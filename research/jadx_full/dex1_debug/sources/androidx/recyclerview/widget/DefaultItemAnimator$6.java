package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DefaultItemAnimator$6 extends AnimatorListenerAdapter {
    final /* synthetic */ DefaultItemAnimator this$0;
    final /* synthetic */ ViewPropertyAnimator val$animation;
    final /* synthetic */ int val$deltaX;
    final /* synthetic */ int val$deltaY;
    final /* synthetic */ RecyclerView$ViewHolder val$holder;
    final /* synthetic */ View val$view;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DefaultItemAnimator$6(DefaultItemAnimator defaultItemAnimator, RecyclerView$ViewHolder recyclerView$ViewHolder, int i9, View view, int i10, ViewPropertyAnimator viewPropertyAnimator) {
        this.this$0 = defaultItemAnimator;
        this.val$holder = recyclerView$ViewHolder;
        this.val$deltaX = i9;
        this.val$view = view;
        this.val$deltaY = i10;
        this.val$animation = viewPropertyAnimator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        if (this.val$deltaX != 0) {
            this.val$view.setTranslationX(0.0f);
        }
        if (this.val$deltaY != 0) {
            this.val$view.setTranslationY(0.0f);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.val$animation.setListener(null);
        this.this$0.dispatchMoveFinished(this.val$holder);
        this.this$0.mMoveAnimations.remove(this.val$holder);
        this.this$0.dispatchFinishedWhenDone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.this$0.dispatchMoveStarting(this.val$holder);
    }
}
