package p097j;

import p037d0.InterfaceC1235c;

/* JADX INFO: renamed from: j.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1902n implements InterfaceC1235c {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C1903o f4974b;

    public C1902n(C1903o c1903o) {
        this.f4974b = c1903o;
    }

    @Override // p037d0.InterfaceC1235c
    public final Object create() {
        C1903o c1903o = this.f4974b;
        return new RunnableC1899k(c1903o.f4975a, c1903o.f4976b);
    }
}
