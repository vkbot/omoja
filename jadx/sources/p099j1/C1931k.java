package p099j1;

import android.content.Context;
import com.example.navistart.cores.ColorText;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;
import p030c5.C0990e;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p088i0.EnumC1737a;
import p138m7.AbstractC2412k;
import p255z0.InterfaceC3692a;

/* JADX INFO: renamed from: j1.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1931k implements InterfaceC1942v {

    /* JADX INFO: renamed from: a */
    public C0990e f5216a;

    /* JADX INFO: renamed from: b */
    public C0990e f5217b;

    /* JADX INFO: renamed from: i */
    public static void m3032i(int i10, int i11) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{117, 24, 113, 48, 9, 25, -123}, new byte[]{22, 119, 28, 93, 104, 119, -31, 68}), AbstractC1387m.m2421h(new byte[]{11, -80, 78, 110, -79, 54, -80, 38, 25, -83, ByteCompanionObject.MAX_VALUE, 122, -79, 50, -122, 33, 21, -74, 78}, new byte[]{124, -39, 32, 10, -34, 65, -17, 85}));
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{4, 123, 89, 17, 35, -60}, new byte[]{115, 18, 55, 117, 76, -77, 42, -97}), i10);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-99, 104, 120, 95, -8}, new byte[]{-21, 9, 20, 42, -99, 23, 70, -71}), i11);
            C1652b.m2734a();
            C1652b.m2736d().m1618c(jSONObject);
        } catch (Throwable unused) {
        }
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: a */
    public final void mo3012a(Context context, EnumC1737a enumC1737a) {
        if (enumC1737a == null || !enumC1737a.equals(EnumC1737a.f4525c)) {
            return;
        }
        AbstractC2412k.m3776c(context, true);
        C1652b.m2751w(AbstractC1387m.m2421h(new byte[]{40, -53, -126, 85, 117, -47, -112, -86, 63, -41, -102, ByteCompanionObject.MAX_VALUE, 59, -82, -43, -98, 51, -40, -123, 95, 117, -30, -105, -91, 63}, new byte[]{90, -66, -20, 26, 27, -125, -11, -55}), ColorText.RED);
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: b */
    public final InterfaceC3692a mo3013b() {
        if (this.f5216a == null) {
            this.f5216a = new C0990e(20);
        }
        return this.f5216a;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: d */
    public final InterfaceC1943w mo3014d() {
        if (this.f5217b == null) {
            this.f5217b = new C0990e(12);
        }
        return this.f5217b;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: e */
    public final C1940t[] mo3019e() {
        EnumC1930j[] enumC1930jArrValues = EnumC1930j.values();
        C1940t[] c1940tArr = new C1940t[enumC1930jArrValues.length];
        for (int i10 = 0; i10 < enumC1930jArrValues.length; i10++) {
            c1940tArr[i10] = enumC1930jArrValues[i10].f5215b;
        }
        return c1940tArr;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: h */
    public final boolean mo3016h() {
        return true;
    }
}
