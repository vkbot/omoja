package p225w0;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.example.navistart.cores.BTProxy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p016b1.C0872m;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: w0.n0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3479n0 {

    /* JADX INFO: renamed from: a */
    public EnumC3477m0 f10121a;

    /* JADX INFO: renamed from: b */
    public List f10122b;

    /* JADX INFO: renamed from: c */
    public C3497w0 f10123c;

    /* JADX INFO: renamed from: d */
    public List f10124d;

    /* JADX INFO: renamed from: e */
    public String f10125e;

    /* JADX INFO: renamed from: f */
    public String f10126f;

    /* JADX INFO: renamed from: g */
    public String f10127g;

    /* JADX INFO: renamed from: h */
    public boolean f10128h;

    /* JADX WARN: Code duplicated, block: B:65:0x01f1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:77:0x0248 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:83:0x0274 A[RETURN] */
    /* JADX INFO: renamed from: b */
    public static int m5455b(String str) {
        String strReplaceFirst = str.replaceFirst(AbstractC1387m.m2421h(new byte[]{-64, -85, -88, -88, -123, 36, ByteCompanionObject.MIN_VALUE, -8, 78, 63, 71, 39, -124, 25, 44, -106, 44, 83, 39, 67, -43, 73, -24, -106, 46, 83, 42, 67, -41, -27, 62, 51, -13, -31, -14, -32, 41, -10, 32, 50, -9, -20, -7, -69, 9, -22, 123}, new byte[]{-98, -125, -105, -110, 85, -103, 80, 70}), "");
        int iHashCode = strReplaceFirst.hashCode();
        switch (iHashCode) {
            case -2116005972:
                return strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-80, -78, -90, -98, -4, 108, -10, 81, -79, -120, -89, -89}, new byte[]{97, 48, 119, 30, 44, -39, 39, -45})) ? 2 : -1;
            case -1982622772:
                return strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-105, 6, -90, 29, -96, -72, 63, 17, -105, 1, -90, 29}, new byte[]{70, -127, 118, -88, 113, 58, -18, -102})) ? 3 : -1;
            case -1961581413:
                return strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-87, -74, 44, -79, -122, 113, -7, 64, -87, -72, 45, -124, -122, 120, -7, 65}, new byte[]{120, 52, -3, 49, 86, -60, 40, -62})) ? 2 : -1;
            case -1268684262:
                return strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{118, -75, 73, 5, -103, -83}, new byte[]{16, -38, 60, 119, -19, -59, 40, 126})) ? 3 : -1;
            case -906279820:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-89, -39, -50, -93, -118, 118}, new byte[]{-44, -68, -83, -52, -28, 18, 124, -107}))) {
                    return 1;
                }
                return -1;
            case -649223225:
                return strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-11, 97, 110, 35, 125, -94, 116, 77, -12, 83, 111, 22, 125, -94, 117, 116, -12, 95}, new byte[]{36, -26, -66, -106, -84, 32, -92, -1})) ? 3 : -1;
            case 110182:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{107, 39, -120}, new byte[]{4, 73, -19, 90, 11, 120, 64, 89}))) {
                    return 0;
                }
                return -1;
            case 115276:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-66, -11, -84}, new byte[]{-54, -126, -61, 45, -49, -18, -46, 16}))) {
                    return 1;
                }
                return -1;
            case 1068402:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-113, -106, 77, -99, -87, -40}, new byte[]{95, 34, -99, 47, 121, 104, -103, -59}))) {
                    return 1;
                }
                return -1;
            case 1082298:
                return strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-90, 15, -29, -48, 90, -46}, new byte[]{119, -115, 50, 80, -118, 106, -121, 56})) ? 2 : -1;
            case 3143346:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-54, 80, 88, 112}, new byte[]{-84, 57, 46, 21, 6, -94, -108, 10}))) {
                    return 4;
                }
                return -1;
            case 3149094:
                return strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{82, -83, 41, -93}, new byte[]{52, -62, 92, -47, -89, -13, 97, 101})) ? 3 : -1;
            case 33421627:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-53, 126, -46, -50, -48, -68, -92, 50}, new byte[]{27, -64, 2, 122, 0, 4, 116, -113}))) {
                    return 0;
                }
                return -1;
            case 33477690:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-119, 118, 111, 107, 113, -32, -37, -117}, new byte[]{89, -55, -66, -28, -96, 98, 10, 7}))) {
                    return 4;
                }
                return -1;
            case 97428919:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{63, -42, 49, -35, 126}, new byte[]{89, -65, 87, -87, 22, -52, -80, 86}))) {
                    return 4;
                }
                return -1;
            case 97440432:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-52, -119, 63, -115, -43}, new byte[]{-86, -32, 77, -2, -95, ByteCompanionObject.MAX_VALUE, -117, -16}))) {
                    return 0;
                }
                return -1;
            case 110331239:
                return strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{69, -113, 34, -101, 9}, new byte[]{49, -25, 75, -23, 109, -115, -117, 108})) ? 2 : -1;
            case 110339486:
                return strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{120, 96, -10, -40, -23}, new byte[]{12, 8, -124, -67, -116, 68, 67, -90})) ? 2 : -1;
            case 155548641:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{54, 54, -92, -16, -86, -2, -117, 24, 54, 55, -92, -10, -85, -64}, new byte[]{-26, -119, 116, 69, 123, 126, 91, -86}))) {
                    return 0;
                }
                return -1;
            case 155548925:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{13, -9, 58, 23, -94, -60, ByteCompanionObject.MAX_VALUE, 105, 13, -10, 58, 30, -94, -57}, new byte[]{-35, 72, -22, -94, 115, 68, -81, -37}))) {
                    return 0;
                }
                return -1;
            case 1037809440:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-79, 74, -22, -59, 87, 4, -127, 122, -79, 76}, new byte[]{97, -11, 59, 74, -122, -122, 80, -15}))) {
                    return 4;
                }
                return -1;
            case 1723008333:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{118, 82, -57, 26, -29, 113, -106, 28, 118, 94, -58, 33}, new byte[]{-90, -32, 22, -104, 51, -49, 71, -100}))) {
                    return 1;
                }
                return -1;
            case 1873651671:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-118, -88, -90, 65, 123, 9, 73, -120, -118, -92, -89, 112, 123, 9}, new byte[]{90, 26, 119, -61, -85, -73, -104, 8}))) {
                    return 1;
                }
                return -1;
            case 1873651955:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-20, -55, 49, -67, -118, 42, 125, -25, -20, -59, 48, -125, -117, 23}, new byte[]{60, 123, -32, 63, 90, -108, -84, 103}))) {
                    return 1;
                }
                return -1;
            case 2083228054:
                if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-88, 104, 79, -51, -83, -43, -25, -22, -87, 92, 79, -63}, new byte[]{120, -41, -97, 120, 124, 85, 55, 88}))) {
                    return 0;
                }
                return -1;
            default:
                switch (iHashCode) {
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                        if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-70}, new byte[]{-117, -73, -9, -94, -110, 6, -62, 100}))) {
                            return 0;
                        }
                        return -1;
                    case 50:
                        if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{121}, new byte[]{75, -63, -109, 84, 125, -86, -66, 55}))) {
                            return 1;
                        }
                        return -1;
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                        return strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-71}, new byte[]{-118, 48, 43, -9, -126, -62, 122, 118})) ? 2 : -1;
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                        return strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{-15}, new byte[]{-59, -52, -77, -20, -14, 121, -64, -1})) ? 3 : -1;
                    case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                        if (strReplaceFirst.equals(AbstractC1387m.m2421h(new byte[]{63}, new byte[]{10, 62, -9, 84, -74, 11, 92, -111}))) {
                            return 4;
                        }
                        return -1;
                    default:
                        return -1;
                }
        }
    }

    /* JADX INFO: renamed from: d */
    public static boolean m5456d(String str) {
        return C3451d1.m5394c(str).matches(AbstractC1387m.m2421h(new byte[]{-30, -98, -48, -112, 64, -25, 70, 15, 108, 12, 62, 42, -52, 41, -20, -63, -63, -100, -109, 122, 39, -119, 39, 93, 6, 103, 111, -10, -32, 34, -37, -16, -106, -54, 63, 24, 64, -29, 71, 54, 109, 56, 62, 45, -52, 41, -20, -63, -63, -100, -109, 122, 34, -120, 28, 93, 6, 102, 84, 123, 30, -120, 16, -47, -52, -51, -93, -41, -70, 37, 71, 58, 108, 6, 63, 21, 65, -38, 70, 12, 109, 52, -77, -38, -21, 21, -22, -89, -64, 103, 110, 122, 36, -119, 34, 93, 7, 102, 95, -10, -32, 34, -37, -16, -106, -54, 62, 41, 65, -40, 70, 15, 108, 6, 63, 23, 64, -25, 71, 63, -32, -58, -108, -26, -19, 115, -21, 93, 3, 102, 81, 123, 17, -120, 21, 93, 12, 102, 93, -10, -32, 34, -37, -16, -106, -54, 63, 21, 64, -20, 70, 13, 108, 3, 63, 16, 64, -30, 70, 3, 109, 49, -77, -38, -21, 21, -22, -89, -64, 102, 80, 122, 46, -119, 45, 93, 12, 102, 89, -10, -32, 34, -37, -16, -106, -54, 63, 21, 64, -25, 71, 62, 109, 54, 63, 31, 64, -32, -21, -30, -52, -45, -127, -42, -13, 53, -8, -2, -39, -54, -101, -33, -30, 55, -21, -31, -35, -61, -127, -55, -8, 37, -28, -24, -56, -54, -101, -59, -9, 62, -5, -24, -64, -59, -121, -59, -25, 112, -65, -78, -122, -22, -100, -124, -70, 112, -88, -87}, new byte[]{-68, -74, -17, -86, -112, 89, -105, -115}));
    }

    /* JADX INFO: renamed from: g */
    public static String m5457g(String str) {
        if (str != null && str.matches(AbstractC1387m.m2421h(new byte[]{8, 27, 95, -24, -46, -122, -57, 59, 32, 29, 50, -18}, new byte[]{83, 48, 111, -59, -21, -82, -18, 103}))) {
            String strReplaceAll = str.replaceAll(AbstractC1387m.m2421h(new byte[]{-86, -44, 63, 38, -73, -32, -105}, new byte[]{-15, -4, 22, 122, -60, -51, -54, 51}), "");
            if (strReplaceAll.matches(AbstractC1387m.m2421h(new byte[]{-15, 80, 28, 103, -82, -46, -102, Base64.padSymbol, -42, 78, 15, 13, -85, -126}, new byte[]{-83, 123, 35, 60, -98, -1, -93, 96}))) {
                return strReplaceAll;
            }
        }
        return "";
    }

    /* JADX INFO: renamed from: i */
    public static boolean m5458i(String str) {
        return C3451d1.m5394c(str).matches(AbstractC1387m.m2421h(new byte[]{3, 87, -3, -15, -3, -2, 75, 5, -115, -56, 18, 121, -3, -1, 75, 6, -115, -57, -22, -12, 23, -112, 25, 107, -24, 86, -3, -73, -3, -2, 75, 5, -115, -56, 18, 121, -3, -1, 75, 6, -115, -57, 19, 73, -4, -51, -25, 107, -32, -81, 114, 27, -100, -111, 46, 106, -35, -81, 122, -29, 18, 123, 74, 57, -115, -54, -21, -12, 81, -111, 38, 107, -19, -81, 115, 26, -83, -111, 43, 106, -33, -82, 78, -73, -4, -64, 75, 15, -115, -54, 18, 112, -3, -15, 75, 2, 125, -81, 117, 27, -97, -111, 37, 107, -32, -81, 124, 27, -105, Base64.padSymbol, 74, 58, -115, -63, 18, 121, -3, -12, 74, 59, -116, -9, 18, 115, 13, -111, 44, 107, -17, -81, 124, 27, -112, -111, 37, 107, -25, 3, -95, -86, 65, 45, -25, -33, 52, 30, -82, -30, 5, 126, -95, -25, 46, 81, -24, -30, 18, 101}, new byte[]{93, ByteCompanionObject.MAX_VALUE, -62, -53, 45, 65, -101, -69}));
    }

    /* JADX INFO: renamed from: a */
    public final C0872m m5459a(String str) {
        String strM5394c = C3451d1.m5394c(str);
        EnumC3477m0 enumC3477m0 = this.f10121a;
        EnumC3477m0 enumC3477m1 = EnumC3477m0.f10105b;
        if (enumC3477m0 != enumC3477m1 && strM5394c.matches(AbstractC1387m.m2421h(new byte[]{54, 119, 6, 15, -28, 116, 66, -122, 54, 116, 7, Base64.padSymbol, 72, 24, 44, -30, 100, 25, 102, 93, -118, 24, 43, 79, 54, 116, 7, 56, -27, 74, -18, -29, 91, 25, 98, -83, -28, 117, 66, -125, 54, 125, 7, 51, 72, -85, -13, 93, -123, -84, -69, -15, 90, -89}, new byte[]{-26, -55, -41, -115, 52, -56, -110, 51}))) {
            m5460c();
            return m5461e(EnumC3477m0.f10117n);
        }
        EnumC3477m0 enumC3477m2 = this.f10121a;
        EnumC3477m0 enumC3477m3 = EnumC3477m0.f10115l;
        if (enumC3477m2 == enumC3477m3 && strM5394c.matches(AbstractC1387m.m2421h(new byte[]{-100, -89, -53, -62, 112, -7, 81, -87, -2, -61, -91, -94, -79, -7, 94, 5, -100, -84, -53, -52, -36, -98, 54, -53, -100, -83, -53, -49, -36, -111, -102, -87, -15, -61, -85, -94, -67, -7, 83, -88, -52, -61, -93, 14, -36, -106, 54, -57, -100, -89, -54, -16, -36, -101, 54, -52, -99, -109, -53, -60, -36, -99, 54, -55, -99, -99, 103, 11, 105, 90, -102, 26, 45, ByteCompanionObject.MAX_VALUE, 119, 14, 111, 70, -120, 31, 37, 97, 118}, new byte[]{76, 19, 27, 114, 12, 41, -26, 121}))) {
            C0872m c0872m = new C0872m(EnumC3477m0.f10116m, this.f10126f, this.f10127g, Collections.EMPTY_LIST);
            m5460c();
            return c0872m;
        }
        boolean zM5458i = m5458i(strM5394c);
        if (!zM5458i && (this.f10121a == enumC3477m1 || m5456d(strM5394c))) {
            m5460c();
            return m5461e(enumC3477m1);
        }
        if (strM5394c.matches(AbstractC1387m.m2421h(new byte[]{-23, -112, 104, 85, -59, 104, -90, -25, -76, -109, 104, 85, -59, -26, 103, 107, 114, -58, -112, -41, 47, -125, 11, 57, -69, 106, -15, -70, 74, -26, 109, -57, 23, 7, -112, -33, 47, -115, 11, 55, 23, 13, -111, -27, -125, -26, 101, 107, 121, 107, -57, -70, 74, -26, 102, 106, 68, -58, -112, -35, 47, -122, 11, 60, 23, 15, -112, -42, -125, -26, 111, 106, 70, 106, -5, -70, 71, 74, 10, 4, 23, 4, -111, -24, 47, -120, 10, 7, -69, 106, -1, -70, 65, -26, 109, 107, 113, 106, -11, 22, 46, -79, 10, 14, 22, 58, -112, -33, 47, -127, -90, 107, 112, 106, -16, -70, 77, -25, 88, 106, 71, 106, -16, 22, 46, -73, 10, 1, 23, 10, -112, -36, 47, -114, -90, 107, 120, 106, -2, -70, 77, -25, 88, 107, 121, 107, -64, -70, 71, 74, 11, 59, 23, 10, -111, -21, 46, -73, 10, 1, 23, 10, -112, -36, 47, -114, -90, 107, 117, 107, -57, -70, 74, -25, 90, 107, 119, -58, 46, 5, -117, 74, -76, -34, -79, -33, 50, 22, -101, 89, -76, -49, -69, -34, 47, 4, -40, 66, -90, -46, -95, -58, 44, 11, -117, 83, -88, -57, -77, -43, 45, 5, -115, 68, -75, -52, -69, -55, 33, 19, -125, 68, -65, -53, -94, -37, 52, 67, -41, 9, -32, -25, -76, -108, 106, 22, -37, 31}, new byte[]{-57, -70, 64, 106, -1, 54, -38, -69})) || strM5394c.matches(AbstractC1387m.m2421h(new byte[]{-8, 79, -80, 65, 63, 24, -66, -25, -91, 76, -80, 65, 63, -106, 122, -57, -73, 11, -4, 87, 89, 53, -23, -109, -23, 95, 72, -64, -44, -60, 18, 1, 7, -27, -28, -82, -78, -106, 114, 107, 108, -76, 24, 2, -43, -12, 18, 1, 6, -34, 73, -16, -44, -63, -66, 107, 100, -76, 19, -82, -65, -106, 121, 106, 88, -76, 31, 2, -43, -7, 18, 5, 6, -46, 72, -52, -43, -8, 18, 6, -86, -75, 37, -82, -75, -106, 115, 107, 99, -76, 24, -82, -67, 58, 18, 12, 6, -43, 72, -63, -44, -59, 19, 58, 7, -25, -28, 17, 117, 35, -84, -57, -75, 9, -9, 13, 96, 58, -95, -38, -70, 9, -28, 26, 108, 39, -82, -57, -94, 16, -22, 16, 44, 26, -78, -64, -102, 24, -78, 86, 58, 124, -98, -56, -8, 79, -28, 90, 44}, new byte[]{-42, 101, -104, 126, 5, 70, -62, -69}))) {
            return m5461e(EnumC3477m0.f10106c);
        }
        if (zM5458i) {
            m5460c();
            String strTrim = strM5394c.replaceFirst(AbstractC1387m.m2421h(new byte[]{105, 52, -98, -57, -48, ByteCompanionObject.MAX_VALUE, 3, -110, -25, -85, 113, 79, -48, 126, 3, -111, -25, -92, -119, -62, 58, 17, 81, -4, -126, 53, -98, -127, -48, ByteCompanionObject.MAX_VALUE, 3, -110, -25, -85, 113, 79, -48, 126, 3, -111, -25, -92, 112, ByteCompanionObject.MAX_VALUE, -47, 76, -81, -4, -118, -52, 17, 45, -79, 16, 102, -3, -73, -52, 25, -43, 63, -6, 2, -82, -25, -87, -120, -62, 124, 16, 110, -4, -121, -52, 16, 44, ByteCompanionObject.MIN_VALUE, 16, 99, -3, -75, -51, 45, -127, -47, 65, 3, -104, -25, -87, 113, 70, -48, 112, 3, -107, 23, -52, 22, 45, -78, 16, 109, -4, -118, -52, 31, 45, -70, -68, 2, -83, -25, -94, 113, 79, -48, 117, 2, -84, -26, -108, 113, 69, 32, 16, 100, -4, -123, -52, 31, 45, -67, 16, 109, -4, -115, 96, -62, -100, 108, -84, -81, 72, 94, 125, -51, -44, 40, -1, -23, 112, 68, 55, -119, -62, 58, 16, 105, -4, -119, -52, 28, 44, -126, 16, 99, -4, -115, -51, 35, 44, -125, -68, 3, -106, -25, -94, 113, 64, -47, 66, 3, -100, -25, -90, 112, ByteCompanionObject.MAX_VALUE, 124, 16, 110, -4, -119, -52, 29, 45, -75, 17, 83, 80, 84, 115, -49, -119, 97, -93, -89, 80, 67, 115, -120, -44, 63, -100, -96, 6}, new byte[]{55, 28, -95, -3, 0, -64, -45, 44}), "").trim();
            this.f10125e = strTrim;
            return strTrim.isEmpty() ? m5461e(EnumC3477m0.f10106c) : m5461e(EnumC3477m0.f10107d);
        }
        EnumC3477m0 enumC3477m4 = this.f10121a;
        if (enumC3477m4 == enumC3477m3) {
            return m5461e(enumC3477m3);
        }
        EnumC3477m0 enumC3477m5 = EnumC3477m0.f10107d;
        if (enumC3477m4 == enumC3477m5 || enumC3477m4 == EnumC3477m0.f10108e) {
            this.f10125e = strM5394c;
            return m5461e(EnumC3477m0.f10108e);
        }
        int iM5455b = m5455b(strM5394c);
        if (this.f10121a == EnumC3477m0.f10111h && iM5455b >= 0 && iM5455b < this.f10122b.size() && iM5455b < 5) {
            return m5463h((BTProxy.Contact) this.f10122b.get(iM5455b));
        }
        EnumC3477m0 enumC3477m6 = this.f10121a;
        EnumC3477m0 enumC3477m7 = EnumC3477m0.f10113j;
        if (enumC3477m6 != enumC3477m7) {
            this.f10125e = strM5394c;
            return this.f10128h ? m5462f() : m5461e(enumC3477m5);
        }
        if (iM5455b < 0 || iM5455b >= this.f10124d.size() || iM5455b >= 5) {
            return m5461e(enumC3477m7);
        }
        this.f10127g = (String) this.f10124d.get(iM5455b);
        return m5461e(enumC3477m3);
    }

    /* JADX INFO: renamed from: c */
    public final void m5460c() {
        this.f10121a = EnumC3477m0.f10105b;
        this.f10128h = false;
        this.f10123c = null;
        List list = Collections.EMPTY_LIST;
        this.f10122b = list;
        this.f10124d = list;
        this.f10127g = "";
        this.f10126f = "";
        this.f10125e = "";
    }

    /* JADX INFO: renamed from: e */
    public final C0872m m5461e(EnumC3477m0 enumC3477m0) {
        String strConcat;
        EnumC3477m0 enumC3477m1 = EnumC3477m0.f10105b;
        if (enumC3477m0 != enumC3477m1 && enumC3477m0 != EnumC3477m0.f10117n) {
            enumC3477m1 = enumC3477m0;
        }
        this.f10121a = enumC3477m1;
        ArrayList arrayList = new ArrayList();
        if (enumC3477m0 == EnumC3477m0.f10111h) {
            for (BTProxy.Contact contact : this.f10122b) {
                Iterator<BTProxy.PhoneNumber> it = contact.numbers.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        strConcat = "";
                        break;
                    }
                    BTProxy.PhoneNumber next = it.next();
                    if (next != null && !m5457g(next.number).isEmpty()) {
                        strConcat = AbstractC1387m.m2421h(new byte[]{-41, 15, -112, 91, -47}, new byte[]{-9, -19, 16, -49, -15, 86, -127, 31}).concat(m5457g(next.number));
                        break;
                    }
                }
                arrayList.add(contact.name + strConcat);
            }
        }
        if (enumC3477m0 == EnumC3477m0.f10113j) {
            arrayList.addAll(this.f10124d);
        }
        if (arrayList.size() > 5) {
            arrayList = new ArrayList(arrayList.subList(0, 5));
        }
        return new C0872m(enumC3477m0, this.f10126f, this.f10127g, arrayList);
    }

    /* JADX INFO: renamed from: f */
    public final C0872m m5462f() {
        List arrayList;
        Object obj;
        if (this.f10123c.f10248a.isEmpty()) {
            return m5461e(EnumC3477m0.f10110g);
        }
        String strM5504a = C3497w0.m5504a(this.f10125e);
        if (strM5504a.isEmpty()) {
            return m5461e(EnumC3477m0.f10106c);
        }
        C3497w0 c3497w0 = this.f10123c;
        c3497w0.getClass();
        String strM5504a2 = C3497w0.m5504a(strM5504a);
        if (!strM5504a2.isEmpty()) {
            List list = (List) c3497w0.f10250c.get(strM5504a2);
            if (list == null) {
                String[] strArrSplit = strM5504a2.split(" ");
                ArrayList arrayList2 = new ArrayList();
                int length = strArrSplit.length;
                Set<Integer> set = null;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        ArrayList arrayList3 = new ArrayList();
                        for (Integer num : set) {
                            int iIntValue = num.intValue();
                            int size = arrayList2.size();
                            int i11 = 0;
                            do {
                                if (i11 >= size) {
                                    ArrayList arrayList4 = new ArrayList((Collection) c3497w0.f10249b.get(iIntValue));
                                    int length2 = strArrSplit.length;
                                    int i12 = 0;
                                    while (true) {
                                        if (i12 >= length2) {
                                            arrayList3.add((BTProxy.Contact) c3497w0.f10248a.get(iIntValue));
                                            if (arrayList3.size() != 6) {
                                                break;
                                            }
                                            break;
                                        }
                                        String str = strArrSplit[i12];
                                        int i13 = 0;
                                        while (true) {
                                            if (i13 >= arrayList4.size()) {
                                                i13 = -1;
                                                break;
                                            }
                                            if (((Set) arrayList4.get(i13)).contains(str)) {
                                                break;
                                            }
                                            i13++;
                                        }
                                        if (i13 < 0) {
                                            break;
                                        }
                                        arrayList4.remove(i13);
                                        i12++;
                                    }
                                } else {
                                    obj = arrayList2.get(i11);
                                    i11++;
                                }
                            } while (((Set) obj).contains(num));
                        }
                        arrayList = arrayList3;
                        break;
                    }
                    Set set2 = (Set) c3497w0.f10251d.get(strArrSplit[i10]);
                    if (set2 == null) {
                        arrayList = Collections.EMPTY_LIST;
                        break;
                    }
                    arrayList2.add(set2);
                    if (set == null || set2.size() < set.size()) {
                        set = set2;
                    }
                    i10++;
                }
            } else {
                arrayList = new ArrayList(list);
            }
        } else {
            arrayList = Collections.EMPTY_LIST;
        }
        this.f10122b = arrayList;
        if (arrayList.isEmpty()) {
            return m5461e(EnumC3477m0.f10109f);
        }
        if (this.f10122b.size() > 5) {
            return m5461e(EnumC3477m0.f10112i);
        }
        return this.f10122b.size() > 1 ? m5461e(EnumC3477m0.f10111h) : m5463h((BTProxy.Contact) this.f10122b.get(0));
    }

    /* JADX INFO: renamed from: h */
    public final C0872m m5463h(BTProxy.Contact contact) {
        this.f10126f = contact.name;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (BTProxy.PhoneNumber phoneNumber : contact.numbers) {
            if (phoneNumber != null) {
                String strM5457g = m5457g(phoneNumber.number);
                if (!strM5457g.isEmpty()) {
                    linkedHashMap.put(strM5457g, strM5457g);
                }
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.values());
        this.f10124d = arrayList;
        if (arrayList.isEmpty()) {
            return m5461e(EnumC3477m0.f10114k);
        }
        if (this.f10124d.size() > 1) {
            return m5461e(EnumC3477m0.f10113j);
        }
        this.f10127g = (String) this.f10124d.get(0);
        return m5461e(EnumC3477m0.f10115l);
    }
}
