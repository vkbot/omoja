package androidx.constraintlayout.core.state;

import android.content.Context;
import kotlin.p118io.encoding.Base64;
import org.json.JSONObject;
import p016b1.C0871l;
import p016b1.InterfaceC0870k;
import p023b8.InterfaceC0930d;
import p042d5.C1285f;
import p047e0.AbstractC1387m;
import p050e3.C1461d;
import p078h0.C1652b;
import p099j1.C1932l;
import p099j1.C1935o;
import p099j1.InterfaceC1941u;
import p240x5.C3577c;

/* JADX INFO: renamed from: androidx.constraintlayout.core.state.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0275a implements Interpolator, InterfaceC0870k, InterfaceC0930d, InterfaceC1941u {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f306b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ String f307c;

    public /* synthetic */ C0275a(C0871l c0871l, String str, int i10) {
        this.f306b = i10;
        this.f307c = str;
    }

    @Override // p099j1.InterfaceC1941u
    /* JADX INFO: renamed from: c */
    public void mo457c(Context context) {
        int i10 = this.f306b;
        String str = this.f307c;
        switch (i10) {
            case 5:
                String str2 = C1932l.f5218c;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(AbstractC1387m.m2421h(new byte[]{-123, -19, 121, 85, 16, 84, 117}, new byte[]{-26, -126, 20, 56, 113, 58, 17, -118}), str);
                    C1652b.m2734a();
                    C1652b.m2736d().m1618c(jSONObject);
                } catch (Throwable unused) {
                    return;
                }
                break;
            default:
                String str3 = C1935o.f5276c;
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(AbstractC1387m.m2421h(new byte[]{-108, -59, -11, -8, Base64.padSymbol, 91, -33}, new byte[]{-9, -86, -104, -107, 92, 53, -69, 17}), str);
                    C1652b.m2734a();
                    C1652b.m2736d().m1618c(jSONObject2);
                } catch (Throwable unused2) {
                    return;
                }
                break;
        }
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f8) {
        return Transition.lambda$getInterpolator$0(this.f307c, f8);
    }

    @Override // p016b1.InterfaceC0870k
    public String run() {
        switch (this.f306b) {
            case 1:
                return C0871l.m951h(this.f307c);
            case 2:
                return C0871l.m949f(this.f307c);
            default:
                return C0871l.m950g(this.f307c);
        }
    }

    @Override // p023b8.InterfaceC0930d
    public boolean test(Object obj) {
        C3577c c3577c = (C3577c) obj;
        String str = this.f307c;
        if (str.equals("ON_FOREGROUND") && c3577c.m5695q()) {
            return true;
        }
        for (C1285f c1285f : c3577c.m5698t()) {
            if (c1285f.m2291o().toString().equals(str) || c1285f.m2290n().m2287o().equals(str)) {
                C1461d.m2513m("The event " + str + " is contained in the list of triggers");
                return true;
            }
        }
        return false;
    }

    public /* synthetic */ C0275a(String str, int i10) {
        this.f306b = i10;
        this.f307c = str;
    }
}
