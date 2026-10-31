package p223v7;

import p148n7.AbstractC2503e;
import p148n7.AbstractC2513h0;
import p148n7.AbstractC2519j0;
import p148n7.AbstractC2542t;
import p148n7.C2504e0;
import p148n7.EnumC2518j;
import p148n7.InterfaceC2516i0;

/* JADX INFO: renamed from: v7.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3347h extends AbstractC3340a {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9775b;

    /* JADX INFO: renamed from: c */
    public final Object f9776c;

    public /* synthetic */ C3347h(int i10, Object obj) {
        this.f9775b = i10;
        this.f9776c = obj;
    }

    @Override // p223v7.AbstractC3340a, p148n7.AbstractC2503e
    /* JADX INFO: renamed from: D */
    public void mo3892D(EnumC2518j enumC2518j, AbstractC2513h0 abstractC2513h0) {
        switch (this.f9775b) {
            case 1:
                C3348i c3348i = (C3348i) this.f9776c;
                C3363x c3363x = c3348i.f9783g;
                if (c3363x.f9832f.containsKey(c3348i.f9777a)) {
                    c3348i.f9780d = enumC2518j;
                    c3348i.f9781e = abstractC2513h0;
                    if (!c3348i.f9782f && !c3363x.f9834h) {
                        if (enumC2518j == EnumC2518j.f6971e) {
                            c3348i.f9778b.mo3948e();
                        }
                        c3363x.m5275j();
                        break;
                    }
                }
                break;
            default:
                super.mo3892D(enumC2518j, abstractC2513h0);
                break;
        }
    }

    @Override // p223v7.AbstractC3340a
    /* JADX INFO: renamed from: E */
    public final AbstractC2503e mo5257E() {
        switch (this.f9775b) {
            case 0:
                return (AbstractC2503e) this.f9776c;
            default:
                return ((C3348i) this.f9776c).f9783g.f9833g;
        }
    }

    @Override // p223v7.AbstractC3340a, p148n7.AbstractC2503e
    /* JADX INFO: renamed from: b */
    public AbstractC2542t mo3894b(C2504e0 c2504e0) {
        switch (this.f9775b) {
            case 0:
                InterfaceC2516i0 interfaceC2516i0 = (InterfaceC2516i0) c2504e0.m3922c();
                AbstractC2542t abstractC2542tMo3894b = super.mo3894b(c2504e0);
                if (interfaceC2516i0 != null) {
                    return abstractC2542tMo3894b.mo3977d().f6882a.get(AbstractC2519j0.f6976d) == null ? new C3346g(abstractC2542tMo3894b, interfaceC2516i0) : abstractC2542tMo3894b;
                }
                return abstractC2542tMo3894b;
            default:
                return super.mo3894b(c2504e0);
        }
    }
}
