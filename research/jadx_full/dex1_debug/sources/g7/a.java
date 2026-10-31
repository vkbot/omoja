package g7;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int[] f2397l = new int[10];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int[] f2398m = new int[10];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int[] f2399n = new int[10];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int[] f2400o = new int[10];

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int[] f2401p = new int[10];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f2389a = new int[10];
    public final int[] c = new int[10];
    public final int[] e = new int[10];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f2392g = new int[10];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f2394i = new int[10];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f2390b = new int[10];
    public final int[] d = new int[10];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f2393h = new int[10];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f2391f = new int[10];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long[] f2395j = new long[20];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f2396k = new int[20];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(int[] iArr, int[] iArr2, int i9) {
        int i10 = -i9;
        for (int i11 = 0; i11 < 10; i11++) {
            int i12 = iArr[i11];
            int i13 = (iArr2[i11] ^ i12) & i10;
            iArr[i11] = i12 ^ i13;
            iArr2[i11] = iArr2[i11] ^ i13;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void i(int[] iArr, int[] iArr2, int[] iArr3) {
        int i9 = 0;
        for (int i10 = 0; i10 < 10; i10++) {
            i9 = (iArr2[i10] - iArr3[i10]) - ((i9 >> 26) & 1);
            iArr[i10] = i9 & 67108863;
        }
        int i11 = iArr[0] - ((-((i9 >> 26) & 1)) & 19);
        iArr[0] = i11 & 67108863;
        for (int i12 = 1; i12 < 10; i12++) {
            i11 = iArr[i12] - ((i11 >> 26) & 1);
            iArr[i12] = i11 & 67108863;
        }
        iArr[9] = iArr[9] & 2097151;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int[] iArr, int[] iArr2, int[] iArr3) {
        int i9 = iArr2[0] + iArr3[0];
        iArr[0] = i9 & 67108863;
        for (int i10 = 1; i10 < 10; i10++) {
            i9 = (i9 >> 26) + iArr2[i10] + iArr3[i10];
            iArr[i10] = i9 & 67108863;
        }
        h(iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        Arrays.fill(this.f2397l, 0);
        Arrays.fill(this.f2398m, 0);
        Arrays.fill(this.f2399n, 0);
        Arrays.fill(this.f2400o, 0);
        Arrays.fill(this.f2401p, 0);
        Arrays.fill(this.f2389a, 0);
        Arrays.fill(this.c, 0);
        Arrays.fill(this.e, 0);
        Arrays.fill(this.f2392g, 0);
        Arrays.fill(this.f2394i, 0);
        Arrays.fill(this.f2390b, 0);
        Arrays.fill(this.d, 0);
        Arrays.fill(this.f2393h, 0);
        Arrays.fill(this.f2391f, 0);
        Arrays.fill(this.f2395j, 0L);
        Arrays.fill(this.f2396k, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(byte[] bArr) {
        int[] iArr;
        int i9;
        int i10 = 31;
        int i11 = bArr[31] | 64;
        int i12 = 6;
        int i13 = 0;
        while (true) {
            int i14 = (i11 >> i12) & 1;
            int i15 = i13 ^ i14;
            int[] iArr2 = this.f2398m;
            int[] iArr3 = this.f2399n;
            b(iArr2, iArr3, i15);
            int[] iArr4 = this.f2400o;
            int[] iArr5 = this.f2401p;
            b(iArr4, iArr5, i15);
            int[] iArr6 = this.f2389a;
            a(iArr6, iArr2, iArr4);
            int[] iArr7 = this.f2390b;
            e(iArr7, iArr6, iArr6);
            int[] iArr8 = this.c;
            i(iArr8, iArr2, iArr4);
            int[] iArr9 = this.d;
            e(iArr9, iArr8, iArr8);
            int[] iArr10 = this.f2394i;
            i(iArr10, iArr7, iArr9);
            int[] iArr11 = this.e;
            a(iArr11, iArr3, iArr5);
            int[] iArr12 = this.f2392g;
            i(iArr12, iArr3, iArr5);
            int i16 = i11;
            int[] iArr13 = this.f2393h;
            e(iArr13, iArr12, iArr6);
            int[] iArr14 = this.f2391f;
            e(iArr14, iArr11, iArr8);
            a(iArr3, iArr13, iArr14);
            e(iArr3, iArr3, iArr3);
            i(iArr5, iArr13, iArr14);
            e(iArr5, iArr5, iArr5);
            e(iArr5, iArr5, this.f2397l);
            e(iArr2, iArr7, iArr9);
            long j9 = 0;
            int i17 = 0;
            while (true) {
                iArr = this.f2396k;
                if (i17 >= 10) {
                    break;
                }
                long j10 = (((long) iArr10[i17]) * 121665) + j9;
                iArr[i17] = ((int) j10) & 67108863;
                j9 = j10 >> 26;
                i17++;
                iArr2 = iArr2;
            }
            int[] iArr15 = iArr2;
            iArr[10] = ((int) j9) & 67108863;
            g(iArr4, iArr, 1);
            a(iArr4, iArr4, iArr7);
            e(iArr4, iArr4, iArr10);
            if (i12 > 0) {
                i12--;
                i11 = i16 == true ? 1 : 0;
            } else {
                if (i10 == 0) {
                    b(iArr15, iArr3, i14);
                    b(iArr4, iArr5, i14);
                    return;
                }
                if (i10 == 1) {
                    i10--;
                    i9 = bArr[i10] & 248;
                } else {
                    i10--;
                    i9 = bArr[i10];
                }
                int i18 = i9;
                i12 = 7;
                i11 = i18 == true ? 1 : 0;
            }
            i13 = i14;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(int[] iArr, int[] iArr2, int[] iArr3) {
        long[] jArr;
        long j9 = iArr2[0];
        int i9 = 0;
        while (true) {
            jArr = this.f2395j;
            if (i9 >= 10) {
                break;
            }
            jArr[i9] = ((long) iArr3[i9]) * j9;
            i9++;
        }
        for (int i10 = 1; i10 < 10; i10++) {
            long j10 = iArr2[i10];
            for (int i11 = 0; i11 < 9; i11++) {
                int i12 = i10 + i11;
                jArr[i12] = (((long) iArr3[i11]) * j10) + jArr[i12];
            }
            jArr[i10 + 9] = j10 * ((long) iArr3[9]);
        }
        long j11 = jArr[0];
        int[] iArr4 = this.f2396k;
        iArr4[0] = ((int) j11) & 67108863;
        for (int i13 = 1; i13 < 20; i13++) {
            j11 = (j11 >> 26) + jArr[i13];
            iArr4[i13] = ((int) j11) & 67108863;
        }
        g(iArr, iArr4, 10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(int[] iArr, int[] iArr2) {
        int[] iArr3 = this.f2389a;
        e(iArr3, iArr2, iArr2);
        for (int i9 = 0; i9 < 9; i9++) {
            e(iArr3, iArr3, iArr3);
        }
        e(iArr, iArr3, iArr2);
        for (int i10 = 0; i10 < 23; i10++) {
            for (int i11 = 0; i11 < 10; i11++) {
                e(iArr3, iArr3, iArr3);
            }
            e(iArr, iArr, iArr3);
        }
        e(iArr3, iArr, iArr);
        e(iArr, iArr, iArr3);
        for (int i12 = 0; i12 < 8; i12++) {
            e(iArr3, iArr3, iArr3);
            e(iArr, iArr, iArr3);
        }
        e(iArr, iArr, iArr);
        e(iArr, iArr, iArr);
        e(iArr, iArr, iArr2);
        e(iArr, iArr, iArr);
        e(iArr, iArr, iArr);
        e(iArr, iArr, iArr2);
        e(iArr, iArr, iArr);
        e(iArr, iArr, iArr2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(int[] iArr, int[] iArr2, int i9) {
        int i10 = iArr2[9];
        int i11 = i10 >> 21;
        iArr2[9] = i10 & 2097151;
        int i12 = 0;
        for (int i13 = 0; i13 < i9; i13++) {
            int i14 = i11 + (iArr2[i13 + 10] << 5);
            int i15 = ((i14 & 67108863) * 19) + iArr2[i13] + i12;
            iArr2[i13] = i15 & 67108863;
            i11 = i14 >> 26;
            i12 = i15 >> 26;
        }
        if (i9 < 10) {
            while (i9 < 10) {
                int i16 = i12 + iArr2[i9];
                iArr2[i9] = i16 & 67108863;
                i12 = i16 >> 26;
                i9++;
            }
        }
        int i17 = iArr2[9];
        int i18 = (i17 >> 21) * 19;
        iArr2[9] = i17 & 2097151;
        for (int i19 = 0; i19 < 10; i19++) {
            int i20 = i18 + iArr2[i19];
            iArr[i19] = i20 & 67108863;
            i18 = i20 >> 26;
        }
        h(iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(int[] iArr) {
        int[] iArr2;
        int i9 = 19;
        int i10 = 0;
        while (true) {
            iArr2 = this.f2396k;
            if (i10 >= 10) {
                break;
            }
            int i11 = i9 + iArr[i10];
            iArr2[i10] = 67108863 & i11;
            i9 = i11 >> 26;
            i10++;
        }
        int i12 = iArr2[9];
        int i13 = -((i12 >> 21) & 1);
        int i14 = ~i13;
        iArr2[9] = i12 & 2097151;
        for (int i15 = 0; i15 < 10; i15++) {
            iArr[i15] = (iArr[i15] & i14) | (iArr2[i15] & i13);
        }
    }
}
