package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r implements x7.d, z7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x7.f f2597b;
    public n9.b c;
    public long d;
    public boolean e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public r(x7.f fVar) {
        this.f2597b = fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void a() {
        this.c = o8.f.f4535b;
        if (this.e) {
            return;
        }
        this.e = true;
        this.f2597b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z7.a
    public final void dispose() {
        this.c.cancel();
        this.c = o8.f.f4535b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        if (this.e) {
            return;
        }
        long j9 = this.d;
        if (j9 != 0) {
            this.d = j9 + 1;
            return;
        }
        this.e = true;
        this.c.cancel();
        this.c = o8.f.f4535b;
        this.f2597b.c(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void f(n9.b bVar) {
        if (o8.f.e(this.c, bVar)) {
            this.c = bVar;
            this.f2597b.b(this);
            bVar.d(Long.MAX_VALUE);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void onError(Throwable th) {
        if (this.e) {
            a.a.s(th);
            return;
        }
        this.e = true;
        this.c = o8.f.f4535b;
        this.f2597b.onError(th);
    }
}
