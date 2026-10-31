package androidx.recyclerview.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FastScroller$AnimatorUpdater implements ValueAnimator$AnimatorUpdateListener {
    final /* synthetic */ FastScroller this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FastScroller$AnimatorUpdater(FastScroller fastScroller) {
        this.this$0 = fastScroller;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.ValueAnimator$AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
        this.this$0.mVerticalThumbDrawable.setAlpha(iFloatValue);
        this.this$0.mVerticalTrackDrawable.setAlpha(iFloatValue);
        this.this$0.requestRedraw();
    }
}
