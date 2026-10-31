package w0;

import com.example.navistart.cores.BTProxy$Contact;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class w0 {
    public static final Pattern e = Pattern.compile(e0.m.h(new byte[]{-115, 51, 112, 31, 73, -78, 12, -12, -90, 22, 98, 18, 111, -43}, new byte[]{-42, 109, 44, 111, 50, -2, 113, -88}));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Pattern f5790f = Pattern.compile(e0.m.h(new byte[]{-109, -63, 11, 2, 119, 39, 4, 107, -5, Base64.padSymbol, -58}, new byte[]{-56, 17, -69, 47, -90, -88, 89, 16}));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f5791a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f5792b = new ArrayList();
    public final HashMap c = new HashMap();
    public final HashMap d = new HashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w0(ArrayList arrayList) {
        String str;
        int i9;
        int size = arrayList.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            BTProxy$Contact bTProxy$Contact = (BTProxy$Contact) obj;
            if (bTProxy$Contact != null && (str = bTProxy$Contact.name) != null) {
                String strA = a(str);
                if (!strA.isEmpty()) {
                    int size2 = this.f5791a.size();
                    this.f5791a.add(bTProxy$Contact);
                    List list = (List) this.c.computeIfAbsent(strA, new ai.onnxruntime.d(10));
                    if (list.size() < 6) {
                        list.add(bTProxy$Contact);
                    }
                    ArrayList arrayList2 = new ArrayList();
                    String[] strArrSplit = strA.split(" ");
                    int length = strArrSplit.length;
                    int i12 = i10;
                    while (i12 < length) {
                        String str2 = strArrSplit[i12];
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        linkedHashSet.add(str2);
                        if (f5790f.matcher(str2).matches()) {
                            String strSubstring = str2.substring(i10, str2.length() - 1);
                            if (str2.endsWith(e0.m.h(new byte[]{-27, -5, 94, 96}, new byte[]{53, 78, -114, -39, -87, 75, -75, -73})) || str2.endsWith(e0.m.h(new byte[]{-114, -84, 86, -30}, new byte[]{94, 20, -122, 91, 62, 57, -93, -73}))) {
                                i9 = size;
                                linkedHashSet.add(strSubstring.concat(e0.m.h(new byte[]{-122, 120}, new byte[]{87, -10, 48, -97, 101, -3, -96, -46})));
                                linkedHashSet.add(strSubstring.concat(e0.m.h(new byte[]{53, 1}, new byte[]{-28, -114, 52, 51, 30, -97, 31, -39})));
                            } else if (str2.endsWith(e0.m.h(new byte[]{-87, -82}, new byte[]{121, 30, -60, -81, -77, 77, -84, 96}))) {
                                i9 = size;
                                String[] strArr = {e0.m.h(new byte[]{-71, -57}, new byte[]{105, 114, 87, -90, -110, 28, -86, 7}), e0.m.h(new byte[]{-97, -120}, new byte[]{78, 11, 0, 34, 59, -57, -119, 38}), e0.m.h(new byte[]{34, -106, 21, -100}, new byte[]{-14, 40, -59, 37, 6, -15, -13, -104}), e0.m.h(new byte[]{-113, -12}, new byte[]{94, ByteCompanionObject.MAX_VALUE, -119, 57, -98, 9, 24, -79}), e0.m.h(new byte[]{-87, -54}, new byte[]{121, 114, -50, -125, -28, -117, 70, -99})};
                                for (int i13 = 0; i13 < 5; i13++) {
                                    linkedHashSet.add(strSubstring + strArr[i13]);
                                }
                            } else {
                                i9 = size;
                                if (str2.endsWith(e0.m.h(new byte[]{-65, -117}, new byte[]{110, 4, 16, 106, 40, 25, 85, -89}))) {
                                    linkedHashSet.add(strSubstring.concat(e0.m.h(new byte[]{72, -58}, new byte[]{-104, 115, 84, -42, 63, 64, -83, -113})));
                                    linkedHashSet.add(strSubstring.concat(e0.m.h(new byte[]{37, -25}, new byte[]{-12, 105, 123, -55, -118, 25, -109, 67})));
                                } else if (str2.endsWith(e0.m.h(new byte[]{-19, 55}, new byte[]{60, -69, -51, -6, 9, -39, 8, -93}))) {
                                    linkedHashSet.add(strSubstring.concat(e0.m.h(new byte[]{49, -23}, new byte[]{-32, 103, 41, -31, 41, -11, -102, -76})));
                                    linkedHashSet.add(strSubstring.concat(e0.m.h(new byte[]{-44, 8}, new byte[]{4, -80, -79, -50, 120, -84, -44, 70})));
                                } else if (e0.m.h(new byte[]{-107, 70, 125, 7, 7, -6, -73, -69, -107, 65, 125, 2, 7, -13, -73, -76, -107, 75, 125, 8, 7, -10, -74, -113, -108, 118, 124, 55, 6, -51, -74, -118, -108, 113, 124, 50, 6, -63, -74, -122}, new byte[]{69, -9, -83, -75, -41, 73, 103, 15}).indexOf(str2.charAt(str2.length() - 1)) >= 0) {
                                    linkedHashSet.add(str2.concat(e0.m.h(new byte[]{1, 17}, new byte[]{-48, -110, 5, -24, 24, 16, 38, -113})));
                                    linkedHashSet.add(str2.concat(e0.m.h(new byte[]{-29, 67}, new byte[]{51, -13, -78, -74, 69, -17, -106, 95})));
                                }
                            }
                        } else {
                            i9 = size;
                        }
                        arrayList2.add(linkedHashSet);
                        Iterator it = linkedHashSet.iterator();
                        while (it.hasNext()) {
                            ((Set) this.d.computeIfAbsent((String) it.next(), new ai.onnxruntime.d(11))).add(Integer.valueOf(size2));
                        }
                        i12++;
                        size = i9;
                        i10 = 0;
                    }
                    this.f5792b.add(arrayList2);
                    size = size;
                    i10 = 0;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String a(String str) {
        if (str == null) {
            return "";
        }
        return e.matcher(str.toLowerCase(Locale.ROOT).replace((char) 1105, (char) 1077)).replaceAll(" ").trim();
    }
}
