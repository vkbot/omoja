package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n extends n8.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b8.b f2581g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b8.b f2582h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b8.a f2583i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final b8.a f2584j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n(x7.d dVar, e0.g gVar, z3.f fVar, w7.c cVar, w7.c cVar2) {
        super(dVar);
        this.f2581g = gVar;
        this.f2582h = fVar;
        this.f2583i = cVar;
        this.f2584j = cVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n8.b, x7.d
    public final void a() {
        if (this.e) {
            return;
        }
        try {
            this.f2583i.run();
            this.e = true;
            this.f3994b.a();
            try {
                this.f2584j.run();
            } catch (Throwable th) {
                com.bumptech.glide.d.v(th);
                a.a.s(th);
            }
        } catch (Throwable th2) {
            com.bumptech.glide.d.v(th2);
            this.c.cancel();
            onError(th2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        if (this.e) {
            return;
        }
        int i9 = this.f3995f;
        x7.d dVar = this.f3994b;
        if (i9 != 0) {
            dVar.e(null);
            return;
        }
        try {
            this.f2581g.accept(obj);
            dVar.e(obj);
        } catch (Throwable th) {
            com.bumptech.glide.d.v(th);
            this.c.cancel();
            onError(th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n8.b, x7.d
    public final void onError(Throwable th) {
        x7.d dVar = this.f3994b;
        if (this.e) {
            a.a.s(th);
            return;
        }
        this.e = true;
        try {
            this.f2582h.accept(th);
            dVar.onError(th);
        } catch (Throwable th2) {
            com.bumptech.glide.d.v(th2);
            dVar.onError(new a8.c(th, th2));
        }
        try {
            this.f2584j.run();
        } catch (Throwable th3) {
            com.bumptech.glide.d.v(th3);
            a.a.s(th3);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() throws Exception {
        b8.b bVar = this.f2582h;
        try {
            Object objPoll = this.d.poll();
            b8.a aVar = this.f2584j;
            if (objPoll == null) {
                if (this.f3995f == 1) {
                    this.f2583i.run();
                    aVar.run();
                }
                return objPoll;
            }
            try {
                this.f2581g.accept(objPoll);
                aVar.run();
                return objPoll;
            } catch (Throwable th) {
                try {
                    com.bumptech.glide.d.v(th);
                    try {
                        bVar.accept(th);
                        p8.c cVar = p8.d.f4702a;
                        if (th instanceof Exception) {
                            throw th;
                        }
                        throw th;
                    } catch (Throwable th2) {
                        throw new a8.c(th, th2);
                    }
                } catch (Throwable th3) {
                    aVar.run();
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            com.bumptech.glide.d.v(th4);
            try {
                bVar.accept(th4);
                p8.c cVar2 = p8.d.f4702a;
                if (th4 instanceof Exception) {
                    throw th4;
                }
                throw th4;
            } catch (Throwable th5) {
                throw new a8.c(th4, th5);
            }
        }
    }
}
