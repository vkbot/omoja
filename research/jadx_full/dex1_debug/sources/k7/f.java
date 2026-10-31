package k7;

import b1.t;
import e0.m;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.Request;
import okhttp3.Request$Builder;
import okhttp3.Response;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f3206b = Pattern.compile(m.h(new byte[]{-3, 51, -103, -116, 29, -26, 35, 79, -97, 126, -89, -44, 0, -17, 39, 113, -4, 27, -40, -39, 41, -9, 39, 100, -83, 41, -103, -97, 0, -1, 56, 122, -18, 44, -98, -94, 95, -4, 36, 123, -81, 27, -40, -39, 41, -51, 9, 42, -100, 106, -60, -42, 90, -68, 104, Base64.padSymbol, -3, 111, -119, -99, 6, -1, 39, 96, -1}, new byte[]{-63, 64, -6, -2, 116, -106, 87, 20}), 34);
    public static final Pattern c = Pattern.compile(m.h(new byte[]{-74, -61, 101, -44, 80, -83, -80, -23, -73, -12, 100, -31, 80, -95, -79, -44, -74, -62, 100, -31, 80, -95, 64, -122, -43, -111, 11, -79, 55, -63, -44, -121, -28, -112, 48, -79, 48, 77, 19, 124, 79, 26, -98, Base64.padSymbol, -83, -13, -24, -60, 58, 126, -23, 5, -85, 57, 95, 108, 60, 111, -103, 60, -36, 117, 75, ByteCompanionObject.MAX_VALUE, 88, 104, 119, -47}, new byte[]{103, 65, -75, 97, ByteCompanionObject.MIN_VALUE, 17, 96, 86}), 66);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String a(String str) {
        return str.replace((char) 160, ' ').replace((char) 8239, ' ').replaceAll(m.h(new byte[]{46, ByteCompanionObject.MIN_VALUE, -91}, new byte[]{114, -13, -114, -33, 51, 11, -63, ByteCompanionObject.MIN_VALUE}), " ").trim();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b b(String str) {
        int i9;
        t tVar = new t();
        Matcher matcher = f3206b.matcher(str);
        while (matcher.find()) {
            try {
                JSONObject jSONObject = new JSONObject(matcher.group(1));
                d(jSONObject, tVar);
                c(jSONObject, tVar);
            } catch (Exception unused) {
            }
        }
        String str2 = tVar.f294b;
        if (str2 == null || str2.isEmpty()) {
            return null;
        }
        String str3 = tVar.f293a;
        String strH = (str3 == null || str3.isEmpty()) ? m.h(new byte[]{97, -109, 44}, new byte[]{47, -68, 109, -66, 125, -98, 36, 55}) : tVar.f293a;
        String str4 = tVar.c;
        if (str4 == null) {
            str4 = "";
        }
        String str5 = tVar.f294b;
        String lowerCase = str4.toLowerCase(Locale.ROOT);
        if (lowerCase.contains(m.h(new byte[]{-111, 12, 75, -56, 38, 103, 99, 15}, new byte[]{65, -65, -102, 72, -10, -39, -77, -72}))) {
            i9 = 2131165752;
        } else if (lowerCase.contains(m.h(new byte[]{41, -89, -37, ByteCompanionObject.MIN_VALUE, 52, 16, -121, -66}, new byte[]{-7, 27, 11, 62, -28, -86, 86, 62})) && lowerCase.contains(m.h(new byte[]{-25, -88, 51, -126, 74, -60, -47, -5}, new byte[]{54, 41, -29, 63, -102, 113, 1, 72}))) {
            i9 = 2131165735;
        } else if (lowerCase.contains(m.h(new byte[]{-21, -102, -68, 98, 80, -39, -14, 16}, new byte[]{58, 27, 108, -33, ByteCompanionObject.MIN_VALUE, 108, 34, -93})) || lowerCase.contains(m.h(new byte[]{-5, 112, 94, 57, -66, 17, 56, 113, -5, 119}, new byte[]{43, -52, -114, -116, 111, -109, -24, -60}))) {
            i9 = 2131165736;
        } else if (lowerCase.contains(m.h(new byte[]{55, -52, 80, -44, -75, -76, 91, 110}, new byte[]{-25, 120, ByteCompanionObject.MIN_VALUE, 106, 101, 2, -117, -38})) || lowerCase.contains(m.h(new byte[]{-26, 122, -2, -88, 80, -6}, new byte[]{54, -63, 46, 16, ByteCompanionObject.MIN_VALUE, 72, -59, 50})) || lowerCase.contains(m.h(new byte[]{52, 73, 48, -104, -106, 110, 107, 70, 53, 116}, new byte[]{-28, -11, -32, 38, 71, -18, -69, -8}))) {
            i9 = 2131165723;
        } else if (lowerCase.contains(m.h(new byte[]{24, 20, 84, -31, ByteCompanionObject.MAX_VALUE, 62, 4, -55, 25, 43}, new byte[]{-55, -106, -123, 98, -81, -126, -44, 121})) || lowerCase.contains(m.h(new byte[]{-37, -76, -65, -3, -81, -127, -117, 3}, new byte[]{11, 0, 110, 118, ByteCompanionObject.MAX_VALUE, Base64.padSymbol, 91, -71}))) {
            i9 = 2131165421;
        } else if (lowerCase.contains(m.h(new byte[]{4, -60, 21, 26, 10, 0, 93, 55, 4, -58, 21, 27, 10, 0, 93, 57, 5, -1}, new byte[]{-44, 120, -59, -86, -38, -69, -115, -119})) || lowerCase.contains(m.h(new byte[]{104, -95, 37, -58, 3, -127, -46, 126, 105, -97, 36, -5, 3, -118, -45, 76}, new byte[]{-72, 30, -12, 70, -45, 63, 3, -15})) || lowerCase.contains(m.h(new byte[]{41, 98, -71, 14, -31, -100, -11, -42, 41, 97, -71, 14, -32, -95, -11, -34}, new byte[]{-7, -35, 105, -69, 48, 28, 37, 99}))) {
            i9 = 2131165710;
        } else if (lowerCase.contains(m.h(new byte[]{58, -14, -82, 41, 90, 84, 62, 71, 59, -53}, new byte[]{-22, 76, 126, -104, -118, -17, -18, -9})) || lowerCase.contains(m.h(new byte[]{-109, -89, 117, 46, 0, 84, 116, 19, -110, -101, 116, 30}, new byte[]{67, 24, -91, -98, -47, -43, -92, -81}))) {
            i9 = 2131165384;
        } else {
            i9 = lowerCase.contains(m.h(new byte[]{77, -9, -85, -63, -92, -1, 56, -27}, new byte[]{-100, 120, 122, 64, 116, 66, -24, 91})) ? 2131165748 : 2131165760;
        }
        return new b(strH, str5, str4, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void c(JSONObject jSONObject, t tVar) {
        JSONArray jSONArrayOptJSONArray;
        if (m.h(new byte[]{122, 105, -101, 29, 123, 94, -34}, new byte[]{60, 40, -54, 77, 26, 57, -69, 10}).equals(jSONObject.optString(m.h(new byte[]{67, -20, 30, -111, 69}, new byte[]{3, -104, 103, -31, 32, 84, 51, -21}))) && (jSONArrayOptJSONArray = jSONObject.optJSONArray(m.h(new byte[]{-69, 64, 113, 94, 89, 67, -93, -36, -94, 88}, new byte[]{-42, 33, 24, 48, 28, 45, -41, -75}))) != null) {
            for (int i9 = 0; i9 < jSONArrayOptJSONArray.length(); i9++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i9);
                if (jSONObjectOptJSONObject != null) {
                    String strA = a(jSONObjectOptJSONObject.optString(m.h(new byte[]{-28, -72, -70, 118}, new byte[]{-118, -39, -41, 19, 95, 43, -8, 30})));
                    if (strA.startsWith(m.h(new byte[]{95, -79, 122, -39, 70, -69, -80, -8, 94, -92, -118, -71, 41, -47, -34, -104, 60, -5, 20, -71, 34, -47, -48, 104, 95, -103, -118}, new byte[]{-113, 43, -86, 105, -106, 1, 96, 72}))) {
                        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(m.h(new byte[]{-68, -35, 21, -36, 28, -1, -70, 7, -100, -48, 5, -50, 9, -7}, new byte[]{-35, -66, 118, -71, 108, -117, -33, 99}));
                        String strA2 = a(jSONObjectOptJSONObject2 == null ? "" : jSONObjectOptJSONObject2.optString(m.h(new byte[]{-43, 39, -26, -48}, new byte[]{-95, 66, -98, -92, -61, -94, -106, -83})));
                        Matcher matcher = c.matcher(strA2);
                        if (matcher.find()) {
                            tVar.f294b = matcher.group(1).replace(m.h(new byte[]{9}, new byte[]{34, 39, -50, -39, 21, 112, 91, -26}), "").replace((char) 8722, '-').replace(',', '.');
                            String strReplaceFirst = strA.replaceFirst(m.h(new byte[]{-26, -63, 28, -12, 52, -9, 53, 18, 8, -64, 9, 4, 84, -104, 95, 124, 104, -94, 86, -102, 84, -109, 95, 114, -104, -63, 52, 120, -9, 12}, new byte[]{-72, 17, -122, 36, -124, 39, -113, -62}), "").replaceFirst(m.h(new byte[]{8, 91, -75}, new byte[]{84, 100, -111, 51, -7, -10, -84, -16}), "");
                            Matcher matcher2 = Pattern.compile(m.h(new byte[]{89, 35, 1, -69, 9, -114, -13, 60, ByteCompanionObject.MIN_VALUE, 35, 16, -70, Base64.padSymbol, 126, -102, 95, 91, ByteCompanionObject.MIN_VALUE, -117}, new byte[]{7, -13, -96, 107, -68, 94, 74, -19}) + Pattern.quote(strReplaceFirst) + m.h(new byte[]{88, 117, -5, -85, 1, 96, 87, -116, 40, 90, -93, -87, -2, -55, -72, 16, -44, -70, 0, 60, -1, -2, -71, 37, -44, -74, 1, 1, -2, -56, -71, 37, -44, -74, -16, 83, -99, -101, -42, 117, -77, -42, 100, 82, -84, -102, -19, 117, -76}, new byte[]{4, 6, -48, -125, 47, 75, 104, -91}), 66).matcher(strA2);
                            if (matcher2.find()) {
                                tVar.c = matcher2.group(1).trim();
                            }
                            String str = tVar.f293a;
                            if (str == null || str.isEmpty()) {
                                tVar.f293a = strReplaceFirst;
                                return;
                            }
                            return;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void d(JSONObject jSONObject, t tVar) {
        JSONObject jSONObjectOptJSONObject;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(m.h(new byte[]{-105, 2, 29, -56, 123, -125}, new byte[]{-41, 101, 111, -87, 11, -21, -86, -119}));
        if (jSONArrayOptJSONArray == null) {
            return;
        }
        for (int i9 = 0; i9 < jSONArrayOptJSONArray.length(); i9++) {
            JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i9);
            if (jSONObjectOptJSONObject2 != null && m.h(new byte[]{36, -51, 53, -34, -62, -74, 122}, new byte[]{115, -88, 87, -114, -93, -47, 31, -6}).equals(jSONObjectOptJSONObject2.optString(m.h(new byte[]{32, -90, -77, -92, -7}, new byte[]{96, -46, -54, -44, -100, -22, 114, 80}))) && (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(m.h(new byte[]{98, 105, -57, -92, -69, 109, -125, 119, 126, 111, -61, -94, -77, 107, -118}, new byte[]{17, 25, -90, -48, -46, 12, -17, 52}))) != null && !jSONObjectOptJSONObject.optString(m.h(new byte[]{-22, 42, 78, -120}, new byte[]{-124, 75, 35, -19, 105, 11, 6, 9})).isEmpty()) {
                tVar.f293a = jSONObjectOptJSONObject.optString(m.h(new byte[]{-60, 28, 19, 85}, new byte[]{-86, 125, 126, 48, -95, 108, -31, -74}));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k7.c
    public final b e(String str) {
        try {
            String[] strArrSplit = str.split(m.h(new byte[]{-23}, new byte[]{-59, 83, -1, 72, -24, 125, 24, -3}));
            if (strArrSplit.length < 2) {
                return null;
            }
            Request requestBuild = new Request$Builder().url(String.format(Locale.US, m.h(new byte[]{-101, 92, 18, -89, -58, -53, -19, 26, -118, 73, 8, -77, -48, -119, -20, 71, -122, 7, 22, -72, -46, -98, -90, 84, -36, 23, 10, -74, -63, -52, -25, 27, -63, 78, 64, -69, -38, -97, -1, 16, -35, 26, 0}, new byte[]{-13, 40, 102, -41, -75, -15, -62, 53}), Double.valueOf(Double.parseDouble(strArrSplit[0].trim())), Double.valueOf(Double.parseDouble(strArrSplit[1].trim())))).header(m.h(new byte[]{56, -58, 58, -67, 2, 84, 12, -71, 3, -63}, new byte[]{109, -75, 95, -49, 47, 21, 107, -36}), m.h(new byte[]{88, 102, 94, -112, 35, 93, 50, -22, 32, 39, 20, -39, 103, 125, 58, -85, 96, 113, 31, -39, 14, 95, 55, -73, 122, 96, 64, -39, 126, 3, 104, -27, 95, 74, 69, -117, 27, 94, 60, -87, 102, 32, 4, -72, 63, 65, 63, -96, 66, 108, 70, -78, 38, 69, 124, -16, 38, 62, 10, -54, 121, 17, 16, -83, 103, 102, 73, -100, 96, 0, 97, -11, 53, 68, 75, -101, 38, 93, 54, -27, 70, 104, 66, -104, Base64.padSymbol, 88, 124, -16, 38, 62, 10, -54, 121}, new byte[]{21, 9, 36, -7, 79, 49, 83, -59})).header(m.h(new byte[]{100, -112, -69, -48, -87, 4, -34, -98, 68, -99, -65, -64, -72, 23, -106}, new byte[]{37, -13, -40, -75, -39, 112, -13, -46}), m.h(new byte[]{80, 92, 46, -117, 10, 42, 114, 73, 25, 88, 62, -23, 113, 63}, new byte[]{34, 41, 3, -39, 95, 6, 0, 60})).build();
            h0.b.a();
            Response responseExecute = h0.b.m().newCall(requestBuild).execute();
            try {
                if (responseExecute.isSuccessful() && responseExecute.body() != null) {
                    b bVarB = b(responseExecute.body().string());
                    responseExecute.close();
                    return bVarB;
                }
                responseExecute.close();
                return null;
            } catch (Throwable th) {
                if (responseExecute != null) {
                    try {
                        responseExecute.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception e) {
            h0.b.v(m.h(new byte[]{116, 56, 110, -10, 56, -85, 122, 29, 79, 14, 101, -13, 41, -69, 72, 10, 125, 43, 111, -28, 52, -73, 72, 10, 23, 121}, new byte[]{45, 89, 0, -110, 93, -45, 45, 120}) + e.getMessage());
            return null;
        }
    }
}
