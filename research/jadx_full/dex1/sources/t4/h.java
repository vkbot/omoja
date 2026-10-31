package t4;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f5397a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5398b;
    public final int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(p pVar, int i9, int i10) {
        e3.d.c(pVar, "Null dependency anInterface.");
        this.f5397a = pVar;
        this.f5398b = i9;
        this.c = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static h a(Class cls) {
        return new h(1, 0, cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f5397a.equals(hVar.f5397a) && this.f5398b == hVar.f5398b && this.c == hVar.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return ((((this.f5397a.hashCode() ^ 1000003) * 1000003) ^ this.f5398b) * 1000003) ^ this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f5397a);
        sb.append(", type=");
        int i9 = this.f5398b;
        if (i9 == 1) {
            str = "required";
        } else {
            str = i9 == 0 ? "optional" : "set";
        }
        sb.append(str);
        sb.append(", injection=");
        int i10 = this.c;
        if (i10 == 0) {
            str2 = "direct";
        } else if (i10 == 1) {
            str2 = "provider";
        } else {
            if (i10 != 2) {
                j1.i.e(ai.onnxruntime.a.e(i10, "Unsupported injection: "));
                return null;
            }
            str2 = "deferred";
        }
        return ai.onnxruntime.a.p(sb, str2, "}");
    }

    public h(int i9, int i10, Class cls) {
        this(p.a(cls), i9, i10);
    }
}
