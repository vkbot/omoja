package n6;

import java.util.Arrays;
import java.util.Map;
import z5.m;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c extends h {
    public static final int[] d = {52, 289, 97, 352, 49, 304, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, 193, 448, 145, 400, 208, 133, 388, 196, 168, 162, 138, 42};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f3862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringBuilder f3863b = new StringBuilder(20);
    public final int[] c = new int[9];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(boolean z8) {
        this.f3862a = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int g(int[] iArr) {
        int length = iArr.length;
        int i9 = 0;
        while (true) {
            int i10 = Integer.MAX_VALUE;
            for (int i11 : iArr) {
                if (i11 < i10 && i11 > i9) {
                    i10 = i11;
                }
            }
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < length; i15++) {
                int i16 = iArr[i15];
                if (i16 > i10) {
                    i13 |= 1 << ((length - 1) - i15);
                    i12++;
                    i14 += i16;
                }
            }
            if (i12 == 3) {
                for (int i17 = 0; i17 < length && i12 > 0; i17++) {
                    int i18 = iArr[i17];
                    if (i18 > i10) {
                        i12--;
                        if ((i18 << 1) >= i14) {
                            return -1;
                        }
                    }
                }
                return i13;
            }
            if (i12 <= 3) {
                return -1;
            }
            i9 = i10;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.h
    public final m b(int i9, f6.a aVar, Map map) throws z5.c, z5.i {
        int i10;
        char cCharAt;
        int[] iArr = this.c;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.f3863b;
        sb.setLength(0);
        int i11 = aVar.c;
        int iE = aVar.e(0);
        int length = iArr.length;
        boolean z8 = false;
        int i12 = 0;
        int i13 = iE;
        while (iE < i11) {
            char c = 1;
            if (aVar.d(iE) != z8) {
                iArr[i12] = iArr[i12] + 1;
            } else {
                if (i12 != length - 1) {
                    i10 = 1;
                    i12++;
                } else if (g(iArr) == 148 && aVar.h(Math.max(0, i13 - ((iE - i13) / 2)), i13)) {
                    int[] iArr2 = {i13, iE};
                    int iE2 = aVar.e(iArr2[1]);
                    int i14 = aVar.c;
                    while (true) {
                        h.e(iE2, aVar, iArr);
                        int iG = g(iArr);
                        if (iG < 0) {
                            throw z5.i.d;
                        }
                        int i15 = 0;
                        while (true) {
                            if (i15 >= 43) {
                                if (iG != 148) {
                                    throw z5.i.d;
                                }
                                cCharAt = '*';
                                break;
                            }
                            if (d[i15] == iG) {
                                cCharAt = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".charAt(i15);
                                break;
                            }
                            i15++;
                        }
                        sb.append(cCharAt);
                        char c9 = c;
                        int i16 = iE2;
                        for (int i17 : iArr) {
                            i16 += i17;
                        }
                        int iE3 = aVar.e(i16);
                        if (cCharAt == '*') {
                            sb.setLength(sb.length() - 1);
                            int i18 = 0;
                            for (int i19 : iArr) {
                                i18 += i19;
                            }
                            int i20 = (iE3 - iE2) - i18;
                            if (iE3 != i14 && (i20 << 1) < i18) {
                                throw z5.i.d;
                            }
                            if (this.f3862a) {
                                int length2 = sb.length() - 1;
                                int iIndexOf = 0;
                                for (int i21 = 0; i21 < length2; i21++) {
                                    iIndexOf += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(sb.charAt(i21));
                                }
                                if (sb.charAt(length2) != "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".charAt(iIndexOf % 43)) {
                                    throw z5.c.a();
                                }
                                sb.setLength(length2);
                            }
                            if (sb.length() == 0) {
                                throw z5.i.d;
                            }
                            String string = sb.toString();
                            float f8 = (iArr2[c9] + iArr2[0]) / 2.0f;
                            float f9 = (i18 / 2.0f) + iE2;
                            float f10 = i9;
                            return new m(string, null, new o[]{new o(f8, f10), new o(f9, f10)}, z5.a.d);
                        }
                        c = c9;
                        iE2 = iE3;
                    }
                } else {
                    i10 = 1;
                    i13 += iArr[0] + iArr[1];
                    int i22 = i12 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i22);
                    iArr[i22] = 0;
                    iArr[i12] = 0;
                    i12--;
                }
                iArr[i12] = i10;
                z8 = !z8;
            }
            iE++;
        }
        throw z5.i.d;
    }
}
