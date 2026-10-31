package p027c2;

import p239x4.C3570c;
import p239x4.InterfaceC3571d;
import p239x4.InterfaceC3572e;

/* JADX INFO: renamed from: c2.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0957g implements InterfaceC3571d {

    /* JADX INFO: renamed from: a */
    public static final C0957g f854a = new C0957g();

    /* JADX INFO: renamed from: b */
    public static final C3570c f855b = C3570c.m5685a("networkType");

    /* JADX INFO: renamed from: c */
    public static final C3570c f856c = C3570c.m5685a("mobileSubtype");

    @Override // p239x4.InterfaceC3568a
    /* JADX INFO: renamed from: a */
    public final void mo53a(Object obj, Object obj2) {
        InterfaceC3572e interfaceC3572e = (InterfaceC3572e) obj2;
        C0965o c0965o = (C0965o) ((AbstractC0973w) obj);
        interfaceC3572e.mo58d(f855b, c0965o.f893a);
        interfaceC3572e.mo58d(f856c, c0965o.f894b);
    }
}
