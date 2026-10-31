package p085h8;

import com.bumptech.glide.AbstractC1031d;
import java.util.ArrayList;
import p023b8.InterfaceC0930d;
import p054e8.InterfaceC1498a;
import p158o8.EnumC2755d;
import p171p8.EnumC2999a;
import p184r5.C3105c;
import p242x7.AbstractC3585b;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1724w extends AbstractC1684a {

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f4474d;

    /* JADX INFO: renamed from: e */
    public final Object f4475e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1724w(C1685a0 c1685a0) {
        super(c1685a0);
        this.f4474d = 2;
        this.f4475e = EnumC2999a.f8443b;
    }

    @Override // p242x7.AbstractC3585b
    /* JADX INFO: renamed from: e */
    public final void mo2803e(InterfaceC3587d interfaceC3587d) {
        switch (this.f4474d) {
            case 0:
                InterfaceC0930d interfaceC0930d = (InterfaceC0930d) this.f4475e;
                boolean z9 = interfaceC3587d instanceof InterfaceC1498a;
                AbstractC3585b abstractC3585b = this.f4328c;
                if (!z9) {
                    abstractC3585b.m5714d(new C1723v(interfaceC3587d, interfaceC0930d));
                } else {
                    abstractC3585b.m5714d(new C1722u((InterfaceC1498a) interfaceC3587d, interfaceC0930d, 0));
                }
                break;
            case 1:
                C3105c c3105c = (C3105c) this.f4475e;
                boolean z10 = interfaceC3587d instanceof InterfaceC1498a;
                AbstractC3585b abstractC3585b2 = this.f4328c;
                if (!z10) {
                    abstractC3585b2.m5714d(new C1697g0(interfaceC3587d, c3105c));
                } else {
                    abstractC3585b2.m5714d(new C1722u((InterfaceC1498a) interfaceC3587d, c3105c, 1));
                }
                break;
            default:
                try {
                    ((EnumC2999a) this.f4475e).getClass();
                    ArrayList arrayList = new ArrayList();
                    C1719r0 c1719r0 = new C1719r0(interfaceC3587d);
                    c1719r0.f7919c = arrayList;
                    this.f4328c.m5714d(c1719r0);
                } catch (Throwable th) {
                    AbstractC1031d.m1292v(th);
                    EnumC2755d.m4275b(th, interfaceC3587d);
                    return;
                }
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1724w(AbstractC3585b abstractC3585b, Object obj, int i10) {
        super(abstractC3585b);
        this.f4474d = i10;
        this.f4475e = obj;
    }
}
