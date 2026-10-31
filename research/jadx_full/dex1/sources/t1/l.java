package t1;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5373b;
    public final /* synthetic */ View c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ l(int i9, View view) {
        this.f5373b = i9;
        this.c = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5373b) {
            case 0:
                m mVar = (m) this.c;
                mVar.b();
                mVar.postDelayed(this, 10000L);
                break;
            case 1:
                n nVar = (n) this.c;
                n.a(nVar, h0.b.a().e().d);
                nVar.postDelayed(this, 10000L);
                break;
            default:
                x0.c cVar = (x0.c) this.c;
                if (cVar.f5965f && !cVar.d && !cVar.c.f6018u.stream().noneMatch(new i7.k(7))) {
                    x0.c.f5963s.execute(new f5.j(24, this));
                    break;
                }
                break;
        }
    }
}
