package j8;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l extends x7.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3127b;
    public final e0.g c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l(Object obj, e0.g gVar) {
        this.f3127b = obj;
        this.c = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v3, resolved type: x7.g */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // x7.g
    public final void d(x7.h hVar) {
        z7.a aVar = c8.b.f543b;
        try {
            x7.g gVar = (x7.g) this.c.apply(this.f3127b);
            if (!(gVar instanceof Callable)) {
                gVar.c(hVar);
                return;
            }
            try {
                Object objCall = ((Callable) gVar).call();
                if (objCall == null) {
                    hVar.b(aVar);
                    hVar.a();
                } else {
                    k kVar = new k(hVar, objCall);
                    hVar.b(kVar);
                    kVar.run();
                }
            } catch (Throwable th) {
                com.bumptech.glide.d.v(th);
                hVar.b(aVar);
                hVar.onError(th);
            }
        } catch (Throwable th2) {
            hVar.b(aVar);
            hVar.onError(th2);
        }
    }
}
