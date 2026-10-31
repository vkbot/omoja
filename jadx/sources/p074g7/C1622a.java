package p074g7;

import java.util.Arrays;

/* JADX INFO: renamed from: g7.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1622a {

    /* JADX INFO: renamed from: l */
    public final int[] f4113l = new int[10];

    /* JADX INFO: renamed from: m */
    public final int[] f4114m = new int[10];

    /* JADX INFO: renamed from: n */
    public final int[] f4115n = new int[10];

    /* JADX INFO: renamed from: o */
    public final int[] f4116o = new int[10];

    /* JADX INFO: renamed from: p */
    public final int[] f4117p = new int[10];

    /* JADX INFO: renamed from: a */
    public final int[] f4102a = new int[10];

    /* JADX INFO: renamed from: c */
    public final int[] f4104c = new int[10];

    /* JADX INFO: renamed from: e */
    public final int[] f4106e = new int[10];

    /* JADX INFO: renamed from: g */
    public final int[] f4108g = new int[10];

    /* JADX INFO: renamed from: i */
    public final int[] f4110i = new int[10];

    /* JADX INFO: renamed from: b */
    public final int[] f4103b = new int[10];

    /* JADX INFO: renamed from: d */
    public final int[] f4105d = new int[10];

    /* JADX INFO: renamed from: h */
    public final int[] f4109h = new int[10];

    /* JADX INFO: renamed from: f */
    public final int[] f4107f = new int[10];

    /* JADX INFO: renamed from: j */
    public final long[] f4111j = new long[20];

    /* JADX INFO: renamed from: k */
    public final int[] f4112k = new int[20];

    /* JADX INFO: renamed from: b */
    public static void m2701b(int[] iArr, int[] iArr2, int i10) {
        int i11 = -i10;
        for (int i12 = 0; i12 < 10; i12++) {
            int i13 = iArr[i12];
            int i14 = (iArr2[i12] ^ i13) & i11;
            iArr[i12] = i13 ^ i14;
            iArr2[i12] = iArr2[i12] ^ i14;
        }
    }

    /* JADX INFO: renamed from: i */
    public static void m2702i(int[] iArr, int[] iArr2, int[] iArr3) {
        int i10 = 0;
        for (int i11 = 0; i11 < 10; i11++) {
            i10 = (iArr2[i11] - iArr3[i11]) - ((i10 >> 26) & 1);
            iArr[i11] = i10 & 67108863;
        }
        int i12 = iArr[0] - ((-((i10 >> 26) & 1)) & 19);
        iArr[0] = i12 & 67108863;
        for (int i13 = 1; i13 < 10; i13++) {
            i12 = iArr[i13] - ((i12 >> 26) & 1);
            iArr[i13] = i12 & 67108863;
        }
        iArr[9] = iArr[9] & 2097151;
    }

    /* JADX INFO: renamed from: a */
    public final void m2703a(int[] iArr, int[] iArr2, int[] iArr3) {
        int i10 = iArr2[0] + iArr3[0];
        iArr[0] = i10 & 67108863;
        for (int i11 = 1; i11 < 10; i11++) {
            i10 = (i10 >> 26) + iArr2[i11] + iArr3[i11];
            iArr[i11] = i10 & 67108863;
        }
        m2709h(iArr);
    }

    /* JADX INFO: renamed from: c */
    public final void m2704c() {
        Arrays.fill(this.f4113l, 0);
        Arrays.fill(this.f4114m, 0);
        Arrays.fill(this.f4115n, 0);
        Arrays.fill(this.f4116o, 0);
        Arrays.fill(this.f4117p, 0);
        Arrays.fill(this.f4102a, 0);
        Arrays.fill(this.f4104c, 0);
        Arrays.fill(this.f4106e, 0);
        Arrays.fill(this.f4108g, 0);
        Arrays.fill(this.f4110i, 0);
        Arrays.fill(this.f4103b, 0);
        Arrays.fill(this.f4105d, 0);
        Arrays.fill(this.f4109h, 0);
        Arrays.fill(this.f4107f, 0);
        Arrays.fill(this.f4111j, 0L);
        Arrays.fill(this.f4112k, 0);
    }

    /* JADX INFO: renamed from: d */
    public final void m2705d(byte[] bArr) {
        int[] iArr;
        int i10;
        int i11 = 31;
        int i12 = bArr[31] | 64;
        int i13 = 6;
        int i14 = 0;
        while (true) {
            int i15 = (i12 >> i13) & 1;
            int i16 = i14 ^ i15;
            int[] iArr2 = this.f4114m;
            int[] iArr3 = this.f4115n;
            m2701b(iArr2, iArr3, i16);
            int[] iArr4 = this.f4116o;
            int[] iArr5 = this.f4117p;
            m2701b(iArr4, iArr5, i16);
            int[] iArr6 = this.f4102a;
            m2703a(iArr6, iArr2, iArr4);
            int[] iArr7 = this.f4103b;
            m2706e(iArr7, iArr6, iArr6);
            int[] iArr8 = this.f4104c;
            m2702i(iArr8, iArr2, iArr4);
            int[] iArr9 = this.f4105d;
            m2706e(iArr9, iArr8, iArr8);
            int[] iArr10 = this.f4110i;
            m2702i(iArr10, iArr7, iArr9);
            int[] iArr11 = this.f4106e;
            m2703a(iArr11, iArr3, iArr5);
            int[] iArr12 = this.f4108g;
            m2702i(iArr12, iArr3, iArr5);
            int i17 = i12;
            int[] iArr13 = this.f4109h;
            m2706e(iArr13, iArr12, iArr6);
            int[] iArr14 = this.f4107f;
            m2706e(iArr14, iArr11, iArr8);
            m2703a(iArr3, iArr13, iArr14);
            m2706e(iArr3, iArr3, iArr3);
            m2702i(iArr5, iArr13, iArr14);
            m2706e(iArr5, iArr5, iArr5);
            m2706e(iArr5, iArr5, this.f4113l);
            m2706e(iArr2, iArr7, iArr9);
            long j10 = 0;
            int i18 = 0;
            while (true) {
                iArr = this.f4112k;
                if (i18 >= 10) {
                    break;
                }
                long j11 = (((long) iArr10[i18]) * 121665) + j10;
                iArr[i18] = ((int) j11) & 67108863;
                j10 = j11 >> 26;
                i18++;
                iArr2 = iArr2;
            }
            int[] iArr15 = iArr2;
            iArr[10] = ((int) j10) & 67108863;
            m2708g(iArr4, iArr, 1);
            m2703a(iArr4, iArr4, iArr7);
            m2706e(iArr4, iArr4, iArr10);
            if (i13 > 0) {
                i13--;
                i12 = i17 == true ? 1 : 0;
            } else {
                if (i11 == 0) {
                    m2701b(iArr15, iArr3, i15);
                    m2701b(iArr4, iArr5, i15);
                    return;
                }
                if (i11 == 1) {
                    i11--;
                    i10 = bArr[i11] & 248;
                } else {
                    i11--;
                    i10 = bArr[i11];
                }
                int i19 = i10;
                i13 = 7;
                i12 = i19 == true ? 1 : 0;
            }
            i14 = i15;
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m2706e(int[] iArr, int[] iArr2, int[] iArr3) {
        long[] jArr;
        long j10 = iArr2[0];
        int i10 = 0;
        while (true) {
            jArr = this.f4111j;
            if (i10 >= 10) {
                break;
            }
            jArr[i10] = ((long) iArr3[i10]) * j10;
            i10++;
        }
        for (int i11 = 1; i11 < 10; i11++) {
            long j11 = iArr2[i11];
            for (int i12 = 0; i12 < 9; i12++) {
                int i13 = i11 + i12;
                jArr[i13] = (((long) iArr3[i12]) * j11) + jArr[i13];
            }
            jArr[i11 + 9] = j11 * ((long) iArr3[9]);
        }
        long j12 = jArr[0];
        int[] iArr4 = this.f4112k;
        iArr4[0] = ((int) j12) & 67108863;
        for (int i14 = 1; i14 < 20; i14++) {
            j12 = (j12 >> 26) + jArr[i14];
            iArr4[i14] = ((int) j12) & 67108863;
        }
        m2708g(iArr, iArr4, 10);
    }

    /* JADX INFO: renamed from: f */
    public final void m2707f(int[] iArr, int[] iArr2) {
        int[] iArr3 = this.f4102a;
        m2706e(iArr3, iArr2, iArr2);
        for (int i10 = 0; i10 < 9; i10++) {
            m2706e(iArr3, iArr3, iArr3);
        }
        m2706e(iArr, iArr3, iArr2);
        for (int i11 = 0; i11 < 23; i11++) {
            for (int i12 = 0; i12 < 10; i12++) {
                m2706e(iArr3, iArr3, iArr3);
            }
            m2706e(iArr, iArr, iArr3);
        }
        m2706e(iArr3, iArr, iArr);
        m2706e(iArr, iArr, iArr3);
        for (int i13 = 0; i13 < 8; i13++) {
            m2706e(iArr3, iArr3, iArr3);
            m2706e(iArr, iArr, iArr3);
        }
        m2706e(iArr, iArr, iArr);
        m2706e(iArr, iArr, iArr);
        m2706e(iArr, iArr, iArr2);
        m2706e(iArr, iArr, iArr);
        m2706e(iArr, iArr, iArr);
        m2706e(iArr, iArr, iArr2);
        m2706e(iArr, iArr, iArr);
        m2706e(iArr, iArr, iArr2);
    }

    /* JADX INFO: renamed from: g */
    public final void m2708g(int[] iArr, int[] iArr2, int i10) {
        int i11 = iArr2[9];
        int i12 = i11 >> 21;
        iArr2[9] = i11 & 2097151;
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            int i15 = i12 + (iArr2[i14 + 10] << 5);
            int i16 = ((i15 & 67108863) * 19) + iArr2[i14] + i13;
            iArr2[i14] = i16 & 67108863;
            i12 = i15 >> 26;
            i13 = i16 >> 26;
        }
        if (i10 < 10) {
            while (i10 < 10) {
                int i17 = i13 + iArr2[i10];
                iArr2[i10] = i17 & 67108863;
                i13 = i17 >> 26;
                i10++;
            }
        }
        int i18 = iArr2[9];
        int i19 = (i18 >> 21) * 19;
        iArr2[9] = i18 & 2097151;
        for (int i20 = 0; i20 < 10; i20++) {
            int i21 = i19 + iArr2[i20];
            iArr[i20] = i21 & 67108863;
            i19 = i21 >> 26;
        }
        m2709h(iArr);
    }

    /* JADX INFO: renamed from: h */
    public final void m2709h(int[] iArr) {
        int[] iArr2;
        int i10 = 19;
        int i11 = 0;
        while (true) {
            iArr2 = this.f4112k;
            if (i11 >= 10) {
                break;
            }
            int i12 = i10 + iArr[i11];
            iArr2[i11] = 67108863 & i12;
            i10 = i12 >> 26;
            i11++;
        }
        int i13 = iArr2[9];
        int i14 = -((i13 >> 21) & 1);
        int i15 = ~i14;
        iArr2[9] = i13 & 2097151;
        for (int i16 = 0; i16 < 10; i16++) {
            iArr[i16] = (iArr[i16] & i15) | (iArr2[i16] & i14);
        }
    }
}
