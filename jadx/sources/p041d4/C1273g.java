package p041d4;

import android.animation.ValueAnimator;
import android.view.View;

/* JADX INFO: renamed from: d4.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1273g implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ View f3045a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ View f3046b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1274h f3047c;

    public C1273g(C1274h c1274h, View view, View view2) {
        this.f3047c = c1274h;
        this.f3045a = view;
        this.f3046b = view2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f3047c.m2275c(this.f3045a, this.f3046b, valueAnimator.getAnimatedFraction());
    }
}
