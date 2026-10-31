package p085h8;

import com.bumptech.glide.AbstractC1034g;
import p023b8.InterfaceC0929c;
import p030c5.C0990e;
import p045d8.AbstractC1314b;
import p062f5.C1567q;
import p242x7.AbstractC3585b;
import p242x7.InterfaceC3587d;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: h8.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1696g extends AbstractC1684a {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f4387d = 0;

    /* JADX INFO: renamed from: e */
    public final int f4388e;

    /* JADX INFO: renamed from: f */
    public final int f4389f;

    /* JADX INFO: renamed from: g */
    public final InterfaceC0929c f4390g;

    public C1696g(C1706l c1706l, int i10) {
        super(c1706l);
        this.f4390g = AbstractC1314b.f3133a;
        this.f4388e = 3;
        this.f4389f = i10;
    }

    @Override // p242x7.AbstractC3585b
    /* JADX INFO: renamed from: e */
    public final void mo2803e(InterfaceC3587d interfaceC3587d) {
        InterfaceC3587d c1688c;
        switch (this.f4387d) {
            case 0:
                C1567q c1567q = (C1567q) this.f4390g;
                AbstractC3585b abstractC3585b = this.f4328c;
                if (!AbstractC3656k.m5879y(abstractC3585b, interfaceC3587d, c1567q)) {
                    int iM1296c = AbstractC1034g.m1296c(this.f4389f);
                    int i10 = this.f4388e;
                    if (iM1296c != 1) {
                        c1688c = iM1296c != 2 ? new C1690d(interfaceC3587d, c1567q, i10) : new C1688c(interfaceC3587d, c1567q, i10, true);
                    } else {
                        c1688c = new C1688c(interfaceC3587d, c1567q, i10, false);
                    }
                    abstractC3585b.m5714d(c1688c);
                    break;
                }
                break;
            default:
                C0990e c0990e = (C0990e) this.f4390g;
                AbstractC3585b abstractC3585b2 = this.f4328c;
                if (!AbstractC3656k.m5879y(abstractC3585b2, interfaceC3587d, c0990e)) {
                    abstractC3585b2.m5714d(new C1726y(interfaceC3587d, c0990e, this.f4388e, this.f4389f));
                    break;
                }
                break;
        }
    }

    public C1696g(C1685a0 c1685a0, C1567q c1567q) {
        super(c1685a0);
        this.f4390g = c1567q;
        this.f4388e = 2;
        this.f4389f = 1;
    }
}
