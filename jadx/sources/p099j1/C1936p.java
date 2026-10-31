package p099j1;

import android.content.Context;
import org.json.JSONObject;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: renamed from: j1.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1936p implements InterfaceC1941u {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f5281b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ String f5282c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f5283d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ String f5284e;

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ int f5285f;

    public /* synthetic */ C1936p(String str, Object obj, String str2, int i10, int i11) {
        this.f5281b = i11;
        this.f5282c = str;
        this.f5283d = obj;
        this.f5284e = str2;
        this.f5285f = i10;
    }

    @Override // p099j1.InterfaceC1941u
    /* JADX INFO: renamed from: c */
    public final void mo457c(Context context) {
        int i10 = this.f5281b;
        int i11 = this.f5285f;
        String str = this.f5284e;
        Object obj = this.f5283d;
        String str2 = this.f5282c;
        switch (i10) {
            case 0:
                if (C1937q.m3039n()) {
                    try {
                        JSONObject jSONObjectPut = new JSONObject().put(AbstractC1387m.m2421h(new byte[]{-65, 33, 99, -112, 10, -100, 67}, new byte[]{-36, 78, 14, -3, 107, -14, 39, -20}), str2);
                        if (obj != null) {
                            jSONObjectPut.put(AbstractC1387m.m2421h(new byte[]{-49, 72, -58, 49, -36}, new byte[]{-71, 41, -86, 68, -71, -41, -7, -53}), obj);
                        }
                        if (str != null) {
                            jSONObjectPut.put(str, i11);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().m1618c(jSONObjectPut);
                    } catch (Exception unused) {
                        return;
                    }
                    break;
                }
                break;
            default:
                if (C1939s.m3047l()) {
                    try {
                        JSONObject jSONObjectPut2 = new JSONObject().put(AbstractC1387m.m2421h(new byte[]{53, 66, 33, 96, -117, 125, 25}, new byte[]{86, 45, 76, 13, -22, 19, 125, 31}), str2);
                        if (obj != null) {
                            jSONObjectPut2.put(AbstractC1387m.m2421h(new byte[]{-104, 11, 101, -70, 39}, new byte[]{-18, 106, 9, -49, 66, -121, -124, -104}), obj);
                        }
                        if (str != null) {
                            jSONObjectPut2.put(str, i11);
                        }
                        C1652b.m2734a();
                        C1652b.m2736d().m1618c(jSONObjectPut2);
                    } catch (Exception unused2) {
                        return;
                    }
                    break;
                }
                break;
        }
    }
}
