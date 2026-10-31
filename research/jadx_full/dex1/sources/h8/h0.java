package h8;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class h0 extends o8.a implements x7.d, Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.j f2554b;
    public final int c;
    public final int d;
    public final AtomicLong e = new AtomicLong();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public n9.b f2555f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public e8.g f2556g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile boolean f2557h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f2558i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Throwable f2559j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2560k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f2561l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2562m;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h0(x7.j jVar, int i9) {
        this.f2554b = jVar;
        this.c = i9;
        this.d = i9 - (i9 >> 2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void a() {
        if (this.f2558i) {
            return;
        }
        this.f2558i = true;
        m();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        if (this.f2557h) {
            return;
        }
        this.f2557h = true;
        this.f2555f.cancel();
        this.f2554b.dispose();
        if (getAndIncrement() == 0) {
            this.f2556g.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final void clear() {
        this.f2556g.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        if (o8.f.c(j9)) {
            e3.d.a(this.e, j9);
            m();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        if (this.f2558i) {
            return;
        }
        if (this.f2560k == 2) {
            m();
            return;
        }
        if (!this.f2556g.offer(obj)) {
            this.f2555f.cancel();
            this.f2559j = new a8.d("Queue is full?!");
            this.f2558i = true;
        }
        m();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.c
    public final int h(int i9) {
        this.f2562m = true;
        return 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean i(boolean z8, boolean z9, x7.d dVar) {
        if (this.f2557h) {
            clear();
            return true;
        }
        if (!z8) {
            return false;
        }
        Throwable th = this.f2559j;
        if (th != null) {
            clear();
            dVar.onError(th);
            this.f2554b.dispose();
            return true;
        }
        if (!z9) {
            return false;
        }
        dVar.a();
        this.f2554b.dispose();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean isEmpty() {
        return this.f2556g.isEmpty();
    }

    public abstract void j();

    public abstract void k();

    public abstract void l();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m() {
        if (getAndIncrement() != 0) {
            return;
        }
        this.f2554b.b(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void onError(Throwable th) {
        if (this.f2558i) {
            a.a.s(th);
            return;
        }
        this.f2559j = th;
        this.f2558i = true;
        m();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        if (this.f2562m) {
            k();
        } else if (this.f2560k == 1) {
            l();
        } else {
            j();
        }
    }
}
