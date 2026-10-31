package p105j7;

import org.json.JSONObject;
import p047e0.AbstractC1387m;
import p099j1.C1929i;

/* JADX INFO: renamed from: j7.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1996a {

    /* JADX INFO: renamed from: a */
    public final double f5436a;

    /* JADX INFO: renamed from: b */
    public final double f5437b;

    public C1996a(double d, double d10) {
        if (!Double.isFinite(d) || !Double.isFinite(d10) || Math.abs(d) > 90.0d || Math.abs(d10) > 180.0d) {
            C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{104, -37, 5, 107, -11, -55, 68, -106, 105, -58, 4, 94, -11, -58, 68, -110, 105, -60, 5, 99, -12, -8, 68, -99, -104, -106, 111, 14, -101, -93, 42, -7, 56, -106, 97, 14, -99, -93, 41, -8, 8, -105, 87, 15, -82}, new byte[]{-72, 70, -43, -34, 37, 115, -108, 40}));
            throw null;
        }
        this.f5436a = d;
        this.f5437b = d10;
    }

    /* JADX INFO: renamed from: a */
    public static C1996a m3087a(JSONObject jSONObject) {
        return new C1996a(jSONObject.getDouble(AbstractC1387m.m2421h(new byte[]{35, 69, -3, 119, 41, -18, 14, -37}, new byte[]{79, 36, -119, 30, 93, -101, 106, -66})), jSONObject.getDouble(AbstractC1387m.m2421h(new byte[]{-58, -92, -114, -66, -15, -52, 84, -58, -49}, new byte[]{-86, -53, -32, -39, -104, -72, 33, -94})));
    }
}
