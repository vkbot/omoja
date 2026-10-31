package p027c2;

import p239x4.C3570c;
import p239x4.InterfaceC3571d;
import p239x4.InterfaceC3572e;

/* JADX INFO: renamed from: c2.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0955e implements InterfaceC3571d {

    /* JADX INFO: renamed from: a */
    public static final C0955e f838a = new C0955e();

    /* JADX INFO: renamed from: b */
    public static final C3570c f839b = C3570c.m5685a("eventTimeMs");

    /* JADX INFO: renamed from: c */
    public static final C3570c f840c = C3570c.m5685a("eventCode");

    /* JADX INFO: renamed from: d */
    public static final C3570c f841d = C3570c.m5685a("eventUptimeMs");

    /* JADX INFO: renamed from: e */
    public static final C3570c f842e = C3570c.m5685a("sourceExtension");

    /* JADX INFO: renamed from: f */
    public static final C3570c f843f = C3570c.m5685a("sourceExtensionJsonProto3");

    /* JADX INFO: renamed from: g */
    public static final C3570c f844g = C3570c.m5685a("timezoneOffsetSeconds");

    /* JADX INFO: renamed from: h */
    public static final C3570c f845h = C3570c.m5685a("networkConnectionInfo");

    @Override // p239x4.InterfaceC3568a
    /* JADX INFO: renamed from: a */
    public final void mo53a(Object obj, Object obj2) {
        InterfaceC3572e interfaceC3572e = (InterfaceC3572e) obj2;
        C0962l c0962l = (C0962l) ((AbstractC0969s) obj);
        interfaceC3572e.mo55a(f839b, c0962l.f879a);
        interfaceC3572e.mo58d(f840c, c0962l.f880b);
        interfaceC3572e.mo55a(f841d, c0962l.f881c);
        interfaceC3572e.mo58d(f842e, c0962l.f882d);
        interfaceC3572e.mo58d(f843f, c0962l.f883e);
        interfaceC3572e.mo55a(f844g, c0962l.f884f);
        interfaceC3572e.mo58d(f845h, c0962l.f885g);
    }
}
