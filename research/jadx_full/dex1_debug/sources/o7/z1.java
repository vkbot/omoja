package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class z1 extends n7.t {
    public final y1 d;
    public final n7.e e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ f2 f4524f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public z1(f2 f2Var, y1 y1Var, h4 h4Var) {
        this.f4524f = f2Var;
        this.d = y1Var;
        o4.b.i(h4Var, "resolver");
        this.e = h4Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void i(n7.f1 f1Var) {
        o4.b.d("the error status must not be OK", !f1Var.f());
        this.f4524f.f4229m.execute(new e0(17, this, f1Var));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void j(n7.z0 z0Var) {
        this.f4524f.f4229m.execute(new e0(18, this, z0Var));
    }
}
