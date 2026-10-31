package p147n6;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Arrays;
import java.util.Map;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.commons.net.nntp.NNTPReply;
import org.apache.commons.net.smtp.SMTPReply;
import p063f6.C1577a;
import p260z5.C3747c;
import p260z5.C3749e;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.C3759o;
import p260z5.EnumC3745a;

/* JADX INFO: renamed from: n6.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2483d extends AbstractC2487h {

    /* JADX INFO: renamed from: c */
    public static final char[] f6844c = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".toCharArray();

    /* JADX INFO: renamed from: d */
    public static final int[] f6845d;

    /* JADX INFO: renamed from: e */
    public static final int f6846e;

    /* JADX INFO: renamed from: a */
    public final StringBuilder f6847a = new StringBuilder(20);

    /* JADX INFO: renamed from: b */
    public final int[] f6848b = new int[6];

    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, 290, 336, 274, 266, TypedValues.CycleType.TYPE_WAVE_OFFSET, 420, 418, 404, TypedValues.CycleType.TYPE_VISIBILITY, 394, 360, 356, SMTPReply.START_MAIL_INPUT, 308, 282, 344, FTPReply.NEED_ACCOUNT, 326, 300, 278, NNTPReply.TRANSFER_FAILED, 434, 428, 422, 406, 410, 364, 358, 310, 314, 302, 468, 466, 458, 366, 374, NNTPReply.NO_SUCH_ARTICLE_FOUND, 294, 474, 470, 306, FTPReply.FILE_ACTION_PENDING};
        f6845d = iArr;
        f6846e = iArr[47];
    }

    /* JADX INFO: renamed from: g */
    public static void m3860g(CharSequence charSequence, int i10, int i11) throws C3747c {
        int iIndexOf = 0;
        int i12 = 1;
        for (int i13 = i10 - 1; i13 >= 0; i13--) {
            iIndexOf += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(charSequence.charAt(i13)) * i12;
            i12++;
            if (i12 > i11) {
                i12 = 1;
            }
        }
        if (charSequence.charAt(i10) != f6844c[iIndexOf % 47]) {
            throw C3747c.m5979a();
        }
    }

    /* JADX INFO: renamed from: h */
    public static int m3861h(int[] iArr) {
        int i10 = 0;
        for (int i11 : iArr) {
            i10 += i11;
        }
        int length = iArr.length;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            int iRound = Math.round((iArr[i13] * 9.0f) / i10);
            if (iRound <= 0 || iRound > 4) {
                return -1;
            }
            if ((i13 & 1) == 0) {
                for (int i14 = 0; i14 < iRound; i14++) {
                    i12 = (i12 << 1) | 1;
                }
            } else {
                i12 <<= iRound;
            }
        }
        return i12;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:42:0x00d3  */
    @Override // p147n6.AbstractC2487h
    /* JADX INFO: renamed from: b */
    public final C3757m mo3857b(int i10, C1577a c1577a, Map map) throws C3747c, C3749e, C3753i {
        int i11;
        char c;
        int i12 = c1577a.f3899c;
        int iM2651e = c1577a.m2651e(0);
        int[] iArr = this.f6848b;
        Arrays.fill(iArr, 0);
        int length = iArr.length;
        boolean z9 = false;
        int i13 = 0;
        int i14 = iM2651e;
        while (iM2651e < i12) {
            if (c1577a.m2650d(iM2651e) != z9) {
                iArr[i13] = iArr[i13] + 1;
            } else {
                if (i13 != length - 1) {
                    i13++;
                } else if (m3861h(iArr) == f6846e) {
                    int[] iArr2 = {i14, iM2651e};
                    int iM2651e2 = c1577a.m2651e(iArr2[1]);
                    int i15 = c1577a.f3899c;
                    Arrays.fill(iArr, 0);
                    StringBuilder sb = this.f6847a;
                    sb.setLength(0);
                    while (true) {
                        AbstractC2487h.m3872e(iM2651e2, c1577a, iArr);
                        int iM3861h = m3861h(iArr);
                        if (iM3861h < 0) {
                            throw C3753i.f11192d;
                        }
                        int i16 = 0;
                        while (true) {
                            int[] iArr3 = f6845d;
                            if (i16 >= iArr3.length) {
                                throw C3753i.f11192d;
                            }
                            if (iArr3[i16] == iM3861h) {
                                break;
                            }
                            i16++;
                        }
                        char c10 = f6844c[i16];
                        sb.append(c10);
                        int i17 = iM2651e2;
                        for (int i18 : iArr) {
                            i17 += i18;
                        }
                        int iM2651e3 = c1577a.m2651e(i17);
                        if (c10 == '*') {
                            sb.deleteCharAt(sb.length() - 1);
                            int i19 = 0;
                            for (int i20 : iArr) {
                                i19 += i20;
                            }
                            if (iM2651e3 == i15 || !c1577a.m2650d(iM2651e3)) {
                                throw C3753i.f11192d;
                            }
                            if (sb.length() < 2) {
                                throw C3753i.f11192d;
                            }
                            int length2 = sb.length();
                            m3860g(sb, length2 - 2, 20);
                            m3860g(sb, length2 - 1, 15);
                            sb.setLength(sb.length() - 2);
                            int length3 = sb.length();
                            StringBuilder sb2 = new StringBuilder(length3);
                            int i21 = 0;
                            while (i21 < length3) {
                                char cCharAt = sb.charAt(i21);
                                if (cCharAt >= 'a' && cCharAt <= 'd') {
                                    if (i21 >= length3 - 1) {
                                        throw C3749e.m5980a();
                                    }
                                    i21++;
                                    char cCharAt2 = sb.charAt(i21);
                                    switch (cCharAt) {
                                        case 'a':
                                            if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                                                throw C3749e.m5980a();
                                            }
                                            i11 = cCharAt2 - '@';
                                            c = (char) i11;
                                            sb2.append(c);
                                            break;
                                            break;
                                        case 'b':
                                            if (cCharAt2 >= 'A' && cCharAt2 <= 'E') {
                                                i11 = cCharAt2 - '&';
                                            } else if (cCharAt2 >= 'F' && cCharAt2 <= 'J') {
                                                i11 = cCharAt2 - 11;
                                            } else if (cCharAt2 < 'K' || cCharAt2 > 'O') {
                                                if (cCharAt2 >= 'P' && cCharAt2 <= 'T') {
                                                    i11 = cCharAt2 + '+';
                                                } else if (cCharAt2 == 'U') {
                                                    c = 0;
                                                } else if (cCharAt2 == 'V') {
                                                    c = '@';
                                                } else if (cCharAt2 == 'W') {
                                                    c = '`';
                                                } else {
                                                    if (cCharAt2 < 'X' || cCharAt2 > 'Z') {
                                                        throw C3749e.m5980a();
                                                    }
                                                    c = 127;
                                                }
                                                sb2.append(c);
                                            } else {
                                                i11 = cCharAt2 + 16;
                                            }
                                            c = (char) i11;
                                            sb2.append(c);
                                            break;
                                        case 'c':
                                            if (cCharAt2 >= 'A' && cCharAt2 <= 'O') {
                                                i11 = cCharAt2 - ' ';
                                                c = (char) i11;
                                            } else {
                                                if (cCharAt2 != 'Z') {
                                                    throw C3749e.m5980a();
                                                }
                                                c = ':';
                                            }
                                            sb2.append(c);
                                            break;
                                        case 'd':
                                            if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                                                throw C3749e.m5980a();
                                            }
                                            i11 = cCharAt2 + ' ';
                                            c = (char) i11;
                                            sb2.append(c);
                                            break;
                                            break;
                                        default:
                                            c = 0;
                                            sb2.append(c);
                                            break;
                                    }
                                } else {
                                    sb2.append(cCharAt);
                                }
                                i21++;
                            }
                            float f8 = i10;
                            return new C3757m(sb2.toString(), null, new C3759o[]{new C3759o((iArr2[1] + iArr2[0]) / 2.0f, f8), new C3759o((i19 / 2.0f) + iM2651e2, f8)}, EnumC3745a.f11155e);
                        }
                        iM2651e2 = iM2651e3;
                    }
                } else {
                    i14 += iArr[0] + iArr[1];
                    int i22 = i13 - 1;
                    System.arraycopy(iArr, 2, iArr, 0, i22);
                    iArr[i22] = 0;
                    iArr[i13] = 0;
                    i13--;
                }
                iArr[i13] = 1;
                z9 = !z9;
            }
            iM2651e++;
        }
        throw C3753i.f11192d;
    }
}
