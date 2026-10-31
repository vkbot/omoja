package n6;

import java.util.Map;
import z5.m;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f3871b = {6, 8, 10, 12, 14};
    public static final int[] c = {1, 1, 1, 1};
    public static final int[][] d = {new int[]{1, 1, 2}, new int[]{1, 1, 3}};
    public static final int[][] e = {new int[]{1, 1, 2, 2, 1}, new int[]{2, 1, 1, 1, 2}, new int[]{1, 2, 1, 1, 2}, new int[]{2, 2, 1, 1, 1}, new int[]{1, 1, 2, 1, 2}, new int[]{2, 1, 2, 1, 1}, new int[]{1, 2, 2, 1, 1}, new int[]{1, 1, 1, 2, 2}, new int[]{2, 1, 1, 2, 1}, new int[]{1, 2, 1, 2, 1}, new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3872a = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int g(int[] iArr) throws z5.i {
        float f8 = 0.38f;
        int i9 = -1;
        for (int i10 = 0; i10 < 20; i10++) {
            float fD = h.d(iArr, e[i10], 0.5f);
            if (fD < f8) {
                i9 = i10;
                f8 = fD;
            } else if (fD == f8) {
                i9 = -1;
            }
        }
        if (i9 >= 0) {
            return i9 % 10;
        }
        throw z5.i.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int[] h(int i9, f6.a aVar, int[] iArr) throws z5.i {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int i10 = aVar.c;
        int i11 = i9;
        boolean z8 = false;
        int i12 = 0;
        while (i9 < i10) {
            if (aVar.d(i9) != z8) {
                iArr2[i12] = iArr2[i12] + 1;
            } else {
                if (i12 != length - 1) {
                    i12++;
                } else {
                    if (h.d(iArr2, iArr, 0.5f) < 0.38f) {
                        return new int[]{i11, i9};
                    }
                    i11 += iArr2[0] + iArr2[1];
                    int i13 = i12 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i13);
                    iArr2[i13] = 0;
                    iArr2[i12] = 0;
                    i12--;
                }
                iArr2[i12] = 1;
                z8 = !z8;
            }
            i9++;
        }
        throw z5.i.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.h
    public final m b(int i9, f6.a aVar, Map map) throws z5.e, z5.i {
        int[] iArrH;
        int[] iArr;
        int length;
        int length2;
        int i10;
        int i11;
        boolean z8;
        int i12 = aVar.c;
        int iE = aVar.e(0);
        if (iE == i12) {
            throw z5.i.d;
        }
        int[] iArrH2 = h(iE, aVar, c);
        int i13 = iArrH2[1];
        int i14 = iArrH2[0];
        this.f3872a = (i13 - i14) / 4;
        i(aVar, i14);
        int[][] iArr2 = d;
        aVar.i();
        try {
            int i15 = aVar.c;
            int iE2 = aVar.e(0);
            if (iE2 == i15) {
                throw z5.i.d;
            }
            try {
                iArrH = h(iE2, aVar, iArr2[0]);
                while (true) {
                    if (i10 >= length2) {
                        z8 = false;
                        break;
                    }
                    int i16 = iArr[i10];
                    if (length == i16) {
                        z8 = true;
                        break;
                    }
                    if (i16 > i11) {
                        i11 = i16;
                    }
                    i10++;
                }
            } catch (z5.i unused) {
                iArrH = h(iE2, aVar, iArr2[1]);
            }
            i(aVar, iArrH[0]);
            int i17 = iArrH[0];
            int i18 = aVar.c;
            iArrH[0] = i18 - iArrH[1];
            iArrH[1] = i18 - i17;
            aVar.i();
            StringBuilder sb = new StringBuilder(20);
            int i19 = iArrH2[1];
            int i20 = iArrH[0];
            int[] iArr3 = new int[10];
            int[] iArr4 = new int[5];
            int[] iArr5 = new int[5];
            while (i19 < i20) {
                h.e(i19, aVar, iArr3);
                for (int i21 = 0; i21 < 5; i21++) {
                    int i22 = i21 * 2;
                    iArr4[i21] = iArr3[i22];
                    iArr5[i21] = iArr3[i22 + 1];
                }
                sb.append((char) (g(iArr4) + 48));
                sb.append((char) (g(iArr5) + 48));
                for (int i23 = 0; i23 < 10; i23++) {
                    i19 += iArr3[i23];
                }
            }
            String string = sb.toString();
            iArr = map != null ? (int[]) map.get(z5.d.f6316g) : null;
            if (iArr == null) {
                iArr = f3871b;
            }
            length = string.length();
            length2 = iArr.length;
            i10 = 0;
            i11 = 0;
            if (!z8 && length > i11) {
                z8 = true;
            }
            if (!z8) {
                throw z5.e.a();
            }
            float f8 = i9;
            return new m(string, null, new o[]{new o(iArrH2[1], f8), new o(iArrH[0], f8)}, z5.a.f6304j);
        } catch (Throwable th) {
            aVar.i();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(f6.a aVar, int i9) throws z5.i {
        int iMin = Math.min(this.f3872a * 10, i9);
        for (int i10 = i9 - 1; iMin > 0 && i10 >= 0 && !aVar.d(i10); i10--) {
            iMin--;
        }
        if (iMin != 0) {
            throw z5.i.d;
        }
    }
}
