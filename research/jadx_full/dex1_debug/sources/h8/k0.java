package h8;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k0 extends o8.a implements x7.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.d f2569b;
    public final e8.f c;
    public final b8.a d;
    public n9.b e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f2570f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile boolean f2571g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Throwable f2572h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicLong f2573i = new AtomicLong();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2574j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k0(x7.d dVar, int i9, boolean z8, w7.c cVar) {
        this.f2569b = dVar;
        this.d = cVar;
        this.c = z8 ? new l8.b(i9) : new l8.a(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void a() {
        this.f2571g = true;
        if (this.f2574j) {
            this.f2569b.a();
        } else {
            j();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        if (this.f2570f) {
            return;
        }
        this.f2570f = true;
        this.e.cancel();
        if (getAndIncrement() == 0) {
            this.c.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final void clear() {
        this.c.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(long j9) {
        if (this.f2574j || !o8.f.c(j9)) {
            return;
        }
        e3.d.a(this.f2573i, j9);
        j();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        if (this.c.offer(obj)) {
            if (this.f2574j) {
                this.f2569b.e(null);
                return;
            } else {
                j();
                return;
            }
        }
        this.e.cancel();
        a8.d dVar = new a8.d("Buffer is full");
        try {
            this.d.run();
        } catch (Throwable th) {
            com.bumptech.glide.d.v(th);
            dVar.initCause(th);
        }
        onError(dVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void f(n9.b bVar) {
        if (o8.f.e(this.e, bVar)) {
            this.e = bVar;
            this.f2569b.f(this);
            bVar.d(Long.MAX_VALUE);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.c
    public final int h(int i9) {
        this.f2574j = true;
        return 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean i(boolean z8, boolean z9, x7.d dVar) {
        if (this.f2570f) {
            this.c.clear();
            return true;
        }
        if (!z8) {
            return false;
        }
        Throwable th = this.f2572h;
        if (th != null) {
            this.c.clear();
            dVar.onError(th);
            return true;
        }
        if (!z9) {
            return false;
        }
        dVar.a();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final boolean isEmpty() {
        return this.c.isEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j() {
        if (getAndIncrement() == 0) {
            e8.f fVar = this.c;
            x7.d dVar = this.f2569b;
            int iAddAndGet = 1;
            while (!i(this.f2571g, fVar.isEmpty(), dVar)) {
                long j9 = this.f2573i.get();
                long j10 = 0;
                while (j10 != j9) {
                    boolean z8 = this.f2571g;
                    Object objPoll = fVar.poll();
                    boolean z9 = objPoll == null;
                    if (i(z8, z9, dVar)) {
                        return;
                    }
                    if (z9) {
                        break;
                    }
                    dVar.e(objPoll);
                    j10++;
                }
                if (j10 == j9 && i(this.f2571g, fVar.isEmpty(), dVar)) {
                    return;
                }
                if (j10 != 0 && j9 != Long.MAX_VALUE) {
                    this.f2573i.addAndGet(-j10);
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void onError(Throwable th) {
        this.f2572h = th;
        this.f2571g = true;
        if (this.f2574j) {
            this.f2569b.onError(th);
        } else {
            j();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() {
        return this.c.poll();
    }
}
