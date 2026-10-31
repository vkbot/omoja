package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p extends o8.c implements x7.d {
    public n9.b d;
    public long e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2595f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void a() {
        if (this.f2595f) {
            return;
        }
        this.f2595f = true;
        this.f4532b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        set(4);
        this.c = null;
        this.d.cancel();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void e(Object obj) {
        if (this.f2595f) {
            return;
        }
        long j9 = this.e;
        if (j9 != 0) {
            this.e = j9 + 1;
            return;
        }
        this.f2595f = true;
        this.d.cancel();
        i(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void f(n9.b bVar) {
        if (o8.f.e(this.d, bVar)) {
            this.d = bVar;
            this.f4532b.f(this);
            bVar.d(Long.MAX_VALUE);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.d
    public final void onError(Throwable th) {
        if (this.f2595f) {
            a.a.s(th);
        } else {
            this.f2595f = true;
            this.f4532b.onError(th);
        }
    }
}
