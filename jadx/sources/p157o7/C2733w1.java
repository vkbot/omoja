package p157o7;

import java.util.concurrent.Executor;
import p027c2.C0961k;
import p120l.C2187d;
import p148n7.AbstractC2500d;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2540s;
import p148n7.AbstractC2542t;
import p148n7.AbstractC2552y;
import p148n7.C2497c;
import p148n7.C2508f1;
import p148n7.C2530n;
import p148n7.C2547v0;
import p148n7.C2551x0;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.w1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2733w1 extends AbstractC2540s {

    /* JADX INFO: renamed from: d */
    public final AbstractC2552y f7844d;

    /* JADX INFO: renamed from: e */
    public final AbstractC2500d f7845e;

    /* JADX INFO: renamed from: f */
    public final Executor f7846f;

    /* JADX INFO: renamed from: g */
    public final C2551x0 f7847g;

    /* JADX INFO: renamed from: h */
    public final C2530n f7848h;

    /* JADX INFO: renamed from: i */
    public C2497c f7849i;

    /* JADX INFO: renamed from: j */
    public AbstractC2542t f7850j;

    public C2733w1(AbstractC2552y abstractC2552y, C2602a2 c2602a2, Executor executor, C2551x0 c2551x0, C2497c c2497c) {
        this.f7844d = abstractC2552y;
        this.f7845e = c2602a2;
        this.f7847g = c2551x0;
        Executor executor2 = c2497c.f6892b;
        executor = executor2 != null ? executor2 : executor;
        this.f7846f = executor;
        C0961k c0961kM3884b = C2497c.m3884b(c2497c);
        c0961kM3884b.f873d = executor;
        this.f7849i = new C2497c(c0961kM3884b);
        this.f7848h = C2530n.m3961b();
    }

    @Override // p148n7.AbstractC2540s, p148n7.AbstractC2542t
    /* JADX INFO: renamed from: a */
    public final void mo3969a(String str, Throwable th) {
        AbstractC2542t abstractC2542t = this.f7850j;
        if (abstractC2542t != null) {
            abstractC2542t.mo3969a(str, th);
        }
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: o */
    public final void mo3984o(AbstractC2503e abstractC2503e, C2547v0 c2547v0) {
        C2497c c2497c = this.f7849i;
        C2551x0 c2551x0 = this.f7847g;
        AbstractC2587b.m4042i(c2551x0, "method");
        AbstractC2587b.m4042i(c2497c, "callOptions");
        C2187d c2187dMo3994a = this.f7844d.mo3994a();
        C2508f1 c2508f1 = (C2508f1) c2187dMo3994a.f5705c;
        if (!c2508f1.m3932f()) {
            this.f7846f.execute(new C2642h0(this, abstractC2503e, AbstractC2743y0.m4264h(c2508f1)));
            this.f7850j = C2632f2.f7396i0;
            return;
        }
        C2668l2 c2668l2 = (C2668l2) c2187dMo3994a.f5706d;
        C2656j2 c2656j2 = (C2656j2) c2668l2.f7609b.get(c2551x0.f7055b);
        if (c2656j2 == null) {
            c2656j2 = (C2656j2) c2668l2.f7610c.get(c2551x0.f7056c);
        }
        if (c2656j2 == null) {
            c2656j2 = c2668l2.f7608a;
        }
        if (c2656j2 != null) {
            this.f7849i = this.f7849i.m3886c(C2656j2.f7538g, c2656j2);
        }
        AbstractC2542t abstractC2542tMo3888f = this.f7845e.mo3888f(c2551x0, this.f7849i);
        this.f7850j = abstractC2542tMo3888f;
        abstractC2542tMo3888f.mo3984o(abstractC2503e, c2547v0);
    }

    @Override // p148n7.AbstractC2540s
    /* JADX INFO: renamed from: r */
    public final AbstractC2542t mo3973r() {
        return this.f7850j;
    }
}
