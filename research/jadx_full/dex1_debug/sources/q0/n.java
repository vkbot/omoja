package q0;

import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Double f4804b;
    public Double c;
    public Double d;
    public Float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Float f4805f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Float f4806g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4807h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f4808i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n(String str) {
        this.f4803a = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String b(String[] strArr, int i9) {
        String str;
        return (i9 < 0 || i9 >= strArr.length || (str = strArr[i9]) == null) ? "" : str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Double d(String str, String str2) {
        if (str == null || str.isEmpty() || str2 == null || str2.isEmpty()) {
            return null;
        }
        try {
            double d = Double.parseDouble(str);
            double d9 = (int) (d / 100.0d);
            double d10 = ((d - (100.0d * d9)) / 60.0d) + d9;
            if (e0.m.h(new byte[]{68}, new byte[]{23, -123, -68, 116, 35, -123, 29, -55}).equalsIgnoreCase(str2) || e0.m.h(new byte[]{55}, new byte[]{96, 125, -84, -95, 59, -4, -126, -110}).equalsIgnoreCase(str2)) {
                d10 = -d10;
            }
            return Double.valueOf(d10);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Float e(String str) {
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    return Float.valueOf(Float.parseFloat(str));
                }
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final q a() {
        Double d = this.f4804b;
        if (d == null || this.c == null) {
            return null;
        }
        try {
            double dDoubleValue = d.doubleValue();
            double dDoubleValue2 = this.c.doubleValue();
            long jCurrentTimeMillis = this.f4808i;
            if (jCurrentTimeMillis <= 0) {
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            long j9 = jCurrentTimeMillis;
            Double d9 = this.d;
            Float f8 = this.e;
            Float f9 = this.f4805f;
            Float f10 = this.f4806g;
            int i9 = this.f4807h;
            return q.a(dDoubleValue, dDoubleValue2, j9, d9, f8, f9, f10, i9, i9, i9, null, null, this.f4803a);
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:16:0x0050  */
    /* JADX WARN: Code duplicated, block: B:18:0x0056  */
    /* JADX WARN: Code duplicated, block: B:19:0x005b  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:34:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:40:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:41:0x00f9 A[Catch: NumberFormatException -> 0x00fd, TRY_LEAVE, TryCatch #1 {NumberFormatException -> 0x00fd, blocks: (B:38:0x00f2, B:41:0x00f9), top: B:97:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0109  */
    /* JADX WARN: Code duplicated, block: B:48:0x0120  */
    /* JADX WARN: Code duplicated, block: B:49:0x0122 A[Catch: NumberFormatException -> 0x0120, TRY_LEAVE, TryCatch #2 {NumberFormatException -> 0x0120, blocks: (B:46:0x011a, B:49:0x0122), top: B:99:0x011a }] */
    /* JADX WARN: Code duplicated, block: B:51:0x012c  */
    /* JADX WARN: Code duplicated, block: B:54:0x0139  */
    public final q c(String str) {
        int iIndexOf;
        String strSubstring;
        String[] strArrSplit;
        String upperCase;
        long jCurrentTimeMillis;
        int i9;
        String strB;
        Double d;
        Double d9;
        String strB2;
        int i10;
        Float fE;
        String strB3;
        Double dValueOf;
        String strTrim = str.trim();
        if (strTrim.startsWith(e0.m.h(new byte[]{52}, new byte[]{16, -50, -45, 94, -123, -1, -16, -127}))) {
            int iIndexOf2 = strTrim.indexOf(42);
            if (iIndexOf2 < 0) {
                iIndexOf = strTrim.indexOf(42);
                if (iIndexOf >= 0) {
                    strSubstring = strTrim.substring(1, iIndexOf);
                } else {
                    strSubstring = strTrim.substring(1);
                }
                strArrSplit = strSubstring.split(e0.m.h(new byte[]{112}, new byte[]{92, -43, -25, -49, 90, -28, -4, 47}), -1);
                if (strArrSplit.length != 0) {
                    String str2 = strArrSplit[0];
                    String strSubstring2 = str2.substring(str2.length() - 3);
                    Locale locale = Locale.US;
                    upperCase = strSubstring2.toUpperCase(locale);
                    if (e0.m.h(new byte[]{22, -12, 44}, new byte[]{81, -77, 109, -36, -127, ByteCompanionObject.MAX_VALUE, 28, -64}).equals(upperCase)) {
                        return !e0.m.h(new byte[]{91, 109, -80}, new byte[]{9, 32, -13, -81, -56, -57, -63, 45}).equals(upperCase) ? null : null;
                    }
                    strB = b(strArrSplit, 6);
                    if (!strB.isEmpty()) {
                        String strB4 = b(strArrSplit, 2);
                        String strB5 = b(strArrSplit, 3);
                        String strB6 = b(strArrSplit, 4);
                        String strB7 = b(strArrSplit, 5);
                        d = d(strB4, strB5);
                        d9 = d(strB6, strB7);
                        if (d != null) {
                            this.f4804b = d;
                        }
                        if (d9 != null) {
                            this.c = d9;
                        }
                        strB2 = b(strArrSplit, 7);
                        i10 = this.f4807h;
                        if (strB2.isEmpty()) {
                            i10 = Integer.parseInt(strB2);
                        }
                        this.f4807h = i10;
                        fE = e(b(strArrSplit, 8));
                        if (fE != null) {
                            this.e = Float.valueOf(fE.floatValue() * 10.0f);
                        }
                        strB3 = b(strArrSplit, 9);
                        if (strB3.isEmpty()) {
                            dValueOf = null;
                        } else {
                            dValueOf = Double.valueOf(Double.parseDouble(strB3));
                        }
                        if (dValueOf != null) {
                            this.d = dValueOf;
                        }
                        this.f4808i = System.currentTimeMillis();
                        return a();
                    }
                }
            } else if (iIndexOf2 + 2 < strTrim.length()) {
                try {
                    int i11 = Integer.parseInt(strTrim.substring(iIndexOf2 + 1, iIndexOf2 + 3), 16);
                    int iCharAt = 0;
                    for (int i12 = 1; i12 < iIndexOf2; i12++) {
                        iCharAt ^= strTrim.charAt(i12);
                    }
                    if (iCharAt == i11) {
                        iIndexOf = strTrim.indexOf(42);
                        if (iIndexOf >= 0) {
                            strSubstring = strTrim.substring(1, iIndexOf);
                        } else {
                            strSubstring = strTrim.substring(1);
                        }
                        strArrSplit = strSubstring.split(e0.m.h(new byte[]{112}, new byte[]{92, -43, -25, -49, 90, -28, -4, 47}), -1);
                        if (strArrSplit.length != 0 && strArrSplit[0].length() >= 3) {
                            String str3 = strArrSplit[0];
                            String strSubstring3 = str3.substring(str3.length() - 3);
                            Locale locale2 = Locale.US;
                            upperCase = strSubstring3.toUpperCase(locale2);
                            if (e0.m.h(new byte[]{22, -12, 44}, new byte[]{81, -77, 109, -36, -127, ByteCompanionObject.MAX_VALUE, 28, -64}).equals(upperCase)) {
                                if (!e0.m.h(new byte[]{91, 109, -80}, new byte[]{9, 32, -13, -81, -56, -57, -63, 45}).equals(upperCase) && e0.m.h(new byte[]{36}, new byte[]{101, 14, -63, -28, -60, -110, -120, 46}).equalsIgnoreCase(b(strArrSplit, 2))) {
                                    String strB8 = b(strArrSplit, 3);
                                    String strB9 = b(strArrSplit, 4);
                                    String strB10 = b(strArrSplit, 5);
                                    String strB11 = b(strArrSplit, 6);
                                    Double d10 = d(strB8, strB9);
                                    Double d11 = d(strB10, strB11);
                                    if (d10 != null) {
                                        this.f4804b = d10;
                                    }
                                    if (d11 != null) {
                                        this.c = d11;
                                    }
                                    Float fE2 = e(b(strArrSplit, 7));
                                    if (fE2 != null) {
                                        this.f4806g = Float.valueOf(fE2.floatValue() * 0.514444f);
                                    }
                                    Float fE3 = e(b(strArrSplit, 8));
                                    if (fE3 != null) {
                                        this.f4805f = fE3;
                                    }
                                    String strB12 = b(strArrSplit, 1);
                                    String strB13 = b(strArrSplit, 9);
                                    if (strB12.length() < 6 || strB13.length() != 6) {
                                        jCurrentTimeMillis = System.currentTimeMillis();
                                    } else {
                                        try {
                                            int i13 = Integer.parseInt(strB12.substring(0, 2));
                                            int i14 = Integer.parseInt(strB12.substring(2, 4));
                                            int i15 = Integer.parseInt(strB12.substring(4, 6));
                                            int iIndexOf3 = strB12.indexOf(46);
                                            int i16 = (iIndexOf3 < 0 || (i9 = iIndexOf3 + 1) >= strB12.length()) ? 0 : Integer.parseInt(strB12.substring(i9).concat(e0.m.h(new byte[]{Base64.padSymbol, -36, 88}, new byte[]{13, -20, 104, 58, 104, -77, 122, 19})).substring(0, 3));
                                            int i17 = Integer.parseInt(strB13.substring(0, 2));
                                            int i18 = Integer.parseInt(strB13.substring(2, 4)) - 1;
                                            int i19 = Integer.parseInt(strB13.substring(4, 6));
                                            int i20 = i19 >= 80 ? i19 + 1900 : i19 + 2000;
                                            GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone(e0.m.h(new byte[]{-31, -23, 118}, new byte[]{-76, -67, 53, -42, -21, -62, 84, 33})), locale2);
                                            gregorianCalendar.set(1, i20);
                                            gregorianCalendar.set(2, i18);
                                            gregorianCalendar.set(5, i17);
                                            gregorianCalendar.set(11, i13);
                                            gregorianCalendar.set(12, i14);
                                            gregorianCalendar.set(13, i15);
                                            gregorianCalendar.set(14, i16);
                                            jCurrentTimeMillis = gregorianCalendar.getTimeInMillis();
                                        } catch (NumberFormatException unused) {
                                            jCurrentTimeMillis = System.currentTimeMillis();
                                        }
                                    }
                                    this.f4808i = jCurrentTimeMillis;
                                    return a();
                                }
                            }
                            strB = b(strArrSplit, 6);
                            if (!strB.isEmpty() && !e0.m.h(new byte[]{-3}, new byte[]{-51, -39, -61, 24, -9, -56, 0, -87}).equals(strB)) {
                                String strB14 = b(strArrSplit, 2);
                                String strB15 = b(strArrSplit, 3);
                                String strB16 = b(strArrSplit, 4);
                                String strB17 = b(strArrSplit, 5);
                                d = d(strB14, strB15);
                                d9 = d(strB16, strB17);
                                if (d != null) {
                                    this.f4804b = d;
                                }
                                if (d9 != null) {
                                    this.c = d9;
                                }
                                strB2 = b(strArrSplit, 7);
                                i10 = this.f4807h;
                                try {
                                    if (strB2.isEmpty()) {
                                        i10 = Integer.parseInt(strB2);
                                    }
                                } catch (NumberFormatException unused2) {
                                }
                                this.f4807h = i10;
                                fE = e(b(strArrSplit, 8));
                                if (fE != null) {
                                    this.e = Float.valueOf(fE.floatValue() * 10.0f);
                                }
                                strB3 = b(strArrSplit, 9);
                                try {
                                    if (strB3.isEmpty()) {
                                        dValueOf = null;
                                    } else {
                                        dValueOf = Double.valueOf(Double.parseDouble(strB3));
                                    }
                                } catch (NumberFormatException unused3) {
                                }
                                if (dValueOf != null) {
                                    this.d = dValueOf;
                                }
                                this.f4808i = System.currentTimeMillis();
                                return a();
                            }
                        }
                    }
                } catch (NumberFormatException unused4) {
                }
            }
        }
        return null;
    }
}
