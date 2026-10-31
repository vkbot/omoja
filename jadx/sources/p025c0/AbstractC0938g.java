package p025c0;

import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: renamed from: c0.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0938g {

    /* JADX INFO: renamed from: a */
    public static final ExecutorC0937f f794a = new ExecutorC0937f(0);

    /* JADX INFO: renamed from: b */
    public static final ExecutorC0937f f795b = new ExecutorC0937f(1);

    /* JADX INFO: renamed from: a */
    public static void m1070a(String str, boolean z9) {
        if (z9) {
            return;
        }
        C1929i.m3029k(str);
    }

    /* JADX INFO: renamed from: b */
    public static void m1071b(Object obj) {
        m1072c(obj, "Argument must not be null");
    }

    /* JADX INFO: renamed from: c */
    public static void m1072c(Object obj, String str) {
        if (obj != null) {
            return;
        }
        C2467b.m3828n(str);
    }
}
