package androidx.recyclerview.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ItemTouchHelper$RecoverAnimation$1 implements ValueAnimator$AnimatorUpdateListener {
    final /* synthetic */ ItemTouchHelper$RecoverAnimation this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ItemTouchHelper$RecoverAnimation$1(ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimation) {
        this.this$0 = itemTouchHelper$RecoverAnimation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.ValueAnimator$AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.this$0.setFraction(valueAnimator.getAnimatedFraction());
    }
}
