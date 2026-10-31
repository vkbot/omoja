package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FastScroller$AnimatorListener extends AnimatorListenerAdapter {
    private boolean mCanceled = false;
    final /* synthetic */ FastScroller this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FastScroller$AnimatorListener(FastScroller fastScroller) {
        this.this$0 = fastScroller;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.mCanceled = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.mCanceled) {
            this.mCanceled = false;
            return;
        }
        float fFloatValue = ((Float) this.this$0.mShowHideAnimator.getAnimatedValue()).floatValue();
        FastScroller fastScroller = this.this$0;
        if (fFloatValue == 0.0f) {
            fastScroller.mAnimationState = 0;
            fastScroller.setState(0);
        } else {
            fastScroller.mAnimationState = 2;
            fastScroller.requestRedraw();
        }
    }
}
