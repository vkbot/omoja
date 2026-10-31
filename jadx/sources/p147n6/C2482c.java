package p147n6;

import java.util.Arrays;
import java.util.Map;
import org.apache.commons.net.nntp.NNTPReply;
import p063f6.C1577a;
import p260z5.C3747c;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.C3759o;
import p260z5.EnumC3745a;

/* JADX INFO: renamed from: n6.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2482c extends AbstractC2487h {

    /* JADX INFO: renamed from: d */
    public static final int[] f6840d = {52, 289, 97, 352, 49, 304, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, 193, 448, 145, NNTPReply.SERVICE_DISCONTINUED, 208, 133, 388, 196, 168, 162, 138, 42};

    /* JADX INFO: renamed from: a */
    public final boolean f6841a;

    /* JADX INFO: renamed from: b */
    public final StringBuilder f6842b = new StringBuilder(20);

    /* JADX INFO: renamed from: c */
    public final int[] f6843c = new int[9];

    public C2482c(boolean z9) {
        this.f6841a = z9;
    }

    /* JADX INFO: renamed from: g */
    public static int m3859g(int[] iArr) {
        int length = iArr.length;
        int i10 = 0;
        while (true) {
            int i11 = Integer.MAX_VALUE;
            for (int i12 : iArr) {
                if (i12 < i11 && i12 > i10) {
                    i11 = i12;
                }
            }
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            for (int i16 = 0; i16 < length; i16++) {
                int i17 = iArr[i16];
                if (i17 > i11) {
                    i14 |= 1 << ((length - 1) - i16);
                    i13++;
                    i15 += i17;
                }
            }
            if (i13 == 3) {
                for (int i18 = 0; i18 < length && i13 > 0; i18++) {
                    int i19 = iArr[i18];
                    if (i19 > i11) {
                        i13--;
                        if ((i19 << 1) >= i15) {
                            return -1;
                        }
                    }
                }
                return i14;
            }
            if (i13 <= 3) {
                return -1;
            }
            i10 = i11;
        }
    }

    @Override // p147n6.AbstractC2487h
    /* JADX INFO: renamed from: b */
    public final C3757m mo3857b(int i10, C1577a c1577a, Map map) throws C3747c, C3753i {
        int i11;
        char cCharAt;
        int[] iArr = this.f6843c;
        Arrays.fill(iArr, 0);
        StringBuilder sb = this.f6842b;
        sb.setLength(0);
        int i12 = c1577a.f3899c;
        int iM2651e = c1577a.m2651e(0);
        int length = iArr.length;
        boolean z9 = false;
        int i13 = 0;
        int i14 = iM2651e;
        while (iM2651e < i12) {
            char c = 1;
            if (c1577a.m2650d(iM2651e) != z9) {
                iArr[i13] = iArr[i13] + 1;
            } else {
                if (i13 != length - 1) {
                    i11 = 1;
                    i13++;
                } else if (m3859g(iArr) == 148 && c1577a.m2654h(Math.max(0, i14 - ((iM2651e - i14) / 2)), i14)) {
                    int[] iArr2 = {i14, iM2651e};
                    int iM2651e2 = c1577a.m2651e(iArr2[1]);
                    int i15 = c1577a.f3899c;
                    while (true) {
                        AbstractC2487h.m3872e(iM2651e2, c1577a, iArr);
                        int iM3859g = m3859g(iArr);
                        if (iM3859g < 0) {
                            throw C3753i.f11192d;
                        }
                        int i16 = 0;
                        while (true) {
                            if (i16 >= 43) {
                                if (iM3859g != 148) {
                                    throw C3753i.f11192d;
                                }
                                cCharAt = '*';
                                break;
                            }
                            if (f6840d[i16] == iM3859g) {
                                cCharAt = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".charAt(i16);
                                break;
                            }
                            i16++;
                        }
                        sb.append(cCharAt);
                        char c10 = c;
                        int i17 = iM2651e2;
                        for (int i18 : iArr) {
                            i17 += i18;
                        }
                        int iM2651e3 = c1577a.m2651e(i17);
                        if (cCharAt == '*') {
                            sb.setLength(sb.length() - 1);
                            int i19 = 0;
                            for (int i20 : iArr) {
                                i19 += i20;
                            }
                            int i21 = (iM2651e3 - iM2651e2) - i19;
                            if (iM2651e3 != i15 && (i21 << 1) < i19) {
                                throw C3753i.f11192d;
                            }
                            if (this.f6841a) {
                                int length2 = sb.length() - 1;
                                int iIndexOf = 0;
                                for (int i22 = 0; i22 < length2; i22++) {
                                    iIndexOf += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".indexOf(sb.charAt(i22));
                                }
                                if (sb.charAt(length2) != "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%".charAt(iIndexOf % 43)) {
                                    throw C3747c.m5979a();
                                }
                                sb.setLength(length2);
                            }
                            if (sb.length() == 0) {
                                throw C3753i.f11192d;
                            }
                            String string = sb.toString();
                            float f8 = (iArr2[c10] + iArr2[0]) / 2.0f;
                            float f10 = (i19 / 2.0f) + iM2651e2;
                            float f11 = i10;
                            return new C3757m(string, null, new C3759o[]{new C3759o(f8, f11), new C3759o(f10, f11)}, EnumC3745a.f11154d);
                        }
                        c = c10;
                        iM2651e2 = iM2651e3;
                    }
                } else {
                    i11 = 1;
                    i14 += iArr[0] + iArr[1];
                    int i23 = i13 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i23);
                    iArr[i23] = 0;
                    iArr[i13] = 0;
                    i13--;
                }
                iArr[i13] = i11;
                z9 = !z9;
            }
            iM2651e++;
        }
        throw C3753i.f11192d;
    }
}
