package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AnimatedVectorDrawableCompat$2 extends AnimatorListenerAdapter {
    final /* synthetic */ AnimatedVectorDrawableCompat this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AnimatedVectorDrawableCompat$2(AnimatedVectorDrawableCompat animatedVectorDrawableCompat) {
        this.this$0 = animatedVectorDrawableCompat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationEnd(Animator animator) {
        ArrayList arrayList = new ArrayList(this.this$0.mAnimationCallbacks);
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            ((Animatable2Compat$AnimationCallback) arrayList.get(i9)).onAnimationEnd(this.this$0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        ArrayList arrayList = new ArrayList(this.this$0.mAnimationCallbacks);
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            ((Animatable2Compat$AnimationCallback) arrayList.get(i9)).onAnimationStart(this.this$0);
        }
    }
}
