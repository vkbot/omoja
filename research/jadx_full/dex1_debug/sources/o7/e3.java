package o7;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e3 extends n7.j0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n7.e f4202f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public n7.t f4203g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public n7.j f4204h = n7.j.e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e3(n7.e eVar) {
        this.f4202f = eVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final n7.f1 a(n7.g0 g0Var) {
        Boolean bool;
        List list = g0Var.f3935a;
        if (list.isEmpty()) {
            n7.f1 f1VarH = n7.f1.f3930m.h("NameResolver returned no usable address. addrs=" + list + ", attrs=" + g0Var.f3936b);
            c(f1VarH);
            return f1VarH;
        }
        Object obj = g0Var.c;
        if ((obj instanceof c3) && (bool = ((c3) obj).f4176a) != null && bool.booleanValue()) {
            ArrayList arrayList = new ArrayList(list);
            Collections.shuffle(arrayList, new Random());
            list = arrayList;
        }
        n7.t tVar = this.f4203g;
        if (tVar == null) {
            n7.e0 e0VarD = n7.e0.d();
            e0VarD.e(list);
            n7.e0 e0VarB = e0VarD.b();
            n7.e eVar = this.f4202f;
            n7.t tVarB = eVar.b(e0VarB);
            tVarB.p(new b3(this, tVarB));
            this.f4203g = tVarB;
            d3 d3Var = new d3(n7.f0.b(tVarB, null));
            n7.j jVar = n7.j.f3943b;
            this.f4204h = jVar;
            eVar.D(jVar, d3Var);
            tVarB.l();
        } else {
            tVar.q(list);
        }
        return n7.f1.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final void c(n7.f1 f1Var) {
        n7.t tVar = this.f4203g;
        if (tVar != null) {
            tVar.n();
            this.f4203g = null;
        }
        d3 d3Var = new d3(n7.f0.a(f1Var));
        n7.j jVar = n7.j.d;
        this.f4204h = jVar;
        this.f4202f.D(jVar, d3Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final void e() {
        n7.t tVar = this.f4203g;
        if (tVar != null) {
            tVar.l();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final void f() {
        n7.t tVar = this.f4203g;
        if (tVar != null) {
            tVar.n();
        }
    }
}
