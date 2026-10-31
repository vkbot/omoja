package p148n7;

import java.util.Comparator;
import p170p7.C2984i;

/* JADX INFO: renamed from: n7.o0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2533o0 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i10;
        AbstractC2531n0 abstractC2531n0 = (AbstractC2531n0) obj2;
        ((C2984i) ((AbstractC2531n0) obj)).getClass();
        int i11 = 3;
        try {
            Class.forName("android.app.Application", false, C2984i.class.getClassLoader());
            i10 = 8;
        } catch (Exception unused) {
            i10 = 3;
        }
        ((C2984i) abstractC2531n0).getClass();
        try {
            Class.forName("android.app.Application", false, C2984i.class.getClassLoader());
            i11 = 8;
        } catch (Exception unused2) {
        }
        return i10 - i11;
    }
}
