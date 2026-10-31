package p047e0;

import com.google.protobuf.AbstractC1178q;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONObject;
import p078h0.C1652b;

/* JADX INFO: renamed from: e0.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1438x {

    /* JADX INFO: renamed from: a */
    public static final String f3464a = AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, 62, -22, 10, -115, 112, -28, -9, 7, 34, -12, 2, -107, 97, -46, -30, 55, 34, -29, 52, -112, 97, -31, -22, 59, 50, -17, 4, -115}, new byte[]{88, 70, -122, 107, -29, 4, -115, -113});

    /* JADX INFO: renamed from: b */
    public static final String f3465b = AbstractC1387m.m2421h(new byte[]{-31, 11, -30, -56, 55, -125, 66, 88, -37, 30, -17, -57, 44, -106, 71, ByteCompanionObject.MAX_VALUE, -31, 29, -23, -64, 55, -110}, new byte[]{-124, 115, -114, -87, 89, -9, 43, 32});

    /* JADX INFO: renamed from: c */
    public static final String f3466c = AbstractC1387m.m2421h(new byte[]{87, 112, 51, 58, -30, 126, 18, -40, 109, 101, 62, 53, -7, 107, 23, -1, 65, 124, 58, 62, -2, 99, 21, -57}, new byte[]{50, 8, 95, 91, -116, 10, 123, -96});

    /* JADX INFO: renamed from: d */
    public static final String f3467d = AbstractC1387m.m2421h(new byte[]{-98, 23, 75, -42, 2, 111, -90, 69, -92, 2, 70, -39, 25, 122, -93, 98, -120, 26, 84, -57, 9, 117, -68, 84, -108, 1, 120, -45, 13, 118, -65, 84, -107, 8}, new byte[]{-5, 111, 39, -73, 108, 27, -49, Base64.padSymbol});

    /* JADX INFO: renamed from: a */
    public static void m2483a() {
        int iLoadInt;
        if (m2484b() && (iLoadInt = C1652b.m2745o().loadInt(f3464a, 0)) >= 1 && iLoadInt <= 4) {
            if (m2485c(iLoadInt - 1, AbstractC1387m.m2421h(new byte[]{121, 28, -57, -124, -74, -9, -37, -73, 121, 11}, new byte[]{29, 110, -82, -14, -45, -88, -74, -40})) && iLoadInt == 4) {
                String[] strArr = {AbstractC1387m.m2421h(new byte[]{0, -62, -78, 73, -109, -125}, new byte[]{101, -84, -43, 32, -3, -26, -34, 110}), AbstractC1387m.m2421h(new byte[]{39, 80, -83, 44, -83, 86, 27, -69}, new byte[]{84, 36, -56, 73, -33, 63, 117, -36}), AbstractC1387m.m2421h(new byte[]{-90, -87, 48, -71, 14, 2, -114, -27, -70, -78, 28, -83, 10, 1, -115, -27, -69, -69}, new byte[]{-43, -36, 67, -55, 107, 108, -3, -116})};
                String[] strArr2 = {f3465b, f3466c, f3467d};
                for (int i10 = 0; i10 < 3; i10++) {
                    int iLoadInt2 = C1652b.m2745o().loadInt(strArr2[i10], 0);
                    if (m2486d(iLoadInt2, strArr[i10])) {
                        m2485c(iLoadInt2, strArr[i10]);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static boolean m2484b() {
        return AbstractC1387m.m2421h(new byte[]{64, 28, 107, -16, -56, 99, -31, 98, 64, 16}, new byte[]{5, 68, 39, -79, -122, 55, -88, 58}).equals(C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{11, 3, 53, 114, 94, 126, 3, 110, 36, 39}, new byte[]{72, 66, 103, 34, 44, 17, 101, 7}), ""));
    }

    /* JADX INFO: renamed from: c */
    public static boolean m2485c(int i10, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (AbstractC1387m.m2421h(new byte[]{82, -24, 75, 80, 18, 75, -68, 91, 82, -1}, new byte[]{54, -102, 34, 38, 119, 20, -47, 52}).equals(str)) {
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{-55, 47, -81}, new byte[]{-86, 66, -53, 39, -97, -120, -119, -110}), AbstractC1387m.m2421h(new byte[]{50, -84, 8, 68, 43, 39, 41, -114, 36, -106, 17, 116, 43, 48}, new byte[]{65, -55, 124, 27, 79, 85, 64, -8})).put(AbstractC1387m.m2421h(new byte[]{-113, 47, 36, 23, 113}, new byte[]{-7, 78, 72, 98, 20, 86, -73, -69}), i10);
            } else {
                jSONObject.put(AbstractC1387m.m2421h(new byte[]{87, -73, 105}, new byte[]{52, -38, 13, -47, 62, 104, 68, -64}), AbstractC1387m.m2421h(new byte[]{67, 45, 60, -46, 43, -90, -55, -95, 81, 36, 23, -18, 41, -87, -63, -67, 87}, new byte[]{48, 72, 72, -115, 70, -57, -89, -44})).put(AbstractC1387m.m2421h(new byte[]{102, 46, 119, -52, 93, -97}, new byte[]{5, 65, 25, -86, 52, -8, -72, -50}), new JSONObject().put(str, i10));
            }
            C1652b.m2734a();
            JSONObject jSONObjectM1618c = C1652b.m2736d().m1618c(jSONObject);
            C1652b.m2750v(AbstractC1387m.m2421h(new byte[]{53, 70, -116, 31, 93, 14, 41, -11, 80}, new byte[]{112, 62, -32, 126, 51, 122, 64, -115}) + str + AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE}, new byte[]{-67, 84, 3, -65, 40, 33, 68, -31}) + i10 + AbstractC1387m.m2421h(new byte[]{-50, 112}, new byte[]{-12, 80, -71, 15, 38, -82, -114, 33}) + jSONObjectM1618c);
            return jSONObjectM1618c != null && jSONObjectM1618c.optBoolean(AbstractC1387m.m2421h(new byte[]{36, -73, 80, 71, -125, -110, 121}, new byte[]{87, -62, 51, 36, -26, -31, 10, -122}), false);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            AbstractC1178q.m2087u(new byte[]{73, 103, -90, 18, 69, 126, -62, -21, 44}, new byte[]{12, 31, -54, 115, 43, 10, -85, -109}, sb, str);
            sb.append(AbstractC1387m.m2421h(new byte[]{-34, 51}, new byte[]{-28, 19, 99, 115, 33, -41, 98, -121}));
            sb.append(e);
            C1652b.m2750v(sb.toString());
            return false;
        }
    }

    /* JADX INFO: renamed from: d */
    public static boolean m2486d(int i10, String str) {
        if (AbstractC1387m.m2421h(new byte[]{-102, -26, 97, -24, 90, -94}, new byte[]{-1, -120, 6, -127, 52, -57, -125, 85}).equals(str)) {
            if (i10 < 1 || i10 > 3) {
                return false;
            }
        } else if (AbstractC1387m.m2421h(new byte[]{-4, -65, -127, 85, -16, 101, 60, 40}, new byte[]{-113, -53, -28, 48, -126, 12, 82, 79}).equals(str)) {
            if (i10 != 1 && i10 != 2) {
                return false;
            }
        } else {
            if (!AbstractC1387m.m2421h(new byte[]{-87, -103, 57, 29, 81, 56, -94, 10, -75, -126, 21, 9, 85, 59, -95, 10, -76, -117}, new byte[]{-38, -20, 74, 109, 52, 86, -47, 99}).equals(str)) {
                return false;
            }
            if (i10 != 1 && i10 != 3) {
                return false;
            }
        }
        return true;
    }
}
