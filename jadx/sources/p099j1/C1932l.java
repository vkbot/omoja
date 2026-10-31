package p099j1;

import android.content.Context;
import com.example.navistart.R;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p030c5.C0990e;
import p047e0.AbstractC1387m;
import p088i0.EnumC1737a;
import p255z0.InterfaceC3692a;

/* JADX INFO: renamed from: j1.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1932l implements InterfaceC1942v {

    /* JADX INFO: renamed from: c */
    public static final String f5218c = AbstractC1387m.m2421h(new byte[]{48, 36, -12, -45, 46, 83, -70, 50, 42, 51, -52, -62, 43, 81, -117, 38, 48, 63, -10}, new byte[]{68, 75, -109, -76, 66, 54, -27, 67});

    /* JADX INFO: renamed from: d */
    public static final String f5219d = AbstractC1387m.m2421h(new byte[]{-19, 106, 9, -5, -36, -16, -91, -71, -18, 115, 1, -12, -9, -1}, new byte[]{-126, 26, 108, -107, -125, -102, -6, -38});

    /* JADX INFO: renamed from: e */
    public static final String f5220e = AbstractC1387m.m2421h(new byte[]{32, 62, 117, 22, -52, -60, 30, -60, 52, 36, 121, 44, -27, -49, 22, -59, Base64.padSymbol, 53, 108, 39}, new byte[]{81, 80, 13, 73, -70, -83, 121, -86});

    /* JADX INFO: renamed from: a */
    public C0990e f5221a;

    /* JADX INFO: renamed from: b */
    public C0990e f5222b;

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: b */
    public final InterfaceC3692a mo3013b() {
        if (this.f5221a == null) {
            this.f5221a = new C0990e(20);
        }
        return this.f5221a;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: d */
    public final InterfaceC1943w mo3014d() {
        if (this.f5222b == null) {
            this.f5222b = new C0990e(12);
        }
        return this.f5222b;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: e */
    public final C1940t[] mo3019e() {
        EnumC1928h[] enumC1928hArrValues = EnumC1928h.values();
        EnumC1926f[] enumC1926fArrValues = EnumC1926f.values();
        int length = enumC1928hArrValues.length + enumC1926fArrValues.length;
        C1940t[] c1940tArr = new C1940t[length + 2];
        c1940tArr[0] = new C1940t(f5219d, AbstractC1387m.m2421h(new byte[]{78, -40, -115, -48, -113, 28, 56, -20, 78, -14, -116, -23, ByteCompanionObject.MAX_VALUE, 116, 82, ByteCompanionObject.MIN_VALUE, 32, -110, -32, -70, -35, 117, 104, ByteCompanionObject.MIN_VALUE, 32, -110, -26, -70, -45}, new byte[]{-98, 66, 93, 107, 95, -92, -24, 80}), 0, R.drawable.ic_j6_climate_action, new C1923c(26));
        int i10 = 0;
        while (i10 < enumC1928hArrValues.length) {
            int i11 = i10 + 1;
            c1940tArr[i11] = enumC1928hArrValues[i10].f5169b;
            i10 = i11;
        }
        int length2 = enumC1928hArrValues.length + 1;
        for (int i12 = 0; i12 < enumC1926fArrValues.length; i12++) {
            c1940tArr[length2 + i12] = enumC1926fArrValues[i12].f5137b;
        }
        c1940tArr[length + 1] = new C1940t(f5218c, null, R.string.jaecoo_action_toggle_qnx_vignette, R.drawable.toggle_gu_pp_cpp, new C1923c(27));
        return c1940tArr;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: a */
    public final void mo3012a(Context context, EnumC1737a enumC1737a) {
    }
}
