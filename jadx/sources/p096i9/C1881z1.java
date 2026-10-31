package p096i9;

import kotlin.ULong;
import kotlin.ULongArray;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.z1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1881z1 extends AbstractC1830i1 {

    /* JADX INFO: renamed from: c */
    public static final C1881z1 f4862c;

    static {
        ULong.INSTANCE.getClass();
        f4862c = new C1881z1(C1802a2.f4723a);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        long[] storage = ((ULongArray) obj).getStorage();
        storage.getClass();
        return ULongArray.m6323getSizeimpl(storage);
    }

    @Override // p096i9.AbstractC1864u, p096i9.AbstractC1799a
    /* JADX INFO: renamed from: k */
    public final void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj) {
        C1878y1 c1878y1 = (C1878y1) obj;
        c1878y1.getClass();
        long jM6262constructorimpl = ULong.m6262constructorimpl(interfaceC1730c.decodeInlineElement(this.f4778b, i10).decodeLong());
        c1878y1.mo2910b(c1878y1.mo2911d() + 1);
        long[] jArr = c1878y1.f4855a;
        int i11 = c1878y1.f4856b;
        c1878y1.f4856b = i11 + 1;
        ULongArray.m6327setk8EXiF4(jArr, i11, jM6262constructorimpl);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        long[] storage = ((ULongArray) obj).getStorage();
        storage.getClass();
        C1878y1 c1878y1 = new C1878y1();
        c1878y1.f4855a = storage;
        c1878y1.f4856b = ULongArray.m6323getSizeimpl(storage);
        c1878y1.mo2910b(10);
        return c1878y1;
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: o */
    public final Object mo2912o() {
        return ULongArray.m6315boximpl(ULongArray.m6316constructorimpl(0));
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: p */
    public final void mo2913p(InterfaceC1731d interfaceC1731d, Object obj, int i10) {
        long[] storage = ((ULongArray) obj).getStorage();
        interfaceC1731d.getClass();
        storage.getClass();
        for (int i11 = 0; i11 < i10; i11++) {
            interfaceC1731d.encodeInlineElement(this.f4778b, i11).encodeLong(ULongArray.m6322getsVKNKU(storage, i11));
        }
    }
}
