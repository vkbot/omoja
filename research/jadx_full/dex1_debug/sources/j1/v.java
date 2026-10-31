package j1;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface v {
    void a(Context context, i0.a aVar);

    z0.a b();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default boolean c() {
        return false;
    }

    w d();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default t[] e() {
        return new t[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default boolean f() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default t g(String str) {
        if (str == null) {
            return null;
        }
        String strTrim = str.trim();
        for (t tVar : e()) {
            if (tVar != null && strTrim.equals(tVar.f3016a)) {
                return tVar;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default boolean h() {
        return false;
    }
}
