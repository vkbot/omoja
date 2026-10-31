package n6;

import androidx.constraintlayout.core.motion.utils.TypedValues$Custom;
import androidx.constraintlayout.core.motion.utils.TypedValues$MotionType;
import androidx.constraintlayout.core.motion.utils.TypedValues$TransitionType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import z5.l;
import z5.m;
import z5.n;
import z5.o;
import z5.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class k extends h {
    public static final int[] d = {1, 1, 1};
    public static final int[] e = {1, 1, 1, 1, 1};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[][] f3879f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[][] f3880g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringBuilder f3881a = new StringBuilder(20);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j f3882b = new j(0);
    public final j c = new j(1);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        f3879f = iArr;
        int[][] iArr2 = new int[20][];
        f3880g = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i9 = 10; i9 < 20; i9++) {
            int[] iArr3 = f3879f[i9 - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i10 = 0; i10 < iArr3.length; i10++) {
                iArr4[i10] = iArr3[(iArr3.length - i10) - 1];
            }
            f3880g[i9] = iArr4;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int h(f6.a aVar, int[] iArr, int i9, int[][] iArr2) {
        h.e(i9, aVar, iArr);
        int length = iArr2.length;
        float f8 = 0.48f;
        int i10 = -1;
        for (int i11 = 0; i11 < length; i11++) {
            float fD = h.d(iArr, iArr2[i11], 0.7f);
            if (fD < f8) {
                i10 = i11;
                f8 = fD;
            }
        }
        if (i10 >= 0) {
            return i10;
        }
        throw z5.i.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int[] l(f6.a aVar, int i9, boolean z8, int[] iArr, int[] iArr2) {
        int i10 = aVar.c;
        int iF = z8 ? aVar.f(i9) : aVar.e(i9);
        int length = iArr.length;
        boolean z9 = z8;
        int i11 = 0;
        int i12 = iF;
        while (iF < i10) {
            if (aVar.d(iF) != z9) {
                iArr2[i11] = iArr2[i11] + 1;
            } else {
                if (i11 != length - 1) {
                    i11++;
                } else {
                    if (h.d(iArr2, iArr, 0.7f) < 0.48f) {
                        return new int[]{i12, iF};
                    }
                    i12 += iArr2[0] + iArr2[1];
                    int i13 = i11 - 1;
                    System.arraycopy(iArr2, 2, iArr2, 0, i13);
                    iArr2[i13] = 0;
                    iArr2[i11] = 0;
                    i11--;
                }
                iArr2[i11] = 1;
                z9 = !z9;
            }
            iF++;
        }
        throw z5.i.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int[] m(f6.a aVar) {
        int[] iArr = new int[3];
        int[] iArrL = null;
        boolean zH = false;
        int i9 = 0;
        while (!zH) {
            Arrays.fill(iArr, 0, 3, 0);
            iArrL = l(aVar, i9, false, d, iArr);
            int i10 = iArrL[0];
            int i11 = iArrL[1];
            int i12 = i10 - (i11 - i10);
            if (i12 >= 0) {
                zH = aVar.h(i12, i10);
            }
            i9 = i11;
        }
        return iArrL;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.h
    public m b(int i9, f6.a aVar, Map map) {
        return k(i9, aVar, m(aVar), map);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean g(String str) throws z5.e {
        int length = str.length();
        if (length != 0) {
            int i9 = length - 1;
            int iDigit = Character.digit(str.charAt(i9), 10);
            CharSequence charSequenceSubSequence = str.subSequence(0, i9);
            int length2 = charSequenceSubSequence.length();
            int i10 = 0;
            for (int i11 = length2 - 1; i11 >= 0; i11 -= 2) {
                int iCharAt = charSequenceSubSequence.charAt(i11) - '0';
                if (iCharAt < 0 || iCharAt > 9) {
                    throw z5.e.a();
                }
                i10 += iCharAt;
            }
            int i12 = i10 * 3;
            for (int i13 = length2 - 2; i13 >= 0; i13 -= 2) {
                int iCharAt2 = charSequenceSubSequence.charAt(i13) - '0';
                if (iCharAt2 < 0 || iCharAt2 > 9) {
                    throw z5.e.a();
                }
                i12 += iCharAt2;
            }
            if ((1000 - i12) % 10 == iDigit) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] i(f6.a aVar, int i9) {
        return l(aVar, i9, false, d, new int[3]);
    }

    public abstract int j(f6.a aVar, int[] iArr, StringBuilder sb);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public m k(int i9, f6.a aVar, int[] iArr, Map map) throws z5.c, z5.e, z5.i {
        int length;
        String str = null;
        p pVar = map == null ? null : (p) map.get(z5.d.f6320k);
        if (pVar != null) {
            pVar.a(new o((iArr[0] + iArr[1]) / 2.0f, i9));
        }
        StringBuilder sb = this.f3881a;
        sb.setLength(0);
        int iJ = j(aVar, iArr, sb);
        if (pVar != null) {
            pVar.a(new o(iJ, i9));
        }
        int[] iArrI = i(aVar, iJ);
        if (pVar != null) {
            pVar.a(new o((iArrI[0] + iArrI[1]) / 2.0f, i9));
        }
        int i10 = iArrI[1];
        int i11 = (i10 - iArrI[0]) + i10;
        if (i11 >= aVar.c || !aVar.h(i10, i11)) {
            throw z5.i.d;
        }
        String string = sb.toString();
        if (string.length() < 8) {
            throw z5.e.a();
        }
        if (!g(string)) {
            throw z5.c.a();
        }
        float f8 = (iArr[1] + iArr[0]) / 2.0f;
        float f9 = (iArrI[1] + iArrI[0]) / 2.0f;
        z5.a aVarN = n();
        float f10 = i9;
        m mVar = new m(string, null, new o[]{new o(f8, f10), new o(f9, f10)}, aVarN);
        try {
            m mVarB = this.f3882b.b(i9, iArrI[1], aVar);
            mVar.b(n.f6334h, mVarB.f6329a);
            mVar.a(mVarB.e);
            o[] oVarArr = mVarB.c;
            o[] oVarArr2 = mVar.c;
            if (oVarArr2 == null) {
                mVar.c = oVarArr;
            } else if (oVarArr != null && oVarArr.length > 0) {
                o[] oVarArr3 = new o[oVarArr2.length + oVarArr.length];
                System.arraycopy(oVarArr2, 0, oVarArr3, 0, oVarArr2.length);
                System.arraycopy(oVarArr, 0, oVarArr3, oVarArr2.length, oVarArr.length);
                mVar.c = oVarArr3;
            }
            length = mVarB.f6329a.length();
        } catch (l unused) {
            length = 0;
        }
        int[] iArr2 = map == null ? null : (int[]) map.get(z5.d.f6321l);
        if (iArr2 != null) {
            int length2 = iArr2.length;
            int i12 = 0;
            while (true) {
                if (i12 >= length2) {
                    throw z5.i.d;
                }
                if (length == iArr2[i12]) {
                    break;
                }
                i12++;
            }
        }
        if (aVarN == z5.a.f6303i || aVarN == z5.a.f6310p) {
            j jVar = this.c;
            synchronized (jVar) {
                if (((ArrayList) jVar.f3877a).isEmpty()) {
                    jVar.a("US/CA", new int[]{0, 19});
                    jVar.a("US", new int[]{30, 39});
                    jVar.a("US/CA", new int[]{60, 139});
                    jVar.a("FR", new int[]{300, 379});
                    jVar.a("BG", new int[]{380});
                    jVar.a("SI", new int[]{383});
                    jVar.a("HR", new int[]{385});
                    jVar.a("BA", new int[]{387});
                    jVar.a("DE", new int[]{400, 440});
                    jVar.a("JP", new int[]{450, 459});
                    jVar.a("RU", new int[]{460, 469});
                    jVar.a("TW", new int[]{471});
                    jVar.a("EE", new int[]{474});
                    jVar.a("LV", new int[]{475});
                    jVar.a("AZ", new int[]{476});
                    jVar.a("LT", new int[]{477});
                    jVar.a("UZ", new int[]{478});
                    jVar.a("LK", new int[]{479});
                    jVar.a("PH", new int[]{480});
                    jVar.a("BY", new int[]{481});
                    jVar.a("UA", new int[]{482});
                    jVar.a("MD", new int[]{484});
                    jVar.a("AM", new int[]{485});
                    jVar.a("GE", new int[]{486});
                    jVar.a("KZ", new int[]{487});
                    jVar.a("HK", new int[]{489});
                    jVar.a("JP", new int[]{490, 499});
                    jVar.a("GB", new int[]{500, 509});
                    jVar.a("GR", new int[]{520});
                    jVar.a("LB", new int[]{528});
                    jVar.a("CY", new int[]{529});
                    jVar.a("MK", new int[]{531});
                    jVar.a("MT", new int[]{535});
                    jVar.a("IE", new int[]{539});
                    jVar.a("BE/LU", new int[]{540, 549});
                    jVar.a("PT", new int[]{560});
                    jVar.a("IS", new int[]{569});
                    jVar.a("DK", new int[]{570, 579});
                    jVar.a("PL", new int[]{590});
                    jVar.a("RO", new int[]{594});
                    jVar.a("HU", new int[]{599});
                    jVar.a("ZA", new int[]{600, 601});
                    jVar.a("GH", new int[]{TypedValues$MotionType.TYPE_EASING});
                    jVar.a("BH", new int[]{TypedValues$MotionType.TYPE_DRAW_PATH});
                    jVar.a("MU", new int[]{TypedValues$MotionType.TYPE_POLAR_RELATIVETO});
                    jVar.a("MA", new int[]{TypedValues$MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE});
                    jVar.a("DZ", new int[]{613});
                    jVar.a("KE", new int[]{616});
                    jVar.a("CI", new int[]{618});
                    jVar.a("TN", new int[]{619});
                    jVar.a("SY", new int[]{621});
                    jVar.a("EG", new int[]{622});
                    jVar.a("LY", new int[]{624});
                    jVar.a("JO", new int[]{625});
                    jVar.a("IR", new int[]{626});
                    jVar.a("KW", new int[]{627});
                    jVar.a("SA", new int[]{628});
                    jVar.a("AE", new int[]{629});
                    jVar.a("FI", new int[]{640, 649});
                    jVar.a("CN", new int[]{690, 695});
                    jVar.a("NO", new int[]{TypedValues$TransitionType.TYPE_DURATION, 709});
                    jVar.a("IL", new int[]{729});
                    jVar.a("SE", new int[]{730, 739});
                    jVar.a("GT", new int[]{740});
                    jVar.a("SV", new int[]{741});
                    jVar.a("HN", new int[]{742});
                    jVar.a("NI", new int[]{743});
                    jVar.a("CR", new int[]{744});
                    jVar.a("PA", new int[]{745});
                    jVar.a("DO", new int[]{746});
                    jVar.a("MX", new int[]{750});
                    jVar.a("CA", new int[]{754, 755});
                    jVar.a("VE", new int[]{759});
                    jVar.a("CH", new int[]{760, 769});
                    jVar.a("CO", new int[]{770});
                    jVar.a("UY", new int[]{773});
                    jVar.a("PE", new int[]{775});
                    jVar.a("BO", new int[]{777});
                    jVar.a("AR", new int[]{779});
                    jVar.a("CL", new int[]{780});
                    jVar.a("PY", new int[]{784});
                    jVar.a("PE", new int[]{785});
                    jVar.a("EC", new int[]{786});
                    jVar.a("BR", new int[]{789, 790});
                    jVar.a("IT", new int[]{800, 839});
                    jVar.a("ES", new int[]{840, 849});
                    jVar.a("CU", new int[]{850});
                    jVar.a("SK", new int[]{858});
                    jVar.a("CZ", new int[]{859});
                    jVar.a("YU", new int[]{860});
                    jVar.a("MN", new int[]{865});
                    jVar.a("KP", new int[]{867});
                    jVar.a("TR", new int[]{868, 869});
                    jVar.a("NL", new int[]{870, 879});
                    jVar.a("KR", new int[]{880});
                    jVar.a("TH", new int[]{885});
                    jVar.a("SG", new int[]{888});
                    jVar.a("IN", new int[]{890});
                    jVar.a("VN", new int[]{893});
                    jVar.a("PK", new int[]{896});
                    jVar.a("ID", new int[]{899});
                    jVar.a("AT", new int[]{TypedValues$Custom.TYPE_INT, 919});
                    jVar.a("AU", new int[]{930, 939});
                    jVar.a("AZ", new int[]{940, 949});
                    jVar.a("MY", new int[]{955});
                    jVar.a("MO", new int[]{958});
                }
            }
            int i13 = Integer.parseInt(string.substring(0, 3));
            int size = ((ArrayList) jVar.f3877a).size();
            for (int i14 = 0; i14 < size; i14++) {
                int[] iArr3 = (int[]) ((ArrayList) jVar.f3877a).get(i14);
                int i15 = iArr3[0];
                if (i13 < i15) {
                    break;
                }
                if (iArr3.length != 1) {
                    i15 = iArr3[1];
                }
                if (i13 <= i15) {
                    str = (String) ((ArrayList) jVar.f3878b).get(i14);
                    break;
                }
            }
            if (str != null) {
                mVar.b(n.f6333g, str);
            }
        }
        return mVar;
    }

    public abstract z5.a n();
}
