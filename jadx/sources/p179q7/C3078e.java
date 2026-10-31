package p179q7;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import p099j1.C1929i;

/* JADX INFO: renamed from: q7.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3078e implements HostnameVerifier {

    /* JADX INFO: renamed from: a */
    public static final C3078e f8736a = new C3078e();

    /* JADX INFO: renamed from: b */
    public static final Pattern f8737b = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* JADX INFO: renamed from: a */
    public static List m4914a(X509Certificate x509Certificate, int i10) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.EMPTY_LIST;
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i10 && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.EMPTY_LIST;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [int] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX INFO: renamed from: b */
    public static boolean m4915b(String str, X509Certificate x509Certificate) {
        boolean z9;
        boolean z10;
        String str2;
        char[] cArr;
        char c;
        int i10;
        char c10;
        boolean z11 = false;
        boolean z12 = true;
        if (f8737b.matcher(str).matches()) {
            List listM4914a = m4914a(x509Certificate, 7);
            int size = listM4914a.size();
            for (int i11 = 0; i11 < size; i11++) {
                if (str.equalsIgnoreCase((String) listM4914a.get(i11))) {
                    return true;
                }
            }
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        char c11 = 2;
        List listM4914a2 = m4914a(x509Certificate, 2);
        int size2 = listM4914a2.size();
        int i12 = 0;
        boolean z13 = false;
        while (i12 < size2) {
            if (m4916c(lowerCase, (String) listM4914a2.get(i12))) {
                return true;
            }
            i12++;
            z13 = true;
        }
        if (!z13) {
            C3077d c3077d = new C3077d(x509Certificate.getSubjectX500Principal());
            c3077d.f8731c = 0;
            c3077d.f8732d = 0;
            c3077d.f8733e = 0;
            c3077d.f8734f = 0;
            String str3 = c3077d.f8729a;
            c3077d.f8735g = str3.toCharArray();
            String strM4913c = c3077d.m4913c();
            String str4 = null;
            if (strM4913c == null) {
                z9 = z11;
            } else {
                while (true) {
                    int i13 = c3077d.f8731c;
                    int i14 = c3077d.f8730b;
                    if (i13 == i14) {
                        break;
                    }
                    char c12 = c3077d.f8735g[i13];
                    char c13 = c11;
                    z9 = z11;
                    if (c12 == '\"') {
                        z10 = z12;
                        int i15 = i13 + 1;
                        c3077d.f8731c = i15;
                        c3077d.f8732d = i15;
                        c3077d.f8733e = i15;
                        while (true) {
                            int i16 = c3077d.f8731c;
                            if (i16 == i14) {
                                C1929i.m3030l("Unexpected end of DN: ".concat(str3));
                                return false;
                            }
                            char[] cArr2 = c3077d.f8735g;
                            char c14 = cArr2[i16];
                            if (c14 == '\"') {
                                c3077d.f8731c = i16 + 1;
                                while (true) {
                                    int i17 = c3077d.f8731c;
                                    if (i17 >= i14 || c3077d.f8735g[i17] != ' ') {
                                        break;
                                    }
                                    c3077d.f8731c = i17 + 1;
                                }
                                char[] cArr3 = c3077d.f8735g;
                                int i18 = c3077d.f8732d;
                                str2 = new String(cArr3, i18, c3077d.f8733e - i18);
                                break;
                            }
                            int i19 = c3077d.f8733e;
                            if (c14 == '\\') {
                                cArr2[i19] = c3077d.m4912b();
                            } else {
                                cArr2[i19] = c14;
                            }
                            c3077d.f8731c++;
                            c3077d.f8733e++;
                        }
                    } else if (c12 == '#') {
                        z10 = z12;
                        if (i13 + 4 >= i14) {
                            C1929i.m3030l("Unexpected end of DN: ".concat(str3));
                            return false;
                        }
                        c3077d.f8732d = i13;
                        c3077d.f8731c = i13 + 1;
                        while (true) {
                            int i20 = c3077d.f8731c;
                            if (i20 == i14 || (c = (cArr = c3077d.f8735g)[i20]) == '+' || c == ',' || c == ';') {
                                c3077d.f8733e = i20;
                                break;
                            }
                            if (c == ' ') {
                                c3077d.f8733e = i20;
                                c3077d.f8731c = i20 + 1;
                                while (true) {
                                    int i21 = c3077d.f8731c;
                                    if (i21 >= i14 || c3077d.f8735g[i21] != ' ') {
                                        break;
                                    }
                                    c3077d.f8731c = i21 + 1;
                                }
                            } else {
                                if (c >= 'A' && c <= 'F') {
                                    cArr[i20] = (char) (c + ' ');
                                }
                                c3077d.f8731c = i20 + 1;
                            }
                        }
                        int i22 = c3077d.f8733e;
                        int i23 = c3077d.f8732d;
                        int i24 = i22 - i23;
                        if (i24 < 5 || (i24 & 1) == 0) {
                            C1929i.m3030l("Unexpected end of DN: ".concat(str3));
                            return false;
                        }
                        int i25 = i24 / 2;
                        byte[] bArr = new byte[i25];
                        int i26 = i23 + 1;
                        for (?? r12 = z9; r12 < i25; r12++) {
                            bArr[r12] = (byte) c3077d.m4911a(i26);
                            i26 += 2;
                        }
                        str2 = new String(c3077d.f8735g, c3077d.f8732d, i24);
                    } else if (c12 == '+' || c12 == ',' || c12 == ';') {
                        z10 = z12;
                        str2 = "";
                    } else {
                        c3077d.f8732d = i13;
                        c3077d.f8733e = i13;
                        while (true) {
                            int i27 = c3077d.f8731c;
                            char[] cArr4 = c3077d.f8735g;
                            if (i27 >= i14) {
                                int i28 = c3077d.f8732d;
                                str2 = new String(cArr4, i28, c3077d.f8733e - i28);
                                z10 = z12;
                            } else {
                                char c15 = cArr4[i27];
                                if (c15 != ' ') {
                                    if (c15 != ';') {
                                        if (c15 == '\\') {
                                            z10 = z12;
                                            int i29 = c3077d.f8733e;
                                            c3077d.f8733e = i29 + 1;
                                            cArr4[i29] = c3077d.m4912b();
                                            c3077d.f8731c++;
                                        } else if (c15 != '+' && c15 != ',') {
                                            int i30 = c3077d.f8733e;
                                            z10 = z12;
                                            c3077d.f8733e = i30 + 1;
                                            cArr4[i30] = c15;
                                            c3077d.f8731c = i27 + 1;
                                        }
                                        z12 = z10;
                                    }
                                    z10 = z12;
                                    int i31 = c3077d.f8732d;
                                    str2 = new String(cArr4, i31, c3077d.f8733e - i31);
                                } else {
                                    z10 = z12;
                                    int i32 = c3077d.f8733e;
                                    c3077d.f8734f = i32;
                                    c3077d.f8731c = i27 + 1;
                                    c3077d.f8733e = i32 + 1;
                                    cArr4[i32] = ' ';
                                    while (true) {
                                        i10 = c3077d.f8731c;
                                        if (i10 >= i14) {
                                            break;
                                        }
                                        char[] cArr5 = c3077d.f8735g;
                                        if (cArr5[i10] != ' ') {
                                            break;
                                        }
                                        int i33 = c3077d.f8733e;
                                        c3077d.f8733e = i33 + 1;
                                        cArr5[i33] = ' ';
                                        c3077d.f8731c = i10 + 1;
                                    }
                                    if (i10 == i14 || (c10 = c3077d.f8735g[i10]) == ',' || c10 == '+' || c10 == ';') {
                                        char[] cArr6 = c3077d.f8735g;
                                        int i34 = c3077d.f8732d;
                                        str2 = new String(cArr6, i34, c3077d.f8734f - i34);
                                    } else {
                                        z12 = z10;
                                    }
                                }
                            }
                        }
                    }
                    if ("cn".equalsIgnoreCase(strM4913c)) {
                        str4 = str2;
                    } else {
                        int i35 = c3077d.f8731c;
                        if (i35 < i14) {
                            char c16 = c3077d.f8735g[i35];
                            if (c16 != ',' && c16 != ';' && c16 != '+') {
                                C1929i.m3030l("Malformed DN: ".concat(str3));
                                return false;
                            }
                            c3077d.f8731c = i35 + 1;
                            strM4913c = c3077d.m4913c();
                            if (strM4913c == null) {
                                C1929i.m3030l("Malformed DN: ".concat(str3));
                                return false;
                            }
                            c11 = c13;
                            z11 = z9;
                            z12 = z10;
                        }
                    }
                }
                z9 = z11;
            }
            return str4 != null ? m4916c(lowerCase, str4) : z9;
        }
        return false;
    }

    /* JADX INFO: renamed from: c */
    public static boolean m4916c(String str, String str2) {
        if (str == null || str.length() == 0 || str.startsWith(".") || str.endsWith("..") || str2 == null || str2.length() == 0 || str2.startsWith(".") || str2.endsWith("..")) {
            return false;
        }
        if (!str.endsWith(".")) {
            str = str.concat(".");
        }
        if (!str2.endsWith(".")) {
            str2 = str2.concat(".");
        }
        String lowerCase = str2.toLowerCase(Locale.US);
        if (!lowerCase.contains("*")) {
            return str.equals(lowerCase);
        }
        if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str.length() < lowerCase.length() || "*.".equals(lowerCase)) {
            return false;
        }
        String strSubstring = lowerCase.substring(1);
        if (!str.endsWith(strSubstring)) {
            return false;
        }
        int length = str.length() - strSubstring.length();
        return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            return m4915b(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }
}
