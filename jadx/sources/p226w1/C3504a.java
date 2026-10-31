package p226w1;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: w1.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C3504a implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f10334a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ AbstractC3508e f10335b;

    public /* synthetic */ C3504a(AbstractC3508e abstractC3508e, int i10) {
        this.f10334a = i10;
        this.f10335b = abstractC3508e;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f10334a) {
            case 0:
                AbstractC3508e.m5563a(this.f10335b, valueAnimator);
                break;
            default:
                AbstractC3508e.m5564b(this.f10335b, valueAnimator);
                break;
        }
    }
}
