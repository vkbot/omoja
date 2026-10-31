package i8;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q extends AtomicReference implements x7.f, z7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.f f2744b;
    public final d8.a c;
    public final boolean d = true;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public q(x7.f fVar, d8.a aVar) {
        this.f2744b = fVar;
        this.c = aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void a() {
        this.f2744b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void b(z7.a aVar) {
        if (c8.a.d(this, aVar)) {
            this.f2744b.b(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void c(Object obj) {
        this.f2744b.c(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        c8.a.a(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void onError(Throwable th) {
        boolean z8 = this.d;
        x7.f fVar = this.f2744b;
        if (!z8 && !(th instanceof Exception)) {
            fVar.onError(th);
            return;
        }
        try {
            Object obj = this.c.c;
            d8.b.a(obj, "The resumeFunction returned a null MaybeSource");
            x7.e eVar = (x7.e) obj;
            c8.a.c(this, null);
            eVar.c(new android.support.v4.media.h((Object) fVar, (Object) this, false, 16));
        } catch (Throwable th2) {
            com.bumptech.glide.d.v(th2);
            fVar.onError(new a8.c(th, th2));
        }
    }
}
