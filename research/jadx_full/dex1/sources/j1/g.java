package j1;

import android.content.Context;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class g implements u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2926b;
    public final /* synthetic */ String c;
    public final /* synthetic */ Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g(Object obj, int i9, String str) {
        this.f2926b = i9;
        this.c = str;
        this.d = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.u
    public final void c(Context context) {
        int i9 = this.f2926b;
        Object obj = this.d;
        String str = this.c;
        switch (i9) {
            case 0:
                String str2 = l.c;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(e0.m.h(new byte[]{-82, 113, -78, -23, 24, -104, 110}, new byte[]{-51, 30, -33, -124, 121, -10, 10, ByteCompanionObject.MAX_VALUE}), str);
                    jSONObject.put(e0.m.h(new byte[]{-91, 87, 30, 69, -4}, new byte[]{-45, 54, 114, 48, -103, 25, 82, 99}), obj);
                    h0.b.a();
                    h0.b.d().c(jSONObject);
                } catch (Throwable unused) {
                    return;
                }
                break;
            case 1:
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(e0.m.h(new byte[]{-18, -76, 92, -27, 82, -79, -99}, new byte[]{-115, -37, 49, -120, 51, -33, -7, -109}), str);
                    jSONObject2.put(e0.m.h(new byte[]{-73, -53, -9, 122, -5}, new byte[]{-63, -86, -101, 15, -98, 14, 24, -119}), obj);
                    h0.b.a();
                    h0.b.d().c(jSONObject2);
                } catch (Throwable unused2) {
                    return;
                }
                break;
            default:
                o.i(obj, str);
                break;
        }
    }
}
