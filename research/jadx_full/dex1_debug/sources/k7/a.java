package k7;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import com.google.protobuf.q;
import e0.g0;
import e0.m;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.Request;
import okhttp3.Request$Builder;
import okhttp3.Response;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a implements c {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        m.h(new byte[]{26, -31, 1, -106, 3, -94, -105, -39, 19, -27, 28, -56, 31, -24, -35, -104, 95, -8, 16, -110, 21, -9, -106, -107, 29, -8, 90, -112, 65, -73, -34, -103, 0, -16, 22, -121, 3, -20}, new byte[]{114, -107, 117, -26, 112, -104, -72, -10});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String a(String str) {
        Request requestBuild = new Request$Builder().url(str).build();
        try {
            h0.b.a();
            Response responseExecute = h0.b.m().newCall(requestBuild).execute();
            try {
                if (!responseExecute.isSuccessful()) {
                    throw new Exception(m.h(new byte[]{59, -94, -19, 13, -62, -4, 105, 40, 11, -88, -88, 22, -35, -3, 111, 124}, new byte[]{110, -52, -120, 117, -78, -103, 10, 92}) + responseExecute);
                }
                if (responseExecute.body() == null) {
                    throw new Exception(m.h(new byte[]{-63, -111, 49, -52, -35, -78, -56, -15, -77, -106, 45, -40, -53, -4, -46, -25, -77, -102, 55, -48, -34}, new byte[]{-109, -12, 66, -68, -78, -36, -69, -108}));
                }
                String strString = responseExecute.body().string();
                responseExecute.close();
                return strString;
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
            h0.b.v(m.h(new byte[]{103, -101, -15, -38, 94, -53, 3, 68, 71, -69, -26, -37, 101, -57, 19, 68, 90, -47, -76}, new byte[]{40, -21, -108, -76, 19, -82, 119, 33}) + e.getMessage());
            return "";
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Duplicate block (B:16:0x0162) to fix multi-entry loop: BACK_EDGE: B:16:0x0162 -> B:17:0x0163 */
    /* JADX WARN: Code duplicated, block: B:41:0x0205  */
    /* JADX WARN: Code duplicated, block: B:42:0x0207  */
    /* JADX WARN: Code duplicated, block: B:43:0x0209  */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0163, code lost:
    
        r10 = "";
     */
    @Override // k7.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final b e(String str) {
        String strH;
        int i9;
        String[] strArrSplit = str.split(m.h(new byte[]{85}, new byte[]{121, 91, 97, -42, 34, -105, 98, -96}));
        String strTrim = strArrSplit[0].trim();
        String strTrim2 = strArrSplit[1].trim();
        StringBuilder sb = new StringBuilder();
        q.u(new byte[]{-28, -40, 73, 69, -97, -71, -93, 24, -19, -36, 84, 27, -125, -13, -23, 89, -95, -63, 88, 65, -119, -20, -94, 84, -29, -63, 18, 67, -35, -84, -22, 88, -2, -55, 94, 84, -97, -9, -77, 91, -19, -40, 84, 65, -103, -25, -23, 10}, new byte[]{-116, -84, Base64.padSymbol, 53, -20, -125, -116, 55}, sb, strTrim);
        q.u(new byte[]{124, 23, 41, -100, -49, -84, -108, 115, 62, 30, 123}, new byte[]{90, 123, 70, -14, -88, -59, -32, 6}, sb, strTrim2);
        sb.append(m.h(new byte[]{92, -59, 7, -11, 118, -23, -70, 46, 71, -46, 23, -22, 116, -23, -90, 59, 14, -45, 0, -30, 91, -66, -71, 118, 13, -61, 19, -13, 108, -23, -90, 5, 25, -55, 22, -30}, new byte[]{122, -90, 114, -121, 4, -116, -44, 90}));
        String strA = a(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        q.u(new byte[]{96, -20, 52, 44, -4, -69, -43, -113, 102, -9, 45, 53, -31, -32, -114, -55, 101, -74, 47, 44, -22, -17, -119, -44, 122, -3, 37, 40, -30, -32, -118, -114, 103, -22, 39, 115, -3, -28, -116, -59, 122, -21, 37, 99, -29, -32, -114, -99}, new byte[]{8, -104, 64, 92, -113, -127, -6, -96}, sb2, strTrim);
        q.u(new byte[]{-105, -4, -4, 60, 32}, new byte[]{-79, -112, -109, 82, 29, -41, 91, -19}, sb2, strTrim2);
        sb2.append(m.h(new byte[]{124, 107, -86, -15, -124, -35, 87, -99, 48, 126, -86, -19, -49, -35, 64, -61, 63, 125, -79, -82, -123, -35, 77, -57, 47, 108, -94, -26, -44}, new byte[]{90, 13, -59, -125, -23, -68, 35, -96}));
        sb2.append(g0.a());
        try {
            JSONObject jSONObject = new JSONObject(a(sb2.toString())).getJSONObject(m.h(new byte[]{-72, 30, 60, -77, 17, 39, -24}, new byte[]{-39, 122, 88, -63, 116, 84, -101, 42}));
            if (jSONObject.has(m.h(new byte[]{-96, 77, -95, -45}, new byte[]{-61, 36, -43, -86, 120, 31, -31, 63}))) {
                strH = jSONObject.getString(m.h(new byte[]{118, 18, -30, -39}, new byte[]{21, 123, -106, -96, -57, -115, 21, 47}));
            } else if (jSONObject.has(m.h(new byte[]{-2, 66, 87, -23}, new byte[]{-118, 45, 32, -121, 21, 106, -72, -53}))) {
                strH = jSONObject.getString(m.h(new byte[]{-68, 82, 105, 92}, new byte[]{-56, Base64.padSymbol, 30, 50, 116, -82, 45, 22}));
            } else if (jSONObject.has(m.h(new byte[]{126, 93, -102, 71, 40, -117, 24}, new byte[]{8, 52, -10, 43, 73, -20, 125, 121}))) {
                strH = jSONObject.getString(m.h(new byte[]{74, -50, 51, -9, 101, 9, 92}, new byte[]{60, -89, 95, -101, 4, 110, 57, 46}));
            } else {
                strH = jSONObject.has(m.h(new byte[]{-52, 87, 75, 126, 45, 76, 123, 11, -51, 75, 81, 110}, new byte[]{-95, 34, 37, 23, 78, 37, 11, 106})) ? jSONObject.getString(m.h(new byte[]{108, -30, 94, -68, -69, 86, -22, -87, 109, -2, 68, -84}, new byte[]{1, -105, 48, -43, -40, 63, -102, -56})) : "";
            }
        } catch (JSONException unused) {
        }
        if ("".equals(strH)) {
            strH = m.h(new byte[]{-50, -12, 51}, new byte[]{ByteCompanionObject.MIN_VALUE, -37, 114, -126, -36, -107, -48, -95});
        }
        try {
            JSONObject jSONObject2 = new JSONObject(strA);
            String string = jSONObject2.getJSONObject(m.h(new byte[]{-105, 24, -46, -51, 66, 111, -45}, new byte[]{-12, 109, -96, -65, 39, 1, -89, -29})).getString(m.h(new byte[]{-30, 71, -63, -107, 73, -86, -53, -7, -29, 80, -55, -70, 30, -75}, new byte[]{-106, 34, -84, -27, 44, -40, -86, -115}));
            int i10 = jSONObject2.getJSONObject(m.h(new byte[]{94, 93, -41, 9, 15, -73, 2}, new byte[]{Base64.padSymbol, 40, -91, 123, 106, -39, 118, -56})).getInt(m.h(new byte[]{-95, -57, -105, 95, -104, 32, 63, -12, -75, -51, -110, 78}, new byte[]{-42, -94, -10, 43, -16, 69, 77, -85}));
            if (i10 == 0) {
                i9 = 2131165748;
            } else if (i10 == 1) {
                i9 = 2131165603;
            } else if (i10 == 2) {
                i9 = 2131165710;
            } else if (i10 != 3) {
                i9 = 2131165735;
                if (i10 != 85 && i10 != 86) {
                    if (i10 == 95) {
                        i9 = 2131165752;
                    } else if (i10 != 96) {
                        i9 = 2131165421;
                        switch (i10) {
                            case 45:
                            case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                                break;
                            case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                            case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                            case 61:
                                i9 = 2131165724;
                                break;
                            case 63:
                                i9 = 2131165723;
                                break;
                            case 71:
                            case 73:
                            case 75:
                            case 77:
                                i9 = 2131165736;
                                break;
                            case 99:
                                i9 = 2131165747;
                                break;
                            default:
                                switch (i10) {
                                    case ConstraintLayout$LayoutParams$Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                                    case 57:
                                        i9 = 2131165723;
                                        break;
                                    case 56:
                                        i9 = 2131165724;
                                        break;
                                    default:
                                        switch (i10) {
                                            case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HEIGHT /* 65 */:
                                            case ConstraintLayout$LayoutParams$Table.GUIDELINE_USE_RTL /* 67 */:
                                                i9 = 2131165723;
                                                break;
                                            case ConstraintLayout$LayoutParams$Table.LAYOUT_WRAP_BEHAVIOR_IN_PARENT /* 66 */:
                                                i9 = 2131165724;
                                                break;
                                            default:
                                                switch (i10) {
                                                    case 80:
                                                        i9 = 2131165724;
                                                        break;
                                                    case 81:
                                                    case 82:
                                                        i9 = 2131165723;
                                                        break;
                                                    default:
                                                        i9 = 2131165760;
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                    } else {
                        i9 = 2131165747;
                    }
                }
            } else {
                i9 = 2131165384;
            }
            return new b(strH, string, "", i9);
        } catch (JSONException unused2) {
            return null;
        }
    }
}
