package v7;

import n7.e0;
import n7.h0;
import n7.i0;
import n7.j0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5545b;
    public final Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h(int i9, Object obj) {
        this.f5545b = i9;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v7.a, n7.e
    public void D(n7.j jVar, h0 h0Var) {
        switch (this.f5545b) {
            case 1:
                i iVar = (i) this.c;
                x xVar = iVar.f5549g;
                if (xVar.f5585f.containsKey(iVar.f5546a)) {
                    iVar.d = jVar;
                    iVar.e = h0Var;
                    if (!iVar.f5548f && !xVar.f5587h) {
                        if (jVar == n7.j.e) {
                            iVar.f5547b.e();
                        }
                        xVar.j();
                        break;
                    }
                }
                break;
            default:
                super.D(jVar, h0Var);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v7.a
    public final n7.e E() {
        switch (this.f5545b) {
            case 0:
                return (n7.e) this.c;
            default:
                return ((i) this.c).f5549g.f5586g;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v7.a, n7.e
    public n7.t b(e0 e0Var) {
        switch (this.f5545b) {
            case 0:
                i0 i0Var = (i0) e0Var.c();
                n7.t tVarB = super.b(e0Var);
                if (i0Var != null) {
                    return tVarB.d().f3887a.get(j0.d) == null ? new g(tVarB, i0Var) : tVarB;
                }
                return tVarB;
            default:
                return super.b(e0Var);
        }
    }
}
