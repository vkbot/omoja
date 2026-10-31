package p223v7;

import p148n7.C2521k;
import p148n7.InterfaceC2516i0;

/* JADX INFO: renamed from: v7.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3345f implements InterfaceC2516i0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f9770a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC2516i0 f9771b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ AbstractC3341b f9772c;

    public /* synthetic */ C3345f(AbstractC3341b abstractC3341b, InterfaceC2516i0 interfaceC2516i0, int i10) {
        this.f9770a = i10;
        this.f9772c = abstractC3341b;
        this.f9771b = interfaceC2516i0;
    }

    @Override // p148n7.InterfaceC2516i0
    /* JADX INFO: renamed from: a */
    public final void mo3943a(C2521k c2521k) {
        switch (this.f9770a) {
            case 0:
                this.f9771b.mo3943a(c2521k);
                ((C3346g) this.f9772c).f9774e.mo3943a(c2521k);
                break;
            default:
                C3358s c3358s = (C3358s) this.f9772c;
                c3358s.f9815g = c2521k;
                if (!c3358s.f9814f) {
                    this.f9771b.mo3943a(c2521k);
                }
                break;
        }
    }
}
