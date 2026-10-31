package j7;

import e0.m;
import j1.i;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f3097a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f3098b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(double d, double d9) {
        if (!Double.isFinite(d) || !Double.isFinite(d9) || Math.abs(d) > 90.0d || Math.abs(d9) > 180.0d) {
            i.k(m.h(new byte[]{104, -37, 5, 107, -11, -55, 68, -106, 105, -58, 4, 94, -11, -58, 68, -110, 105, -60, 5, 99, -12, -8, 68, -99, -104, -106, 111, 14, -101, -93, 42, -7, 56, -106, 97, 14, -99, -93, 41, -8, 8, -105, 87, 15, -82}, new byte[]{-72, 70, -43, -34, 37, 115, -108, 40}));
            throw null;
        }
        this.f3097a = d;
        this.f3098b = d9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a a(JSONObject jSONObject) {
        return new a(jSONObject.getDouble(m.h(new byte[]{35, 69, -3, 119, 41, -18, 14, -37}, new byte[]{79, 36, -119, 30, 93, -101, 106, -66})), jSONObject.getDouble(m.h(new byte[]{-58, -92, -114, -66, -15, -52, 84, -58, -49}, new byte[]{-86, -53, -32, -39, -104, -72, 33, -94})));
    }
}
