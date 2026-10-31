package w0;

import android.content.Context;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f5750a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public j0.e f5751b;
    public boolean c;
    public final boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o0(String str, j0.e eVar, boolean z8, boolean z9) {
        this.f5750a = str;
        this.f5751b = eVar;
        this.c = z8;
        this.d = z9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static o0 a(JSONObject jSONObject, Context context) {
        try {
            return new o0(jSONObject.optString(e0.m.h(new byte[]{99, 92, 109, -96, -42, 89}, new byte[]{19, 52, 31, -63, -91, 60, 37, 12}), ""), j0.f.b(context, jSONObject.optString(e0.m.h(new byte[]{-97, 115, 28, -6, 21, -127}, new byte[]{-2, 16, 104, -109, 122, -17, -19, 114}), e0.m.h(new byte[]{-37, 100, 53, -105, 120, 23, -95, -113, -31, 124, 33, -106, 55, 60}, new byte[]{-66, 10, 64, -6, 66, 89, -50, -5}))), jSONObject.optBoolean(e0.m.h(new byte[]{-47, -69, 103, -100, -113, 15, 27}, new byte[]{-76, -43, 6, -2, -29, 106, ByteCompanionObject.MAX_VALUE, 103}), true), jSONObject.optBoolean(e0.m.h(new byte[]{40, 115, -67, 29, 16, 0, -54, 56, 41}, new byte[]{69, 18, -55, 126, 120, 70, -65, 84}), true));
        } catch (Exception e) {
            e.printStackTrace();
            return new o0("", j0.f.b(context, e0.m.h(new byte[]{-54, 81, -124, 102, -1, -102, -58, ByteCompanionObject.MIN_VALUE, -16, 73, -112, 103, -80, -79}, new byte[]{-81, 63, -15, 11, -59, -44, -87, -12})), true, true);
        }
    }
}
