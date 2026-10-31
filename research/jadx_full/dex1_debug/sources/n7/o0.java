package n7;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o0 implements Comparator {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i9;
        n0 n0Var = (n0) obj2;
        ((p7.i) ((n0) obj)).getClass();
        int i10 = 3;
        try {
            Class.forName("android.app.Application", false, p7.i.class.getClassLoader());
            i9 = 8;
        } catch (Exception unused) {
            i9 = 3;
        }
        ((p7.i) n0Var).getClass();
        try {
            Class.forName("android.app.Application", false, p7.i.class.getClassLoader());
            i10 = 8;
        } catch (Exception unused2) {
        }
        return i9 - i10;
    }
}
