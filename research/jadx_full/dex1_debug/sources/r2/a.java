package r2;

import android.text.TextUtils;
import j1.i;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f4936a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f4937b;
    public static int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            i.k(str2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(Object obj) {
        if (obj != null) {
            return;
        }
        b.n("null reference");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(Object obj, String str) {
        if (obj != null) {
            return;
        }
        b.n(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean d(Object obj, String str) {
        if (obj != str) {
            return obj != null && obj.equals(str);
        }
        return true;
    }
}
