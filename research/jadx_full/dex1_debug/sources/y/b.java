package y;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b implements d, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f6055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f6056b;
    public volatile c c;
    public volatile c d;
    public int e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6057f = 3;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(Object obj, d dVar) {
        this.f6055a = obj;
        this.f6056b = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.d, y.c
    public final boolean a() {
        boolean z8;
        synchronized (this.f6055a) {
            try {
                z8 = this.c.a() || this.d.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.d
    public final void b(c cVar) {
        synchronized (this.f6055a) {
            try {
                if (cVar.equals(this.d)) {
                    this.f6057f = 5;
                    d dVar = this.f6056b;
                    if (dVar != null) {
                        dVar.b(this);
                    }
                    return;
                }
                this.e = 5;
                if (this.f6057f != 1) {
                    this.f6057f = 1;
                    this.d.i();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.d
    public final void c(c cVar) {
        synchronized (this.f6055a) {
            try {
                if (cVar.equals(this.c)) {
                    this.e = 4;
                } else if (cVar.equals(this.d)) {
                    this.f6057f = 4;
                }
                d dVar = this.f6056b;
                if (dVar != null) {
                    dVar.c(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final void clear() {
        synchronized (this.f6055a) {
            try {
                this.e = 3;
                this.c.clear();
                if (this.f6057f != 3) {
                    this.f6057f = 3;
                    this.d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final void d() {
        synchronized (this.f6055a) {
            try {
                if (this.e == 1) {
                    this.e = 2;
                    this.c.d();
                }
                if (this.f6057f == 1) {
                    this.f6057f = 2;
                    this.d.d();
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
        synchronized (this.f6055a) {
            d dVar = this.f6056b;
            z8 = dVar == null || dVar.e(this);
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.d
    public final boolean f(c cVar) {
        boolean z8;
        synchronized (this.f6055a) {
            d dVar = this.f6056b;
            z8 = (dVar == null || dVar.f(this)) && cVar.equals(this.c);
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.d
    public final boolean g(c cVar) {
        boolean z8;
        boolean zEquals;
        int i9;
        synchronized (this.f6055a) {
            d dVar = this.f6056b;
            z8 = false;
            if (dVar == null || dVar.g(this)) {
                if (this.e != 5) {
                    zEquals = cVar.equals(this.c);
                } else {
                    zEquals = cVar.equals(this.d) && ((i9 = this.f6057f) == 4 || i9 == 5);
                }
                if (zEquals) {
                    z8 = true;
                }
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.d
    public final d getRoot() {
        d root;
        synchronized (this.f6055a) {
            try {
                d dVar = this.f6056b;
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
        synchronized (this.f6055a) {
            try {
                z8 = this.e == 3 && this.f6057f == 3;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final void i() {
        synchronized (this.f6055a) {
            try {
                if (this.e != 1) {
                    this.e = 1;
                    this.c.i();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final boolean isRunning() {
        boolean z8;
        synchronized (this.f6055a) {
            try {
                z8 = true;
                if (this.e != 1 && this.f6057f != 1) {
                    z8 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final boolean j() {
        boolean z8;
        synchronized (this.f6055a) {
            try {
                z8 = this.e == 4 || this.f6057f == 4;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final boolean k(c cVar) {
        if (cVar instanceof b) {
            b bVar = (b) cVar;
            if (this.c.k(bVar.c) && this.d.k(bVar.d)) {
                return true;
            }
        }
        return false;
    }
}
