package p214u7;

import p135m4.AbstractC2394m;
import p135m4.C2384c;
import p148n7.AbstractC2503e;
import p148n7.C2508f1;
import p148n7.C2514h1;
import p148n7.C2547v0;

/* JADX INFO: renamed from: u7.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3307d extends AbstractC2503e {

    /* JADX INFO: renamed from: b */
    public final C3304a f9687b;

    /* JADX INFO: renamed from: c */
    public Object f9688c;

    /* JADX INFO: renamed from: d */
    public boolean f9689d = false;

    public C3307d(C3304a c3304a) {
        this.f9687b = c3304a;
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: o */
    public final void mo3907o(C2508f1 c2508f1, C2547v0 c2547v0) {
        boolean zM3932f = c2508f1.m3932f();
        C3304a c3304a = this.f9687b;
        if (!zM3932f) {
            if (AbstractC2394m.f6472g.mo1265d(c3304a, null, new C2384c(new C2514h1(c2508f1, c2547v0)))) {
                AbstractC2394m.m3753c(c3304a, false);
                return;
            }
            return;
        }
        if (!this.f9689d) {
            if (AbstractC2394m.f6472g.mo1265d(c3304a, null, new C2384c(new C2514h1(C2508f1.f6944l.m3934h("No value received for unary call"), c2547v0)))) {
                AbstractC2394m.m3753c(c3304a, false);
            }
        }
        Object obj = this.f9688c;
        if (obj == null) {
            obj = AbstractC2394m.f6473h;
        }
        if (AbstractC2394m.f6472g.mo1265d(c3304a, null, obj)) {
            AbstractC2394m.m3753c(c3304a, false);
        }
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: q */
    public final void mo3909q(Object obj) {
        if (this.f9689d) {
            throw C2508f1.f6944l.m3934h("More than one value received for unary call").m3930a();
        }
        this.f9688c = obj;
        this.f9689d = true;
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: p */
    public final void mo3908p(C2547v0 c2547v0) {
    }
}
