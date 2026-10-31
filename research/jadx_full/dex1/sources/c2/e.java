package c2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements x4.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f431a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x4.c f432b = x4.c.a("eventTimeMs");
    public static final x4.c c = x4.c.a("eventCode");
    public static final x4.c d = x4.c.a("eventUptimeMs");
    public static final x4.c e = x4.c.a("sourceExtension");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final x4.c f433f = x4.c.a("sourceExtensionJsonProto3");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final x4.c f434g = x4.c.a("timezoneOffsetSeconds");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final x4.c f435h = x4.c.a("networkConnectionInfo");

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.a
    public final void a(Object obj, Object obj2) {
        x4.e eVar = (x4.e) obj2;
        l lVar = (l) ((s) obj);
        eVar.a(f432b, lVar.f459a);
        eVar.d(c, lVar.f460b);
        eVar.a(d, lVar.c);
        eVar.d(e, lVar.d);
        eVar.d(f433f, lVar.e);
        eVar.a(f434g, lVar.f461f);
        eVar.d(f435h, lVar.f462g);
    }
}
