package p173q0;

import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONException;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: q0.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3050n {

    /* JADX INFO: renamed from: a */
    public final String f8591a;

    /* JADX INFO: renamed from: b */
    public Double f8592b;

    /* JADX INFO: renamed from: c */
    public Double f8593c;

    /* JADX INFO: renamed from: d */
    public Double f8594d;

    /* JADX INFO: renamed from: e */
    public Float f8595e;

    /* JADX INFO: renamed from: f */
    public Float f8596f;

    /* JADX INFO: renamed from: g */
    public Float f8597g;

    /* JADX INFO: renamed from: h */
    public int f8598h;

    /* JADX INFO: renamed from: i */
    public long f8599i;

    public C3050n(String str) {
        this.f8591a = str;
    }

    /* JADX INFO: renamed from: b */
    public static String m4879b(String[] strArr, int i10) {
        String str;
        return (i10 < 0 || i10 >= strArr.length || (str = strArr[i10]) == null) ? "" : str;
    }

    /* JADX INFO: renamed from: d */
    public static Double m4880d(String str, String str2) {
        if (str == null || str.isEmpty() || str2 == null || str2.isEmpty()) {
            return null;
        }
        try {
            double d = Double.parseDouble(str);
            double d10 = (int) (d / 100.0d);
            double d11 = ((d - (100.0d * d10)) / 60.0d) + d10;
            if (AbstractC1387m.m2421h(new byte[]{68}, new byte[]{23, -123, -68, 116, 35, -123, 29, -55}).equalsIgnoreCase(str2) || AbstractC1387m.m2421h(new byte[]{55}, new byte[]{96, 125, -84, -95, 59, -4, -126, -110}).equalsIgnoreCase(str2)) {
                d11 = -d11;
            }
            return Double.valueOf(d11);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: e */
    public static Float m4881e(String str) {
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

    /* JADX INFO: renamed from: a */
    public final C3053q m4882a() {
        Double d = this.f8592b;
        if (d == null || this.f8593c == null) {
            return null;
        }
        try {
            double dDoubleValue = d.doubleValue();
            double dDoubleValue2 = this.f8593c.doubleValue();
            long jCurrentTimeMillis = this.f8599i;
            if (jCurrentTimeMillis <= 0) {
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            long j10 = jCurrentTimeMillis;
            Double d10 = this.f8594d;
            Float f8 = this.f8595e;
            Float f10 = this.f8596f;
            Float f11 = this.f8597g;
            int i10 = this.f8598h;
            return C3053q.m4887a(dDoubleValue, dDoubleValue2, j10, d10, f8, f10, f11, i10, i10, i10, null, null, this.f8591a);
        } catch (JSONException unused) {
            return null;
        }
    }

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
    /* JADX INFO: renamed from: c */
    public final C3053q m4883c(String str) {
        int iIndexOf;
        String strSubstring;
        String[] strArrSplit;
        String upperCase;
        long jCurrentTimeMillis;
        int i10;
        String strM4879b;
        Double dM4880d;
        Double dM4880d2;
        String strM4879b2;
        int i11;
        Float fM4881e;
        String strM4879b3;
        Double dValueOf;
        String strTrim = str.trim();
        if (strTrim.startsWith(AbstractC1387m.m2421h(new byte[]{52}, new byte[]{16, -50, -45, 94, -123, -1, -16, -127}))) {
            int iIndexOf2 = strTrim.indexOf(42);
            if (iIndexOf2 < 0) {
                iIndexOf = strTrim.indexOf(42);
                if (iIndexOf >= 0) {
                    strSubstring = strTrim.substring(1, iIndexOf);
                } else {
                    strSubstring = strTrim.substring(1);
                }
                strArrSplit = strSubstring.split(AbstractC1387m.m2421h(new byte[]{112}, new byte[]{92, -43, -25, -49, 90, -28, -4, 47}), -1);
                if (strArrSplit.length != 0) {
                    String str2 = strArrSplit[0];
                    String strSubstring2 = str2.substring(str2.length() - 3);
                    Locale locale = Locale.US;
                    upperCase = strSubstring2.toUpperCase(locale);
                    if (AbstractC1387m.m2421h(new byte[]{22, -12, 44}, new byte[]{81, -77, 109, -36, -127, ByteCompanionObject.MAX_VALUE, 28, -64}).equals(upperCase)) {
                        return !AbstractC1387m.m2421h(new byte[]{91, 109, -80}, new byte[]{9, 32, -13, -81, -56, -57, -63, 45}).equals(upperCase) ? null : null;
                    }
                    strM4879b = m4879b(strArrSplit, 6);
                    if (!strM4879b.isEmpty()) {
                        String strM4879b4 = m4879b(strArrSplit, 2);
                        String strM4879b5 = m4879b(strArrSplit, 3);
                        String strM4879b6 = m4879b(strArrSplit, 4);
                        String strM4879b7 = m4879b(strArrSplit, 5);
                        dM4880d = m4880d(strM4879b4, strM4879b5);
                        dM4880d2 = m4880d(strM4879b6, strM4879b7);
                        if (dM4880d != null) {
                            this.f8592b = dM4880d;
                        }
                        if (dM4880d2 != null) {
                            this.f8593c = dM4880d2;
                        }
                        strM4879b2 = m4879b(strArrSplit, 7);
                        i11 = this.f8598h;
                        if (strM4879b2.isEmpty()) {
                            i11 = Integer.parseInt(strM4879b2);
                        }
                        this.f8598h = i11;
                        fM4881e = m4881e(m4879b(strArrSplit, 8));
                        if (fM4881e != null) {
                            this.f8595e = Float.valueOf(fM4881e.floatValue() * 10.0f);
                        }
                        strM4879b3 = m4879b(strArrSplit, 9);
                        if (strM4879b3.isEmpty()) {
                            dValueOf = null;
                        } else {
                            dValueOf = Double.valueOf(Double.parseDouble(strM4879b3));
                        }
                        if (dValueOf != null) {
                            this.f8594d = dValueOf;
                        }
                        this.f8599i = System.currentTimeMillis();
                        return m4882a();
                    }
                }
            } else if (iIndexOf2 + 2 < strTrim.length()) {
                try {
                    int i12 = Integer.parseInt(strTrim.substring(iIndexOf2 + 1, iIndexOf2 + 3), 16);
                    int iCharAt = 0;
                    for (int i13 = 1; i13 < iIndexOf2; i13++) {
                        iCharAt ^= strTrim.charAt(i13);
                    }
                    if (iCharAt == i12) {
                        iIndexOf = strTrim.indexOf(42);
                        if (iIndexOf >= 0) {
                            strSubstring = strTrim.substring(1, iIndexOf);
                        } else {
                            strSubstring = strTrim.substring(1);
                        }
                        strArrSplit = strSubstring.split(AbstractC1387m.m2421h(new byte[]{112}, new byte[]{92, -43, -25, -49, 90, -28, -4, 47}), -1);
                        if (strArrSplit.length != 0 && strArrSplit[0].length() >= 3) {
                            String str3 = strArrSplit[0];
                            String strSubstring3 = str3.substring(str3.length() - 3);
                            Locale locale2 = Locale.US;
                            upperCase = strSubstring3.toUpperCase(locale2);
                            if (AbstractC1387m.m2421h(new byte[]{22, -12, 44}, new byte[]{81, -77, 109, -36, -127, ByteCompanionObject.MAX_VALUE, 28, -64}).equals(upperCase)) {
                                if (!AbstractC1387m.m2421h(new byte[]{91, 109, -80}, new byte[]{9, 32, -13, -81, -56, -57, -63, 45}).equals(upperCase) && AbstractC1387m.m2421h(new byte[]{36}, new byte[]{101, 14, -63, -28, -60, -110, -120, 46}).equalsIgnoreCase(m4879b(strArrSplit, 2))) {
                                    String strM4879b8 = m4879b(strArrSplit, 3);
                                    String strM4879b9 = m4879b(strArrSplit, 4);
                                    String strM4879b10 = m4879b(strArrSplit, 5);
                                    String strM4879b11 = m4879b(strArrSplit, 6);
                                    Double dM4880d3 = m4880d(strM4879b8, strM4879b9);
                                    Double dM4880d4 = m4880d(strM4879b10, strM4879b11);
                                    if (dM4880d3 != null) {
                                        this.f8592b = dM4880d3;
                                    }
                                    if (dM4880d4 != null) {
                                        this.f8593c = dM4880d4;
                                    }
                                    Float fM4881e2 = m4881e(m4879b(strArrSplit, 7));
                                    if (fM4881e2 != null) {
                                        this.f8597g = Float.valueOf(fM4881e2.floatValue() * 0.514444f);
                                    }
                                    Float fM4881e3 = m4881e(m4879b(strArrSplit, 8));
                                    if (fM4881e3 != null) {
                                        this.f8596f = fM4881e3;
                                    }
                                    String strM4879b12 = m4879b(strArrSplit, 1);
                                    String strM4879b13 = m4879b(strArrSplit, 9);
                                    if (strM4879b12.length() < 6 || strM4879b13.length() != 6) {
                                        jCurrentTimeMillis = System.currentTimeMillis();
                                    } else {
                                        try {
                                            int i14 = Integer.parseInt(strM4879b12.substring(0, 2));
                                            int i15 = Integer.parseInt(strM4879b12.substring(2, 4));
                                            int i16 = Integer.parseInt(strM4879b12.substring(4, 6));
                                            int iIndexOf3 = strM4879b12.indexOf(46);
                                            int i17 = (iIndexOf3 < 0 || (i10 = iIndexOf3 + 1) >= strM4879b12.length()) ? 0 : Integer.parseInt(strM4879b12.substring(i10).concat(AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, -36, 88}, new byte[]{13, -20, 104, 58, 104, -77, 122, 19})).substring(0, 3));
                                            int i18 = Integer.parseInt(strM4879b13.substring(0, 2));
                                            int i19 = Integer.parseInt(strM4879b13.substring(2, 4)) - 1;
                                            int i20 = Integer.parseInt(strM4879b13.substring(4, 6));
                                            int i21 = i20 >= 80 ? i20 + 1900 : i20 + 2000;
                                            GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone(AbstractC1387m.m2421h(new byte[]{-31, -23, 118}, new byte[]{-76, -67, 53, -42, -21, -62, 84, 33})), locale2);
                                            gregorianCalendar.set(1, i21);
                                            gregorianCalendar.set(2, i19);
                                            gregorianCalendar.set(5, i18);
                                            gregorianCalendar.set(11, i14);
                                            gregorianCalendar.set(12, i15);
                                            gregorianCalendar.set(13, i16);
                                            gregorianCalendar.set(14, i17);
                                            jCurrentTimeMillis = gregorianCalendar.getTimeInMillis();
                                        } catch (NumberFormatException unused) {
                                            jCurrentTimeMillis = System.currentTimeMillis();
                                        }
                                    }
                                    this.f8599i = jCurrentTimeMillis;
                                    return m4882a();
                                }
                            }
                            strM4879b = m4879b(strArrSplit, 6);
                            if (!strM4879b.isEmpty() && !AbstractC1387m.m2421h(new byte[]{-3}, new byte[]{-51, -39, -61, 24, -9, -56, 0, -87}).equals(strM4879b)) {
                                String strM4879b14 = m4879b(strArrSplit, 2);
                                String strM4879b15 = m4879b(strArrSplit, 3);
                                String strM4879b16 = m4879b(strArrSplit, 4);
                                String strM4879b17 = m4879b(strArrSplit, 5);
                                dM4880d = m4880d(strM4879b14, strM4879b15);
                                dM4880d2 = m4880d(strM4879b16, strM4879b17);
                                if (dM4880d != null) {
                                    this.f8592b = dM4880d;
                                }
                                if (dM4880d2 != null) {
                                    this.f8593c = dM4880d2;
                                }
                                strM4879b2 = m4879b(strArrSplit, 7);
                                i11 = this.f8598h;
                                try {
                                    if (strM4879b2.isEmpty()) {
                                        i11 = Integer.parseInt(strM4879b2);
                                    }
                                } catch (NumberFormatException unused2) {
                                }
                                this.f8598h = i11;
                                fM4881e = m4881e(m4879b(strArrSplit, 8));
                                if (fM4881e != null) {
                                    this.f8595e = Float.valueOf(fM4881e.floatValue() * 10.0f);
                                }
                                strM4879b3 = m4879b(strArrSplit, 9);
                                try {
                                    if (strM4879b3.isEmpty()) {
                                        dValueOf = null;
                                    } else {
                                        dValueOf = Double.valueOf(Double.parseDouble(strM4879b3));
                                    }
                                } catch (NumberFormatException unused3) {
                                }
                                if (dValueOf != null) {
                                    this.f8594d = dValueOf;
                                }
                                this.f8599i = System.currentTimeMillis();
                                return m4882a();
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
