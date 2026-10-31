package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h4 extends n7.e {
    public static final n7.a e = new n7.a("io.grpc.internal.RetryingNameResolver.RESOLUTION_RESULT_LISTENER_KEY");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n7.e f4276b;
    public final j c;
    public final n7.k1 d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h4(p0 p0Var, j jVar, n7.k1 k1Var) {
        this.f4276b = p0Var;
        this.c = jVar;
        this.d = k1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void A(n7.t tVar) {
        this.f4276b.A(new g4(this, tVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public String e() {
        return this.f4276b.e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f4276b, "delegate");
        return sVarT.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void x() {
        this.f4276b.x();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void z() {
        this.f4276b.z();
        j jVar = this.c;
        n7.k1 k1Var = jVar.f4285b;
        k1Var.d();
        k1Var.execute(new f5.j(9, jVar));
    }
}
