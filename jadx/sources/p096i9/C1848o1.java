package p096i9;

import kotlin.jvm.internal.ShortCompanionObject;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.o1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1848o1 extends AbstractC1830i1 {

    /* JADX INFO: renamed from: c */
    public static final C1848o1 f4805c;

    static {
        ShortCompanionObject.INSTANCE.getClass();
        f4805c = new C1848o1(C1851p1.f4809a);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        short[] sArr = (short[]) obj;
        sArr.getClass();
        return sArr.length;
    }

    @Override // p096i9.AbstractC1864u, p096i9.AbstractC1799a
    /* JADX INFO: renamed from: k */
    public final void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj) {
        C1845n1 c1845n1 = (C1845n1) obj;
        c1845n1.getClass();
        short sDecodeShortElement = interfaceC1730c.decodeShortElement(this.f4778b, i10);
        c1845n1.mo2910b(c1845n1.mo2911d() + 1);
        short[] sArr = c1845n1.f4800a;
        int i11 = c1845n1.f4801b;
        c1845n1.f4801b = i11 + 1;
        sArr[i11] = sDecodeShortElement;
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        short[] sArr = (short[]) obj;
        sArr.getClass();
        C1845n1 c1845n1 = new C1845n1();
        c1845n1.f4800a = sArr;
        c1845n1.f4801b = sArr.length;
        c1845n1.mo2910b(10);
        return c1845n1;
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: o */
    public final Object mo2912o() {
        return new short[0];
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: p */
    public final void mo2913p(InterfaceC1731d interfaceC1731d, Object obj, int i10) {
        short[] sArr = (short[]) obj;
        interfaceC1731d.getClass();
        sArr.getClass();
        for (int i11 = 0; i11 < i10; i11++) {
            interfaceC1731d.encodeShortElement(this.f4778b, i11, sArr[i11]);
        }
    }
}
