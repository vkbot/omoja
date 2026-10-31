package u6;

import f6.b;
import java.util.ArrayList;
import java.util.Arrays;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f5486a = {0, 4, 1, 5};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f5487b = {6, 2, 7, 3};
    public static final int[] c = {8, 1, 1, 1, 1, 1, 1, 3};
    public static final int[] d = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ArrayList a(b bVar) {
        ArrayList arrayList = new ArrayList();
        int i9 = bVar.c;
        if (i9 > 0) {
            int i10 = bVar.f2258b;
            o[] oVarArr = new o[8];
            int i11 = 0;
            int i12 = 0;
            o[] oVarArrC = c(bVar, i9, i10, 0, 0, c);
            for (int i13 = 0; i13 < 4; i13++) {
                oVarArr[f5486a[i13]] = oVarArrC[i13];
            }
            o oVar = oVarArr[4];
            if (oVar != null) {
                i12 = (int) oVar.f6339a;
                i11 = (int) oVar.f6340b;
            }
            o[] oVarArrC2 = c(bVar, i9, i10, i11, i12, d);
            for (int i14 = 0; i14 < 4; i14++) {
                oVarArr[f5487b[i14]] = oVarArrC2[i14];
            }
            if (oVarArr[0] != null || oVarArr[3] != null) {
                arrayList.add(oVarArr);
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int[] b(b bVar, int i9, int i10, int i11, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i12 = 0;
        while (bVar.b(i9, i10) && i9 > 0) {
            int i13 = i12 + 1;
            if (i12 >= 3) {
                break;
            }
            i9--;
            i12 = i13;
        }
        int length = iArr.length;
        int i14 = i9;
        int i15 = 0;
        boolean z8 = false;
        while (i9 < i11) {
            if (bVar.b(i9, i10) != z8) {
                iArr2[i15] = iArr2[i15] + 1;
            } else {
                if (i15 != length - 1) {
                    i15++;
                } else {
                    if (d(iArr2, iArr) < 0.42f) {
                        return new int[]{i14, i9};
                    }
                    i14 += iArr2[0] + iArr2[1];
                    int i16 = i15 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i16);
                    iArr2[i16] = 0;
                    iArr2[i15] = 0;
                    i15--;
                }
                iArr2[i15] = 1;
                z8 = !z8;
            }
            i9++;
        }
        if (i15 != length - 1 || d(iArr2, iArr) >= 0.42f) {
            return null;
        }
        return new int[]{i14, i9 - 1};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static o[] c(b bVar, int i9, int i10, int i11, int i12, int[] iArr) {
        int i13;
        boolean z8;
        int[] iArrB;
        o[] oVarArr = new o[4];
        int[] iArr2 = iArr;
        int[] iArr3 = new int[iArr2.length];
        int i14 = i11;
        while (true) {
            if (i14 >= i9) {
                i13 = i14;
                z8 = false;
                break;
            }
            int[] iArrB2 = b(bVar, i12, i14, i10, iArr2, iArr3);
            if (iArrB2 != null) {
                int[] iArr4 = iArrB2;
                while (true) {
                    i13 = i14;
                    if (i13 <= 0 || (iArrB = b(bVar, i12, (i14 = i13 - 1), i10, iArr, iArr3)) == null) {
                        break;
                    }
                    iArr4 = iArrB;
                }
                float f8 = i13;
                oVarArr[0] = new o(iArr4[0], f8);
                oVarArr[1] = new o(iArr4[1], f8);
                z8 = true;
                break;
            }
            i14 += 5;
            iArr2 = iArr;
        }
        int i15 = i13 + 1;
        if (z8) {
            int[] iArr5 = {(int) oVarArr[0].f6339a, (int) oVarArr[1].f6339a};
            int i16 = i15;
            int i17 = 0;
            while (i16 < i9) {
                int[] iArrB3 = b(bVar, iArr5[0], i16, i10, iArr, iArr3);
                if (iArrB3 != null && Math.abs(iArr5[0] - iArrB3[0]) < 5 && Math.abs(iArr5[1] - iArrB3[1]) < 5) {
                    iArr5 = iArrB3;
                    i17 = 0;
                } else {
                    if (i17 > 25) {
                        break;
                    }
                    i17++;
                }
                i16++;
            }
            i15 = i16 - (i17 + 1);
            float f9 = i15;
            oVarArr[2] = new o(iArr5[0], f9);
            oVarArr[3] = new o(iArr5[1], f9);
        }
        if (i15 - i13 < 10) {
            Arrays.fill(oVarArr, (Object) null);
        }
        return oVarArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float d(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            i9 += iArr[i11];
            i10 += iArr2[i11];
        }
        if (i9 < i10) {
            return Float.POSITIVE_INFINITY;
        }
        float f8 = i9;
        float f9 = f8 / i10;
        float f10 = 0.8f * f9;
        float f11 = 0.0f;
        for (int i12 = 0; i12 < length; i12++) {
            int i13 = iArr[i12];
            float f12 = iArr2[i12] * f9;
            float f13 = i13;
            float f14 = f13 > f12 ? f13 - f12 : f12 - f13;
            if (f14 > f10) {
                return Float.POSITIVE_INFINITY;
            }
            f11 += f14;
        }
        return f11 / f8;
    }
}
