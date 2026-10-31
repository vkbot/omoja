package p067g0;

import android.view.ViewPropertyAnimator;

/* JADX INFO: renamed from: g0.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1601c implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4019b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1603e f4020c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ RunnableC1600b f4021d;

    public /* synthetic */ RunnableC1601c(C1603e c1603e, RunnableC1600b runnableC1600b, int i10) {
        this.f4019b = i10;
        this.f4020c = c1603e;
        this.f4021d = runnableC1600b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4019b) {
            case 0:
                C1603e c1603e = this.f4020c;
                ViewPropertyAnimator viewPropertyAnimator = c1603e.f4028h;
                if (viewPropertyAnimator != null) {
                    viewPropertyAnimator.scaleX(0.8f).scaleY(0.8f).alpha(0.0f).setDuration(300L).withEndAction(new RunnableC1601c(c1603e, this.f4021d, 1)).start();
                }
                break;
            default:
                this.f4020c.setVisibility(8);
                this.f4021d.run();
                break;
        }
    }
}
