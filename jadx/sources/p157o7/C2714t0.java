package p157o7;

import p102j4.C1963b;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2509g;
import p148n7.C2492a0;
import p148n7.C2497c;
import p148n7.C2508f1;
import p148n7.C2547v0;
import p148n7.C2551x0;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.t0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2714t0 implements InterfaceC2737x {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7775a = 0;

    /* JADX INFO: renamed from: b */
    public final Object f7776b;

    /* JADX INFO: renamed from: c */
    public final Object f7777c;

    public C2714t0(C2508f1 c2508f1, EnumC2725v enumC2725v) {
        AbstractC2587b.m4037d("error must not be OK", !c2508f1.m3932f());
        this.f7776b = c2508f1;
        this.f7777c = enumC2725v;
    }

    @Override // p148n7.InterfaceC2554z
    /* JADX INFO: renamed from: c */
    public final C2492a0 mo3995c() {
        switch (this.f7775a) {
            case 0:
                throw new UnsupportedOperationException("Not a real transport");
            default:
                return ((InterfaceC2680n2) this.f7777c).mo3995c();
        }
    }

    @Override // p157o7.InterfaceC2737x
    /* JADX INFO: renamed from: d */
    public final InterfaceC2719u mo4156d(C2551x0 c2551x0, C2547v0 c2547v0, C2497c c2497c, AbstractC2503e[] abstractC2503eArr) {
        int i10 = this.f7775a;
        Object obj = this.f7777c;
        Object obj2 = this.f7776b;
        switch (i10) {
            case 0:
                return new C2708s0((C2508f1) obj2, (EnumC2725v) obj, abstractC2503eArr);
            default:
                C2497c c2497c2 = C2497c.f6890h;
                AbstractC2587b.m4042i(c2497c, "callOptions cannot be null");
                AbstractC2503e abstractC2503eMo3935a = ((AbstractC2509g) obj2).mo3935a(new C1963b(c2497c, 0, false), c2547v0);
                AbstractC2587b.m4046m(abstractC2503eArr[abstractC2503eArr.length - 1] == AbstractC2743y0.f7889o, "lb tracer already assigned");
                abstractC2503eArr[abstractC2503eArr.length - 1] = abstractC2503eMo3935a;
                return ((InterfaceC2680n2) obj).mo4156d(c2551x0, c2547v0, c2497c, abstractC2503eArr);
        }
    }

    public C2714t0(AbstractC2509g abstractC2509g, InterfaceC2680n2 interfaceC2680n2) {
        this.f7776b = abstractC2509g;
        this.f7777c = interfaceC2680n2;
    }
}
