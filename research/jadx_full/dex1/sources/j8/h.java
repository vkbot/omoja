package j8;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h extends a {
    public final e0.g c;
    public final int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(x7.g gVar, e0.g gVar2, int i9) {
        super(gVar);
        this.c = gVar2;
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: x7.g */
    /* JADX DEBUG: Multi-variable search result rejected for r1v6, resolved type: x7.g */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // x7.g
    public final void d(x7.h hVar) {
        z7.a aVar = c8.b.f543b;
        x7.g gVar = this.f3101b;
        boolean z8 = gVar instanceof Callable;
        e0.g gVar2 = this.c;
        if (!z8) {
            gVar.c(new g(hVar, gVar2, this.d));
            return;
        }
        try {
            Object objCall = ((Callable) gVar).call();
            if (objCall == null) {
                hVar.b(aVar);
                hVar.a();
                return;
            }
            try {
                x7.g gVar3 = (x7.g) gVar2.apply(objCall);
                if (!(gVar3 instanceof Callable)) {
                    gVar3.c(hVar);
                    return;
                }
                try {
                    Object objCall2 = ((Callable) gVar3).call();
                    if (objCall2 == null) {
                        hVar.b(aVar);
                        hVar.a();
                    } else {
                        k kVar = new k(hVar, objCall2);
                        hVar.b(kVar);
                        kVar.run();
                    }
                } catch (Throwable th) {
                    com.bumptech.glide.d.v(th);
                    hVar.b(aVar);
                    hVar.onError(th);
                }
            } catch (Throwable th2) {
                com.bumptech.glide.d.v(th2);
                hVar.b(aVar);
                hVar.onError(th2);
            }
        } catch (Throwable th3) {
            com.bumptech.glide.d.v(th3);
            hVar.b(aVar);
            hVar.onError(th3);
        }
    }
}
