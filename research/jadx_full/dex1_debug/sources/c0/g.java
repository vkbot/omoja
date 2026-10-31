package c0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f398a = new f(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f f399b = new f(1);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(String str, boolean z8) {
        if (z8) {
            return;
        }
        j1.i.k(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(Object obj) {
        c(obj, "Argument must not be null");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(Object obj, String str) {
        if (obj != null) {
            return;
        }
        n0.b.n(str);
    }
}
