package o6;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import n6.h;
import z5.i;
import z5.m;
import z5.o;
import z5.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f4107i = {1, 10, 34, 70, 126};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f4108j = {4, 20, 48, 81};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f4109k = {0, 161, 961, 2015, 2715};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f4110l = {0, 336, 1036, 1516};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f4111m = {8, 6, 4, 3, 1};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f4112n = {2, 4, 6, 8};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[][] f4113o = {new int[]{3, 8, 2, 1}, new int[]{3, 5, 5, 1}, new int[]{3, 3, 7, 1}, new int[]{3, 1, 9, 1}, new int[]{2, 7, 4, 1}, new int[]{2, 5, 6, 1}, new int[]{2, 3, 8, 1}, new int[]{1, 5, 7, 1}, new int[]{1, 3, 9, 1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f4114g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f4115h = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void j(ArrayList arrayList, d dVar) {
        if (dVar == null) {
            return;
        }
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            d dVar2 = (d) obj;
            if (dVar2.f4103a == dVar.f4103a) {
                dVar2.d++;
                return;
            }
        }
        arrayList.add(dVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.h
    public final m b(int i9, f6.a aVar, Map map) throws i {
        d dVarL = l(aVar, false, i9, map);
        ArrayList arrayList = this.f4114g;
        j(arrayList, dVarL);
        aVar.i();
        d dVarL2 = l(aVar, true, i9, map);
        ArrayList arrayList2 = this.f4115h;
        j(arrayList2, dVarL2);
        aVar.i();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            d dVar = (d) obj;
            int i11 = dVar.d;
            c cVar = dVar.c;
            if (i11 > 1) {
                int size2 = arrayList2.size();
                int i12 = 0;
                while (i12 < size2) {
                    Object obj2 = arrayList2.get(i12);
                    i12++;
                    d dVar2 = (d) obj2;
                    int i13 = dVar2.d;
                    c cVar2 = dVar2.c;
                    if (i13 > 1) {
                        int i14 = ((dVar2.f4104b * 16) + dVar.f4104b) % 79;
                        int i15 = (cVar.f4105a * 9) + cVar2.f4105a;
                        if (i15 > 72) {
                            i15--;
                        }
                        if (i15 > 8) {
                            i15--;
                        }
                        if (i14 == i15) {
                            String strValueOf = String.valueOf((((long) dVar.f4103a) * 4537077) + ((long) dVar2.f4103a));
                            StringBuilder sb = new StringBuilder(14);
                            for (int length = 13 - strValueOf.length(); length > 0; length--) {
                                sb.append('0');
                            }
                            sb.append(strValueOf);
                            int i16 = 0;
                            for (int i17 = 0; i17 < 13; i17++) {
                                int iCharAt = sb.charAt(i17) - '0';
                                if ((i17 & 1) == 0) {
                                    iCharAt *= 3;
                                }
                                i16 += iCharAt;
                            }
                            int i18 = 10 - (i16 % 10);
                            if (i18 == 10) {
                                i18 = 0;
                            }
                            sb.append(i18);
                            o[] oVarArr = cVar.c;
                            o[] oVarArr2 = cVar2.c;
                            return new m(sb.toString(), null, new o[]{oVarArr[0], oVarArr[1], oVarArr2[0], oVarArr2[1]}, z5.a.f6308n);
                        }
                    }
                }
            }
        }
        throw i.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:33:0x008e A[PHI: r14 r15
  0x008e: PHI (r14v12 boolean) = (r14v4 boolean), (r14v15 boolean) binds: [B:44:0x00ae, B:32:0x008c] A[DONT_GENERATE, DONT_INLINE]
  0x008e: PHI (r15v10 boolean) = (r15v2 boolean), (r15v13 boolean) binds: [B:44:0x00ae, B:32:0x008c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:35:0x0095 A[PHI: r14 r15
  0x0095: PHI (r14v7 boolean) = (r14v4 boolean), (r14v15 boolean) binds: [B:46:0x00b1, B:34:0x0093] A[DONT_GENERATE, DONT_INLINE]
  0x0095: PHI (r15v5 boolean) = (r15v2 boolean), (r15v13 boolean) binds: [B:46:0x00b1, B:34:0x0093] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x009a A[PHI: r14 r15
  0x009a: PHI (r14v6 boolean) = (r14v4 boolean), (r14v15 boolean) binds: [B:46:0x00b1, B:34:0x0093] A[DONT_GENERATE, DONT_INLINE]
  0x009a: PHI (r15v4 boolean) = (r15v2 boolean), (r15v13 boolean) binds: [B:46:0x00b1, B:34:0x0093] A[DONT_GENERATE, DONT_INLINE]] */
    public final b k(f6.a aVar, c cVar, boolean z8) throws i {
        float[] fArr;
        float[] fArr2;
        int[] iArr;
        int[] iArr2;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        int[] iArr3 = this.f4101b;
        Arrays.fill(iArr3, 0);
        int[] iArr4 = cVar.f4106b;
        if (z8) {
            h.f(iArr4[0], aVar, iArr3);
        } else {
            h.e(iArr4[1], aVar, iArr3);
            int i9 = 0;
            for (int length = iArr3.length - 1; i9 < length; length--) {
                int i10 = iArr3[i9];
                iArr3[i9] = iArr3[length];
                iArr3[length] = i10;
                i9++;
            }
        }
        int i11 = z8 ? 16 : 15;
        float fX = a.a.x(iArr3) / i11;
        int i12 = 0;
        while (true) {
            int length2 = iArr3.length;
            fArr = this.d;
            fArr2 = this.c;
            iArr = this.f4102f;
            iArr2 = this.e;
            if (i12 >= length2) {
                break;
            }
            float f8 = iArr3[i12] / fX;
            int i13 = (int) (0.5f + f8);
            if (i13 <= 0) {
                i13 = 1;
            } else if (i13 > 8) {
                i13 = 8;
            }
            int i14 = i12 / 2;
            if ((i12 & 1) == 0) {
                iArr2[i14] = i13;
                fArr2[i14] = f8 - i13;
            } else {
                iArr[i14] = i13;
                fArr[i14] = f8 - i13;
            }
            i12++;
        }
        int iX = a.a.x(iArr2);
        int iX2 = a.a.x(iArr);
        if (z8) {
            if (iX > 12) {
                z9 = false;
                z10 = true;
            } else if (iX < 4) {
                z10 = false;
                z9 = true;
            } else {
                z9 = false;
                z10 = false;
            }
            if (iX2 > 12) {
                z11 = false;
                z12 = true;
            } else if (iX2 < 4) {
                z12 = false;
                z11 = true;
            } else {
                z11 = false;
                z12 = false;
            }
        } else {
            if (iX > 11) {
                z9 = false;
                z10 = true;
            } else if (iX < 5) {
                z10 = false;
                z9 = true;
            } else {
                z9 = false;
                z10 = false;
            }
            if (iX2 > 10) {
                z11 = false;
                z12 = true;
            } else if (iX2 < 4) {
                z12 = false;
                z11 = true;
            } else {
                z11 = false;
                z12 = false;
            }
        }
        int i15 = (iX + iX2) - i11;
        boolean z13 = (iX & 1) == z8;
        boolean z14 = (iX2 & 1) == 1;
        if (i15 != -1) {
            if (i15 != 0) {
                if (i15 != 1) {
                    throw i.d;
                }
                if (z13) {
                    if (z14) {
                        throw i.d;
                    }
                    z10 = true;
                } else {
                    if (!z14) {
                        throw i.d;
                    }
                    z12 = true;
                }
            } else if (z13) {
                if (!z14) {
                    throw i.d;
                }
                if (iX < iX2) {
                    z9 = true;
                    z12 = true;
                } else {
                    z10 = true;
                    z11 = true;
                }
            } else if (z14) {
                throw i.d;
            }
        } else if (z13) {
            if (z14) {
                throw i.d;
            }
            z9 = true;
        } else {
            if (!z14) {
                throw i.d;
            }
            z11 = true;
        }
        if (z9) {
            if (z10) {
                throw i.d;
            }
            a.h(iArr2, fArr2);
        }
        if (z10) {
            a.g(iArr2, fArr2);
        }
        if (z11) {
            if (z12) {
                throw i.d;
            }
            a.h(iArr, fArr2);
        }
        if (z12) {
            a.g(iArr, fArr);
        }
        int i16 = 0;
        int i17 = 0;
        for (int length3 = iArr2.length - 1; length3 >= 0; length3--) {
            int i18 = iArr2[length3];
            i16 = (i16 * 9) + i18;
            i17 += i18;
        }
        int i19 = 0;
        int i20 = 0;
        for (int length4 = iArr.length - 1; length4 >= 0; length4--) {
            int i21 = iArr[length4];
            i19 = (i19 * 9) + i21;
            i20 += i21;
        }
        int i22 = (i19 * 3) + i16;
        if (!z8) {
            if ((i20 & 1) != 0 || i20 > 10 || i20 < 4) {
                throw i.d;
            }
            int i23 = (10 - i20) / 2;
            int i24 = f4112n[i23];
            return new b((o4.b.u(iArr, 9 - i24, false) * f4108j[i23]) + o4.b.u(iArr2, i24, true) + f4110l[i23], i22);
        }
        if ((i17 & 1) != 0 || i17 > 12 || i17 < 4) {
            throw i.d;
        }
        int i25 = (12 - i17) / 2;
        int i26 = f4111m[i25];
        return new b((o4.b.u(iArr2, i26, false) * f4107i[i25]) + o4.b.u(iArr, 9 - i26, true) + f4109k[i25], i22);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d l(f6.a aVar, boolean z8, int i9, Map map) {
        try {
            c cVarN = n(aVar, i9, z8, m(aVar, z8));
            p pVar = map == null ? null : (p) map.get(z5.d.f6320k);
            if (pVar != null) {
                int[] iArr = cVarN.f4106b;
                float f8 = ((iArr[0] + iArr[1]) - 1) / 2.0f;
                if (z8) {
                    f8 = (aVar.c - 1) - f8;
                }
                pVar.a(new o(f8, i9));
            }
            b bVarK = k(aVar, cVarN, true);
            b bVarK2 = k(aVar, cVarN, false);
            return new d((bVarK.f4103a * 1597) + bVarK2.f4103a, (bVarK2.f4104b * 4) + bVarK.f4104b, cVarN);
        } catch (i unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int[] m(f6.a aVar, boolean z8) throws i {
        int[] iArr = this.f4100a;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        int i9 = aVar.c;
        int i10 = 0;
        boolean z9 = false;
        while (i10 < i9) {
            z9 = !aVar.d(i10);
            if (z8 == z9) {
                break;
            }
            i10++;
        }
        int i11 = 0;
        int i12 = i10;
        while (i10 < i9) {
            if (aVar.d(i10) != z9) {
                iArr[i11] = iArr[i11] + 1;
            } else {
                if (i11 != 3) {
                    i11++;
                } else {
                    if (a.i(iArr)) {
                        return new int[]{i12, i10};
                    }
                    i12 += iArr[0] + iArr[1];
                    iArr[0] = iArr[2];
                    iArr[1] = iArr[3];
                    iArr[2] = 0;
                    iArr[3] = 0;
                    i11--;
                }
                iArr[i11] = 1;
                z9 = !z9;
            }
            i10++;
        }
        throw i.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final c n(f6.a aVar, int i9, boolean z8, int[] iArr) throws i {
        int i10;
        int i11;
        boolean zD = aVar.d(iArr[0]);
        int i12 = iArr[0] - 1;
        while (i12 >= 0 && zD != aVar.d(i12)) {
            i12--;
        }
        int i13 = i12 + 1;
        int i14 = iArr[0] - i13;
        int[] iArr2 = this.f4100a;
        System.arraycopy(iArr2, 0, iArr2, 1, iArr2.length - 1);
        iArr2[0] = i14;
        for (int i15 = 0; i15 < 9; i15++) {
            if (h.d(iArr2, f4113o[i15], 0.45f) < 0.2f) {
                int i16 = iArr[1];
                if (z8) {
                    int i17 = aVar.c - 1;
                    i10 = i17 - i16;
                    i11 = i17 - i13;
                } else {
                    i10 = i16;
                    i11 = i13;
                }
                return new c(i15, i11, i10, i9, new int[]{i13, i16});
            }
        }
        throw i.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.h, z5.k
    public final void reset() {
        this.f4114g.clear();
        this.f4115h.clear();
    }
}
