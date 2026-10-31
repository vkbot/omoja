package n6;

import java.util.Arrays;
import java.util.Map;
import z5.m;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a extends h {
    public static final char[] d = "0123456789-$:/.+ABCD".toCharArray();
    public static final int[] e = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final char[] f3858f = {'A', 'B', 'C', 'D'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringBuilder f3859a = new StringBuilder(20);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f3860b = new int[80];
    public int c = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean g(char[] cArr, char c) {
        if (cArr != null) {
            for (char c9 : cArr) {
                if (c9 == c) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.h
    public final m b(int i9, f6.a aVar, Map map) throws z5.i {
        int i10;
        int[] iArr;
        int i11;
        Arrays.fill(this.f3860b, 0);
        this.c = 0;
        int iF = aVar.f(0);
        int i12 = aVar.c;
        if (iF >= i12) {
            throw z5.i.d;
        }
        int i13 = 1;
        int i14 = 0;
        boolean z8 = true;
        while (iF < i12) {
            if (aVar.d(iF) != z8) {
                i14++;
            } else {
                int[] iArr2 = this.f3860b;
                int i15 = this.c;
                iArr2[i15] = i14;
                int i16 = i15 + 1;
                this.c = i16;
                if (i16 >= iArr2.length) {
                    int[] iArr3 = new int[i16 << 1];
                    System.arraycopy(iArr2, 0, iArr3, 0, i16);
                    this.f3860b = iArr3;
                }
                z8 = !z8;
                i14 = 1;
            }
            iF++;
        }
        int[] iArr4 = this.f3860b;
        int i17 = this.c;
        iArr4[i17] = i14;
        int i18 = i17 + 1;
        this.c = i18;
        if (i18 >= iArr4.length) {
            int[] iArr5 = new int[i18 << 1];
            System.arraycopy(iArr4, 0, iArr5, 0, i18);
            this.f3860b = iArr5;
        }
        int i19 = 1;
        while (i19 < this.c) {
            int iH = h(i19);
            if (iH != -1) {
                char[] cArr = d;
                char c = cArr[iH];
                char[] cArr2 = f3858f;
                if (g(cArr2, c)) {
                    int i20 = 0;
                    for (int i21 = i19; i21 < i19 + 7; i21++) {
                        i20 += this.f3860b[i21];
                    }
                    if (i19 == i13 || this.f3860b[i19 - 1] >= i20 / 2) {
                        StringBuilder sb = this.f3859a;
                        sb.setLength(0);
                        int i22 = i19;
                        while (true) {
                            int iH2 = h(i22);
                            if (iH2 == -1) {
                                throw z5.i.d;
                            }
                            sb.append((char) iH2);
                            i10 = i22 + 8;
                            if ((sb.length() > i13 && g(cArr2, cArr[iH2])) || i10 >= this.c) {
                                break;
                            }
                            i22 = i10;
                            i13 = i13;
                        }
                        int i23 = i22 + 7;
                        int i24 = this.f3860b[i23];
                        int i25 = 0;
                        for (int i26 = -8; i26 < -1; i26++) {
                            i25 += this.f3860b[i10 + i26];
                        }
                        if (i10 < this.c && i24 < i25 / 2) {
                            throw z5.i.d;
                        }
                        int[] iArr6 = new int[4];
                        iArr6[0] = 0;
                        iArr6[i13] = 0;
                        iArr6[2] = 0;
                        iArr6[3] = 0;
                        int[] iArr7 = new int[4];
                        iArr7[0] = 0;
                        iArr7[i13] = 0;
                        iArr7[2] = 0;
                        iArr7[3] = 0;
                        int length = sb.length() - i13;
                        int i27 = i19;
                        int i28 = 0;
                        while (true) {
                            char cCharAt = sb.charAt(i28);
                            iArr = e;
                            int i29 = iArr[cCharAt];
                            int i30 = 6;
                            while (i30 >= 0) {
                                int i31 = (i30 & 1) + ((i29 & 1) << 1);
                                iArr6[i31] = iArr6[i31] + this.f3860b[i27 + i30];
                                iArr7[i31] = iArr7[i31] + 1;
                                i29 >>= 1;
                                i30--;
                                i13 = i13;
                            }
                            int i32 = i13;
                            if (i28 >= length) {
                                break;
                            }
                            i27 += 8;
                            i28++;
                            i13 = i32;
                        }
                        float[] fArr = new float[4];
                        float[] fArr2 = new float[4];
                        int i33 = 0;
                        for (int i34 = 2; i33 < i34; i34 = 2) {
                            fArr2[i33] = 0.0f;
                            int i35 = i33 + 2;
                            float f8 = iArr6[i33] / iArr7[i33];
                            float f9 = iArr6[i35];
                            float f10 = iArr7[i35];
                            float f11 = ((f9 / f10) + f8) / 2.0f;
                            fArr2[i35] = f11;
                            fArr[i33] = f11;
                            fArr[i35] = ((f9 * 2.0f) + 1.5f) / f10;
                            i33++;
                        }
                        int i36 = i19;
                        int i37 = 0;
                        loop8: while (true) {
                            int i38 = iArr[sb.charAt(i37)];
                            for (int i39 = 6; i39 >= 0; i39--) {
                                int i40 = (i39 & 1) + ((i38 & 1) << 1);
                                float f12 = this.f3860b[i36 + i39];
                                if (f12 < fArr2[i40] || f12 > fArr[i40]) {
                                    break loop8;
                                }
                                i38 >>= 1;
                            }
                            if (i37 >= length) {
                                for (int i41 = 0; i41 < sb.length(); i41++) {
                                    sb.setCharAt(i41, cArr[sb.charAt(i41)]);
                                }
                                if (!g(cArr2, sb.charAt(0))) {
                                    throw z5.i.d;
                                }
                                if (!g(cArr2, sb.charAt(sb.length() - 1))) {
                                    throw z5.i.d;
                                }
                                if (sb.length() <= 3) {
                                    throw z5.i.d;
                                }
                                if (map == null || !map.containsKey(z5.d.f6319j)) {
                                    sb.deleteCharAt(sb.length() - 1);
                                    i11 = 0;
                                    sb.deleteCharAt(0);
                                } else {
                                    i11 = 0;
                                }
                                int i42 = i11;
                                while (i11 < i19) {
                                    i42 += this.f3860b[i11];
                                    i11++;
                                }
                                float f13 = i42;
                                while (i19 < i23) {
                                    i42 += this.f3860b[i19];
                                    i19++;
                                }
                                float f14 = i9;
                                return new m(sb.toString(), null, new o[]{new o(f13, f14), new o(i42, f14)}, z5.a.c);
                            }
                            i36 += 8;
                            i37++;
                        }
                        throw z5.i.d;
                    }
                }
            }
            i19 += 2;
            i13 = i13;
        }
        throw z5.i.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int h(int i9) {
        int i10 = i9 + 7;
        if (i10 >= this.c) {
            return -1;
        }
        int[] iArr = this.f3860b;
        int i11 = Integer.MAX_VALUE;
        int i12 = 0;
        int i13 = Integer.MAX_VALUE;
        int i14 = 0;
        for (int i15 = i9; i15 < i10; i15 += 2) {
            int i16 = iArr[i15];
            if (i16 < i13) {
                i13 = i16;
            }
            if (i16 > i14) {
                i14 = i16;
            }
        }
        int i17 = (i13 + i14) / 2;
        int i18 = 0;
        for (int i19 = i9 + 1; i19 < i10; i19 += 2) {
            int i20 = iArr[i19];
            if (i20 < i11) {
                i11 = i20;
            }
            if (i20 > i18) {
                i18 = i20;
            }
        }
        int i21 = (i11 + i18) / 2;
        int i22 = 128;
        int i23 = 0;
        for (int i24 = 0; i24 < 7; i24++) {
            i22 >>= 1;
            if (iArr[i9 + i24] > ((i24 & 1) == 0 ? i17 : i21)) {
                i23 |= i22;
            }
        }
        while (true) {
            int[] iArr2 = e;
            if (i12 >= iArr2.length) {
                return -1;
            }
            if (iArr2[i12] == i23) {
                return i12;
            }
            i12++;
        }
    }
}
