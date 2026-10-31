package i8;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j extends AtomicReference implements x7.f, z7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.f f2738b;
    public final b8.c c;
    public z7.a d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(x7.f fVar, b8.c cVar) {
        this.f2738b = fVar;
        this.c = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void a() {
        this.f2738b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void b(z7.a aVar) {
        if (c8.a.e(this.d, aVar)) {
            this.d = aVar;
            this.f2738b.b(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void c(Object obj) {
        try {
            Object objApply = this.c.apply(obj);
            d8.b.a(objApply, "The mapper returned a null MaybeSource");
            x7.e eVar = (x7.e) objApply;
            if (c8.a.b((z7.a) get())) {
                return;
            }
            eVar.c(new r5.c(20, this));
        } catch (Exception e) {
            com.bumptech.glide.d.v(e);
            this.f2738b.onError(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        c8.a.a(this);
        this.d.dispose();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void onError(Throwable th) {
        this.f2738b.onError(th);
    }
}
