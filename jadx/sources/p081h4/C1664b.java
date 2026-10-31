package p081h4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: renamed from: h4.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1664b extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ boolean f4259a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ View f4260b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ View f4261c;

    public C1664b(boolean z9, View view, View view2) {
        this.f4259a = z9;
        this.f4260b = view;
        this.f4261c = view2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f4259a) {
            return;
        }
        this.f4260b.setVisibility(4);
        View view = this.f4261c;
        view.setAlpha(1.0f);
        view.setVisibility(0);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        if (this.f4259a) {
            this.f4260b.setVisibility(0);
            View view = this.f4261c;
            view.setAlpha(0.0f);
            view.setVisibility(4);
        }
    }
}
