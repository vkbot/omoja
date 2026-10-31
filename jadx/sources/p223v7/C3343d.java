package p223v7;

import java.util.List;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2513h0;
import p148n7.AbstractC2519j0;
import p148n7.AbstractC2542t;
import p148n7.C2504e0;
import p148n7.C2538r;
import p148n7.EnumC2518j;
import p155o4.AbstractC2587b;
import p157o7.C2621d3;

/* JADX INFO: renamed from: v7.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3343d extends AbstractC3340a {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9757b = 0;

    /* JADX INFO: renamed from: c */
    public Object f9758c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ AbstractC2519j0 f9759d;

    public C3343d(C3359t c3359t, AbstractC2503e abstractC2503e) {
        this.f9759d = c3359t;
        this.f9758c = new C3347h(0, abstractC2503e);
    }

    @Override // p223v7.AbstractC3340a, p148n7.AbstractC2503e
    /* JADX INFO: renamed from: D */
    public final void mo3892D(EnumC2518j enumC2518j, AbstractC2513h0 abstractC2513h0) {
        switch (this.f9757b) {
            case 0:
                AbstractC2519j0 abstractC2519j0 = (AbstractC2519j0) this.f9758c;
                C3344e c3344e = (C3344e) this.f9759d;
                AbstractC2519j0 abstractC2519j1 = c3344e.f9766k;
                EnumC2518j enumC2518j2 = EnumC2518j.f6969c;
                if (abstractC2519j0 == abstractC2519j1) {
                    AbstractC2587b.m4046m(c3344e.f9769n, "there's pending lb while current lb has been out of READY");
                    c3344e.f9767l = enumC2518j;
                    c3344e.f9768m = abstractC2513h0;
                    if (enumC2518j == enumC2518j2) {
                        c3344e.m5260h();
                    }
                } else if (abstractC2519j0 == c3344e.f9764i) {
                    boolean z9 = enumC2518j == enumC2518j2;
                    c3344e.f9769n = z9;
                    if (z9 || abstractC2519j1 == c3344e.f9761f) {
                        c3344e.f9762g.mo3892D(enumC2518j, abstractC2513h0);
                    } else {
                        c3344e.m5260h();
                    }
                }
                break;
            default:
                ((C3347h) this.f9758c).mo3892D(enumC2518j, new C2621d3(abstractC2513h0));
                break;
        }
    }

    @Override // p223v7.AbstractC3340a
    /* JADX INFO: renamed from: E */
    public final AbstractC2503e mo5257E() {
        switch (this.f9757b) {
            case 0:
                return ((C3344e) this.f9759d).f9762g;
            default:
                return (C3347h) this.f9758c;
        }
    }

    @Override // p223v7.AbstractC3340a, p148n7.AbstractC2503e
    /* JADX INFO: renamed from: b */
    public AbstractC2542t mo3894b(C2504e0 c2504e0) {
        switch (this.f9757b) {
            case 1:
                C3359t c3359t = (C3359t) this.f9759d;
                C3351l c3351l = c3359t.f9820f;
                C3358s c3358s = new C3358s(c3359t, c2504e0, (C3347h) this.f9758c);
                List list = c2504e0.f6906b;
                if (C3359t.m5269g(list)) {
                    if (c3351l.f9792b.containsKey(((C2538r) list.get(0)).f7017a.get(0))) {
                        C3350k c3350k = (C3350k) c3351l.f9792b.get(((C2538r) list.get(0)).f7017a.get(0));
                        c3350k.m5262a(c3358s);
                        if (c3350k.f9789d != null) {
                            c3358s.m5268s();
                        }
                    }
                }
                return c3358s;
            default:
                return super.mo3894b(c2504e0);
        }
    }

    public C3343d(C3344e c3344e) {
        this.f9759d = c3344e;
    }
}
