package q7;

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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements HostnameVerifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f4902a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f4903b = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List a(X509Certificate x509Certificate, int i9) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.EMPTY_LIST;
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i9 && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.EMPTY_LIST;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [int] */
    /* JADX WARN: Type inference failed for: r12v8 */
    public static boolean b(String str, X509Certificate x509Certificate) {
        boolean z8;
        boolean z9;
        String str2;
        char[] cArr;
        char c;
        int i9;
        char c9;
        boolean z10 = false;
        boolean z11 = true;
        if (f4903b.matcher(str).matches()) {
            List listA = a(x509Certificate, 7);
            int size = listA.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (str.equalsIgnoreCase((String) listA.get(i10))) {
                    return true;
                }
            }
            return false;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        char c10 = 2;
        List listA2 = a(x509Certificate, 2);
        int size2 = listA2.size();
        int i11 = 0;
        boolean z12 = false;
        while (i11 < size2) {
            if (c(lowerCase, (String) listA2.get(i11))) {
                return true;
            }
            i11++;
            z12 = true;
        }
        if (!z12) {
            d dVar = new d(x509Certificate.getSubjectX500Principal());
            dVar.c = 0;
            dVar.d = 0;
            dVar.e = 0;
            dVar.f4900f = 0;
            String str3 = dVar.f4898a;
            dVar.f4901g = str3.toCharArray();
            String strC = dVar.c();
            String str4 = null;
            if (strC == null) {
                z8 = z10;
            } else {
                while (true) {
                    int i12 = dVar.c;
                    int i13 = dVar.f4899b;
                    if (i12 == i13) {
                        break;
                    }
                    char c11 = dVar.f4901g[i12];
                    char c12 = c10;
                    z8 = z10;
                    if (c11 == '\"') {
                        z9 = z11;
                        int i14 = i12 + 1;
                        dVar.c = i14;
                        dVar.d = i14;
                        dVar.e = i14;
                        while (true) {
                            int i15 = dVar.c;
                            if (i15 == i13) {
                                j1.i.l("Unexpected end of DN: ".concat(str3));
                                return false;
                            }
                            char[] cArr2 = dVar.f4901g;
                            char c13 = cArr2[i15];
                            if (c13 == '\"') {
                                dVar.c = i15 + 1;
                                while (true) {
                                    int i16 = dVar.c;
                                    if (i16 >= i13 || dVar.f4901g[i16] != ' ') {
                                        break;
                                    }
                                    dVar.c = i16 + 1;
                                }
                                char[] cArr3 = dVar.f4901g;
                                int i17 = dVar.d;
                                str2 = new String(cArr3, i17, dVar.e - i17);
                                break;
                            }
                            int i18 = dVar.e;
                            if (c13 == '\\') {
                                cArr2[i18] = dVar.b();
                            } else {
                                cArr2[i18] = c13;
                            }
                            dVar.c++;
                            dVar.e++;
                        }
                    } else if (c11 == '#') {
                        z9 = z11;
                        if (i12 + 4 >= i13) {
                            j1.i.l("Unexpected end of DN: ".concat(str3));
                            return false;
                        }
                        dVar.d = i12;
                        dVar.c = i12 + 1;
                        while (true) {
                            int i19 = dVar.c;
                            if (i19 == i13 || (c = (cArr = dVar.f4901g)[i19]) == '+' || c == ',' || c == ';') {
                                dVar.e = i19;
                                break;
                            }
                            if (c == ' ') {
                                dVar.e = i19;
                                dVar.c = i19 + 1;
                                while (true) {
                                    int i20 = dVar.c;
                                    if (i20 >= i13 || dVar.f4901g[i20] != ' ') {
                                        break;
                                    }
                                    dVar.c = i20 + 1;
                                }
                            } else {
                                if (c >= 'A' && c <= 'F') {
                                    cArr[i19] = (char) (c + ' ');
                                }
                                dVar.c = i19 + 1;
                            }
                        }
                        int i21 = dVar.e;
                        int i22 = dVar.d;
                        int i23 = i21 - i22;
                        if (i23 < 5 || (i23 & 1) == 0) {
                            j1.i.l("Unexpected end of DN: ".concat(str3));
                            return false;
                        }
                        int i24 = i23 / 2;
                        byte[] bArr = new byte[i24];
                        int i25 = i22 + 1;
                        for (?? r12 = z8; r12 < i24; r12++) {
                            bArr[r12] = (byte) dVar.a(i25);
                            i25 += 2;
                        }
                        str2 = new String(dVar.f4901g, dVar.d, i23);
                    } else if (c11 == '+' || c11 == ',' || c11 == ';') {
                        z9 = z11;
                        str2 = "";
                    } else {
                        dVar.d = i12;
                        dVar.e = i12;
                        while (true) {
                            int i26 = dVar.c;
                            char[] cArr4 = dVar.f4901g;
                            if (i26 >= i13) {
                                int i27 = dVar.d;
                                str2 = new String(cArr4, i27, dVar.e - i27);
                                z9 = z11;
                            } else {
                                char c14 = cArr4[i26];
                                if (c14 != ' ') {
                                    if (c14 != ';') {
                                        if (c14 == '\\') {
                                            z9 = z11;
                                            int i28 = dVar.e;
                                            dVar.e = i28 + 1;
                                            cArr4[i28] = dVar.b();
                                            dVar.c++;
                                        } else if (c14 != '+' && c14 != ',') {
                                            int i29 = dVar.e;
                                            z9 = z11;
                                            dVar.e = i29 + 1;
                                            cArr4[i29] = c14;
                                            dVar.c = i26 + 1;
                                        }
                                        z11 = z9;
                                    }
                                    z9 = z11;
                                    int i30 = dVar.d;
                                    str2 = new String(cArr4, i30, dVar.e - i30);
                                } else {
                                    z9 = z11;
                                    int i31 = dVar.e;
                                    dVar.f4900f = i31;
                                    dVar.c = i26 + 1;
                                    dVar.e = i31 + 1;
                                    cArr4[i31] = ' ';
                                    while (true) {
                                        i9 = dVar.c;
                                        if (i9 >= i13) {
                                            break;
                                        }
                                        char[] cArr5 = dVar.f4901g;
                                        if (cArr5[i9] != ' ') {
                                            break;
                                        }
                                        int i32 = dVar.e;
                                        dVar.e = i32 + 1;
                                        cArr5[i32] = ' ';
                                        dVar.c = i9 + 1;
                                    }
                                    if (i9 == i13 || (c9 = dVar.f4901g[i9]) == ',' || c9 == '+' || c9 == ';') {
                                        char[] cArr6 = dVar.f4901g;
                                        int i33 = dVar.d;
                                        str2 = new String(cArr6, i33, dVar.f4900f - i33);
                                    } else {
                                        z11 = z9;
                                    }
                                }
                            }
                        }
                    }
                    if ("cn".equalsIgnoreCase(strC)) {
                        str4 = str2;
                    } else {
                        int i34 = dVar.c;
                        if (i34 < i13) {
                            char c15 = dVar.f4901g[i34];
                            if (c15 != ',' && c15 != ';' && c15 != '+') {
                                j1.i.l("Malformed DN: ".concat(str3));
                                return false;
                            }
                            dVar.c = i34 + 1;
                            strC = dVar.c();
                            if (strC == null) {
                                j1.i.l("Malformed DN: ".concat(str3));
                                return false;
                            }
                            c10 = c12;
                            z10 = z8;
                            z11 = z9;
                        }
                    }
                }
                z8 = z10;
            }
            return str4 != null ? c(lowerCase, str4) : z8;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean c(String str, String str2) {
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            return b(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }
}
