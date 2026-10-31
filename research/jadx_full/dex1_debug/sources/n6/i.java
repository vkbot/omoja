package n6;

import java.util.EnumMap;
import z5.m;
import z5.n;
import z5.o;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i {
    public static final int[] c = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f3875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringBuilder f3876b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public i(int i9) {
        switch (i9) {
            case 1:
                this.f3875a = new int[4];
                this.f3876b = new StringBuilder();
                break;
            default:
                this.f3875a = new int[4];
                this.f3876b = new StringBuilder();
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:31:0x0094  */
    /* JADX WARN: Code duplicated, block: B:67:0x011d  */
    public m a(int i9, f6.a aVar, int[] iArr) throws z5.i {
        String str;
        String str2;
        EnumMap enumMap;
        StringBuilder sb = this.f3876b;
        sb.setLength(0);
        int[] iArr2 = this.f3875a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        byte b9 = 2;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int i10 = aVar.c;
        int iF = iArr[1];
        int i11 = 0;
        for (int i12 = 0; i12 < 5 && iF < i10; i12++) {
            int iH = k.h(aVar, iArr2, iF, k.f3880g);
            sb.append((char) ((iH % 10) + 48));
            for (int i13 : iArr2) {
                iF += i13;
            }
            if (iH >= 10) {
                i11 |= 1 << (4 - i12);
            }
            if (i12 != 4) {
                iF = aVar.f(aVar.e(iF));
            }
        }
        if (sb.length() != 5) {
            throw z5.i.d;
        }
        for (int i14 = 0; i14 < 10; i14++) {
            if (i11 == c[i14]) {
                String string = sb.toString();
                int length = string.length();
                int iCharAt = 0;
                for (int i15 = length - 2; i15 >= 0; i15 -= 2) {
                    iCharAt += string.charAt(i15) - '0';
                }
                int iCharAt2 = iCharAt * 3;
                for (int i16 = length - 1; i16 >= 0; i16 -= 2) {
                    iCharAt2 += string.charAt(i16) - '0';
                }
                if ((iCharAt2 * 3) % 10 != i14) {
                    throw z5.i.d;
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
                                    b9 = string2.equals("90000") ? (byte) 0 : (byte) -1;
                                    break;
                                case 54395376:
                                    b9 = string2.equals("99990") ? (byte) 1 : (byte) -1;
                                    break;
                                case 54395377:
                                    if (!string2.equals("99991")) {
                                        b9 = -1;
                                    }
                                    break;
                                default:
                                    b9 = -1;
                                    break;
                            }
                            switch (b9) {
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
                            enumMap = new EnumMap(n.class);
                            enumMap.put(n.f6332f, str2);
                        }
                    } else {
                        str = "$";
                    }
                    int i17 = Integer.parseInt(string2.substring(1));
                    String strValueOf = String.valueOf(i17 / 100);
                    int i18 = i17 % 100;
                    str2 = str + strValueOf + '.' + (i18 < 10 ? "0".concat(String.valueOf(i18)) : String.valueOf(i18));
                    if (str2 == null) {
                        enumMap = null;
                    } else {
                        enumMap = new EnumMap(n.class);
                        enumMap.put(n.f6332f, str2);
                    }
                } else {
                    enumMap = null;
                }
                float f8 = i9;
                m mVar = new m(string2, null, new o[]{new o((iArr[0] + iArr[1]) / 2.0f, f8), new o(iF, f8)}, z5.a.r);
                if (enumMap != null) {
                    mVar.a(enumMap);
                }
                return mVar;
            }
        }
        throw z5.i.d;
    }
}
