package p075g8;

import p016b1.AbstractC0880u;
import p023b8.InterfaceC0927a;
import p023b8.InterfaceC0928b;
import p242x7.InterfaceC3584a;

/* JADX INFO: renamed from: g8.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1628d extends AbstractC0880u {

    /* JADX INFO: renamed from: b */
    public final AbstractC0880u f4126b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC0928b f4127c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC0927a f4128d;

    public C1628d(AbstractC0880u abstractC0880u, InterfaceC0928b interfaceC0928b, InterfaceC0927a interfaceC0927a) {
        this.f4126b = abstractC0880u;
        this.f4127c = interfaceC0928b;
        this.f4128d = interfaceC0927a;
    }

    @Override // p016b1.AbstractC0880u
    /* JADX INFO: renamed from: B */
    public final void mo1009B(InterfaceC3584a interfaceC3584a) {
        this.f4126b.m1008A(new C1627c(this, interfaceC3584a));
    }
}
