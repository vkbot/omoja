package p147n6;

import java.util.EnumMap;
import org.apache.commons.p161io.FilenameUtils;
import p063f6.C1577a;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.C3759o;
import p260z5.EnumC3745a;
import p260z5.EnumC3758n;

/* JADX INFO: renamed from: n6.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2488i {

    /* JADX INFO: renamed from: c */
    public static final int[] f6863c = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};

    /* JADX INFO: renamed from: a */
    public final int[] f6864a;

    /* JADX INFO: renamed from: b */
    public final StringBuilder f6865b;

    public C2488i(int i10) {
        switch (i10) {
            case 1:
                this.f6864a = new int[4];
                this.f6865b = new StringBuilder();
                break;
            default:
                this.f6864a = new int[4];
                this.f6865b = new StringBuilder();
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0094  */
    /* JADX WARN: Code duplicated, block: B:67:0x011d  */
    /* JADX INFO: renamed from: a */
    public C3757m m3875a(int i10, C1577a c1577a, int[] iArr) throws C3753i {
        String str;
        String str2;
        EnumMap enumMap;
        StringBuilder sb = this.f6865b;
        sb.setLength(0);
        int[] iArr2 = this.f6864a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        byte b10 = 2;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int i11 = c1577a.f3899c;
        int iM2652f = iArr[1];
        int i12 = 0;
        for (int i13 = 0; i13 < 5 && iM2652f < i11; i13++) {
            int iM3878h = AbstractC2490k.m3878h(c1577a, iArr2, iM2652f, AbstractC2490k.f6872g);
            sb.append((char) ((iM3878h % 10) + 48));
            for (int i14 : iArr2) {
                iM2652f += i14;
            }
            if (iM3878h >= 10) {
                i12 |= 1 << (4 - i13);
            }
            if (i13 != 4) {
                iM2652f = c1577a.m2652f(c1577a.m2651e(iM2652f));
            }
        }
        if (sb.length() != 5) {
            throw C3753i.f11192d;
        }
        for (int i15 = 0; i15 < 10; i15++) {
            if (i12 == f6863c[i15]) {
                String string = sb.toString();
                int length = string.length();
                int iCharAt = 0;
                for (int i16 = length - 2; i16 >= 0; i16 -= 2) {
                    iCharAt += string.charAt(i16) - '0';
                }
                int iCharAt2 = iCharAt * 3;
                for (int i17 = length - 1; i17 >= 0; i17 -= 2) {
                    iCharAt2 += string.charAt(i17) - '0';
                }
                if ((iCharAt2 * 3) % 10 != i15) {
                    throw C3753i.f11192d;
                }
                String string2 = sb.toString();
                if (string2.length() == 5) {
                    char cCharAt = string2.charAt(0);
                    if (cCharAt == '0') {
                        str = "£";
                    } else if (cCharAt != '5') {
                        str = "";
                        if (cCharAt == '9') {
                            switch (string2.hashCode()) {
                                case 54118329:
                                    b10 = string2.equals("90000") ? (byte) 0 : (byte) -1;
                                    break;
                                case 54395376:
                                    b10 = string2.equals("99990") ? (byte) 1 : (byte) -1;
                                    break;
                                case 54395377:
                                    if (!string2.equals("99991")) {
                                        b10 = -1;
                                    }
                                    break;
                                default:
                                    b10 = -1;
                                    break;
                            }
                            switch (b10) {
                                case 0:
                                    str2 = null;
                                    break;
                                case 1:
                                    str2 = "Used";
                                    break;
                                case 2:
                                    str2 = "0.00";
                                    break;
                            }
                        }
                        if (str2 == null) {
                            enumMap = null;
                        } else {
                            enumMap = new EnumMap(EnumC3758n.class);
                            enumMap.put(EnumC3758n.f11207f, str2);
                        }
                    } else {
                        str = "$";
                    }
                    int i18 = Integer.parseInt(string2.substring(1));
                    String strValueOf = String.valueOf(i18 / 100);
                    int i19 = i18 % 100;
                    str2 = str + strValueOf + FilenameUtils.EXTENSION_SEPARATOR + (i19 < 10 ? "0".concat(String.valueOf(i19)) : String.valueOf(i19));
                    if (str2 == null) {
                        enumMap = null;
                    } else {
                        enumMap = new EnumMap(EnumC3758n.class);
                        enumMap.put(EnumC3758n.f11207f, str2);
                    }
                } else {
                    enumMap = null;
                }
                float f8 = i10;
                C3757m c3757m = new C3757m(string2, null, new C3759o[]{new C3759o((iArr[0] + iArr[1]) / 2.0f, f8), new C3759o(iM2652f, f8)}, EnumC3745a.f11168r);
                if (enumMap != null) {
                    c3757m.m5987a(enumMap);
                }
                return c3757m;
            }
        }
        throw C3753i.f11192d;
    }
}
