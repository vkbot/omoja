package p081h4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import p182r3.C3101h;

/* JADX INFO: renamed from: h4.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1665c extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f4262a = 0;

    /* JADX INFO: renamed from: b */
    public boolean f4263b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f4264c;

    public C1665c(View view, boolean z9) {
        this.f4263b = z9;
        this.f4264c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f4262a) {
            case 1:
                this.f4263b = true;
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f4262a) {
            case 0:
                if (!this.f4263b) {
                    ((View) this.f4264c).setVisibility(4);
                }
                break;
            default:
                C3101h c3101h = (C3101h) this.f4264c;
                c3101h.f8853r = 0;
                c3101h.f8848m = null;
                if (!this.f4263b) {
                    c3101h.f8854s.m5140a(4, false);
                }
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f4262a) {
            case 0:
                if (this.f4263b) {
                    ((View) this.f4264c).setVisibility(0);
                }
                break;
            default:
                C3101h c3101h = (C3101h) this.f4264c;
                c3101h.f8854s.m5140a(0, false);
                c3101h.f8853r = 1;
                c3101h.f8848m = animator;
                this.f4263b = false;
                break;
        }
    }

    public C1665c(C3101h c3101h) {
        this.f4264c = c3101h;
    }
}
