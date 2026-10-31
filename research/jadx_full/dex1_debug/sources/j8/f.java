package j8;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends AtomicReference implements x7.h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3107b;
    public final g c;
    public volatile boolean d;
    public volatile e8.g e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3108f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(g gVar, long j9) {
        this.f3107b = j9;
        this.c = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void a() {
        this.d = true;
        this.c.f();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void b(z7.a aVar) {
        if (c8.a.d(this, aVar) && (aVar instanceof e8.b)) {
            e8.b bVar = (e8.b) aVar;
            int iH = bVar.h(7);
            if (iH == 1) {
                this.f3108f = iH;
                this.e = bVar;
                this.d = true;
                this.c.f();
                return;
            }
            if (iH == 2) {
                this.f3108f = iH;
                this.e = bVar;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void e(Object obj) {
        int i9 = this.f3108f;
        g gVar = this.c;
        if (i9 != 0) {
            gVar.f();
            return;
        }
        if (gVar.get() == 0 && gVar.compareAndSet(0, 1)) {
            gVar.f3111b.e(obj);
            if (gVar.decrementAndGet() == 0) {
                return;
            }
        } else {
            e8.g bVar = this.e;
            if (bVar == null) {
                bVar = new l8.b(gVar.e);
                this.e = bVar;
            }
            bVar.offer(obj);
            if (gVar.getAndIncrement() != 0) {
                return;
            }
        }
        gVar.g();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void onError(Throwable th) {
        p8.b bVar = this.c.f3114h;
        bVar.getClass();
        if (!p8.d.a(bVar, th)) {
            a.a.s(th);
            return;
        }
        g gVar = this.c;
        gVar.getClass();
        gVar.d();
        this.d = true;
        this.c.f();
    }
}
