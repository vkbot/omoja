package p096i9;

import kotlin.UByte;
import kotlin.UByteArray;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.t1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1863t1 extends AbstractC1830i1 {

    /* JADX INFO: renamed from: c */
    public static final C1863t1 f4833c;

    static {
        UByte.INSTANCE.getClass();
        f4833c = new C1863t1(C1866u1.f4837a);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        byte[] storage = ((UByteArray) obj).getStorage();
        storage.getClass();
        return UByteArray.m6165getSizeimpl(storage);
    }

    @Override // p096i9.AbstractC1864u, p096i9.AbstractC1799a
    /* JADX INFO: renamed from: k */
    public final void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj) {
        C1860s1 c1860s1 = (C1860s1) obj;
        c1860s1.getClass();
        byte bM6106constructorimpl = UByte.m6106constructorimpl(interfaceC1730c.decodeInlineElement(this.f4778b, i10).decodeByte());
        c1860s1.mo2910b(c1860s1.mo2911d() + 1);
        byte[] bArr = c1860s1.f4827a;
        int i11 = c1860s1.f4828b;
        c1860s1.f4828b = i11 + 1;
        UByteArray.m6169setVurrAj0(bArr, i11, bM6106constructorimpl);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        byte[] storage = ((UByteArray) obj).getStorage();
        storage.getClass();
        C1860s1 c1860s1 = new C1860s1();
        c1860s1.f4827a = storage;
        c1860s1.f4828b = UByteArray.m6165getSizeimpl(storage);
        c1860s1.mo2910b(10);
        return c1860s1;
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: o */
    public final Object mo2912o() {
        return UByteArray.m6157boximpl(UByteArray.m6158constructorimpl(0));
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: p */
    public final void mo2913p(InterfaceC1731d interfaceC1731d, Object obj, int i10) {
        byte[] storage = ((UByteArray) obj).getStorage();
        interfaceC1731d.getClass();
        storage.getClass();
        for (int i11 = 0; i11 < i10; i11++) {
            interfaceC1731d.encodeInlineElement(this.f4778b, i11).encodeByte(UByteArray.m6164getw2LRezQ(storage, i11));
        }
    }
}
