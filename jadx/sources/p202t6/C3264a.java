package p202t6;

import p120l.C2187d;

/* JADX INFO: renamed from: t6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3264a {

    /* JADX INFO: renamed from: e */
    public static final C3264a f9550e = new C3264a();

    /* JADX INFO: renamed from: a */
    public final int[] f9551a = new int[929];

    /* JADX INFO: renamed from: b */
    public final int[] f9552b = new int[929];

    /* JADX INFO: renamed from: c */
    public final C2187d f9553c;

    /* JADX INFO: renamed from: d */
    public final C2187d f9554d;

    public C3264a() {
        int i10 = 1;
        for (int i11 = 0; i11 < 929; i11++) {
            this.f9551a[i11] = i10;
            i10 = (i10 * 3) % 929;
        }
        for (int i12 = 0; i12 < 928; i12++) {
            this.f9552b[this.f9551a[i12]] = i12;
        }
        this.f9553c = new C2187d(this, new int[]{0});
        this.f9554d = new C2187d(this, new int[]{1});
    }

    /* JADX INFO: renamed from: a */
    public final int m5206a(int i10, int i11) {
        return (i10 + i11) % 929;
    }

    /* JADX INFO: renamed from: b */
    public final int m5207b(int i10) {
        if (i10 == 0) {
            throw new ArithmeticException();
        }
        return this.f9551a[928 - this.f9552b[i10]];
    }

    /* JADX INFO: renamed from: c */
    public final int m5208c(int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            return 0;
        }
        int[] iArr = this.f9552b;
        return this.f9551a[(iArr[i10] + iArr[i11]) % 928];
    }
}
