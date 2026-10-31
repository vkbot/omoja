package c2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements x4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f436a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x4.c f437b = x4.c.a("requestTimeMs");
    public static final x4.c c = x4.c.a("requestUptimeMs");
    public static final x4.c d = x4.c.a("clientInfo");
    public static final x4.c e = x4.c.a("logSource");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final x4.c f438f = x4.c.a("logSourceName");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final x4.c f439g = x4.c.a("logEvent");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final x4.c f440h = x4.c.a("qosTier");

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.a
    public final void a(Object obj, Object obj2) {
        x4.e eVar = (x4.e) obj2;
        m mVar = (m) ((t) obj);
        eVar.a(f437b, mVar.f463a);
        eVar.a(c, mVar.f464b);
        eVar.d(d, mVar.c);
        eVar.d(e, mVar.d);
        eVar.d(f438f, mVar.e);
        eVar.d(f439g, mVar.f465f);
        eVar.d(f440h, x.f472b);
    }
}
