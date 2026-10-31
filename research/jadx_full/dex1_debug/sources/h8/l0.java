package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l0 extends a {
    public final int d;
    public final boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final w7.c f2575f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l0(l lVar, int i9) {
        super(lVar);
        this.d = i9;
        this.e = true;
        this.f2575f = d8.b.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.b
    public final void e(x7.d dVar) {
        this.c.d(new k0(dVar, this.d, this.e, this.f2575f));
    }
}
