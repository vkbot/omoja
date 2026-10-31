package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d3 extends n7.h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4187a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4188b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d3(n7.f0 f0Var) {
        o4.b.i(f0Var, "result");
        this.f4188b = f0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.h0
    public final n7.f0 a(g3 g3Var) {
        switch (this.f4187a) {
            case 0:
                return (n7.f0) this.f4188b;
            default:
                n7.f0 f0VarA = ((n7.h0) this.f4188b).a(g3Var);
                n7.t tVar = f0VarA.f3921a;
                if (tVar == null) {
                    return f0VarA;
                }
                n7.b bVarD = tVar.d();
                return n7.f0.b(tVar, new v7.r((v7.k) bVarD.f3887a.get(v7.t.f5573n), f0VarA.f3922b));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f4187a) {
            case 0:
                com.bumptech.glide.manager.s sVar = new com.bumptech.glide.manager.s(d3.class.getSimpleName());
                sVar.c((n7.f0) this.f4188b, "result");
                return sVar.toString();
            default:
                return super.toString();
        }
    }

    public d3(n7.h0 h0Var) {
        this.f4188b = h0Var;
    }
}
