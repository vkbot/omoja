package p085h8;

import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.AbstractC1034g;
import com.google.protobuf.InterfaceC1129a0;
import java.util.Iterator;
import p000a.AbstractC0000a;
import p054e8.InterfaceC1498a;
import p095i8.C1794s;
import p158o8.EnumC2755d;
import p242x7.AbstractC3585b;
import p242x7.AbstractC3588e;
import p242x7.AbstractC3590g;
import p242x7.InterfaceC3586c;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: h8.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1706l extends AbstractC3585b {

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f4423c;

    /* JADX INFO: renamed from: d */
    public final Object f4424d;

    public /* synthetic */ C1706l(int i10, Object obj) {
        this.f4423c = i10;
        this.f4424d = obj;
    }

    /* JADX INFO: renamed from: f */
    public static void m2834f(InterfaceC3587d interfaceC3587d, Iterator it) {
        try {
            if (!it.hasNext()) {
                EnumC2755d.m4274a(interfaceC3587d);
            } else if (interfaceC3587d instanceof InterfaceC1498a) {
                interfaceC3587d.mo2808f(new C1691d0((InterfaceC1498a) interfaceC3587d, it, 0));
            } else {
                interfaceC3587d.mo2808f(new C1691d0(interfaceC3587d, it, 1));
            }
        } catch (Throwable th) {
            AbstractC1031d.m1292v(th);
            EnumC2755d.m4275b(th, interfaceC3587d);
        }
    }

    @Override // p242x7.AbstractC3585b
    /* JADX INFO: renamed from: e */
    public final void mo2803e(InterfaceC3587d interfaceC3587d) {
        AbstractC1698h c1704k;
        switch (this.f4423c) {
            case 0:
                int iM1296c = AbstractC1034g.m1296c(3);
                if (iM1296c == 0) {
                    c1704k = new C1704k(interfaceC3587d);
                } else if (iM1296c == 1 || iM1296c == 3) {
                    c1704k = new C1702j(interfaceC3587d);
                } else {
                    c1704k = iM1296c != 4 ? new C1700i(interfaceC3587d, AbstractC3585b.f10653b) : new C1700i(interfaceC3587d);
                }
                interfaceC3587d.mo2808f(c1704k);
                try {
                    ((InterfaceC3586c) this.f4424d).mo2402d();
                } catch (Throwable th) {
                    AbstractC1031d.m1292v(th);
                    if (c1704k.mo2825f(th)) {
                        return;
                    }
                    AbstractC0000a.m18s(th);
                    return;
                }
                break;
            case 1:
                Object[] objArr = (Object[]) this.f4424d;
                if (!(interfaceC3587d instanceof InterfaceC1498a)) {
                    interfaceC3587d.mo2808f(new C1689c0(interfaceC3587d, objArr, 1));
                } else {
                    interfaceC3587d.mo2808f(new C1689c0((InterfaceC1498a) interfaceC3587d, objArr, 0));
                }
                break;
            case 2:
                try {
                    m2834f(interfaceC3587d, ((InterfaceC1129a0) this.f4424d).iterator());
                } catch (Throwable th2) {
                    AbstractC1031d.m1292v(th2);
                    EnumC2755d.m4275b(th2, interfaceC3587d);
                    return;
                }
                break;
            case 3:
                ((AbstractC3590g) this.f4424d).m5719c(new C1693e0(interfaceC3587d));
                break;
            default:
                ((AbstractC3588e) this.f4424d).m5717c(new C1794s(interfaceC3587d));
                break;
        }
    }
}
