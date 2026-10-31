package h6;

import l9.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f2474h = new a(4201, 4096, 1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f2475i = new a(1033, 1024, 1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f2476j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f2477k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f2478l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f2479m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f2480n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f2481o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f2482a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f2483b;
    public final b c;
    public final b d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2484f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f2485g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        a aVar = new a(67, 64, 1);
        f2476j = aVar;
        f2477k = new a(19, 16, 1);
        f2478l = new a(285, 256, 0);
        a aVar2 = new a(301, 256, 1);
        f2479m = aVar2;
        f2480n = aVar2;
        f2481o = aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(int i9, int i10, int i11) {
        this.f2484f = i9;
        this.e = i10;
        this.f2485g = i11;
        this.f2482a = new int[i10];
        this.f2483b = new int[i10];
        int i12 = 1;
        for (int i13 = 0; i13 < i10; i13++) {
            this.f2482a[i13] = i12;
            i12 <<= 1;
            if (i12 >= i10) {
                i12 = (i12 ^ i9) & (i10 - 1);
            }
        }
        for (int i14 = 0; i14 < i10 - 1; i14++) {
            this.f2483b[this.f2482a[i14]] = i14;
        }
        this.c = new b(this, new int[]{0});
        this.d = new b(this, new int[]{1});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final b a(int i9, int i10) {
        if (i9 < 0) {
            i.a();
            return null;
        }
        if (i10 == 0) {
            return this.c;
        }
        int[] iArr = new int[i9 + 1];
        iArr[0] = i10;
        return new b(this, iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int b(int i9) {
        if (i9 == 0) {
            throw new ArithmeticException();
        }
        return this.f2482a[(this.e - this.f2483b[i9]) - 1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c(int i9, int i10) {
        if (i9 == 0 || i10 == 0) {
            return 0;
        }
        int[] iArr = this.f2483b;
        return this.f2482a[(iArr[i9] + iArr[i10]) % (this.e - 1)];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "GF(0x" + Integer.toHexString(this.f2484f) + ',' + this.e + ')';
    }
}
