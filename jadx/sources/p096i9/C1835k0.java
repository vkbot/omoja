package p096i9;

import kotlin.jvm.internal.IntCompanionObject;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.k0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1835k0 extends AbstractC1830i1 {

    /* JADX INFO: renamed from: c */
    public static final C1835k0 f4786c;

    static {
        IntCompanionObject.INSTANCE.getClass();
        f4786c = new C1835k0(C1838l0.f4788a);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        int[] iArr = (int[]) obj;
        iArr.getClass();
        return iArr.length;
    }

    @Override // p096i9.AbstractC1864u, p096i9.AbstractC1799a
    /* JADX INFO: renamed from: k */
    public final void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj) {
        C1832j0 c1832j0 = (C1832j0) obj;
        c1832j0.getClass();
        int iDecodeIntElement = interfaceC1730c.decodeIntElement(this.f4778b, i10);
        c1832j0.mo2910b(c1832j0.mo2911d() + 1);
        int[] iArr = c1832j0.f4781a;
        int i11 = c1832j0.f4782b;
        c1832j0.f4782b = i11 + 1;
        iArr[i11] = iDecodeIntElement;
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        int[] iArr = (int[]) obj;
        iArr.getClass();
        C1832j0 c1832j0 = new C1832j0();
        c1832j0.f4781a = iArr;
        c1832j0.f4782b = iArr.length;
        c1832j0.mo2910b(10);
        return c1832j0;
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: o */
    public final Object mo2912o() {
        return new int[0];
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: p */
    public final void mo2913p(InterfaceC1731d interfaceC1731d, Object obj, int i10) {
        int[] iArr = (int[]) obj;
        interfaceC1731d.getClass();
        iArr.getClass();
        for (int i11 = 0; i11 < i10; i11++) {
            interfaceC1731d.encodeIntElement(this.f4778b, i11, iArr[i11]);
        }
    }
}
