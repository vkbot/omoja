package p096i9;

import androidx.navigation.serialization.RouteDecoder;
import java.util.Iterator;
import p055e9.InterfaceC1506b;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.i1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1830i1 extends AbstractC1864u {

    /* JADX INFO: renamed from: b */
    public final C1827h1 f4778b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC1830i1(InterfaceC1506b interfaceC1506b) {
        super(interfaceC1506b);
        interfaceC1506b.getClass();
        this.f4778b = new C1827h1(interfaceC1506b.mo2581a());
    }

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        return this.f4778b;
    }

    @Override // p096i9.AbstractC1864u, p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        int iMo2903h = mo2903h(obj);
        C1827h1 c1827h1 = this.f4778b;
        InterfaceC1731d interfaceC1731dBeginCollection = abstractC1729b.beginCollection(c1827h1, iMo2903h);
        mo2913p(interfaceC1731dBeginCollection, obj, iMo2903h);
        interfaceC1731dBeginCollection.endStructure(c1827h1);
    }

    @Override // p096i9.AbstractC1799a, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public final Object mo2582c(RouteDecoder routeDecoder) {
        return m2904i(routeDecoder);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: d */
    public final Object mo2899d() {
        return (AbstractC1824g1) mo2907l(mo2912o());
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: e */
    public final int mo2900e(Object obj) {
        AbstractC1824g1 abstractC1824g1 = (AbstractC1824g1) obj;
        abstractC1824g1.getClass();
        return abstractC1824g1.mo2911d();
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: f */
    public final void mo2901f(int i10, Object obj) {
        AbstractC1824g1 abstractC1824g1 = (AbstractC1824g1) obj;
        abstractC1824g1.getClass();
        abstractC1824g1.mo2910b(i10);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: g */
    public final Iterator mo2902g(Object obj) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead");
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: m */
    public final Object mo2908m(Object obj) {
        AbstractC1824g1 abstractC1824g1 = (AbstractC1824g1) obj;
        abstractC1824g1.getClass();
        return abstractC1824g1.mo2909a();
    }

    @Override // p096i9.AbstractC1864u
    /* JADX INFO: renamed from: n */
    public final void mo2914n(int i10, Object obj, Object obj2) {
        ((AbstractC1824g1) obj).getClass();
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead");
    }

    /* JADX INFO: renamed from: o */
    public abstract Object mo2912o();

    /* JADX INFO: renamed from: p */
    public abstract void mo2913p(InterfaceC1731d interfaceC1731d, Object obj, int i10);
}
