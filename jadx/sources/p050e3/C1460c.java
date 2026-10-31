package p050e3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;
import com.google.android.material.transformation.ExpandableTransformationBehavior;
import p051e4.C1479l;
import p121l0.C2194a;
import p182r3.C3101h;
import p226w1.AbstractC3512i;

/* JADX INFO: renamed from: e3.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1460c extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3540a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f3541b;

    public /* synthetic */ C1460c(int i10, Object obj) {
        this.f3540a = i10;
        this.f3541b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f3540a) {
            case 0:
                ((HideBottomViewOnScrollBehavior) this.f3541b).f2100k = null;
                break;
            case 1:
                ((HideViewOnScrollBehavior) this.f3541b).f2112l = null;
                break;
            case 2:
                C1479l c1479l = (C1479l) this.f3541b;
                c1479l.m2559p();
                c1479l.f3594r.start();
                break;
            case 3:
                ((ExpandableTransformationBehavior) this.f3541b).f2607b = null;
                break;
            case 4:
                super.onAnimationEnd(animator);
                ((C2194a) this.f3541b).f5727b = true;
                break;
            case 5:
                C3101h c3101h = (C3101h) this.f3541b;
                c3101h.f8853r = 0;
                c3101h.f8848m = null;
                break;
            default:
                animator.getClass();
                AbstractC3512i abstractC3512i = (AbstractC3512i) this.f3541b;
                if (!abstractC3512i.f10380r) {
                    abstractC3512i.m5574l();
                }
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f3540a) {
            case 5:
                C3101h c3101h = (C3101h) this.f3541b;
                c3101h.f8854s.m5140a(0, false);
                c3101h.f8853r = 2;
                c3101h.f8848m = animator;
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
