package w0;

import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d1 {
    public static final d1 d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f5609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f5610b;
    public final Map c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e0.m.h(new byte[]{-39, -20, -23, 115, -36, -108, -3, 11, -62, -18, -31, 126, -35, -108, -14, 5, -63, -28, -11, 113, -34, -82, -80, 14, -36, -20, -18}, new byte[]{-81, -125, ByteCompanionObject.MIN_VALUE, 16, -71, -53, -98, 100});
        List list = Collections.EMPTY_LIST;
        Map map = Collections.EMPTY_MAP;
        d = new d1(list, map, map);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d1(List list, Map map, Map map2) {
        this.f5609a = list;
        this.f5610b = Collections.unmodifiableMap(map);
        this.c = Collections.unmodifiableMap(map2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String a(String str) {
        return c(b(str)).replaceAll(e0.m.h(new byte[]{-85, 8, 27, -96, -4, -83, -31, -22, -2, 30, 15, -66, -102, 12, 26, 118, 51, -26, -90, 81, 31, 13, 42, 119, 6, -25, -102, 81, 24, -95, 75, 38, 83, -121, -10, 0, 112, 98, 74, 22, 82, -78, -9, 60, 113, 94, 75, 36, 82, -69, 91, 81, 30, 12, 24, 118, 49, -25, -103, 80, 32, 13, 34, 119, 1, -26, -85, -88, -120, -30, -69, -6, -13, 76, 107, -4, -119}, new byte[]{-125, 55, 39, -127, -96, -35, -102, -90}), e0.m.h(new byte[]{49, 0, 53, 54, 67, 38, -33, 124, 49, 0, 52, 13}, new byte[]{-31, -66, -28, -76, -109, -100, 14, -4})).replaceAll(e0.m.h(new byte[]{109, -52, -61, 11, 32, -68, -97, 124, 56, -38, -41, 21, 70, 28, 83, -32, -11, 34, 122, -6, -57, 28, 90, -32, -6, 35, 66, -5, -1, 29, 102, -31, -55, -113, 47, -99, -84, 124, 53, -78, -107, 65, 47, -108, -83, 76, 52, -120, 57, 35, 72, -6, -52, 29, 102, -32, -9, 35, 65, -5, -4, 28, 92, -31, -57, 34, 115, 3, 84, -13, -59, 108, 53, -120, -77, 87, 85}, new byte[]{69, -13, -1, 42, 124, -52, -28, 48}), e0.m.h(new byte[]{-122, 103, 123, 109, -27, 94, -45, -77, -122, 110, 123, 100}, new byte[]{86, -48, -85, -35, 53, -28, 2, 51})).replaceAll(e0.m.h(new byte[]{Base64.padSymbol, 44, -24, 98, 21, -117, 60, 36, 104, 58, -4, 124, 115, 43, -8, -72, -85, -61, 96, -110, -62, 43, -5, -72, -83, 111, 4, -4, -103, 69, -105, -36, -59, -82, 5, -52, -104, 121, -106, -28, 60, 59, -21, 98, 21, -117, 60, 36, 104, 58}, new byte[]{21, 19, -44, 67, 73, -5, 71, 104}), e0.m.h(new byte[]{46, -105, 82, -37, -72, -23, -42, 120, 46, -112, 82, -39, -72, -27}, new byte[]{-2, 40, -126, 101, 104, 93, 6, -59})).replaceAll(e0.m.h(new byte[]{-84, 110, 112, -51, 12, -45, -58, -82, -7, 120, 100, -45, 106, 114, 60, 50, 59, ByteCompanionObject.MIN_VALUE, -49, Base64.padSymbol, -47, 114, 63, 50, 60, 45, -99, 109, ByteCompanionObject.MIN_VALUE, 28, 108, 97, 85, -48, -99, 110, ByteCompanionObject.MIN_VALUE, 27, 108, 96, 85, -35, 101, -60, 111, -126, -31, -110, -1, 29, 49, -59}, new byte[]{-124, 81, 76, -20, 80, -93, -67, -30}), e0.m.h(new byte[]{124, -21, -79, 6, 125, -100, 26, -109, 125, -41, -79, 1}, new byte[]{-84, 85, 97, -71, -84, 31, -53, 18})).replaceAll(e0.m.h(new byte[]{17, -6, -36, -7, -123, 49, -91, 23, 68, -20, -56, -25, -29, -112, 95, -117, -120, 21, 80, 8, 107, -112, 82, 39, -24, 68, 48, 105, 9, -15, 14, -23, -23, 125, 49, 90, 8, -51, -9, 115, 6, -28, -68, -88, -94, 13, -93, 114}, new byte[]{57, -59, -32, -40, -39, 65, -34, 91}), e0.m.h(new byte[]{45, 69, 7, 77, 1, -110, -120, -17, 45, 74, 6, 121, 1, -97}, new byte[]{-4, -58, -41, -15, -47, 39, 88, 82})).replaceAll(e0.m.h(new byte[]{57, -127, 32, 19, 13, 44, -92, -124, 108, -105, 52, 13, 107, -115, 94, 24, -81, 110, -81, -29, -47, -116, 106, 24, -88, -62, -51, -77, -127, -30, 15, 123, -64, 62, -52, -121, ByteCompanionObject.MIN_VALUE, -34, 14, 68, 109, 110, -93, -30, -17, -116, 107, 24, -81, 110, -81, -29, -47, -116, 106, 25, -109, 111, -112, 27, 121, 99, -2, -108, 97, -59, 80, 79, 120}, new byte[]{17, -66, 28, 50, 81, 92, -33, -56}), e0.m.h(new byte[]{37, -55, -57, -33, 117, 52, -34, -95, 37, -61, -57, -40}, new byte[]{-11, 118, 23, 97, -91, -121, 15, 33})).replaceAll(e0.m.h(new byte[]{-102, -98, 75, -105, 55, -44, -65, -119, -49, -120, -89, 7, -69, 20, 20, 118, 98, 17, -89, 0, -69, 25, 20, 123, 98, 20, 87, 102, -43, 117, 70, 21, 6, 113, -62, 102, -48, 116, 113, 21, 15, 113, -49, 102, -34, -116, -5, -28, -18, -47, 12, -6, 22, -115}, new byte[]{-78, -95, 119, -74, 107, -92, -60, -59}), e0.m.h(new byte[]{-115, 43, -34, -54, Base64.padSymbol, 13, -98, -31, -115, 44, -34, -57, Base64.padSymbol, 6, -98, -21}, new byte[]{93, -102, 14, 122, -19, -66, 78, 81})).replaceAll(e0.m.h(new byte[]{-57, -118, 22, -125, 17, 93, -74, 79, -110, -100, -6, 29, -99, -104, 28, -125, 62, 50, -6, 18, -100, -81, 29, -67, 62, 50, -6, 31, 101, 18, -9, -46, 100, 101, -109, -34, -99, -109, 29, -80, 63, 11, 3, -126, 101, 18, -9, -45, 81, 100, -88, 115, -52, -3, 120, -45, 85, -55, -5, 45, -100, -92, 29, -69, 63, 15, 3, -118, 114, 12, -111, 115, -108, -7, 87, -117}, new byte[]{-17, -75, 42, -94, 77, 45, -51, 3}), e0.m.h(new byte[]{54, -40, -40, 119, 58, -74, 37, 73, 54, -39, -39, 64, 59, -120, 37, 71}, new byte[]{-26, 105, 8, -57, -21, 54, -11, -3})).replaceAll(e0.m.h(new byte[]{52, 95, 36, -50, 25, 69, 87, 85, 97, 73, -55, 107, -107, -117, -3, -103, -51, -30, -56, 81, -108, -78, -4, -93, 52, 95, 34, 63, -11, 73, -3, -102, 96, -80, -83, -109, -107, -117, -4, -96, 53, 72, 39, -50, 25, 69, 87, 85, 97, 73}, new byte[]{28, 96, 24, -17, 69, 53, 44, 25}), e0.m.h(new byte[]{11, -92, 91, 54, 88, -3, -3, 117}, new byte[]{-37, 26, -117, -116, -120, 64, 45, -53})).replaceAll(e0.m.h(new byte[]{76, -85, 109, 125, -113, 101, 92, -9, 25, -67, 121, 99, -23, -59, -99, 107, -38, 68, -20, -116, 103, -59, -97, 106, -20, 68, -20, 32, 3, -81, -9, 5, -76, 41, -127, -24, 3, -96, -9, 2, -75, 19, -127, -28, 3, -81, 14, -109, 91, -75, 13, 44, -88, 89, 90, -110}, new byte[]{100, -108, 81, 92, -45, 21, 39, -69}), e0.m.h(new byte[]{-81, -121, 66, -104, -90, 93, -65, 92, -81, -123, 67, -96, -90, 88, -65, 86, -81, ByteCompanionObject.MIN_VALUE, 66, -109, -89, 96}, new byte[]{ByteCompanionObject.MAX_VALUE, Base64.padSymbol, -110, 38, 118, -32, 111, -24})).replaceAll(e0.m.h(new byte[]{-101, 120, 43, -82, 121, -112, 12, -7, -50, 110, 63, -80, 31, 48, -56, 101, 13, -105, -95, 95, -107, 49, -9, 100, 52, -105, -94, -13, -11, 86, -89, 5, 98, -57, -58, 8, -11, 85, 94, -99, -116, 102, 75, -1, 94, -84, 10, -100}, new byte[]{-77, 71, 23, -113, 37, -32, 119, -75}), e0.m.h(new byte[]{95, -63, -94, 3, -91, 56, 112, -58, 94, -10, -94, 3}, new byte[]{-114, 67, 114, -74, 117, -121, -96, 125})).replaceAll(e0.m.h(new byte[]{-51, -31, -82, 66, -25, -123, -95, 8, -104, -9, 66, -36, 107, 75, 10, -5, 52, 94, 66, -35, 106, 112, 10, -1, 53, 110, 66, -41, 107, 72, 10, -15, 53, 107, -70, 92, -102, -87, -86, 63, -87, -93, -69}, new byte[]{-27, -34, -110, 99, -69, -11, -38, 68}), e0.m.h(new byte[]{-107, -1, 100, -65, 98, 1, 126, -8, -107, -5, 101, -113, 98, 11, ByteCompanionObject.MAX_VALUE, -64, -107, -11, 101, -118}, new byte[]{69, 64, -75, 63, -78, -65, -81, 125}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String b(String str) {
        return a.a.q(str).replaceAll(e0.m.h(new byte[]{58, -25, 104, 19, 6, -111, 18, -8, 94, -91, 8, 66, 38, -125, 31, -34, 59, 8, -21, -29, -35, 29, -38, 83, -93, 8, -22, -29, -35, -19, 74, 83, -88, 8, -28, 78, -115, 119, -77, 0, 110, 8, -18, -30, -24, -79, -78, 57, -62, 96, 40, -30, -25, 29, -36, 83, -85, -15, 124, 13, 124, -106, 62, -13, 105, -108, 41, 110, 45, -74, 44, -2, 79, -15}, new byte[]{18, -40, 84, 50, 93, -51, 98, -125}), e0.m.h(new byte[]{-98, 53, -38, 108, 39, 65, -108, -103, -98, 52, -38, 108, -45, -56}, new byte[]{78, -118, 11, -20, -9, -7, 68, 40})).replaceAll(e0.m.h(new byte[]{114, -110, 95, -37, -71, 59, -103, -35, 22, -48, 63, -118, -103, 41, -108, -5, 115, 125, -34, 42, 82, -73, 91, 118, -30, -115, -77, 73, 50, -41, 56, 36, -118, 19, -78, 122, -54, 88, -56, -3, 6, -35, 24, -74, -97, 59, -103, -35, 20, -48, 62, -45}, new byte[]{90, -83, 99, -6, -30, 103, -23, -90}), e0.m.h(new byte[]{-85, 21, -63, 125, 15, 45, 78, -124, -85, 27, -63, 125, 14, 29, 78, -126, -86, 40}, new byte[]{123, -88, 17, -51, -33, -97, -98, 60}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String c(String str) {
        return a.a.q(str).replaceFirst(e0.m.h(new byte[]{-56, -22, -73, -54, -35, 31, 33, -34, 43, 19, 11, -39, 81, -36, 118}, new byte[]{-106, -62, -120, -16, 13, -81, 93, 14}), "").replaceAll(e0.m.h(new byte[]{19, -35, -16, -45, 45, 111, 60, 91, 19, -35, -16, 93, -20, -29, -6, 82, -21, 94, 26, 51, -127, ByteCompanionObject.MIN_VALUE, 103, 77, 1, 50, 113, 93, -23, 79, -97, -55, -21, 82, -29, -78, 113, -29, -2, -93, -80, -98, 26, 48, -127, -122, 111, -94, -121, 50, 116, 93, -25, -29, -6, -93, -77, 51, 70, -83, -127, -120, -97, -54, 18, -54, -11, -80, 13, 64, 51, 86, 18}, new byte[]{59, -30, -54, -115, 81, 51, 79, 114}), " ").replaceAll(e0.m.h(new byte[]{102, 115, -61, 97, 85, 8, -112, 84, 102, 115, -61, -17, -107, -124, 93, -83, -8, -100, 76, -18, -95, -123, 111, 1, -98, -16, 41, -127, -7, -30, 51, -56, -97, -50, 41, -118, 85, -124, 92, -83, -16, -100, 79, -17, -103, -124, 88, -84, -51, -100, 64, -18, -88, -123, 97, -83, -2, 48, 41, -117, -7, -28, 51, -49, -98, -4, 41, -122, 1, 107, -39, -84, -52, -100, 76, 22, 22, 40, 51, -62, -98, -14, 41, ByteCompanionObject.MIN_VALUE, -8, -44, 51, -61, -98, -3, 40, -68, -7, -31, 51, -63, 50, -100, 70, -17, -105, -124, 92, -84, -50, -100, 71, -17, -104, -123, 96, -83, -9, 48, 41, ByteCompanionObject.MIN_VALUE, -8, -44, 51, -61, -97, -60, 40, -68, 85, -124, 82, -84, -51, -100, 77, -18, -91, 116, 51, -55, -98, -14, 41, -114, -8, -44, -97, -83, -1, -99, 122, -17, -99, -123, 111, 93, -98, -8, 41, -127, -7, -27, 50, -3, -98, -4, -123, -18, -88, -124, 88, -84, -51, -99, 113, -17, -103, -124, 90, 1, -98, -13, 41, -127, -7, -30, 51, -51, -98, -9, 40, -68, -7, -19, -97, 13, 34, 41, -104, 76, 76, 40, ByteCompanionObject.MIN_VALUE, 18, 59, 32, -99, 31, 80, 59, -106, 1, 45, 45, -105, 31, 80, 59, -106, 1, 57, 35, -116, 83, 77, 116, -102, 18, 59, 48, -114, 86, 69, 56, -61, 4, 33, 57, -48, 23, 22, 105, -65, 14, 50, 104, -48}, new byte[]{78, 76, -7, 63, 41, 84, -29, 125}), " ").trim().replaceAll(e0.m.h(new byte[]{123, -17, -39}, new byte[]{39, -100, -14, 118, -126, -5, 92, 35}), " ");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static d1 d(InputStreamReader inputStreamReader) {
        t5.e eVarF = y5.k.m(inputStreamReader).f();
        u5.e eVar = eVarF.f5411b;
        if (eVarF.l(e0.m.h(new byte[]{-64, -81, -32, -100, 66, -54, 100}, new byte[]{-74, -54, -110, -17, 43, -91, 10, -23})).d() != 1) {
            j1.i.k(e0.m.h(new byte[]{29, -117, 22, -21, 100, 15, -124, -98, 57, -99, 85, -4, 99, 8, -101, -106, 36, -118}, new byte[]{75, -28, 117, -118, 6, 122, -24, -1}));
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = ((t5.a) eVar.get(e0.m.h(new byte[]{65, -71, -121, -122, -35}, new byte[]{51, -52, -21, -29, -82, 126, 81, 28}))).f5409b;
        int size = arrayList2.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList2.get(i9);
            i9++;
            t5.e eVarF2 = ((t5.b) obj).f();
            arrayList.add(new c1(eVarF2.l(e0.m.h(new byte[]{-58, 114, -29, -35, -85, -41, -5}, new byte[]{-74, 19, -105, -87, -50, -91, -107, -70})).g(), eVarF2.l(e0.m.h(new byte[]{-86, -34, 58, 95, -22, 63, 25, 68, -67, -43, 62}, new byte[]{-40, -69, 74, 51, -117, 92, 124, 41})).g()));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (eVar.containsKey(e0.m.h(new byte[]{-98, 116, 18, 108, -86, -15, 92}, new byte[]{-9, 26, 102, 9, -60, -123, 47, -8}))) {
            Iterator it = ((u5.c) ((t5.e) eVar.get(e0.m.h(new byte[]{-83, 118, -59, -61, 115, 74, -94}, new byte[]{-60, 24, -79, -90, 29, 62, -47, -100}))).f5411b.entrySet()).iterator();
            while (((u5.b) it).hasNext()) {
                u5.d dVarB = ((u5.b) it).b();
                if (!((String) dVarB.getKey()).matches(e0.m.h(new byte[]{3, 20, 91, -34, 103, 37, 123, 43, 91, 89, 14, -35, 96, 60, 115, 126, 17, 5, 74}, new byte[]{43, 43, 97, -69, 9, 80, 22, 87}))) {
                    j1.i.k(e0.m.h(new byte[]{-12, -101, 28, -48, 99, 75, 68, 86, -44, -101, 30, -44, 97, 86, 0, 29, -40, -116}, new byte[]{-67, -11, 106, -79, 15, 34, 32, 118}));
                    return null;
                }
                t5.e eVarF3 = ((t5.b) dVarB.getValue()).f();
                linkedHashMap.put((String) dVarB.getKey(), new y0(eVarF3.l(e0.m.h(new byte[]{-117, -54, -73, -66, -41, 114}, new byte[]{-17, -91, -38, -33, -66, 28, 59, 56})).g(), eVarF3.l(e0.m.h(new byte[]{32, 25, -61, -76}, new byte[]{90, 118, -83, -47, -77, -111, 78, -116})).g(), eVarF3.l(e0.m.h(new byte[]{32, -61, -53, -36, 108, -103, -105, -17, 33}, new byte[]{79, -77, -82, -82, 13, -19, -2, ByteCompanionObject.MIN_VALUE})).g(), eVarF3.l(e0.m.h(new byte[]{-92, -39, -26, -55, -20}, new byte[]{-46, -72, -118, -68, -119, -117, -89, 57})).a()));
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if (eVar.containsKey(e0.m.h(new byte[]{-22, 126, -59, -82, -37, 17, -121}, new byte[]{-102, 22, -73, -49, -88, 116, -12, -30}))) {
            Iterator it2 = ((u5.c) ((t5.e) eVar.get(e0.m.h(new byte[]{-38, -25, -15, -65, 74, 109, -86}, new byte[]{-86, -113, -125, -34, 57, 8, -39, -92}))).f5411b.entrySet()).iterator();
            while (((u5.b) it2).hasNext()) {
                u5.d dVarB2 = ((u5.b) it2).b();
                if (!((String) dVarB2.getKey()).matches(e0.m.h(new byte[]{55, -25, 54, -49, 110, 99, -30, 60, 111, -86, 99, -52, 105, 122, -22, 60, 126, -88, 124, -42, 115, 102, -29, 41, 107, -15, 54, -124, 43}, new byte[]{31, -40, 12, -86, 0, 22, -113, 64}))) {
                    j1.i.k(e0.m.h(new byte[]{42, -65, -121, -5, -64, 62, 120, -100, 19, -71, -125, -5, -33, 50, 60, -41, 6, -88}, new byte[]{99, -47, -15, -102, -84, 87, 28, -68}));
                    return null;
                }
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = ((t5.b) dVarB2.getValue()).e().f5409b;
                int size2 = arrayList4.size();
                int i10 = 0;
                while (i10 < size2) {
                    Object obj2 = arrayList4.get(i10);
                    i10++;
                    String strTrim = ((t5.b) obj2).g().trim();
                    if (strTrim.length() > 200 || strTrim.split(e0.m.h(new byte[]{53, 39, 39}, new byte[]{105, 84, 12, -63, 73, 26, 98, 12})).length < 2) {
                        j1.i.k(e0.m.h(new byte[]{-8, 99, -125, 56, 71, 69, 43, 85, -59, ByteCompanionObject.MAX_VALUE, -111, 42, 68}, new byte[]{-83, 13, -16, 89, 33, 32, 11, 37}));
                        return null;
                    }
                    arrayList3.add(strTrim);
                }
                linkedHashMap2.put((String) dVarB2.getKey(), Collections.unmodifiableList(arrayList3));
            }
        }
        return new d1(Collections.unmodifiableList(arrayList), linkedHashMap, linkedHashMap2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String e(String str) {
        String strC = c(b(str));
        for (c1 c1Var : this.f5609a) {
            strC = c1Var.f5606a.matcher(strC).replaceAll(c1Var.f5607b);
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(strC.trim().replaceAll(e0.m.h(new byte[]{110, -45, 89}, new byte[]{50, -96, 114, -112, 51, -25, -59, 2}), " ").split(e0.m.h(new byte[]{10, 90, 95}, new byte[]{86, 41, 116, 82, 107, 98, 106, 98}))));
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            while (true) {
                sb.append((CharSequence) it.next());
                if (!it.hasNext()) {
                    break;
                }
                sb.append((CharSequence) " ");
            }
        }
        return sb.toString();
    }
}
