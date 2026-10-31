package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b3 implements n7.i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n7.t f4170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e3 f4171b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b3(e3 e3Var, n7.t tVar) {
        this.f4171b = e3Var;
        this.f4170a = tVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.i0
    public final void a(n7.k kVar) {
        n7.h0 d3Var;
        e3 e3Var = this.f4171b;
        n7.e eVar = e3Var.f4202f;
        n7.j jVar = kVar.f3949a;
        if (jVar == n7.j.f3944f) {
            return;
        }
        n7.j jVar2 = n7.j.e;
        n7.j jVar3 = n7.j.d;
        if (jVar == jVar3 || jVar == jVar2) {
            eVar.y();
        }
        if (e3Var.f4204h == jVar3) {
            if (jVar == n7.j.f3943b) {
                return;
            }
            if (jVar == jVar2) {
                e3Var.e();
                return;
            }
        }
        int iOrdinal = jVar.ordinal();
        if (iOrdinal != 0) {
            n7.t tVar = this.f4170a;
            if (iOrdinal == 1) {
                d3Var = new d3(n7.f0.b(tVar, null));
            } else if (iOrdinal == 2) {
                d3Var = new d3(n7.f0.a(kVar.f3950b));
            } else {
                if (iOrdinal != 3) {
                    androidx.navigation.b.t(jVar, "Unsupported state:");
                    return;
                }
                d3Var = new y2(e3Var, tVar);
            }
        } else {
            d3Var = new d3(n7.f0.e);
        }
        e3Var.f4204h = jVar;
        eVar.D(jVar, d3Var);
    }
}
