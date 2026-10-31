package p096i9;

import kotlin.jvm.internal.LongCompanionObject;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.p0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1850p0 extends AbstractC1830i1 {

    /* JADX INFO: renamed from: c */
    public static final C1850p0 f4808c;

    static {
        LongCompanionObject.INSTANCE.getClass();
        f4808c = new C1850p0(C1853q0.f4811a);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        long[] jArr = (long[]) obj;
        jArr.getClass();
        return jArr.length;
    }

    @Override // p096i9.AbstractC1864u, p096i9.AbstractC1799a
    /* JADX INFO: renamed from: k */
    public final void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj) {
        C1847o0 c1847o0 = (C1847o0) obj;
        c1847o0.getClass();
        long jDecodeLongElement = interfaceC1730c.decodeLongElement(this.f4778b, i10);
        c1847o0.mo2910b(c1847o0.mo2911d() + 1);
        long[] jArr = c1847o0.f4803a;
        int i11 = c1847o0.f4804b;
        c1847o0.f4804b = i11 + 1;
        jArr[i11] = jDecodeLongElement;
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        long[] jArr = (long[]) obj;
        jArr.getClass();
        C1847o0 c1847o0 = new C1847o0();
        c1847o0.f4803a = jArr;
        c1847o0.f4804b = jArr.length;
        c1847o0.mo2910b(10);
        return c1847o0;
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: o */
    public final Object mo2912o() {
        return new long[0];
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: p */
    public final void mo2913p(InterfaceC1731d interfaceC1731d, Object obj, int i10) {
        long[] jArr = (long[]) obj;
        interfaceC1731d.getClass();
        jArr.getClass();
        for (int i11 = 0; i11 < i10; i11++) {
            interfaceC1731d.encodeLongElement(this.f4778b, i11, jArr[i11]);
        }
    }
}
