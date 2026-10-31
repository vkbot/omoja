package p223v7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import p148n7.AbstractC2513h0;
import p148n7.AbstractC2519j0;
import p148n7.AbstractC2522k0;
import p148n7.C2508f1;
import p148n7.C2510g0;
import p148n7.EnumC2518j;
import p155o4.AbstractC2587b;
import p157o7.C2635g;

/* JADX INFO: renamed from: v7.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3344e extends AbstractC2519j0 {

    /* JADX INFO: renamed from: o */
    public static final C2635g f9760o = new C2635g(1);

    /* JADX INFO: renamed from: f */
    public final C3342c f9761f;

    /* JADX INFO: renamed from: g */
    public final AbstractC3340a f9762g;

    /* JADX INFO: renamed from: h */
    public AbstractC2522k0 f9763h;

    /* JADX INFO: renamed from: i */
    public AbstractC2519j0 f9764i;

    /* JADX INFO: renamed from: j */
    public AbstractC2522k0 f9765j;

    /* JADX INFO: renamed from: k */
    public AbstractC2519j0 f9766k;

    /* JADX INFO: renamed from: l */
    public EnumC2518j f9767l;

    /* JADX INFO: renamed from: m */
    public AbstractC2513h0 f9768m;

    /* JADX INFO: renamed from: n */
    public boolean f9769n;

    public C3344e(AbstractC3340a abstractC3340a) {
        C3342c c3342c = new C3342c(this);
        this.f9761f = c3342c;
        this.f9764i = c3342c;
        this.f9766k = c3342c;
        this.f9762g = abstractC3340a;
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: b */
    public final boolean mo3945b() {
        return m5259g().mo3945b();
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: c */
    public final void mo3946c(C2508f1 c2508f1) {
        m5259g().mo3946c(c2508f1);
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: d */
    public final void mo3947d(C2510g0 c2510g0) {
        m5259g().mo3947d(c2510g0);
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: e */
    public final void mo3948e() {
        m5259g().mo3948e();
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: f */
    public final void mo3949f() {
        this.f9766k.mo3949f();
        this.f9764i.mo3949f();
    }

    /* JADX INFO: renamed from: g */
    public final AbstractC2519j0 m5259g() {
        AbstractC2519j0 abstractC2519j0 = this.f9766k;
        return abstractC2519j0 == this.f9761f ? this.f9764i : abstractC2519j0;
    }

    /* JADX INFO: renamed from: h */
    public final void m5260h() {
        this.f9762g.mo3892D(this.f9767l, this.f9768m);
        this.f9764i.mo3949f();
        this.f9764i = this.f9766k;
        this.f9763h = this.f9765j;
        this.f9766k = this.f9761f;
        this.f9765j = null;
    }

    /* JADX INFO: renamed from: i */
    public final void m5261i(AbstractC2522k0 abstractC2522k0) {
        AbstractC2587b.m4042i(abstractC2522k0, "newBalancerFactory");
        if (abstractC2522k0 == this.f9765j) {
            return;
        }
        this.f9766k.mo3949f();
        this.f9766k = this.f9761f;
        this.f9765j = null;
        this.f9767l = EnumC2518j.f6968b;
        this.f9768m = f9760o;
        if (abstractC2522k0 == this.f9763h) {
            return;
        }
        C3343d c3343d = new C3343d(this);
        AbstractC2519j0 abstractC2519j0Mo3952b = abstractC2522k0.mo3952b(c3343d);
        c3343d.f9758c = abstractC2519j0Mo3952b;
        this.f9766k = abstractC2519j0Mo3952b;
        this.f9765j = abstractC2522k0;
        if (this.f9769n) {
            return;
        }
        m5260h();
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(m5259g(), "delegate");
        return c1073sM1263t.toString();
    }
}
