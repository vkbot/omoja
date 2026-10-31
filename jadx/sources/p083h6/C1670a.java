package p083h6;

import p130l9.C2237i;

/* JADX INFO: renamed from: h6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1670a {

    /* JADX INFO: renamed from: h */
    public static final C1670a f4273h = new C1670a(4201, 4096, 1);

    /* JADX INFO: renamed from: i */
    public static final C1670a f4274i = new C1670a(1033, 1024, 1);

    /* JADX INFO: renamed from: j */
    public static final C1670a f4275j;

    /* JADX INFO: renamed from: k */
    public static final C1670a f4276k;

    /* JADX INFO: renamed from: l */
    public static final C1670a f4277l;

    /* JADX INFO: renamed from: m */
    public static final C1670a f4278m;

    /* JADX INFO: renamed from: n */
    public static final C1670a f4279n;

    /* JADX INFO: renamed from: o */
    public static final C1670a f4280o;

    /* JADX INFO: renamed from: a */
    public final int[] f4281a;

    /* JADX INFO: renamed from: b */
    public final int[] f4282b;

    /* JADX INFO: renamed from: c */
    public final C1671b f4283c;

    /* JADX INFO: renamed from: d */
    public final C1671b f4284d;

    /* JADX INFO: renamed from: e */
    public final int f4285e;

    /* JADX INFO: renamed from: f */
    public final int f4286f;

    /* JADX INFO: renamed from: g */
    public final int f4287g;

    static {
        C1670a c1670a = new C1670a(67, 64, 1);
        f4275j = c1670a;
        f4276k = new C1670a(19, 16, 1);
        f4277l = new C1670a(285, 256, 0);
        C1670a c1670a2 = new C1670a(301, 256, 1);
        f4278m = c1670a2;
        f4279n = c1670a2;
        f4280o = c1670a;
    }

    public C1670a(int i10, int i11, int i12) {
        this.f4286f = i10;
        this.f4285e = i11;
        this.f4287g = i12;
        this.f4281a = new int[i11];
        this.f4282b = new int[i11];
        int i13 = 1;
        for (int i14 = 0; i14 < i11; i14++) {
            this.f4281a[i14] = i13;
            i13 <<= 1;
            if (i13 >= i11) {
                i13 = (i13 ^ i10) & (i11 - 1);
            }
        }
        for (int i15 = 0; i15 < i11 - 1; i15++) {
            this.f4282b[this.f4281a[i15]] = i15;
        }
        this.f4283c = new C1671b(this, new int[]{0});
        this.f4284d = new C1671b(this, new int[]{1});
    }

    /* JADX INFO: renamed from: a */
    public final C1671b m2769a(int i10, int i11) {
        if (i10 < 0) {
            C2237i.m3594a();
            return null;
        }
        if (i11 == 0) {
            return this.f4283c;
        }
        int[] iArr = new int[i10 + 1];
        iArr[0] = i11;
        return new C1671b(this, iArr);
    }

    /* JADX INFO: renamed from: b */
    public final int m2770b(int i10) {
        if (i10 == 0) {
            throw new ArithmeticException();
        }
        return this.f4281a[(this.f4285e - this.f4282b[i10]) - 1];
    }

    /* JADX INFO: renamed from: c */
    public final int m2771c(int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            return 0;
        }
        int[] iArr = this.f4282b;
        return this.f4281a[(iArr[i10] + iArr[i11]) % (this.f4285e - 1)];
    }

    public final String toString() {
        return "GF(0x" + Integer.toHexString(this.f4286f) + ',' + this.f4285e + ')';
    }
}
