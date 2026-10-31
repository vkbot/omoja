package p096i9;

import kotlin.UShort;
import kotlin.UShortArray;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.c2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1810c2 extends AbstractC1830i1 {

    /* JADX INFO: renamed from: c */
    public static final C1810c2 f4736c;

    static {
        UShort.INSTANCE.getClass();
        f4736c = new C1810c2(C1814d2.f4743a);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        short[] storage = ((UShortArray) obj).getStorage();
        storage.getClass();
        return UShortArray.m6428getSizeimpl(storage);
    }

    @Override // p096i9.AbstractC1864u, p096i9.AbstractC1799a
    /* JADX INFO: renamed from: k */
    public final void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj) {
        C1806b2 c1806b2 = (C1806b2) obj;
        c1806b2.getClass();
        short sM6369constructorimpl = UShort.m6369constructorimpl(interfaceC1730c.decodeInlineElement(this.f4778b, i10).decodeShort());
        c1806b2.mo2910b(c1806b2.mo2911d() + 1);
        short[] sArr = c1806b2.f4730a;
        int i11 = c1806b2.f4731b;
        c1806b2.f4731b = i11 + 1;
        UShortArray.m6432set01HTLdE(sArr, i11, sM6369constructorimpl);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        short[] storage = ((UShortArray) obj).getStorage();
        storage.getClass();
        C1806b2 c1806b2 = new C1806b2();
        c1806b2.f4730a = storage;
        c1806b2.f4731b = UShortArray.m6428getSizeimpl(storage);
        c1806b2.mo2910b(10);
        return c1806b2;
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: o */
    public final Object mo2912o() {
        return UShortArray.m6420boximpl(UShortArray.m6421constructorimpl(0));
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: p */
    public final void mo2913p(InterfaceC1731d interfaceC1731d, Object obj, int i10) {
        short[] storage = ((UShortArray) obj).getStorage();
        interfaceC1731d.getClass();
        storage.getClass();
        for (int i11 = 0; i11 < i10; i11++) {
            interfaceC1731d.encodeInlineElement(this.f4778b, i11).encodeShort(UShortArray.m6427getMh2AYeg(storage, i11));
        }
    }
}
