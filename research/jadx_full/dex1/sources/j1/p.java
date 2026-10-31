package j1;

import android.content.Context;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class p implements u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3010b;
    public final /* synthetic */ String c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f3011f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ p(String str, Object obj, String str2, int i9, int i10) {
        this.f3010b = i10;
        this.c = str;
        this.d = obj;
        this.e = str2;
        this.f3011f = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.u
    public final void c(Context context) {
        int i9 = this.f3010b;
        int i10 = this.f3011f;
        String str = this.e;
        Object obj = this.d;
        String str2 = this.c;
        switch (i9) {
            case 0:
                if (q.n()) {
                    try {
                        JSONObject jSONObjectPut = new JSONObject().put(e0.m.h(new byte[]{-65, 33, 99, -112, 10, -100, 67}, new byte[]{-36, 78, 14, -3, 107, -14, 39, -20}), str2);
                        if (obj != null) {
                            jSONObjectPut.put(e0.m.h(new byte[]{-49, 72, -58, 49, -36}, new byte[]{-71, 41, -86, 68, -71, -41, -7, -53}), obj);
                        }
                        if (str != null) {
                            jSONObjectPut.put(str, i10);
                        }
                        h0.b.a();
                        h0.b.d().c(jSONObjectPut);
                    } catch (Exception unused) {
                        return;
                    }
                    break;
                }
                break;
            default:
                if (s.l()) {
                    try {
                        JSONObject jSONObjectPut2 = new JSONObject().put(e0.m.h(new byte[]{53, 66, 33, 96, -117, 125, 25}, new byte[]{86, 45, 76, 13, -22, 19, 125, 31}), str2);
                        if (obj != null) {
                            jSONObjectPut2.put(e0.m.h(new byte[]{-104, 11, 101, -70, 39}, new byte[]{-18, 106, 9, -49, 66, -121, -124, -104}), obj);
                        }
                        if (str != null) {
                            jSONObjectPut2.put(str, i10);
                        }
                        h0.b.a();
                        h0.b.d().c(jSONObjectPut2);
                    } catch (Exception unused2) {
                        return;
                    }
                    break;
                }
                break;
        }
    }
}
