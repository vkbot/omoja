package p225w0;

import ai.onnxruntime.C0077d;
import com.example.navistart.cores.BTProxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: w0.w0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3497w0 {

    /* JADX INFO: renamed from: e */
    public static final Pattern f10246e = Pattern.compile(AbstractC1387m.m2421h(new byte[]{-115, 51, 112, 31, 73, -78, 12, -12, -90, 22, 98, 18, 111, -43}, new byte[]{-42, 109, 44, 111, 50, -2, 113, -88}));

    /* JADX INFO: renamed from: f */
    public static final Pattern f10247f = Pattern.compile(AbstractC1387m.m2421h(new byte[]{-109, -63, 11, 2, 119, 39, 4, 107, -5, Base64.padSymbol, -58}, new byte[]{-56, 17, -69, 47, -90, -88, 89, 16}));

    /* JADX INFO: renamed from: a */
    public final ArrayList f10248a = new ArrayList();

    /* JADX INFO: renamed from: b */
    public final ArrayList f10249b = new ArrayList();

    /* JADX INFO: renamed from: c */
    public final HashMap f10250c = new HashMap();

    /* JADX INFO: renamed from: d */
    public final HashMap f10251d = new HashMap();

    public C3497w0(ArrayList arrayList) {
        String str;
        int i10;
        int size = arrayList.size();
        int i11 = 0;
        int i12 = 0;
        while (i12 < size) {
            Object obj = arrayList.get(i12);
            i12++;
            BTProxy.Contact contact = (BTProxy.Contact) obj;
            if (contact != null && (str = contact.name) != null) {
                String strM5504a = m5504a(str);
                if (!strM5504a.isEmpty()) {
                    int size2 = this.f10248a.size();
                    this.f10248a.add(contact);
                    List list = (List) this.f10250c.computeIfAbsent(strM5504a, new C0077d(10));
                    if (list.size() < 6) {
                        list.add(contact);
                    }
                    ArrayList arrayList2 = new ArrayList();
                    String[] strArrSplit = strM5504a.split(" ");
                    int length = strArrSplit.length;
                    int i13 = i11;
                    while (i13 < length) {
                        String str2 = strArrSplit[i13];
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        linkedHashSet.add(str2);
                        if (f10247f.matcher(str2).matches()) {
                            String strSubstring = str2.substring(i11, str2.length() - 1);
                            if (str2.endsWith(AbstractC1387m.m2421h(new byte[]{-27, -5, 94, 96}, new byte[]{53, 78, -114, -39, -87, 75, -75, -73})) || str2.endsWith(AbstractC1387m.m2421h(new byte[]{-114, -84, 86, -30}, new byte[]{94, 20, -122, 91, 62, 57, -93, -73}))) {
                                i10 = size;
                                linkedHashSet.add(strSubstring.concat(AbstractC1387m.m2421h(new byte[]{-122, 120}, new byte[]{87, -10, 48, -97, 101, -3, -96, -46})));
                                linkedHashSet.add(strSubstring.concat(AbstractC1387m.m2421h(new byte[]{53, 1}, new byte[]{-28, -114, 52, 51, 30, -97, 31, -39})));
                            } else if (str2.endsWith(AbstractC1387m.m2421h(new byte[]{-87, -82}, new byte[]{121, 30, -60, -81, -77, 77, -84, 96}))) {
                                i10 = size;
                                String[] strArr = {AbstractC1387m.m2421h(new byte[]{-71, -57}, new byte[]{105, 114, 87, -90, -110, 28, -86, 7}), AbstractC1387m.m2421h(new byte[]{-97, -120}, new byte[]{78, 11, 0, 34, 59, -57, -119, 38}), AbstractC1387m.m2421h(new byte[]{34, -106, 21, -100}, new byte[]{-14, 40, -59, 37, 6, -15, -13, -104}), AbstractC1387m.m2421h(new byte[]{-113, -12}, new byte[]{94, ByteCompanionObject.MAX_VALUE, -119, 57, -98, 9, 24, -79}), AbstractC1387m.m2421h(new byte[]{-87, -54}, new byte[]{121, 114, -50, -125, -28, -117, 70, -99})};
                                for (int i14 = 0; i14 < 5; i14++) {
                                    linkedHashSet.add(strSubstring + strArr[i14]);
                                }
                            } else {
                                i10 = size;
                                if (str2.endsWith(AbstractC1387m.m2421h(new byte[]{-65, -117}, new byte[]{110, 4, 16, 106, 40, 25, 85, -89}))) {
                                    linkedHashSet.add(strSubstring.concat(AbstractC1387m.m2421h(new byte[]{72, -58}, new byte[]{-104, 115, 84, -42, 63, 64, -83, -113})));
                                    linkedHashSet.add(strSubstring.concat(AbstractC1387m.m2421h(new byte[]{37, -25}, new byte[]{-12, 105, 123, -55, -118, 25, -109, 67})));
                                } else if (str2.endsWith(AbstractC1387m.m2421h(new byte[]{-19, 55}, new byte[]{60, -69, -51, -6, 9, -39, 8, -93}))) {
                                    linkedHashSet.add(strSubstring.concat(AbstractC1387m.m2421h(new byte[]{49, -23}, new byte[]{-32, 103, 41, -31, 41, -11, -102, -76})));
                                    linkedHashSet.add(strSubstring.concat(AbstractC1387m.m2421h(new byte[]{-44, 8}, new byte[]{4, -80, -79, -50, 120, -84, -44, 70})));
                                } else if (AbstractC1387m.m2421h(new byte[]{-107, 70, 125, 7, 7, -6, -73, -69, -107, 65, 125, 2, 7, -13, -73, -76, -107, 75, 125, 8, 7, -10, -74, -113, -108, 118, 124, 55, 6, -51, -74, -118, -108, 113, 124, 50, 6, -63, -74, -122}, new byte[]{69, -9, -83, -75, -41, 73, 103, 15}).indexOf(str2.charAt(str2.length() - 1)) >= 0) {
                                    linkedHashSet.add(str2.concat(AbstractC1387m.m2421h(new byte[]{1, 17}, new byte[]{-48, -110, 5, -24, 24, 16, 38, -113})));
                                    linkedHashSet.add(str2.concat(AbstractC1387m.m2421h(new byte[]{-29, 67}, new byte[]{51, -13, -78, -74, 69, -17, -106, 95})));
                                }
                            }
                        } else {
                            i10 = size;
                        }
                        arrayList2.add(linkedHashSet);
                        Iterator it = linkedHashSet.iterator();
                        while (it.hasNext()) {
                            ((Set) this.f10251d.computeIfAbsent((String) it.next(), new C0077d(11))).add(Integer.valueOf(size2));
                        }
                        i13++;
                        size = i10;
                        i11 = 0;
                    }
                    this.f10249b.add(arrayList2);
                    size = size;
                    i11 = 0;
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static String m5504a(String str) {
        if (str == null) {
            return "";
        }
        return f10246e.matcher(str.toLowerCase(Locale.ROOT).replace((char) 1105, (char) 1077)).replaceAll(" ").trim();
    }
}
