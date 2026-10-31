package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DefaultItemAnimator$8 extends AnimatorListenerAdapter {
    final /* synthetic */ DefaultItemAnimator this$0;
    final /* synthetic */ DefaultItemAnimator$ChangeInfo val$changeInfo;
    final /* synthetic */ View val$newView;
    final /* synthetic */ ViewPropertyAnimator val$newViewAnimation;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DefaultItemAnimator$8(DefaultItemAnimator defaultItemAnimator, DefaultItemAnimator$ChangeInfo defaultItemAnimator$ChangeInfo, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.this$0 = defaultItemAnimator;
        this.val$changeInfo = defaultItemAnimator$ChangeInfo;
        this.val$newViewAnimation = viewPropertyAnimator;
        this.val$newView = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.val$newViewAnimation.setListener(null);
        this.val$newView.setAlpha(1.0f);
        this.val$newView.setTranslationX(0.0f);
        this.val$newView.setTranslationY(0.0f);
        this.this$0.dispatchChangeFinished(this.val$changeInfo.newHolder, false);
        this.this$0.mChangeAnimations.remove(this.val$changeInfo.newHolder);
        this.this$0.dispatchFinishedWhenDone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.this$0.dispatchChangeStarting(this.val$changeInfo.newHolder, false);
    }
}
