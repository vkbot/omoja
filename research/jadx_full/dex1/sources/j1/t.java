package j1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3017b;
    public final int c;
    public final int d;
    public final u e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t(String str, String str2, int i9, int i10, u uVar) {
        this.f3016a = str;
        this.f3017b = str2;
        this.c = i9;
        this.d = i10;
        this.e = uVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean a() {
        String str = this.f3016a;
        return (str == null || str.trim().isEmpty() || this.e == null) ? false : true;
    }

    public t(String str, String str2, u uVar) {
        this(str, str2, 0, 2131165470, uVar);
    }
}
