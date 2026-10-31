package i8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class s extends o8.c implements x7.f {
    public z7.a d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void a() {
        this.f4532b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void b(z7.a aVar) {
        if (c8.a.e(this.d, aVar)) {
            this.d = aVar;
            this.f4532b.f(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cancel() {
        set(4);
        this.c = null;
        this.d.dispose();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.f
    public final void onError(Throwable th) {
        this.f4532b.onError(th);
    }
}
