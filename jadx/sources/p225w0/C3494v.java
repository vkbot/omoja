package p225w0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p000a.AbstractC0000a;
import p006a5.C0023h;
import p016b1.C0872m;
import p030c5.C0990e;
import p047e0.AbstractC1387m;
import p098j0.AbstractC1920f;

/* JADX INFO: renamed from: w0.v */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3494v {

    /* JADX INFO: renamed from: a */
    public final String f10224a;

    /* JADX INFO: renamed from: b */
    public final List f10225b;

    /* JADX INFO: renamed from: c */
    public final C3451d1 f10226c;

    /* JADX INFO: renamed from: d */
    public final C3466i1 f10227d;

    /* JADX INFO: renamed from: e */
    public final C0023h f10228e;

    /* JADX INFO: renamed from: f */
    public final C0872m f10229f;

    /* JADX INFO: renamed from: g */
    public final boolean f10230g;

    /* JADX INFO: renamed from: h */
    public final boolean f10231h;

    /* JADX WARN: Code duplicated, block: B:59:0x01c2  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11, types: [int] */
    /* JADX WARN: Type inference failed for: r4v18 */
    public C3494v(String str, List list, C3451d1 c3451d1) {
        boolean z9;
        boolean z10;
        C0872m c0872m;
        boolean z11;
        String str2 = str;
        this.f10224a = str2;
        this.f10225b = list;
        this.f10226c = c3451d1;
        this.f10227d = new C3466i1(str2, "");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(AbstractC1920f.m3009g(((C3492u) it.next()).f10215b));
        }
        Map map = c3451d1.f9948b;
        String[][] strArr = AbstractC3463h1.f10012a;
        C0023h c0023hM15p = AbstractC0000a.m15p(str2, linkedHashSet, map);
        String str3 = (String) c0023hM15p.f83e;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        if (((EnumC3503z0) c0023hM15p.f81c) == EnumC3503z0.f10332d && str3.equals(AbstractC1387m.m2421h(new byte[]{-36, -37, -38, 14, -38, 68, -105, 18, -34, -62, -52, 15, -46, 94, -103, 34, -33}, new byte[]{-79, -78, -87, 125, -77, 42, -16, 77})) && !c0023hM15p.m74i()) {
            String[][] strArr2 = AbstractC3463h1.f10012a;
            int length = strArr2.length;
            String strM2421h = "";
            int i10 = 0;
            while (i10 < length) {
                String[] strArr3 = strArr2[i10];
                C0023h c0023hM15p2 = AbstractC0000a.m15p(strArr3[1] + " " + str2, linkedHashSet, map);
                String str4 = (String) c0023hM15p2.f83e;
                String str5 = (String) c0023hM15p2.f82d;
                Map map2 = map;
                String str6 = strArr3[0];
                C0990e c0990e = new C0990e(19);
                arrayList.add(c0990e);
                if (((EnumC3503z0) c0023hM15p2.f81c) == EnumC3503z0.f10330b) {
                    if (!linkedHashMap.containsKey(str5)) {
                        linkedHashMap.put(str5, c0990e);
                    }
                } else if (str4.equals(AbstractC1387m.m2421h(new byte[]{-7, -113, 51, -38, -9, -44, 13, 91, -26, -102, 32, -36, -14}, new byte[]{-118, -1, 86, -71, -98, -78, 116, 4}))) {
                    strM2421h = str4;
                }
                i10++;
                str2 = str;
                map = map2;
            }
            z9 = false;
            if (!strM2421h.isEmpty()) {
                linkedHashMap.clear();
            }
            if (strM2421h.isEmpty()) {
                z10 = true;
                if (linkedHashMap.size() == 1) {
                    linkedHashMap.clear();
                    strM2421h = AbstractC1387m.m2421h(new byte[]{-115, 78, 72, 12, 25, -37, 30, -4, -115, 69, 85, 13, 32, -46, 7, -6, -106, 65, 79, 16, 16, -45, 40, -2, -120, 84, 94, 11, 17, -36, 3, -10, -110, 69, 72}, new byte[]{-28, 32, 59, 121, ByteCompanionObject.MAX_VALUE, -67, 119, -97});
                }
            } else {
                z10 = true;
            }
            c0872m = new C0872m(c0023hM15p, linkedHashMap, arrayList, strM2421h.isEmpty() ? str3 : strM2421h);
        } else {
            z9 = false;
            z10 = true;
            c0872m = new C0872m(c0023hM15p, linkedHashMap, arrayList, str3);
        }
        this.f10229f = c0872m;
        C0023h c0023h = (C0023h) c0872m.f601c;
        this.f10228e = c0023h;
        boolean z12 = (((EnumC3503z0) c0023h.f81c) == EnumC3503z0.f10332d && ((String) c0023h.f83e).equals(AbstractC1387m.m2421h(new byte[]{-121, -95, -103, 109, 67, 0, -4, 64, -123, -72, -113, 108, 75, 26, -14, 112, -124}, new byte[]{-22, -56, -22, 30, 42, 110, -101, 31}))) ? z10 : z9;
        this.f10230g = z12;
        if (z12) {
            String strM5392a = C3451d1.m5392a(str);
            if (strM5392a.matches(AbstractC1387m.m2421h(new byte[]{6, -68, -34, -58, 123, -50, -101, -84, 91, -65, -34, -58, 123, 64, 88, 33, -88, 70, 72, 41, -13, 64, 82, 33, -88, -54, -122, -126, 13, -19, -51, -116, -8, 41, 39, 121, -111, 46, 55, 66, -8, 35, 39, 121, -112, 28, -101, 32, -106, 71, 112, 41, -12, 64, 90, 32, -112, -22, 38, 71, -112, 22, 55, 69, -8, 43, 38, 65, -112, 18, 54, 124, 84, 70, 72, 40, -64, 64, 91, 32, -106, 71, 116, 40, -63, -52, -105, -117, 100, -21, -36, -123, -111, 46, 54, 113, -8, 42, 38, 71, -112, 18, 54, 112, -8, 46, -118, 41, -2, 64, 89, 33, -87, 70, 74, 41, -1, 65, 101, 33, -88, -54, -122, -126, 13, -19, -51, -116, -8, 41, 38, 71, -112, 17, 55, 76, -8, 40, 39, 123, -112, 16, 55, 72, 84, 70, 73, 41, -1, 65, 96, 32, -112, 70, 75, -91, 49, -21, -85, -115, 2, -22, 39, 121, -111, 37, 55, 76, -8, 40, 38, 68, -112, 18, -69, ByteCompanionObject.MIN_VALUE, 83, -38, -117, -45, Base64.padSymbol, 64, 89, 33, -86, 71, 118, 41, -12, 64, 91, 32, -106, 70, 75, 40, -61, -52, -105, -117, 100, -21, -36, -123, -111, 47, 55, 78, -8, 42, 38, 71, -111, 41, -101, 32, -102, 71, 125, 41, -3, 64, 89, 32, -111, -22, 38, 69, -111, 46, 55, 73, 84, 70, 73, 40, -63, 64, 89, 33, -86, 71, 118, -91, 49, -21, -85, -115, 2, -22, 38, 70, -112, 16, 55, 78, -7, 20, 39, 121, -111, 40, -101, 32, -97, 70, 70, 41, -3, 64, 82, 32, -107, -54, -122, -126, 13, -19, -51, -116, -7, 22, 38, 73, -111, 39, 55, 65, -8, 35, 38, 64, Base64.padSymbol, 65, 102, 32, -109, 70, 72, 41, -3, -52, -105, -117, 100, -21, -36, -123, -111, 39, 55, 64, -8, 39, 38, 66, -111, 46, 55, 74, 116, -26, -115, -75, 60, -70, -101, 33, -88, 70, 70, 41, -10, 64, 86, 32, -109, 70, 72, 41, -5, -52, -105, -117, 100, -21, -36, -123, -111, 39, 55, 64, -8, 41, 39, 121, -111, 40, -101, 32, -106, 71, 116, 41, -1, 64, 88, 33, -88, 70, 78, -123, -111, 39, 55, 64, -8, 41, 38, 76, -112, 16, -69, ByteCompanionObject.MIN_VALUE, 83, -38, -117, -45, Base64.padSymbol, 64, 89, 33, -86, 70, 73, 41, -12, 65, 103, -84, 88, -19, -70, -124, 107, -20, -124, -104, 77, -11, -99, -123, 40, -2, -108, ByteCompanionObject.MIN_VALUE, 77, -11, -126, -123, 45, -1, -120, -101, 84, -28, -109, -119, 32, -7, -107, -116, 78, -1, -114, -123, 54, -15, -108, -104, 84, -11, -102, -100, 32, -2, -101, -126, 77, -26, -102, -104, 34, -11, -101, -110, 90, -13, -105, -110, Base64.padSymbol, -4, -120, -109, 67, -22, -125, -105, 45, -1, -124, -101, 84, -13, ByteCompanionObject.MIN_VALUE, -104, 45, -27, -122, -124, 77, -65, -34, -58, 123, -52, -108, -34, 2, -22, -46, -48}, new byte[]{40, -106, -10, -7, 65, -112, -25, -16}))) {
                z11 = z9;
            } else {
                String[] strArrSplit = strM5392a.replaceFirst(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, 107, -57, -113, 69, 80, 11, -126, 91, -109, 70, 100, -22, -66, -78, 47, 14, -2, 41, 54, -67, -39, -31, -18, 14, -3, -124, 101, -48, -65, -127, -125, 106, -109, 70, -55, -67, -48, -32, -45, 14, -3, 41, Base64.padSymbol, -68, -20, 77, -125, 98, -109, 69, 101, -40, 19, -32, -47, 15, -56, -124, -36, 77, 24, 80, Base64.padSymbol, -86, 99, -116, -38, 17, 6, 17, Base64.padSymbol, -69, 38, -100, -107, 25, 0, 77, 58, -2, 52, -105, -64, 1, 11, 17, 63, -73, 40, -99, -107, 25, 0, 24, 15, -83, 104, -47, -98}, new byte[]{-34, 67, -8, -75, 109, 111, 49, 83}), "").split(AbstractC1387m.m2421h(new byte[]{-27, -18, -11}, new byte[]{-71, -99, -34, -88, Base64.padSymbol, -14, 14, -106}));
                if (strArrSplit.length < 2) {
                    z11 = z9;
                } else {
                    int length2 = strArrSplit.length;
                    for (?? r9 = z9; r9 < length2; r9++) {
                        if (AbstractC3469j1.m5431g(strArrSplit[r9])) {
                            z11 = z10;
                        }
                    }
                    z11 = z9;
                }
            }
        } else {
            z11 = z9;
        }
        this.f10231h = z11;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m5501a(C3492u c3492u) {
        if (!this.f10230g) {
            C3466i1 c3466i1 = c3492u.f10218e;
            Pattern pattern = AbstractC3469j1.f10033a;
            C3466i1 c3466i2 = this.f10227d;
            boolean z9 = c3466i2.f10023e;
            String str = c3466i2.f10024f;
            if (z9 && !str.equals(AbstractC1387m.m2421h(new byte[]{-83, 48, 50, 116, 43, 7, -73, 58, -89, 49, 59}, new byte[]{-50, 95, 92, 18, 71, 110, -44, 78})) && ((str.isEmpty() || !c3466i1.f10027i) && c3466i2.f10019a.equals(c3466i1.f10019a) && c3466i2.f10021c.equals(c3466i1.f10021c) && str.equals(c3466i1.f10024f) && ((!str.equals(AbstractC1387m.m2421h(new byte[]{75, -104, 85, -118, 22, 63, 34}, new byte[]{40, -12, 32, -7, 98, 90, 80, -57})) || c3466i2.f10025g.equals(c3466i1.f10025g)) && (str.isEmpty() || c3466i2.f10026h.equals(c3466i1.f10026h))))) {
                int i10 = c3466i2.f10022d;
                int i11 = c3466i1.f10022d;
                if (i10 == 0 || i10 == i11) {
                    ArrayList arrayList = c3466i2.f10020b;
                    ArrayList arrayList2 = c3466i1.f10020b;
                    int size = arrayList.size();
                    int i12 = 0;
                    while (i12 < size) {
                        Object obj = arrayList.get(i12);
                        i12++;
                        String str2 = (String) obj;
                        int size2 = arrayList2.size();
                        int i13 = 0;
                        while (i13 < size2) {
                            Object obj2 = arrayList2.get(i13);
                            i13++;
                            String str3 = (String) obj2;
                            if (str2.equals(str3)) {
                                return true;
                            }
                            if (str2.length() >= 5 && str3.length() >= 5 && str2.substring(0, Math.min(5, str2.length())).equals(str3.substring(0, Math.min(5, str3.length())))) {
                                return true;
                            }
                        }
                    }
                }
            }
        } else if (this.f10231h) {
            if (((Map) this.f10229f.f603e).containsKey(AbstractC1920f.m3009g(c3492u.f10215b))) {
                return true;
            }
        }
        return false;
    }
}
