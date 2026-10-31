package w0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j0.e f5768b;
    public final String c;
    public boolean d;
    public final i1 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f5769f = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float[] f5770g = new float[0];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f5771h = "";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f5772i = "";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u(String str, j0.e eVar, String str2) {
        boolean z8 = false;
        this.e = new i1(str, eVar != null ? eVar.f2877i : "");
        this.f5767a = str;
        this.f5768b = eVar;
        this.c = str2;
        if (eVar != null && a.a.f(j0.f.g(eVar)) != null) {
            z8 = true;
        }
        this.d = z8;
    }
}
