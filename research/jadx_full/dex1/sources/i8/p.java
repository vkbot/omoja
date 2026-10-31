package i8;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p extends AtomicReference implements x7.f, z7.a, Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.f f2743b;
    public final x7.k c;
    public Object d;
    public Throwable e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p(x7.f fVar, x7.k kVar) {
        this.f2743b = fVar;
        this.c = kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void a() {
        c8.a.c(this, this.c.b(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void b(z7.a aVar) {
        if (c8.a.d(this, aVar)) {
            this.f2743b.b(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void c(Object obj) {
        this.d = obj;
        c8.a.c(this, this.c.b(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        c8.a.a(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void onError(Throwable th) {
        this.e = th;
        c8.a.c(this, this.c.b(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        Throwable th = this.e;
        x7.f fVar = this.f2743b;
        if (th != null) {
            this.e = null;
            fVar.onError(th);
            return;
        }
        Object obj = this.d;
        if (obj == null) {
            fVar.a();
        } else {
            this.d = null;
            fVar.c(obj);
        }
    }
}
