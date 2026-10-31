package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e0 implements x7.h, n9.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.d f2547b;
    public z7.a c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e0(x7.d dVar) {
        this.f2547b = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void a() {
        this.f2547b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void b(z7.a aVar) {
        this.c = aVar;
        this.f2547b.f(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        this.c.dispose();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void e(Object obj) {
        this.f2547b.e(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.h
    public final void onError(Throwable th) {
        this.f2547b.onError(th);
    }

    public final void d(long j9) {
    }
}
