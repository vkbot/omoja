package h8;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q0 extends x7.b {
    public final Object c;
    public final b8.c d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public q0(Object obj, b8.c cVar) {
        this.c = obj;
        this.d = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.b
    public final void e(x7.d dVar) {
        try {
            Object objApply = this.d.apply(this.c);
            d8.b.a(objApply, "The mapper returned a null Publisher");
            Callable callable = (n9.a) objApply;
            if (!(callable instanceof Callable)) {
                callable.a(dVar);
                return;
            }
            try {
                Object objCall = callable.call();
                if (objCall == null) {
                    o8.d.a(dVar);
                } else {
                    dVar.f(new o8.e(objCall, dVar));
                }
            } catch (Throwable th) {
                com.bumptech.glide.d.v(th);
                o8.d.b(th, dVar);
            }
        } catch (Throwable th2) {
            o8.d.b(th2, dVar);
        }
    }
}
