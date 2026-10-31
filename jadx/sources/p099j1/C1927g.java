package p099j1;

import android.content.Context;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: renamed from: j1.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1927g implements InterfaceC1941u {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5138b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ String f5139c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f5140d;

    public /* synthetic */ C1927g(Object obj, int i10, String str) {
        this.f5138b = i10;
        this.f5139c = str;
        this.f5140d = obj;
    }

    @Override // p099j1.InterfaceC1941u
    /* JADX INFO: renamed from: c */
    public final void mo457c(Context context) {
        int i10 = this.f5138b;
        Object obj = this.f5140d;
        String str = this.f5139c;
        switch (i10) {
            case 0:
                String str2 = C1932l.f5218c;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{-82, 113, -78, -23, 24, -104, 110}, new byte[]{-51, 30, -33, -124, 121, -10, 10, ByteCompanionObject.MAX_VALUE}), str);
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{-91, 87, 30, 69, -4}, new byte[]{-45, 54, 114, 48, -103, 25, 82, 99}), obj);
                    C1652b.m2734a();
                    C1652b.m2736d().m1618c(jSONObject);
                } catch (Throwable unused) {
                    return;
                }
                break;
            case 1:
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(AbstractC1387m.m2421h(new byte[]{-18, -76, 92, -27, 82, -79, -99}, new byte[]{-115, -37, 49, -120, 51, -33, -7, -109}), str);
                    jSONObject2.put(AbstractC1387m.m2421h(new byte[]{-73, -53, -9, 122, -5}, new byte[]{-63, -86, -101, 15, -98, 14, 24, -119}), obj);
                    C1652b.m2734a();
                    C1652b.m2736d().m1618c(jSONObject2);
                } catch (Throwable unused2) {
                    return;
                }
                break;
            default:
                C1935o.m3035i(obj, str);
                break;
        }
    }
}
