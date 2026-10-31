package p096i9;

import kotlin.jvm.internal.BooleanCompanionObject;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1819f extends AbstractC1830i1 {

    /* JADX INFO: renamed from: c */
    public static final C1819f f4753c;

    static {
        BooleanCompanionObject.INSTANCE.getClass();
        f4753c = new C1819f(C1822g.f4768a);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: h */
    public final int mo2903h(Object obj) {
        boolean[] zArr = (boolean[]) obj;
        zArr.getClass();
        return zArr.length;
    }

    @Override // p096i9.AbstractC1864u, p096i9.AbstractC1799a
    /* JADX INFO: renamed from: k */
    public final void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj) {
        C1815e c1815e = (C1815e) obj;
        c1815e.getClass();
        boolean zDecodeBooleanElement = interfaceC1730c.decodeBooleanElement(this.f4778b, i10);
        c1815e.mo2910b(c1815e.mo2911d() + 1);
        boolean[] zArr = c1815e.f4745a;
        int i11 = c1815e.f4746b;
        c1815e.f4746b = i11 + 1;
        zArr[i11] = zDecodeBooleanElement;
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: l */
    public final Object mo2907l(Object obj) {
        boolean[] zArr = (boolean[]) obj;
        zArr.getClass();
        C1815e c1815e = new C1815e();
        c1815e.f4745a = zArr;
        c1815e.f4746b = zArr.length;
        c1815e.mo2910b(10);
        return c1815e;
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: o */
    public final Object mo2912o() {
        return new boolean[0];
    }

    @Override // p096i9.AbstractC1830i1
    /* JADX INFO: renamed from: p */
    public final void mo2913p(InterfaceC1731d interfaceC1731d, Object obj, int i10) {
        boolean[] zArr = (boolean[]) obj;
        interfaceC1731d.getClass();
        zArr.getClass();
        for (int i11 = 0; i11 < i10; i11++) {
            interfaceC1731d.encodeBooleanElement(this.f4778b, i11, zArr[i11]);
        }
    }
}
