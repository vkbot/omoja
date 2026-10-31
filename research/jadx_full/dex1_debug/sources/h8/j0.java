package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j0 extends h0 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final x7.d f2568n;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j0(x7.d dVar, x7.j jVar, int i9) {
        super(jVar, i9);
        this.f2568n = dVar;
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
                    this.f2568n.f(this);
                    return;
                }
                if (iH == 2) {
                    this.f2560k = 2;
                    this.f2556g = dVar;
                    this.f2568n.f(this);
                    bVar.d(this.c);
                    return;
                }
            }
            this.f2556g = new l8.a(this.c);
            this.f2568n.f(this);
            bVar.d(this.c);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h8.h0
    public final void j() {
        x7.d dVar = this.f2568n;
        e8.g gVar = this.f2556g;
        long j9 = this.f2561l;
        int iAddAndGet = 1;
        while (true) {
            long jAddAndGet = this.e.get();
            while (j9 != jAddAndGet) {
                boolean z8 = this.f2558i;
                try {
                    Object objPoll = gVar.poll();
                    boolean z9 = objPoll == null;
                    if (i(z8, z9, dVar)) {
                        return;
                    }
                    if (z9) {
                        break;
                    }
                    dVar.e(objPoll);
                    j9++;
                    if (j9 == this.d) {
                        if (jAddAndGet != Long.MAX_VALUE) {
                            jAddAndGet = this.e.addAndGet(-j9);
                        }
                        this.f2555f.d(j9);
                        j9 = 0;
                    }
                } catch (Throwable th) {
                    com.bumptech.glide.d.v(th);
                    this.f2555f.cancel();
                    gVar.clear();
                    dVar.onError(th);
                    this.f2554b.dispose();
                    return;
                }
            }
            if (j9 == jAddAndGet && i(this.f2558i, gVar.isEmpty(), dVar)) {
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
    @Override // h8.h0
    public final void k() {
        int iAddAndGet = 1;
        while (!this.f2557h) {
            boolean z8 = this.f2558i;
            this.f2568n.e(null);
            if (z8) {
                Throwable th = this.f2559j;
                x7.d dVar = this.f2568n;
                if (th != null) {
                    dVar.onError(th);
                } else {
                    dVar.a();
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
        x7.d dVar = this.f2568n;
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
                        dVar.a();
                        this.f2554b.dispose();
                        return;
                    } else {
                        dVar.e(objPoll);
                        j9++;
                    }
                } catch (Throwable th) {
                    com.bumptech.glide.d.v(th);
                    this.f2555f.cancel();
                    dVar.onError(th);
                    this.f2554b.dispose();
                    return;
                }
            }
            if (this.f2557h) {
                return;
            }
            if (gVar.isEmpty()) {
                dVar.a();
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
            long j9 = this.f2561l + 1;
            if (j9 == this.d) {
                this.f2561l = 0L;
                this.f2555f.d(j9);
                return objPoll;
            }
            this.f2561l = j9;
        }
        return objPoll;
    }
}
