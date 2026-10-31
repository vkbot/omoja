package p096i9;

import kotlin.jvm.internal.ByteCompanionObject;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1828i extends AbstractC1830i1 {

    /* JADX INFO: renamed from: c */
    public static final C1828i f4776c;

    static {
        ByteCompanionObject.INSTANCE.getClass();
        f4776c = new C1828i(C1831j.f4779a);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        byte[] bArr = (byte[]) obj;
        bArr.getClass();
        return bArr.length;
    }

    @Override // p096i9.AbstractC1864u, p096i9.AbstractC1799a
    /* JADX INFO: renamed from: k */
    public final void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj) {
        C1825h c1825h = (C1825h) obj;
        c1825h.getClass();
        byte bDecodeByteElement = interfaceC1730c.decodeByteElement(this.f4778b, i10);
        c1825h.mo2910b(c1825h.mo2911d() + 1);
        byte[] bArr = c1825h.f4772a;
        int i11 = c1825h.f4773b;
        c1825h.f4773b = i11 + 1;
        bArr[i11] = bDecodeByteElement;
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        byte[] bArr = (byte[]) obj;
        bArr.getClass();
        C1825h c1825h = new C1825h();
        c1825h.f4772a = bArr;
        c1825h.f4773b = bArr.length;
        c1825h.mo2910b(10);
        return c1825h;
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: o */
    public final Object mo2912o() {
        return new byte[0];
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: p */
    public final void mo2913p(InterfaceC1731d interfaceC1731d, Object obj, int i10) {
        byte[] bArr = (byte[]) obj;
        interfaceC1731d.getClass();
        bArr.getClass();
        for (int i11 = 0; i11 < i10; i11++) {
            interfaceC1731d.encodeByteElement(this.f4778b, i11, bArr[i11]);
        }
    }
}
