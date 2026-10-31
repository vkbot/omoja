package p019b4;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: b4.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0891b implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f676a;

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f676a) {
            case 0:
                ((Float) valueAnimator.getAnimatedValue()).floatValue();
                throw null;
            default:
                ((Integer) valueAnimator.getAnimatedValue()).intValue();
                throw null;
        }
    }
}
