package p147n6;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.commons.net.nntp.NNTPReply;
import p063f6.C1577a;
import p260z5.AbstractC3756l;
import p260z5.C3747c;
import p260z5.C3749e;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.C3759o;
import p260z5.EnumC3745a;
import p260z5.EnumC3748d;
import p260z5.EnumC3758n;
import p260z5.InterfaceC3760p;

/* JADX INFO: renamed from: n6.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2490k extends AbstractC2487h {

    /* JADX INFO: renamed from: d */
    public static final int[] f6869d = {1, 1, 1};

    /* JADX INFO: renamed from: e */
    public static final int[] f6870e = {1, 1, 1, 1, 1};

    /* JADX INFO: renamed from: f */
    public static final int[][] f6871f;

    /* JADX INFO: renamed from: g */
    public static final int[][] f6872g;

    /* JADX INFO: renamed from: a */
    public final StringBuilder f6873a = new StringBuilder(20);

    /* JADX INFO: renamed from: b */
    public final C2489j f6874b = new C2489j(0);

    /* JADX INFO: renamed from: c */
    public final C2489j f6875c = new C2489j(1);

    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        f6871f = iArr;
        int[][] iArr2 = new int[20][];
        f6872g = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i10 = 10; i10 < 20; i10++) {
            int[] iArr3 = f6871f[i10 - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i11 = 0; i11 < iArr3.length; i11++) {
                iArr4[i11] = iArr3[(iArr3.length - i11) - 1];
            }
            f6872g[i10] = iArr4;
        }
    }

    /* JADX INFO: renamed from: h */
    public static int m3878h(C1577a c1577a, int[] iArr, int i10, int[][] iArr2) {
        AbstractC2487h.m3872e(i10, c1577a, iArr);
        int length = iArr2.length;
        float f8 = 0.48f;
        int i11 = -1;
        for (int i12 = 0; i12 < length; i12++) {
            float fM3871d = AbstractC2487h.m3871d(iArr, iArr2[i12], 0.7f);
            if (fM3871d < f8) {
                i11 = i12;
                f8 = fM3871d;
            }
        }
        if (i11 >= 0) {
            return i11;
        }
        throw C3753i.f11192d;
    }

    /* JADX INFO: renamed from: l */
    public static int[] m3879l(C1577a c1577a, int i10, boolean z9, int[] iArr, int[] iArr2) {
        int i11 = c1577a.f3899c;
        int iM2652f = z9 ? c1577a.m2652f(i10) : c1577a.m2651e(i10);
        int length = iArr.length;
        boolean z10 = z9;
        int i12 = 0;
        int i13 = iM2652f;
        while (iM2652f < i11) {
            if (c1577a.m2650d(iM2652f) != z10) {
                iArr2[i12] = iArr2[i12] + 1;
            } else {
                if (i12 != length - 1) {
                    i12++;
                } else {
                    if (AbstractC2487h.m3871d(iArr2, iArr, 0.7f) < 0.48f) {
                        return new int[]{i13, iM2652f};
                    }
                    i13 += iArr2[0] + iArr2[1];
                    int i14 = i12 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i14);
                    iArr2[i14] = 0;
                    iArr2[i12] = 0;
                    i12--;
                }
                iArr2[i12] = 1;
                z10 = !z10;
            }
            iM2652f++;
        }
        throw C3753i.f11192d;
    }

    /* JADX INFO: renamed from: m */
    public static int[] m3880m(C1577a c1577a) {
        int[] iArr = new int[3];
        int[] iArrM3879l = null;
        boolean zM2654h = false;
        int i10 = 0;
        while (!zM2654h) {
            Arrays.fill(iArr, 0, 3, 0);
            iArrM3879l = m3879l(c1577a, i10, false, f6869d, iArr);
            int i11 = iArrM3879l[0];
            int i12 = iArrM3879l[1];
            int i13 = i11 - (i12 - i11);
            if (i13 >= 0) {
                zM2654h = c1577a.m2654h(i13, i11);
            }
            i10 = i12;
        }
        return iArrM3879l;
    }

    @Override // p147n6.AbstractC2487h
    /* JADX INFO: renamed from: b */
    public C3757m mo3857b(int i10, C1577a c1577a, Map map) {
        return mo3866k(i10, c1577a, m3880m(c1577a), map);
    }

    /* JADX INFO: renamed from: g */
    public boolean mo3863g(String str) throws C3749e {
        int length = str.length();
        if (length != 0) {
            int i10 = length - 1;
            int iDigit = Character.digit(str.charAt(i10), 10);
            CharSequence charSequenceSubSequence = str.subSequence(0, i10);
            int length2 = charSequenceSubSequence.length();
            int i11 = 0;
            for (int i12 = length2 - 1; i12 >= 0; i12 -= 2) {
                int iCharAt = charSequenceSubSequence.charAt(i12) - '0';
                if (iCharAt < 0 || iCharAt > 9) {
                    throw C3749e.m5980a();
                }
                i11 += iCharAt;
            }
            int i13 = i11 * 3;
            for (int i14 = length2 - 2; i14 >= 0; i14 -= 2) {
                int iCharAt2 = charSequenceSubSequence.charAt(i14) - '0';
                if (iCharAt2 < 0 || iCharAt2 > 9) {
                    throw C3749e.m5980a();
                }
                i13 += iCharAt2;
            }
            if ((1000 - i13) % 10 == iDigit) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: i */
    public int[] mo3864i(C1577a c1577a, int i10) {
        return m3879l(c1577a, i10, false, f6869d, new int[3]);
    }

    /* JADX INFO: renamed from: j */
    public abstract int mo3865j(C1577a c1577a, int[] iArr, StringBuilder sb);

    /* JADX INFO: renamed from: k */
    public C3757m mo3866k(int i10, C1577a c1577a, int[] iArr, Map map) throws C3747c, C3749e, C3753i {
        int length;
        String str = null;
        InterfaceC3760p interfaceC3760p = map == null ? null : (InterfaceC3760p) map.get(EnumC3748d.f11181k);
        if (interfaceC3760p != null) {
            interfaceC3760p.mo1052a(new C3759o((iArr[0] + iArr[1]) / 2.0f, i10));
        }
        StringBuilder sb = this.f6873a;
        sb.setLength(0);
        int iMo3865j = mo3865j(c1577a, iArr, sb);
        if (interfaceC3760p != null) {
            interfaceC3760p.mo1052a(new C3759o(iMo3865j, i10));
        }
        int[] iArrMo3864i = mo3864i(c1577a, iMo3865j);
        if (interfaceC3760p != null) {
            interfaceC3760p.mo1052a(new C3759o((iArrMo3864i[0] + iArrMo3864i[1]) / 2.0f, i10));
        }
        int i11 = iArrMo3864i[1];
        int i12 = (i11 - iArrMo3864i[0]) + i11;
        if (i12 >= c1577a.f3899c || !c1577a.m2654h(i11, i12)) {
            throw C3753i.f11192d;
        }
        String string = sb.toString();
        if (string.length() < 8) {
            throw C3749e.m5980a();
        }
        if (!mo3863g(string)) {
            throw C3747c.m5979a();
        }
        float f8 = (iArr[1] + iArr[0]) / 2.0f;
        float f10 = (iArrMo3864i[1] + iArrMo3864i[0]) / 2.0f;
        EnumC3745a enumC3745aMo3867n = mo3867n();
        float f11 = i10;
        C3757m c3757m = new C3757m(string, null, new C3759o[]{new C3759o(f8, f11), new C3759o(f10, f11)}, enumC3745aMo3867n);
        try {
            C3757m c3757mM3877b = this.f6874b.m3877b(i10, iArrMo3864i[1], c1577a);
            c3757m.m5988b(EnumC3758n.f11209h, c3757mM3877b.f11198a);
            c3757m.m5987a(c3757mM3877b.f11202e);
            C3759o[] c3759oArr = c3757mM3877b.f11200c;
            C3759o[] c3759oArr2 = c3757m.f11200c;
            if (c3759oArr2 == null) {
                c3757m.f11200c = c3759oArr;
            } else if (c3759oArr != null && c3759oArr.length > 0) {
                C3759o[] c3759oArr3 = new C3759o[c3759oArr2.length + c3759oArr.length];
                System.arraycopy(c3759oArr2, 0, c3759oArr3, 0, c3759oArr2.length);
                System.arraycopy(c3759oArr, 0, c3759oArr3, c3759oArr2.length, c3759oArr.length);
                c3757m.f11200c = c3759oArr3;
            }
            length = c3757mM3877b.f11198a.length();
        } catch (AbstractC3756l unused) {
            length = 0;
        }
        int[] iArr2 = map == null ? null : (int[]) map.get(EnumC3748d.f11182l);
        if (iArr2 != null) {
            int length2 = iArr2.length;
            int i13 = 0;
            while (true) {
                if (i13 >= length2) {
                    throw C3753i.f11192d;
                }
                if (length == iArr2[i13]) {
                    break;
                }
                i13++;
            }
        }
        if (enumC3745aMo3867n == EnumC3745a.f11159i || enumC3745aMo3867n == EnumC3745a.f11166p) {
            C2489j c2489j = this.f6875c;
            synchronized (c2489j) {
                if (((ArrayList) c2489j.f6867a).isEmpty()) {
                    c2489j.m3876a("US/CA", new int[]{0, 19});
                    c2489j.m3876a("US", new int[]{30, 39});
                    c2489j.m3876a("US/CA", new int[]{60, 139});
                    c2489j.m3876a("FR", new int[]{300, 379});
                    c2489j.m3876a("BG", new int[]{380});
                    c2489j.m3876a("SI", new int[]{383});
                    c2489j.m3876a("HR", new int[]{385});
                    c2489j.m3876a("BA", new int[]{387});
                    c2489j.m3876a("DE", new int[]{NNTPReply.SERVICE_DISCONTINUED, NNTPReply.POSTING_NOT_ALLOWED});
                    c2489j.m3876a("JP", new int[]{450, 459});
                    c2489j.m3876a("RU", new int[]{460, 469});
                    c2489j.m3876a("TW", new int[]{471});
                    c2489j.m3876a("EE", new int[]{474});
                    c2489j.m3876a("LV", new int[]{475});
                    c2489j.m3876a("AZ", new int[]{476});
                    c2489j.m3876a("LT", new int[]{477});
                    c2489j.m3876a("UZ", new int[]{478});
                    c2489j.m3876a("LK", new int[]{479});
                    c2489j.m3876a("PH", new int[]{NNTPReply.AUTHENTICATION_REQUIRED});
                    c2489j.m3876a("BY", new int[]{481});
                    c2489j.m3876a("UA", new int[]{NNTPReply.AUTHENTICATION_REJECTED});
                    c2489j.m3876a("MD", new int[]{484});
                    c2489j.m3876a("AM", new int[]{485});
                    c2489j.m3876a("GE", new int[]{486});
                    c2489j.m3876a("KZ", new int[]{487});
                    c2489j.m3876a("HK", new int[]{489});
                    c2489j.m3876a("JP", new int[]{490, 499});
                    c2489j.m3876a("GB", new int[]{500, 509});
                    c2489j.m3876a("GR", new int[]{520});
                    c2489j.m3876a("LB", new int[]{528});
                    c2489j.m3876a("CY", new int[]{529});
                    c2489j.m3876a("MK", new int[]{531});
                    c2489j.m3876a("MT", new int[]{FTPReply.FAILED_SECURITY_CHECK});
                    c2489j.m3876a("IE", new int[]{539});
                    c2489j.m3876a("BE/LU", new int[]{540, 549});
                    c2489j.m3876a("PT", new int[]{560});
                    c2489j.m3876a("IS", new int[]{569});
                    c2489j.m3876a("DK", new int[]{570, 579});
                    c2489j.m3876a("PL", new int[]{590});
                    c2489j.m3876a("RO", new int[]{594});
                    c2489j.m3876a("HU", new int[]{599});
                    c2489j.m3876a("ZA", new int[]{600, 601});
                    c2489j.m3876a("GH", new int[]{TypedValues.MotionType.TYPE_EASING});
                    c2489j.m3876a("BH", new int[]{TypedValues.MotionType.TYPE_DRAW_PATH});
                    c2489j.m3876a("MU", new int[]{TypedValues.MotionType.TYPE_POLAR_RELATIVETO});
                    c2489j.m3876a("MA", new int[]{TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE});
                    c2489j.m3876a("DZ", new int[]{613});
                    c2489j.m3876a("KE", new int[]{616});
                    c2489j.m3876a("CI", new int[]{618});
                    c2489j.m3876a("TN", new int[]{619});
                    c2489j.m3876a("SY", new int[]{621});
                    c2489j.m3876a("EG", new int[]{622});
                    c2489j.m3876a("LY", new int[]{624});
                    c2489j.m3876a("JO", new int[]{625});
                    c2489j.m3876a("IR", new int[]{626});
                    c2489j.m3876a("KW", new int[]{627});
                    c2489j.m3876a("SA", new int[]{628});
                    c2489j.m3876a("AE", new int[]{629});
                    c2489j.m3876a("FI", new int[]{640, 649});
                    c2489j.m3876a("CN", new int[]{690, 695});
                    c2489j.m3876a("NO", new int[]{TypedValues.TransitionType.TYPE_DURATION, 709});
                    c2489j.m3876a("IL", new int[]{729});
                    c2489j.m3876a("SE", new int[]{730, 739});
                    c2489j.m3876a("GT", new int[]{740});
                    c2489j.m3876a("SV", new int[]{741});
                    c2489j.m3876a("HN", new int[]{742});
                    c2489j.m3876a("NI", new int[]{743});
                    c2489j.m3876a("CR", new int[]{744});
                    c2489j.m3876a("PA", new int[]{745});
                    c2489j.m3876a("DO", new int[]{746});
                    c2489j.m3876a("MX", new int[]{750});
                    c2489j.m3876a("CA", new int[]{754, 755});
                    c2489j.m3876a("VE", new int[]{759});
                    c2489j.m3876a("CH", new int[]{760, 769});
                    c2489j.m3876a("CO", new int[]{770});
                    c2489j.m3876a("UY", new int[]{773});
                    c2489j.m3876a("PE", new int[]{775});
                    c2489j.m3876a("BO", new int[]{777});
                    c2489j.m3876a("AR", new int[]{779});
                    c2489j.m3876a("CL", new int[]{780});
                    c2489j.m3876a("PY", new int[]{784});
                    c2489j.m3876a("PE", new int[]{785});
                    c2489j.m3876a("EC", new int[]{786});
                    c2489j.m3876a("BR", new int[]{789, 790});
                    c2489j.m3876a("IT", new int[]{800, 839});
                    c2489j.m3876a("ES", new int[]{840, 849});
                    c2489j.m3876a("CU", new int[]{850});
                    c2489j.m3876a("SK", new int[]{858});
                    c2489j.m3876a("CZ", new int[]{859});
                    c2489j.m3876a("YU", new int[]{860});
                    c2489j.m3876a("MN", new int[]{865});
                    c2489j.m3876a("KP", new int[]{867});
                    c2489j.m3876a("TR", new int[]{868, 869});
                    c2489j.m3876a("NL", new int[]{870, 879});
                    c2489j.m3876a("KR", new int[]{880});
                    c2489j.m3876a("TH", new int[]{885});
                    c2489j.m3876a("SG", new int[]{888});
                    c2489j.m3876a("IN", new int[]{890});
                    c2489j.m3876a("VN", new int[]{893});
                    c2489j.m3876a("PK", new int[]{896});
                    c2489j.m3876a("ID", new int[]{899});
                    c2489j.m3876a("AT", new int[]{TypedValues.Custom.TYPE_INT, 919});
                    c2489j.m3876a("AU", new int[]{930, 939});
                    c2489j.m3876a("AZ", new int[]{940, 949});
                    c2489j.m3876a("MY", new int[]{955});
                    c2489j.m3876a("MO", new int[]{958});
                }
            }
            int i14 = Integer.parseInt(string.substring(0, 3));
            int size = ((ArrayList) c2489j.f6867a).size();
            for (int i15 = 0; i15 < size; i15++) {
                int[] iArr3 = (int[]) ((ArrayList) c2489j.f6867a).get(i15);
                int i16 = iArr3[0];
                if (i14 < i16) {
                    break;
                }
                if (iArr3.length != 1) {
                    i16 = iArr3[1];
                }
                if (i14 <= i16) {
                    str = (String) ((ArrayList) c2489j.f6868b).get(i15);
                    break;
                }
            }
            if (str != null) {
                c3757m.m5988b(EnumC3758n.f11208g, str);
            }
        }
        return c3757m;
    }

    /* JADX INFO: renamed from: n */
    public abstract EnumC3745a mo3867n();
}
