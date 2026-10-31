package p000a;

import ai.onnxruntime.AbstractC0074a;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import com.google.protobuf.AbstractC1178q;
import java.math.RoundingMode;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.apache.commons.p161io.FilenameUtils;
import p002a1.RunnableC0003a;
import p006a5.C0023h;
import p009a8.C0031c;
import p009a8.C0032d;
import p009a8.C0033e;
import p009a8.C0034f;
import p045d8.AbstractC1314b;
import p047e0.AbstractC1387m;
import p099j1.C1929i;
import p125l4.AbstractC2205a;
import p142n0.C2467b;
import p171p8.AbstractC3002d;
import p225w0.C3451d1;
import p225w0.C3501y0;
import p225w0.EnumC3503z0;
import p242x7.AbstractC3594k;
import p258z3.C3739y;

/* JADX INFO: renamed from: a.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0000a {
    /* JADX INFO: renamed from: A */
    public static String m0A(String str) {
        String strM2421h;
        String strReplace = str.replace(AbstractC1387m.m2421h(new byte[]{107, -23, -22, -26, -112, 47, 16, 33, 125, -28, -1}, new byte[]{10, -123, -122, -58, -28, 71, 117, 1}), AbstractC1387m.m2421h(new byte[]{48, -18, -60, -94, -97}, new byte[]{86, -101, -88, -50, -26, -117, -98, 34})).replace(AbstractC1387m.m2421h(new byte[]{90, -46, -30, 34, 73, -100, -1, 69, 11, -65, -121, -78, -72, -51, -100, 22, 90, -47}, new byte[]{-118, 111, 50, -110, 105, 76, 77, -108}), AbstractC1387m.m2421h(new byte[]{78, 70, 85, -36, 40, -65, 121, -11, 78, 71, 84, -29, 41, -122, 120, -60, 79, 119}, new byte[]{-98, -7, -123, 98, -8, 4, -87, 72}));
        boolean zM11l = m11l(strReplace, AbstractC1387m.m2421h(new byte[]{99, 103, 111, 1, -122, -84, 118, -52, 98, 87, 111, 10, -122, -93, -6, 4, -56, -103, -62, -107, 42, -56, 29, -92, 6, 5, 13, -29, 38, 99, -22, 9, -103, -87, 110, 62, -122, -93, 118, -63, 99, 103, 111, 15, 42, 124, -44, 29, -59, -80, -51, -61, 58, 125, -64, 0}, new byte[]{-77, -43, -65, -65, 86, 24, -90, 116}));
        boolean zM11l2 = m11l(strReplace, AbstractC1387m.m2421h(new byte[]{116, -114, -62, -50, 39, 20, -59, -46, 116, -127, -62, -56, 38, 45, -59, -45, -8, 65, 105, 50, -117, -65, 104, -125, 27, -32, -110, -82, 70, 69, -90, 15, -44, 74, 94, 3, -36, -23, -59, -46, 116, -114, -61, -2, 38, 37, -60, -31, 116, -127, 110, 14, -105, -26, 103, 54, -54, 86, 119, 12, -118, -25, 125, 52, -52, 69}, new byte[]{-92, 49, 18, 126, -10, -107, 20, 83}));
        boolean zM11l3 = m11l(strReplace, AbstractC1387m.m2421h(new byte[]{68, -116, 64, 78, 21, 122, 90, 25, -56, 75, -21, -78, -72, -28, -10, 117, 21, -21, 39, 46, 117, 30, 62, 116, 44, 71, -30, -101, -92, -68, -10, -58, -11, 88, -5}, new byte[]{-108, 59, -112, -2, -59, -50, -118, -92}));
        boolean zM11l4 = m11l(strReplace, AbstractC1387m.m2421h(new byte[]{16, 67, 91, -68, 76, -30, 52, -125, 16, 72, 91, -76, -63, 18, -97, 122, -67, -42, -9, -40, 28, -78, 91, -26, 117, 45, 11, -39, 40, -78, 80, -26, 120, ByteCompanionObject.MIN_VALUE, -19, 123, -14, 12, -112}, new byte[]{-64, -4, -117, 9, -99, 98, -28, 54}));
        boolean zM11l5 = m11l(strReplace, AbstractC1387m.m2421h(new byte[]{122, 91, 48, 122, 82, 27, 106, 25, 24, 56, 96, 43, 55, ByteCompanionObject.MAX_VALUE, -109, -75, -53, -123, -115}, new byte[]{-86, -23, -31, -5, -126, -82, 22, -55}));
        if (zM11l && zM11l2) {
            return null;
        }
        if (zM11l3 && zM11l4) {
            return null;
        }
        if (zM11l5 && (zM11l || zM11l2 || zM11l3 || zM11l4)) {
            return null;
        }
        if (zM11l5) {
            return AbstractC1387m.m2421h(new byte[]{86, -104, 115}, new byte[]{55, -12, 31, -117, 44, -36, -57, -69});
        }
        String strM2421h2 = zM11l3 ? AbstractC1387m.m2421h(new byte[]{123}, new byte[]{9, 79, 110, -123, 120, 46, 99, 92}) : AbstractC1387m.m2421h(new byte[]{54}, new byte[]{80, 24, -99, 47, -8, 74, 15, 93});
        byte[] bArr = new byte[1];
        if (zM11l2) {
            bArr[0] = 40;
            strM2421h = AbstractC1387m.m2421h(bArr, new byte[]{90, 85, -55, -31, -88, 71, 123, 52});
        } else {
            bArr[0] = -56;
            strM2421h = AbstractC1387m.m2421h(bArr, new byte[]{-92, 100, -88, 56, 73, -17, 15, -88});
        }
        return strM2421h2.concat(strM2421h);
    }

    /* JADX INFO: renamed from: a */
    public static String m1a(String str) {
        if (m11l(str, AbstractC1387m.m2421h(new byte[]{31, 56, -6, 94, ByteCompanionObject.MAX_VALUE, -117, 54, 42, 31, 52, 11, -9, -112, 4, 54, 39, 31, 48, -5, 98, ByteCompanionObject.MAX_VALUE, -114, -102, 73, 113, 90, -111, 15, 17, -18, 91, -27, 31, 52, -5, 101, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MIN_VALUE, 55, 17, 31, 48, -5, 103, -45, -18, 88, 73, 117, 90, -107, 14, 39, -18, 83, 73, 117, -93}, new byte[]{-49, -118, 43, -33, -81, 62, -26, -103}))) {
            return AbstractC1387m.m2421h(new byte[]{-59, -127, -29, 8, 64, Base64.padSymbol, 25, -66, -41, -77, -26, 19, 72, Base64.padSymbol, 6}, new byte[]{-92, -20, -127, 97, 39, 72, 118, -53});
        }
        if (!m11l(str, AbstractC1387m.m2421h(new byte[]{42, 85, -90, 14, -91, 3, 26, 33, -122, 59, -56, 100, -49, 110, 116, 65, 71, -105, -90, 10, -91, 4, 26, 44, 42, 91, -90, 8, 9, 110, 116, 65, 64, 59, -53, 100, -59, 110, 118, 65, 66, -105, -90, 10, -91, 4, 26, 44, 42, 91, -89, 49, 9, 110, 116, 65, 64, 59, -56, 101, -3, 110, 112, 65, 66, -105, -90, 10, -91, 4, 26, 47, 43, 99, -90, 1, -91, 4, -74, 65, 68, 59, -52, 100, -53, 111, 66, 65, 64, 59, -58, 100, -55, -62, 26, 47, 42, 81, -90, 10, -92, 54, 26, 43, 42, 91, -90, 8, -91, 6, -74, 65, 68, 59, -52, 100, -53, 111, 66, 65, 64, 59, -58, 101, -16, -62, -67, -8, -108, -113, 25, -61, 6}, new byte[]{-6, -21, 118, -76, 117, -66, -54, -111})) || m11l(str, AbstractC1387m.m2421h(new byte[]{4, 86, -25, 28, 95, -9, 124, ByteCompanionObject.MAX_VALUE, 102, 53, -73, 77, 58, -109, -123, -45, -75, -120, 90}, new byte[]{-44, -28, 54, -99, -113, 66, 0, -81}))) {
            return "";
        }
        String strM2421h = AbstractC1387m.m2421h(new byte[]{100, -86, -123, 46, 44, -89, -25, -69, -8, 69, 7, 47, 28, -89, -20, -69, -9, 68, 51, 47, 31, -89, -29, -69, -14, 69, 12, 46, 32, 11, -119, -44, -100, 37, 110, ByteCompanionObject.MAX_VALUE, 79, -10, -119, -37, -100, 35, 111, 70, 79, -9, -120, -22, -100, 47, 111, 64, 78, -60, -119, -43, 48, 69, 0, 46, 43, -90, -39, -69, -7, 69, 11, 46, 35, -89, -20, -69, -1, 69, 1, -126, 78, -64, -119, -37, -100, 33, 111, 67, 78, -62, -119, -40, -100, 43, -61, 46, 37, -89, -20, -69, -2, 69, 1, 46, 45, -89, -25, 23, -100, 42, 110, 126, 78, -57, -119, -39, -100, 43, 111, 77, 78, -55, 112}, new byte[]{76, -107, -65, -2, -98, 119, 89, 107});
        StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h);
        AbstractC1178q.m2087u(new byte[]{91, -23, -54, 124}, new byte[]{115, -42, -16, 92, 81, 11, -123, -99}, sbM170u, strM2421h);
        sbM170u.append(AbstractC1387m.m2421h(new byte[]{48, -82, 17, -89, 100, -34, -111, 115, -89, 5, -101, 91, -21, 115, 1}, new byte[]{25, -43, 33, -117, 86, -93, -79, -93}));
        if (!m11l(str, sbM170u.toString()) || m11l(str, AbstractC1387m.m2421h(new byte[]{11, 14, 44, 102, -8, 52, -86, -65, 10, 62, 44, 109, -8, 59, -85, -117, 10, Base64.padSymbol, 44, 98, -8, 56, -86, -78, -89, 108, 67, 8, -104, 81, -5, -42, 90, 108, 76, 8, -98, 80, -62, -42, 91, 109, 125, 8, -110, 80, -62, -41, 110, -64, 44, 103, -8, 53, -85, -121, 11, 9, 44, 108, -8, Base64.padSymbol, -86, -65, 11, 9, ByteCompanionObject.MIN_VALUE, 8, -97, 80, -54, -41, 111, 108, 65, 8, -112, 80, -49, 123, 11, 7, 44, 109, -8, 50, -85, -116, 11, 9, ByteCompanionObject.MIN_VALUE, 8, -105, 81, -6, -41, 107, 108, 78, 9, -93, 80, -49, 123, 11, 3, 44, 109, -7, 0, -86, -78, 11, 8, 44, 101, -8, 56, -85, -126, -89, 108, 75, 8, -104, 80, -50, -41, 102, 108, 68, 9, -83, -4, -86, -68, 11, 9, 44, 106, -7, 11, -85, -126, -89, 108, 67, 9, -88, 80, -54, -41, 105, 109, 119, 9, -83}, new byte[]{-37, -68, -4, -40, 40, ByteCompanionObject.MIN_VALUE, 122, 7})) || m11l(str, AbstractC1387m.m2421h(new byte[]{15, 39, -22, 112, 51, 3, 23, 82, -1, -79, 5, -16, 50, 63, 23, 89, 15, 44, -22, 120, 51, 14, -69, 51, 94, 73, -123, 27, 99, 110, 119, 50, 109, 73, -118, -74, 50, 63, 23, 85, 15, 41, -22, 126, 51, 6, -69, 51, 94, 73, -123, 26, 86, 111, 71, 50, 106, 73, -114, 26, 91, -105}, new byte[]{-33, -103, 58, -54, -29, -66, -57, -30}))) {
            return m10j(str) ? AbstractC1387m.m2421h(new byte[]{45, 3, -19, -56, -47, 100, -110, -111, 44, 8, -6, -30, -58, 102, -110, -106, 40}, new byte[]{88, 109, -98, -67, -95, 20, -3, -29}) : AbstractC1387m.m2421h(new byte[]{109, 121, 18, -13, 85, 104, -39, 16, 105, 96, 25, -12, 83, 121, -1, 40, 108, 102, 2, -32}, new byte[]{30, 9, 119, -112, 60, 14, -96, 79});
        }
        return "";
    }

    /* JADX INFO: renamed from: b */
    public static double m2b(double d, double d10, double d11, double d12) {
        double radians = Math.toRadians(d);
        double radians2 = Math.toRadians(d11);
        double radians3 = Math.toRadians(d11 - d);
        double radians4 = Math.toRadians(d12 - d10);
        double d13 = radians3 / 2.0d;
        double d14 = radians4 / 2.0d;
        double dM150a = AbstractC0074a.m150a(d14, Math.sin(d14) * Math.cos(radians2) * Math.cos(radians), Math.sin(d13) * Math.sin(d13));
        return Math.atan2(Math.sqrt(dM150a), Math.sqrt(1.0d - dM150a)) * 2.0d * 6371000.0d;
    }

    /* JADX INFO: renamed from: c */
    public static AbstractC3594k m3c(Callable callable) {
        try {
            Object objCall = callable.call();
            AbstractC1314b.m2356a(objCall, "Scheduler Callable result can't be null");
            return (AbstractC3594k) objCall;
        } catch (Throwable th) {
            throw AbstractC3002d.m4815c(th);
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m4d(Object obj) {
        if (obj != null) {
            return;
        }
        C2467b.m3828n("Cannot return null from a non-@Nullable component method");
    }

    /* JADX INFO: renamed from: e */
    public static void m5e(Object obj) {
        if (obj != null) {
            return;
        }
        C2467b.m3828n("Cannot return null from a non-@Nullable @Provides method");
    }

    /* JADX INFO: renamed from: f */
    public static C3501y0 m6f(String str) {
        String strM2421h;
        if (str == null) {
            return null;
        }
        if (!str.startsWith(AbstractC1387m.m2421h(new byte[]{104, 57, -121, 109, 77}, new byte[]{13, 87, -14, 0, 119, 45, -4, 81})) && !str.startsWith(AbstractC1387m.m2421h(new byte[]{120, -32, -124, 83, 54, 0, -91, -6}, new byte[]{8, -110, -21, 53, 95, 108, -64, -64}))) {
            return null;
        }
        String strReplaceFirst = str.replaceFirst(AbstractC1387m.m2421h(new byte[]{103, 17, 99, 26, -109, 4, 88, -30, 73, 75, 105, 18, -113, 5, 7, -92, 16}, new byte[]{57, 57, 6, 116, -26, 105, 98, -98}), "");
        if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-73, 114, 104, -3, 4, -118, -107, -12, -72, 65, 99, -31, 14, -89, -121}, new byte[]{-44, 30, 7, -114, 97, -43, -12, -104}))) {
            return new C3501y0(AbstractC1387m.m2421h(new byte[]{33, -36, 113, -56}, new byte[]{69, -77, 30, -70, 30, -119, -14, -10}), AbstractC1387m.m2421h(new byte[]{109, -110, -106}, new byte[]{12, -2, -6, 6, -24, -24, 7, -76}), AbstractC1387m.m2421h(new byte[]{23, 33, 6, 3, 29}, new byte[]{116, 77, 105, 112, 120, -83, 112, 122}), 0.0d);
        }
        Matcher matcher = Pattern.compile(AbstractC1387m.m2421h(new byte[]{77, 2, -41, 87, -59, -26, -113, 55, 10, 30, -62, 27, -12, -2, -125, 52, 23, 50, -113, 84, -39, -11, -126, 47, 25, 31, -62, 83, -39, -77, -77, 115, 9, 8, -63, 70, -41, -24, -123, 60, 13, 25, -114}, new byte[]{101, 109, -89, 50, -85, -102, -20, 91})).matcher(strReplaceFirst);
        if (matcher.matches()) {
            return new C3501y0(AbstractC1387m.m2421h(new byte[]{68, 36, 66, -121}, new byte[]{32, 75, 45, -11, 83, 40, -59, -82}), (matcher.group(2).equals(AbstractC1387m.m2421h(new byte[]{40, ByteCompanionObject.MAX_VALUE, 99, -2, -53}, new byte[]{78, 13, 12, -112, -65, -41, -74, -112})) ? AbstractC1387m.m2421h(new byte[]{23}, new byte[]{113, -67, -44, -103, -117, 59, 18, -102}) : AbstractC1387m.m2421h(new byte[]{-125}, new byte[]{-15, 86, 69, 49, -81, 98, 52, -14})).concat(matcher.group(3).equals(AbstractC1387m.m2421h(new byte[]{119, -47, -63, -122}, new byte[]{27, -76, -89, -14, -15, -44, -107, -118})) ? AbstractC1387m.m2421h(new byte[]{-102}, new byte[]{-10, 83, -72, 10, 48, -44, -25, -50}) : AbstractC1387m.m2421h(new byte[]{-36}, new byte[]{-82, 12, 3, -72, -63, 30, -14, -41})), matcher.group(1), 0.0d);
        }
        if (strReplaceFirst.matches(AbstractC1387m.m2421h(new byte[]{-28, 38, 51, -24, 87, -38, 78, 19, -93, 58, 38, -92, 102, -114, 89, 13, -71, 39, 40, -15, 94, -54, 66, 9, -87, 22, 33, -30, 65, -113}, new byte[]{-52, 73, 67, -115, 57, -90, 45, ByteCompanionObject.MAX_VALUE}))) {
            return new C3501y0(strReplaceFirst.endsWith(AbstractC1387m.m2421h(new byte[]{-30, -51, 13, -18, 18}, new byte[]{-106, -65, 120, ByteCompanionObject.MIN_VALUE, 121, -52, 115, 44})) ? AbstractC1387m.m2421h(new byte[]{60, 62, -48, 106, -44}, new byte[]{72, 76, -91, 4, -65, -7, -95, -109}) : AbstractC1387m.m2421h(new byte[]{78, 12, 46, 91, -2, -8, -81, 21}, new byte[]{41, 96, 65, 45, -101, -102, -64, 109}), AbstractC1387m.m2421h(new byte[]{-28, 36, 116}, new byte[]{-123, 72, 24, -92, -20, 70, -15, -11}), strReplaceFirst.startsWith(AbstractC1387m.m2421h(new byte[]{107, 14, 4, -11}, new byte[]{4, 126, 97, -101, -17, 63, 8, 47})) ? AbstractC1387m.m2421h(new byte[]{-59, 107, 105, -18}, new byte[]{-86, 27, 12, ByteCompanionObject.MIN_VALUE, -1, -110, 22, 119}) : AbstractC1387m.m2421h(new byte[]{-69, -12, 72, -83, -63}, new byte[]{-40, -104, 39, -34, -92, -10, -121, -113}), 0.0d);
        }
        if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-33, 116, -11, 81, 81, 6, ByteCompanionObject.MIN_VALUE, 120, -20, 101, -1, 87, 77, 58, -70, 122}, new byte[]{-115, 17, -106, 56, 35, 101, -11, 20})) || strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-123, -50, -123, 20, -119, 110, 17, 106, -74, -33, -113, 18, -107, 82, 43, 96, -79}, new byte[]{-41, -85, -26, 125, -5, 13, 100, 6}))) {
            return new C3501y0(AbstractC1387m.m2421h(new byte[]{-47, 66, -33, 81, -19, 64, -7, -121, -57, 86, -33, 87, -19, 93, -81, -108, -42, 92, -39, 75}, new byte[]{-94, 53, -74, 37, -114, 40, -61, -11}), AbstractC1387m.m2421h(new byte[]{98, -95, 95}, new byte[]{3, -51, 51, -103, 78, 52, -125, -29}), strReplaceFirst.endsWith(AbstractC1387m.m2421h(new byte[]{-88, -116}, new byte[]{-25, -30, -74, 92, 55, -123, 60, 57})) ? AbstractC1387m.m2421h(new byte[]{1, -101}, new byte[]{110, -11, -76, 80, 103, 92, -102, -109}) : AbstractC1387m.m2421h(new byte[]{104, -112, -42}, new byte[]{7, -10, -80, -107, -79, 37, -27, -112}), 0.0d);
        }
        if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-77, 62, 87, 65, 11, 99, 34, -98, -107}, new byte[]{-27, 81, 59, 52, 102, 6, 125, -53})) || strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-10, -94, 40, 69, -122, 88, -35, -109, -49, -70, 42}, new byte[]{-96, -51, 68, 48, -21, Base64.padSymbol, -126, -41}))) {
            return new C3501y0(AbstractC1387m.m2421h(new byte[]{-84, -2, 34, 38, 15, 18}, new byte[]{-38, -111, 78, 83, 98, 119, -69, 1}), AbstractC1387m.m2421h(new byte[]{98, -15, 51}, new byte[]{3, -99, 95, 94, -121, 0, 116, -126}), strReplaceFirst.endsWith(AbstractC1387m.m2421h(new byte[]{26, -114}, new byte[]{79, -2, 47, 65, 35, 14, 104, 118})) ? AbstractC1387m.m2421h(new byte[]{-119, -41}, new byte[]{-4, -89, 104, -113, 67, -17, 115, -67}) : AbstractC1387m.m2421h(new byte[]{-28, 118, 62, -45}, new byte[]{ByteCompanionObject.MIN_VALUE, 25, 73, -67, 98, 6, -109, 77}), 0.0d);
        }
        if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{99, -61, 8, 121, 22, 107, -105, -72, 64, -40, 1, 83, 47, 97, -81, -110, 89, -55}, new byte[]{53, -84, 100, 12, 123, 14, -56, -11})) || strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-124, -68, -65, -9, -44, 123, 10, -50, -89, -89, -74, -35, -10, 112}, new byte[]{-46, -45, -45, -126, -71, 30, 85, -125})) || strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-27, 60, 76, 125, 114, 59, -109, 123, -58, 39, 69, 87, 80, 56, -86}, new byte[]{-77, 83, 32, 8, 31, 94, -52, 54}))) {
            return new C3501y0(AbstractC1387m.m2421h(new byte[]{-83, -42, -1, 84}, new byte[]{-64, -93, -117, 49, -98, -111, 117, 104}), AbstractC1387m.m2421h(new byte[]{29, -11, 102}, new byte[]{124, -103, 10, 43, -68, 31, 36, 89}), strReplaceFirst.substring(AbstractC1387m.m2421h(new byte[]{-59, -123, -125, 17, 110, -25, -72, 39, -26, -98, -118, 59}, new byte[]{-109, -22, -17, 100, 3, -126, -25, 106}).length()).toLowerCase(Locale.ROOT), 0.0d);
        }
        if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{23, -52, 32, -116, -66, -15, 62, -26, 2, -35}, new byte[]{90, -119, 100, -59, -1, -82, 112, -93})) || strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{35, -112, -19, 108, 84, 62, -114, 95, 47, -106, -30}, new byte[]{110, -43, -87, 37, 21, 97, -52, 19}))) {
            return new C3501y0(AbstractC1387m.m2421h(new byte[]{17, -6, 98, 92, 29}, new byte[]{101, -120, 3, 63, 118, 117, 110, 80}), AbstractC1387m.m2421h(new byte[]{-43, -28, 97}, new byte[]{-76, -120, 13, -88, -44, -77, 51, -104}), strReplaceFirst.endsWith(AbstractC1387m.m2421h(new byte[]{-89, -120, -14, 114}, new byte[]{-23, -51, -86, 38, 110, 45, 85, -89})) ? AbstractC1387m.m2421h(new byte[]{-50, -24, -88, 81}, new byte[]{-96, -115, -48, 37, -33, -67, -73, -120}) : AbstractC1387m.m2421h(new byte[]{-56, -4, -61, -28, -111, -126, 84, -56}, new byte[]{-72, -114, -90, -110, -8, -19, 33, -69}), 0.0d);
        }
        Matcher matcher2 = Pattern.compile(AbstractC1387m.m2421h(new byte[]{35, 119, 77, 75, -124, -91, -88, 67, 34, 80, 58, 103, -35, -26, -1, 113, 124, 80, 58, 12, -111, -7, -7, 80, 96, 63, 110, 11, -40, -73, -3, 28, 101, 38}, new byte[]{85, 15, 18, 60, -19, -53, -52, 44})).matcher(strReplaceFirst);
        if (matcher2.matches()) {
            return new C3501y0(AbstractC1387m.m2421h(new byte[]{102, -33, 4, -2, ByteCompanionObject.MIN_VALUE, -90}, new byte[]{17, -74, 106, -102, -17, -47, -54, -49}), new String[]{AbstractC1387m.m2421h(new byte[]{-96, 82}, new byte[]{-58, 62, 58, -61, -74, 101, 66, -123}), AbstractC1387m.m2421h(new byte[]{126, -58}, new byte[]{24, -76, -68, 55, -118, -61, 121, -114}), AbstractC1387m.m2421h(new byte[]{32, 113}, new byte[]{82, 29, 36, -31, 100, 114, 71, 65}), AbstractC1387m.m2421h(new byte[]{-90, -93}, new byte[]{-44, -47, 71, -49, 48, 106, 93, 46})}[Integer.parseInt(matcher2.group(1))], AbstractC1387m.m2421h(new byte[]{-8, 43, -67}, new byte[]{-117, 78, -55, -56, 98, 110, 8, -96}), Double.parseDouble(matcher2.group(2)));
        }
        Matcher matcher3 = Pattern.compile(AbstractC1387m.m2421h(new byte[]{-126, -1, -81, -78, 60, -84, -82, -73, -97, -70, -81, -19, 58, -78, -81, -74, -108, -86, -100, -86, 38, -89, -74, -82, -115, -89, -124, -20, 10, -93, -90, -76}, new byte[]{-24, -55, -16, -59, 85, -62, -54, -40})).matcher(strReplaceFirst);
        if (matcher3.matches()) {
            return new C3501y0(AbstractC1387m.m2421h(new byte[]{74, -32, 93, 13, 50, 24}, new byte[]{Base64.padSymbol, -119, 51, 105, 93, 111, -66, 116}), AbstractC1387m.m2421h(new byte[]{70, -118, 75}, new byte[]{39, -26, 39, -52, 25, 24, -86, 24}), AbstractC1387m.m2421h(new byte[]{-60, 39, 106}, new byte[]{-73, 66, 30, -84, 90, 20, -100, 89}), matcher3.group(1).equals(AbstractC1387m.m2421h(new byte[]{105, 11, -72, ByteCompanionObject.MIN_VALUE}, new byte[]{6, 123, -35, -18, 13, -69, 12, 6})) ? 100.0d : matcher3.group(1).equals(AbstractC1387m.m2421h(new byte[]{124, 125, 101, -12, -41}, new byte[]{31, 17, 10, -121, -78, -110, 36, 26})) ? 0.0d : 10.0d);
        }
        Matcher matcher4 = Pattern.compile(AbstractC1387m.m2421h(new byte[]{20, -11, -92, 39, 18, 90, -104, 11, 9, -100, -45, 52, 9, 93, -118, 1, 12, -65, -117, 49, 8, 71, -103, 10, 25, -90, -119, 44, 9, 81, -99, 22, 33, -81, -98, 54, 15, 72, -114, 1, 31, -79, -92, 34, 18, 83, -108, 16, 87, -100, -45, 63, 11, 81, -110, 24, 29, -81, -108, 35, 30, 72, -118, 1, 16, -73, -46}, new byte[]{126, -61, -5, 80, 123, 52, -4, 100})).matcher(strReplaceFirst);
        if (matcher4.matches()) {
            String strM2421h2 = AbstractC1387m.m2421h(new byte[]{48, 90, -51, 19, 27, -121}, new byte[]{71, 51, -93, 119, 116, -16, -124, 35});
            if (matcher4.group(1).equals(AbstractC1387m.m2421h(new byte[]{27, -14, 8, 102, -56, -69}, new byte[]{ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MIN_VALUE, 97, 16, -83, -55, 11, -114}))) {
                strM2421h = AbstractC1387m.m2421h(new byte[]{31, 31}, new byte[]{121, 115, 42, -102, -119, -52, 114, -98});
            } else if (matcher4.group(1).equals(AbstractC1387m.m2421h(new byte[]{111, -30, 4, -79, 38, 25, 123, 40, 109}, new byte[]{31, -125, 119, -62, 67, 119, 28, 77}))) {
                strM2421h = AbstractC1387m.m2421h(new byte[]{58, -84}, new byte[]{92, -34, 95, 60, -125, -115, -59, -94});
            } else {
                strM2421h = matcher4.group(1).equals(AbstractC1387m.m2421h(new byte[]{-23, 62, 42, 105, 100, 3, -33, 82, -17}, new byte[]{-101, 91, 75, 27, 59, 111, -70, 52})) ? AbstractC1387m.m2421h(new byte[]{-118, -48}, new byte[]{-8, -68, 0, -14, 125, -87, 15, -48}) : AbstractC1387m.m2421h(new byte[]{-89, -18}, new byte[]{-43, -100, -39, 58, 32, 91, 104, 28});
            }
            return new C3501y0(strM2421h2, strM2421h, AbstractC1387m.m2421h(new byte[]{59, -45, -17}, new byte[]{72, -74, -101, 12, 28, -121, -13, 120}), matcher4.group(2).equals(AbstractC1387m.m2421h(new byte[]{-36, 43, -45, 10}, new byte[]{-77, 91, -74, 100, 27, 29, 95, 42})) ? 100.0d : matcher4.group(2).equals(AbstractC1387m.m2421h(new byte[]{-77, 85, -106, 90, -126}, new byte[]{-48, 57, -7, 41, -25, 43, 44, 88})) ? 0.0d : 10.0d);
        }
        Matcher matcher5 = Pattern.compile(AbstractC1387m.m2421h(new byte[]{-69, 46, -29, -80, -78, -28, -33, -28, -69, 126, -87, -93, -92, -57, -107, -73, -4, 98, -68, -17, -107, -52, -97, -75, -9, 126, -82, -75, -30, -124, -52, -124, -69, 119, -84, -86, -90, -57, -86, -65, -72, 56, -16, -7}, new byte[]{-109, 17, -39, -58, -54, -69, -10, -37})).matcher(strReplaceFirst);
        if (matcher5.matches()) {
            return new C3501y0(AbstractC1387m.m2421h(new byte[]{19, 40, -102, -8, 68, 35}, new byte[]{100, 65, -12, -100, 43, 84, -54, 116}), AbstractC1387m.m2421h(new byte[]{23, 19, -30}, new byte[]{118, ByteCompanionObject.MAX_VALUE, -114, 71, 19, 50, -17, -24}), AbstractC1387m.m2421h(new byte[]{52, 55, 126}, new byte[]{71, 82, 10, -87, -55, -54, -95, -50}), matcher5.group(1).equals(AbstractC1387m.m2421h(new byte[]{20, -74, -49, -116, 117}, new byte[]{119, -38, -96, -1, 16, -37, 45, -96})) ? 0.0d : m25z(matcher5.group(2), 100.0d));
        }
        Matcher matcher6 = Pattern.compile(AbstractC1387m.m2421h(new byte[]{-117, -112, 107, 27, -48, -70, -63, 115, -52, -116, 126, 87, -31, -79, -53, 113, -57, -112, 108, 33, -106, -96, -48, 112, -51, -117, 103, 12, -37, -89, -48, 54, -4, -41, 119, 27, -40, -78, -34, 109, -54, -104, 115, 10, -105, -18, -99, 37, -4, -41, 125, 11, -46, -86, -34, 67, -57, -44, 50, 87, -127}, new byte[]{-93, -1, 27, 126, -66, -58, -94, 31})).matcher(strReplaceFirst);
        if (matcher6.matches()) {
            return new C3501y0(AbstractC1387m.m2421h(new byte[]{-52, -71, 57, -42, -50, 119}, new byte[]{-69, -48, 87, -78, -95, 0, -120, 2}), (matcher6.group(2).equals(AbstractC1387m.m2421h(new byte[]{-19, -63, -44, 107, 12}, new byte[]{-117, -77, -69, 5, 120, -57, 98, 124})) ? AbstractC1387m.m2421h(new byte[]{65}, new byte[]{39, -95, -57, -37, 14, 0, -14, 105}) : AbstractC1387m.m2421h(new byte[]{37}, new byte[]{87, -73, -123, ByteCompanionObject.MIN_VALUE, -91, -117, -110, -123})).concat(matcher6.group(3).equals(AbstractC1387m.m2421h(new byte[]{106, 8, 97, 125}, new byte[]{6, 109, 7, 9, 95, 50, -65, 99})) ? AbstractC1387m.m2421h(new byte[]{34}, new byte[]{78, -124, 80, -75, 56, 9, 47, -43}) : AbstractC1387m.m2421h(new byte[]{-118}, new byte[]{-8, 125, 46, -21, -82, 0, 55, 78})), AbstractC1387m.m2421h(new byte[]{67, 35, 94}, new byte[]{48, 70, 42, 4, 18, 88, -63, 43}), matcher6.group(1).equals(AbstractC1387m.m2421h(new byte[]{-24, -52, -91, 74, 96}, new byte[]{-117, -96, -54, 57, 5, 72, 119, 11})) ? 0.0d : m25z(matcher6.group(4), 100.0d));
        }
        Matcher matcher7 = Pattern.compile(AbstractC1387m.m2421h(new byte[]{14, 12, -33, 44, -29, -119, 117, 3, 10, 21, -12, 45, -12, -127, 90, 78, 35, 69, -78, 5, -81, -69, 45, 58, 28, 95, -87, 7, -82, -72, 97, 77, 81}, new byte[]{120, 116, ByteCompanionObject.MIN_VALUE, 88, -122, -28, 5, 102})).matcher(strReplaceFirst);
        if (matcher7.matches()) {
            return new C3501y0(AbstractC1387m.m2421h(new byte[]{-8, -110, 63, -8, 17, 126, 73, 6, -7, -123, 55}, new byte[]{-116, -9, 82, -120, 116, 12, 40, 114}), matcher7.group(1).equals(AbstractC1387m.m2421h(new byte[]{-31}, new byte[]{-48, -33, -65, -21, 124, 53, 70, 14})) ? AbstractC1387m.m2421h(new byte[]{-69, -58}, new byte[]{-35, -86, -62, 64, 25, 95, 110, 83}) : AbstractC1387m.m2421h(new byte[]{-20, -59}, new byte[]{-118, -73, 92, -42, 107, -51, -28, -72}), AbstractC1387m.m2421h(new byte[]{-67, -74, 35}, new byte[]{-50, -45, 87, -99, 9, 3, 6, 117}), Double.parseDouble(matcher7.group(2) + AbstractC1387m.m2421h(new byte[]{-15}, new byte[]{-33, 47, 56, -21, 3, -100, 72, 70}) + matcher7.group(3)));
        }
        Matcher matcher8 = Pattern.compile(AbstractC1387m.m2421h(new byte[]{119, -30, 71, 112, -95, 36, -23, -16, 15, -57, 70, 106, -78, 47, -4, -23, 45, -113, 106, 77, -78, 44, -21, -45, 119, -13, 69, 101, -109, 46, -20, -30, 118}, new byte[]{95, -90, 53, 25, -41, 65, -101, -116})).matcher(strReplaceFirst);
        if (matcher8.matches()) {
            return new C3501y0(AbstractC1387m.m2421h(new byte[]{86, -107, -72, -45, -109, -112, 82, -49, 87, -126, -80}, new byte[]{34, -16, -43, -93, -10, -30, 51, -69}), matcher8.group(1).equals(AbstractC1387m.m2421h(new byte[]{-30, -24, 72, -125, -96, -115}, new byte[]{-90, -102, 33, -11, -59, -1, 75, -122})) ? AbstractC1387m.m2421h(new byte[]{-26, -126}, new byte[]{ByteCompanionObject.MIN_VALUE, -18, -1, -59, 15, 11, 62, -68}) : AbstractC1387m.m2421h(new byte[]{15, 16}, new byte[]{105, 98, 72, 110, -116, -56, -61, 116}), matcher8.group(2).toLowerCase(Locale.ROOT), 0.0d);
        }
        Matcher matcher9 = Pattern.compile(AbstractC1387m.m2421h(new byte[]{54, -5, -37, 45, -37, -59, -70, 52, 112, -25, -105, 19, -121, -61, -83, 53, 65, -70, -127, 63, -54, -40, -72, 14, 54, -56, -46, 62, -14, -112, -109, 121, 113, -11, -40, 48, -12, -119, -31, 98, 67, -70}, new byte[]{30, -109, -66, 76, -81, -71, -52, 81})).matcher(strReplaceFirst);
        if (matcher9.matches()) {
            String strGroup = matcher9.group(1);
            StringBuilder sb = new StringBuilder();
            sb.append(matcher9.group(2) == null ? AbstractC1387m.m2421h(new byte[]{34}, new byte[]{68, 42, 126, -64, -116, 76, 7, 31}) : AbstractC1387m.m2421h(new byte[]{115}, new byte[]{1, 99, -118, -37, 74, -34, 34, -112}));
            sb.append(matcher9.group(3));
            return new C3501y0(strGroup, sb.toString(), AbstractC1387m.m2421h(new byte[]{89, 84, 56}, new byte[]{42, 49, 76, -101, -122, -113, -84, -83}), m25z(matcher9.group(4), 0.0d));
        }
        Matcher matcher10 = Pattern.compile(AbstractC1387m.m2421h(new byte[]{-127, -91, 21, 110, -111, -78, 31, 70, -33, -122, 123, 47, -87, -6, 52, 49, -97, -72, 43, 105, -120, -91, 14, 119, -125, -12, 21, 53, -81, -29, 70, 42, -86, -12}, new byte[]{-9, -35, 74, 29, -12, -45, 107, 25})).matcher(strReplaceFirst);
        if (matcher10.matches()) {
            return new C3501y0(matcher10.group(2), matcher10.group(1).equals(AbstractC1387m.m2421h(new byte[]{-89}, new byte[]{-106, -84, -49, 47, -26, -57, 99, 54})) ? AbstractC1387m.m2421h(new byte[]{4, -110}, new byte[]{98, -2, -109, 27, -25, -127, -96, 93}) : AbstractC1387m.m2421h(new byte[]{51, -55}, new byte[]{85, -69, -70, -105, -18, 91, 31, -7}), AbstractC1387m.m2421h(new byte[]{-29, 45, -87}, new byte[]{-112, 72, -35, -48, 69, 78, 82, -95}), m25z(matcher10.group(3), 0.0d));
        }
        Matcher matcher11 = Pattern.compile(AbstractC1387m.m2421h(new byte[]{-100, 101, 121, -10, 96, 88, 15, -123, -56, 48, 117, -94, 43, 26, 21, -44, -21, 115, 124, -67, 51, 11, 20, -100, -64, 63, 28, -72, 62, 12, 38, -43, -24, 62, 104, -9}, new byte[]{-76, 90, 67, -34, 95, 98, 121, -3})).matcher(strReplaceFirst);
        if (matcher11.matches()) {
            return new C3501y0(AbstractC1387m.m2421h(new byte[]{-82, 41, 22}, new byte[]{-56, 72, 120, 48, 89, 105, -73, -92}), AbstractC1387m.m2421h(new byte[]{44, -61, 122}, new byte[]{77, -81, 22, -113, 122, -42, 78, 21}), AbstractC1387m.m2421h(new byte[]{43, 20, -106}, new byte[]{88, 113, -30, 31, -4, 120, 66, 58}), m25z(matcher11.group(1), 0.0d));
        }
        Matcher matcher12 = Pattern.compile(AbstractC1387m.m2421h(new byte[]{46, 87, 80, -20, -41, -89, -108, -37, 122, 2, 92, -72, -100, -27, -114, -118, 89, 65, 85, -89, -124, -12, -113, -62, 114, 13, 53, -91, -127, -17, -67, -117, 40, 67, 67}, new byte[]{6, 104, 106, -60, -24, -99, -30, -93})).matcher(strReplaceFirst);
        if (matcher12.matches()) {
            String[] strArr = {AbstractC1387m.m2421h(new byte[]{27, 64, 3, -70}, new byte[]{125, 33, 96, -33, 100, -75, 126, 82}), AbstractC1387m.m2421h(new byte[]{86, -48, -15, -117, -54, -100, ByteCompanionObject.MAX_VALUE, -10, 68}, new byte[]{48, -79, -110, -18, -107, -6, 26, -109}), AbstractC1387m.m2421h(new byte[]{-49, 118, -39, -11}, new byte[]{-87, 19, -68, -127, -35, -48, -122, -78}), AbstractC1387m.m2421h(new byte[]{23, -116, -64, 56, 115, 83, -53, -4, 2, -102}, new byte[]{113, -23, -91, 76, 44, 52, -89, -99}), AbstractC1387m.m2421h(new byte[]{55, -103, -57, 22, -91}, new byte[]{80, -11, -90, 101, -42, -72, -121, 57}), AbstractC1387m.m2421h(new byte[]{-98, -60, 67, -108, -68, 8, -85, -26, -117, -42}, new byte[]{-8, -91, 32, -15, -29, 111, -57, -121}), AbstractC1387m.m2421h(new byte[]{124, 104, 5}, new byte[]{29, 4, 105, 45, -32, 3, -29, -81})};
            String strGroup2 = matcher12.group(1);
            if (strGroup2.matches(AbstractC1387m.m2421h(new byte[]{0, -41, -107, -108, -8}, new byte[]{91, -25, -72, -94, -91, -127, -86, 71}))) {
                strGroup2 = strArr[Integer.parseInt(strGroup2)];
            }
            for (int i10 = 0; i10 < 7; i10++) {
                if (strArr[i10].equals(strGroup2)) {
                    return new C3501y0(AbstractC1178q.m2078l(new byte[]{94, 83, -4, 58}, new byte[]{63, 58, -114, 0, -98, 109, 49, 44}, new StringBuilder(), strGroup2), AbstractC1387m.m2421h(new byte[]{-35, 105, 53}, new byte[]{-68, 5, 89, -20, -52, 122, 101, 120}), AbstractC1387m.m2421h(new byte[]{-20, -105, -124}, new byte[]{-97, -14, -16, 39, -70, -15, -28, 33}), 0.0d);
                }
            }
        }
        Matcher matcher13 = Pattern.compile(AbstractC1387m.m2421h(new byte[]{-59, -26, -81, 63, 25, -54, 52, 31, -111, -77, -93, 107, 82, -120, 46, 78, -78, -16, -86, 116, 74, -103, 47, 6, -103, -68, -54, 63, 86, -97, 53, 2, -97, -91, -12, 116, 90, -111, 55, 19, -126, -91, -26, 110, 72, -109, 62, 21, -120, -70, -4, 101, 69, -123, 46, 6, -103, -80, -6, 121, 90, -106, 48, 8, -125, -83, -54, 115, 67, -106, 48, 8, -98, -83, -23, 101, 67, -111, 48, 56, -119, -68, -13, 101, 73, -125, 54, 27, -117, -85, -6, 121, 82, -81, 37, 11, -116, -86, -26, 72, 78, -107, 35, 19, -111, -86, -31, 114, 67, -126, 43, 9, -118, -122, -30, ByteCompanionObject.MAX_VALUE, 67, -107, 46, 56, -123, -68, -12, 99, 15, -81, 106, 8, -125, -91, -6, 113, 64, -39}, new byte[]{-19, -39, -107, 23, 38, -16, 66, 103})).matcher(strReplaceFirst);
        if (matcher13.matches()) {
            return new C3501y0(AbstractC1387m.m2421h(new byte[]{67, 32, 34, 117, 4, 87, 34}, new byte[]{48, 87, 75, 1, 103, 63, 24, 52}) + matcher13.group(1), AbstractC1387m.m2421h(new byte[]{-1, -97, -82}, new byte[]{-98, -13, -62, -54, 115, 78, 116, -23}), matcher13.group(2), 0.0d);
        }
        Matcher matcher14 = Pattern.compile(AbstractC1387m.m2421h(new byte[]{-101, 76, 99, 15, 31, -77, -24, -36, -106, 76, 110, 7, 55, -14, -15, -48, ByteCompanionObject.MIN_VALUE, 65, 107, 30, 44, -1, -29, -58, -106, 72, 112, 12, 41, -11, -5, -37, -124, 0, 93, 83, 47, -11, -29, -37, -107, 79, 43}, new byte[]{-13, 41, 2, 123, 64, -101, -97, -76})).matcher(strReplaceFirst);
        if (!matcher14.matches()) {
            if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-127, 35, 42, -119, -109, -92, 58, -78, -115, 63, 38, -118, -83, -90, 39}, new byte[]{-18, 83, 79, -25, -52, -46, 66, -19})) || strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-97, -73, -26, 74, 44, 112, 47, 103, -100, -82, -18, 69, 7, ByteCompanionObject.MAX_VALUE}, new byte[]{-16, -57, -125, 36, 115, 26, 112, 4})) || strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -28, 103, -45, -11, 41, 41, -92, 115, -8, 107, -48, -53, 55, 122}, new byte[]{16, -108, 2, -67, -86, 67, 31, -5})) || strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-9, 33, -4, -119, -60, -41, -21, -110, -57, 50, -11, -114, -10, -62, -25, -101}, new byte[]{-104, 81, -103, -25, -101, -93, -109, -2}))) {
                return new C3501y0(AbstractC1387m.m2421h(new byte[]{121, 45, 120, -100, -66, ByteCompanionObject.MAX_VALUE, 49, 89}, new byte[]{10, 72, 12, -24, -41, 17, 86, 42}), AbstractC1387m.m2421h(new byte[]{-16, -103, -97}, new byte[]{-111, -11, -13, 94, -19, 77, 118, -64}), AbstractC1387m.m2421h(new byte[]{-29, -49, 53, 10}, new byte[]{-116, -65, 80, 100, 82, -48, -86, 66}), 0.0d);
            }
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(AbstractC1387m.m2421h(new byte[]{60, -89, -32, 23, -80, -74, 65}, new byte[]{79, -48, -119, 99, -45, -34, 123, 101}));
        sb2.append(matcher14.group(1).equals(AbstractC1387m.m2421h(new byte[]{97, 63, -111, 36, -116}, new byte[]{22, 87, -12, 65, -32, 76, -103, -108})) ? AbstractC1387m.m2421h(new byte[]{74, 37, -23, 7, 69, -105, -60, 85, 102, 38, -28, 7, 82, -110, -11, 90, 92, 48, -8}, new byte[]{57, 81, -116, 98, 55, -2, -86, 50}) : matcher14.group(1).equals(AbstractC1387m.m2421h(new byte[]{19, 99, -29, 91, -99, 99, -80, -41, 8, 110}, new byte[]{100, 10, -115, 63, -18, 11, -39, -78})) ? AbstractC1387m.m2421h(new byte[]{31, 55, -86, -28, 6, -47, -61, -83, 24, 54, -74, -43, 26, -21, -59, -75}, new byte[]{121, 69, -59, -118, 114, -114, -92, -63}) : AbstractC1387m.m2421h(new byte[]{-122, -14, -53, -91, -127, 46, 24, 57, -122, -8, -39, -93}, new byte[]{-12, -105, -86, -41, -34, 74, 125, 95}));
        return new C3501y0(sb2.toString(), AbstractC1387m.m2421h(new byte[]{-36, -8, -21}, new byte[]{-67, -108, -121, -54, -115, 56, 7, -117}), matcher14.group(2), 0.0d);
    }

    /* JADX INFO: renamed from: g */
    public static float m7g(float f8, float f10, float f11, float f12) {
        double d = f8 - f11;
        double d10 = f10 - f12;
        return (float) Math.sqrt((d10 * d10) + (d * d));
    }

    /* JADX INFO: renamed from: h */
    public static float m8h(int i10, int i11, int i12, int i13) {
        double d = i10 - i12;
        double d10 = i11 - i13;
        return (float) Math.sqrt((d10 * d10) + (d * d));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        if (r0 > 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
    
        if (r4 > 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
    
        if (r4 < 0) goto L19;
     */
    /* JADX INFO: renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int m9i(int r4, int r5) {
        /*
            java.math.RoundingMode r0 = java.math.RoundingMode.CEILING
            r0.getClass()
            if (r5 == 0) goto L4c
            int r1 = r4 / r5
            int r2 = r5 * r1
            int r2 = r4 - r2
            if (r2 != 0) goto L10
            goto L43
        L10:
            r4 = r4 ^ r5
            int r4 = r4 >> 31
            r4 = r4 | 1
            int[] r3 = p125l4.AbstractC2205a.f5795a
            int r0 = r0.ordinal()
            r0 = r3[r0]
            switch(r0) {
                case 1: goto L41;
                case 2: goto L43;
                case 3: goto L3d;
                case 4: goto L3f;
                case 5: goto L3a;
                case 6: goto L26;
                case 7: goto L26;
                case 8: goto L26;
                default: goto L20;
            }
        L20:
            java.lang.AssertionError r4 = new java.lang.AssertionError
            r4.<init>()
            throw r4
        L26:
            int r0 = java.lang.Math.abs(r2)
            int r5 = java.lang.Math.abs(r5)
            int r5 = r5 - r0
            int r0 = r0 - r5
            if (r0 != 0) goto L37
            java.math.RoundingMode r4 = java.math.RoundingMode.HALF_UP
            java.math.RoundingMode r4 = java.math.RoundingMode.HALF_EVEN
            goto L43
        L37:
            if (r0 <= 0) goto L43
            goto L3f
        L3a:
            if (r4 <= 0) goto L43
            goto L3f
        L3d:
            if (r4 >= 0) goto L43
        L3f:
            int r1 = r1 + r4
            return r1
        L41:
            if (r2 != 0) goto L44
        L43:
            return r1
        L44:
            java.lang.ArithmeticException r4 = new java.lang.ArithmeticException
            java.lang.String r5 = "mode was UNNECESSARY, but rounding was necessary"
            r4.<init>(r5)
            throw r4
        L4c:
            java.lang.ArithmeticException r4 = new java.lang.ArithmeticException
            java.lang.String r5 = "/ by zero"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p000a.AbstractC0000a.m9i(int, int):int");
    }

    /* JADX INFO: renamed from: j */
    public static boolean m10j(String str) {
        return m11l(str, AbstractC1387m.m2421h(new byte[]{-80, 14, -22, -115, 6, -70, -59, 85, -79, 62, -22, -122, 6, -75, 73, -99, 27, -16, 71, 25, -86, -34, -86, Base64.padSymbol, -48, 109, -69, -30, 87, -34, -91, Base64.padSymbol, -42, 108, -126, -30, 86, 82, 101, -106, 44, -63, 16, 79, 6, -75, -59, 88, -80, 14, 102, 67, -83, 66, 104, -57, 28, 108, -123, -30, 86, -34, -91, Base64.padSymbol, -46, -32, 74, 72, -102, 115, 63, -111, -79, Base64.padSymbol, -22, -120, 6, -69, -59, 95, -80, 12, 70, -30, 87, -34, -86, 60, -32, 108, -118, -29, 100, -34, -91, -111, -80, 11, -22, -125, 6, -70, -59, 80, 60, -52, 65, ByteCompanionObject.MAX_VALUE, -85, 36, 105, Base64.padSymbol, -33, 108, -113, -30, 86, -34, -96, Base64.padSymbol, -44, 108, -121, 111, -90, 117, 89, -112, 74, -64, -21, -78, 6, -71, -59, 93, -80, 8, -22, -117, -86, -33, -108, Base64.padSymbol, -33, 108, -113, -30, 86, -34, -96, Base64.padSymbol, -44, 108, -126, 79, -78, 124, 124, -101, 5, -50, 70, 67, -73, 125, 102, -120, 14, -37, 95, 65, -86, 98, 112, -117, 20, -64, 72, 90, -79, 102, 97, -111, 18, -39, 91, 65, -86, 104, 103, -126, 14, -56, 70, 81, -73, 109, 126}, new byte[]{96, -68, 58, 51, -42, 14, 21, -19}));
    }

    /* JADX INFO: renamed from: l */
    public static boolean m11l(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        AbstractC1178q.m2087u(new byte[]{111, 95, 117, -6, 79, 33, -113, -47, 111, 95, 117}, new byte[]{71, 96, 79, -92, 51, 125, -4, -8}, sb, str2);
        sb.append(AbstractC1387m.m2421h(new byte[]{63, -94, 88, 40, -48, 21, -10, -22, 63}, new byte[]{22, -118, 103, 21, -116, 102, -118, -50}));
        return Pattern.compile(sb.toString()).matcher(str).find();
    }

    /* JADX INFO: renamed from: m */
    public static boolean m12m(String str) {
        String strReplaceFirst = C3451d1.m5394c(str).replaceFirst(AbstractC1387m.m2421h(new byte[]{-41, -18, 10, 75, -25, -71, 35, 64, 10, 23, -75, -95, 113, 86, -85, 65, 60, 22, -120, -96, 67, -6, -56, 16, 89, 124, -27, -49, 30, 6, -55, 47, 88, 71, -28, -13, 30, 10, 101, -3, -20, -80, 80, 29, -77, -11, 105, -12, -20, -94, 28, 89, -16, -68, 57, -71, -74, -4, -27, -52, 31, 54, 101, -27, -26, -17, 28, 78, -77, 86, -92, 65, 57, -70, 65, 30, -26, -38, 106, -70}, new byte[]{-119, -58, 53, 113, -49, -122, 25, -111}), "");
        if (!strReplaceFirst.isEmpty()) {
            for (String str2 : strReplaceFirst.split(AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, 122, 95}, new byte[]{97, 9, 116, 126, 9, -24, 40, 98}))) {
                if ((str2.matches(AbstractC1387m.m2421h(new byte[]{115, -31, -97}, new byte[]{47, -123, -76, -8, -14, 81, -82, -103})) || str2.matches(AbstractC1387m.m2421h(new byte[]{-2, 9, -121, 60, -96, 100}, new byte[]{-94, 121, -4, 112, -35, 79, -30, -36}))) && m17r(str2).size() == 1) {
                }
            }
            if (m17r(strReplaceFirst).size() == 1) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: n */
    public static boolean m13n(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    /* JADX INFO: renamed from: o */
    public static int m14o(int i10) {
        RoundingMode roundingMode = RoundingMode.UNNECESSARY;
        if (i10 <= 0) {
            C1929i.m3029k(AbstractC0074a.m155f(i10, "x (", ") must be > 0"));
            return 0;
        }
        switch (AbstractC2205a.f5795a[roundingMode.ordinal()]) {
            case 1:
                if (!((i10 > 0) & (((i10 + (-1)) & i10) == 0))) {
                    throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                }
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i10 - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i10);
                return (31 - iNumberOfLeadingZeros) + ((~(~(((-1257966797) >>> iNumberOfLeadingZeros) - i10))) >>> 31);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i10);
    }

    /* JADX WARN: Code duplicated, block: B:652:0x1202  */
    /* JADX WARN: Code restructure failed: missing block: B:478:0x0d65, code lost:
    
        if (r2 != false) goto L474;
     */
    /* JADX INFO: renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static p006a5.C0023h m15p(java.lang.String r42, java.util.Collection r43, java.util.Map r44) {
        /*
            Method dump skipped, instruction units count: 13016
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p000a.AbstractC0000a.m15p(java.lang.String, java.util.Collection, java.util.Map):a5.h");
    }

    /* JADX INFO: renamed from: q */
    public static String m16q(String str) {
        if (str == null) {
            str = "";
        }
        return Normalizer.normalize(str, Normalizer.Form.NFKC).toLowerCase(Locale.ROOT).replace((char) 1105, (char) 1077).replace(',', FilenameUtils.EXTENSION_SEPARATOR).replaceAll(AbstractC1387m.m2421h(new byte[]{1, -29, -77, -12, 65, 106, -8, -62, 56, -8}, new byte[]{101, -116, -35, -81, 102, -120, 120, 91}), AbstractC1387m.m2421h(new byte[]{5, -8, 82, 56, -105, -108}, new byte[]{97, -105, 114, 86, -8, -32, -50, -85})).replace(AbstractC1387m.m2421h(new byte[]{37, 24, 79}, new byte[]{68, 55, 44, 91, 27, -64, 51, 118}), AbstractC1387m.m2421h(new byte[]{-68, 18}, new byte[]{-35, 113, -50, -80, -1, -9, -63, -103})).replaceAll(AbstractC1387m.m2421h(new byte[]{-76, 123, -9, 91, 29, 122, 89, 121, -31, 109, -26, 78, 126, 55, 126, 69, -25, 8, -74, 79}, new byte[]{-100, 68, -53, 102, 65, 10, 34, 53}), " ").replaceAll(AbstractC1387m.m2421h(new byte[]{-73, -79, -23, -115, -69, -79, 102, 88}, new byte[]{-21, -97, -63, -78, -102, -19, 2, 113}), " ").replaceAll(AbstractC1387m.m2421h(new byte[]{-99, -116, -62, -40, -123, -8, 21, 85, -74, -87, -48, -43, -48, -111, 67, 85, -21, -113, -75}, new byte[]{-58, -46, -98, -88, -2, -76, 104, 9}), " ").trim().replaceAll(AbstractC1387m.m2421h(new byte[]{91, -109, 30}, new byte[]{7, -32, 53, 63, 64, 101, -84, 62}), " ");
    }

    /* JADX INFO: renamed from: r */
    public static ArrayList m17r(String str) {
        int i10;
        Integer num;
        String[] strArr = {AbstractC1387m.m2421h(new byte[]{-94, -79, 89, -4, 39, -88, 35, 81}, new byte[]{114, 12, -119, 66, -9, 19, -14, -35}), AbstractC1387m.m2421h(new byte[]{102, -96, -72, 46, -31, -79, -61, 40}, new byte[]{-74, 30, 104, -102, 49, 9, 19, -107}), AbstractC1387m.m2421h(new byte[]{-49, -119, 97, 56, 3, 17}, new byte[]{31, Base64.padSymbol, -79, -118, -45, -95, -116, -47}), AbstractC1387m.m2421h(new byte[]{80, -101, -19, -67, -56, 90}, new byte[]{-127, 25, 60, Base64.padSymbol, 24, -30, 123, -119}), AbstractC1387m.m2421h(new byte[]{69, 109, 73, -15, -122, -110, -101, -115, 69, 106, 73, -15}, new byte[]{-108, -22, -103, 68, 87, 16, 74, 6}), AbstractC1387m.m2421h(new byte[]{67, 1, -122, 96, 64, 120, 120, 23}, new byte[]{-109, -66, 87, -17, -111, -6, -87, -101}), AbstractC1387m.m2421h(new byte[]{41, -100, 13, 104, -27, 14, -78, 57, 41, -104}, new byte[]{-8, 20, -35, -35, 52, -113, 99, -69}), AbstractC1387m.m2421h(new byte[]{-118, -48, 49, 3, -39, 106, 8, 72}, new byte[]{91, 81, -31, -74, 9, -42, -39, -60}), AbstractC1387m.m2421h(new byte[]{-9, -28, -61, -114, 43, Base64.padSymbol, -11, -60, -9, -22, -62, -68}, new byte[]{39, 86, 19, 48, -6, -68, 37, 113}), AbstractC1387m.m2421h(new byte[]{56, -86, 71, 0, 33, -78, -52, -84, 57, -100, 70, 57}, new byte[]{-24, 30, -105, -75, -15, 0, 29, 35}), AbstractC1387m.m2421h(new byte[]{69, -12, 13, 101, 27, -42, -26, 125, 68, -62, 12, 92}, new byte[]{-107, 64, -35, -48, -54, 87, 55, -14}), AbstractC1387m.m2421h(new byte[]{-51, 122, 106, 60, 56, 12, 111, 97, -51, 121, 106, 56, 56, 0, 110, 90, -51, 116, 107, 10, 57, 56}, new byte[]{29, -60, -70, -120, -24, -76, -65, -36}), AbstractC1387m.m2421h(new byte[]{-90, 88, 86, -100, 94, 85, -89, 96, -90, 92, 86, -102, 95, 102, -89, 109, -89, 110, 87, -94}, new byte[]{118, -20, -122, 46, -114, -32, 119, -35}), AbstractC1387m.m2421h(new byte[]{44, 91, -60, 118, 85, 105, -93, 88, 45, 105, -59, 66, 84, 87, -93, 85, 44, 91, -60, 122}, new byte[]{-3, -39, 21, -10, -123, -47, 115, -27}), AbstractC1387m.m2421h(new byte[]{-13, 77, -56, 108, 10, 94, 121, -65, -13, 74, -56, 100, 11, 108, 120, ByteCompanionObject.MIN_VALUE, -13, 76, -56, 105, 10, 94, 121, -72}, new byte[]{34, -54, 24, -39, -37, -36, -88, 52}), AbstractC1387m.m2421h(new byte[]{83, -98, -60, 112, -83, -110, 13, 124, 83, -111, -59, 75, -83, -106, 13, 113, 82, -93, -60, 115}, new byte[]{-125, 33, 21, -1, 124, 16, -35, -63}), AbstractC1387m.m2421h(new byte[]{55, 44, -66, -103, 108, -107, 96, 36, 54, 25, -66, -100, 109, -96, 96, 32, 54, 20, -65, -82, 108, -104}, new byte[]{-26, -92, 110, 44, -67, 20, -79, -90}), AbstractC1387m.m2421h(new byte[]{-25, 24, -90, -108, 85, -81, -18, 101, -26, 41, -90, -107, 84, -107, -18, 104, -25, 27, -89, -83}, new byte[]{54, -103, 118, 33, -123, 19, 62, -40}), AbstractC1387m.m2421h(new byte[]{-84, -93, 102, 65, -95, 69, 15, 21, -84, -83, 102, 66, -96, 116, 15, 20, -83, -105, 102, 79, -95, 70, 14, 44}, new byte[]{124, 17, -74, -1, 112, -60, -33, -96}), AbstractC1387m.m2421h(new byte[]{-9, -6, -61, 20, -29, -87, 39, -55, -10, -52, -61, 28, -29, -85, 38, -14, -10, -56, -61, 17, -30, -103, 39, -54}, new byte[]{39, 78, 19, -95, 51, 27, -10, 70})};
        String[] strArr2 = {AbstractC1387m.m2421h(new byte[]{15, 125, -109, -70}, new byte[]{117, 24, -31, -43, -50, 14, 23, -35}), AbstractC1387m.m2421h(new byte[]{-7, -88, 11}, new byte[]{-106, -58, 110, -40, 92, -13, -46, -68}), AbstractC1387m.m2421h(new byte[]{-95, 71, 95}, new byte[]{-43, 48, 48, 57, 106, -69, 44, 21}), AbstractC1387m.m2421h(new byte[]{15, 9, -52, -5, -78}, new byte[]{123, 97, -66, -98, -41, 26, -8, 11}), AbstractC1387m.m2421h(new byte[]{79, 35, -27, 108}, new byte[]{41, 76, -112, 30, 80, -91, -65, 8}), AbstractC1387m.m2421h(new byte[]{49, 49, 113, -66}, new byte[]{87, 88, 7, -37, -85, 86, -43, 91}), AbstractC1387m.m2421h(new byte[]{98, -81, -54}, new byte[]{17, -58, -78, 60, -106, -29, 7, -15}), AbstractC1387m.m2421h(new byte[]{23, -46, 116, 5, -95}, new byte[]{100, -73, 2, 96, -49, -93, -117, -28}), AbstractC1387m.m2421h(new byte[]{73, 75, 99, -79, -41}, new byte[]{44, 34, 4, -39, -93, -9, -34, 94}), AbstractC1387m.m2421h(new byte[]{-96, -59, -107, 46}, new byte[]{-50, -84, -5, 75, 101, 81, -21, 76}), AbstractC1387m.m2421h(new byte[]{-82, -80, -51}, new byte[]{-38, -43, -93, -61, 58, -98, 95, 10}), AbstractC1387m.m2421h(new byte[]{50, -24, 55, 71, 45, 10}, new byte[]{87, -124, 82, 49, 72, 100, 70, ByteCompanionObject.MIN_VALUE}), AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -79, 6, -36, 92, -27}, new byte[]{-12, -58, 99, -80, 42, ByteCompanionObject.MIN_VALUE, 58, 34}), AbstractC1387m.m2421h(new byte[]{1, 40, -69, -47, -104, 69, 121, 81}, new byte[]{117, 64, -46, -93, -20, 32, 28, 63}), AbstractC1387m.m2421h(new byte[]{-37, -101, -73, -26, 83, ByteCompanionObject.MIN_VALUE, -50, 7}, new byte[]{-67, -12, -62, -108, 39, -27, -85, 105}), AbstractC1387m.m2421h(new byte[]{-105, 42, -53, -96, 19, 69, 38}, new byte[]{-15, 67, -83, -44, 118, 32, 72, 93}), AbstractC1387m.m2421h(new byte[]{-38, -83, -119, 47, 89, -62, -66}, new byte[]{-87, -60, -15, 91, 60, -89, -48, 27}), AbstractC1387m.m2421h(new byte[]{-58, -22, 33, 89, 62, 40, 17, -118, -37}, new byte[]{-75, -113, 87, 60, 80, 92, 116, -17}), AbstractC1387m.m2421h(new byte[]{-96, 62, -27, -61, -73, 95, 43, -96}, new byte[]{-59, 87, -126, -85, -61, 58, 78, -50}), AbstractC1387m.m2421h(new byte[]{-16, -36, -63, -110, 79, -27, -126, -35}, new byte[]{-98, -75, -81, -9, 59, ByteCompanionObject.MIN_VALUE, -25, -77})};
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i11 = 0;
        for (int i12 = 0; i12 < 20; i12++) {
            linkedHashMap.put(strArr[i12], Integer.valueOf(i12));
            linkedHashMap.put(strArr2[i12], Integer.valueOf(i12));
        }
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{63, 82, 64, -75, -25, 5, 45, 75}, new byte[]{-17, -20, -112, 1, 55, -72, -4, -56}), 1);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{-121, 119, 118, -47, 122, -104, -91, 95}, new byte[]{87, -55, -90, 101, -86, 37, 117, -17}), 1);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{-121, 111, -38, 113, -85, -109, -51, 87, -121, 98, -37, 67, -86, -88}, new byte[]{87, -38, 10, -59, 123, 43, 29, -22}), 1);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{-52, -30, -16, 12, 9, -51, -37, 49, -52, -20, -15, Base64.padSymbol}, new byte[]{28, 86, 32, -66, -39, 115, 11, -120}), 2);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{108, -58, 89, -80, 24, 104}, new byte[]{-68, 114, -119, 2, -56, -35, 81, 33}), 2);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{64, 58, -91, 21, -30, 32, -52, -52, 65, 2, -91, 22}, new byte[]{-111, -72, 116, -107, 50, -98, 28, 117}), 3);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{-103, -108, -27, -79, 60, 99, 24, 71, -104, -96, -27, -67}, new byte[]{73, 43, 53, 4, -19, -29, -56, -11}), 1);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{-30, -29, -120, -97, 38, 93, 18, 55, -29, -33, -119, -92}, new byte[]{50, 92, 88, 42, -9, -35, -62, -123}), 1);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -49, 1, -123, -21, 63, -20, 49, ByteCompanionObject.MAX_VALUE, -50, 1, -116}, new byte[]{-81, 112, -47, 48, 58, -65, 60, -125}), 1);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{-12, -111, 101, -27, 41}, new byte[]{-110, -8, 23, -106, 93, -69, 7, 38}), 1);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{-20, 88, 125, -28, 27, 75, 117, 31, -20, 84, 124, -33}, new byte[]{60, -22, -84, 102, -53, -11, -92, -97}), 2);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{-3, 40, 51, 30, -35, 84, 23, -17, -4, 25, 51, 18}, new byte[]{45, -102, -30, -100, 13, -22, -58, 111}), 2);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{48, 118, 124, -95, 110, 78, 98, -60, 48, 122, 125, -97}, new byte[]{-32, -60, -83, 35, -66, -16, -77, 68}), 2);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{118, -43, 49, -75, 47, 20}, new byte[]{5, -80, 82, -38, 65, 112, 103, -106}), 2);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{10, 7, 41, 100, -4, 115, 2, 16, 11, Base64.padSymbol, 40, 93}, new byte[]{-37, -123, -8, -28, 44, -58, -45, -110}), 3);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{110, -47, 67, 22, -53, 126, 90, -8, 110, -33, 67, 24}, new byte[]{-65, 83, -110, -106, 27, -53, -117, 122}), 3);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{36, 117, -124, -8, -60, -87, -88, 55, 36, 123, -123, -51, -60, -96}, new byte[]{-11, -9, 85, 120, 20, 28, 121, -75}), 3);
        linkedHashMap.put(AbstractC1387m.m2421h(new byte[]{73, 43, 87, -36, 95}, new byte[]{Base64.padSymbol, 67, 62, -82, 59, 67, 97, 86}), 3);
        String[] strArr3 = {AbstractC1387m.m2421h(new byte[]{-25, -91, -36, 101, -101, -115, -5, -106, -26, -105, -36, 103, -102, -65, -6, -82}, new byte[]{55, 17, 12, -41, 75, Base64.padSymbol, 43, 34}), AbstractC1387m.m2421h(new byte[]{-69, 92, 51, 122, -26, 70, 94, -121, -69, 88, 50, 74, -25, 124, 95, -65}, new byte[]{106, -34, -30, -6, 54, -2, -114, 51}), AbstractC1387m.m2421h(new byte[]{-60, -91, 44, -87, -47, 115, 27, -44, -59, -98}, new byte[]{21, 36, -4, 23, 0, -13, -53, 106}), AbstractC1387m.m2421h(new byte[]{47, 28, -33, 25, 27, -72, -57, -88, 47, 23, -34, 35, 27, -69, -57, -85, 46, 33}, new byte[]{-1, -93, 14, -106, -54, 58, 22, 36}), AbstractC1387m.m2421h(new byte[]{126, -50, -102, -49, 75, -58, -103, 87, 126, -54, -102, -50, 74, -14, -103, 84, 126, -55, -101, -8}, new byte[]{-81, 70, 74, 122, -102, 71, 72, -43}), AbstractC1387m.m2421h(new byte[]{83, -121, -101, -43, -93, 57, 79, 40, 82, -78, -101, -43, -94, 4, 79, 43, 83, -124}, new byte[]{-126, 6, 75, 96, 115, -123, -98, -92}), AbstractC1387m.m2421h(new byte[]{28, -124, -55, -67, 31, 28, -26, -27, 28, -118, -56, -113, 30, 41, -26, -27, 29, -73, -56, -116, 31, 31}, new byte[]{-52, 54, 25, 3, -50, -99, 54, 80}), AbstractC1387m.m2421h(new byte[]{-36, 25, 25, -81, -25, 18, 69, -74, -36, 16, 25, -92, -26, 33, 69, -69, -36, 19}, new byte[]{12, -83, -55, 26, 55, -96, -108, 57}), AbstractC1387m.m2421h(new byte[]{-33, -120, 14, Base64.padSymbol, -69, -85}, new byte[]{14, 9, -33, -65, 107, 21, -74, -90})};
        String[] strArr4 = {AbstractC1387m.m2421h(new byte[]{-67, 47, -111, 97, 122, 24}, new byte[]{-55, 88, -12, 15, 14, 97, 13, 45}), AbstractC1387m.m2421h(new byte[]{35, 8, 41, 95, 85, -19}, new byte[]{87, 96, 64, 45, 33, -108, 93, 7}), AbstractC1387m.m2421h(new byte[]{-52, 21, 66, -16, 114}, new byte[]{-86, 122, 48, -124, 11, 102, -89, 35}), AbstractC1387m.m2421h(new byte[]{-47, 62, ByteCompanionObject.MIN_VALUE, -99, 7}, new byte[]{-73, 87, -26, -23, 126, 5, 21, -27}), AbstractC1387m.m2421h(new byte[]{108, -17, 110, 122, 0}, new byte[]{31, -122, 22, 14, 121, 102, -10, -25}), AbstractC1387m.m2421h(new byte[]{-51, -94, -31, -108, -101, 73, 82}, new byte[]{-66, -57, -105, -15, -11, Base64.padSymbol, 43, 91}), AbstractC1387m.m2421h(new byte[]{-97, -80, -19, 83, -73, 123}, new byte[]{-6, -39, -118, 59, -61, 2, -111, 76}), AbstractC1387m.m2421h(new byte[]{-4, -38, 113, 16, -109, 118}, new byte[]{-110, -77, 31, 117, -25, 15, -118, 39}), AbstractC1387m.m2421h(new byte[]{93, -41, -4, 6, 55, 121, -127}, new byte[]{53, -94, -110, 98, 69, 28, -27, -97})};
        for (int i13 = 0; i13 < 9; i13++) {
            int i14 = (i13 + 2) * 10;
            linkedHashMap.put(strArr3[i13], Integer.valueOf(i14));
            linkedHashMap.put(strArr4[i13], Integer.valueOf(i14));
        }
        String[] strArrSplit = str.split(AbstractC1387m.m2421h(new byte[]{-72, 2, 34}, new byte[]{-28, 113, 9, 103, -53, 81, -26, 62}));
        ArrayList arrayList = new ArrayList();
        while (i11 < strArrSplit.length) {
            String strReplace = strArrSplit[i11].replace(AbstractC1387m.m2421h(new byte[]{104}, new byte[]{77, -15, 99, -8, -92, -60, -5, -56}), "");
            Integer numValueOf = (Integer) linkedHashMap.get(strReplace);
            if (numValueOf != null) {
                if (numValueOf.intValue() >= 20 && numValueOf.intValue() < 100 && numValueOf.intValue() % 10 == 0 && (i10 = i11 + 1) < strArrSplit.length && (num = (Integer) linkedHashMap.get(strArrSplit[i10])) != null && num.intValue() > 0 && num.intValue() < 10) {
                    numValueOf = Integer.valueOf(num.intValue() + numValueOf.intValue());
                    i11 = i10;
                }
                double dIntValue = numValueOf.intValue();
                int i15 = i11 + 2;
                if (i15 < strArrSplit.length && strArrSplit[i11 + 1].equals(AbstractC1387m.m2421h(new byte[]{-117, 92}, new byte[]{90, -35, 57, 26, -101, -41, 67, 109})) && strArrSplit[i15].equals(AbstractC1387m.m2421h(new byte[]{12, -14, -95, -62, 65, 34, -58, -75, 12, -1, -95, -60, 65, 36, -58, -75, 12, -12}, new byte[]{-36, 77, 113, 124, -111, -103, 22, 11}))) {
                    dIntValue += 0.5d;
                    i11 = i15;
                }
                arrayList.add(Double.valueOf(dIntValue));
            } else if (strReplace.matches(AbstractC1387m.m2421h(new byte[]{-120, 100, -84, 111, -86, 101, -89, -25, -5, 112, -69, 110, -69, 101, -89, -25, -6, 112}, new byte[]{-45, 79, -127, 50, -107, 57, -61, -52}))) {
                arrayList.add(Double.valueOf(Double.parseDouble(strReplace)));
            }
            i11++;
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: s */
    public static void m18s(Throwable th) {
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else if (!(th instanceof C0033e) && !(th instanceof C0032d) && !(th instanceof IllegalStateException) && !(th instanceof NullPointerException) && !(th instanceof IllegalArgumentException) && !(th instanceof C0031c)) {
            th = new C0034f(th);
        }
        th.printStackTrace();
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }

    /* JADX INFO: renamed from: t */
    public static C0023h m19t(String str) {
        return new C0023h(EnumC3503z0.f10332d, "", str, 27);
    }

    /* JADX INFO: renamed from: u */
    public static int m20u(float f8) {
        return (int) (f8 + (f8 < 0.0f ? -0.5f : 0.5f));
    }

    /* JADX INFO: renamed from: v */
    public static void m21v(WindowManager windowManager, View view) {
        if (view == null) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new RunnableC0003a(0, windowManager, view));
    }

    /* JADX INFO: renamed from: w */
    public static boolean m22w(String str) {
        String strM2421h = AbstractC1387m.m2421h(new byte[]{36, 50, 10, 117, -76, 13, 62, -34, -72, -35, -123, 116, -120, -127, -10, 117, 64, 112, 26, -40, -28, 92, 86, -74, -36, -71, -31, 39, -28, 85, -38, 126, 119, 65, 77, -114, 73, 13, 60, -33, -116, -35, -123, 117, -76, 13, Base64.padSymbol, 82, 124, 118, 124, -39, 31, -12}, new byte[]{12, 13, 48, -92, 53, -35, -122, 14});
        String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-29, -112, -90, 52, -69, 0, -97, 64, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MAX_VALUE, 36, 53, -117, 0, -108, 64, 112, -13, -20, -97, 69, -83, 11, -20, 27, 16, 76, 84, -40, 81, -16, 17, 27, 31, 76, 82, -39, 104, -16, 16, -105, -33, -25, -88, 116, -6, 93, 64, 116, ByteCompanionObject.MAX_VALUE, 41, 53, -119, 0, -108, 64, ByteCompanionObject.MAX_VALUE, ByteCompanionObject.MAX_VALUE, 33, -72, 121, -85, 109, -19, -31, -45, 76, 83, -39, 96, -15, 36, 27, 18, -64, -108, 114, -100, 92, -70, -73, ByteCompanionObject.MAX_VALUE, 39, 52, -68, 0, -109, -52, -69, -44, -48, -103, 35, -84, -15, 47, 26, 47, 76, 84, -39, 98, 125, -32, -80, -29, -31, -50, 117, 0, -99, 64, 117, ByteCompanionObject.MAX_VALUE, 41, 52, -70, 0, -97, -71}, new byte[]{-53, -81, -100, -28, 9, -48, 33, -112});
        String strM2421h3 = AbstractC1387m.m2421h(new byte[]{-34, -76, 3, 46, 76, -63, 119, -27, 75, 90, -69, 46, 70, -63, 121, -28, 121, 90, -69, 46, 64, -64, 66, 105, -122, -16, 117, -125, -44, 109, 18, -117, 38, 58, -23, 74, 47, -110, 18, -121, -86, -5, 66, -78, -125, 59, -21}, new byte[]{-10, -117, 57, -2, -2, 17, -62, 53});
        StringBuilder sbM170u = AbstractC0074a.m170u(strM2421h3);
        AbstractC1178q.m2087u(new byte[]{-49, -38, -28, 57}, new byte[]{-25, -27, -34, 25, -34, 93, 76, 27}, sbM170u, strM2421h2);
        AbstractC1178q.m2087u(new byte[]{122, -113, 47, -47, -54, -16, -15}, new byte[]{83, -12, 31, -3, -2, -115, -47, 73}, sbM170u, strM2421h);
        AbstractC1178q.m2087u(new byte[]{-89}, new byte[]{-37, -110, -77, 82, 37, 104, -7, -85}, sbM170u, strM2421h);
        AbstractC1178q.m2087u(new byte[]{24, 12, -40, 50}, new byte[]{48, 51, -30, 18, 47, -87, 115, -98}, sbM170u, strM2421h2);
        AbstractC1178q.m2087u(new byte[]{-91, -46, -65, -58, 78, -110, 50}, new byte[]{-116, -87, -113, -22, 122, -17, 18, -110}, sbM170u, strM2421h3);
        sbM170u.append(AbstractC1387m.m2421h(new byte[]{-86, -15, 60, 32, 14, -119, 52, 10, -2, -67, 99, 39, 27, -108, 120, 21, -86, -32, 53, 46, 13, -97, 121, 86, -73, -21, 43, 39, 22, -107, 124, 86, -73, -21, 43, 97, 28, -106, 100, 93, -1, -2, 113, 126, 64, -100, 106, 68, -91, -67, 37, 35, 22, -107, 124, 79, -92, -2, 56, 40, 8, -100, 103, 69, -95, -2, 56, 40, 8, -38, 109, 70, -71, -11, 112, 105, 69, -64, 43, 2, -23, -72, 54, 39, 6, -109, 101, 86, -94, -22, 60, Base64.padSymbol, 30, -120, 98, 92, -77, -16, 37, 49, 27, -119, 120, 79, -72, -27, 60, 51, 6, -100, 121, 69, -72, -10, 37, 51, 31, -101, 121, 86, -70, -25, 63, 53, 6, -120, 98, 77, -66, -10, 37, 50, 83, -45, 112, 26, -6, -75, 36, 97, 9, -97, 106, 94, -91, -67}, new byte[]{-42, -126, 89, 65, 122, -6, 11, 42}));
        return m11l(str, sbM170u.toString());
    }

    /* JADX INFO: renamed from: x */
    public static int m23x(int[] iArr) {
        int i10 = 0;
        for (int i11 : iArr) {
            i10 += i11;
        }
        return i10;
    }

    /* JADX INFO: renamed from: y */
    public static void m24y() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return;
        }
        C1929i.m3030l("Must be called from the main thread.");
    }

    /* JADX INFO: renamed from: z */
    public static double m25z(String str, double d) {
        if (str == null || str.equals(AbstractC1387m.m2421h(new byte[]{-25, 38, 35, 83}, new byte[]{-127, 83, 79, 63, -78, -10, 116, 63}))) {
            return d;
        }
        if (str.equals(AbstractC1387m.m2421h(new byte[]{-44, 44, 87}, new byte[]{-69, 74, 49, -61, -25, -53, 102, -116}))) {
            return 0.0d;
        }
        return Double.parseDouble(str);
    }

    /* JADX INFO: renamed from: k */
    public abstract void mo26k(C3739y c3739y, float f8, float f10);
}
