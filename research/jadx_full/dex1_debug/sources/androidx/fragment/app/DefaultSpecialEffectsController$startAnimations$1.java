package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"androidx/fragment/app/DefaultSpecialEffectsController$startAnimations$1", "Landroid/animation/AnimatorListenerAdapter;", "onAnimationEnd", "", "anim", "Landroid/animation/Animator;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class DefaultSpecialEffectsController$startAnimations$1 extends AnimatorListenerAdapter {
    final /* synthetic */ DefaultSpecialEffectsController$AnimationInfo $animationInfo;
    final /* synthetic */ boolean $isHideOperation;
    final /* synthetic */ SpecialEffectsController$Operation $operation;
    final /* synthetic */ View $viewToAnimate;
    final /* synthetic */ DefaultSpecialEffectsController this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DefaultSpecialEffectsController$startAnimations$1(DefaultSpecialEffectsController defaultSpecialEffectsController, View view, boolean z8, SpecialEffectsController$Operation specialEffectsController$Operation, DefaultSpecialEffectsController$AnimationInfo defaultSpecialEffectsController$AnimationInfo) {
        this.this$0 = defaultSpecialEffectsController;
        this.$viewToAnimate = view;
        this.$isHideOperation = z8;
        this.$operation = specialEffectsController$Operation;
        this.$animationInfo = defaultSpecialEffectsController$AnimationInfo;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator anim) {
        anim.getClass();
        this.this$0.getContainer().endViewTransition(this.$viewToAnimate);
        if (this.$isHideOperation) {
            SpecialEffectsController$Operation$State finalState = this.$operation.getFinalState();
            View view = this.$viewToAnimate;
            view.getClass();
            finalState.applyState(view);
        }
        this.$animationInfo.completeSpecialEffect();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Animator from operation " + this.$operation + " has ended.");
        }
    }
}
