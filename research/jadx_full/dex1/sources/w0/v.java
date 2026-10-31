package w0;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5774a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f5775b;
    public final d1 c;
    public final i1 d;
    public final a5.h e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b1.m f5776f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f5777g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f5778h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:59:0x01c2  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11, types: [int] */
    /* JADX WARN: Type inference failed for: r4v18 */
    public v(String str, List list, d1 d1Var) {
        boolean z8;
        boolean z9;
        b1.m mVar;
        boolean z10;
        String str2 = str;
        this.f5774a = str2;
        this.f5775b = list;
        this.c = d1Var;
        this.d = new i1(str2, "");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(j0.f.g(((u) it.next()).f5768b));
        }
        Map map = d1Var.f5610b;
        String[][] strArr = h1.f5651a;
        a5.h hVarP = a.a.p(str2, linkedHashSet, map);
        String str3 = (String) hVarP.e;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        if (((z0) hVarP.c) == z0.d && str3.equals(e0.m.h(new byte[]{-36, -37, -38, 14, -38, 68, -105, 18, -34, -62, -52, 15, -46, 94, -103, 34, -33}, new byte[]{-79, -78, -87, 125, -77, 42, -16, 77})) && !hVarP.i()) {
            String[][] strArr2 = h1.f5651a;
            int length = strArr2.length;
            String strH = "";
            int i9 = 0;
            while (i9 < length) {
                String[] strArr3 = strArr2[i9];
                a5.h hVarP2 = a.a.p(strArr3[1] + " " + str2, linkedHashSet, map);
                String str4 = (String) hVarP2.e;
                String str5 = (String) hVarP2.d;
                Map map2 = map;
                String str6 = strArr3[0];
                c5.e eVar = new c5.e(19);
                arrayList.add(eVar);
                if (((z0) hVarP2.c) == z0.f5832b) {
                    if (!linkedHashMap.containsKey(str5)) {
                        linkedHashMap.put(str5, eVar);
                    }
                } else if (str4.equals(e0.m.h(new byte[]{-7, -113, 51, -38, -9, -44, 13, 91, -26, -102, 32, -36, -14}, new byte[]{-118, -1, 86, -71, -98, -78, 116, 4}))) {
                    strH = str4;
                }
                i9++;
                str2 = str;
                map = map2;
            }
            z8 = false;
            if (!strH.isEmpty()) {
                linkedHashMap.clear();
            }
            if (strH.isEmpty()) {
                z9 = true;
                if (linkedHashMap.size() == 1) {
                    linkedHashMap.clear();
                    strH = e0.m.h(new byte[]{-115, 78, 72, 12, 25, -37, 30, -4, -115, 69, 85, 13, 32, -46, 7, -6, -106, 65, 79, 16, 16, -45, 40, -2, -120, 84, 94, 11, 17, -36, 3, -10, -110, 69, 72}, new byte[]{-28, 32, 59, 121, ByteCompanionObject.MAX_VALUE, -67, 119, -97});
                }
            } else {
                z9 = true;
            }
            mVar = new b1.m(hVarP, linkedHashMap, arrayList, strH.isEmpty() ? str3 : strH);
        } else {
            z8 = false;
            z9 = true;
            mVar = new b1.m(hVarP, linkedHashMap, arrayList, str3);
        }
        this.f5776f = mVar;
        a5.h hVar = (a5.h) mVar.c;
        this.e = hVar;
        boolean z11 = (((z0) hVar.c) == z0.d && ((String) hVar.e).equals(e0.m.h(new byte[]{-121, -95, -103, 109, 67, 0, -4, 64, -123, -72, -113, 108, 75, 26, -14, 112, -124}, new byte[]{-22, -56, -22, 30, 42, 110, -101, 31}))) ? z9 : z8;
        this.f5777g = z11;
        if (z11) {
            String strA = d1.a(str);
            if (strA.matches(e0.m.h(new byte[]{6, -68, -34, -58, 123, -50, -101, -84, 91, -65, -34, -58, 123, 64, 88, 33, -88, 70, 72, 41, -13, 64, 82, 33, -88, -54, -122, -126, 13, -19, -51, -116, -8, 41, 39, 121, -111, 46, 55, 66, -8, 35, 39, 121, -112, 28, -101, 32, -106, 71, 112, 41, -12, 64, 90, 32, -112, -22, 38, 71, -112, 22, 55, 69, -8, 43, 38, 65, -112, 18, 54, 124, 84, 70, 72, 40, -64, 64, 91, 32, -106, 71, 116, 40, -63, -52, -105, -117, 100, -21, -36, -123, -111, 46, 54, 113, -8, 42, 38, 71, -112, 18, 54, 112, -8, 46, -118, 41, -2, 64, 89, 33, -87, 70, 74, 41, -1, 65, 101, 33, -88, -54, -122, -126, 13, -19, -51, -116, -8, 41, 38, 71, -112, 17, 55, 76, -8, 40, 39, 123, -112, 16, 55, 72, 84, 70, 73, 41, -1, 65, 96, 32, -112, 70, 75, -91, 49, -21, -85, -115, 2, -22, 39, 121, -111, 37, 55, 76, -8, 40, 38, 68, -112, 18, -69, ByteCompanionObject.MIN_VALUE, 83, -38, -117, -45, Base64.padSymbol, 64, 89, 33, -86, 71, 118, 41, -12, 64, 91, 32, -106, 70, 75, 40, -61, -52, -105, -117, 100, -21, -36, -123, -111, 47, 55, 78, -8, 42, 38, 71, -111, 41, -101, 32, -102, 71, 125, 41, -3, 64, 89, 32, -111, -22, 38, 69, -111, 46, 55, 73, 84, 70, 73, 40, -63, 64, 89, 33, -86, 71, 118, -91, 49, -21, -85, -115, 2, -22, 38, 70, -112, 16, 55, 78, -7, 20, 39, 121, -111, 40, -101, 32, -97, 70, 70, 41, -3, 64, 82, 32, -107, -54, -122, -126, 13, -19, -51, -116, -7, 22, 38, 73, -111, 39, 55, 65, -8, 35, 38, 64, Base64.padSymbol, 65, 102, 32, -109, 70, 72, 41, -3, -52, -105, -117, 100, -21, -36, -123, -111, 39, 55, 64, -8, 39, 38, 66, -111, 46, 55, 74, 116, -26, -115, -75, 60, -70, -101, 33, -88, 70, 70, 41, -10, 64, 86, 32, -109, 70, 72, 41, -5, -52, -105, -117, 100, -21, -36, -123, -111, 39, 55, 64, -8, 41, 39, 121, -111, 40, -101, 32, -106, 71, 116, 41, -1, 64, 88, 33, -88, 70, 78, -123, -111, 39, 55, 64, -8, 41, 38, 76, -112, 16, -69, ByteCompanionObject.MIN_VALUE, 83, -38, -117, -45, Base64.padSymbol, 64, 89, 33, -86, 70, 73, 41, -12, 65, 103, -84, 88, -19, -70, -124, 107, -20, -124, -104, 77, -11, -99, -123, 40, -2, -108, ByteCompanionObject.MIN_VALUE, 77, -11, -126, -123, 45, -1, -120, -101, 84, -28, -109, -119, 32, -7, -107, -116, 78, -1, -114, -123, 54, -15, -108, -104, 84, -11, -102, -100, 32, -2, -101, -126, 77, -26, -102, -104, 34, -11, -101, -110, 90, -13, -105, -110, Base64.padSymbol, -4, -120, -109, 67, -22, -125, -105, 45, -1, -124, -101, 84, -13, ByteCompanionObject.MIN_VALUE, -104, 45, -27, -122, -124, 77, -65, -34, -58, 123, -52, -108, -34, 2, -22, -46, -48}, new byte[]{40, -106, -10, -7, 65, -112, -25, -16}))) {
                z10 = z8;
            } else {
                String[] strArrSplit = strA.replaceFirst(e0.m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 107, -57, -113, 69, 80, 11, -126, 91, -109, 70, 100, -22, -66, -78, 47, 14, -2, 41, 54, -67, -39, -31, -18, 14, -3, -124, 101, -48, -65, -127, -125, 106, -109, 70, -55, -67, -48, -32, -45, 14, -3, 41, Base64.padSymbol, -68, -20, 77, -125, 98, -109, 69, 101, -40, 19, -32, -47, 15, -56, -124, -36, 77, 24, 80, Base64.padSymbol, -86, 99, -116, -38, 17, 6, 17, Base64.padSymbol, -69, 38, -100, -107, 25, 0, 77, 58, -2, 52, -105, -64, 1, 11, 17, 63, -73, 40, -99, -107, 25, 0, 24, 15, -83, 104, -47, -98}, new byte[]{-34, 67, -8, -75, 109, 111, 49, 83}), "").split(e0.m.h(new byte[]{-27, -18, -11}, new byte[]{-71, -99, -34, -88, Base64.padSymbol, -14, 14, -106}));
                if (strArrSplit.length < 2) {
                    z10 = z8;
                } else {
                    int length2 = strArrSplit.length;
                    for (?? r9 = z8; r9 < length2; r9++) {
                        if (j1.g(strArrSplit[r9])) {
                            z10 = z9;
                        }
                    }
                    z10 = z8;
                }
            }
        } else {
            z10 = z8;
        }
        this.f5778h = z10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean a(u uVar) {
        if (!this.f5777g) {
            i1 i1Var = uVar.e;
            Pattern pattern = j1.f5664a;
            i1 i1Var2 = this.d;
            boolean z8 = i1Var2.e;
            String str = i1Var2.f5657f;
            if (z8 && !str.equals(e0.m.h(new byte[]{-83, 48, 50, 116, 43, 7, -73, 58, -89, 49, 59}, new byte[]{-50, 95, 92, 18, 71, 110, -44, 78})) && ((str.isEmpty() || !i1Var.f5660i) && i1Var2.f5655a.equals(i1Var.f5655a) && i1Var2.c.equals(i1Var.c) && str.equals(i1Var.f5657f) && ((!str.equals(e0.m.h(new byte[]{75, -104, 85, -118, 22, 63, 34}, new byte[]{40, -12, 32, -7, 98, 90, 80, -57})) || i1Var2.f5658g.equals(i1Var.f5658g)) && (str.isEmpty() || i1Var2.f5659h.equals(i1Var.f5659h))))) {
                int i9 = i1Var2.d;
                int i10 = i1Var.d;
                if (i9 == 0 || i9 == i10) {
                    ArrayList arrayList = i1Var2.f5656b;
                    ArrayList arrayList2 = i1Var.f5656b;
                    int size = arrayList.size();
                    int i11 = 0;
                    while (i11 < size) {
                        Object obj = arrayList.get(i11);
                        i11++;
                        String str2 = (String) obj;
                        int size2 = arrayList2.size();
                        int i12 = 0;
                        while (i12 < size2) {
                            Object obj2 = arrayList2.get(i12);
                            i12++;
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
        } else if (this.f5778h) {
            if (((Map) this.f5776f.e).containsKey(j0.f.g(uVar.f5768b))) {
                return true;
            }
        }
        return false;
    }
}
