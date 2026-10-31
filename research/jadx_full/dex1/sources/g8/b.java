package g8;

import android.support.v4.media.h;
import b1.u;
import e0.g;
import f5.x;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b extends u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2404b = 0;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(x xVar) {
        this.c = xVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b1.u
    public final void B(x7.a aVar) {
        switch (this.f2404b) {
            case 0:
                c8.d dVar = new c8.d(d8.b.f1796b);
                aVar.b(dVar);
                try {
                    ((x) this.c).call();
                    if (!dVar.c()) {
                        aVar.a();
                    }
                } catch (Throwable th) {
                    com.bumptech.glide.d.v(th);
                    if (dVar.c()) {
                        return;
                    }
                    aVar.onError(th);
                    return;
                }
                break;
            default:
                z7.a dVar2 = new c8.d(0);
                aVar.b(dVar2);
                ((d) this.c).A(new h(this, aVar, dVar2, 12));
                break;
        }
    }

    public b(d dVar, g gVar) {
        this.c = dVar;
    }
}
