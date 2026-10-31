package o7;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class w1 extends n7.s {
    public final n7.y d;
    public final n7.d e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Executor f4487f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final n7.x0 f4488g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final n7.n f4489h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public n7.c f4490i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public n7.t f4491j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w1(n7.y yVar, a2 a2Var, Executor executor, n7.x0 x0Var, n7.c cVar) {
        this.d = yVar;
        this.e = a2Var;
        this.f4488g = x0Var;
        Executor executor2 = cVar.f3894b;
        executor = executor2 != null ? executor2 : executor;
        this.f4487f = executor;
        c2.k kVarB = n7.c.b(cVar);
        kVarB.d = executor;
        this.f4490i = new n7.c(kVarB);
        this.f4489h = n7.n.b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.s, n7.t
    public final void a(String str, Throwable th) {
        n7.t tVar = this.f4491j;
        if (tVar != null) {
            tVar.a(str, th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void o(n7.e eVar, n7.v0 v0Var) {
        n7.c cVar = this.f4490i;
        n7.x0 x0Var = this.f4488g;
        o4.b.i(x0Var, "method");
        o4.b.i(cVar, "callOptions");
        l.d dVarA = this.d.a();
        n7.f1 f1Var = (n7.f1) dVarA.c;
        if (!f1Var.f()) {
            this.f4487f.execute(new h0(this, eVar, y0.h(f1Var)));
            this.f4491j = f2.f4217i0;
            return;
        }
        l2 l2Var = (l2) dVarA.d;
        j2 j2Var = (j2) l2Var.f4337b.get(x0Var.f3985b);
        if (j2Var == null) {
            j2Var = (j2) l2Var.c.get(x0Var.c);
        }
        if (j2Var == null) {
            j2Var = l2Var.f4336a;
        }
        if (j2Var != null) {
            this.f4490i = this.f4490i.c(j2.f4288g, j2Var);
        }
        n7.t tVarF = this.e.f(x0Var, this.f4490i);
        this.f4491j = tVarF;
        tVarF.o(eVar, v0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.s
    public final n7.t r() {
        return this.f4491j;
    }
}
