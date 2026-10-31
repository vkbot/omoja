package p181r2;

import android.text.TextUtils;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: renamed from: r2.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3093a {

    /* JADX INFO: renamed from: a */
    public static final Object f8790a = new Object();

    /* JADX INFO: renamed from: b */
    public static boolean f8791b;

    /* JADX INFO: renamed from: c */
    public static int f8792c;

    /* JADX INFO: renamed from: a */
    public static void m4925a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            C1929i.m3029k(str2);
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m4926b(Object obj) {
        if (obj != null) {
            return;
        }
        C2467b.m3828n("null reference");
    }

    /* JADX INFO: renamed from: c */
    public static void m4927c(Object obj, String str) {
        if (obj != null) {
            return;
        }
        C2467b.m3828n(str);
    }

    /* JADX INFO: renamed from: d */
    public static boolean m4928d(Object obj, String str) {
        if (obj != str) {
            return obj != null && obj.equals(str);
        }
        return true;
    }
}
