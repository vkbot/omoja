package j7;

import e0.m;
import j1.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3100b;
    public final long c;
    public final a d;
    public final List e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        m.h(new byte[]{-61, -61, -38, -91, 83, -27, -82, 31, -62, -52, -126, -93, 68, -31, -76}, new byte[]{-83, -94, -84, -52, 52, -124, -38, 118});
        m.h(new byte[]{-73, 122, 36, -104, 110, 47, 122, 0, -74, 117, 124, -125, 108, Base64.padSymbol, 123, 5, -83}, new byte[]{-39, 27, 82, -15, 9, 78, 14, 105});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(String str, long j9, a aVar, List list, String str2) {
        if (!UUID.fromString(str).toString().equals(str)) {
            i.k(m.h(new byte[]{-22, 107, -104, -42, -110, 31, -105, -3, -4}, new byte[]{-104, 14, -23, -93, -9, 108, -29, -76}));
            throw null;
        }
        if (list == null || list.size() > 16 || list.contains(null)) {
            i.k(m.h(new byte[]{-14, -24, 113, 16, -54, ByteCompanionObject.MIN_VALUE, -25, -62, -14, -13, 113, 21, -54, -124, 22, -102, -98, -103, 28, 123, -92, -24, -123, -102, -100, 105, 112, 41, -54, -122, -25, -51, -14, -4, 113, 17}, new byte[]{34, 73, -95, -85, 26, 56, 54, 74}));
            throw null;
        }
        if (aVar == null && (str2 == null || str2.trim().isEmpty() || str2.length() > 1024)) {
            i.k(m.h(new byte[]{30, 19, -92, 119, -38, -92, 6, -77, 30, 50, -91, 77, 43, -11, 111, -31, 117, 92, -51, -44, -38, -92, 7, -118, 30, 52, -92, 124, -37, -97, 7, -113, 30, 48, 85, 36, -65, -11, 108, -31, 118, 92, -56, 36, -74, -12, 92, -31, 119, -84, -91, 68, -37, -111, 6, -79, 30, 57, -92, 117}, new byte[]{-50, -116, 117, -12, 11, 37, -41, 49}));
            throw null;
        }
        if (aVar == null && !list.isEmpty()) {
            i.k(m.h(new byte[]{53, -122, -122, 22, -44, -84, 37, 118, -109, 88, -57, 82, 97, 110, -127, -86, 45, -114, -109, 95, 107, 115}, new byte[]{67, -17, -25, 54, 4, 29, -11, -61}));
            throw null;
        }
        this.f3099a = str;
        this.c = j9;
        this.d = aVar;
        this.e = Collections.unmodifiableList(new ArrayList(list));
        this.f3100b = aVar == null ? str2.trim() : null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b a(String str) throws JSONException {
        if (str == null || str.length() > 8192) {
            i.k(m.h(new byte[]{-18, 26, -67, -37, 15, -42, 105, Base64.padSymbol, -18, 15, -68, -21, -1, -79, 14, 81, -114, 106, -46, -70, 95, -79, 7, 80, -65, 106, -35}, new byte[]{62, -70, 109, 107, -33, 97, -71, -127}));
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        if (jSONObject.getInt(m.h(new byte[]{-125, -69, 13, 116, -125, -34}, new byte[]{-16, -40, 101, 17, -18, -65, 28, -85})) != 1) {
            i.k(m.h(new byte[]{106, -54, 32, -74, 46, 99, 107, -123, 106, -32, 33, -116, -33, 51, 7, -44, 10, -120, 66, -45, 71, 51, 9, -44, 10, -119, 118, -45, 71, 51, 2, 36, 106, -27, 32, -74, -33, 51, 5, -44, 4, -120, 68, -45, 75, 51, 15, -43, 58, -120, 70, -45, 71, 51, 8, -44, 10, -120, 69, -46, 125, 50, 59, -43, 53}, new byte[]{-70, 88, -16, 3, -1, -29, -70, 4}));
            return null;
        }
        String string = jSONObject.getString(m.h(new byte[]{-27, -48, 21, 120, 48, -32, 93, -85, -13}, new byte[]{-105, -75, 100, 13, 85, -109, 41, -30}));
        long j9 = jSONObject.getLong(m.h(new byte[]{27, 89, -55, 71, 109, 26, 76, -29, 10}, new byte[]{126, 33, -71, 46, 31, ByteCompanionObject.MAX_VALUE, 63, -94}));
        String string2 = jSONObject.getString(m.h(new byte[]{118, 125, -58, -89, 19, -30}, new byte[]{23, 30, -78, -50, 124, -116, 110, -16}));
        if (m.h(new byte[]{-82, -49, 49, -11, 13, 116}, new byte[]{-35, -86, 80, -121, 110, 28, -16, -19}).equals(string2)) {
            return new b(string, j9, null, Collections.EMPTY_LIST, jSONObject.getString(m.h(new byte[]{-27, -8, 112, -32, 119, 81, -28}, new byte[]{-124, -100, 20, -110, 18, 34, -105, -104})));
        }
        if (!m.h(new byte[]{-61, 92, 78, -6, -8}, new byte[]{-79, 51, 59, -114, -99, -110, -13, 42}).equals(string2) || !m.h(new byte[]{-113, -57, 24, 38, -21, -66, 95}, new byte[]{-20, -78, 106, 84, -114, -48, 43, 6}).equals(jSONObject.getString(m.h(new byte[]{7, 16, -58, -58, -12, 38}, new byte[]{104, 98, -81, -95, -99, 72, ByteCompanionObject.MAX_VALUE, -98}))) || !jSONObject.getBoolean(m.h(new byte[]{85, 115, 64, 123, 17, -22, -22, 66, 79, 96, 64, 125, 12, -53, -27}, new byte[]{38, 7, 33, 9, 101, -92, -117, 52}))) {
            i.k(m.h(new byte[]{43, 45, -119, 124, -56, -94, 40, 20, 43, 4, -119, 125, -56, -88, 41, 42, 43, 6, -119, 113, -56, -81, 40, 26, 43, 5, -119, 117, -56, -83, 41, 37, -37, 96, -29, 25, -90, -51, 68, 122, 75, 96, -28, 25, -84, -51, 72, -118, 43, 13, -119, 121, -56, -81, 40, 18, 43, 3, -119, 121, -55, -101, 40, 18, 43, 8}, new byte[]{-5, -80, 89, -55, 24, 29, -8, -86}));
            return null;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(m.h(new byte[]{123, -101, -81}, new byte[]{13, -14, -50, -106, 38, 25, -101, 8}));
        ArrayList arrayList = new ArrayList();
        if (jSONArrayOptJSONArray != null) {
            if (jSONArrayOptJSONArray.length() > 16) {
                i.k(m.h(new byte[]{36, 9, 27, -73, 71, -93, -119, -22, 36, 18, 27, -78, 71, -89, 120, -78, 72, 120, 118, -36, 41, -53, -21, -78, 74, -120, 26, -114, 71, -91, -119, -27, 36, 29, 27, -74}, new byte[]{-12, -88, -53, 12, -105, 27, 88, 98}));
                return null;
            }
            for (int i9 = 0; i9 < jSONArrayOptJSONArray.length(); i9++) {
                arrayList.add(a.a(jSONArrayOptJSONArray.getJSONObject(i9)));
            }
        }
        return new b(string, j9, a.a(jSONObject.getJSONObject(m.h(new byte[]{-87, -117, -41, 43, -15, -27, 53, 10, -92, -127, -54}, new byte[]{-51, -18, -92, 95, -104, -117, 84, 126}))), arrayList, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String b(String str, String str2) {
        return new JSONObject().put(m.h(new byte[]{-77, -70, 9, 35, 122, 63}, new byte[]{-64, -39, 97, 70, 23, 94, -52, 94}), 1).put(m.h(new byte[]{113, 56, 24, -83, 53, -54, -3, 70, 103}, new byte[]{3, 93, 105, -40, 80, -71, -119, 15}), str).put(m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 37, -98, -45, -7, 122}, new byte[]{-13, 81, -1, -89, -116, 9, 43, -46}), str2).toString();
    }
}
