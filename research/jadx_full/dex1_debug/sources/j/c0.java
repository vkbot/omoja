package j;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c0 implements d0, d0.e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final d0.d f2753f = d0.g.a(20, new z3.f(11));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d0.h f2754b = new d0.h();
    public d0 c;
    public boolean d;
    public boolean e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void a() {
        this.f2754b.a();
        if (!this.d) {
            throw new IllegalStateException("Already unlocked");
        }
        this.d = false;
        if (this.e) {
            recycle();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final int b() {
        return this.c.b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // d0.e
    public final d0.h c() {
        return this.f2754b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final Class d() {
        return this.c.d();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final Object get() {
        return this.c.get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.d0
    public final synchronized void recycle() {
        this.f2754b.a();
        this.e = true;
        if (!this.d) {
            this.c.recycle();
            this.c = null;
            f2753f.release(this);
        }
    }
}
