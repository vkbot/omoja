package q7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f4894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String[] f4895b;
    public String[] c;
    public boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(c cVar) {
        this.f4894a = cVar.f4896a;
        this.f4895b = cVar.f4897b;
        this.c = cVar.c;
        this.d = cVar.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(a... aVarArr) {
        if (!this.f4894a) {
            j1.i.l("no cipher suites for cleartext connections");
            return;
        }
        String[] strArr = new String[aVarArr.length];
        for (int i9 = 0; i9 < aVarArr.length; i9++) {
            strArr[i9] = aVarArr[i9].f4893b;
        }
        this.f4895b = strArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(m... mVarArr) {
        if (!this.f4894a) {
            j1.i.l("no TLS versions for cleartext connections");
            return;
        }
        if (mVarArr.length == 0) {
            j1.i.k("At least one TlsVersion is required");
            return;
        }
        String[] strArr = new String[mVarArr.length];
        for (int i9 = 0; i9 < mVarArr.length; i9++) {
            strArr[i9] = mVarArr[i9].f4924b;
        }
        this.c = strArr;
    }

    public b(boolean z8) {
        this.f4894a = z8;
    }
}
