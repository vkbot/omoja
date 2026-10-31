package p027c2;

import p239x4.C3570c;
import p239x4.InterfaceC3571d;
import p239x4.InterfaceC3572e;

/* JADX INFO: renamed from: c2.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0956f implements InterfaceC3571d {

    /* JADX INFO: renamed from: a */
    public static final C0956f f846a = new C0956f();

    /* JADX INFO: renamed from: b */
    public static final C3570c f847b = C3570c.m5685a("requestTimeMs");

    /* JADX INFO: renamed from: c */
    public static final C3570c f848c = C3570c.m5685a("requestUptimeMs");

    /* JADX INFO: renamed from: d */
    public static final C3570c f849d = C3570c.m5685a("clientInfo");

    /* JADX INFO: renamed from: e */
    public static final C3570c f850e = C3570c.m5685a("logSource");

    /* JADX INFO: renamed from: f */
    public static final C3570c f851f = C3570c.m5685a("logSourceName");

    /* JADX INFO: renamed from: g */
    public static final C3570c f852g = C3570c.m5685a("logEvent");

    /* JADX INFO: renamed from: h */
    public static final C3570c f853h = C3570c.m5685a("qosTier");

    @Override // p239x4.InterfaceC3568a
    /* JADX INFO: renamed from: a */
    public final void mo53a(Object obj, Object obj2) {
        InterfaceC3572e interfaceC3572e = (InterfaceC3572e) obj2;
        C0963m c0963m = (C0963m) ((AbstractC0970t) obj);
        interfaceC3572e.mo55a(f847b, c0963m.f886a);
        interfaceC3572e.mo55a(f848c, c0963m.f887b);
        interfaceC3572e.mo58d(f849d, c0963m.f888c);
        interfaceC3572e.mo58d(f850e, c0963m.f889d);
        interfaceC3572e.mo58d(f851f, c0963m.f890e);
        interfaceC3572e.mo58d(f852g, c0963m.f891f);
        interfaceC3572e.mo58d(f853h, EnumC0974x.f901b);
    }
}
