package d8;

import c5.e;
import w7.c;
import z3.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f1795a = new e(5);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b4.e f1796b = new b4.e(1);
    public static final c c = new c(4);
    public static final f d = new f(4);
    public static final p2.e e = new p2.e(5);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        n0.b.n(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(int i9, String str) {
        if (i9 > 0) {
            return;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i9);
    }
}
