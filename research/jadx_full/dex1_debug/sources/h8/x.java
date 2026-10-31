package h8;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x extends AtomicReference implements x7.d, z7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2602b;
    public final y c;
    public final int d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f2603f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile e8.g f2604g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f2605h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2606i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x(y yVar, long j9) {
        this.f2602b = j9;
        this.c = yVar;
        int i9 = yVar.e;
        this.e = i9;
        this.d = i9 >> 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void a() {
        this.f2603f = true;
        this.c.c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(long j9) {
        if (this.f2606i != 1) {
            long j10 = this.f2605h + j9;
            if (j10 < this.d) {
                this.f2605h = j10;
            } else {
                this.f2605h = 0L;
                ((n9.b) get()).d(j10);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        o8.f.a(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        int i9 = this.f2606i;
        y yVar = this.c;
        if (i9 == 2) {
            yVar.c();
            return;
        }
        if (yVar.get() == 0 && yVar.compareAndSet(0, 1)) {
            long j9 = yVar.f2614k.get();
            e8.g aVar = this.f2604g;
            if (j9 == 0 || !(aVar == null || aVar.isEmpty())) {
                if (aVar == null && (aVar = this.f2604g) == null) {
                    aVar = new l8.a(yVar.e);
                    this.f2604g = aVar;
                }
                if (!aVar.offer(obj)) {
                    yVar.onError(new a8.d("Inner queue full?!"));
                    return;
                }
            } else {
                yVar.f2608b.e(obj);
                if (j9 != Long.MAX_VALUE) {
                    yVar.f2614k.decrementAndGet();
                }
                b(1L);
            }
            if (yVar.decrementAndGet() == 0) {
                return;
            }
        } else {
            e8.g aVar2 = this.f2604g;
            if (aVar2 == null) {
                aVar2 = new l8.a(yVar.e);
                this.f2604g = aVar2;
            }
            if (!aVar2.offer(obj)) {
                yVar.onError(new a8.d("Inner queue full?!"));
                return;
            } else if (yVar.getAndIncrement() != 0) {
                return;
            }
        }
        yVar.h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void f(n9.b bVar) {
        if (o8.f.b(this, bVar)) {
            if (bVar instanceof e8.d) {
                e8.d dVar = (e8.d) bVar;
                int iH = dVar.h(7);
                if (iH == 1) {
                    this.f2606i = iH;
                    this.f2604g = dVar;
                    this.f2603f = true;
                    this.c.c();
                    return;
                }
                if (iH == 2) {
                    this.f2606i = iH;
                    this.f2604g = dVar;
                }
            }
            bVar.d(this.e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void onError(Throwable th) {
        lazySet(o8.f.f4535b);
        y yVar = this.c;
        p8.b bVar = yVar.f2611h;
        bVar.getClass();
        if (!p8.d.a(bVar, th)) {
            a.a.s(th);
            return;
        }
        this.f2603f = true;
        yVar.f2615l.cancel();
        for (x xVar : (x[]) yVar.f2613j.getAndSet(y.f2607s)) {
            xVar.getClass();
            o8.f.a(xVar);
        }
        yVar.c();
    }
}
