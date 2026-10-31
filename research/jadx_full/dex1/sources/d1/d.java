package d1;

import androidx.fragment.app.h;
import com.google.protobuf.q;
import e0.m;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Objects;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f1662a = m.h(new byte[]{92, -3, -49, -101, 93, -6, 81, -62, 15, -1, -34, -101, 20, -13, 90, -34, 77, -7, -41, -49, 68, -5, 90, -40, 76, -31, -28, -116, 91, -6, 66, -61, 64, -12}, new byte[]{47, -104, -69, -17, 52, -108, 54, -79});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f1663b = m.h(new byte[]{66, 22, -105, -36, 91, -13, 100, 93, 7, 5, -127, -43, 65, -8, 126, 85, 1, 29, -105, -55, 37}, new byte[]{72, 73, -56, -106, 24, -89, 59, 13});

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String a(h hVar, String str) throws IOException {
        StringBuilder sbU = ai.onnxruntime.a.u(str);
        sbU.append(m.h(new byte[]{-116, 45, 46, 35, -9, 113, -25, 87, -34, 118, 126, 113, -96, 106, -32, 123, -62, 64, 79, 79, -123, 30, -104, 119, -29, 83, 89, 70, -97, 21, -126, ByteCompanionObject.MAX_VALUE, -27, 75, 79, 90, -5, 111, -76, 0, -116, Base64.padSymbol, 52, 58, -28}, new byte[]{-84, 31, 16, 5, -58, 74, -57, 39}));
        String strReplace = ((a) hVar.c).y(sbU.toString()).replace("\r\n", "\n");
        String str2 = f1663b;
        int iLastIndexOf = strReplace.lastIndexOf(str2);
        if (iLastIndexOf < 0 || !m.h(new byte[]{119}, new byte[]{71, -41, 28, 91, 53, -35, -35, Base64.padSymbol}).equals(strReplace.substring(str2.length() + iLastIndexOf).trim())) {
            n0.b.A(m.h(new byte[]{124, -94, 10, 33, -16, 46, 12, 58, 15, -92, 17, 56, -12, 33, 5, 45, 15, -95, 31, 60, -11, 37, 15}, new byte[]{47, -57, 126, 85, -103, 64, 107, 73}));
            return null;
        }
        String strSubstring = strReplace.substring(0, iLastIndexOf);
        return strSubstring.endsWith("\n") ? strSubstring.substring(0, strSubstring.length() - 1) : strSubstring;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String b(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(m.h(new byte[]{83}, new byte[]{116, 50, -95, -9, 93, 106, -117, 49}));
        sb.append(str.replace(m.h(new byte[]{3}, new byte[]{36, -13, 25, 77, -18, 111, 49, 75}), m.h(new byte[]{-80, -58, -89, 14}, new byte[]{-105, -102, ByteCompanionObject.MIN_VALUE, 41, 19, 33, -86, -21})));
        return q.i(new byte[]{-93}, new byte[]{-124, 39, 59, 74, -72, 73, 95, 73}, sb);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String c(h hVar) throws IOException {
        String strA = a(hVar, f1662a);
        if (strA.indexOf(10) >= 0 || strA.indexOf(13) >= 0 || strA.startsWith(m.h(new byte[]{43, -97, -63, 75, -117}, new byte[]{110, -19, -77, 36, -7, -48, -93, 10})) || strA.startsWith(m.h(new byte[]{21, 110, 0, 40, 86, 123, -117, -38, 62}, new byte[]{80, 22, 99, 77, 38, 15, -30, -75})) || strA.startsWith(m.h(new byte[]{21, -24, 122, 111, 96}, new byte[]{ByteCompanionObject.MAX_VALUE, -119, 12, 14, 78, -34, -59, -51})) || strA.startsWith(m.h(new byte[]{90, 69, 106, -119, 125, 123, 74, 93, 41, 69, 113, -97, 106, 98, 74, 77, 102, 78}, new byte[]{9, 32, 9, -4, 15, 18, 62, 36}))) {
            n0.b.A(m.h(new byte[]{87, 3, -117, 34, 105, 28, -27, 46, 109, 8, -119, 55, 108, 27, -26, 125, 62, 31, -104, 48, 117, 26, -17, 125, 123}, new byte[]{30, 109, -3, 67, 5, 117, -127, 14}));
            return null;
        }
        if (m.h(new byte[]{-70, -79, 53, 71}, new byte[]{-44, -60, 89, 43, 68, -15, 55, -65}).equals(strA)) {
            return null;
        }
        return strA;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String d(h hVar, String str, String str2) throws IOException {
        if (Objects.equals(str, str2)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(m.h(new byte[]{-126, 78, -8, 73, 29, -40, 81, -64, -59, 19, -7, 94, 12, -62, 76, -109, -122, 72, -86, 92, 29, -62, 5, -102, -115, 84, -24, 90, 20, -106, 85, -110, -115, 82, -23, 66, 39, -43, 74, -109, -107, 73, -27, 87, 81, -106, 3, -37, -63, 96, -86, 25, 92, -43, 80, -113, -109, 94, -28, 79, 90, -106, 24, -35}, new byte[]{-31, 59, -118, 59, 120, -74, 37, -3}));
        if (str == null) {
            str = m.h(new byte[]{-70, -29, -22, 90}, new byte[]{-44, -106, -122, 54, -40, 16, 118, 48});
        }
        sb.append(b(str));
        sb.append(m.h(new byte[]{68, 119, -96, -2, 3, 59, 89, 9, 16, 94, -23, -74, 66, 104, 10, 28, 17, 94, -96, -65, 73, 116, 72, 13, 8, 10, -16, -73, 73, 114, 73, 21, 59, 73, -17, -74, 81, 105, 69, 0, 68}, new byte[]{100, 42, ByteCompanionObject.MIN_VALUE, -40, 37, 27, 42, 108}));
        sb.append(b(str2));
        String string = sb.toString();
        if (string.getBytes(StandardCharsets.UTF_8).length > 3700) {
            n0.b.A(m.h(new byte[]{22, -54, 3, -72, 83, 4, 31, -125, 41, -54, 79, -67, 81, 15, 88, -110, 102, -61, 0, -93, 16, 9, 87, -98, 53, -123, 27, -93, 81, 19, 76, -121, 41, -41, 27}, new byte[]{70, -91, 111, -47, 48, 125, 63, -9}));
            return null;
        }
        a(hVar, string);
        String strC = c(hVar);
        if (str2.equals(strC)) {
            return strC;
        }
        n0.b.A(m.h(new byte[]{81, -96, 103, -67, 81, -36, 62, 65, 100, -67, 98, -78, 91, -58, ByteCompanionObject.MAX_VALUE, 67, 104, -96, 101, -12, 84, -60, 119, 91, 100, -85}, new byte[]{1, -49, 11, -44, 50, -91, 30, 55}));
        return null;
    }
}
