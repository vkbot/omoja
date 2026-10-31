package p147n6;

import java.util.Arrays;
import java.util.Map;
import p063f6.C1577a;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.C3759o;
import p260z5.EnumC3745a;
import p260z5.EnumC3748d;

/* JADX INFO: renamed from: n6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2480a extends AbstractC2487h {

    /* JADX INFO: renamed from: d */
    public static final char[] f6833d = "0123456789-$:/.+ABCD".toCharArray();

    /* JADX INFO: renamed from: e */
    public static final int[] f6834e = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};

    /* JADX INFO: renamed from: f */
    public static final char[] f6835f = {'A', 'B', 'C', 'D'};

    /* JADX INFO: renamed from: a */
    public final StringBuilder f6836a = new StringBuilder(20);

    /* JADX INFO: renamed from: b */
    public int[] f6837b = new int[80];

    /* JADX INFO: renamed from: c */
    public int f6838c = 0;

    /* JADX INFO: renamed from: g */
    public static boolean m3856g(char[] cArr, char c) {
        if (cArr != null) {
            for (char c10 : cArr) {
                if (c10 == c) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // p147n6.AbstractC2487h
    /* JADX INFO: renamed from: b */
    public final C3757m mo3857b(int i10, C1577a c1577a, Map map) throws C3753i {
        int i11;
        int[] iArr;
        int i12;
        Arrays.fill(this.f6837b, 0);
        this.f6838c = 0;
        int iM2652f = c1577a.m2652f(0);
        int i13 = c1577a.f3899c;
        if (iM2652f >= i13) {
            throw C3753i.f11192d;
        }
        int i14 = 1;
        int i15 = 0;
        boolean z9 = true;
        while (iM2652f < i13) {
            if (c1577a.m2650d(iM2652f) != z9) {
                i15++;
            } else {
                int[] iArr2 = this.f6837b;
                int i16 = this.f6838c;
                iArr2[i16] = i15;
                int i17 = i16 + 1;
                this.f6838c = i17;
                if (i17 >= iArr2.length) {
                    int[] iArr3 = new int[i17 << 1];
                    System.arraycopy(iArr2, 0, iArr3, 0, i17);
                    this.f6837b = iArr3;
                }
                z9 = !z9;
                i15 = 1;
            }
            iM2652f++;
        }
        int[] iArr4 = this.f6837b;
        int i18 = this.f6838c;
        iArr4[i18] = i15;
        int i19 = i18 + 1;
        this.f6838c = i19;
        if (i19 >= iArr4.length) {
            int[] iArr5 = new int[i19 << 1];
            System.arraycopy(iArr4, 0, iArr5, 0, i19);
            this.f6837b = iArr5;
        }
        int i20 = 1;
        while (i20 < this.f6838c) {
            int iM3858h = m3858h(i20);
            if (iM3858h != -1) {
                char[] cArr = f6833d;
                char c = cArr[iM3858h];
                char[] cArr2 = f6835f;
                if (m3856g(cArr2, c)) {
                    int i21 = 0;
                    for (int i22 = i20; i22 < i20 + 7; i22++) {
                        i21 += this.f6837b[i22];
                    }
                    if (i20 == i14 || this.f6837b[i20 - 1] >= i21 / 2) {
                        StringBuilder sb = this.f6836a;
                        sb.setLength(0);
                        int i23 = i20;
                        while (true) {
                            int iM3858h2 = m3858h(i23);
                            if (iM3858h2 == -1) {
                                throw C3753i.f11192d;
                            }
                            sb.append((char) iM3858h2);
                            i11 = i23 + 8;
                            if ((sb.length() > i14 && m3856g(cArr2, cArr[iM3858h2])) || i11 >= this.f6838c) {
                                break;
                            }
                            i23 = i11;
                            i14 = i14;
                        }
                        int i24 = i23 + 7;
                        int i25 = this.f6837b[i24];
                        int i26 = 0;
                        for (int i27 = -8; i27 < -1; i27++) {
                            i26 += this.f6837b[i11 + i27];
                        }
                        if (i11 < this.f6838c && i25 < i26 / 2) {
                            throw C3753i.f11192d;
                        }
                        int[] iArr6 = new int[4];
                        iArr6[0] = 0;
                        iArr6[i14] = 0;
                        iArr6[2] = 0;
                        iArr6[3] = 0;
                        int[] iArr7 = new int[4];
                        iArr7[0] = 0;
                        iArr7[i14] = 0;
                        iArr7[2] = 0;
                        iArr7[3] = 0;
                        int length = sb.length() - i14;
                        int i28 = i20;
                        int i29 = 0;
                        while (true) {
                            char cCharAt = sb.charAt(i29);
                            iArr = f6834e;
                            int i30 = iArr[cCharAt];
                            int i31 = 6;
                            while (i31 >= 0) {
                                int i32 = (i31 & 1) + ((i30 & 1) << 1);
                                iArr6[i32] = iArr6[i32] + this.f6837b[i28 + i31];
                                iArr7[i32] = iArr7[i32] + 1;
                                i30 >>= 1;
                                i31--;
                                i14 = i14;
                            }
                            int i33 = i14;
                            if (i29 >= length) {
                                break;
                            }
                            i28 += 8;
                            i29++;
                            i14 = i33;
                        }
                        float[] fArr = new float[4];
                        float[] fArr2 = new float[4];
                        int i34 = 0;
                        for (int i35 = 2; i34 < i35; i35 = 2) {
                            fArr2[i34] = 0.0f;
                            int i36 = i34 + 2;
                            float f8 = iArr6[i34] / iArr7[i34];
                            float f10 = iArr6[i36];
                            float f11 = iArr7[i36];
                            float f12 = ((f10 / f11) + f8) / 2.0f;
                            fArr2[i36] = f12;
                            fArr[i34] = f12;
                            fArr[i36] = ((f10 * 2.0f) + 1.5f) / f11;
                            i34++;
                        }
                        int i37 = i20;
                        int i38 = 0;
                        loop8: while (true) {
                            int i39 = iArr[sb.charAt(i38)];
                            for (int i40 = 6; i40 >= 0; i40--) {
                                int i41 = (i40 & 1) + ((i39 & 1) << 1);
                                float f13 = this.f6837b[i37 + i40];
                                if (f13 < fArr2[i41] || f13 > fArr[i41]) {
                                    break loop8;
                                }
                                i39 >>= 1;
                            }
                            if (i38 >= length) {
                                for (int i42 = 0; i42 < sb.length(); i42++) {
                                    sb.setCharAt(i42, cArr[sb.charAt(i42)]);
                                }
                                if (!m3856g(cArr2, sb.charAt(0))) {
                                    throw C3753i.f11192d;
                                }
                                if (!m3856g(cArr2, sb.charAt(sb.length() - 1))) {
                                    throw C3753i.f11192d;
                                }
                                if (sb.length() <= 3) {
                                    throw C3753i.f11192d;
                                }
                                if (map == null || !map.containsKey(EnumC3748d.f11180j)) {
                                    sb.deleteCharAt(sb.length() - 1);
                                    i12 = 0;
                                    sb.deleteCharAt(0);
                                } else {
                                    i12 = 0;
                                }
                                int i43 = i12;
                                while (i12 < i20) {
                                    i43 += this.f6837b[i12];
                                    i12++;
                                }
                                float f14 = i43;
                                while (i20 < i24) {
                                    i43 += this.f6837b[i20];
                                    i20++;
                                }
                                float f15 = i10;
                                return new C3757m(sb.toString(), null, new C3759o[]{new C3759o(f14, f15), new C3759o(i43, f15)}, EnumC3745a.f11153c);
                            }
                            i37 += 8;
                            i38++;
                        }
                        throw C3753i.f11192d;
                    }
                }
            }
            i20 += 2;
            i14 = i14;
        }
        throw C3753i.f11192d;
    }

    /* JADX INFO: renamed from: h */
    public final int m3858h(int i10) {
        int i11 = i10 + 7;
        if (i11 >= this.f6838c) {
            return -1;
        }
        int[] iArr = this.f6837b;
        int i12 = Integer.MAX_VALUE;
        int i13 = 0;
        int i14 = Integer.MAX_VALUE;
        int i15 = 0;
        for (int i16 = i10; i16 < i11; i16 += 2) {
            int i17 = iArr[i16];
            if (i17 < i14) {
                i14 = i17;
            }
            if (i17 > i15) {
                i15 = i17;
            }
        }
        int i18 = (i14 + i15) / 2;
        int i19 = 0;
        for (int i20 = i10 + 1; i20 < i11; i20 += 2) {
            int i21 = iArr[i20];
            if (i21 < i12) {
                i12 = i21;
            }
            if (i21 > i19) {
                i19 = i21;
            }
        }
        int i22 = (i12 + i19) / 2;
        int i23 = 128;
        int i24 = 0;
        for (int i25 = 0; i25 < 7; i25++) {
            i23 >>= 1;
            if (iArr[i10 + i25] > ((i25 & 1) == 0 ? i18 : i22)) {
                i24 |= i23;
            }
        }
        while (true) {
            int[] iArr2 = f6834e;
            if (i13 >= iArr2.length) {
                return -1;
            }
            if (iArr2[i13] == i24) {
                return i13;
            }
            i13++;
        }
    }
}
