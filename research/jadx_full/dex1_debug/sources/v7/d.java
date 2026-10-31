package v7;

import java.util.List;
import n7.e0;
import n7.h0;
import n7.j0;
import o7.d3;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5532b = 0;
    public Object c;
    public final /* synthetic */ j0 d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(t tVar, n7.e eVar) {
        this.d = tVar;
        this.c = new h(0, eVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v7.a, n7.e
    public final void D(n7.j jVar, h0 h0Var) {
        switch (this.f5532b) {
            case 0:
                j0 j0Var = (j0) this.c;
                e eVar = (e) this.d;
                j0 j0Var2 = eVar.f5539k;
                n7.j jVar2 = n7.j.c;
                if (j0Var == j0Var2) {
                    o4.b.m(eVar.f5542n, "there's pending lb while current lb has been out of READY");
                    eVar.f5540l = jVar;
                    eVar.f5541m = h0Var;
                    if (jVar == jVar2) {
                        eVar.h();
                    }
                } else if (j0Var == eVar.f5537i) {
                    boolean z8 = jVar == jVar2;
                    eVar.f5542n = z8;
                    if (z8 || j0Var2 == eVar.f5534f) {
                        eVar.f5535g.D(jVar, h0Var);
                    } else {
                        eVar.h();
                    }
                }
                break;
            default:
                ((h) this.c).D(jVar, new d3(h0Var));
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v7.a
    public final n7.e E() {
        switch (this.f5532b) {
            case 0:
                return ((e) this.d).f5535g;
            default:
                return (h) this.c;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v7.a, n7.e
    public n7.t b(e0 e0Var) {
        switch (this.f5532b) {
            case 1:
                t tVar = (t) this.d;
                l lVar = tVar.f5574f;
                s sVar = new s(tVar, e0Var, (h) this.c);
                List list = e0Var.f3903b;
                if (t.g(list)) {
                    if (lVar.f5555b.containsKey(((n7.r) list.get(0)).f3968a.get(0))) {
                        k kVar = (k) lVar.f5555b.get(((n7.r) list.get(0)).f3968a.get(0));
                        kVar.a(sVar);
                        if (kVar.d != null) {
                            sVar.s();
                        }
                    }
                }
                return sVar;
            default:
                return super.b(e0Var);
        }
    }

    public d(e eVar) {
        this.d = eVar;
    }
}
