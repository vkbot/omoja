package p245y0;

import android.os.Build;
import com.google.protobuf.AbstractC1178q;
import java.util.UUID;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONException;
import org.json.JSONObject;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: y0.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3632j {

    /* JADX INFO: renamed from: a */
    public static final UUID f10785a;

    /* JADX INFO: renamed from: b */
    public static final String f10786b = AbstractC1387m.m2421h(new byte[]{-118, 80, -108, 13, -7}, new byte[]{-30, 53, -8, 97, -106, -36, 40, -30});

    /* JADX INFO: renamed from: c */
    public static final String f10787c;

    /* JADX INFO: renamed from: d */
    public static final String f10788d;

    /* JADX INFO: renamed from: e */
    public static final String f10789e;

    /* JADX INFO: renamed from: f */
    public static final String f10790f;

    /* JADX INFO: renamed from: g */
    public static final String f10791g;

    static {
        AbstractC1387m.m2421h(new byte[]{-105, -84, 102, -125, 50, 100, -64, -90, -111}, new byte[]{-12, -60, 7, -17, 94, 1, -82, -63});
        f10787c = AbstractC1387m.m2421h(new byte[]{-93, 39, -7, -14}, new byte[]{-62, 82, -115, -102, 69, 35, -107, 112});
        AbstractC1387m.m2421h(new byte[]{83, 99, 62, 96, 16, 121, 95}, new byte[]{50, 22, 74, 8, 79, 22, 52, -102});
        AbstractC1387m.m2421h(new byte[]{26, -8, -51, -44, -8, -49, -5, -27, 18, -24, -35}, new byte[]{123, -115, -71, -68, -89, -85, -98, -117});
        AbstractC1387m.m2421h(new byte[]{105, -61, 11, 51, ByteCompanionObject.MIN_VALUE, -66, 14, 126, 107, -57, 19, 52, -116, -93, 29}, new byte[]{25, -94, 98, 65, -23, -48, 105, 33});
        f10788d = AbstractC1387m.m2421h(new byte[]{63, -79, -106, -111, 39, -26, 55, -67, 32, -74, -103, -122, 60}, new byte[]{79, -48, -1, -29, 78, -120, 80, -30});
        AbstractC1387m.m2421h(new byte[]{110, 56, 26, 89}, new byte[]{30, 81, 116, 62, -84, 21, 99, -111});
        AbstractC1387m.m2421h(new byte[]{-21, ByteCompanionObject.MAX_VALUE, -15, 98}, new byte[]{-101, 16, -97, 5, -7, 7, 54, 117});
        f10789e = AbstractC1387m.m2421h(new byte[]{47, 62, 116, -66}, new byte[]{75, 95, 0, -33, 117, 65, -46, 94});
        f10790f = AbstractC1387m.m2421h(new byte[]{-83, -35, 15}, new byte[]{-52, -66, 100, -23, 77, -94, -13, 40});
        f10791g = AbstractC1387m.m2421h(new byte[]{-72, 75, -112, -58, 111, -36}, new byte[]{-44, 42, -28, -93, 28, -88, -60, 68});
        AbstractC1387m.m2421h(new byte[]{-108, 29, -91, -80, 81, 106, -16, -126}, new byte[]{-26, 120, -55, -39, 48, 8, -100, -25});
        f10785a = UUID.fromString(AbstractC1387m.m2421h(new byte[]{93, -64, 65, -52, -50, 15, 98, 101, 72, -112, 18, -54, -107, 23, 103, 103, 93, -58, 89, -98, -101, 92, 98, 44, 82, -63, 23, -53, -107, 94, 103, 103, 93, -100, 77, -56}, new byte[]{101, -92, 116, -1, -83, 58, 83, 1}));
    }

    /* JADX INFO: renamed from: a */
    public static String m5809a(String str) {
        String str2 = f10787c;
        try {
            return m5810b(str2).put(AbstractC1387m.m2421h(new byte[]{55, 121, 85, 35, -8}, new byte[]{71, 11, 58, 76, -98, 118, 91, -108}), str).toString();
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: renamed from: b */
    public static JSONObject m5810b(String str) {
        return new JSONObject().put(AbstractC1387m.m2421h(new byte[]{-107, -61, -51, -102, -66, -28, 19}, new byte[]{-29, -90, -65, -23, -41, -117, 125, -82}), 2).put(AbstractC1387m.m2421h(new byte[]{8, 11, -45, ByteCompanionObject.MAX_VALUE}, new byte[]{124, 114, -93, 26, Base64.padSymbol, -2, -51, 0}), str).put(AbstractC1387m.m2421h(new byte[]{66, 21, -44, -36}, new byte[]{54, 124, -71, -71, -44, 35, 27, 52}), System.currentTimeMillis());
    }

    /* JADX INFO: renamed from: c */
    public static String m5811c(String str, String str2) {
        try {
            JSONObject jSONObjectM5810b = m5810b(str);
            jSONObjectM5810b.put(AbstractC1387m.m2421h(new byte[]{-90, 40, 119, 20}, new byte[]{-44, 71, 27, 113, 38, 42, 37, -11}), str2);
            return jSONObjectM5810b.toString();
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: renamed from: d */
    public static String m5812d(long j10, String str, String str2, String str3) {
        try {
            return m5810b(f10789e).put(AbstractC1387m.m2421h(new byte[]{16, 118, 39, -121, -26, -15, 84}, new byte[]{115, 30, 70, -23, -120, -108, 56, -74}), str).put(AbstractC1387m.m2421h(new byte[]{24, -38, 25, 28, -117, 67, 70, 121}, new byte[]{107, -65, 104, 105, -18, 45, 37, 28}), j10).put(AbstractC1387m.m2421h(new byte[]{106, -36, 62, 27, 29, 34, -55, -11}, new byte[]{14, -71, 82, 114, 107, 71, -69, -116}), str2).put(AbstractC1387m.m2421h(new byte[]{27, 9, -71, -75, 34, -40, 22}, new byte[]{107, 104, -64, -39, 77, -71, 114, 117}), str3).toString();
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: renamed from: e */
    public static String m5813e(String str, String str2) {
        try {
            return m5810b(f10786b).put(AbstractC1387m.m2421h(new byte[]{-68, -40, -32, -9}, new byte[]{-50, -73, -116, -110, 20, -33, 10, 53}), str).put(AbstractC1387m.m2421h(new byte[]{-10, -45, 69, 124, 108}, new byte[]{-104, -68, 43, 31, 9, 101, 11, -28}), str2).put(AbstractC1387m.m2421h(new byte[]{14, 100, 56, 45, 18, 96}, new byte[]{106, 1, 78, 68, 113, 5, -81, 49}), Build.MODEL).toString();
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: renamed from: f */
    public static String m5814f(String str) {
        String str2 = f10788d;
        try {
            return m5810b(str2).put(AbstractC1387m.m2421h(new byte[]{15, 40, -75, 114, -104, 60, -87, 101, 11, 38, -73, 101, -97}, new byte[]{ByteCompanionObject.MAX_VALUE, 73, -36, 0, -15, 82, -50, 58}), str).toString();
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: renamed from: g */
    public static C3631i m5815g(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        int iOptInt = jSONObject.optInt(AbstractC1387m.m2421h(new byte[]{-31, 72, -83, 115, -57, -9, 38}, new byte[]{-105, 45, -33, 0, -82, -104, 72, 82}), 0);
        if (iOptInt != 2) {
            throw new JSONException(AbstractC1178q.m2076j(new byte[]{-67, ByteCompanionObject.MAX_VALUE, 28, 72, 55, -112, -127, 10, -100, 116, 11, 29, 51, -110, -113, 22, -101, 97, 0, 79, 51, -64, -104, 29, -102, 98, 6, 82, 41, -38, -50}, new byte[]{-24, 17, 111, Base64.padSymbol, 71, -32, -18, 120}, new StringBuilder(), iOptInt));
        }
        String string = jSONObject.getString(AbstractC1387m.m2421h(new byte[]{-110, 120, 26, 118}, new byte[]{-26, 1, 106, 19, 60, -40, 24, -57}));
        jSONObject.optString(AbstractC1387m.m2421h(new byte[]{126, 72, -92, -88}, new byte[]{12, 39, -56, -51, -117, 93, -105, -105}), "");
        String strOptString = jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-4, 80, 86, 54, 24, 85, 56}, new byte[]{-97, 56, 55, 88, 118, 48, 84, -100}), "");
        long jOptLong = jSONObject.optLong(AbstractC1387m.m2421h(new byte[]{-66, 95, 113, -87, -103, -37, -51, 32}, new byte[]{-51, 58, 0, -36, -4, -75, -82, 69}), 0L);
        String strOptString2 = jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-110, -6, 60, 111, 66, -47, 117, 73}, new byte[]{-10, -97, 80, 6, 52, -76, 7, 48}), f10791g);
        String strOptString3 = jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-70, -54, 55, 67, -59, 104, 37}, new byte[]{-54, -85, 78, 47, -86, 9, 65, -97}), "");
        String strOptString4 = jSONObject.optString(AbstractC1387m.m2421h(new byte[]{88, 42, 60, -84, -35}, new byte[]{54, 69, 82, -49, -72, 71, -122, 100}), "");
        String strOptString5 = jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-43, 30, -119, -6, 116}, new byte[]{-91, 108, -26, -107, 18, -67, -120, 33}), "");
        jSONObject.optString(AbstractC1387m.m2421h(new byte[]{9, -7, -29, 20, -81, 41}, new byte[]{109, -100, -107, 125, -52, 76, 80, -27}), "");
        jSONObject.optString(AbstractC1387m.m2421h(new byte[]{28, -23, 114, 26, 83, 114, -34, 71, 24, -25, 112, 13, 84}, new byte[]{108, -120, 27, 104, 58, 28, -71, 24}), "");
        return new C3631i(string, strOptString, jOptLong, strOptString2, strOptString3, strOptString4, strOptString5);
    }
}
