package p045d8;

import p019b4.RunnableC0894e;
import p030c5.C0990e;
import p142n0.C2467b;
import p165p2.C2962e;
import p232w7.C3537c;
import p258z3.C3720f;

/* JADX INFO: renamed from: d8.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1314b {

    /* JADX INFO: renamed from: c */
    public static final C3537c f3135c;

    /* JADX INFO: renamed from: d */
    public static final C3720f f3136d;

    /* JADX INFO: renamed from: a */
    public static final C0990e f3133a = new C0990e(5);

    /* JADX INFO: renamed from: b */
    public static final RunnableC0894e f3134b = new RunnableC0894e(1);

    /* JADX INFO: renamed from: e */
    public static final C2962e f3137e = new C2962e(5);

    static {
        int i10 = 4;
        f3135c = new C3537c(i10);
        f3136d = new C3720f(i10);
    }

    /* JADX INFO: renamed from: a */
    public static void m2356a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        C2467b.m3828n(str);
    }

    /* JADX INFO: renamed from: b */
    public static void m2357b(int i10, String str) {
        if (i10 > 0) {
            return;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i10);
    }
}
