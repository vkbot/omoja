package p096i9;

import kotlin.jvm.internal.FloatCompanionObject;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.d0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1812d0 extends AbstractC1830i1 {

    /* JADX INFO: renamed from: c */
    public static final C1812d0 f4739c;

    static {
        FloatCompanionObject.INSTANCE.getClass();
        f4739c = new C1812d0(C1816e0.f4747a);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        return fArr.length;
    }

    @Override // p096i9.AbstractC1864u, p096i9.AbstractC1799a
    /* JADX INFO: renamed from: k */
    public final void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj) {
        C1808c0 c1808c0 = (C1808c0) obj;
        c1808c0.getClass();
        float fDecodeFloatElement = interfaceC1730c.decodeFloatElement(this.f4778b, i10);
        c1808c0.mo2910b(c1808c0.mo2911d() + 1);
        float[] fArr = c1808c0.f4733a;
        int i11 = c1808c0.f4734b;
        c1808c0.f4734b = i11 + 1;
        fArr[i11] = fDecodeFloatElement;
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        C1808c0 c1808c0 = new C1808c0();
        c1808c0.f4733a = fArr;
        c1808c0.f4734b = fArr.length;
        c1808c0.mo2910b(10);
        return c1808c0;
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: o */
    public final Object mo2912o() {
        return new float[0];
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: p */
    public final void mo2913p(InterfaceC1731d interfaceC1731d, Object obj, int i10) {
        float[] fArr = (float[]) obj;
        interfaceC1731d.getClass();
        fArr.getClass();
        for (int i11 = 0; i11 < i10; i11++) {
            interfaceC1731d.encodeFloatElement(this.f4778b, i11, fArr[i11]);
        }
    }
}
