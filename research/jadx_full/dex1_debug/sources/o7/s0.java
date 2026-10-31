package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class s0 extends u2 {
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n7.f1 f4421f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final v f4422g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final n7.e[] f4423h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s0(n7.f1 f1Var, v vVar, n7.e[] eVarArr) {
        super(0);
        o4.b.d("error must not be OK", !f1Var.f());
        this.f4421f = f1Var;
        this.f4422g = vVar;
        this.f4423h = eVarArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u2, o7.u
    public final void d(w wVar) {
        o4.b.m(!this.e, "already started");
        this.e = true;
        n7.e[] eVarArr = this.f4423h;
        int length = eVarArr.length;
        int i9 = 0;
        while (true) {
            n7.f1 f1Var = this.f4421f;
            if (i9 >= length) {
                wVar.b(f1Var, this.f4422g, new n7.v0());
                return;
            } else {
                eVarArr[i9].B(f1Var);
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u2, o7.u
    public final void e(i7.i iVar) {
        iVar.b(this.f4421f, "error");
        iVar.b(this.f4422g, "progress");
    }
}
