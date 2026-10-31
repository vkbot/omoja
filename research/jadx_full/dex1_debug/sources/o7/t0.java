package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t0 implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4442a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4443b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t0(n7.f1 f1Var, v vVar) {
        o4.b.d("error must not be OK", !f1Var.f());
        this.f4443b = f1Var;
        this.c = vVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.z
    public final n7.a0 c() {
        switch (this.f4442a) {
            case 0:
                throw new UnsupportedOperationException("Not a real transport");
            default:
                return ((n2) this.c).c();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.x
    public final u d(n7.x0 x0Var, n7.v0 v0Var, n7.c cVar, n7.e[] eVarArr) {
        int i9 = this.f4442a;
        Object obj = this.c;
        Object obj2 = this.f4443b;
        switch (i9) {
            case 0:
                return new s0((n7.f1) obj2, (v) obj, eVarArr);
            default:
                n7.c cVar2 = n7.c.f3892h;
                o4.b.i(cVar, "callOptions cannot be null");
                n7.e eVarA = ((n7.g) obj2).a(new j4.b(cVar, 0, false), v0Var);
                o4.b.m(eVarArr[eVarArr.length - 1] == y0.f4516o, "lb tracer already assigned");
                eVarArr[eVarArr.length - 1] = eVarA;
                return ((n2) obj).d(x0Var, v0Var, cVar, eVarArr);
        }
    }

    public t0(n7.g gVar, n2 n2Var) {
        this.f4443b = gVar;
        this.c = n2Var;
    }
}
