package e3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;
import com.google.android.material.transformation.ExpandableTransformationBehavior;
import e4.l;
import r3.h;
import w1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2031b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(int i9, Object obj) {
        this.f2030a = i9;
        this.f2031b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f2030a) {
            case 0:
                ((HideBottomViewOnScrollBehavior) this.f2031b).f1142k = null;
                break;
            case 1:
                ((HideViewOnScrollBehavior) this.f2031b).f1151l = null;
                break;
            case 2:
                l lVar = (l) this.f2031b;
                lVar.p();
                lVar.r.start();
                break;
            case 3:
                ((ExpandableTransformationBehavior) this.f2031b).f1459b = null;
                break;
            case 4:
                super.onAnimationEnd(animator);
                ((l0.a) this.f2031b).f3255b = true;
                break;
            case 5:
                h hVar = (h) this.f2031b;
                hVar.r = 0;
                hVar.f4973m = null;
                break;
            default:
                animator.getClass();
                i iVar = (i) this.f2031b;
                if (!iVar.r) {
                    iVar.l();
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f2030a) {
            case 5:
                h hVar = (h) this.f2031b;
                hVar.f4978s.a(0, false);
                hVar.r = 2;
                hVar.f4973m = animator;
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
