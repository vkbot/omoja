package p096i9;

import kotlin.jvm.internal.DoubleCompanionObject;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1870w extends AbstractC1830i1 {

    /* JADX INFO: renamed from: c */
    public static final C1870w f4844c;

    static {
        DoubleCompanionObject.INSTANCE.getClass();
        f4844c = new C1870w(C1873x.f4846a);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        return dArr.length;
    }

    @Override // p096i9.AbstractC1864u, p096i9.AbstractC1799a
    /* JADX INFO: renamed from: k */
    public final void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj) {
        C1867v c1867v = (C1867v) obj;
        c1867v.getClass();
        double dDecodeDoubleElement = interfaceC1730c.decodeDoubleElement(this.f4778b, i10);
        c1867v.mo2910b(c1867v.mo2911d() + 1);
        double[] dArr = c1867v.f4839a;
        int i11 = c1867v.f4840b;
        c1867v.f4840b = i11 + 1;
        dArr[i11] = dDecodeDoubleElement;
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        C1867v c1867v = new C1867v();
        c1867v.f4839a = dArr;
        c1867v.f4840b = dArr.length;
        c1867v.mo2910b(10);
        return c1867v;
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: o */
    public final Object mo2912o() {
        return new double[0];
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: p */
    public final void mo2913p(InterfaceC1731d interfaceC1731d, Object obj, int i10) {
        double[] dArr = (double[]) obj;
        interfaceC1731d.getClass();
        dArr.getClass();
        for (int i11 = 0; i11 < i10; i11++) {
            interfaceC1731d.encodeDoubleElement(this.f4778b, i11, dArr[i11]);
        }
    }
}
