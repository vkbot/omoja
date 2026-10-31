package b4;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator$AnimatorUpdateListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements ValueAnimator$AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f314a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(j jVar, int i9) {
        this.f314a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.ValueAnimator$AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f314a) {
            case 0:
                ((Float) valueAnimator.getAnimatedValue()).floatValue();
                throw null;
            default:
                ((Integer) valueAnimator.getAnimatedValue()).intValue();
                throw null;
        }
    }
}
