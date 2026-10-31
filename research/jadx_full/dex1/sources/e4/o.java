package e4;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2072a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2073b;
    public Object c;
    public Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o(String str, String str2, int i9, int i10) {
        this.c = str;
        this.d = str2;
        this.f2072a = i9 != 1 ? 2 : 1;
        if (i10 != 30 && i10 != 70) {
            i10 = 50;
        }
        this.f2073b = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String a() {
        String str = (String) this.d;
        boolean z8 = str != null;
        String str2 = (String) this.c;
        if (!z8) {
            return str2;
        }
        StringBuilder sbU = ai.onnxruntime.a.u(str2);
        com.google.protobuf.q.u(new byte[]{34}, new byte[]{14, 18, -30, -76, 51, 83, -66, -3}, sbU, str);
        sbU.append(e0.m.h(new byte[]{-82}, new byte[]{-126, -33, -36, 120, 121, -20, -75, -92}));
        sbU.append(this.f2072a);
        sbU.append(e0.m.h(new byte[]{75}, new byte[]{103, 72, 121, 50, 122, 40, -112, 12}));
        sbU.append(this.f2073b);
        return sbU.toString();
    }

    public o() {
        this.f2073b = 50;
    }
}
