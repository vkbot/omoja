package u7;

import m4.m;
import n7.f1;
import n7.h1;
import n7.v0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends n7.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f5491b;
    public Object c;
    public boolean d = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(a aVar) {
        this.f5491b = aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void o(f1 f1Var, v0 v0Var) {
        boolean zF = f1Var.f();
        a aVar = this.f5491b;
        if (!zF) {
            if (m.f3660g.d(aVar, null, new m4.c(new h1(f1Var, v0Var)))) {
                m.c(aVar, false);
                return;
            }
            return;
        }
        if (!this.d) {
            if (m.f3660g.d(aVar, null, new m4.c(new h1(f1.f3929l.h("No value received for unary call"), v0Var)))) {
                m.c(aVar, false);
            }
        }
        Object obj = this.c;
        if (obj == null) {
            obj = m.f3661h;
        }
        if (m.f3660g.d(aVar, null, obj)) {
            m.c(aVar, false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void q(Object obj) {
        if (this.d) {
            throw f1.f3929l.h("More than one value received for unary call").a();
        }
        this.c = obj;
        this.d = true;
    }

    @Override // n7.e
    public final void p(v0 v0Var) {
    }
}
