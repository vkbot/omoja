package j;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x implements d0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f2858b;
    public final boolean c;
    public final d0 d;
    public final r e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final h.e f2859f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2860g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2861h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x(d0 d0Var, boolean z8, boolean z9, h.e eVar, r rVar) {
        c0.g.c(d0Var, "Argument must not be null");
        this.d = d0Var;
        this.f2858b = z8;
        this.c = z9;
        this.f2859f = eVar;
        c0.g.c(rVar, "Argument must not be null");
        this.e = rVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void a() {
        if (this.f2861h) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.f2860g++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final int b() {
        return this.d.b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        boolean z8;
        synchronized (this) {
            int i9 = this.f2860g;
            if (i9 <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z8 = true;
            int i10 = i9 - 1;
            this.f2860g = i10;
            if (i10 != 0) {
                z8 = false;
            }
        }
        if (z8) {
            this.e.e(this.f2859f, this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final Class d() {
        return this.d.d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final Object get() {
        return this.d.get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final synchronized void recycle() {
        if (this.f2860g > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f2861h) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f2861h = true;
        if (this.c) {
            this.d.recycle();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f2858b + ", listener=" + this.e + ", key=" + this.f2859f + ", acquired=" + this.f2860g + ", isRecycled=" + this.f2861h + ", resource=" + this.d + '}';
    }
}
