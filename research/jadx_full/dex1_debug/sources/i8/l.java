package i8;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l extends x7.e implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Callable f2739b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l(Callable callable) {
        this.f2739b = callable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f2739b.call();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.e
    public final void d(x7.f fVar) {
        c8.d dVar = new c8.d(d8.b.f1796b);
        fVar.b(dVar);
        if (dVar.c()) {
            return;
        }
        try {
            Object objCall = this.f2739b.call();
            if (dVar.c()) {
                return;
            }
            if (objCall == null) {
                fVar.a();
            } else {
                fVar.c(objCall);
            }
        } catch (Throwable th) {
            com.bumptech.glide.d.v(th);
            if (dVar.c()) {
                a.a.s(th);
            } else {
                fVar.onError(th);
            }
        }
    }
}
