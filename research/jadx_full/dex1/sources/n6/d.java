package n6;

import androidx.constraintlayout.core.motion.utils.TypedValues$CycleType;
import java.util.Arrays;
import java.util.Map;
import z5.m;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d extends h {
    public static final char[] c = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".toCharArray();
    public static final int[] d;
    public static final int e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringBuilder f3864a = new StringBuilder(20);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f3865b = new int[6];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, 290, 336, 274, 266, TypedValues$CycleType.TYPE_WAVE_OFFSET, TypedValues$CycleType.TYPE_EASING, 418, 404, TypedValues$CycleType.TYPE_VISIBILITY, 394, 360, 356, 354, 308, 282, 344, 332, 326, 300, 278, 436, 434, 428, TypedValues$CycleType.TYPE_CUSTOM_WAVE_SHAPE, 406, 410, 364, 358, 310, 314, 302, 468, 466, 458, 366, 374, 430, 294, 474, 470, 306, 350};
        d = iArr;
        e = iArr[47];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void g(CharSequence charSequence, int i9, int i10) throws z5.c {
        int iIndexOf = 0;
        int i11 = 1;
        for (int i12 = i9 - 1; i12 >= 0; i12--) {
            iIndexOf += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(charSequence.charAt(i12)) * i11;
            i11++;
            if (i11 > i10) {
                i11 = 1;
            }
        }
        if (charSequence.charAt(i9) != c[iIndexOf % 47]) {
            throw z5.c.a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int h(int[] iArr) {
        int i9 = 0;
        for (int i10 : iArr) {
            i9 += i10;
        }
        int length = iArr.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            int iRound = Math.round((iArr[i12] * 9.0f) / i9);
            if (iRound <= 0 || iRound > 4) {
                return -1;
            }
            if ((i12 & 1) == 0) {
                for (int i13 = 0; i13 < iRound; i13++) {
                    i11 = (i11 << 1) | 1;
                }
            } else {
                i11 <<= iRound;
            }
        }
        return i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:42:0x00d3  */
    @Override // n6.h
    public final m b(int i9, f6.a aVar, Map map) throws z5.c, z5.e, z5.i {
        int i10;
        char c9;
        int i11 = aVar.c;
        int iE = aVar.e(0);
        int[] iArr = this.f3865b;
        Arrays.fill(iArr, 0);
        int length = iArr.length;
        boolean z8 = false;
        int i12 = 0;
        int i13 = iE;
        while (iE < i11) {
            if (aVar.d(iE) != z8) {
                iArr[i12] = iArr[i12] + 1;
            } else {
                if (i12 != length - 1) {
                    i12++;
                } else if (h(iArr) == e) {
                    int[] iArr2 = {i13, iE};
                    int iE2 = aVar.e(iArr2[1]);
                    int i14 = aVar.c;
                    Arrays.fill(iArr, 0);
                    StringBuilder sb = this.f3864a;
                    sb.setLength(0);
                    while (true) {
                        h.e(iE2, aVar, iArr);
                        int iH = h(iArr);
                        if (iH < 0) {
                            throw z5.i.d;
                        }
                        int i15 = 0;
                        while (true) {
                            int[] iArr3 = d;
                            if (i15 >= iArr3.length) {
                                throw z5.i.d;
                            }
                            if (iArr3[i15] == iH) {
                                break;
                            }
                            i15++;
                        }
                        char c10 = c[i15];
                        sb.append(c10);
                        int i16 = iE2;
                        for (int i17 : iArr) {
                            i16 += i17;
                        }
                        int iE3 = aVar.e(i16);
                        if (c10 == '*') {
                            sb.deleteCharAt(sb.length() - 1);
                            int i18 = 0;
                            for (int i19 : iArr) {
                                i18 += i19;
                            }
                            if (iE3 == i14 || !aVar.d(iE3)) {
                                throw z5.i.d;
                            }
                            if (sb.length() < 2) {
                                throw z5.i.d;
                            }
                            int length2 = sb.length();
                            g(sb, length2 - 2, 20);
                            g(sb, length2 - 1, 15);
                            sb.setLength(sb.length() - 2);
                            int length3 = sb.length();
                            StringBuilder sb2 = new StringBuilder(length3);
                            int i20 = 0;
                            while (i20 < length3) {
                                char cCharAt = sb.charAt(i20);
                                if (cCharAt >= 'a' && cCharAt <= 'd') {
                                    if (i20 >= length3 - 1) {
                                        throw z5.e.a();
                                    }
                                    i20++;
                                    char cCharAt2 = sb.charAt(i20);
                                    switch (cCharAt) {
                                        case 'a':
                                            if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                                                throw z5.e.a();
                                            }
                                            i10 = cCharAt2 - '@';
                                            c9 = (char) i10;
                                            sb2.append(c9);
                                            break;
                                            break;
                                        case 'b':
                                            if (cCharAt2 >= 'A' && cCharAt2 <= 'E') {
                                                i10 = cCharAt2 - '&';
                                            } else if (cCharAt2 >= 'F' && cCharAt2 <= 'J') {
                                                i10 = cCharAt2 - 11;
                                            } else if (cCharAt2 < 'K' || cCharAt2 > 'O') {
                                                if (cCharAt2 >= 'P' && cCharAt2 <= 'T') {
                                                    i10 = cCharAt2 + '+';
                                                } else if (cCharAt2 == 'U') {
                                                    c9 = 0;
                                                } else if (cCharAt2 == 'V') {
                                                    c9 = '@';
                                                } else if (cCharAt2 == 'W') {
                                                    c9 = '`';
                                                } else {
                                                    if (cCharAt2 < 'X' || cCharAt2 > 'Z') {
                                                        throw z5.e.a();
                                                    }
                                                    c9 = 127;
                                                }
                                                sb2.append(c9);
                                            } else {
                                                i10 = cCharAt2 + 16;
                                            }
                                            c9 = (char) i10;
                                            sb2.append(c9);
                                            break;
                                        case 'c':
                                            if (cCharAt2 >= 'A' && cCharAt2 <= 'O') {
                                                i10 = cCharAt2 - ' ';
                                                c9 = (char) i10;
                                            } else {
                                                if (cCharAt2 != 'Z') {
                                                    throw z5.e.a();
                                                }
                                                c9 = ':';
                                            }
                                            sb2.append(c9);
                                            break;
                                        case 'd':
                                            if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                                                throw z5.e.a();
                                            }
                                            i10 = cCharAt2 + ' ';
                                            c9 = (char) i10;
                                            sb2.append(c9);
                                            break;
                                            break;
                                        default:
                                            c9 = 0;
                                            sb2.append(c9);
                                            break;
                                    }
                                } else {
                                    sb2.append(cCharAt);
                                }
                                i20++;
                            }
                            float f8 = i9;
                            return new m(sb2.toString(), null, new o[]{new o((iArr2[1] + iArr2[0]) / 2.0f, f8), new o((i18 / 2.0f) + iE2, f8)}, z5.a.e);
                        }
                        iE2 = iE3;
                    }
                } else {
                    i13 += iArr[0] + iArr[1];
                    int i21 = i12 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i21);
                    iArr[i21] = 0;
                    iArr[i12] = 0;
                    i12--;
                }
                iArr[i12] = 1;
                z8 = !z8;
            }
            iE++;
        }
        throw z5.i.d;
    }
}
