package i8;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends x7.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f5.f f2732b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(f5.f fVar) {
        this.f2732b = fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.e
    public final void d(x7.f fVar) {
        b bVar = new b(fVar);
        fVar.b(bVar);
        try {
            f5.f fVar2 = this.f2732b;
            o7.a aVar = (o7.a) fVar2.c;
            Executor executor = (Executor) fVar2.d;
            f5.r rVar = new f5.r(bVar);
            aVar.getClass();
            com.bumptech.glide.manager.t tVar = (com.bumptech.glide.manager.t) aVar.c;
            tVar.m(new z2.e(executor, (z2.b) rVar));
            aVar.i();
            tVar.m(new z2.e(executor, (z2.a) new f5.r(bVar)));
            aVar.i();
        } catch (Throwable th) {
            com.bumptech.glide.d.v(th);
            bVar.onError(th);
        }
    }
}
