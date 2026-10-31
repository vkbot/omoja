package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m extends n8.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b8.b f2576g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b8.b f2577h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final b8.a f2578i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final b8.a f2579j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m(e8.a aVar, e0.g gVar, z3.f fVar, w7.c cVar, w7.c cVar2) {
        super(aVar);
        this.f2576g = gVar;
        this.f2577h = fVar;
        this.f2578i = cVar;
        this.f2579j = cVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n8.a, x7.d
    public final void a() {
        if (this.e) {
            return;
        }
        try {
            this.f2578i.run();
            this.e = true;
            this.f3992b.a();
            try {
                this.f2579j.run();
            } catch (Throwable th) {
                com.bumptech.glide.d.v(th);
                a.a.s(th);
            }
        } catch (Throwable th2) {
            b(th2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        if (this.e) {
            return;
        }
        int i9 = this.f3993f;
        e8.a aVar = this.f3992b;
        if (i9 != 0) {
            aVar.e(null);
            return;
        }
        try {
            this.f2576g.accept(obj);
            aVar.e(obj);
        } catch (Throwable th) {
            b(th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.a
    public final boolean g(Object obj) {
        if (this.e) {
            return false;
        }
        try {
            this.f2576g.accept(obj);
            return this.f3992b.g(obj);
        } catch (Throwable th) {
            b(th);
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n8.a, x7.d
    public final void onError(Throwable th) {
        e8.a aVar = this.f3992b;
        if (this.e) {
            a.a.s(th);
            return;
        }
        this.e = true;
        try {
            this.f2577h.accept(th);
            aVar.onError(th);
        } catch (Throwable th2) {
            com.bumptech.glide.d.v(th2);
            aVar.onError(new a8.c(th, th2));
        }
        try {
            this.f2579j.run();
        } catch (Throwable th3) {
            com.bumptech.glide.d.v(th3);
            a.a.s(th3);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e8.g
    public final Object poll() throws Exception {
        b8.b bVar = this.f2577h;
        try {
            Object objPoll = this.d.poll();
            b8.a aVar = this.f2579j;
            if (objPoll == null) {
                if (this.f3993f == 1) {
                    this.f2578i.run();
                    aVar.run();
                }
                return objPoll;
            }
            try {
                this.f2576g.accept(objPoll);
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
