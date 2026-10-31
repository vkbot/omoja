package p096i9;

import kotlin.UInt;
import kotlin.UIntArray;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.w1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1872w1 extends AbstractC1830i1 {

    /* JADX INFO: renamed from: c */
    public static final C1872w1 f4845c;

    static {
        UInt.INSTANCE.getClass();
        f4845c = new C1872w1(C1875x1.f4850a);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        int[] storage = ((UIntArray) obj).getStorage();
        storage.getClass();
        return UIntArray.m6244getSizeimpl(storage);
    }

    @Override // p096i9.AbstractC1864u, p096i9.AbstractC1799a
    /* JADX INFO: renamed from: k */
    public final void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj) {
        C1869v1 c1869v1 = (C1869v1) obj;
        c1869v1.getClass();
        int iM6183constructorimpl = UInt.m6183constructorimpl(interfaceC1730c.decodeInlineElement(this.f4778b, i10).decodeInt());
        c1869v1.mo2910b(c1869v1.mo2911d() + 1);
        int[] iArr = c1869v1.f4842a;
        int i11 = c1869v1.f4843b;
        c1869v1.f4843b = i11 + 1;
        UIntArray.m6248setVXSXFK8(iArr, i11, iM6183constructorimpl);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        int[] storage = ((UIntArray) obj).getStorage();
        storage.getClass();
        C1869v1 c1869v1 = new C1869v1();
        c1869v1.f4842a = storage;
        c1869v1.f4843b = UIntArray.m6244getSizeimpl(storage);
        c1869v1.mo2910b(10);
        return c1869v1;
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: o */
    public final Object mo2912o() {
        return UIntArray.m6236boximpl(UIntArray.m6237constructorimpl(0));
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: p */
    public final void mo2913p(InterfaceC1731d interfaceC1731d, Object obj, int i10) {
        int[] storage = ((UIntArray) obj).getStorage();
        interfaceC1731d.getClass();
        storage.getClass();
        for (int i11 = 0; i11 < i10; i11++) {
            interfaceC1731d.encodeInlineElement(this.f4778b, i11).encodeInt(UIntArray.m6243getpVg5ArA(storage, i11));
        }
    }
}
