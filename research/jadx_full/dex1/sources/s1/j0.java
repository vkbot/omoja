package s1;

import java.util.UUID;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m0 f5100b;
    public float c;
    public float d;
    public float e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f5101f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f5102g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f5103h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5104i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j0(m0 m0Var, float f8, float f9, float f10, float f11, String str) {
        this(UUID.randomUUID().toString(), m0Var, f8, f9, f10, f11, str, null, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static j0 a(JSONObject jSONObject) {
        try {
            m0 m0VarValueOf = m0.valueOf(jSONObject.getString(e0.m.h(new byte[]{89, 96, -18, 105}, new byte[]{45, 25, -98, 12, 111, -93, 29, -61})));
            float f8 = (float) jSONObject.getDouble(e0.m.h(new byte[]{-25}, new byte[]{-112, -77, -82, 84, -23, -112, 101, 60}));
            float f9 = (float) jSONObject.getDouble(e0.m.h(new byte[]{105}, new byte[]{1, -37, 117, 20, -34, 69, 35, 122}));
            if (f8 > 0.0f && f9 > 0.0f) {
                return new j0(jSONObject.optString(e0.m.h(new byte[]{-4, -9}, new byte[]{-107, -109, -82, 45, -15, -122, 36, 98}), UUID.randomUUID().toString()), m0VarValueOf, q0.g((float) jSONObject.optDouble(e0.m.h(new byte[]{75}, new byte[]{51, -114, -51, 72, 105, 82, 69, -29}), 0.0d), 0.0f, 1.0f), q0.g((float) jSONObject.optDouble(e0.m.h(new byte[]{66}, new byte[]{59, 99, 110, 9, -109, -122, 4, -44}), 0.0d), 0.0f, 1.0f), q0.g(f8, 0.05f, 1.0f), q0.g(f9, 0.05f, 1.0f), jSONObject.optString(e0.m.h(new byte[]{-33, 124, 66, -18, -113, -45}, new byte[]{-66, 31, 54, -121, -32, -67, 10, -10}), null), jSONObject.optString(e0.m.h(new byte[]{3, -86, 73, 62, -109, 22, 64}, new byte[]{98, -55, Base64.padSymbol, 87, -4, 120, 114, 57}), null), jSONObject.optBoolean(e0.m.h(new byte[]{11, -38, -70, 94, 110, 106, 73, 8, 28, -38, -77, 93}, new byte[]{ByteCompanionObject.MAX_VALUE, -75, -35, 57, 2, 15, 26, 109}), false));
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final JSONObject b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(e0.m.h(new byte[]{29, -89}, new byte[]{116, -61, -43, 119, -127, 41, -54, 93}), this.f5099a);
        String strH = e0.m.h(new byte[]{-127, 42, Base64.padSymbol, 9}, new byte[]{-11, 83, 77, 108, 13, 116, 90, 27});
        m0 m0Var = this.f5100b;
        jSONObject.put(strH, m0Var.name());
        jSONObject.put(e0.m.h(new byte[]{-104}, new byte[]{-32, 3, -69, 32, 58, 77, 89, 60}), this.c);
        jSONObject.put(e0.m.h(new byte[]{37}, new byte[]{92, 28, -120, 103, -110, 66, -107, -25}), this.d);
        jSONObject.put(e0.m.h(new byte[]{30}, new byte[]{105, 124, 4, 89, 15, -105, Base64.padSymbol, 115}), this.e);
        jSONObject.put(e0.m.h(new byte[]{41}, new byte[]{65, 4, -51, -30, 74, -98, -8, -44}), this.f5101f);
        String str = this.f5102g;
        if (str != null) {
            jSONObject.put(e0.m.h(new byte[]{-72, 29, 85, -69, 30, 28}, new byte[]{-39, 126, 33, -46, 113, 114, -45, -88}), str);
        }
        String str2 = this.f5103h;
        if (str2 != null) {
            jSONObject.put(e0.m.h(new byte[]{-96, -30, -65, 88, 27, -60, 48}, new byte[]{-63, -127, -53, 49, 116, -86, 2, -10}), str2);
        }
        if (m0Var == m0.f5139f) {
            jSONObject.put(e0.m.h(new byte[]{5, -71, -104, -9, 82, -123, -14, -50, 18, -71, -111, -12}, new byte[]{113, -42, -1, -112, 62, -32, -95, -85}), this.f5104i);
        }
        return jSONObject;
    }

    public j0(String str, m0 m0Var, float f8, float f9, float f10, float f11, String str2, String str3, boolean z8) {
        this.f5099a = str;
        this.f5100b = m0Var;
        this.c = f8;
        this.d = f9;
        this.e = f10;
        this.f5101f = f11;
        this.f5102g = str2;
        this.f5103h = str3;
        this.f5104i = z8;
    }
}
