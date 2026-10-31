package p213u6;

import java.util.ArrayList;
import java.util.Arrays;
import p063f6.C1578b;
import p260z5.C3759o;

/* JADX INFO: renamed from: u6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3303a {

    /* JADX INFO: renamed from: a */
    public static final int[] f9677a = {0, 4, 1, 5};

    /* JADX INFO: renamed from: b */
    public static final int[] f9678b = {6, 2, 7, 3};

    /* JADX INFO: renamed from: c */
    public static final int[] f9679c = {8, 1, 1, 1, 1, 1, 1, 3};

    /* JADX INFO: renamed from: d */
    public static final int[] f9680d = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    /* JADX INFO: renamed from: a */
    public static ArrayList m5229a(C1578b c1578b) {
        ArrayList arrayList = new ArrayList();
        int i10 = c1578b.f3901c;
        if (i10 > 0) {
            int i11 = c1578b.f3900b;
            C3759o[] c3759oArr = new C3759o[8];
            int i12 = 0;
            int i13 = 0;
            C3759o[] c3759oArrM5231c = m5231c(c1578b, i10, i11, 0, 0, f9679c);
            for (int i14 = 0; i14 < 4; i14++) {
                c3759oArr[f9677a[i14]] = c3759oArrM5231c[i14];
            }
            C3759o c3759o = c3759oArr[4];
            if (c3759o != null) {
                i13 = (int) c3759o.f11214a;
                i12 = (int) c3759o.f11215b;
            }
            C3759o[] c3759oArrM5231c2 = m5231c(c1578b, i10, i11, i12, i13, f9680d);
            for (int i15 = 0; i15 < 4; i15++) {
                c3759oArr[f9678b[i15]] = c3759oArrM5231c2[i15];
            }
            if (c3759oArr[0] != null || c3759oArr[3] != null) {
                arrayList.add(c3759oArr);
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: b */
    public static int[] m5230b(C1578b c1578b, int i10, int i11, int i12, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i13 = 0;
        while (c1578b.m2658b(i10, i11) && i10 > 0) {
            int i14 = i13 + 1;
            if (i13 >= 3) {
                break;
            }
            i10--;
            i13 = i14;
        }
        int length = iArr.length;
        int i15 = i10;
        int i16 = 0;
        boolean z9 = false;
        while (i10 < i12) {
            if (c1578b.m2658b(i10, i11) != z9) {
                iArr2[i16] = iArr2[i16] + 1;
            } else {
                if (i16 != length - 1) {
                    i16++;
                } else {
                    if (m5232d(iArr2, iArr) < 0.42f) {
                        return new int[]{i15, i10};
                    }
                    i15 += iArr2[0] + iArr2[1];
                    int i17 = i16 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i17);
                    iArr2[i17] = 0;
                    iArr2[i16] = 0;
                    i16--;
                }
                iArr2[i16] = 1;
                z9 = !z9;
            }
            i10++;
        }
        if (i16 != length - 1 || m5232d(iArr2, iArr) >= 0.42f) {
            return null;
        }
        return new int[]{i15, i10 - 1};
    }

    /* JADX INFO: renamed from: c */
    public static C3759o[] m5231c(C1578b c1578b, int i10, int i11, int i12, int i13, int[] iArr) {
        int i14;
        boolean z9;
        int[] iArrM5230b;
        C3759o[] c3759oArr = new C3759o[4];
        int[] iArr2 = iArr;
        int[] iArr3 = new int[iArr2.length];
        int i15 = i12;
        while (true) {
            if (i15 >= i10) {
                i14 = i15;
                z9 = false;
                break;
            }
            int[] iArrM5230b2 = m5230b(c1578b, i13, i15, i11, iArr2, iArr3);
            if (iArrM5230b2 != null) {
                int[] iArr4 = iArrM5230b2;
                while (true) {
                    i14 = i15;
                    if (i14 <= 0 || (iArrM5230b = m5230b(c1578b, i13, (i15 = i14 - 1), i11, iArr, iArr3)) == null) {
                        break;
                    }
                    iArr4 = iArrM5230b;
                }
                float f8 = i14;
                c3759oArr[0] = new C3759o(iArr4[0], f8);
                c3759oArr[1] = new C3759o(iArr4[1], f8);
                z9 = true;
                break;
            }
            i15 += 5;
            iArr2 = iArr;
        }
        int i16 = i14 + 1;
        if (z9) {
            int[] iArr5 = {(int) c3759oArr[0].f11214a, (int) c3759oArr[1].f11214a};
            int i17 = i16;
            int i18 = 0;
            while (i17 < i10) {
                int[] iArrM5230b3 = m5230b(c1578b, iArr5[0], i17, i11, iArr, iArr3);
                if (iArrM5230b3 != null && Math.abs(iArr5[0] - iArrM5230b3[0]) < 5 && Math.abs(iArr5[1] - iArrM5230b3[1]) < 5) {
                    iArr5 = iArrM5230b3;
                    i18 = 0;
                } else {
                    if (i18 > 25) {
                        break;
                    }
                    i18++;
                }
                i17++;
            }
            i16 = i17 - (i18 + 1);
            float f10 = i16;
            c3759oArr[2] = new C3759o(iArr5[0], f10);
            c3759oArr[3] = new C3759o(iArr5[1], f10);
        }
        if (i16 - i14 < 10) {
            Arrays.fill(c3759oArr, (Object) null);
        }
        return c3759oArr;
    }

    /* JADX INFO: renamed from: d */
    public static float m5232d(int[] iArr, int[] iArr2) {
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            i10 += iArr[i12];
            i11 += iArr2[i12];
        }
        if (i10 < i11) {
            return Float.POSITIVE_INFINITY;
        }
        float f8 = i10;
        float f10 = f8 / i11;
        float f11 = 0.8f * f10;
        float f12 = 0.0f;
        for (int i13 = 0; i13 < length; i13++) {
            int i14 = iArr[i13];
            float f13 = iArr2[i13] * f10;
            float f14 = i14;
            float f15 = f14 > f13 ? f14 - f13 : f13 - f14;
            if (f15 > f11) {
                return Float.POSITIVE_INFINITY;
            }
            f12 += f15;
        }
        return f12 / f8;
    }
}
