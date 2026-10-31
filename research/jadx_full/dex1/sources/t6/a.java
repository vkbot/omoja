package t6;

import l.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {
    public static final a e = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f5413a = new int[929];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f5414b = new int[929];
    public final d c;
    public final d d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a() {
        int i9 = 1;
        for (int i10 = 0; i10 < 929; i10++) {
            this.f5413a[i10] = i9;
            i9 = (i9 * 3) % 929;
        }
        for (int i11 = 0; i11 < 928; i11++) {
            this.f5414b[this.f5413a[i11]] = i11;
        }
        this.c = new d(this, new int[]{0});
        this.d = new d(this, new int[]{1});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int a(int i9, int i10) {
        return (i9 + i10) % 929;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int b(int i9) {
        if (i9 == 0) {
            throw new ArithmeticException();
        }
        return this.f5413a[928 - this.f5414b[i9]];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int c(int i9, int i10) {
        if (i9 == 0 || i10 == 0) {
            return 0;
        }
        int[] iArr = this.f5414b;
        return this.f5413a[(iArr[i9] + iArr[i10]) % 928];
    }
}
