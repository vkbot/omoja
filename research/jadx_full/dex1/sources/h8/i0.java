package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i0 extends h0 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final e8.a f2566n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f2567o;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i0(e8.a aVar, x7.j jVar, int i9) {
        super(jVar, i9);
        this.f2566n = aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void f(n9.b bVar) {
        if (o8.f.e(this.f2555f, bVar)) {
            this.f2555f = bVar;
            if (bVar instanceof e8.d) {
                e8.d dVar = (e8.d) bVar;
                int iH = dVar.h(7);
                if (iH == 1) {
                    this.f2560k = 1;
                    this.f2556g = dVar;
                    this.f2558i = true;
                    this.f2566n.f(this);
                    return;
                }
                if (iH == 2) {
                    this.f2560k = 2;
                    this.f2556g = dVar;
                    this.f2566n.f(this);
                    bVar.d(this.c);
                    return;
                }
            }
            this.f2556g = new l8.a(this.c);
            this.f2566n.f(this);
            bVar.d(this.c);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h8.h0
    public final void j() {
        e8.a aVar = this.f2566n;
        e8.g gVar = this.f2556g;
        long j9 = this.f2561l;
        long j10 = this.f2567o;
        int iAddAndGet = 1;
        while (true) {
            long j11 = this.e.get();
            while (j9 != j11) {
                boolean z8 = this.f2558i;
                try {
                    Object objPoll = gVar.poll();
                    boolean z9 = objPoll == null;
                    if (i(z8, z9, aVar)) {
                        return;
                    }
                    if (z9) {
                        break;
                    }
                    if (aVar.g(objPoll)) {
                        j9++;
                    }
                    j10++;
                    if (j10 == this.d) {
                        this.f2555f.d(j10);
                        j10 = 0;
                    }
                } catch (Throwable th) {
                    com.bumptech.glide.d.v(th);
                    this.f2555f.cancel();
                    gVar.clear();
                    aVar.onError(th);
                    this.f2554b.dispose();
                    return;
                }
            }
            if (j9 == j11 && i(this.f2558i, gVar.isEmpty(), aVar)) {
                return;
            }
            int i9 = get();
            if (iAddAndGet == i9) {
                this.f2561l = j9;
                this.f2567o = j10;
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else {
                iAddAndGet = i9;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h8.h0
    public final void k() {
        int iAddAndGet = 1;
        while (!this.f2557h) {
            boolean z8 = this.f2558i;
            this.f2566n.e(null);
            if (z8) {
                Throwable th = this.f2559j;
                e8.a aVar = this.f2566n;
                if (th != null) {
                    aVar.onError(th);
                } else {
                    aVar.a();
                }
                this.f2554b.dispose();
                return;
            }
            iAddAndGet = addAndGet(-iAddAndGet);
            if (iAddAndGet == 0) {
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h8.h0
    public final void l() {
        e8.a aVar = this.f2566n;
        e8.g gVar = this.f2556g;
        long j9 = this.f2561l;
        int iAddAndGet = 1;
        while (true) {
            long j10 = this.e.get();
            while (j9 != j10) {
                try {
                    Object objPoll = gVar.poll();
                    if (this.f2557h) {
                        return;
                    }
                    if (objPoll == null) {
                        aVar.a();
                        this.f2554b.dispose();
                        return;
                    } else if (aVar.g(objPoll)) {
                        j9++;
                    }
                } catch (Throwable th) {
                    com.bumptech.glide.d.v(th);
                    this.f2555f.cancel();
                    aVar.onError(th);
                    this.f2554b.dispose();
                    return;
                }
            }
            if (this.f2557h) {
                return;
            }
            if (gVar.isEmpty()) {
                aVar.a();
                this.f2554b.dispose();
                return;
            }
            int i9 = get();
            if (iAddAndGet == i9) {
                this.f2561l = j9;
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else {
                iAddAndGet = i9;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() {
        Object objPoll = this.f2556g.poll();
        if (objPoll != null && this.f2560k != 1) {
            long j9 = this.f2567o + 1;
            if (j9 == this.d) {
                this.f2567o = 0L;
                this.f2555f.d(j9);
                return objPoll;
            }
            this.f2567o = j9;
        }
        return objPoll;
    }
}
