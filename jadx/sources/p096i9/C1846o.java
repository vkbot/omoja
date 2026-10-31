package p096i9;

import kotlin.jvm.internal.CharCompanionObject;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1846o extends AbstractC1830i1 {

    /* JADX INFO: renamed from: c */
    public static final C1846o f4802c;

    static {
        CharCompanionObject.INSTANCE.getClass();
        f4802c = new C1846o(C1849p.f4806a);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        char[] cArr = (char[]) obj;
        cArr.getClass();
        return cArr.length;
    }

    @Override // p096i9.AbstractC1864u, p096i9.AbstractC1799a
    /* JADX INFO: renamed from: k */
    public final void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj) {
        C1843n c1843n = (C1843n) obj;
        c1843n.getClass();
        char cDecodeCharElement = interfaceC1730c.decodeCharElement(this.f4778b, i10);
        c1843n.mo2910b(c1843n.mo2911d() + 1);
        char[] cArr = c1843n.f4797a;
        int i11 = c1843n.f4798b;
        c1843n.f4798b = i11 + 1;
        cArr[i11] = cDecodeCharElement;
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        char[] cArr = (char[]) obj;
        cArr.getClass();
        C1843n c1843n = new C1843n();
        c1843n.f4797a = cArr;
        c1843n.f4798b = cArr.length;
        c1843n.mo2910b(10);
        return c1843n;
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: o */
    public final Object mo2912o() {
        return new char[0];
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: p */
    public final void mo2913p(InterfaceC1731d interfaceC1731d, Object obj, int i10) {
        char[] cArr = (char[]) obj;
        interfaceC1731d.getClass();
        cArr.getClass();
        for (int i11 = 0; i11 < i10; i11++) {
            interfaceC1731d.encodeCharElement(this.f4778b, i11, cArr[i11]);
        }
    }
}
