package p099j1;

import android.content.Context;
import com.example.navistart.R;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;
import p030c5.C0990e;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p088i0.EnumC1737a;
import p255z0.InterfaceC3692a;

/* JADX INFO: renamed from: j1.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1935o implements InterfaceC1942v {

    /* JADX INFO: renamed from: c */
    public static final String f5276c = AbstractC1387m.m2421h(new byte[]{-105, -97, 18, 5, -94, 10, 0, 109, -115, -120, 42, 20, -89, 8, 49, 121, -105, -124, 16}, new byte[]{-29, -16, 117, 98, -50, 111, 95, 28});

    /* JADX INFO: renamed from: d */
    public static final String f5277d = AbstractC1387m.m2421h(new byte[]{-80, -77, 41, 73, 9, -20, 55, 107, -77, -86, 33, 70, 34, -29}, new byte[]{-33, -61, 76, 39, 86, -122, 104, 8});

    /* JADX INFO: renamed from: e */
    public static final String f5278e = AbstractC1387m.m2421h(new byte[]{-126, -75, 126, 124, 124, 91, -10, -98, -106, -81, 114, 70, 85, 80, -2, -97, -97, -66, 103, 77}, new byte[]{-13, -37, 6, 35, 10, 50, -111, -16});

    /* JADX INFO: renamed from: a */
    public C0990e f5279a;

    /* JADX INFO: renamed from: b */
    public C0990e f5280b;

    /* JADX INFO: renamed from: i */
    public static void m3035i(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{60, 126, 69, -38, -4, -52, 112}, new byte[]{95, 17, 40, -73, -99, -94, 20, -52}), str);
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{-99, 116, -52, 65, -115}, new byte[]{-21, 21, -96, 52, -24, 9, -92, ByteCompanionObject.MAX_VALUE}), obj);
            C1652b.m2734a();
            C1652b.m2736d().m1618c(jSONObject);
        } catch (Throwable unused) {
        }
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: b */
    public final InterfaceC3692a mo3013b() {
        if (this.f5279a == null) {
            this.f5279a = new C0990e(20);
        }
        return this.f5279a;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: d */
    public final InterfaceC1943w mo3014d() {
        if (this.f5280b == null) {
            this.f5280b = new C0990e(12);
        }
        return this.f5280b;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: e */
    public final C1940t[] mo3019e() {
        EnumC1934n[] enumC1934nArrValues = EnumC1934n.values();
        EnumC1933m[] enumC1933mArrValues = EnumC1933m.values();
        int length = enumC1934nArrValues.length + enumC1933mArrValues.length;
        C1940t[] c1940tArr = new C1940t[length + 2];
        c1940tArr[0] = new C1940t(f5277d, null, R.string.t2_action_open_climate, R.drawable.ic_j6_climate_action, new C1929i(14));
        int i10 = 0;
        while (i10 < enumC1934nArrValues.length) {
            int i11 = i10 + 1;
            c1940tArr[i11] = enumC1934nArrValues[i10].f5275b;
            i10 = i11;
        }
        int length2 = enumC1934nArrValues.length + 1;
        for (int i12 = 0; i12 < enumC1933mArrValues.length; i12++) {
            c1940tArr[length2 + i12] = enumC1933mArrValues[i12].f5248b;
        }
        c1940tArr[length + 1] = new C1940t(f5276c, null, R.string.jaecoo_action_toggle_qnx_vignette, R.drawable.toggle_gu_pp_cpp, new C1929i(15));
        return c1940tArr;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: a */
    public final void mo3012a(Context context, EnumC1737a enumC1737a) {
    }
}
