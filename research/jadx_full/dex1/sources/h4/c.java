package h4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import r3.h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2468a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2469b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(View view, boolean z8) {
        this.f2469b = z8;
        this.c = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f2468a) {
            case 1:
                this.f2469b = true;
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f2468a) {
            case 0:
                if (!this.f2469b) {
                    ((View) this.c).setVisibility(4);
                }
                break;
            default:
                h hVar = (h) this.c;
                hVar.r = 0;
                hVar.f4973m = null;
                if (!this.f2469b) {
                    hVar.f4978s.a(4, false);
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator$AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f2468a) {
            case 0:
                if (this.f2469b) {
                    ((View) this.c).setVisibility(0);
                }
                break;
            default:
                h hVar = (h) this.c;
                hVar.f4978s.a(0, false);
                hVar.r = 1;
                hVar.f4973m = animator;
                this.f2469b = false;
                break;
        }
    }

    public c(h hVar) {
        this.c = hVar;
    }
}
