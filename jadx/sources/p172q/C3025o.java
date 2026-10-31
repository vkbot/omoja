package p172q;

import p077h.C1645g;

/* JADX INFO: renamed from: q.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3025o {

    /* JADX INFO: renamed from: b */
    public static final C3025o f8481b = new C3025o(2);

    /* JADX INFO: renamed from: c */
    public static final C3025o f8482c = new C3025o(0);

    /* JADX INFO: renamed from: d */
    public static final C3025o f8483d;

    /* JADX INFO: renamed from: e */
    public static final C3025o f8484e;

    /* JADX INFO: renamed from: f */
    public static final C3025o f8485f;

    /* JADX INFO: renamed from: g */
    public static final C1645g f8486g;

    /* JADX INFO: renamed from: h */
    public static final boolean f8487h;

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8488a;

    static {
        C3025o c3025o = new C3025o(1);
        f8483d = c3025o;
        f8484e = new C3025o(3);
        f8485f = c3025o;
        f8486g = C1645g.m2728a(c3025o, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy");
        f8487h = true;
    }

    public /* synthetic */ C3025o(int i10) {
        this.f8488a = i10;
    }

    /* JADX INFO: renamed from: a */
    public final int m4844a(int i10, int i11, int i12, int i13) {
        switch (this.f8488a) {
            case 0:
                if (m4845b(i10, i11, i12, i13) == 1.0f) {
                    return 2;
                }
                return f8481b.m4844a(i10, i11, i12, i13);
            case 1:
                return 2;
            case 2:
                return f8487h ? 2 : 1;
            default:
                return 2;
        }
    }

    /* JADX INFO: renamed from: b */
    public final float m4845b(int i10, int i11, int i12, int i13) {
        switch (this.f8488a) {
            case 0:
                return Math.min(1.0f, f8481b.m4845b(i10, i11, i12, i13));
            case 1:
                return Math.max(i12 / i10, i13 / i11);
            case 2:
                if (f8487h) {
                    return Math.min(i12 / i10, i13 / i11);
                }
                int iMax = Math.max(i11 / i13, i10 / i12);
                if (iMax == 0) {
                    return 1.0f;
                }
                return 1.0f / Integer.highestOneBit(iMax);
            default:
                return 1.0f;
        }
    }
}
