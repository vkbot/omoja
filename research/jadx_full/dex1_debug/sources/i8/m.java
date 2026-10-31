package i8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m implements x7.f, z7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.m f2740b;
    public z7.a c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m(x7.m mVar) {
        this.f2740b = mVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void a() {
        this.c = c8.a.f542b;
        this.f2740b.c(Boolean.TRUE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void b(z7.a aVar) {
        if (c8.a.e(this.c, aVar)) {
            this.c = aVar;
            this.f2740b.b(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void c(Object obj) {
        this.c = c8.a.f542b;
        this.f2740b.c(Boolean.FALSE);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        this.c.dispose();
        this.c = c8.a.f542b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void onError(Throwable th) {
        this.c = c8.a.f542b;
        this.f2740b.onError(th);
    }
}
