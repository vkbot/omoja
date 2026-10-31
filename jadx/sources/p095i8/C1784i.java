package p095i8;

import p016b1.AbstractC0880u;
import p062f5.C1548f;
import p242x7.AbstractC3588e;
import p242x7.InterfaceC3584a;

/* JADX INFO: renamed from: i8.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1784i extends AbstractC0880u {

    /* JADX INFO: renamed from: b */
    public final AbstractC3588e f4686b;

    /* JADX INFO: renamed from: c */
    public final C1548f f4687c;

    public C1784i(AbstractC3588e abstractC3588e, C1548f c1548f) {
        this.f4686b = abstractC3588e;
        this.f4687c = c1548f;
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: B */
    public final void mo1009B(InterfaceC3584a interfaceC3584a) {
        C1783h c1783h = new C1783h(0, interfaceC3584a, this.f4687c);
        interfaceC3584a.mo238b(c1783h);
        this.f4686b.m5717c(c1783h);
    }
}
