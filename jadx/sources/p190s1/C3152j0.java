package p190s1;

import java.util.UUID;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONException;
import org.json.JSONObject;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: s1.j0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3152j0 {

    /* JADX INFO: renamed from: a */
    public final String f9043a;

    /* JADX INFO: renamed from: b */
    public final EnumC3158m0 f9044b;

    /* JADX INFO: renamed from: c */
    public float f9045c;

    /* JADX INFO: renamed from: d */
    public float f9046d;

    /* JADX INFO: renamed from: e */
    public float f9047e;

    /* JADX INFO: renamed from: f */
    public float f9048f;

    /* JADX INFO: renamed from: g */
    public final String f9049g;

    /* JADX INFO: renamed from: h */
    public final String f9050h;

    /* JADX INFO: renamed from: i */
    public boolean f9051i;

    public C3152j0(EnumC3158m0 enumC3158m0, float f8, float f10, float f11, float f12, String str) {
        this(UUID.randomUUID().toString(), enumC3158m0, f8, f10, f11, f12, str, null, false);
    }

    /* JADX INFO: renamed from: a */
    public static C3152j0 m4984a(JSONObject jSONObject) {
        try {
            EnumC3158m0 enumC3158m0ValueOf = EnumC3158m0.valueOf(jSONObject.getString(AbstractC1387m.m2421h(new byte[]{89, 96, -18, 105}, new byte[]{45, 25, -98, 12, 111, -93, 29, -61})));
            float f8 = (float) jSONObject.getDouble(AbstractC1387m.m2421h(new byte[]{-25}, new byte[]{-112, -77, -82, 84, -23, -112, 101, 60}));
            float f10 = (float) jSONObject.getDouble(AbstractC1387m.m2421h(new byte[]{105}, new byte[]{1, -37, 117, 20, -34, 69, 35, 122}));
            if (f8 > 0.0f && f10 > 0.0f) {
                return new C3152j0(jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-4, -9}, new byte[]{-107, -109, -82, 45, -15, -122, 36, 98}), UUID.randomUUID().toString()), enumC3158m0ValueOf, C3166q0.m5031g((float) jSONObject.optDouble(AbstractC1387m.m2421h(new byte[]{75}, new byte[]{51, -114, -51, 72, 105, 82, 69, -29}), 0.0d), 0.0f, 1.0f), C3166q0.m5031g((float) jSONObject.optDouble(AbstractC1387m.m2421h(new byte[]{66}, new byte[]{59, 99, 110, 9, -109, -122, 4, -44}), 0.0d), 0.0f, 1.0f), C3166q0.m5031g(f8, 0.05f, 1.0f), C3166q0.m5031g(f10, 0.05f, 1.0f), jSONObject.optString(AbstractC1387m.m2421h(new byte[]{-33, 124, 66, -18, -113, -45}, new byte[]{-66, 31, 54, -121, -32, -67, 10, -10}), null), jSONObject.optString(AbstractC1387m.m2421h(new byte[]{3, -86, 73, 62, -109, 22, 64}, new byte[]{98, -55, Base64.padSymbol, 87, -4, 120, 114, 57}), null), jSONObject.optBoolean(AbstractC1387m.m2421h(new byte[]{11, -38, -70, 94, 110, 106, 73, 8, 28, -38, -77, 93}, new byte[]{ByteCompanionObject.MAX_VALUE, -75, -35, 57, 2, 15, 26, 109}), false));
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public final JSONObject m4985b() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{29, -89}, new byte[]{116, -61, -43, 119, -127, 41, -54, 93}), this.f9043a);
        String strM2421h = AbstractC1387m.m2421h(new byte[]{-127, 42, Base64.padSymbol, 9}, new byte[]{-11, 83, 77, 108, 13, 116, 90, 27});
        EnumC3158m0 enumC3158m0 = this.f9044b;
        jSONObject.put(strM2421h, enumC3158m0.name());
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-104}, new byte[]{-32, 3, -69, 32, 58, 77, 89, 60}), this.f9045c);
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{37}, new byte[]{92, 28, -120, 103, -110, 66, -107, -25}), this.f9046d);
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{30}, new byte[]{105, 124, 4, 89, 15, -105, Base64.padSymbol, 115}), this.f9047e);
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{41}, new byte[]{65, 4, -51, -30, 74, -98, -8, -44}), this.f9048f);
        String str = this.f9049g;
        if (str != null) {
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-72, 29, 85, -69, 30, 28}, new byte[]{-39, 126, 33, -46, 113, 114, -45, -88}), str);
        }
        String str2 = this.f9050h;
        if (str2 != null) {
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-96, -30, -65, 88, 27, -60, 48}, new byte[]{-63, -127, -53, 49, 116, -86, 2, -10}), str2);
        }
        if (enumC3158m0 == EnumC3158m0.f9105f) {
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{5, -71, -104, -9, 82, -123, -14, -50, 18, -71, -111, -12}, new byte[]{113, -42, -1, -112, 62, -32, -95, -85}), this.f9051i);
        }
        return jSONObject;
    }

    public C3152j0(String str, EnumC3158m0 enumC3158m0, float f8, float f10, float f11, float f12, String str2, String str3, boolean z9) {
        this.f9043a = str;
        this.f9044b = enumC3158m0;
        this.f9045c = f8;
        this.f9046d = f10;
        this.f9047e = f11;
        this.f9048f = f12;
        this.f9049g = str2;
        this.f9050h = str3;
        this.f9051i = z9;
    }
}
