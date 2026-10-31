package p051e4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: renamed from: e4.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1469c extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3558a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C1471d f3559b;

    public /* synthetic */ C1469c(C1471d c1471d, int i10) {
        this.f3558a = i10;
        this.f3559b = c1471d;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.f3558a) {
            case 1:
                this.f3559b.f3624b.m2550h(false);
                break;
            default:
                super.onAnimationEnd(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f3558a) {
            case 0:
                this.f3559b.f3624b.m2550h(true);
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
