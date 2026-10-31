package a;

import a5.h;
import a8.c;
import a8.e;
import a8.f;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import com.google.protobuf.q;
import d8.b;
import e0.m;
import j1.i;
import java.math.RoundingMode;
import java.text.Normalizer;
import java.text.Normalizer$Form;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map$Entry;
import java.util.concurrent.Callable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import p8.d;
import w0.d1;
import w0.y0;
import w0.z0;
import x7.k;
import z3.y;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String A(String str) {
        String strH;
        String strReplace = str.replace(m.h(new byte[]{107, -23, -22, -26, -112, 47, 16, 33, 125, -28, -1}, new byte[]{10, -123, -122, -58, -28, 71, 117, 1}), m.h(new byte[]{48, -18, -60, -94, -97}, new byte[]{86, -101, -88, -50, -26, -117, -98, 34})).replace(m.h(new byte[]{90, -46, -30, 34, 73, -100, -1, 69, 11, -65, -121, -78, -72, -51, -100, 22, 90, -47}, new byte[]{-118, 111, 50, -110, 105, 76, 77, -108}), m.h(new byte[]{78, 70, 85, -36, 40, -65, 121, -11, 78, 71, 84, -29, 41, -122, 120, -60, 79, 119}, new byte[]{-98, -7, -123, 98, -8, 4, -87, 72}));
        boolean zL = l(strReplace, m.h(new byte[]{99, 103, 111, 1, -122, -84, 118, -52, 98, 87, 111, 10, -122, -93, -6, 4, -56, -103, -62, -107, 42, -56, 29, -92, 6, 5, 13, -29, 38, 99, -22, 9, -103, -87, 110, 62, -122, -93, 118, -63, 99, 103, 111, 15, 42, 124, -44, 29, -59, -80, -51, -61, 58, 125, -64, 0}, new byte[]{-77, -43, -65, -65, 86, 24, -90, 116}));
        boolean zL2 = l(strReplace, m.h(new byte[]{116, -114, -62, -50, 39, 20, -59, -46, 116, -127, -62, -56, 38, 45, -59, -45, -8, 65, 105, 50, -117, -65, 104, -125, 27, -32, -110, -82, 70, 69, -90, 15, -44, 74, 94, 3, -36, -23, -59, -46, 116, -114, -61, -2, 38, 37, -60, -31, 116, -127, 110, 14, -105, -26, 103, 54, -54, 86, 119, 12, -118, -25, 125, 52, -52, 69}, new byte[]{-92, 49, 18, 126, -10, -107, 20, 83}));
        boolean zL3 = l(strReplace, m.h(new byte[]{68, -116, 64, 78, 21, 122, 90, 25, -56, 75, -21, -78, -72, -28, -10, 117, 21, -21, 39, 46, 117, 30, 62, 116, 44, 71, -30, -101, -92, -68, -10, -58, -11, 88, -5}, new byte[]{-108, 59, -112, -2, -59, -50, -118, -92}));
        boolean zL4 = l(strReplace, m.h(new byte[]{16, 67, 91, -68, 76, -30, 52, -125, 16, 72, 91, -76, -63, 18, -97, 122, -67, -42, -9, -40, 28, -78, 91, -26, 117, 45, 11, -39, 40, -78, 80, -26, 120, ByteCompanionObject.MIN_VALUE, -19, 123, -14, 12, -112}, new byte[]{-64, -4, -117, 9, -99, 98, -28, 54}));
        boolean zL5 = l(strReplace, m.h(new byte[]{122, 91, 48, 122, 82, 27, 106, 25, 24, 56, 96, 43, 55, ByteCompanionObject.MAX_VALUE, -109, -75, -53, -123, -115}, new byte[]{-86, -23, -31, -5, -126, -82, 22, -55}));
        if (zL && zL2) {
            return null;
        }
        if (zL3 && zL4) {
            return null;
        }
        if (zL5 && (zL || zL2 || zL3 || zL4)) {
            return null;
        }
        if (zL5) {
            return m.h(new byte[]{86, -104, 115}, new byte[]{55, -12, 31, -117, 44, -36, -57, -69});
        }
        String strH2 = zL3 ? m.h(new byte[]{123}, new byte[]{9, 79, 110, -123, 120, 46, 99, 92}) : m.h(new byte[]{54}, new byte[]{80, 24, -99, 47, -8, 74, 15, 93});
        byte[] bArr = new byte[1];
        if (zL2) {
            bArr[0] = 40;
            strH = m.h(bArr, new byte[]{90, 85, -55, -31, -88, 71, 123, 52});
        } else {
            bArr[0] = -56;
            strH = m.h(bArr, new byte[]{-92, 100, -88, 56, 73, -17, 15, -88});
        }
        return strH2.concat(strH);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String a(String str) {
        if (l(str, m.h(new byte[]{31, 56, -6, 94, ByteCompanionObject.MAX_VALUE, -117, 54, 42, 31, 52, 11, -9, -112, 4, 54, 39, 31, 48, -5, 98, ByteCompanionObject.MAX_VALUE, -114, -102, 73, 113, 90, -111, 15, 17, -18, 91, -27, 31, 52, -5, 101, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MIN_VALUE, 55, 17, 31, 48, -5, 103, -45, -18, 88, 73, 117, 90, -107, 14, 39, -18, 83, 73, 117, -93}, new byte[]{-49, -118, 43, -33, -81, 62, -26, -103}))) {
            return m.h(new byte[]{-59, -127, -29, 8, 64, Base64.padSymbol, 25, -66, -41, -77, -26, 19, 72, Base64.padSymbol, 6}, new byte[]{-92, -20, -127, 97, 39, 72, 118, -53});
        }
        if (!l(str, m.h(new byte[]{42, 85, -90, 14, -91, 3, 26, 33, -122, 59, -56, 100, -49, 110, 116, 65, 71, -105, -90, 10, -91, 4, 26, 44, 42, 91, -90, 8, 9, 110, 116, 65, 64, 59, -53, 100, -59, 110, 118, 65, 66, -105, -90, 10, -91, 4, 26, 44, 42, 91, -89, 49, 9, 110, 116, 65, 64, 59, -56, 101, -3, 110, 112, 65, 66, -105, -90, 10, -91, 4, 26, 47, 43, 99, -90, 1, -91, 4, -74, 65, 68, 59, -52, 100, -53, 111, 66, 65, 64, 59, -58, 100, -55, -62, 26, 47, 42, 81, -90, 10, -92, 54, 26, 43, 42, 91, -90, 8, -91, 6, -74, 65, 68, 59, -52, 100, -53, 111, 66, 65, 64, 59, -58, 101, -16, -62, -67, -8, -108, -113, 25, -61, 6}, new byte[]{-6, -21, 118, -76, 117, -66, -54, -111})) || l(str, m.h(new byte[]{4, 86, -25, 28, 95, -9, 124, ByteCompanionObject.MAX_VALUE, 102, 53, -73, 77, 58, -109, -123, -45, -75, -120, 90}, new byte[]{-44, -28, 54, -99, -113, 66, 0, -81}))) {
            return "";
        }
        String strH = m.h(new byte[]{100, -86, -123, 46, 44, -89, -25, -69, -8, 69, 7, 47, 28, -89, -20, -69, -9, 68, 51, 47, 31, -89, -29, -69, -14, 69, 12, 46, 32, 11, -119, -44, -100, 37, 110, ByteCompanionObject.MAX_VALUE, 79, -10, -119, -37, -100, 35, 111, 70, 79, -9, -120, -22, -100, 47, 111, 64, 78, -60, -119, -43, 48, 69, 0, 46, 43, -90, -39, -69, -7, 69, 11, 46, 35, -89, -20, -69, -1, 69, 1, -126, 78, -64, -119, -37, -100, 33, 111, 67, 78, -62, -119, -40, -100, 43, -61, 46, 37, -89, -20, -69, -2, 69, 1, 46, 45, -89, -25, 23, -100, 42, 110, 126, 78, -57, -119, -39, -100, 43, 111, 77, 78, -55, 112}, new byte[]{76, -107, -65, -2, -98, 119, 89, 107});
        StringBuilder sbU = ai.onnxruntime.a.u(strH);
        q.u(new byte[]{91, -23, -54, 124}, new byte[]{115, -42, -16, 92, 81, 11, -123, -99}, sbU, strH);
        sbU.append(m.h(new byte[]{48, -82, 17, -89, 100, -34, -111, 115, -89, 5, -101, 91, -21, 115, 1}, new byte[]{25, -43, 33, -117, 86, -93, -79, -93}));
        if (!l(str, sbU.toString()) || l(str, m.h(new byte[]{11, 14, 44, 102, -8, 52, -86, -65, 10, 62, 44, 109, -8, 59, -85, -117, 10, Base64.padSymbol, 44, 98, -8, 56, -86, -78, -89, 108, 67, 8, -104, 81, -5, -42, 90, 108, 76, 8, -98, 80, -62, -42, 91, 109, 125, 8, -110, 80, -62, -41, 110, -64, 44, 103, -8, 53, -85, -121, 11, 9, 44, 108, -8, Base64.padSymbol, -86, -65, 11, 9, ByteCompanionObject.MIN_VALUE, 8, -97, 80, -54, -41, 111, 108, 65, 8, -112, 80, -49, 123, 11, 7, 44, 109, -8, 50, -85, -116, 11, 9, ByteCompanionObject.MIN_VALUE, 8, -105, 81, -6, -41, 107, 108, 78, 9, -93, 80, -49, 123, 11, 3, 44, 109, -7, 0, -86, -78, 11, 8, 44, 101, -8, 56, -85, -126, -89, 108, 75, 8, -104, 80, -50, -41, 102, 108, 68, 9, -83, -4, -86, -68, 11, 9, 44, 106, -7, 11, -85, -126, -89, 108, 67, 9, -88, 80, -54, -41, 105, 109, 119, 9, -83}, new byte[]{-37, -68, -4, -40, 40, ByteCompanionObject.MIN_VALUE, 122, 7})) || l(str, m.h(new byte[]{15, 39, -22, 112, 51, 3, 23, 82, -1, -79, 5, -16, 50, 63, 23, 89, 15, 44, -22, 120, 51, 14, -69, 51, 94, 73, -123, 27, 99, 110, 119, 50, 109, 73, -118, -74, 50, 63, 23, 85, 15, 41, -22, 126, 51, 6, -69, 51, 94, 73, -123, 26, 86, 111, 71, 50, 106, 73, -114, 26, 91, -105}, new byte[]{-33, -103, 58, -54, -29, -66, -57, -30}))) {
            return j(str) ? m.h(new byte[]{45, 3, -19, -56, -47, 100, -110, -111, 44, 8, -6, -30, -58, 102, -110, -106, 40}, new byte[]{88, 109, -98, -67, -95, 20, -3, -29}) : m.h(new byte[]{109, 121, 18, -13, 85, 104, -39, 16, 105, 96, 25, -12, 83, 121, -1, 40, 108, 102, 2, -32}, new byte[]{30, 9, 119, -112, 60, 14, -96, 79});
        }
        return "";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static double b(double d, double d9, double d10, double d11) {
        double radians = Math.toRadians(d);
        double radians2 = Math.toRadians(d10);
        double radians3 = Math.toRadians(d10 - d);
        double radians4 = Math.toRadians(d11 - d9);
        double d12 = radians3 / 2.0d;
        double d13 = radians4 / 2.0d;
        double dA = ai.onnxruntime.a.a(d13, Math.sin(d13) * Math.cos(radians2) * Math.cos(radians), Math.sin(d12) * Math.sin(d12));
        return Math.atan2(Math.sqrt(dA), Math.sqrt(1.0d - dA)) * 2.0d * 6371000.0d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static k c(Callable callable) {
        try {
            Object objCall = callable.call();
            b.a(objCall, "Scheduler Callable result can't be null");
            return (k) objCall;
        } catch (Throwable th) {
            throw d.c(th);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(Object obj) {
        if (obj != null) {
            return;
        }
        n0.b.n("Cannot return null from a non-@Nullable component method");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void e(Object obj) {
        if (obj != null) {
            return;
        }
        n0.b.n("Cannot return null from a non-@Nullable @Provides method");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static y0 f(String str) {
        String strH;
        if (str == null) {
            return null;
        }
        if (!str.startsWith(m.h(new byte[]{104, 57, -121, 109, 77}, new byte[]{13, 87, -14, 0, 119, 45, -4, 81})) && !str.startsWith(m.h(new byte[]{120, -32, -124, 83, 54, 0, -91, -6}, new byte[]{8, -110, -21, 53, 95, 108, -64, -64}))) {
            return null;
        }
        String strReplaceFirst = str.replaceFirst(m.h(new byte[]{103, 17, 99, 26, -109, 4, 88, -30, 73, 75, 105, 18, -113, 5, 7, -92, 16}, new byte[]{57, 57, 6, 116, -26, 105, 98, -98}), "");
        if (strReplaceFirst.equals(m.h(new byte[]{-73, 114, 104, -3, 4, -118, -107, -12, -72, 65, 99, -31, 14, -89, -121}, new byte[]{-44, 30, 7, -114, 97, -43, -12, -104}))) {
            return new y0(m.h(new byte[]{33, -36, 113, -56}, new byte[]{69, -77, 30, -70, 30, -119, -14, -10}), m.h(new byte[]{109, -110, -106}, new byte[]{12, -2, -6, 6, -24, -24, 7, -76}), m.h(new byte[]{23, 33, 6, 3, 29}, new byte[]{116, 77, 105, 112, 120, -83, 112, 122}), 0.0d);
        }
        Matcher matcher = Pattern.compile(m.h(new byte[]{77, 2, -41, 87, -59, -26, -113, 55, 10, 30, -62, 27, -12, -2, -125, 52, 23, 50, -113, 84, -39, -11, -126, 47, 25, 31, -62, 83, -39, -77, -77, 115, 9, 8, -63, 70, -41, -24, -123, 60, 13, 25, -114}, new byte[]{101, 109, -89, 50, -85, -102, -20, 91})).matcher(strReplaceFirst);
        if (matcher.matches()) {
            return new y0(m.h(new byte[]{68, 36, 66, -121}, new byte[]{32, 75, 45, -11, 83, 40, -59, -82}), (matcher.group(2).equals(m.h(new byte[]{40, ByteCompanionObject.MAX_VALUE, 99, -2, -53}, new byte[]{78, 13, 12, -112, -65, -41, -74, -112})) ? m.h(new byte[]{23}, new byte[]{113, -67, -44, -103, -117, 59, 18, -102}) : m.h(new byte[]{-125}, new byte[]{-15, 86, 69, 49, -81, 98, 52, -14})).concat(matcher.group(3).equals(m.h(new byte[]{119, -47, -63, -122}, new byte[]{27, -76, -89, -14, -15, -44, -107, -118})) ? m.h(new byte[]{-102}, new byte[]{-10, 83, -72, 10, 48, -44, -25, -50}) : m.h(new byte[]{-36}, new byte[]{-82, 12, 3, -72, -63, 30, -14, -41})), matcher.group(1), 0.0d);
        }
        if (strReplaceFirst.matches(m.h(new byte[]{-28, 38, 51, -24, 87, -38, 78, 19, -93, 58, 38, -92, 102, -114, 89, 13, -71, 39, 40, -15, 94, -54, 66, 9, -87, 22, 33, -30, 65, -113}, new byte[]{-52, 73, 67, -115, 57, -90, 45, ByteCompanionObject.MAX_VALUE}))) {
            return new y0(strReplaceFirst.endsWith(m.h(new byte[]{-30, -51, 13, -18, 18}, new byte[]{-106, -65, 120, ByteCompanionObject.MIN_VALUE, 121, -52, 115, 44})) ? m.h(new byte[]{60, 62, -48, 106, -44}, new byte[]{72, 76, -91, 4, -65, -7, -95, -109}) : m.h(new byte[]{78, 12, 46, 91, -2, -8, -81, 21}, new byte[]{41, 96, 65, 45, -101, -102, -64, 109}), m.h(new byte[]{-28, 36, 116}, new byte[]{-123, 72, 24, -92, -20, 70, -15, -11}), strReplaceFirst.startsWith(m.h(new byte[]{107, 14, 4, -11}, new byte[]{4, 126, 97, -101, -17, 63, 8, 47})) ? m.h(new byte[]{-59, 107, 105, -18}, new byte[]{-86, 27, 12, ByteCompanionObject.MIN_VALUE, -1, -110, 22, 119}) : m.h(new byte[]{-69, -12, 72, -83, -63}, new byte[]{-40, -104, 39, -34, -92, -10, -121, -113}), 0.0d);
        }
        if (strReplaceFirst.equals(m.h(new byte[]{-33, 116, -11, 81, 81, 6, ByteCompanionObject.MIN_VALUE, 120, -20, 101, -1, 87, 77, 58, -70, 122}, new byte[]{-115, 17, -106, 56, 35, 101, -11, 20})) || strReplaceFirst.equals(m.h(new byte[]{-123, -50, -123, 20, -119, 110, 17, 106, -74, -33, -113, 18, -107, 82, 43, 96, -79}, new byte[]{-41, -85, -26, 125, -5, 13, 100, 6}))) {
            return new y0(m.h(new byte[]{-47, 66, -33, 81, -19, 64, -7, -121, -57, 86, -33, 87, -19, 93, -81, -108, -42, 92, -39, 75}, new byte[]{-94, 53, -74, 37, -114, 40, -61, -11}), m.h(new byte[]{98, -95, 95}, new byte[]{3, -51, 51, -103, 78, 52, -125, -29}), strReplaceFirst.endsWith(m.h(new byte[]{-88, -116}, new byte[]{-25, -30, -74, 92, 55, -123, 60, 57})) ? m.h(new byte[]{1, -101}, new byte[]{110, -11, -76, 80, 103, 92, -102, -109}) : m.h(new byte[]{104, -112, -42}, new byte[]{7, -10, -80, -107, -79, 37, -27, -112}), 0.0d);
        }
        if (strReplaceFirst.equals(m.h(new byte[]{-77, 62, 87, 65, 11, 99, 34, -98, -107}, new byte[]{-27, 81, 59, 52, 102, 6, 125, -53})) || strReplaceFirst.equals(m.h(new byte[]{-10, -94, 40, 69, -122, 88, -35, -109, -49, -70, 42}, new byte[]{-96, -51, 68, 48, -21, Base64.padSymbol, -126, -41}))) {
            return new y0(m.h(new byte[]{-84, -2, 34, 38, 15, 18}, new byte[]{-38, -111, 78, 83, 98, 119, -69, 1}), m.h(new byte[]{98, -15, 51}, new byte[]{3, -99, 95, 94, -121, 0, 116, -126}), strReplaceFirst.endsWith(m.h(new byte[]{26, -114}, new byte[]{79, -2, 47, 65, 35, 14, 104, 118})) ? m.h(new byte[]{-119, -41}, new byte[]{-4, -89, 104, -113, 67, -17, 115, -67}) : m.h(new byte[]{-28, 118, 62, -45}, new byte[]{ByteCompanionObject.MIN_VALUE, 25, 73, -67, 98, 6, -109, 77}), 0.0d);
        }
        if (strReplaceFirst.equals(m.h(new byte[]{99, -61, 8, 121, 22, 107, -105, -72, 64, -40, 1, 83, 47, 97, -81, -110, 89, -55}, new byte[]{53, -84, 100, 12, 123, 14, -56, -11})) || strReplaceFirst.equals(m.h(new byte[]{-124, -68, -65, -9, -44, 123, 10, -50, -89, -89, -74, -35, -10, 112}, new byte[]{-46, -45, -45, -126, -71, 30, 85, -125})) || strReplaceFirst.equals(m.h(new byte[]{-27, 60, 76, 125, 114, 59, -109, 123, -58, 39, 69, 87, 80, 56, -86}, new byte[]{-77, 83, 32, 8, 31, 94, -52, 54}))) {
            return new y0(m.h(new byte[]{-83, -42, -1, 84}, new byte[]{-64, -93, -117, 49, -98, -111, 117, 104}), m.h(new byte[]{29, -11, 102}, new byte[]{124, -103, 10, 43, -68, 31, 36, 89}), strReplaceFirst.substring(m.h(new byte[]{-59, -123, -125, 17, 110, -25, -72, 39, -26, -98, -118, 59}, new byte[]{-109, -22, -17, 100, 3, -126, -25, 106}).length()).toLowerCase(Locale.ROOT), 0.0d);
        }
        if (strReplaceFirst.equals(m.h(new byte[]{23, -52, 32, -116, -66, -15, 62, -26, 2, -35}, new byte[]{90, -119, 100, -59, -1, -82, 112, -93})) || strReplaceFirst.equals(m.h(new byte[]{35, -112, -19, 108, 84, 62, -114, 95, 47, -106, -30}, new byte[]{110, -43, -87, 37, 21, 97, -52, 19}))) {
            return new y0(m.h(new byte[]{17, -6, 98, 92, 29}, new byte[]{101, -120, 3, 63, 118, 117, 110, 80}), m.h(new byte[]{-43, -28, 97}, new byte[]{-76, -120, 13, -88, -44, -77, 51, -104}), strReplaceFirst.endsWith(m.h(new byte[]{-89, -120, -14, 114}, new byte[]{-23, -51, -86, 38, 110, 45, 85, -89})) ? m.h(new byte[]{-50, -24, -88, 81}, new byte[]{-96, -115, -48, 37, -33, -67, -73, -120}) : m.h(new byte[]{-56, -4, -61, -28, -111, -126, 84, -56}, new byte[]{-72, -114, -90, -110, -8, -19, 33, -69}), 0.0d);
        }
        Matcher matcher2 = Pattern.compile(m.h(new byte[]{35, 119, 77, 75, -124, -91, -88, 67, 34, 80, 58, 103, -35, -26, -1, 113, 124, 80, 58, 12, -111, -7, -7, 80, 96, 63, 110, 11, -40, -73, -3, 28, 101, 38}, new byte[]{85, 15, 18, 60, -19, -53, -52, 44})).matcher(strReplaceFirst);
        if (matcher2.matches()) {
            return new y0(m.h(new byte[]{102, -33, 4, -2, ByteCompanionObject.MIN_VALUE, -90}, new byte[]{17, -74, 106, -102, -17, -47, -54, -49}), new String[]{m.h(new byte[]{-96, 82}, new byte[]{-58, 62, 58, -61, -74, 101, 66, -123}), m.h(new byte[]{126, -58}, new byte[]{24, -76, -68, 55, -118, -61, 121, -114}), m.h(new byte[]{32, 113}, new byte[]{82, 29, 36, -31, 100, 114, 71, 65}), m.h(new byte[]{-90, -93}, new byte[]{-44, -47, 71, -49, 48, 106, 93, 46})}[Integer.parseInt(matcher2.group(1))], m.h(new byte[]{-8, 43, -67}, new byte[]{-117, 78, -55, -56, 98, 110, 8, -96}), Double.parseDouble(matcher2.group(2)));
        }
        Matcher matcher3 = Pattern.compile(m.h(new byte[]{-126, -1, -81, -78, 60, -84, -82, -73, -97, -70, -81, -19, 58, -78, -81, -74, -108, -86, -100, -86, 38, -89, -74, -82, -115, -89, -124, -20, 10, -93, -90, -76}, new byte[]{-24, -55, -16, -59, 85, -62, -54, -40})).matcher(strReplaceFirst);
        if (matcher3.matches()) {
            return new y0(m.h(new byte[]{74, -32, 93, 13, 50, 24}, new byte[]{Base64.padSymbol, -119, 51, 105, 93, 111, -66, 116}), m.h(new byte[]{70, -118, 75}, new byte[]{39, -26, 39, -52, 25, 24, -86, 24}), m.h(new byte[]{-60, 39, 106}, new byte[]{-73, 66, 30, -84, 90, 20, -100, 89}), matcher3.group(1).equals(m.h(new byte[]{105, 11, -72, ByteCompanionObject.MIN_VALUE}, new byte[]{6, 123, -35, -18, 13, -69, 12, 6})) ? 100.0d : matcher3.group(1).equals(m.h(new byte[]{124, 125, 101, -12, -41}, new byte[]{31, 17, 10, -121, -78, -110, 36, 26})) ? 0.0d : 10.0d);
        }
        Matcher matcher4 = Pattern.compile(m.h(new byte[]{20, -11, -92, 39, 18, 90, -104, 11, 9, -100, -45, 52, 9, 93, -118, 1, 12, -65, -117, 49, 8, 71, -103, 10, 25, -90, -119, 44, 9, 81, -99, 22, 33, -81, -98, 54, 15, 72, -114, 1, 31, -79, -92, 34, 18, 83, -108, 16, 87, -100, -45, 63, 11, 81, -110, 24, 29, -81, -108, 35, 30, 72, -118, 1, 16, -73, -46}, new byte[]{126, -61, -5, 80, 123, 52, -4, 100})).matcher(strReplaceFirst);
        if (matcher4.matches()) {
            String strH2 = m.h(new byte[]{48, 90, -51, 19, 27, -121}, new byte[]{71, 51, -93, 119, 116, -16, -124, 35});
            if (matcher4.group(1).equals(m.h(new byte[]{27, -14, 8, 102, -56, -69}, new byte[]{ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MIN_VALUE, 97, 16, -83, -55, 11, -114}))) {
                strH = m.h(new byte[]{31, 31}, new byte[]{121, 115, 42, -102, -119, -52, 114, -98});
            } else if (matcher4.group(1).equals(m.h(new byte[]{111, -30, 4, -79, 38, 25, 123, 40, 109}, new byte[]{31, -125, 119, -62, 67, 119, 28, 77}))) {
                strH = m.h(new byte[]{58, -84}, new byte[]{92, -34, 95, 60, -125, -115, -59, -94});
            } else {
                strH = matcher4.group(1).equals(m.h(new byte[]{-23, 62, 42, 105, 100, 3, -33, 82, -17}, new byte[]{-101, 91, 75, 27, 59, 111, -70, 52})) ? m.h(new byte[]{-118, -48}, new byte[]{-8, -68, 0, -14, 125, -87, 15, -48}) : m.h(new byte[]{-89, -18}, new byte[]{-43, -100, -39, 58, 32, 91, 104, 28});
            }
            return new y0(strH2, strH, m.h(new byte[]{59, -45, -17}, new byte[]{72, -74, -101, 12, 28, -121, -13, 120}), matcher4.group(2).equals(m.h(new byte[]{-36, 43, -45, 10}, new byte[]{-77, 91, -74, 100, 27, 29, 95, 42})) ? 100.0d : matcher4.group(2).equals(m.h(new byte[]{-77, 85, -106, 90, -126}, new byte[]{-48, 57, -7, 41, -25, 43, 44, 88})) ? 0.0d : 10.0d);
        }
        Matcher matcher5 = Pattern.compile(m.h(new byte[]{-69, 46, -29, -80, -78, -28, -33, -28, -69, 126, -87, -93, -92, -57, -107, -73, -4, 98, -68, -17, -107, -52, -97, -75, -9, 126, -82, -75, -30, -124, -52, -124, -69, 119, -84, -86, -90, -57, -86, -65, -72, 56, -16, -7}, new byte[]{-109, 17, -39, -58, -54, -69, -10, -37})).matcher(strReplaceFirst);
        if (matcher5.matches()) {
            return new y0(m.h(new byte[]{19, 40, -102, -8, 68, 35}, new byte[]{100, 65, -12, -100, 43, 84, -54, 116}), m.h(new byte[]{23, 19, -30}, new byte[]{118, ByteCompanionObject.MAX_VALUE, -114, 71, 19, 50, -17, -24}), m.h(new byte[]{52, 55, 126}, new byte[]{71, 82, 10, -87, -55, -54, -95, -50}), matcher5.group(1).equals(m.h(new byte[]{20, -74, -49, -116, 117}, new byte[]{119, -38, -96, -1, 16, -37, 45, -96})) ? 0.0d : z(matcher5.group(2), 100.0d));
        }
        Matcher matcher6 = Pattern.compile(m.h(new byte[]{-117, -112, 107, 27, -48, -70, -63, 115, -52, -116, 126, 87, -31, -79, -53, 113, -57, -112, 108, 33, -106, -96, -48, 112, -51, -117, 103, 12, -37, -89, -48, 54, -4, -41, 119, 27, -40, -78, -34, 109, -54, -104, 115, 10, -105, -18, -99, 37, -4, -41, 125, 11, -46, -86, -34, 67, -57, -44, 50, 87, -127}, new byte[]{-93, -1, 27, 126, -66, -58, -94, 31})).matcher(strReplaceFirst);
        if (matcher6.matches()) {
            return new y0(m.h(new byte[]{-52, -71, 57, -42, -50, 119}, new byte[]{-69, -48, 87, -78, -95, 0, -120, 2}), (matcher6.group(2).equals(m.h(new byte[]{-19, -63, -44, 107, 12}, new byte[]{-117, -77, -69, 5, 120, -57, 98, 124})) ? m.h(new byte[]{65}, new byte[]{39, -95, -57, -37, 14, 0, -14, 105}) : m.h(new byte[]{37}, new byte[]{87, -73, -123, ByteCompanionObject.MIN_VALUE, -91, -117, -110, -123})).concat(matcher6.group(3).equals(m.h(new byte[]{106, 8, 97, 125}, new byte[]{6, 109, 7, 9, 95, 50, -65, 99})) ? m.h(new byte[]{34}, new byte[]{78, -124, 80, -75, 56, 9, 47, -43}) : m.h(new byte[]{-118}, new byte[]{-8, 125, 46, -21, -82, 0, 55, 78})), m.h(new byte[]{67, 35, 94}, new byte[]{48, 70, 42, 4, 18, 88, -63, 43}), matcher6.group(1).equals(m.h(new byte[]{-24, -52, -91, 74, 96}, new byte[]{-117, -96, -54, 57, 5, 72, 119, 11})) ? 0.0d : z(matcher6.group(4), 100.0d));
        }
        Matcher matcher7 = Pattern.compile(m.h(new byte[]{14, 12, -33, 44, -29, -119, 117, 3, 10, 21, -12, 45, -12, -127, 90, 78, 35, 69, -78, 5, -81, -69, 45, 58, 28, 95, -87, 7, -82, -72, 97, 77, 81}, new byte[]{120, 116, ByteCompanionObject.MIN_VALUE, 88, -122, -28, 5, 102})).matcher(strReplaceFirst);
        if (matcher7.matches()) {
            return new y0(m.h(new byte[]{-8, -110, 63, -8, 17, 126, 73, 6, -7, -123, 55}, new byte[]{-116, -9, 82, -120, 116, 12, 40, 114}), matcher7.group(1).equals(m.h(new byte[]{-31}, new byte[]{-48, -33, -65, -21, 124, 53, 70, 14})) ? m.h(new byte[]{-69, -58}, new byte[]{-35, -86, -62, 64, 25, 95, 110, 83}) : m.h(new byte[]{-20, -59}, new byte[]{-118, -73, 92, -42, 107, -51, -28, -72}), m.h(new byte[]{-67, -74, 35}, new byte[]{-50, -45, 87, -99, 9, 3, 6, 117}), Double.parseDouble(matcher7.group(2) + m.h(new byte[]{-15}, new byte[]{-33, 47, 56, -21, 3, -100, 72, 70}) + matcher7.group(3)));
        }
        Matcher matcher8 = Pattern.compile(m.h(new byte[]{119, -30, 71, 112, -95, 36, -23, -16, 15, -57, 70, 106, -78, 47, -4, -23, 45, -113, 106, 77, -78, 44, -21, -45, 119, -13, 69, 101, -109, 46, -20, -30, 118}, new byte[]{95, -90, 53, 25, -41, 65, -101, -116})).matcher(strReplaceFirst);
        if (matcher8.matches()) {
            return new y0(m.h(new byte[]{86, -107, -72, -45, -109, -112, 82, -49, 87, -126, -80}, new byte[]{34, -16, -43, -93, -10, -30, 51, -69}), matcher8.group(1).equals(m.h(new byte[]{-30, -24, 72, -125, -96, -115}, new byte[]{-90, -102, 33, -11, -59, -1, 75, -122})) ? m.h(new byte[]{-26, -126}, new byte[]{ByteCompanionObject.MIN_VALUE, -18, -1, -59, 15, 11, 62, -68}) : m.h(new byte[]{15, 16}, new byte[]{105, 98, 72, 110, -116, -56, -61, 116}), matcher8.group(2).toLowerCase(Locale.ROOT), 0.0d);
        }
        Matcher matcher9 = Pattern.compile(m.h(new byte[]{54, -5, -37, 45, -37, -59, -70, 52, 112, -25, -105, 19, -121, -61, -83, 53, 65, -70, -127, 63, -54, -40, -72, 14, 54, -56, -46, 62, -14, -112, -109, 121, 113, -11, -40, 48, -12, -119, -31, 98, 67, -70}, new byte[]{30, -109, -66, 76, -81, -71, -52, 81})).matcher(strReplaceFirst);
        if (matcher9.matches()) {
            String strGroup = matcher9.group(1);
            StringBuilder sb = new StringBuilder();
            sb.append(matcher9.group(2) == null ? m.h(new byte[]{34}, new byte[]{68, 42, 126, -64, -116, 76, 7, 31}) : m.h(new byte[]{115}, new byte[]{1, 99, -118, -37, 74, -34, 34, -112}));
            sb.append(matcher9.group(3));
            return new y0(strGroup, sb.toString(), m.h(new byte[]{89, 84, 56}, new byte[]{42, 49, 76, -101, -122, -113, -84, -83}), z(matcher9.group(4), 0.0d));
        }
        Matcher matcher10 = Pattern.compile(m.h(new byte[]{-127, -91, 21, 110, -111, -78, 31, 70, -33, -122, 123, 47, -87, -6, 52, 49, -97, -72, 43, 105, -120, -91, 14, 119, -125, -12, 21, 53, -81, -29, 70, 42, -86, -12}, new byte[]{-9, -35, 74, 29, -12, -45, 107, 25})).matcher(strReplaceFirst);
        if (matcher10.matches()) {
            return new y0(matcher10.group(2), matcher10.group(1).equals(m.h(new byte[]{-89}, new byte[]{-106, -84, -49, 47, -26, -57, 99, 54})) ? m.h(new byte[]{4, -110}, new byte[]{98, -2, -109, 27, -25, -127, -96, 93}) : m.h(new byte[]{51, -55}, new byte[]{85, -69, -70, -105, -18, 91, 31, -7}), m.h(new byte[]{-29, 45, -87}, new byte[]{-112, 72, -35, -48, 69, 78, 82, -95}), z(matcher10.group(3), 0.0d));
        }
        Matcher matcher11 = Pattern.compile(m.h(new byte[]{-100, 101, 121, -10, 96, 88, 15, -123, -56, 48, 117, -94, 43, 26, 21, -44, -21, 115, 124, -67, 51, 11, 20, -100, -64, 63, 28, -72, 62, 12, 38, -43, -24, 62, 104, -9}, new byte[]{-76, 90, 67, -34, 95, 98, 121, -3})).matcher(strReplaceFirst);
        if (matcher11.matches()) {
            return new y0(m.h(new byte[]{-82, 41, 22}, new byte[]{-56, 72, 120, 48, 89, 105, -73, -92}), m.h(new byte[]{44, -61, 122}, new byte[]{77, -81, 22, -113, 122, -42, 78, 21}), m.h(new byte[]{43, 20, -106}, new byte[]{88, 113, -30, 31, -4, 120, 66, 58}), z(matcher11.group(1), 0.0d));
        }
        Matcher matcher12 = Pattern.compile(m.h(new byte[]{46, 87, 80, -20, -41, -89, -108, -37, 122, 2, 92, -72, -100, -27, -114, -118, 89, 65, 85, -89, -124, -12, -113, -62, 114, 13, 53, -91, -127, -17, -67, -117, 40, 67, 67}, new byte[]{6, 104, 106, -60, -24, -99, -30, -93})).matcher(strReplaceFirst);
        if (matcher12.matches()) {
            String[] strArr = {m.h(new byte[]{27, 64, 3, -70}, new byte[]{125, 33, 96, -33, 100, -75, 126, 82}), m.h(new byte[]{86, -48, -15, -117, -54, -100, ByteCompanionObject.MAX_VALUE, -10, 68}, new byte[]{48, -79, -110, -18, -107, -6, 26, -109}), m.h(new byte[]{-49, 118, -39, -11}, new byte[]{-87, 19, -68, -127, -35, -48, -122, -78}), m.h(new byte[]{23, -116, -64, 56, 115, 83, -53, -4, 2, -102}, new byte[]{113, -23, -91, 76, 44, 52, -89, -99}), m.h(new byte[]{55, -103, -57, 22, -91}, new byte[]{80, -11, -90, 101, -42, -72, -121, 57}), m.h(new byte[]{-98, -60, 67, -108, -68, 8, -85, -26, -117, -42}, new byte[]{-8, -91, 32, -15, -29, 111, -57, -121}), m.h(new byte[]{124, 104, 5}, new byte[]{29, 4, 105, 45, -32, 3, -29, -81})};
            String strGroup2 = matcher12.group(1);
            if (strGroup2.matches(m.h(new byte[]{0, -41, -107, -108, -8}, new byte[]{91, -25, -72, -94, -91, -127, -86, 71}))) {
                strGroup2 = strArr[Integer.parseInt(strGroup2)];
            }
            for (int i9 = 0; i9 < 7; i9++) {
                if (strArr[i9].equals(strGroup2)) {
                    return new y0(q.l(new byte[]{94, 83, -4, 58}, new byte[]{63, 58, -114, 0, -98, 109, 49, 44}, new StringBuilder(), strGroup2), m.h(new byte[]{-35, 105, 53}, new byte[]{-68, 5, 89, -20, -52, 122, 101, 120}), m.h(new byte[]{-20, -105, -124}, new byte[]{-97, -14, -16, 39, -70, -15, -28, 33}), 0.0d);
                }
            }
        }
        Matcher matcher13 = Pattern.compile(m.h(new byte[]{-59, -26, -81, 63, 25, -54, 52, 31, -111, -77, -93, 107, 82, -120, 46, 78, -78, -16, -86, 116, 74, -103, 47, 6, -103, -68, -54, 63, 86, -97, 53, 2, -97, -91, -12, 116, 90, -111, 55, 19, -126, -91, -26, 110, 72, -109, 62, 21, -120, -70, -4, 101, 69, -123, 46, 6, -103, -80, -6, 121, 90, -106, 48, 8, -125, -83, -54, 115, 67, -106, 48, 8, -98, -83, -23, 101, 67, -111, 48, 56, -119, -68, -13, 101, 73, -125, 54, 27, -117, -85, -6, 121, 82, -81, 37, 11, -116, -86, -26, 72, 78, -107, 35, 19, -111, -86, -31, 114, 67, -126, 43, 9, -118, -122, -30, ByteCompanionObject.MAX_VALUE, 67, -107, 46, 56, -123, -68, -12, 99, 15, -81, 106, 8, -125, -91, -6, 113, 64, -39}, new byte[]{-19, -39, -107, 23, 38, -16, 66, 103})).matcher(strReplaceFirst);
        if (matcher13.matches()) {
            return new y0(m.h(new byte[]{67, 32, 34, 117, 4, 87, 34}, new byte[]{48, 87, 75, 1, 103, 63, 24, 52}) + matcher13.group(1), m.h(new byte[]{-1, -97, -82}, new byte[]{-98, -13, -62, -54, 115, 78, 116, -23}), matcher13.group(2), 0.0d);
        }
        Matcher matcher14 = Pattern.compile(m.h(new byte[]{-101, 76, 99, 15, 31, -77, -24, -36, -106, 76, 110, 7, 55, -14, -15, -48, ByteCompanionObject.MIN_VALUE, 65, 107, 30, 44, -1, -29, -58, -106, 72, 112, 12, 41, -11, -5, -37, -124, 0, 93, 83, 47, -11, -29, -37, -107, 79, 43}, new byte[]{-13, 41, 2, 123, 64, -101, -97, -76})).matcher(strReplaceFirst);
        if (!matcher14.matches()) {
            if (strReplaceFirst.equals(m.h(new byte[]{-127, 35, 42, -119, -109, -92, 58, -78, -115, 63, 38, -118, -83, -90, 39}, new byte[]{-18, 83, 79, -25, -52, -46, 66, -19})) || strReplaceFirst.equals(m.h(new byte[]{-97, -73, -26, 74, 44, 112, 47, 103, -100, -82, -18, 69, 7, ByteCompanionObject.MAX_VALUE}, new byte[]{-16, -57, -125, 36, 115, 26, 112, 4})) || strReplaceFirst.equals(m.h(new byte[]{ByteCompanionObject.MAX_VALUE, -28, 103, -45, -11, 41, 41, -92, 115, -8, 107, -48, -53, 55, 122}, new byte[]{16, -108, 2, -67, -86, 67, 31, -5})) || strReplaceFirst.equals(m.h(new byte[]{-9, 33, -4, -119, -60, -41, -21, -110, -57, 50, -11, -114, -10, -62, -25, -101}, new byte[]{-104, 81, -103, -25, -101, -93, -109, -2}))) {
                return new y0(m.h(new byte[]{121, 45, 120, -100, -66, ByteCompanionObject.MAX_VALUE, 49, 89}, new byte[]{10, 72, 12, -24, -41, 17, 86, 42}), m.h(new byte[]{-16, -103, -97}, new byte[]{-111, -11, -13, 94, -19, 77, 118, -64}), m.h(new byte[]{-29, -49, 53, 10}, new byte[]{-116, -65, 80, 100, 82, -48, -86, 66}), 0.0d);
            }
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(m.h(new byte[]{60, -89, -32, 23, -80, -74, 65}, new byte[]{79, -48, -119, 99, -45, -34, 123, 101}));
        sb2.append(matcher14.group(1).equals(m.h(new byte[]{97, 63, -111, 36, -116}, new byte[]{22, 87, -12, 65, -32, 76, -103, -108})) ? m.h(new byte[]{74, 37, -23, 7, 69, -105, -60, 85, 102, 38, -28, 7, 82, -110, -11, 90, 92, 48, -8}, new byte[]{57, 81, -116, 98, 55, -2, -86, 50}) : matcher14.group(1).equals(m.h(new byte[]{19, 99, -29, 91, -99, 99, -80, -41, 8, 110}, new byte[]{100, 10, -115, 63, -18, 11, -39, -78})) ? m.h(new byte[]{31, 55, -86, -28, 6, -47, -61, -83, 24, 54, -74, -43, 26, -21, -59, -75}, new byte[]{121, 69, -59, -118, 114, -114, -92, -63}) : m.h(new byte[]{-122, -14, -53, -91, -127, 46, 24, 57, -122, -8, -39, -93}, new byte[]{-12, -105, -86, -41, -34, 74, 125, 95}));
        return new y0(sb2.toString(), m.h(new byte[]{-36, -8, -21}, new byte[]{-67, -108, -121, -54, -115, 56, 7, -117}), matcher14.group(2), 0.0d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float g(float f8, float f9, float f10, float f11) {
        double d = f8 - f10;
        double d9 = f9 - f11;
        return (float) Math.sqrt((d9 * d9) + (d * d));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float h(int i9, int i10, int i11, int i12) {
        double d = i9 - i11;
        double d9 = i10 - i12;
        return (float) Math.sqrt((d9 * d9) + (d * d));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        if (r0 > 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
    
        if (r4 > 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
    
        if (r4 < 0) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int i(int i9, int i10) {
        RoundingMode roundingMode = RoundingMode.CEILING;
        roundingMode.getClass();
        if (i10 == 0) {
            throw new ArithmeticException("/ by zero");
        }
        int i11 = i9 / i10;
        int i12 = i9 - (i10 * i11);
        if (i12 != 0) {
            int i13 = ((i9 ^ i10) >> 31) | 1;
            switch (l4.a.f3286a[roundingMode.ordinal()]) {
                case 1:
                    if (i12 != 0) {
                        throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                    }
                case 2:
                    return i11;
                case 3:
                    break;
                case 4:
                    return i11 + i13;
                case 5:
                    break;
                case 6:
                case 7:
                case 8:
                    int iAbs = Math.abs(i12);
                    int iAbs2 = iAbs - (Math.abs(i10) - iAbs);
                    if (iAbs2 == 0) {
                        RoundingMode roundingMode2 = RoundingMode.HALF_UP;
                        RoundingMode roundingMode3 = RoundingMode.HALF_EVEN;
                    }
                    return i11;
                default:
                    throw new AssertionError();
            }
        }
        return i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean j(String str) {
        return l(str, m.h(new byte[]{-80, 14, -22, -115, 6, -70, -59, 85, -79, 62, -22, -122, 6, -75, 73, -99, 27, -16, 71, 25, -86, -34, -86, Base64.padSymbol, -48, 109, -69, -30, 87, -34, -91, Base64.padSymbol, -42, 108, -126, -30, 86, 82, 101, -106, 44, -63, 16, 79, 6, -75, -59, 88, -80, 14, 102, 67, -83, 66, 104, -57, 28, 108, -123, -30, 86, -34, -91, Base64.padSymbol, -46, -32, 74, 72, -102, 115, 63, -111, -79, Base64.padSymbol, -22, -120, 6, -69, -59, 95, -80, 12, 70, -30, 87, -34, -86, 60, -32, 108, -118, -29, 100, -34, -91, -111, -80, 11, -22, -125, 6, -70, -59, 80, 60, -52, 65, ByteCompanionObject.MAX_VALUE, -85, 36, 105, Base64.padSymbol, -33, 108, -113, -30, 86, -34, -96, Base64.padSymbol, -44, 108, -121, 111, -90, 117, 89, -112, 74, -64, -21, -78, 6, -71, -59, 93, -80, 8, -22, -117, -86, -33, -108, Base64.padSymbol, -33, 108, -113, -30, 86, -34, -96, Base64.padSymbol, -44, 108, -126, 79, -78, 124, 124, -101, 5, -50, 70, 67, -73, 125, 102, -120, 14, -37, 95, 65, -86, 98, 112, -117, 20, -64, 72, 90, -79, 102, 97, -111, 18, -39, 91, 65, -86, 104, 103, -126, 14, -56, 70, 81, -73, 109, 126}, new byte[]{96, -68, 58, 51, -42, 14, 21, -19}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean l(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        q.u(new byte[]{111, 95, 117, -6, 79, 33, -113, -47, 111, 95, 117}, new byte[]{71, 96, 79, -92, 51, 125, -4, -8}, sb, str2);
        sb.append(m.h(new byte[]{63, -94, 88, 40, -48, 21, -10, -22, 63}, new byte[]{22, -118, 103, 21, -116, 102, -118, -50}));
        return Pattern.compile(sb.toString()).matcher(str).find();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean m(String str) {
        String strReplaceFirst = d1.c(str).replaceFirst(m.h(new byte[]{-41, -18, 10, 75, -25, -71, 35, 64, 10, 23, -75, -95, 113, 86, -85, 65, 60, 22, -120, -96, 67, -6, -56, 16, 89, 124, -27, -49, 30, 6, -55, 47, 88, 71, -28, -13, 30, 10, 101, -3, -20, -80, 80, 29, -77, -11, 105, -12, -20, -94, 28, 89, -16, -68, 57, -71, -74, -4, -27, -52, 31, 54, 101, -27, -26, -17, 28, 78, -77, 86, -92, 65, 57, -70, 65, 30, -26, -38, 106, -70}, new byte[]{-119, -58, 53, 113, -49, -122, 25, -111}), "");
        if (!strReplaceFirst.isEmpty()) {
            for (String str2 : strReplaceFirst.split(m.h(new byte[]{Base64.padSymbol, 122, 95}, new byte[]{97, 9, 116, 126, 9, -24, 40, 98}))) {
                if ((str2.matches(m.h(new byte[]{115, -31, -97}, new byte[]{47, -123, -76, -8, -14, 81, -82, -103})) || str2.matches(m.h(new byte[]{-2, 9, -121, 60, -96, 100}, new byte[]{-94, 121, -4, 112, -35, 79, -30, -36}))) && r(str2).size() == 1) {
                }
            }
            if (r(strReplaceFirst).size() == 1) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean n(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int o(int i9) {
        RoundingMode roundingMode = RoundingMode.UNNECESSARY;
        if (i9 <= 0) {
            i.k(ai.onnxruntime.a.f(i9, "x (", ") must be > 0"));
            return 0;
        }
        switch (l4.a.f3286a[roundingMode.ordinal()]) {
            case 1:
                if (!((i9 > 0) & (((i9 + (-1)) & i9) == 0))) {
                    throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                }
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i9 - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i9);
                return (31 - iNumberOfLeadingZeros) + ((~(~(((-1257966797) >>> iNumberOfLeadingZeros) - i9))) >>> 31);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:652:0x1202  */
    /* JADX WARN: Code restructure failed: missing block: B:478:0x0d65, code lost:
    
        if (r2 != false) goto L474;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static h p(String str, Collection collection, Map map) {
        boolean zL;
        boolean z8;
        y0 y0Var;
        int i9;
        String strH;
        String strH2;
        String strH3;
        y0 y0Var2;
        int i10;
        String strH4;
        String strH5;
        int i11;
        String strH6;
        int i12;
        int i13;
        Double dValueOf;
        String strH7;
        Double dValueOf2;
        int i14;
        String strA = d1.a(str);
        if (l(strA, m.h(new byte[]{-99, 4, -52, 35, -106, -116, -59, -55, -100, 49, -52, 35, 110, 9, 46, -103, -3, -58, -51, 31, 58, -25, -97, 96, 114, -58, -51, 22, -106, -122, -60, -13, -100, 58, -52, 42, -105, -76, 60, 118, 119, 106, -83, -35, -106, -120, 104, -104, -58, -109, 34, -35, -106, -124, -60, -13, -99, 1, -52, 47, -105, -79, -60, -4, -99, 7, 53, -98, 124, -26, -92, 53, -99, 4, 97, 112, -51, 31, 43, 53, -99, 8, -52, 42, -106, -116, -60, -14, -100, 52, -52, 38, -106, -125, -60, -12, 101, -123, 39, 113, -10, 74, -60, -9, 49, 107, -106, -120, 121}, new byte[]{77, -70, 29, -95, 70, 54, 20, 73})) || l(strA, m.h(new byte[]{-3, -32, -100, 91, -118, 19, -91, -32, -80, -93, -47, 83, -118, 19, -77, -9, -89, -70, -113, 18, -47, 80, -2, -3, -91, -70, -56, 78, -102, 3, -85, -31, -80, -69, -38, 93, -105, 19, -85, -12, -77, -10}, new byte[]{-43, -33, -90, 50, -7, 111, -60, -110}))) {
            return t(m.h(new byte[]{-14, 5, 70, 106, -19, 81, -109, 81, -30, 27, 90, 121, -1, 107, -93, 81, -40, 26, 64, 100, -1, 81}, new byte[]{-121, 107, 53, 11, -117, 52, -52, 35}));
        }
        if (l(strA, m.h(new byte[]{-51, 58, -96, -123, 79, -87, -71, -6, -51, 50, -95, -72, 79, -94, -72, -61, -51, Base64.padSymbol, 13, -44, 30, -57, -45, -110, -83, 85, -57, -43, 39, 107, -71, -3, -51, 59, -95, -73, 78, -107, -71, -4, -52, 5, -95, -67, -29, -58, -23, -110, -83, 84, -16, -44, 30, -57, -45, -110, -83, 85, -57, -43, 39, 107, -71, -16, -52, 2, -95, -80, 78, -105, -71, -14, 97, 84, -16, -43, 37, -57, -39, -110, -86, 85, -63, -43, 36, 107, -72, -61, -51, 62, -96, -114, 78, -97, -71, -14, -51, 62, 13, -43, 45, -57, -45, -110, -90, 84, -1, -44, 24, -57, -47, -110, -90, -7, -95, -73, 78, -100, -71, -8, -51, 62, -96, -117, 78, -112, -71, -6, -51, 62, 13, -43, 33, -58, -21, -110, -89, 84, -15, -44, 20, -57, -46, 62, -51, 50, -95, -75, 79, -83, -72, -62, -52, 14, -95, -66, -29, -57, -41, -109, -97, 85, -53, -44, 31, -58, -30, -110, -81, 85, -63, -43, 36, 107, -71, -11, -51, 53, -95, -65, 78, -105, -72, -55, -51, 55, -95, -75, 79, -84, 21, -109, -98, 84, -16, -44, 29, -57, -39, -110, -96, 85, -49, -43, 45, -57, -47, -110, -90, -7, -95, -70, 79, -87, -72, -61, -52, 7, -95, -75, 79, -91, -71, -6, -51, 62, 13, 119, -6, 103, 12, 35, 105, -7, 2, 100, -26, 107, 16, 39, 110, -15, 20, 119, -5, 118, 16}, new byte[]{29, -123, 113, 5, -97, 23, 105, 66}))) {
            return t(m.h(new byte[]{-114, 105, -17, -68, -88, 18, -82, -95, -98, 119, -13, -81, -70, 40, -98, -95, -92, 118, -23, -78, -70, 18}, new byte[]{-5, 7, -100, -35, -50, 119, -15, -45}));
        }
        if (l(strA, m.h(new byte[]{123, -67, -70, -61, 66, 100, -44, -88, 30, -47, -24, 10, -18, 5, -71, -51, 123, -73, 22, -90, -125, 100, -36, -88, 16, -47, -26, -90, -119, 101, -26, 4, 123, -66, -69, -12, -18, 8, -71, -51, 123, -67, 54, 6, 69, -8, 20, 82, -41, -48, -44, -89, -68, 100, -40, -88, 21, -48, -45, 10, -18, 11, -71, -51, 122, ByteCompanionObject.MIN_VALUE, -70, -61, -17, 53, -72, -6, 123, -80, -70, -53, -17, 56, 21, 28, -60, 110, 77, 2, 66, -48, 6, 22, -33, 124, 4, 25, 74, -56, 7, 29, -35, 101, 24, 10, 73, -35, 29, 16, -60, 117, 30, 10, 93, -43, 7, 27, -50, 108, 22, 5, 74, -37, 25}, new byte[]{-85, 0, 106, 118, 62, -76, 105, 120}))) {
            return t(m.h(new byte[]{-69, -117, 33, -112, -60, 122, -88, -51, -118, -127, 52, -82, -45, 114, -87, -64, -80, -126}, new byte[]{-43, -18, 70, -15, -80, 19, -57, -93}));
        }
        if (l(strA, m.h(new byte[]{94, -11, -69, -78, 114, 126, -76, 46, 94, -10, -70, -113, -33, 41, -45, 75, 62, -101, -20, -36, 22, 41, -40, -25, 94, -16, -69, -78, 115, 74, -76, 47, 94, -6, 23, -36, 22, 40, -27, 75, 53, -102, -45, 112, 115, 66, -76, 35, -14, Base64.padSymbol, 3, 105, -41, -111, 1, -23, -14, Base64.padSymbol, 3, 117, -33, -114, 12, -2, -32, 54, 2, 106}, new byte[]{-114, 74, 107, 12, -93, -7, 100, -101}))) {
            return t(m.h(new byte[]{109, -59, -63, 34, -27, -49, 45, -126, 67, -33, -42, 14, -14, -55, 44, -120, 117, -60, -51, 62, -1}, new byte[]{28, -80, -92, 81, -111, -90, 66, -20}));
        }
        if (l(strA, m.h(new byte[]{0, -45, 27, -124, -74, 52, -46, 62, 0, -48, -73, -22, -40, 102, -68, 80, 103, -68, 125, -22, -46, -54, -46, 55, 0, -36, 26, -72, -73, 3, -46, 60, -84, -68, 124, -22, -41, 102, -80, 81, 82, -67, 75, -22, -41, -54, -45, 7, 0, -39, 26, -70, -73, 3, -46, 55, -84, 0, -86, 78, 2, -60, 126, -12, -65, 1, -92, 72, 21, -39, 117, -4, -92, 4, -82, 84}, new byte[]{-48, 108, -53, 58, 103, -74, 2, ByteCompanionObject.MIN_VALUE}))) {
            return t(m.h(new byte[]{-99, -116, -17, 81, 47, 35, -5, -124, -90, -122, -5, 107, 48, 36, -14, -108, -112, -103, -27, 81, 2, 50, -15, -115, -108, -120, -25, 80, 46}, new byte[]{-7, -23, -119, 52, 93, 81, -98, -32}));
        }
        if (l(strA, m.h(new byte[]{49, 104, 52, -65, 97, -84, -80, 69, 48, 81, 52, -68, 96, -103, -80, 73, 49, 110, -72, ByteCompanionObject.MAX_VALUE, -53, 96, 29, -38, -100, -118, -123, 103, -62, 73, 14, -104, -123, -123, -112, 115, 96, -106, -80, 69, 48, 87, 53, -125, 96, -98, -80, 72, 48, 81, -72, ByteCompanionObject.MAX_VALUE, -53, 96, 29, -38, -100, -121, -127, 99, -58, 69, 14}, new byte[]{-32, -20, -28, 15, -80, 44, 96, -16})) || l(strA, m.h(new byte[]{-79, 2, -103, -78, -113, 15, -40, -71, -79, 2, -103, -77, -113, 24, -40, -13, -58, 78, -115, -96, -20, 27, -40, -13, -58, 79, -115, -26, 96, -118, 84, 41, Base64.padSymbol, -35, 99, 24, 96, -117, 85, 23, Base64.padSymbol, -42, -50, 74, 15, -27, 58, 71, 86, -73, 48, 74, 14, -28, 4, 70, 102, 26, 98, 39, 96, ByteCompanionObject.MIN_VALUE, 85, 22, Base64.padSymbol, -36, 98, 36, 96, -114, 85, 27, Base64.padSymbol, -36, 98, 36}, new byte[]{-19, 102, -78, -102, -80, 53, -124, -105}))) {
            return t(m.h(new byte[]{2, -29, -124, -48, -111, -115, -54, -60, 25, -28, -125, -18, -104, -102, -54, -57, 22, -31, -126, -44}, new byte[]{119, -115, -9, -79, -9, -24, -107, -79}));
        }
        if (Pattern.compile(m.h(new byte[]{101, -85, -43, 79, -99, -38, -6, -104, 101, -85, -43, -63, 89, -6, 89, 1, 49, -11, -127, 117, -56, -38, -6, -102, 101, -85, -43, -63, 84, 87, 0, 97, -8, -56, -100, 58, -56, -71, -95, -114, 119, 68, 81, -64, 99, 86, 51, 96, -51, -24, 63, -90, 49, 54, 89, 11, -100, 20, -109, -63, 83, 86, 51, 97, -10, 69, 97, -64, 102, -6, 89, 3, -100, 31, 63, -85, 49, Base64.padSymbol, 88, 63, -100, 19, -109, -64, 98, 87, 8, 96, -49, 68, 95, -63, 92, 86, 55, 97, -1, -24, 63, -82, 49, 56, 88, 48, -100, 22, 63, -95, 49, 52, -11, 97, -6, 68, 95, -63, 94, 87, 10, 96, -52, 69, 109, 109, 49, 49, 89, 1, -99, 39, 63, -86, 48, 5, 88, 57, 49, 68, 93, -63, 84, 87, 9, 97, -16, 68, 87, 109, 49, 57, 89, 4, -100, 20, 63, -92, 49, 60, 89, 10, -100, 26, 62, -106, -99, -23, -7, -44, 35, -24, -116, 125, -114, -11, -20, -51, 57, -31, -99, ByteCompanionObject.MAX_VALUE, -99, -11, -20, -59, 49, -7, -102, 101, -124, -6, -4, -33, 32, -31, -101, 116, -99, -14, -26, -42, 42, -8, -118, 56, -67, -10, -14, -3, 48, -66}, new byte[]{77, -108, -17, 17, -31, -122, -119, -79})).matcher(strA).find()) {
            return t(m.h(new byte[]{120, 53, -8, 117, 124, -78, ByteCompanionObject.MIN_VALUE, 22, 74, 35, -5, 108, 120, -93, -126, 23, 102}, new byte[]{21, 64, -108, 1, 21, -62, -20, 115}));
        }
        boolean zL2 = l(strA, m.h(new byte[]{-116, -43, -34, -21, -71, -45, 4, -78, -115, -23, 82, 35, 18, 43, -87, 45, 33, -123, -113, -125, -47, -73, 96, -42, -34, -123, -122, 15, 25, 28, -104, 122, 119, 40, -34, -23, -72, -25, 4, -78, -116, -43, -34, -24, 53, 23, -81, 75, 32, 126, 114, 32, 12, 6, -96, 92, 46, 9, 49}, new byte[]{93, 84, 14, 83, 105, 103, -44, 7}));
        boolean zL3 = l(strA, m.h(new byte[]{-18, -51, 15, 42, 94, -8, -16, 25, 114, 34, -117, -122, 49, -106, -98, 120, 22, 76, 28, -59, 49, -101, -97, 73, 22, 71, -27, 72, -67, 88, 53, -123, -69, -40, 73, 42, 94, -8, -16, 25, 114, 34, -117, 42, 82, -7, -50, 25, 115, -82, 69, -127, -83, 85, 100, -75, 22, 76, -27, 75, 49, -106, -98, 122, 23, 114, -27, 79, -67, 88, 53, -123, -69, -40, 73, 42, 94, -8, -16, 25, 117, 35, -75, 42, 84, -8, -9, -75, 22, 79, -27, 74, 49, -101, -97, 73, 22, 71, -27, 67, -99, 64, 43, -88, -78, -82, 69, -127, -83, 85, 100, -75, 22, 77, -27, 68, 49, -100, -98, 119, 22, 65, -28, 122, 49, -99, -98, 123}, new byte[]{-58, -14, 53, -6, -31, 40, 78, -55}));
        boolean zL4 = l(strA, m.h(new byte[]{-107, -114, -32, -24, -17, 0, -60, 37, -107, -124, -32, -26, -18, 50, -60, 33, 25, 76, 75, 17, 66, -105, 105, -47, 32, 82, 68, 52, 83, -36, 97, -5, 53, 71, 124, 32, 21}, new byte[]{69, 60, 48, 93, 63, -67, 21, -89}));
        boolean zL5 = l(strA, m.h(new byte[]{82, 111, 52, 87, 73, 72, -70, -21, -8, -93, -104, -2, -27, ByteCompanionObject.MIN_VALUE, -110, -2, -26, -99, -116, -70, -2, -113, -111, -13, -26, -118, -119}, new byte[]{-125, -17, -27, -44, -103, -13, -26, -101}));
        boolean zL6 = l(strA, m.h(new byte[]{-42, 28, 59, -117, 103, 81, 123, Base64.padSymbol, -42, 21, -73, 69, -52, -84, -42, -87, 122, -48, -126, 91, -45, -109, -61, -22, 99, -53, -113}, new byte[]{6, -89, -21, 53, -73, -32, -85, -125}));
        boolean z9 = l(strA, m.h(new byte[]{108, -56, -92, -41, 111, Base64.padSymbol, -53, -120, 109, -14, 41, 37, -60, -60, 102, 24, -63, 46, 25, 52, -52, -5}, new byte[]{-67, 73, 117, 85, -65, -120, 27, 50})) || (zL3 && l(strA, m.h(new byte[]{-114, 97, 31, 64, -42, -48, 22, -83, -104, 107, 9}, new byte[]{-4, 4, 126, 50, -10, -89, ByteCompanionObject.MAX_VALUE, -61})));
        boolean zL7 = l(strA, m.h(new byte[]{21, 98, -33, 81, -126, -89, 90, -88, 20, 83, -34, 106, 14, 96, -15, 80, -72, -6, 47, -57, 109, 42, 90, -95, 21, 96, 115, 63, -32, 57, -86, 52, -6, -22, -33, 84, -126, -88, 91, -102, -103, -96, 116, -93, 47, 58, -10, -52, 120, 0, -79, 63, -31, 76, -6, 103, -119, -83, 37, -109, -125, -111, 91, -98, 21, 101, -33, 85, -126, -85, -42, 108, -66, -100, 114, -59, 46, -64, 49, -52, 123, 0, -66, 63, -20, -64, 56, 64, -75, -85, 67, -110, 120, 57, -10, 125, -84, -94, 47, -57, 109, 42, -2, 115, -71, -65, 97, -109, 51, 100, -93, 60, -19, -17, 53, -101, 58, 117, -86, 53, -6, -8, 48, -43, 52, 113, -23, 121, -71, -74, 106, -118, 38, 108, -19, 112, -92, -93, 124, -109, 37, 121, -28, 120, -74, -72, 102, -118, 62, 116, -93}, new byte[]{-59, -48, 15, -17, 82, 16, -118, 28}));
        boolean z10 = zL7 || l(strA, m.h(new byte[]{-81, 77, -68, 68, -61, -120, 54, -14, -81, 65, 48, -123, 104, 112, -102, 91, 3, 35, -45, 37, -83, -19, 101, -95, -63, 35, -42, -43, -61, -122, 55, -54, -81, 75, -68, 73, -61, -116, 54, -13, -81, 67, 16, 37, -84, -20, 89, -95, -53, 34, -17, 37, -86, 64, 55, -59, -82, 112, -68, 76, 111, 93, -114, 3, 25, -97, 3, -126, 111, 93, -114, 3, 95, -107, 0, -102, 100}, new byte[]{ByteCompanionObject.MAX_VALUE, -13, 108, -11, 19, 60, -25, 113}));
        boolean z11 = !zL3 && (l(strA, m.h(new byte[]{-98, 99, 100, 0, -2, 2, 56, -77, 53, -111, -55, -112, 82, 111, -38, 19, -12, 13, 10, 106, -109, -61, -76, 125, -98, 103, 100, 4, -1, 55, 56, -77, 53, -111, -55, -112, 82, -56, 13, -83, 42, -78, -61, -55, 17}, new byte[]{78, -35, -76, -70, 46, -65, 100, -61})) || !(!z9 || z10 || zL6));
        boolean z12 = l(strA, m.h(new byte[]{86, -122, -90, -2, 17, -54, -84, -73, 87, -79, -89, -53, 17, -58, -83, -118, 86, -121, -89, -53, -99, 6, 7, 68, -6, 46, 10, -101, 114, -89, -4, -40, 55, -44, -62, -102, 66, -89, -3, 84, -9, ByteCompanionObject.MAX_VALUE, 58, 54, -21, 10, 8, 109, -22, 116, 19, 57, -96, 2, 9, 122, -30, 120, 18, 46, -90, 4, 25, 109, -12, 59, 10, -102, 67, -90, -55, -40, 56, -44, -51, -101, 116, -90, -55, 116, 87, -69, -90, -11, 16, -12, -84, -67, 87, -69, -90, -16, 17, -61, -84, -67, -5, -44, -55, -102, 65, -90, -62, -39, 2, -44, -51, -101, 113, -90, -56, -40, 58, -44, -61, -101, 116, 10, -84, -73, 87, -70, -89, -50, 17, -56, -84, -77, 87, -70, -90, -1, 17, -53, -84, -67, 87, -79, 10, -102, 68, -90, -62, -40, 60, -44, -56, -101, 117, -90, -63, -40, 50, -44, -61, 55, -74, 23, 14, 101, -30, 118, 10, 40, -82, 25, 16, 109, -11, 120, -90, -12, 17, -56, -84, -68, 87, -80, -90, -5, 17, -49, 92, -39, 5, -44, -61, -101, 126, -90, -57, -40, 55, 120, -90, -1, 17, -56, -84, -71, 87, -76, -90, -7, 16, -6, 92, -39, 5, -44, -61, -101, 126, -90, -57, -40, 55}, new byte[]{-121, 4, 118, 75, -63, 118, 124, 8})) && !zL2;
        boolean zL8 = l(strA, m.h(new byte[]{43, 56, -65, -65, 113, -112, 39, -15, -89, -4, 20, 65, -36, 15, -118, 21, -108, -29, 29, 126, -98}, new byte[]{-5, -116, 111, 13, -95, 37, -10, 113}));
        boolean zL9 = l(strA, m.h(new byte[]{-16, -4, -74, -77, -34, 103, 80, 82, -16, -5, -74, -66, -34, 108, 80, 88, 124, Base64.padSymbol, 29, 79, 115, -2, -4, -106, 82, 56, 8, 104, 114, -74, -17, -115, 84}, new byte[]{32, 77, 102, 3, 14, -44, ByteCompanionObject.MIN_VALUE, -30}));
        boolean zL10 = l(strA, m.h(new byte[]{76, 71, -94, 95, 56, 123, 84, -109, 76, 70, -93, 104, -75, -117, -1, 107, -31, -36, 14, 63, 86, 43, 49, -10, 28, 39, -11, 63, 89, 42, 6, -9, 34, 39, -11, 63, 84, -89, -12, 92, -48, -117, 88, -49, 56, 116, 85, -82, 76, 78, -94, 85, -107, -100, -24, 72, -22, -109, 16, ByteCompanionObject.MIN_VALUE, -111, -121, -29, 75, -13, ByteCompanionObject.MIN_VALUE, 23, -49, -117, -108, -4}, new byte[]{-100, -10, 114, -17, -23, -5, -124, 39}));
        boolean zL11 = l(strA, m.h(new byte[]{-25, 25, 12, -112, -99, 55, -123, -28, -25, 16, 13, -82, -100, 8, -124, -38, 107, -38, -90, 92, 48, -93, 41, -120, -124, 123, 93, -64, -13, 89, -23, -119, -80, 122, 104, 108, -99, 54, -123, -26, -25, 25, 12, -112, -99, 55, -123, -28, -26, 45, 13, -91, 49, 89, -22, -120, -119, 123, 95, -64, -11, 88, -35, -120, -126, -42, 12, -110, -99, 49, -124, -48, -25, 31, -95, 102, 34, -27, 32, 53, 82, -42, -79, ByteCompanionObject.MAX_VALUE, 56, -19, 48, 42, 75, -37, -88, 121, 40, -3, 48, 42}, new byte[]{55, -86, -35, 16, 77, -119, 85, 88}));
        boolean zL12 = l(strA, m.h(new byte[]{47, 80, -6, 91, -7, 88, 93, -43, 67, Base64.padSymbol, -89, 9, -90, 11, -93, 121, -110, -103, 95, -67, 84, 10, -112, -43, 74, 60, -100, 8, -97, 10, -109, -44, 124, Base64.padSymbol, -84, 8, -107, -122, 81, 126, -77, -111, 1}, new byte[]{-1, -20, 43, -40, 40, -38, 33, 5}));
        boolean z13 = l(strA, m.h(new byte[]{-15, -8, -80, 21, 3, 19, 57, 37, 125, 63, 27, -21, -81, -70, -107, -20, 78, 58, 14, -61, -82, -15, -100, -5, 72, 32, 28, -46, -68, -3, -100, -21, 68}, new byte[]{33, 79, 96, -89, -46, -112, -23, -97})) || zL12;
        boolean z14 = l(strA, m.h(new byte[]{74, -96, -67, -1, 53, -19, 10, 17, -57, 82, 23, 51, -104, 114, -90, 123, 36, -14, -39, -82, 100, -120, 103, -9, -21, 89, 32, 2, -49, 36, 10, 17, 75, -100, -68, -61, 53, -25, 10, 21, 75, -107, -68, -57, 52, -34, 10, 19, -57, 82, 23, 51, -104, 114, -90, -33, -23, 67, 15, 20, -106, 103, -90, -40, -12, 76, 11, 12, -38}, new byte[]{-101, 34, 108, ByteCompanionObject.MAX_VALUE, -27, 88, -38, -85})) && !zL11;
        boolean z15 = l(strA, m.h(new byte[]{112, 57, -111, 98, 107, 86, 79, 0, 112, 51, -111, 108, 106, 100, 79, 0, 112, 53, -112, 87, -25, -101, -27, -50, -35, -95, Base64.padSymbol, -79, -38, -123}, new byte[]{-96, -117, 65, -41, -69, -21, -98, -126})) || (z10 && l(strA, m.h(new byte[]{-7, 93, 122, -70, -107, 20, 74, 29, -8, 98, 123, -127, -108, 40, -57, -19, 83, -112, -41, 42, 57, 123, 24, 76, -88, 12, 20, -48, -9, -10, -21, -26, 100, -95, ByteCompanionObject.MIN_VALUE, 124, 54, -38, -2, -8, 76, -96, -58, 101, 51, -49, -9, -31, -7, 93, 122, -72, -107, 17, 74, 17, -8, 97, 122, -75, -107, 31, -25, 76, -87, 12, 17, -48, -11, 122, 42, 77, -99, 12, 31}, new byte[]{40, -36, -86, 0, 69, -86, -101, -99})));
        boolean zL13 = l(strA, m.h(new byte[]{121, 27, -29, 85, -36, -53, -66, 27, 121, 17, -30, 108, 80, 3, 21, -21, -44, -117, 79, 62, -74, -93, -48, 119, 20, 113, -121, 62, -76, -94, -24, 119, 17, 113, -115, 62, -79, -93, -37, 118, 41, -3, 67, -107, 64, 14, 68, -37, 121, 27, -29, 80, -36, -50, -66, 19, 121, 20, -29, 87, 80, 3, 21, -21, -44, -117, 79, -115, 96, 26, 3, -58, -35, -60, 79, -113, 101, 1, 78, -60, -58, -49, 87, -121, 120, 26, 1, -55, -64, -49, 84, -110, 109, 16, 18, 118, 40, 113, -117, 62, -79, -94, -21, 118, 41, 113, -115, 62, -79, 47, 30, -36, -27, -36, 25, -110, ByteCompanionObject.MAX_VALUE, 10, 0, -60, -43, 112, -77, 62, -71, -94, -24, 119, 17, 112, -77, 62, -74, -94, -19, 119, 18, 112, -68, 63, -118, 47, 30, -36, -27, -36, 25, -110, 126, 22, 13, -50, -37, -62, 70, -126, 109, 7, 7, -56, -57}, new byte[]{-87, -95, 51, -18, 12, 115, 110, -89}));
        if (zL2 && w(strA)) {
            if (zL13 || zL5 || zL6 || z9 || l(strA, m.h(new byte[]{-94, -107, -100, -104, -22, -96, 93, -40, 9, 98, 49, 10, 71, -10, -68, 120, -52, -2, -1, 124, 75, 93, 77, -43, 88, 82, 42, 65, 88, 67, 125, -50, 23, 75, 56, 92, 93, 73, 110, -36}, new byte[]{114, 46, 76, 32, 59, 38, 1, -88}))) {
                return t(m.h(new byte[]{28, 28, -32, 37, -85, 23, 124, 121, 46, 6, -18, 59, -89, 4, 100, 111}, new byte[]{113, 105, -116, 81, -62, 103, 16, 28}));
            }
            if (zL3) {
                return t(m.h(new byte[]{-126, -55, 65, -8, 112, 115, -112, 125, -120, -56, 72, -63, 111, ByteCompanionObject.MAX_VALUE, -110, 125, -66, -53, 64, -6, 121, 105}, new byte[]{-31, -90, 47, -98, 28, 26, -13, 9}));
            }
            zL4 = true;
            z10 = false;
            z15 = false;
        }
        boolean zL14 = l(strA, m.h(new byte[]{65, 34, -117, -19, 7, -75, 79, 39, 64, 30, -117, -31, -117, ByteCompanionObject.MAX_VALUE, -28, -48, -20, -70, 38, -74, 105, -34, 29, 76, 43, 64, -31, -73, 89, -34, 24, -64, -31, -21, 22, 27, -3, 115, 79, 46, 64, 27, -117, -26, 6, -116, 79, 45, -71, -81, 96, -74, 111, 115, 79, 36, 64, 18, -117, -22, -85, -33, 47, 76, 40, -71, 38, -73, 84, -33, 46, 76, 36, 65, -38, -74, 111, 115, -16, -6, -9, -20, 62, 15, -92, 110, -3, -16, -12}, new byte[]{-111, -112, 90, 102, -41, 15, -97, -100}));
        boolean zL15 = l(strA, m.h(new byte[]{-35, -125, 71, -13, -42, 22, 1, 58, -36, -74, -53, 57, 125, -31, -83, -98, 113, -31, 32, -103, -74, 125, 111, 101, -114, -32, 22, -104, -124, -15, -96, -49, 65, 76, -67, 53, -42, 31, 1, 52, -36, -78, 71, -8, 46, -110, -22, 100, -75, 77, 71, -15, -41, 47, 1, 56, 113, -31, 39, -103, -65, -124, -84, -37, 99, 77, -14, 39, 103, -49, -68, -47, 113, 66, -29, 40, 116, -39}, new byte[]{13, 49, -105, 73, 6, -83, -48, -76}));
        boolean zL16 = l(strA, m.h(new byte[]{5, -74, -92, 87, 78, 20, 73, -112, -119, 120, 14, -103, -29, -124, -28, -64, 107, -39, -9, 5, 44, 126, 38, -63, 85, -40, -51, -87, -15, -34, -3, 126, -87, 100, 26, -94, -5, -36, -28, -64, 107, -40, -54, 4, 29, ByteCompanionObject.MAX_VALUE, 25, -63, 87, 84, 5, -82, -46, -45, -78, 108, 5, -74, -91, 106, 79, 45, 73, -111, 4, -118, -91, 109}, new byte[]{-43, 8, 117, -43, -98, -82, -104, 16}));
        boolean zL17 = l(strA, m.h(new byte[]{-26, -115, 49, -105, 108, -22, -2, 48, 106, 74, -102, 107, -63, 122, 83, 96, -127, -22, 81, -10, 57, ByteCompanionObject.MIN_VALUE, -108, 96, -120, -22, 94, 123, -52, 43, 99, -51, 28, 70, 49, -104, 108, -18, -1, 4, -26, -121, 49, -97, 108, -20, 115, -64, 77, 118, -100, 13, -64, 51, 67, -33, 69, 95, -99, 85, -35, 57, 92, -43, 74, 73, -119, 82, -56}, new byte[]{54, 58, -31, 39, -68, 80, 47, -80}));
        boolean zL18 = l(strA, m.h(new byte[]{-120, -116, 36, 100, -44, 11, 74, Base64.padSymbol, -119, -79, 37, 94, -43, 51, -58, -13, 35, ByteCompanionObject.MAX_VALUE, -120, -50, 120, 99, 37, 82, -40, -29, 77, 52, -70, 99, 37, 82, -37, -30, 116, 53, -122, -17, -22, -8, 20, 78, -33, -104, -44, 12, 75, 3, -120, -117, 37, 90, -44, 12, 75, 0, -119, -78, 36, 102, -44, 11, -26, 83, -25, -30, 117, 52, -68, -17, -23, -88, -120, -115, 36, 102, -44, 9, 75, 3, 4, 67, -114, -88, 121, -103, -26, 83, -27, -29, 64, 52, -72, 99, 39, 83, -26, -29, 70, 52, -70, -49, 75, 4, -119, -80, 36, 102, -43, 63, -26, 82, -39, -29, 78, 52, -79, 99, 41, 83, -30, -29, 69, -104, 119, -33, -13, -28, 48, 71, -103, -99, 120, -33, -13, -9, 44, 95, -112}, new byte[]{88, 51, -11, -28, 4, -77, -102, -125}));
        boolean zL19 = l(strA, m.h(new byte[]{51, 48, -20, -15, -85, -113, Base64.padSymbol, -104, 50, 14, -19, -50, -86, -65, -79, 88, -103, -1, 64, 90, 6, -35, 82, -8, 92, 98, -68, -95, -8, -35, 93, -8, 80, -17, 77, 11, 54, 112, -57, 84, 51, 50, -19, -60, -86, -72, Base64.padSymbol, -109, 50, 3, 97, 0, 1, 65, -112, 2, -98, 99, -113, -95, -15, -36, 108, -7, 96, 99, -115, -96, -56, 81, -99, 83, -82, -50, 23, 12, 9, 104, -103, 84, -113, -46, 86, 21, 6, -35, 80, -8, 82, 99, -126, -95, -6, -35, 93, -8, 80, -17, 77, 11, 54, 112, -57, 84, -122, -38, 79, 21, 25, 121}, new byte[]{-30, -77, Base64.padSymbol, 112, 122, 13, -19, 40}));
        boolean zL20 = l(strA, m.h(new byte[]{24, -123, ByteCompanionObject.MIN_VALUE, -124, 44, 19, 106, 49, 25, -66, -127, -79, -96, -42, -63, -58, -76, 44, 44, -26, 67, 119, 58, 90, 113, -42, -31, -26, 76, 118, 8, -42, -71, 125, 28, 75, -42, -38, 106, 53, 25, -72, ByteCompanionObject.MIN_VALUE, -124, 45, 45, 107, 11, -107, 118, 43, 122, -127, -116, -58, 90, 118, -42, -18, -26, 72, 118, 7, 90, 113, -42, -20, 106, -116, -35, -10, -9, -29, 122, -127, -76, 44, 19, 106, 53, 25, -67, ByteCompanionObject.MIN_VALUE, -125, 44, 19, -58, 90, 118, -42, -18, -25, 126, 118, 15, 90, 118, -42, -21, -26, 73, 118, 15, -10, -96, 104, 51, 68, -103, -57, -55, -17, -75, 113, 49, 68, -111, -61, -56, -10, -69, 103, 57, 69, -103, -38, 106, 57, 24, -122, ByteCompanionObject.MIN_VALUE, -120, 44, 26, 107, 13, 25, -77, 44, -26, 67, 118, 4, 90, 122, -41, -48, -26, 66, 118, 6, 91, 78, -42, -27, 74, -112, -55, -49, -18, -84, 116, 44, -26, 67, 118, 4, 90, 125, -42, -28, -26, 76, 118, 3, -86, 24, -124, ByteCompanionObject.MIN_VALUE, -125, 44, 25, 106, 49, 25, -74, 44, -26, 72, 118, 4, 90, 120, -42, -32, -26, 78, 119, 54, -86, 24, -124, ByteCompanionObject.MIN_VALUE, -125, 44, 25, 106, 49, 25, -74}, new byte[]{-55, 6, 80, 54, -4, -90, -70, -118}));
        boolean zL21 = l(strA, m.h(new byte[]{-89, 100, 33, 110, 11, -53, -89, -75, -89, 107, 32, 90, -121, 14, 12, 68, 11, -51, -115, 3, 88, -82, -58, -40, -58, 55, 67, -114, -85, 5, 59, 117, 92, -101, 33, 109, 11, -64, -89, -75, -90, 95, 33, 101, -121, 14, 12, 68, 11, -51, -115, 2, 101, -82, -56, -39, -11, 54, 112, 3, 89, 34, 7, 115, 58, -102, -37, -82, 11, -63, -90, -120, -90, 89, 32, 87, 11, -59, -89, -72, -90, 83, 33, 111, 11, -53, -89, -67, 10, 55, 78, 2, 101, -81, -14, -40, -56, 55, 74, 2, 101, -82, -61, -40, -53, 55, 68, 2, 110, 2, -90, -115, -90, 89, 33, 105, 11, -64, -89, -68, -90, 90, 33, 103, 11, -53, 11, 108, 19, -124, -125, -73, -70, 13, 18, 116, 21, -120, -98, -66, -66, 12, 11, 100, 25, -112, -108, -96, -89, -81, -11, -40, -50, 54, 121, 2, 110, 2, -89, -73, -90, 89, 32, 80, 11, -58, -90, ByteCompanionObject.MIN_VALUE, -90, 82, -115, -93, -82, 23, 18, 124, 19, -107}, new byte[]{118, -25, -15, -46, -37, 126, 119, 8}));
        if (z11) {
            zL = zL21;
            if (l(strA, m.h(new byte[]{29, 104, -74, -71, 57, -73, 28, -30, 11, 123, -72, -89, 44, -82, 18, -16, 12, 117, -69, -69, 46, -68, 1, -7, 29, 105}, new byte[]{111, 7, -38, -43, 69, -64, 117, -116}))) {
                zL16 |= l(strA, m.h(new byte[]{94, -4, -110, 91}, new byte[]{58, -109, -27, 53, 74, 43, 65, -123}));
                zL17 |= l(strA, m.h(new byte[]{70, 8}, new byte[]{51, 120, -28, 107, 68, 29, 109, -100}));
            }
        } else {
            zL = zL21;
        }
        boolean z16 = zL16;
        if (zL11 || z13) {
            z8 = z16;
            if (l(strA, m.h(new byte[]{-61, -55, -79, -56, 30, 80, -57, 17, -39, -37, -65, -57, 6, 88, -64, 11, -61, -64, -82, -57, 9, 87}, new byte[]{-73, -68, -61, -90, 98, 50, -75, 120}))) {
                zL20 |= l(strA, m.h(new byte[]{19, -41}, new byte[]{102, -89, 85, 37, -92, -69, 102, 97}));
                zL |= l(strA, m.h(new byte[]{83, 70, 52, -116}, new byte[]{55, 41, 67, -30, 97, 123, -51, 86}));
            }
        } else {
            z8 = z16;
        }
        boolean z17 = zL20;
        if ((z11 || zL8 || zL9 || zL10) && l(strA, m.h(new byte[]{2, -93, -102, 46, 68, 106, -74, -5, 3, -100, 23, -34, -17, -98, 27, 107, -82, -52, -12, ByteCompanionObject.MAX_VALUE, 20, 2, -34, -112, 80, -52, -7, 126, 42, 3, -26, 29, -94, 103, 7, -45, -66}, new byte[]{-46, 28, 75, -82, -108, -46, 102, 65}))) {
            return t(m.h(new byte[]{82, 70, -117, 60, 32, -92, -42, -24, 64, 116, -118, 57, 40, -94, -48, -13, 84, 116, -120, 56, 40, -92, -41, -23}, new byte[]{51, 43, -23, 85, 71, -47, -71, -99}));
        }
        boolean z18 = zL2 | (((!zL3 && !zL4) || zL5 || z9 || zL6 || zL13 || (!j(strA) && r(strA).isEmpty())) ? false : true);
        if (!z11 && !z18 && !z12 && !z15 && !z10 && !zL13 && !zL5 && !zL6 && ((!z9 || !zL3) && !zL8 && !zL9 && !zL10 && !zL11 && !z14 && !z13)) {
            if (strA.matches(m.h(new byte[]{6, 96, -8, -58, -70, -66, 49, -24, 6, 96, -7, -3, 22, -44, 94, -71, 84, 14, -109, -107, -22, -43, 107, -71, 84, 15, -91, 56, -70, -77, 48, -40, 6, 100, -8, -60, -70, -70, 48, -47, -86, 14, -98, -108, -38, -44, 90, -71, 86, 15, -94, -107, -24, -43, 108, 20, 6, 108, -7, -2, -70, -65, 49, -26, 7, 89, -7, -4, 22, -44, 82, -72, 108, 14, -110, -107, -28, -43, 103, -72, 110, 15, -85, -107, -26, 120, 48, -38, 7, 85, -7, -2, -70, -65, 49, -26, 7, 89, -7, -4, 22, -44, 82, -71, 93, 14, -109, -108, -47, -43, 110, -71, 81, 14, -111, -107, -24, -43, 108, 20, 6, 105, -7, -12, -70, -69, 49, -21, 7, 95, -8, -58, -70, -68, -100, -72, 97, 14, -103, -108, -43, -43, 99, -71, 87, 15, -85, -108, -46, -43, 98, -71, 90, -94, 70, 52, 15, 106, -100, 11, -70, -79, 90, 33, 22, 104, -127, 29, -72, -67, 65, 56, 30, 113, -110, 6, -10, -79, 71, 56, 30, 113, -110, 6, -10, -79, 79, 34}, new byte[]{-42, -34, 41, 68, 106, 4, -32, 104}))) {
                return t(m.h(new byte[]{-124, -28, -89, 21, -16, 80, -36, 60, -104, -10, -88, 19, -6, 66}, new byte[]{-9, -108, -62, 118, -103, 54, -91, 99}));
            }
            return (j(strA) && (z8 || zL17 || zL18)) ? t(m.h(new byte[]{-101, 2, 62, -90, -35, -39, 40, -113, -121, 16, 49, -96, -41, -53}, new byte[]{-24, 114, 91, -59, -76, -65, 81, -48})) : new h(z0.c, "", m.h(new byte[]{-23, -39, -103, -38, 28, 86, 18, 71, -21, -52, -104, -47}, new byte[]{-122, -83, -15, -65, 110, 9, 118, 40}), 27);
        }
        if ((!z11 || (!z18 && !z12 && !zL13 && !zL5 && !z15 && !z10)) && ((!zL7 || (!zL3 && !z18 && !z12 && !zL5)) && (!z18 || (!zL5 && !z9 && !z12 && !z15)))) {
            if ((zL8 ? 1 : 0) + (zL9 ? 1 : 0) + (zL10 ? 1 : 0) + ((zL11 || z14 || z13) ? 1 : 0) <= 1 && ((!zL8 && !zL9 && !zL10 && !zL11 && !z14 && !z13) || (!z11 && !z18 && !z12 && !zL13 && !zL5 && !z15 && !z10))) {
                if (!z10 && (z11 || zL8 || zL9 || zL10 || z18 || z12 || z15)) {
                    if (l(strA, m.h(new byte[]{-38, -86, -126, 103, -113, -67}, new byte[]{10, 18, -2, 6, -31, -39, -70, -8}))) {
                        return t(m.h(new byte[]{31, 65, 119, -94, 101, -103, 78, -112, 45, 91, 121, -68, 105, -118, 86, -122}, new byte[]{114, 52, 27, -42, 12, -23, 34, -11}));
                    }
                }
                if (zL15 && zL14) {
                    return t(m.h(new byte[]{-94, 17, -82, -42, -24, -120, -120, -84, -88, 16, -89, -17, -21, -111, -114, -86, -96, 10, -87, -33, -22}, new byte[]{-63, 126, -64, -80, -124, -31, -21, -40}));
                }
                if (l(strA, m.h(new byte[]{-3, 18, -20, 112, 43, 32, -117, -75, -109, 124, -115, 17, 78, -20, -107, 10, 89, -60}, new byte[]{45, -84, 60, -63, -5, -112, -9, 101}))) {
                    return t(m.h(new byte[]{-109, -113, -92, -25, -33, 106, 41, -125, -110, -124, -77, -51, -56, 104, 41, -124, -106}, new byte[]{-26, -31, -41, -110, -81, 26, 70, -15}));
                }
                String strA2 = A(strA);
                if (strA2 == null) {
                    return t(m.h(new byte[]{1, 37, -98, -116, -42, -78, -56, -127, 11, 36, -105, -75, -55, -78, -49, -112}, new byte[]{98, 74, -16, -22, -70, -37, -85, -11}));
                }
                ArrayList arrayListR = r(strA);
                boolean z19 = z12;
                if (arrayListR.size() > 1) {
                    return t(m.h(new byte[]{122, 31, -125, 64, -55, 125, 7, -22, 72, 28, -114, 88, -43, 104, 24}, new byte[]{23, 106, -17, 52, -96, 13, 107, -113}));
                }
                Double d = arrayListR.isEmpty() ? null : (Double) arrayListR.get(0);
                if (d != null && d.doubleValue() < 0.0d) {
                    return t(m.h(new byte[]{-6, 23, -119, -67, -92, 80, -111, 85, -53, 4, -113, -80, -91, 92}, new byte[]{-108, 114, -18, -36, -48, 57, -25, 48}));
                }
                Double d9 = d;
                if (l(strA, m.h(new byte[]{102, 46, 50, -57, 119, 0, 55, 28, -127, -43, -41, 75, -82, -6, -56, 29, -68, 121, -65, 36, -61, -112, -102, 66, -20, -124, 19, -10, 122, 69, 62, -65, 65, 117, 3, -18, 96}, new byte[]{Base64.padSymbol, 5, 111, -101, 19, 43, 75, -52}))) {
                    return t(m.h(new byte[]{76, 10, ByteCompanionObject.MAX_VALUE, 125, 73, 78, 100, -98, 97, 0, 97, 67, 83, 66, 117, -102, 74, 6, 101, 121, 98, 81, 115, -105, 75, 10}, new byte[]{62, 111, 19, 28, Base64.padSymbol, 39, 18, -5}));
                }
                if (zL7 && (d9 != null || l(strA, m.h(new byte[]{75, 110, -46, -11, -15, -1, 102, -35, 75, 100, -45, -56, -16, -61, -21, 43, -32, -99, 126, 95, 93, 49, -46, 41, -8, -76, 109, 1, 93, 100}, new byte[]{-101, -47, 3, 117, 33, 65, -73, 91})))) {
                    return t(m.h(new byte[]{-114, 28, 105, 91, -6, 21, 114, -50, -97, 20, 105, 92, -5, 31, 113, -12, -99, 42, 117, 82, -30, 37, 118, -28, -97, 5, 116, 79, -30, 31, 97}, new byte[]{-17, 117, 27, Base64.padSymbol, -106, 122, 5, -111}));
                }
                if (z10 && l(strA, m.h(new byte[]{-63, -76, -82, 94, -18, -20, -122, 38, -86, -36, -58, 53, -113, -124, 68, -118, 126, 126}, new byte[]{17, 12, 126, -27, 62, 84, -6, -10}))) {
                    return t(m.h(new byte[]{-94, 80, -81, 83, 72, -27, 70, -56, -80, 98, -84, 83, 93, -10, 69, -46, -76, 98, -87, 83, 93, -11, 74, -55, -86, 82, -93}, new byte[]{-61, Base64.padSymbol, -51, 58, 47, -112, 41, -67}));
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    String str2 = (String) it.next();
                    y0 y0VarF = map.containsKey(str2) ? (y0) map.get(str2) : f(str2);
                    if (y0VarF != null) {
                        linkedHashMap.put(str2, y0VarF);
                    }
                }
                if (!z13 || z17 || zL) {
                    if (zL8 || zL9 || zL10) {
                        if (z8 && zL17) {
                            return t(m.h(new byte[]{57, 48, 22, 124, 3, 122, 83, 45, 51, 49, 31, 69, 0, 99, 85, 43, 59, 43, 17, 117, 1}, new byte[]{90, 95, 120, 26, 111, 19, 48, 89}));
                        }
                        if (!z8 && !zL17) {
                            return t(m.h(new byte[]{-38, 38, -99, 11, 45, -20, 44, 25, -40, 63, -117, 10, 37, -10, 34, 41, -39}, new byte[]{-73, 79, -18, 120, 68, -126, 75, 70}));
                        }
                        if (d9 != null || zL18 || zL15 || zL14 || l(strA, m.h(new byte[]{71, -50, -106, 43, 95, 119, -117, 68, 71, -56, -106, 37, 95, 122, -117, 66, 71, -50, -105, 24, -13, 24, -28, 42, 41, -93, -3, 75, 49, 24, -23, 42, 47, -93, -5, -57, -1, -77, 23, -121, -67, 15, -105, 28, 95, 125, -118, 120, 71, -63, -106, 46, 94, 72, -118, 120, -53, 3, Base64.padSymbol, -41, -14, -30, 39, -110, -10, 31, 32, -25, -25, -87, 55, -100, -32, 18, 63, -25, -2, -67, 58, -120, -29, 22, 52, -24, -80, -76, -117, 69, 70, -13, -106, 37, 94, 78, -117, 79, 71, -50, -105, 25, -45, -72, 32, -74, -22, 89, 58, -21, -22, -70, 56, -97, -7, 7, 58, 74, 14, 24, -21, 42, 42, -94, -60, 75, 55, 24, -25, 42, 34, -94, -60, 74, 15, -108, 43, -127, -37, 14, 108}, new byte[]{-105, 115, 70, -101, -113, -56, 91, -6})) || (!zL8 && j(strA))) {
                            return t(m.h(new byte[]{-113, 41, 54, -19, -87, -53, 102, -125, -104, 45, 32, -17, -69, -15, 73, -115, -120, 38, 40, -23, -69, -53, 75}, new byte[]{-6, 71, 69, -116, -49, -82, 57, -20}));
                        }
                        if (zL8) {
                            i9 = 8;
                            strH = m.h(new byte[]{-56, 14, -115, 102}, new byte[]{-84, 97, -30, 20, 109, 37, -120, -14});
                        } else {
                            i9 = 8;
                            strH = zL9 != 0 ? m.h(new byte[]{107, 106, 111, -46, 114}, new byte[]{31, 24, 26, -68, 25, 19, -14, -28}) : m.h(new byte[]{63, -125, 38, 107, 66, 80, 116, -48}, new byte[]{88, -17, 73, 29, 39, 50, 27, -88});
                        }
                        String str3 = strH;
                        if (zL8) {
                            strH2 = strA2;
                        } else {
                            byte[] bArr = new byte[i9];
                            // fill-array-data instruction
                            bArr[0] = 8;
                            bArr[1] = -59;
                            bArr[2] = 77;
                            bArr[3] = 82;
                            bArr[4] = 41;
                            bArr[5] = 71;
                            bArr[6] = 124;
                            bArr[7] = -37;
                            strH2 = m.h(new byte[]{105, -87, 33}, bArr);
                        }
                        if (z8) {
                            byte[] bArr2 = new byte[i9];
                            // fill-array-data instruction
                            bArr2[0] = 3;
                            bArr2[1] = 36;
                            bArr2[2] = -40;
                            bArr2[3] = -21;
                            bArr2[4] = -41;
                            bArr2[5] = -101;
                            bArr2[6] = 62;
                            bArr2[7] = -53;
                            strH3 = m.h(new byte[]{108, 84, -67, -123}, bArr2);
                        } else {
                            byte[] bArr3 = new byte[i9];
                            // fill-array-data instruction
                            bArr3[0] = -58;
                            bArr3[1] = 8;
                            bArr3[2] = -11;
                            bArr3[3] = 82;
                            bArr3[4] = 30;
                            bArr3[5] = -7;
                            bArr3[6] = 60;
                            bArr3[7] = -80;
                            strH3 = m.h(new byte[]{-91, 100, -102, 33, 123}, bArr3);
                        }
                        y0Var = new y0(str3, strH2, strH3, 0.0d);
                    } else if (zL11 || z14 || z13) {
                        if (d9 != null || j(strA) || zL14 || z8 || zL17 || (zL11 && zL15)) {
                            return t(m.h(new byte[]{55, -37, -28, 49, -56, -119, 114, 38, 39, -47, -2, 49, -15, -100, 76, 57, 35, -40, -14, 36, -53, -98}, new byte[]{66, -75, -105, 80, -82, -20, 45, 75}));
                        }
                        if (z17 != 0 && zL) {
                            return t(m.h(new byte[]{48, 38, -97, 2, -7, 99, 55, 12, 58, 39, -106, 59, -6, 122, 49, 10, 50, Base64.padSymbol, -104, 11, -5}, new byte[]{83, 73, -15, 100, -107, 10, 84, 120}));
                        }
                        if (zL11 || z13) {
                            if (z17 == 0 && !zL) {
                                return t(m.h(new byte[]{-123, -72, -69, -2, -121, -58, 31, -72, -121, -95, -83, -1, -113, -36, 17, -120, -122}, new byte[]{-24, -47, -56, -115, -18, -88, 120, -25}));
                            }
                            y0Var2 = new y0(m.h(new byte[]{62, 5, -5, -94, 93, 81}, new byte[]{72, 106, -105, -41, 48, 52, 0, 20}), m.h(new byte[]{52, 26, -117}, new byte[]{85, 118, -25, -55, 125, -68, 78, -82}), z17 != 0 ? m.h(new byte[]{-46, -99}, new byte[]{-89, -19, -45, -58, -65, 59, -6, -45}) : m.h(new byte[]{96, 41, -12, -74}, new byte[]{4, 70, -125, -40, 115, -28, -117, -94}), 0.0d);
                        } else {
                            boolean zL22 = l(strA, m.h(new byte[]{4, 51, -29, 13, -24, 118, 75, -18, 4, 49, -30, 56, -23, 74, -57, 42, -82, -2, 78, -100, 68, 19, 47, -118, 101, 98, -120, 103, -76, 18, 19, -118, 96, -50, 93, -45, 64, -73}, new byte[]{-43, -78, 51, -74, 56, -61, -101, 90}));
                            if (zL22 == l(strA, m.h(new byte[]{-126, 10, 30, 27, -44, -88, -48, -74, -125, 62, 31, 47, -43, -98, -47, -117, 14, -59, -76, -41, 121, 55, 124, -46, -19, 100, 79, 75, -70, -52, -120, -46, -23, -23, -65, -32, 72, 96, 42, 126, -126, 8, 31, 43, -44, -86, -48, -78, -126, 1, -77, -21, 118, 120, 118, 107, Base64.padSymbol, -64, -68}, new byte[]{82, -75, -49, -101, 4, 29, 0, 2}))) {
                                return t(m.h(new byte[]{-53, 94, 16, -118, -46, -60, -112, -54, -52, 92, 20, -118, -48, -3, -115, -4, -54, 75, 22, -99, -46, -51, -121}, new byte[]{-72, 46, 117, -23, -69, -94, -23, -107}));
                            }
                            y0Var2 = new y0(m.h(new byte[]{-104, 92, 30, 105, 3}, new byte[]{-20, 46, ByteCompanionObject.MAX_VALUE, 10, 104, -112, -81, 81}), m.h(new byte[]{-33, -104, 86}, new byte[]{-66, -12, 58, 17, 99, 24, -15, 7}), zL22 ? m.h(new byte[]{-79, 88, 15, 105}, new byte[]{-33, Base64.padSymbol, 119, 29, 66, -26, 71, -110}) : m.h(new byte[]{-117, 12, 68, 36, -12, 63, -9, 27}, new byte[]{-5, 126, 33, 82, -99, 80, -126, 104}), 0.0d);
                        }
                    } else if (z11) {
                        if (l(strA, m.h(new byte[]{-124, 46, 30, 64, -6, 4, -55, 43, -124, 47, 31, 118, -6, 9, -55, 45, 8, -31, -76, -116, 87, -106, 101, 65, -39, 65, 117, 17, -86, 108, -87, 64, -23, -51, -65, -69, 102, -63, 51, -20, -124, 32, 30, 64, -6, 12, -56, 19, -124, 38, 31, 117, -5, 60, 69, -32, 47, -35, -78, -22, 86, -35, 105, -32, 56, -8, -84, -95, 94, -43, 118, -2, 40, -13, -67, -81, 93, -49, 124, -30}, new byte[]{84, -111, -49, -64, 42, -68, 25, -112}))) {
                            return new h(z0.c, "", m.h(new byte[]{-56, -41, -32, -15, -50, -74, -125, -123, -28, -49, -17, -21, -35, -72, -122}, new byte[]{-69, -72, -122, -123, -71, -41, -15, -32}), 27);
                        }
                        String strA3 = a(strA);
                        if (!strA3.isEmpty()) {
                            return t(strA3);
                        }
                        if (z8 && zL17) {
                            return t(m.h(new byte[]{100, 14, -24, 87, 67, 126, -125, -110, 110, 15, -31, 110, 64, 103, -123, -108, 102, 21, -17, 94, 65}, new byte[]{7, 97, -122, 49, 47, 23, -32, -26}));
                        }
                        if (zL15 || zL14 || l(strA, m.h(new byte[]{77, -123, -37, 112, -80, -65, -55, 57, 76, -68, -37, 124, -80, -73, -55, 57, 77, -124, 87, -80, 27, 78, 101, -111, -32, -44, -73, 16, -40, -46, -93, 107, 39, -44, -77, 16, -36, -46, -83, 106, 30, -43, -117, -100, 16, 121, 84, -58, -74, 120, 104, -91, 14, 118, 113, -42, -7, 112, 87, -80, 27, 78, 101, -111, -32, 109, 101, -93, 8, 103, 107, -57, -1, 105, 119, -83, 13}, new byte[]{-100, 4, 11, -64, 96, 2, 24, -69}))) {
                            return t(m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 63, -29, 94, 48, 78, -12, 51, -127, 52, -12, 116, 55, 87, -11, 37, -102, 38, -49, 68, 48, 91, -23, 32, -127, 56, -1, 69}, new byte[]{-11, 81, -112, 43, 64, 62, -101, 65}));
                        }
                        if (!z8 && !zL17 && !zL18 && !zL19) {
                            return t(m.h(new byte[]{74, 28, 81, -88, 93, 122, -125, -123, 72, 5, 71, -87, 85, 96, -115, -75, 73}, new byte[]{39, 117, 34, -37, 52, 20, -28, -38}));
                        }
                        if (l(strA, m.h(new byte[]{34, 29, -85, -39, 29, -52, ByteCompanionObject.MIN_VALUE, -111, 116, 79, -49, -120, 79, -92, 18, -112, 70, 78, -6, -120, 79, -92, 24, 60, -121, -9, 8, 60, -88, 84, -47, 53, -110, -19, 14, 60, -65, 7}, new byte[]{-13, -97, 122, 89, -51, 116, -96, 64}))) {
                            dValueOf2 = Double.valueOf(75.0d);
                        } else if (l(strA, m.h(new byte[]{-71, 96, -108, -59, -15, 23, -81, 98, -71, 102, -108, -53, -15, 26, -81, 100, -71, 96, -107, -10, 93, 120, -62, 12, -39, -3, -108, -54, -15, 22, -81, 103, -71, 99, -108, -57, -15, 16, -81, 97, -72, 94, 56, -91, -98, 120, -63, 12, -46, 13, -6, -91, -109, 120, -57, 12, -44, -127, 52, 14, 109, -43, 85, -96, 1, -68, 40, 19, 93, -64, 30, -80, 15, -86, 37, 12}, new byte[]{105, -35, 68, 117, 33, -88, ByteCompanionObject.MAX_VALUE, -36}))) {
                            dValueOf2 = Double.valueOf(50.0d);
                        } else {
                            dValueOf2 = l(strA, m.h(new byte[]{-5, -60, -65, -40, 50, 4, -71, -56, -6, -10, -66, -19, 50, 4, 53, 10, 81, 15, 18, 71, -97, -9, 28, 27, 88, 55, 10, 31}, new byte[]{42, 67, 111, 109, -29, -122, 105, 122})) ? Double.valueOf(25.0d) : null;
                        }
                        Object obj = (dValueOf2 == null || !l(strA, m.h(new byte[]{11, Base64.padSymbol, -104, 92, -112, -61, -116, -89, 93, 111, -4, 13, -62, -85, 30, -90, 111, 110, -55, 13, -62, -85, 20, 10, -82, -41, 59, -71, 37, 91, -35, 3, -69, -51, Base64.padSymbol, -71, 50, 8}, new byte[]{-38, -65, 73, -36, 64, 123, -84, 118})) || d9 == null || d9.doubleValue() != 3.0d) ? d9 : null;
                        if (dValueOf2 != null && obj != null && !dValueOf2.equals(obj)) {
                            return t(m.h(new byte[]{-125, -125, 123, -92, -35, 0, -67, -61, -119, -126, 114, -99, -57, 8, -78, -62, -123}, new byte[]{-32, -20, 21, -62, -79, 105, -34, -73}));
                        }
                        if (dValueOf2 == null) {
                            dValueOf2 = obj;
                        }
                        if (dValueOf2 == null && l(strA, m.h(new byte[]{-89, 83, 0, 19, -9, 73, -11, 21, -89, 89, 1, 46, -10, 117, 120, -29, 12, -96, -84, -71, 91, -121, 65, -31, 20, -119, -65, -25, 91, 39, -101, 66, -9, 60, 111, 66, -95, 39, -111, 67, -54, Base64.padSymbol, 83, 67, -103, 39, -106, -17, 82, -112, 1, 46, -9, 71, 4, 66, -10, 60, 107, 67, -103, 39, -97, 66, -5, 60, 107, 67, -103, -117, -12, 46, -89, 92, -15, 66, -90, 39, -98, 67, -55, 60, 106, 66, -85, 39, -98, 67, -55, -63, 0, 17, -9, 73}, new byte[]{119, -20, -47, -109, 39, -9, 36, -109}))) {
                            return t(m.h(new byte[]{83, -123, 20, -117, -76, -60, -105, 57, 79, -104, 20, -125, -68, -58, -105, 34, 71, -121, 18, -113}, new byte[]{38, -21, 103, -22, -46, -95, -56, 84}));
                        }
                        if (dValueOf2 != null || zL18) {
                            i14 = 8;
                        } else {
                            i14 = 8;
                            if (l(strA, m.h(new byte[]{-121, 8, -106, -33, -65, 17, 3, 39, -121, 10, -106, -47, 79, -126, -20, -69, -122, 54, -105, -31, -29, -24, -67, -41, -43, 101, -8, -66, 31, -23, -126, -42, -22, 101, -13, 19, 78, -72, -19, -124, -121, 11, -105, -17, 79, -121, -20, -69, 12, 100, -59, -66, 20, 100, 64, -42, -27, 101, -8, -65, 43, -23, -124, -41, -43, 101, -13, -65, 36, 69, -20, -71, -121, 5, -105, -18, 78, -72, -20, -74, -121, 3, -106, -41, 78, -71, 64, -42, -24, 101, -13, -66, 31, -23, -119, -42, -29, 101, -5, 19, 79, -114, -20, -74, -121, 1, -106, -46, -29, -23, -121, -42, -30, 101, -12, 19, 79, -122, -19, -122, -121, 5, -106, -35, -74, 101, 76, 125, 27, -56, 109}, new byte[]{87, -75, 70, 111, -97, 57, 60, 6}))) {
                                return t(m.h(new byte[]{-119, -77, -57, 48, -22, -72, -14, 70, -110, -74, -38, 62, -5, -77, -14, 68, -107, -77, -48, 62, -5, -126, -52, 94, -109, -88, -38, 37}, new byte[]{-4, -35, -76, 81, -116, -35, -83, 51}));
                            }
                        }
                        byte[] bArr4 = new byte[i14];
                        // fill-array-data instruction
                        bArr4[0] = -18;
                        bArr4[1] = -99;
                        bArr4[2] = 20;
                        bArr4[3] = -84;
                        bArr4[4] = -118;
                        bArr4[5] = -89;
                        bArr4[6] = -109;
                        bArr4[7] = 22;
                        boolean zL23 = l(strA, m.h(new byte[]{62, 34, -60, 18, 90, 28, 67, -85, 62, 35, -59, 45, 91, 37, -49, 102, -107, -47, 105, -122, -10, 119, 46, -58, 94, -67, -60, 19, 90, 25, 67, -83, 62, 32, -59, 47, 91, 41, -17, -58, 83, 77, -92, 125, 10, 119, 35, -57, 111, 77, -85, 124, 58, 118, 27, -58, 84, 76, -105, -48, 90, 19, 67, -88, -50, 76, -105, 124, 53, 119, 45, -57, 110, 77, -92, -48, 90, 19, 67, -88, -50, 77, -82, 124, 52, 119, 46, -57, 104, 77, -92, -48, 90, 26, 67, -90, 63, 28, -59, 46, 90, 18, 67, -96, 63, 17, 104, -54, -1, -53, -1, 111, -110, -4, 120, -64, -86, -45, -5, 115, -50, -22, 117, -43}, bArr4));
                        if (zL19 && !z8 && !zL17 && !zL18 && dValueOf2 == null && !zL23) {
                            return t(m.h(new byte[]{-90, -52, 17, -11, 42, -62, 28, -21, -70, -47, 17, -3, 34, -64, 28, -16, -78, -50, 23, -15}, new byte[]{-45, -94, 98, -108, 76, -89, 67, -122}));
                        }
                        if (zL23 && dValueOf2 != null && dValueOf2.doubleValue() != 100.0d) {
                            return t(m.h(new byte[]{85, -109, 12, -123, 54, -28, -33, -86, 95, -110, 5, -68, 44, -20, -48, -85, 83}, new byte[]{54, -4, 98, -29, 90, -115, -68, -34}));
                        }
                        if (zL17 && ((dValueOf2 != null && dValueOf2.doubleValue() != 0.0d) || zL18)) {
                            return t(m.h(new byte[]{7, -127, -21, -26, 28, 8, -66, 48, 21, -77, -22, -29, 20, 14, -72, 43, 1, -77, -24, -30, 20, 8, -65, 49}, new byte[]{102, -20, -119, -113, 123, 125, -47, 69}));
                        }
                        if (l(strA, m.h(new byte[]{-115, -73, -103, 27, -90, -103, 18}, new byte[]{93, 10, 73, -85, -38, -5, 107, 14})) && ((z17 != 0 || zL) && dValueOf2 != null && !l(strA, m.h(new byte[]{-27, -100, 62, -44, 32, -35, 125, 119, -27, -106, 63, -23, 33, -31, -16, -127, 78, 111, -110, 126, -116, 19, -55, -125, 86, 70, -127, 32, -116, 63, -56, -38, 16}, new byte[]{53, 35, -17, 84, -16, 99, -84, -15})))) {
                            return t(m.h(new byte[]{-29, 88, 57, -24, 123, -17, -72, 104, -15, 106, 46, -17, 117, -18}, new byte[]{-126, 53, 91, -127, 28, -102, -41, 29}));
                        }
                        double dDoubleValue = zL17 ? 0.0d : dValueOf2 != null ? dValueOf2.doubleValue() : 100.0d;
                        if (zL18 && !zL23 && dValueOf2 == null) {
                            dDoubleValue = 101.0d;
                            for (y0 y0Var3 : linkedHashMap.values()) {
                                if (y0Var3.f5829a.equals(m.h(new byte[]{-106, 84, 24, -109, 35, -91}, new byte[]{-31, Base64.padSymbol, 118, -9, 76, -46, -113, 102})) && y0Var3.f5830b.equals(strA2)) {
                                    double d10 = y0Var3.d;
                                    if (d10 > 0.0d && d10 < 100.0d) {
                                        dDoubleValue = Math.min(dDoubleValue, d10);
                                    }
                                }
                            }
                        }
                        y0Var2 = new y0(m.h(new byte[]{3, 103, 37, 36, 42, 119}, new byte[]{116, 14, 75, 64, 69, 0, 76, 67}), strA2, m.h(new byte[]{91, 31, 58}, new byte[]{40, 122, 78, -4, 103, -71, 70, 118}), dDoubleValue);
                    } else {
                        if (z18) {
                            if (l(strA, m.h(new byte[]{-18, -28, -80, -76, 11, -70, 26, -102, -18, -18, -79, -119, 10, -122, -105, 108, 69, 23, 28, 30, -89, 116, -82, 110, 93, 62, 15, 64, -89, 88, -81, 55, 27, 39, -79, -121, 10, -124, 27, -84, -18, -17, -80, -73, 10, -123, -105, 108, 69, 23, 28, 30, -89, 96, -82, 123, 76, 62, 4, 71, -28}, new byte[]{62, 91, 97, 52, -37, 4, -53, 28}))) {
                                return t(m.h(new byte[]{83, 109, -119, -54, 98, -103, 69, 49, 67, 98, -114, -12, 113, -110, 115, 54}, new byte[]{38, 3, -6, -85, 4, -4, 26, 66}));
                            }
                            if (zL3 == zL4) {
                                return t(m.h(new byte[]{-96, -49, 72, -108, -105, -28, 21, 116, -96, -38, 76, -125, -95, -22, 9, 74, -89, -42, 67, -112, -95, -19, 30, 116, -91, -38, 67, -125, -105, -18, 13, 95, -70, -48, 67}, new byte[]{-45, -65, 45, -9, -2, -126, 108, 43}));
                            }
                            boolean zL24 = l(strA, m.h(new byte[]{62, -122, -75, -58, 10, -22, 82, -75, 62, -126, -75, -54, 11, -45, 83, -120, -110, -22, -39, -90, 106, ByteCompanionObject.MIN_VALUE, 57, -27, 111, -22, -35, -90, 102, ByteCompanionObject.MIN_VALUE, 51, -28, 85, -21, -23, -90, 103, 12, -13, 79, -94, 71, 79, 10, -73, 49, -5, 93, -125, 79, 8, 10, -73, 49, -5}, new byte[]{-18, 58, 101, 118, -38, 80, -125, 52}));
                            boolean zL25 = l(strA, m.h(new byte[]{-46, 73, 85, -5, 84, 109, -71, -114, -46, 73, 84, -64, 84, 108, 21, -26, -66, 37, Base64.padSymbol, -109, 57, 0, -47, -26, -66, 37, 53, -109, 63, 1, -27, -26, -65, -87, -11, 56, -56, -83, 67, 74, 111, -100, -21, 42, -23, -91, 4, 74, 111, -100, -21}, new byte[]{2, -11, -123, 67, -124, -48, 105, 54}));
                            if (zL24 && zL25) {
                                i13 = 17;
                                i12 = 8;
                            } else {
                                if (zL24 || zL25) {
                                    if (d9 != null) {
                                        i12 = 8;
                                        i13 = 17;
                                    }
                                }
                                if (zL24 || zL25) {
                                    double dMax = zL24 ? -1.0d : Double.POSITIVE_INFINITY;
                                    for (y0 y0Var4 : linkedHashMap.values()) {
                                        if (y0Var4.f5829a.equals(zL3 ? m.h(new byte[]{10, 85, 2, 112}, new byte[]{98, 48, 99, 4, -87, -86, -120, -36}) : m.h(new byte[]{35, 85, -45, 63}, new byte[]{85, 48, -67, 75, -56, -120, 126, -20})) && y0Var4.f5830b.equals(strA2)) {
                                            double d11 = y0Var4.d;
                                            if (d11 > 0.0d) {
                                                dMax = zL24 ? Math.max(dMax, d11) : Math.min(dMax, d11);
                                            }
                                        }
                                    }
                                    if (dMax < 0.0d || Double.isInfinite(dMax)) {
                                        return t(m.h(new byte[]{-89, 56, -63, 105, 45, 8, 44, 23, -76, 4, -61, 97, 46, 19, 22, 39, -77, 53, -44, 118, 35, 15, 31, 25, -92, 55, -48, 58, 49, 3, 18, 12}, new byte[]{-58, 91, -75, 0, 66, 102, 115, 120}));
                                    }
                                    dValueOf = Double.valueOf(dMax);
                                } else {
                                    dValueOf = d9;
                                }
                                if (!zL15 && !zL14 && !zL19 && dValueOf == null && !l(strA, m.h(new byte[]{-68, -14, -78, -12, 92, -73, 119, 93, -68, -2, -77, -54, 92, -74, -5, -109, 23, 1, 31, 96, -16, -45, 24, 51, -46, -99, -47, -101, 12, -45, 18, 51, -43, 49, -78, -9, 92, -77, 119, 80, -67, -51, -78, -1, 92, -70}, new byte[]{108, 77, 98, 74, -116, 3, -89, -29}))) {
                                    return t(m.h(new byte[]{19, -73, -116, 27, -85, 98, 54, -110, 17, -82, -102, 26, -93, 120, 56, -94, 16}, new byte[]{126, -34, -1, 104, -62, 12, 81, -51}));
                                }
                                if (zL14 && dValueOf != null && dValueOf.doubleValue() != 0.0d) {
                                    return t(m.h(new byte[]{107, -1, 123, Base64.padSymbol, -18, 112, 39, -77, 97, -2, 114, 4, -12, 120, 40, -78, 109}, new byte[]{8, -112, 21, 91, -126, 25, 68, -57}));
                                }
                                if (z17 != 0 || zL) {
                                    return t(m.h(new byte[]{-47, -15, 48, 9, -74, 90, 9, 4, -4, -25, 57, 9, -74, 108, 19, 4, -43, -15, 48, 55, -84, 92, 11, 62, -48, -31, 44, 24, -83, 65, 11, 4, -57}, new byte[]{-93, -108, 92, 104, -62, 51, ByteCompanionObject.MAX_VALUE, 97}));
                                }
                                if (dValueOf == null && !zL14) {
                                    return t(m.h(new byte[]{7, -115, ByteCompanionObject.MIN_VALUE, 116, -18, -111, 124, 33, 24, -104, -109, 114, -21}, new byte[]{116, -3, -27, 23, -121, -9, 5, 126}));
                                }
                                byte[] bArr5 = {9, 6, 12, 88};
                                if (zL3) {
                                    // fill-array-data instruction
                                    bArr5[0] = -97;
                                    bArr5[1] = 30;
                                    bArr5[2] = -91;
                                    bArr5[3] = 46;
                                    strH7 = m.h(bArr5, new byte[]{-9, 123, -60, 90, -64, -27, 26, -34});
                                } else {
                                    strH7 = m.h(bArr5, new byte[]{ByteCompanionObject.MAX_VALUE, 99, 98, 44, 123, 5, 47, 86});
                                }
                                y0Var2 = new y0(strH7, strA2, m.h(new byte[]{50, -83, 66}, new byte[]{65, -56, 54, 8, -38, -1, 114, ByteCompanionObject.MIN_VALUE}), zL14 ? 0.0d : dValueOf.doubleValue());
                            }
                            byte[] bArr6 = new byte[i13];
                            // fill-array-data instruction
                            bArr6[0] = -90;
                            bArr6[1] = 14;
                            bArr6[2] = -31;
                            bArr6[3] = 47;
                            bArr6[4] = -31;
                            bArr6[5] = 33;
                            bArr6[6] = -59;
                            bArr6[7] = -78;
                            bArr6[8] = -84;
                            bArr6[9] = 15;
                            bArr6[10] = -24;
                            bArr6[11] = 22;
                            bArr6[12] = -5;
                            bArr6[13] = 41;
                            bArr6[14] = -54;
                            bArr6[15] = -77;
                            bArr6[16] = -96;
                            byte[] bArr7 = new byte[i12];
                            // fill-array-data instruction
                            bArr7[0] = -59;
                            bArr7[1] = 97;
                            bArr7[2] = -113;
                            bArr7[3] = 73;
                            bArr7[4] = -115;
                            bArr7[5] = 72;
                            bArr7[6] = -90;
                            bArr7[7] = -58;
                            return t(m.h(bArr6, bArr7));
                        }
                        if (z19) {
                            if (zL15 || zL14 || l(strA, m.h(new byte[]{8, 112, 55, -122, -40, -95, -32, 18, 8, 122, 54, -69, -39, -99, 109, -28, -93, -125, -101, 44, 116, 111, 84, -26, -69, -86, -120, 114, 116, 67, 85, -65, -3}, new byte[]{-40, -49, -26, 6, 8, 31, 49, -108}))) {
                                return t(m.h(new byte[]{78, 97, 122, 27, 5, 81, 77, -62, 79, 106, 109, 49, 1, 68, 79, -64, 94, 125, 104, 26, 0, 83, 71, -17, 84, ByteCompanionObject.MAX_VALUE, 108, 28, 20, 85, 75, -33, 85}, new byte[]{59, 15, 9, 110, 117, 33, 34, -80}));
                            }
                            if (z17 != 0 && zL) {
                                return t(m.h(new byte[]{-39, 77, -2, -113, 18, 17, -32, 51, -45, 76, -9, -74, 17, 8, -26, 53, -37, 86, -7, -122, 16}, new byte[]{-70, 34, -112, -23, 126, 120, -125, 71}));
                            }
                            if ((z17 != 0 || zL) && (d9 == null || !l(strA, m.h(new byte[]{-109, 98, -14, -121, -67, -110, -11}, new byte[]{67, -42, 34, 57, -63, -26, -102, -10})))) {
                                if (d9 != null) {
                                    return t(m.h(new byte[]{-121, 48, 64, -78, 20, 88, -118, 63, -86, 33, 73, -66, 16, 84, -114, 59, -127, 32, 94, -74, 63, 80, -111, 53, ByteCompanionObject.MIN_VALUE, 59, 88, -116, 14, 94, -120, 5, -122, 32, 92, -93, 15, 67, -120, 63, -111}, new byte[]{-11, 85, 44, -45, 96, 49, -4, 90}));
                                }
                                y0Var2 = new y0(m.h(new byte[]{104, -26, -43, -110, -13, 69, -17, 122, 105, -15, -35}, new byte[]{28, -125, -72, -30, -106, 55, -114, 14}), strA2, z17 != 0 ? m.h(new byte[]{-51, 26}, new byte[]{-72, 106, 87, -34, 31, -67, -110, -37}) : m.h(new byte[]{-96, -10, -17, -81}, new byte[]{-60, -103, -104, -63, 6, -110, 77, -7}), 0.0d);
                            } else {
                                if (!zL19 && z17 == 0 && !zL) {
                                    return t(m.h(new byte[]{-38, 9, -61, -78, -35, 31, -19, 108, -58, 20, -61, -70, -43, 29, -19, 117, -54, 10, -64, -74, -55, 27, -58, 116, -35, 2, -17, -68, -53, 31, -64, 96, -37, 14, -33, -67}, new byte[]{-81, 103, -80, -45, -69, 122, -78, 1}));
                                }
                                if (d9 == null) {
                                    return t(m.h(new byte[]{-119, -51, -91, 112, -33, 73, 39, 11, -114, -40, -83, 99, -45, 93, 63, 32, -113, -49, -91}, new byte[]{-6, -67, -64, 19, -74, 47, 94, 84}));
                                }
                                y0Var2 = new y0(m.h(new byte[]{81, -20, -94, 23, 39, -98, 63, 69, 80, -5, -86}, new byte[]{37, -119, -49, 103, 66, -20, 94, 49}), strA2, m.h(new byte[]{-43, 90, -20}, new byte[]{-90, 63, -104, 2, 1, -54, -11, -56}), d9.doubleValue());
                            }
                        } else if (!z15 && (!z10 || d9 == null)) {
                            if (zL13) {
                                i10 = 8;
                                if (l(strA, m.h(new byte[]{53, -5, -53, -27, -68, -106, 119, -48, 52, -58, -53, -21, -67, -82, -6, 34, -98, 10, 102, ByteCompanionObject.MAX_VALUE, 17, -57, 26, -126, 80, -106, -90, -124, -29, 107, -43, 55, -111, 50, 114, 59, 10, 100, -38, 63, ByteCompanionObject.MIN_VALUE, 40, 110}, new byte[]{-27, 70, 27, 85, 109, 23, -90, 82})) && (z8 || l(strA, m.h(new byte[]{52, 56, -61, 16, -43, -92, -57, -75, 52, 49, 79, -34, 126, 82, 106, 47, -104, -12, 123, -63, 114}, new byte[]{-28, -121, 19, -82, 5, 30, 23, 5})))) {
                                    y0Var2 = new y0(m.h(new byte[]{-20, -98, 69, 22, 46, 28, -4, -95}, new byte[]{-97, -5, 49, 98, 71, 114, -101, -46}), m.h(new byte[]{96, 97, 64}, new byte[]{1, 13, 44, 24, 98, -46, -7, 17}), m.h(new byte[]{87, -6, 16, -8}, new byte[]{56, -118, 117, -106, -70, 16, -23, 121}), 0.0d);
                                }
                            } else {
                                i10 = 8;
                            }
                            if (!z10) {
                                if (d9 == null) {
                                }
                                return t(m.h(new byte[]{33, 83, -70, -4, -67, -37, 44, -29, 51, 86, -78, -27, -69, -57, 22, -31, 13, 74, -68, -4, -127, -64, 6, -29, 34, 75, -95, -4, -69, -41}, new byte[]{82, 36, -45, -120, -34, -77, 115, -109}));
                            }
                            byte[] bArr8 = new byte[i10];
                            // fill-array-data instruction
                            bArr8[0] = 29;
                            bArr8[1] = 24;
                            bArr8[2] = 92;
                            bArr8[3] = -3;
                            bArr8[4] = -32;
                            bArr8[5] = -84;
                            bArr8[6] = -45;
                            bArr8[7] = 66;
                            if (l(strA, m.h(new byte[]{-51, -92, -116, 77, 48, 22, 2, -61, -51, -96, -116, 65, -68, -36, -88, 14, 96, 50, 32, -112, -127, -44}, bArr8))) {
                                if (d9 == null || (j(strA) && !(z9 && l(strA, m.h(new byte[]{102, 3, -100, 5, -46, 42, -69, -108, -22, -60, 55, -7, ByteCompanionObject.MAX_VALUE, -76, 23, 91, -45, -43, 62}, new byte[]{-74, -76, 76, -75, 2, -98, 107, 41}))))) {
                                    return t(m.h(new byte[]{33, 83, -70, -4, -67, -37, 44, -29, 51, 86, -78, -27, -69, -57, 22, -31, 13, 74, -68, -4, -127, -64, 6, -29, 34, 75, -95, -4, -69, -41}, new byte[]{82, 36, -45, -120, -34, -77, 115, -109}));
                                }
                                if (!zL15 && !zL14) {
                                    return t(m.h(new byte[]{-116, 71, -37, -112, -12, -9, 57, -85, -114, 94, -51, -111, -4, -19, 55, -101, -113}, new byte[]{-31, 46, -88, -29, -99, -103, 94, -12}));
                                }
                                int i15 = 8;
                                if (zL5 && zL3) {
                                    strH4 = m.h(new byte[]{74, 75, 43, 46, 96, 9, 116, -118, 102, 72, 38, 46, 119, 12, 69, -123, 92, 94, 58}, new byte[]{57, 63, 78, 75, 18, 96, 26, -19});
                                } else if (z10 && zL6 && l(strA, m.h(new byte[]{83, 122, -30, 103, 5, -90, -95, -98, 83, 126, -30, 107, -119, 108, 11, 83, -2, -20, 78, -70, -76, 100}, new byte[]{-125, -58, 50, -41, -43, 28, 112, 31}))) {
                                    strH4 = m.h(new byte[]{89, -12, 89, 120, -52, 38, 93, 26, 89, -12, 89, 101, -52}, new byte[]{63, -122, 54, 22, -72, 121, 57, ByteCompanionObject.MAX_VALUE});
                                    i15 = 8;
                                } else if (zL3 && zL6) {
                                    i15 = 8;
                                    strH4 = m.h(new byte[]{-70, 43, -103, -2, 90, 110, 111, -37, -67, 42, -123, -49, 70, 84, 105, -61}, new byte[]{-36, 89, -10, -112, 46, 49, 8, -73});
                                } else {
                                    i15 = 8;
                                    if (zL3 && z9 && l(strA, m.h(new byte[]{14, 70, -74, 16, -119, -54, 17, -37, -126, -127, 29, -20, 36, 84, -67, 20, -69, -112, 20}, new byte[]{-34, -15, 102, -96, 89, 126, -63, 102}))) {
                                        strH4 = m.h(new byte[]{89, -49, -84, 20, -39, -39, 111, -79, 89, -59, -66, 18}, new byte[]{43, -86, -51, 102, -122, -67, 10, -41});
                                    } else if (l(strA, m.h(new byte[]{-22, -23, 17, -74, 45, -30, -95, 114, -22, -24, 17, -80, 45, -30, 44, -121, 64, 36, -68, 36, -127, 44, 9, -103, 88, 20, -78, 119, -109, 60, 24, -123, 84, 6, -88, 116, -100, 43, 25, -104, 85}, new byte[]{59, 104, -63, 14, -3, 95, 112, -9}))) {
                                        strH4 = m.h(new byte[]{-112, 106, 81, -44}, new byte[]{-29, 19, 63, -73, -57, -8, 4, 81});
                                    } else if (l(strA, m.h(new byte[]{-126, 54, -84, 25, -96, 2, 23, -97, -126, 58, -84, 27, -96, 2, -101, 81, 41, -54, 1, -127, 13, -31, -78, 85, Base64.padSymbol, -6, 29, -34, 5, -17, -86, 64, 38, -17, 31}, new byte[]{82, -122, 124, -85, 113, ByteCompanionObject.MIN_VALUE, -57, 33}))) {
                                        strH4 = m.h(new byte[]{-44, -77, 23, -119}, new byte[]{-75, -58, 99, -26, 112, -22, 78, 118});
                                    } else if (l(strA, m.h(new byte[]{-46, -90, 113, -11, -39, 64, -90, 121, -46, -90, 113, -6, -39, 69, -90, 122, -46, -87, 112, -58, 84, -74, 13, -115, 126, 12, -35, 50, 109, -91, 31, -77, 96, 83, -51, 33, 124, -81, 25, -81}, new byte[]{3, 38, -95, 64, 8, -58, 118, -63}))) {
                                        strH4 = m.h(new byte[]{-61, -77, -126, 41, -2, 50, 60, -22, -48, -94, -120, 47, -30}, new byte[]{-79, -42, -31, 64, -116, 81, 73, -122});
                                    } else if (l(strA, m.h(new byte[]{35, 107, 121, 24, 106, -40, -100, -127, 35, 105, 120, 32, 106, -35, -100, -117, 35, 108, 121, 19, 107, -27, 16, 69, -120, -99, -44, -116, -58, -75, -10, -27, 77, 1, 20, 118, 14, -75, -7, -27, 74, -115, -39, -35, -10, 24, 102, 73, -110, -78, -43, -57, -45, 23, 108, 86, -100, -65, -51, -49, -50, 12, 35, 91, -102, -65, -50}, new byte[]{-13, -47, -87, -90, -70, 101, 76, 53}))) {
                                        strH4 = m.h(new byte[]{73, 15}, new byte[]{40, 108, -87, 11, 7, Base64.padSymbol, 26, -34});
                                    } else {
                                        if (!zL13) {
                                            return t(m.h(new byte[]{-95, -68, 53, -23, -80, 2, -35, 108, -73, -66, 55, -22, -66, 1, -42, 108, -96, -77, 44, -32, -70, 1}, new byte[]{-44, -46, 94, -121, -33, 117, -77, 51}));
                                        }
                                        strH4 = m.h(new byte[]{50, 78, 54, -120, -5}, new byte[]{66, 33, 65, -19, -119, -84, 86, -84});
                                    }
                                }
                                byte[] bArr9 = new byte[i15];
                                // fill-array-data instruction
                                bArr9[0] = -99;
                                bArr9[1] = 110;
                                bArr9[2] = -16;
                                bArr9[3] = 77;
                                bArr9[4] = -94;
                                bArr9[5] = -55;
                                bArr9[6] = 6;
                                bArr9[7] = 46;
                                String strConcat = m.h(new byte[]{-18, 25, -103, 57, -63, -95, 60}, bArr9).concat(strH4);
                                byte[] bArr10 = new byte[i15];
                                // fill-array-data instruction
                                bArr10[0] = 87;
                                bArr10[1] = -64;
                                bArr10[2] = -70;
                                bArr10[3] = 48;
                                bArr10[4] = -48;
                                bArr10[5] = 29;
                                bArr10[6] = 93;
                                bArr10[7] = -80;
                                String strH8 = m.h(new byte[]{54, -84, -42}, bArr10);
                                if (zL14) {
                                    byte[] bArr11 = new byte[i15];
                                    // fill-array-data instruction
                                    bArr11[0] = 85;
                                    bArr11[1] = -14;
                                    bArr11[2] = 125;
                                    bArr11[3] = 71;
                                    bArr11[4] = 41;
                                    bArr11[5] = 6;
                                    bArr11[6] = -119;
                                    bArr11[7] = 114;
                                    strH5 = m.h(new byte[]{58, -108, 27}, bArr11);
                                } else {
                                    byte[] bArr12 = new byte[i15];
                                    // fill-array-data instruction
                                    bArr12[0] = 109;
                                    bArr12[1] = 54;
                                    bArr12[2] = 3;
                                    bArr12[3] = -2;
                                    bArr12[4] = 120;
                                    bArr12[5] = -37;
                                    bArr12[6] = -24;
                                    bArr12[7] = 104;
                                    strH5 = m.h(new byte[]{2, 88}, bArr12);
                                }
                                y0Var = new y0(strConcat, strH8, strH5, 0.0d);
                            } else {
                                if (j(strA) || d9 != null) {
                                    return t(m.h(new byte[]{29, 79, 115, 97, 2, ByteCompanionObject.MIN_VALUE, 0, -93, 12, 71, 115, 102, 3, -118, 3, -103, 14, 121, 111, 104, 26, -80, 4, -119, 12, 86, 110, 117, 26, -118, 19}, new byte[]{124, 38, 1, 7, 110, -17, 119, -4}));
                                }
                                if ((!zL19 && !zL15 && !l(strA, m.h(new byte[]{-103, 12, -126, -46, 48, -125, -37, 106, -10, 104, -19, -127, 84, -21, 36, 106, -16}, new byte[]{73, -72, 83, 81, -32, 58, -89, -70}))) || zL14) {
                                    return t(m.h(new byte[]{33, -51, -70, -65, 69, 2, -79, 22, 35, -44, -84, -66, 77, 24, -65, 38, 34}, new byte[]{76, -92, -55, -52, 44, 108, -42, 73}));
                                }
                                boolean zL26 = l(strA, m.h(new byte[]{66, 120, -53, -68, -64, 49, -75, -14, -23, -113, 102, 46, 109, -47, -120, -31, -9}, new byte[]{-110, -61, 27, 4, 17, -73, -23, -126}));
                                boolean zL27 = l(strA, m.h(new byte[]{115, -85, 117, 121, -117, ByteCompanionObject.MAX_VALUE, -124, 46, -40, 90, -40, -19, 39, -86, -67, 59, -41, 106, -61, -88, 52, -72}, new byte[]{-93, 22, -91, -57, 91, -52, -40, 94}));
                                if (!zL26 && !zL27 && !z9 && !zL6) {
                                    return t(m.h(new byte[]{7, 32, 11, 84, -9, -124, -20, 101, 21, 57, 28, 81, -14, -115, -30, 101, 16, 57, 28, 82, -3, -106, -4, 85, 26}, new byte[]{116, 80, 110, 55, -98, -30, -107, 58}));
                                }
                                if (zL26 && zL27 && (z9 || zL6)) {
                                    i11 = 8;
                                    strH6 = m.h(new byte[]{-47, -124, 0}, new byte[]{-80, -24, 108, 88, 117, -57, 44, 34});
                                } else {
                                    if (zL26 && zL27) {
                                        strH6 = m.h(new byte[]{114, 72, -7, -125, -64, 111, -96, 107, 96}, new byte[]{20, 41, -102, -26, -97, 9, -59, 14});
                                    } else if (zL27 && (z9 || zL6)) {
                                        strH6 = m.h(new byte[]{116, -79, -16, -49, 28, -19, 45, -103, 97, -89}, new byte[]{18, -44, -107, -69, 67, -118, 65, -8});
                                    } else if (zL26 && (z9 || zL6)) {
                                        i11 = 8;
                                        strH6 = m.h(new byte[]{103, 38, 115, 111, -63, 85, -110, 111, 114, 52}, new byte[]{1, 71, 16, 10, -98, 50, -2, 14});
                                    } else {
                                        i11 = 8;
                                        strH6 = zL26 ? m.h(new byte[]{-112, 27, -120, -59}, new byte[]{-10, 122, -21, -96, 98, 18, 34, -107}) : zL27 ? m.h(new byte[]{87, -75, 49, 113}, new byte[]{49, -48, 84, 5, -77, 92, 113, 119}) : m.h(new byte[]{-32, -33, -78, -118, 62}, new byte[]{-121, -77, -45, -7, 77, 90, -33, -63});
                                    }
                                    i11 = 8;
                                }
                                byte[] bArr13 = new byte[i11];
                                // fill-array-data instruction
                                bArr13[0] = -31;
                                bArr13[1] = -93;
                                bArr13[2] = 58;
                                bArr13[3] = -84;
                                bArr13[4] = -117;
                                bArr13[5] = -72;
                                bArr13[6] = -63;
                                bArr13[7] = -33;
                                byte[] bArr14 = new byte[i11];
                                // fill-array-data instruction
                                bArr14[0] = 88;
                                bArr14[1] = 87;
                                bArr14[2] = -40;
                                bArr14[3] = -50;
                                bArr14[4] = -97;
                                bArr14[5] = 109;
                                bArr14[6] = 92;
                                bArr14[7] = -3;
                                byte[] bArr15 = new byte[i11];
                                // fill-array-data instruction
                                bArr15[0] = -13;
                                bArr15[1] = 12;
                                bArr15[2] = 119;
                                bArr15[3] = -80;
                                bArr15[4] = 82;
                                bArr15[5] = 71;
                                bArr15[6] = 67;
                                bArr15[7] = 40;
                                y0Var = new y0(m.h(new byte[]{ByteCompanionObject.MIN_VALUE, -54, 72, -106}, bArr13).concat(strH6), m.h(new byte[]{57, 59, -76}, bArr14), m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 105, 3}, bArr15), 0.0d);
                            }
                        } else {
                            if (j(strA)) {
                                return t(m.h(new byte[]{86, 119, 115, 14, 48, 85, 108, 70, 111, 120, 114, 37, 21, 73, 119, 83, 64, 121, 111, 37, 47, 94}, new byte[]{48, 22, 29, 81, 74, 58, 2, 35}));
                            }
                            if (z17 != 0 || zL || l(strA, m.h(new byte[]{-118, -54, 101, Base64.padSymbol, 97, -4, 15, 73, -118, -64, 100, 0, 96, -64, -126, -65, 33, 57, -55, -105, -51, 50, -69, -67, 57, 16, -38, -55, -51, 30, -70, -28, ByteCompanionObject.MAX_VALUE}, new byte[]{90, 117, -76, -67, -79, 66, -34, -49}))) {
                                return t(m.h(new byte[]{64, -81, -56, -106, -51, -119, 82, -25, 109, -84, -59, -103, -26, -116, 65, -12, 87, -90, -5, -103, -42, -108, 123, -15, 71, -70, -44, -104, -53, -108, 65, -26}, new byte[]{50, -54, -92, -9, -71, -32, 36, -126}));
                            }
                            if (d9 == null && !zL14) {
                                return t(m.h(new byte[]{108, ByteCompanionObject.MAX_VALUE, -72, -30, 113, -10, 36, -123, 121, 110, -77, -34, 116, -11, 43, -65, 115}, new byte[]{31, 15, -35, -127, 24, -112, 93, -38}));
                            }
                            if (zL14 && d9 != null && d9.doubleValue() != 0.0d) {
                                return t(m.h(new byte[]{73, -98, -98, -46, 96, 14, 36, 42, 67, -97, -105, -21, 122, 6, 43, 43, 79}, new byte[]{42, -15, -16, -76, 12, 103, 71, 94}));
                            }
                            y0Var2 = new y0(m.h(new byte[]{-50, -112, -78}, new byte[]{-88, -15, -36, -98, -65, 18, -13, 3}), m.h(new byte[]{-50, 32, -71}, new byte[]{-81, 76, -43, -23, -111, 91, -40, 64}), m.h(new byte[]{79, 46, -56}, new byte[]{60, 75, -68, -12, -65, -53, -11, -69}), zL14 ? 0.0d : d9.doubleValue());
                        }
                    }
                    y0Var2 = y0Var;
                } else {
                    if (d9 != null || j(strA) || z8 || zL17 || z14 || zL18 || l(strA, m.h(new byte[]{-84, -100, 66, -9, 113, -94, -94, 117, -84, -98, 67, -53, 113, -90, -93, 72, 32, 80, -23, 3, -36, 50, 15, -104, 21, 67, -32, 32, -47, 112, 28, -101, 25, 92, -1, 38, -62, 100, -93, 72, -84, -112, 66, -3, 113, -96, -93, 70, -84, -112, 67, -55, -3, 104, 8, -71, 1, 10, -18, 33, -64, 110, 26, -110, 29, 84, -5, 32, -49, 100, -93, 66, -84, -110, 66, -15, 113, -91, 47, -123, 7, 108, -17, 101, -35, -55, -15, 37, -55, -16, 41, -97, 20, -55, -9, 37, -62, -16, 47, 19, -47, 99, 63, -120, 86, 92, -30, 39, -50, 118, 22, -119, 31, 65, -2, 35, -35, -55, -16, 37, -50, -16, 39, -97, 21, -56, -51, 37, -64, -16, 41, -97, 20, -56, -50, -87, 12, 91, -34, 50, -117, 100, 29, -102, 8, 73, -12, 38, -62, 121, 7, -100, 19, 78, -50, 63, -38, 84, 14, -33, 0, -16, 45, -97, 31, -55, -14, 37, -57, -16, 39, 51, -64, 126, 7, -112, 14, 92, 66, -14, 113, -88, -93, 74, -84, -98, 66, -12, 113, -90, -93, 71, -84, -104, 66, -14, 112, -101, 15, 37, -61, -16, 44, -97, 26, -56, -51, 37, -50, -16, 42, -97, 28, 68, 3, -114, 48, 93, -72, 51, -55, 121, 31, -109, 0, -16, 45, -98, 33, -56, -51, 36, -6, -16, 39, -97, 28, -55, -15, -87, 12, 91, -34, 50, -117, 100, 3, -112, 14, 67, -9, 33, -43}, new byte[]{124, 32, -110, 79, -95, 24, 115, -11}))) {
                        return t(m.h(new byte[]{-96, -48, 33, -24, 37, -116, 5, -56, -96, -54, 55, -42, 48, -118, 53, -43, -80}, new byte[]{-43, -66, 82, -119, 67, -23, 90, -91}));
                    }
                    boolean zL28 = l(strA, m.h(new byte[]{30, -112, 81, 19, -66, 10, -9, -115, 30, -107, 81, 29, -66, 4, -10, -65, -110, 95, -6, -22, 18, -96, 91, 76, -95, 72, -26, -54, 10}, new byte[]{-50, 47, -127, -90, 111, -118, 39, 56}));
                    boolean zL29 = l(strA, m.h(new byte[]{-79, -47, -59, -113, 96, 48, 63, -10, -79, -37, 105, -22, 3, 96, 90, -102, -31, -77, -88, -21, 50, 97, 109, -102, -19, 31, -59, -120, 97, 14, 62, -54, -80, -30, -60, -72, 97, 0, 63, -10, -79, -35, -59, -120, 97, 8, -109, -101, -45, -77, -85, -21, 48, 97, 110, -102, -29, -77, -91, -22, 12, 96, 81, -101, -45, -77, -83, -21, 51, 97, 99, 55, 20, 13, 120, 79, -59, -43, -109, 57, 4, 16, 97, 85, -61, -43}, new byte[]{97, 99, 21, 58, -79, -80, -17, 75}));
                    boolean z20 = l(strA, m.h(new byte[]{85, 50, -20, 106, 114, 34, 22, 109, 84, 6, -19, 82, 114, 41, -70, 6, 50, 85, -116, 10, 17, 65, 125, 7, 6, 84, -76, 10, 26, 64, 68, 7, 9}, new byte[]{-123, -123, 60, -38, -94, -111, -58, -42})) || !(!l(strA, m.h(new byte[]{-18, 36, 121, 89}, new byte[]{-125, 81, 13, 60, -42, 44, -12, 110})) || zL28 || zL15 || zL14 || zL29);
                    if ((zL28 && (zL15 || zL14 || zL29 || z20)) || ((zL29 && (z20 || ((!zL12 && zL14) || (zL12 && zL15)))) || (z20 && ((!zL12 && zL15) || (zL12 && zL14))))) {
                        return t(m.h(new byte[]{-94, 38, -53, -68, -57, 8, 20, -106, -88, 39, -62, -123, -60, 17, 18, -112, -96, Base64.padSymbol, -52, -75, -59}, new byte[]{-63, 73, -91, -38, -85, 97, 119, -30}));
                    }
                    if (zL28) {
                        y0Var2 = new y0(m.h(new byte[]{-9, 100, 33, 2}, new byte[]{-102, 17, 85, 103, -24, 70, 119, -19}), m.h(new byte[]{105, -85, -75}, new byte[]{8, -57, -39, 83, -33, 59, -30, 108}), m.h(new byte[]{70, -123, -94, 2, 52, -36}, new byte[]{50, -22, -59, 101, 88, -71, -23, -34}), 0.0d);
                    } else if (zL29) {
                        y0Var2 = new y0(m.h(new byte[]{94, -18, 62, -16}, new byte[]{51, -101, 74, -107, -75, 58, -9, -104}), m.h(new byte[]{-88, 19, 33}, new byte[]{-55, ByteCompanionObject.MAX_VALUE, 77, 53, -44, -115, 108, -103}), m.h(new byte[]{3, -117, 89}, new byte[]{108, -19, 63, -30, -108, 45, -61, -107}), 0.0d);
                    } else if (z20) {
                        y0Var2 = new y0(m.h(new byte[]{112, 100, -84, 20}, new byte[]{29, 17, -40, 113, -94, 116, -71, -67}), m.h(new byte[]{-100, -9, -99}, new byte[]{-3, -101, -15, -119, 37, 10, 56, -12}), m.h(new byte[]{90, 53}, new byte[]{53, 91, -127, -68, 32, -49, -111, -45}), 0.0d);
                    } else {
                        if (!zL15 && !zL14) {
                            return t(m.h(new byte[]{101, -84, -100, 26, 110, -70, -5, 75, 103, -75, -118, 27, 102, -96, -11, 123, 102}, new byte[]{8, -59, -17, 105, 7, -44, -100, 20}));
                        }
                        y0Var2 = new y0(m.h(new byte[]{84, -97, 45, 67}, new byte[]{57, -22, 89, 38, 111, -37, -48, -47}), m.h(new byte[]{43, -88, 6}, new byte[]{74, -60, 106, -11, 10, -30, -118, -35}), (!zL12 ? zL14 : zL15) ? m.h(new byte[]{-53, 27, -109}, new byte[]{-92, 125, -11, -53, 114, -73, 116, -80}) : m.h(new byte[]{-46, 45}, new byte[]{-67, 67, -13, -73, -93, -64, -46, -52}), 0.0d);
                    }
                }
                String str4 = null;
                for (Map$Entry map$Entry : linkedHashMap.entrySet()) {
                    if (y0Var2.a((y0) map$Entry.getValue()) && (str4 == null || (((String) map$Entry.getKey()).startsWith(m.h(new byte[]{52, 44, 114, -70, 87, -47, 98, -92}, new byte[]{68, 94, 29, -36, 62, -67, 7, -98})) && !str4.startsWith(m.h(new byte[]{-58, -16, -64, -61, -5, 77, 55, -53}, new byte[]{-74, -126, -81, -91, -110, 33, 82, -15}))))) {
                        str4 = (String) map$Entry.getKey();
                    }
                }
                if (str4 == null) {
                    return t(m.h(new byte[]{21, 69, 81, 80, 115, 49, 96, -105, 6, 121, 83, 88, 112, 42, 90, -89, 1, 72, 68, 79, 125, 54, 83, -103, 22, 74, 64, 3}, new byte[]{116, 38, 37, 57, 28, 95, 63, -8}) + y0Var2.f5829a + m.h(new byte[]{44}, new byte[]{22, -78, 84, -63, 69, -38, 102, -103}) + y0Var2.f5830b + m.h(new byte[]{-104}, new byte[]{-94, 75, -85, -82, -87, 94, -11, 123}) + y0Var2.d);
                }
                return new h(z0.f5832b, str4, y0Var2.f5829a + m.h(new byte[]{-122}, new byte[]{-68, 28, 36, 57, 26, -20, -27, 92}) + y0Var2.f5830b + m.h(new byte[]{49}, new byte[]{11, -4, 111, -100, 55, -74, -48, -25}) + y0Var2.c + m.h(new byte[]{57}, new byte[]{3, -87, 73, -116, -97, 94, 94, -90}) + y0Var2.d, 27);
            }
        }
        return t(m.h(new byte[]{-76, 43, 5, 23, 83, -85, 91, 80, -122, 49, 11, 9, 95, -72, 67, 70}, new byte[]{-39, 94, 105, 99, 58, -37, 55, 53}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String q(String str) {
        if (str == null) {
            str = "";
        }
        return Normalizer.normalize(str, Normalizer$Form.NFKC).toLowerCase(Locale.ROOT).replace((char) 1105, (char) 1077).replace(',', '.').replaceAll(m.h(new byte[]{1, -29, -77, -12, 65, 106, -8, -62, 56, -8}, new byte[]{101, -116, -35, -81, 102, -120, 120, 91}), m.h(new byte[]{5, -8, 82, 56, -105, -108}, new byte[]{97, -105, 114, 86, -8, -32, -50, -85})).replace(m.h(new byte[]{37, 24, 79}, new byte[]{68, 55, 44, 91, 27, -64, 51, 118}), m.h(new byte[]{-68, 18}, new byte[]{-35, 113, -50, -80, -1, -9, -63, -103})).replaceAll(m.h(new byte[]{-76, 123, -9, 91, 29, 122, 89, 121, -31, 109, -26, 78, 126, 55, 126, 69, -25, 8, -74, 79}, new byte[]{-100, 68, -53, 102, 65, 10, 34, 53}), " ").replaceAll(m.h(new byte[]{-73, -79, -23, -115, -69, -79, 102, 88}, new byte[]{-21, -97, -63, -78, -102, -19, 2, 113}), " ").replaceAll(m.h(new byte[]{-99, -116, -62, -40, -123, -8, 21, 85, -74, -87, -48, -43, -48, -111, 67, 85, -21, -113, -75}, new byte[]{-58, -46, -98, -88, -2, -76, 104, 9}), " ").trim().replaceAll(m.h(new byte[]{91, -109, 30}, new byte[]{7, -32, 53, 63, 64, 101, -84, 62}), " ");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ArrayList r(String str) {
        int i9;
        Integer num;
        String[] strArr = {m.h(new byte[]{-94, -79, 89, -4, 39, -88, 35, 81}, new byte[]{114, 12, -119, 66, -9, 19, -14, -35}), m.h(new byte[]{102, -96, -72, 46, -31, -79, -61, 40}, new byte[]{-74, 30, 104, -102, 49, 9, 19, -107}), m.h(new byte[]{-49, -119, 97, 56, 3, 17}, new byte[]{31, Base64.padSymbol, -79, -118, -45, -95, -116, -47}), m.h(new byte[]{80, -101, -19, -67, -56, 90}, new byte[]{-127, 25, 60, Base64.padSymbol, 24, -30, 123, -119}), m.h(new byte[]{69, 109, 73, -15, -122, -110, -101, -115, 69, 106, 73, -15}, new byte[]{-108, -22, -103, 68, 87, 16, 74, 6}), m.h(new byte[]{67, 1, -122, 96, 64, 120, 120, 23}, new byte[]{-109, -66, 87, -17, -111, -6, -87, -101}), m.h(new byte[]{41, -100, 13, 104, -27, 14, -78, 57, 41, -104}, new byte[]{-8, 20, -35, -35, 52, -113, 99, -69}), m.h(new byte[]{-118, -48, 49, 3, -39, 106, 8, 72}, new byte[]{91, 81, -31, -74, 9, -42, -39, -60}), m.h(new byte[]{-9, -28, -61, -114, 43, Base64.padSymbol, -11, -60, -9, -22, -62, -68}, new byte[]{39, 86, 19, 48, -6, -68, 37, 113}), m.h(new byte[]{56, -86, 71, 0, 33, -78, -52, -84, 57, -100, 70, 57}, new byte[]{-24, 30, -105, -75, -15, 0, 29, 35}), m.h(new byte[]{69, -12, 13, 101, 27, -42, -26, 125, 68, -62, 12, 92}, new byte[]{-107, 64, -35, -48, -54, 87, 55, -14}), m.h(new byte[]{-51, 122, 106, 60, 56, 12, 111, 97, -51, 121, 106, 56, 56, 0, 110, 90, -51, 116, 107, 10, 57, 56}, new byte[]{29, -60, -70, -120, -24, -76, -65, -36}), m.h(new byte[]{-90, 88, 86, -100, 94, 85, -89, 96, -90, 92, 86, -102, 95, 102, -89, 109, -89, 110, 87, -94}, new byte[]{118, -20, -122, 46, -114, -32, 119, -35}), m.h(new byte[]{44, 91, -60, 118, 85, 105, -93, 88, 45, 105, -59, 66, 84, 87, -93, 85, 44, 91, -60, 122}, new byte[]{-3, -39, 21, -10, -123, -47, 115, -27}), m.h(new byte[]{-13, 77, -56, 108, 10, 94, 121, -65, -13, 74, -56, 100, 11, 108, 120, ByteCompanionObject.MIN_VALUE, -13, 76, -56, 105, 10, 94, 121, -72}, new byte[]{34, -54, 24, -39, -37, -36, -88, 52}), m.h(new byte[]{83, -98, -60, 112, -83, -110, 13, 124, 83, -111, -59, 75, -83, -106, 13, 113, 82, -93, -60, 115}, new byte[]{-125, 33, 21, -1, 124, 16, -35, -63}), m.h(new byte[]{55, 44, -66, -103, 108, -107, 96, 36, 54, 25, -66, -100, 109, -96, 96, 32, 54, 20, -65, -82, 108, -104}, new byte[]{-26, -92, 110, 44, -67, 20, -79, -90}), m.h(new byte[]{-25, 24, -90, -108, 85, -81, -18, 101, -26, 41, -90, -107, 84, -107, -18, 104, -25, 27, -89, -83}, new byte[]{54, -103, 118, 33, -123, 19, 62, -40}), m.h(new byte[]{-84, -93, 102, 65, -95, 69, 15, 21, -84, -83, 102, 66, -96, 116, 15, 20, -83, -105, 102, 79, -95, 70, 14, 44}, new byte[]{124, 17, -74, -1, 112, -60, -33, -96}), m.h(new byte[]{-9, -6, -61, 20, -29, -87, 39, -55, -10, -52, -61, 28, -29, -85, 38, -14, -10, -56, -61, 17, -30, -103, 39, -54}, new byte[]{39, 78, 19, -95, 51, 27, -10, 70})};
        String[] strArr2 = {m.h(new byte[]{15, 125, -109, -70}, new byte[]{117, 24, -31, -43, -50, 14, 23, -35}), m.h(new byte[]{-7, -88, 11}, new byte[]{-106, -58, 110, -40, 92, -13, -46, -68}), m.h(new byte[]{-95, 71, 95}, new byte[]{-43, 48, 48, 57, 106, -69, 44, 21}), m.h(new byte[]{15, 9, -52, -5, -78}, new byte[]{123, 97, -66, -98, -41, 26, -8, 11}), m.h(new byte[]{79, 35, -27, 108}, new byte[]{41, 76, -112, 30, 80, -91, -65, 8}), m.h(new byte[]{49, 49, 113, -66}, new byte[]{87, 88, 7, -37, -85, 86, -43, 91}), m.h(new byte[]{98, -81, -54}, new byte[]{17, -58, -78, 60, -106, -29, 7, -15}), m.h(new byte[]{23, -46, 116, 5, -95}, new byte[]{100, -73, 2, 96, -49, -93, -117, -28}), m.h(new byte[]{73, 75, 99, -79, -41}, new byte[]{44, 34, 4, -39, -93, -9, -34, 94}), m.h(new byte[]{-96, -59, -107, 46}, new byte[]{-50, -84, -5, 75, 101, 81, -21, 76}), m.h(new byte[]{-82, -80, -51}, new byte[]{-38, -43, -93, -61, 58, -98, 95, 10}), m.h(new byte[]{50, -24, 55, 71, 45, 10}, new byte[]{87, -124, 82, 49, 72, 100, 70, ByteCompanionObject.MIN_VALUE}), m.h(new byte[]{ByteCompanionObject.MIN_VALUE, -79, 6, -36, 92, -27}, new byte[]{-12, -58, 99, -80, 42, ByteCompanionObject.MIN_VALUE, 58, 34}), m.h(new byte[]{1, 40, -69, -47, -104, 69, 121, 81}, new byte[]{117, 64, -46, -93, -20, 32, 28, 63}), m.h(new byte[]{-37, -101, -73, -26, 83, ByteCompanionObject.MIN_VALUE, -50, 7}, new byte[]{-67, -12, -62, -108, 39, -27, -85, 105}), m.h(new byte[]{-105, 42, -53, -96, 19, 69, 38}, new byte[]{-15, 67, -83, -44, 118, 32, 72, 93}), m.h(new byte[]{-38, -83, -119, 47, 89, -62, -66}, new byte[]{-87, -60, -15, 91, 60, -89, -48, 27}), m.h(new byte[]{-58, -22, 33, 89, 62, 40, 17, -118, -37}, new byte[]{-75, -113, 87, 60, 80, 92, 116, -17}), m.h(new byte[]{-96, 62, -27, -61, -73, 95, 43, -96}, new byte[]{-59, 87, -126, -85, -61, 58, 78, -50}), m.h(new byte[]{-16, -36, -63, -110, 79, -27, -126, -35}, new byte[]{-98, -75, -81, -9, 59, ByteCompanionObject.MIN_VALUE, -25, -77})};
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i10 = 0;
        for (int i11 = 0; i11 < 20; i11++) {
            linkedHashMap.put(strArr[i11], Integer.valueOf(i11));
            linkedHashMap.put(strArr2[i11], Integer.valueOf(i11));
        }
        linkedHashMap.put(m.h(new byte[]{63, 82, 64, -75, -25, 5, 45, 75}, new byte[]{-17, -20, -112, 1, 55, -72, -4, -56}), 1);
        linkedHashMap.put(m.h(new byte[]{-121, 119, 118, -47, 122, -104, -91, 95}, new byte[]{87, -55, -90, 101, -86, 37, 117, -17}), 1);
        linkedHashMap.put(m.h(new byte[]{-121, 111, -38, 113, -85, -109, -51, 87, -121, 98, -37, 67, -86, -88}, new byte[]{87, -38, 10, -59, 123, 43, 29, -22}), 1);
        linkedHashMap.put(m.h(new byte[]{-52, -30, -16, 12, 9, -51, -37, 49, -52, -20, -15, Base64.padSymbol}, new byte[]{28, 86, 32, -66, -39, 115, 11, -120}), 2);
        linkedHashMap.put(m.h(new byte[]{108, -58, 89, -80, 24, 104}, new byte[]{-68, 114, -119, 2, -56, -35, 81, 33}), 2);
        linkedHashMap.put(m.h(new byte[]{64, 58, -91, 21, -30, 32, -52, -52, 65, 2, -91, 22}, new byte[]{-111, -72, 116, -107, 50, -98, 28, 117}), 3);
        linkedHashMap.put(m.h(new byte[]{-103, -108, -27, -79, 60, 99, 24, 71, -104, -96, -27, -67}, new byte[]{73, 43, 53, 4, -19, -29, -56, -11}), 1);
        linkedHashMap.put(m.h(new byte[]{-30, -29, -120, -97, 38, 93, 18, 55, -29, -33, -119, -92}, new byte[]{50, 92, 88, 42, -9, -35, -62, -123}), 1);
        linkedHashMap.put(m.h(new byte[]{ByteCompanionObject.MAX_VALUE, -49, 1, -123, -21, 63, -20, 49, ByteCompanionObject.MAX_VALUE, -50, 1, -116}, new byte[]{-81, 112, -47, 48, 58, -65, 60, -125}), 1);
        linkedHashMap.put(m.h(new byte[]{-12, -111, 101, -27, 41}, new byte[]{-110, -8, 23, -106, 93, -69, 7, 38}), 1);
        linkedHashMap.put(m.h(new byte[]{-20, 88, 125, -28, 27, 75, 117, 31, -20, 84, 124, -33}, new byte[]{60, -22, -84, 102, -53, -11, -92, -97}), 2);
        linkedHashMap.put(m.h(new byte[]{-3, 40, 51, 30, -35, 84, 23, -17, -4, 25, 51, 18}, new byte[]{45, -102, -30, -100, 13, -22, -58, 111}), 2);
        linkedHashMap.put(m.h(new byte[]{48, 118, 124, -95, 110, 78, 98, -60, 48, 122, 125, -97}, new byte[]{-32, -60, -83, 35, -66, -16, -77, 68}), 2);
        linkedHashMap.put(m.h(new byte[]{118, -43, 49, -75, 47, 20}, new byte[]{5, -80, 82, -38, 65, 112, 103, -106}), 2);
        linkedHashMap.put(m.h(new byte[]{10, 7, 41, 100, -4, 115, 2, 16, 11, Base64.padSymbol, 40, 93}, new byte[]{-37, -123, -8, -28, 44, -58, -45, -110}), 3);
        linkedHashMap.put(m.h(new byte[]{110, -47, 67, 22, -53, 126, 90, -8, 110, -33, 67, 24}, new byte[]{-65, 83, -110, -106, 27, -53, -117, 122}), 3);
        linkedHashMap.put(m.h(new byte[]{36, 117, -124, -8, -60, -87, -88, 55, 36, 123, -123, -51, -60, -96}, new byte[]{-11, -9, 85, 120, 20, 28, 121, -75}), 3);
        linkedHashMap.put(m.h(new byte[]{73, 43, 87, -36, 95}, new byte[]{Base64.padSymbol, 67, 62, -82, 59, 67, 97, 86}), 3);
        String[] strArr3 = {m.h(new byte[]{-25, -91, -36, 101, -101, -115, -5, -106, -26, -105, -36, 103, -102, -65, -6, -82}, new byte[]{55, 17, 12, -41, 75, Base64.padSymbol, 43, 34}), m.h(new byte[]{-69, 92, 51, 122, -26, 70, 94, -121, -69, 88, 50, 74, -25, 124, 95, -65}, new byte[]{106, -34, -30, -6, 54, -2, -114, 51}), m.h(new byte[]{-60, -91, 44, -87, -47, 115, 27, -44, -59, -98}, new byte[]{21, 36, -4, 23, 0, -13, -53, 106}), m.h(new byte[]{47, 28, -33, 25, 27, -72, -57, -88, 47, 23, -34, 35, 27, -69, -57, -85, 46, 33}, new byte[]{-1, -93, 14, -106, -54, 58, 22, 36}), m.h(new byte[]{126, -50, -102, -49, 75, -58, -103, 87, 126, -54, -102, -50, 74, -14, -103, 84, 126, -55, -101, -8}, new byte[]{-81, 70, 74, 122, -102, 71, 72, -43}), m.h(new byte[]{83, -121, -101, -43, -93, 57, 79, 40, 82, -78, -101, -43, -94, 4, 79, 43, 83, -124}, new byte[]{-126, 6, 75, 96, 115, -123, -98, -92}), m.h(new byte[]{28, -124, -55, -67, 31, 28, -26, -27, 28, -118, -56, -113, 30, 41, -26, -27, 29, -73, -56, -116, 31, 31}, new byte[]{-52, 54, 25, 3, -50, -99, 54, 80}), m.h(new byte[]{-36, 25, 25, -81, -25, 18, 69, -74, -36, 16, 25, -92, -26, 33, 69, -69, -36, 19}, new byte[]{12, -83, -55, 26, 55, -96, -108, 57}), m.h(new byte[]{-33, -120, 14, Base64.padSymbol, -69, -85}, new byte[]{14, 9, -33, -65, 107, 21, -74, -90})};
        String[] strArr4 = {m.h(new byte[]{-67, 47, -111, 97, 122, 24}, new byte[]{-55, 88, -12, 15, 14, 97, 13, 45}), m.h(new byte[]{35, 8, 41, 95, 85, -19}, new byte[]{87, 96, 64, 45, 33, -108, 93, 7}), m.h(new byte[]{-52, 21, 66, -16, 114}, new byte[]{-86, 122, 48, -124, 11, 102, -89, 35}), m.h(new byte[]{-47, 62, ByteCompanionObject.MIN_VALUE, -99, 7}, new byte[]{-73, 87, -26, -23, 126, 5, 21, -27}), m.h(new byte[]{108, -17, 110, 122, 0}, new byte[]{31, -122, 22, 14, 121, 102, -10, -25}), m.h(new byte[]{-51, -94, -31, -108, -101, 73, 82}, new byte[]{-66, -57, -105, -15, -11, Base64.padSymbol, 43, 91}), m.h(new byte[]{-97, -80, -19, 83, -73, 123}, new byte[]{-6, -39, -118, 59, -61, 2, -111, 76}), m.h(new byte[]{-4, -38, 113, 16, -109, 118}, new byte[]{-110, -77, 31, 117, -25, 15, -118, 39}), m.h(new byte[]{93, -41, -4, 6, 55, 121, -127}, new byte[]{53, -94, -110, 98, 69, 28, -27, -97})};
        for (int i12 = 0; i12 < 9; i12++) {
            int i13 = (i12 + 2) * 10;
            linkedHashMap.put(strArr3[i12], Integer.valueOf(i13));
            linkedHashMap.put(strArr4[i12], Integer.valueOf(i13));
        }
        String[] strArrSplit = str.split(m.h(new byte[]{-72, 2, 34}, new byte[]{-28, 113, 9, 103, -53, 81, -26, 62}));
        ArrayList arrayList = new ArrayList();
        while (i10 < strArrSplit.length) {
            String strReplace = strArrSplit[i10].replace(m.h(new byte[]{104}, new byte[]{77, -15, 99, -8, -92, -60, -5, -56}), "");
            Integer numValueOf = (Integer) linkedHashMap.get(strReplace);
            if (numValueOf != null) {
                if (numValueOf.intValue() >= 20 && numValueOf.intValue() < 100 && numValueOf.intValue() % 10 == 0 && (i9 = i10 + 1) < strArrSplit.length && (num = (Integer) linkedHashMap.get(strArrSplit[i9])) != null && num.intValue() > 0 && num.intValue() < 10) {
                    numValueOf = Integer.valueOf(num.intValue() + numValueOf.intValue());
                    i10 = i9;
                }
                double dIntValue = numValueOf.intValue();
                int i14 = i10 + 2;
                if (i14 < strArrSplit.length && strArrSplit[i10 + 1].equals(m.h(new byte[]{-117, 92}, new byte[]{90, -35, 57, 26, -101, -41, 67, 109})) && strArrSplit[i14].equals(m.h(new byte[]{12, -14, -95, -62, 65, 34, -58, -75, 12, -1, -95, -60, 65, 36, -58, -75, 12, -12}, new byte[]{-36, 77, 113, 124, -111, -103, 22, 11}))) {
                    dIntValue += 0.5d;
                    i10 = i14;
                }
                arrayList.add(Double.valueOf(dIntValue));
            } else if (strReplace.matches(m.h(new byte[]{-120, 100, -84, 111, -86, 101, -89, -25, -5, 112, -69, 110, -69, 101, -89, -25, -6, 112}, new byte[]{-45, 79, -127, 50, -107, 57, -61, -52}))) {
                arrayList.add(Double.valueOf(Double.parseDouble(strReplace)));
            }
            i10++;
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void s(Throwable th) {
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else if (!(th instanceof e) && !(th instanceof a8.d) && !(th instanceof IllegalStateException) && !(th instanceof NullPointerException) && !(th instanceof IllegalArgumentException) && !(th instanceof c)) {
            th = new f(th);
        }
        th.printStackTrace();
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static h t(String str) {
        return new h(z0.d, "", str, 27);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int u(float f8) {
        return (int) (f8 + (f8 < 0.0f ? -0.5f : 0.5f));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void v(WindowManager windowManager, View view) {
        if (view == null) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new a1.a(0, windowManager, view));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean w(String str) {
        String strH = m.h(new byte[]{36, 50, 10, 117, -76, 13, 62, -34, -72, -35, -123, 116, -120, -127, -10, 117, 64, 112, 26, -40, -28, 92, 86, -74, -36, -71, -31, 39, -28, 85, -38, 126, 119, 65, 77, -114, 73, 13, 60, -33, -116, -35, -123, 117, -76, 13, Base64.padSymbol, 82, 124, 118, 124, -39, 31, -12}, new byte[]{12, 13, 48, -92, 53, -35, -122, 14});
        String strH2 = m.h(new byte[]{-29, -112, -90, 52, -69, 0, -97, 64, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MAX_VALUE, 36, 53, -117, 0, -108, 64, 112, -13, -20, -97, 69, -83, 11, -20, 27, 16, 76, 84, -40, 81, -16, 17, 27, 31, 76, 82, -39, 104, -16, 16, -105, -33, -25, -88, 116, -6, 93, 64, 116, ByteCompanionObject.MAX_VALUE, 41, 53, -119, 0, -108, 64, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MAX_VALUE, 33, -72, 121, -85, 109, -19, -31, -45, 76, 83, -39, 96, -15, 36, 27, 18, -64, -108, 114, -100, 92, -70, -73, ByteCompanionObject.MAX_VALUE, 39, 52, -68, 0, -109, -52, -69, -44, -48, -103, 35, -84, -15, 47, 26, 47, 76, 84, -39, 98, 125, -32, -80, -29, -31, -50, 117, 0, -99, 64, 117, ByteCompanionObject.MAX_VALUE, 41, 52, -70, 0, -97, -71}, new byte[]{-53, -81, -100, -28, 9, -48, 33, -112});
        String strH3 = m.h(new byte[]{-34, -76, 3, 46, 76, -63, 119, -27, 75, 90, -69, 46, 70, -63, 121, -28, 121, 90, -69, 46, 64, -64, 66, 105, -122, -16, 117, -125, -44, 109, 18, -117, 38, 58, -23, 74, 47, -110, 18, -121, -86, -5, 66, -78, -125, 59, -21}, new byte[]{-10, -117, 57, -2, -2, 17, -62, 53});
        StringBuilder sbU = ai.onnxruntime.a.u(strH3);
        q.u(new byte[]{-49, -38, -28, 57}, new byte[]{-25, -27, -34, 25, -34, 93, 76, 27}, sbU, strH2);
        q.u(new byte[]{122, -113, 47, -47, -54, -16, -15}, new byte[]{83, -12, 31, -3, -2, -115, -47, 73}, sbU, strH);
        q.u(new byte[]{-89}, new byte[]{-37, -110, -77, 82, 37, 104, -7, -85}, sbU, strH);
        q.u(new byte[]{24, 12, -40, 50}, new byte[]{48, 51, -30, 18, 47, -87, 115, -98}, sbU, strH2);
        q.u(new byte[]{-91, -46, -65, -58, 78, -110, 50}, new byte[]{-116, -87, -113, -22, 122, -17, 18, -110}, sbU, strH3);
        sbU.append(m.h(new byte[]{-86, -15, 60, 32, 14, -119, 52, 10, -2, -67, 99, 39, 27, -108, 120, 21, -86, -32, 53, 46, 13, -97, 121, 86, -73, -21, 43, 39, 22, -107, 124, 86, -73, -21, 43, 97, 28, -106, 100, 93, -1, -2, 113, 126, 64, -100, 106, 68, -91, -67, 37, 35, 22, -107, 124, 79, -92, -2, 56, 40, 8, -100, 103, 69, -95, -2, 56, 40, 8, -38, 109, 70, -71, -11, 112, 105, 69, -64, 43, 2, -23, -72, 54, 39, 6, -109, 101, 86, -94, -22, 60, Base64.padSymbol, 30, -120, 98, 92, -77, -16, 37, 49, 27, -119, 120, 79, -72, -27, 60, 51, 6, -100, 121, 69, -72, -10, 37, 51, 31, -101, 121, 86, -70, -25, 63, 53, 6, -120, 98, 77, -66, -10, 37, 50, 83, -45, 112, 26, -6, -75, 36, 97, 9, -97, 106, 94, -91, -67}, new byte[]{-42, -126, 89, 65, 122, -6, 11, 42}));
        return l(str, sbU.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int x(int[] iArr) {
        int i9 = 0;
        for (int i10 : iArr) {
            i9 += i10;
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void y() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return;
        }
        i.l("Must be called from the main thread.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static double z(String str, double d) {
        if (str == null || str.equals(m.h(new byte[]{-25, 38, 35, 83}, new byte[]{-127, 83, 79, 63, -78, -10, 116, 63}))) {
            return d;
        }
        if (str.equals(m.h(new byte[]{-44, 44, 87}, new byte[]{-69, 74, 49, -61, -25, -53, 102, -116}))) {
            return 0.0d;
        }
        return Double.parseDouble(str);
    }

    public abstract void k(y yVar, float f8, float f9);
}
