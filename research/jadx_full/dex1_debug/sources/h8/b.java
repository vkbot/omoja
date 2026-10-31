package h8;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class b extends AtomicInteger implements x7.d, n9.b {
    public final b8.c c;
    public final int d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public n9.b f2515f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2516g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public e8.g f2517h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f2518i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile boolean f2519j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile boolean f2521l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2522m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f2514b = new e(this);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final p8.b f2520k = new p8.b();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(b8.c cVar, int i9) {
        this.c = cVar;
        this.d = i9;
        this.e = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void a() {
        this.f2518i = true;
        b();
    }

    public abstract void b();

    public abstract void c(Throwable th);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        if (this.f2522m == 2 || this.f2517h.offer(obj)) {
            b();
        } else {
            this.f2515f.cancel();
            onError(new IllegalStateException("Queue full?!"));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void f(n9.b bVar) {
        if (o8.f.e(this.f2515f, bVar)) {
            this.f2515f = bVar;
            if (bVar instanceof e8.d) {
                e8.d dVar = (e8.d) bVar;
                int iH = dVar.h(3);
                if (iH == 1) {
                    this.f2522m = iH;
                    this.f2517h = dVar;
                    this.f2518i = true;
                    i();
                    b();
                    return;
                }
                if (iH == 2) {
                    this.f2522m = iH;
                    this.f2517h = dVar;
                    i();
                    bVar.d(this.d);
                    return;
                }
            }
            this.f2517h = new l8.a(this.d);
            i();
            bVar.d(this.d);
        }
    }

    public abstract void h(Object obj);

    public abstract void i();
}
