package p120l;

import p025c0.C0943l;
import p097j.C1906r;
import p097j.InterfaceC1889d0;

/* JADX INFO: renamed from: l.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2189f extends C0943l {

    /* JADX INFO: renamed from: d */
    public C1906r f5712d;

    @Override // p025c0.C0943l
    /* JADX INFO: renamed from: b */
    public final int mo1078b(Object obj) {
        InterfaceC1889d0 interfaceC1889d0 = (InterfaceC1889d0) obj;
        if (interfaceC1889d0 == null) {
            return 1;
        }
        return interfaceC1889d0.mo2932b();
    }

    @Override // p025c0.C0943l
    /* JADX INFO: renamed from: c */
    public final void mo1079c(Object obj, Object obj2) {
        InterfaceC1889d0 interfaceC1889d0 = (InterfaceC1889d0) obj2;
        C1906r c1906r = this.f5712d;
        if (c1906r == null || interfaceC1889d0 == null) {
            return;
        }
        c1906r.f4991e.m2354b(interfaceC1889d0, true);
    }
}
