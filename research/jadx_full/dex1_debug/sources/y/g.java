package y;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g implements d, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f6078a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f6079b;
    public volatile f c;
    public volatile c d;
    public int e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6080f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f6081g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(Object obj, d dVar) {
        this.f6079b = obj;
        this.f6078a = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.d, y.c
    public final boolean a() {
        boolean z8;
        synchronized (this.f6079b) {
            try {
                z8 = this.d.a() || this.c.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.d
    public final void b(c cVar) {
        synchronized (this.f6079b) {
            try {
                if (!cVar.equals(this.c)) {
                    this.f6080f = 5;
                    return;
                }
                this.e = 5;
                d dVar = this.f6078a;
                if (dVar != null) {
                    dVar.b(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.d
    public final void c(c cVar) {
        synchronized (this.f6079b) {
            try {
                if (cVar.equals(this.d)) {
                    this.f6080f = 4;
                    return;
                }
                this.e = 4;
                d dVar = this.f6078a;
                if (dVar != null) {
                    dVar.c(this);
                }
                if (!kotlin.collections.unsigned.a.a(this.f6080f)) {
                    this.d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final void clear() {
        synchronized (this.f6079b) {
            this.f6081g = false;
            this.e = 3;
            this.f6080f = 3;
            this.d.clear();
            this.c.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final void d() {
        synchronized (this.f6079b) {
            try {
                if (!kotlin.collections.unsigned.a.a(this.f6080f)) {
                    this.f6080f = 2;
                    this.d.d();
                }
                if (!kotlin.collections.unsigned.a.a(this.e)) {
                    this.e = 2;
                    this.c.d();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.d
    public final boolean e(c cVar) {
        boolean z8;
        synchronized (this.f6079b) {
            try {
                d dVar = this.f6078a;
                z8 = (dVar == null || dVar.e(this)) && (cVar.equals(this.c) || this.e != 4);
            } catch (Throwable th) {
                throw th;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.d
    public final boolean f(c cVar) {
        boolean z8;
        synchronized (this.f6079b) {
            try {
                d dVar = this.f6078a;
                z8 = (dVar == null || dVar.f(this)) && cVar.equals(this.c) && this.e != 2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.d
    public final boolean g(c cVar) {
        boolean z8;
        synchronized (this.f6079b) {
            try {
                d dVar = this.f6078a;
                z8 = (dVar == null || dVar.g(this)) && cVar.equals(this.c) && !a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.d
    public final d getRoot() {
        d root;
        synchronized (this.f6079b) {
            try {
                d dVar = this.f6078a;
                root = dVar != null ? dVar.getRoot() : this;
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final boolean h() {
        boolean z8;
        synchronized (this.f6079b) {
            z8 = this.e == 3;
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final void i() {
        synchronized (this.f6079b) {
            try {
                this.f6081g = true;
                try {
                    if (this.e != 4 && this.f6080f != 1) {
                        this.f6080f = 1;
                        this.d.i();
                    }
                    if (this.f6081g && this.e != 1) {
                        this.e = 1;
                        this.c.i();
                    }
                    this.f6081g = false;
                } catch (Throwable th) {
                    this.f6081g = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final boolean isRunning() {
        boolean z8;
        synchronized (this.f6079b) {
            z8 = true;
            if (this.e != 1) {
                z8 = false;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final boolean j() {
        boolean z8;
        synchronized (this.f6079b) {
            z8 = this.e == 4;
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final boolean k(c cVar) {
        if (!(cVar instanceof g)) {
            return false;
        }
        g gVar = (g) cVar;
        if (this.c == null) {
            if (gVar.c != null) {
                return false;
            }
        } else if (!this.c.k(gVar.c)) {
            return false;
        }
        if (this.d == null) {
            return gVar.d == null;
        }
        return this.d.k(gVar.d);
    }
}
