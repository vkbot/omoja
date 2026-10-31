package g0;

import android.view.ViewPropertyAnimator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2333b;
    public final /* synthetic */ e c;
    public final /* synthetic */ b d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(e eVar, b bVar, int i9) {
        this.f2333b = i9;
        this.c = eVar;
        this.d = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2333b) {
            case 0:
                e eVar = this.c;
                ViewPropertyAnimator viewPropertyAnimator = eVar.f2337h;
                if (viewPropertyAnimator != null) {
                    viewPropertyAnimator.scaleX(0.8f).scaleY(0.8f).alpha(0.0f).setDuration(300L).withEndAction(new c(eVar, this.d, 1)).start();
                }
                break;
            default:
                this.c.setVisibility(8);
                this.d.run();
                break;
        }
    }
}
