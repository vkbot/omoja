package p062f5;

import p030c5.C0990e;
import p052e5.InterfaceC1495b;
import p059f2.InterfaceC1534b;
import p092i5.C1750a;
import p111k2.C2029a;
import p111k2.C2036h;
import p111k2.C2038j;
import p204t8.InterfaceC3268a;
import p258z3.C3720f;

/* JADX INFO: renamed from: f5.j0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1557j0 implements InterfaceC1495b, InterfaceC1534b {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3829b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC3268a f3830c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC3268a f3831d;

    public /* synthetic */ C1557j0(InterfaceC3268a interfaceC3268a, InterfaceC3268a interfaceC3268a2, int i10) {
        this.f3829b = i10;
        this.f3830c = interfaceC3268a;
        this.f3831d = interfaceC3268a2;
    }

    @Override // p204t8.InterfaceC3268a
    public final Object get() {
        switch (this.f3829b) {
            case 0:
                return new C1555i0((C1575y) this.f3830c.get(), (C1750a) this.f3831d.get());
            default:
                return new C2036h(new C0990e(15), new C3720f(14), C2029a.f5540f, (C2038j) this.f3830c.get(), this.f3831d);
        }
    }
}
