package t1;

import android.util.Log;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.bumptech.glide.m f5339b;
    public final /* synthetic */ double c;
    public final /* synthetic */ int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(com.bumptech.glide.m mVar, double d, int i9) {
        this.f5339b = mVar;
        this.c = d;
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        double dA;
        double d = this.c;
        try {
            h0.b.a();
            JSONObject jSONObjectC = h0.b.d().c(new JSONObject().put(e0.m.h(new byte[]{-120, -13, 71}, new byte[]{-21, -98, 35, -78, -103, 18, 115, 37}), e0.m.h(new byte[]{-121, -30, 113, -45, 103, -58, 16, -73, -65, -9, 96, -2, 98, -42, 27, -81}, new byte[]{-32, -121, 5, -116, 1, -77, 117, -37})));
            dA = d == 0.0d ? e.a(jSONObjectC, 100.0d) : e.a(jSONObjectC, d);
        } catch (Exception e) {
            Log.w(e0.m.h(new byte[]{-76, -22, -12, 112, -86, 68, 34, 109, -105, -21}, new byte[]{-14, -97, -111, 28, -3, 45, 70, 10}), e0.m.h(new byte[]{-29, -47, -98, 106, -12, 93, 77, -106, -35, -108, -109, 107, -94, 94, 84}, new byte[]{-79, -76, -1, 14, -44, 59, 56, -13}), e);
            dA = Double.NaN;
        }
        double d9 = dA;
        com.bumptech.glide.m mVar = this.f5339b;
        ((e) mVar.c).f5343b.post(new d(mVar, this.d, d9, d));
    }
}
