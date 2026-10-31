package j1;

import android.content.Context;
import com.example.navistart.cores.ColorText;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c5.e f2966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c5.e f2967b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void i(int i9, int i10) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(e0.m.h(new byte[]{117, 24, 113, 48, 9, 25, -123}, new byte[]{22, 119, 28, 93, 104, 119, -31, 68}), e0.m.h(new byte[]{11, -80, 78, 110, -79, 54, -80, 38, 25, -83, ByteCompanionObject.MAX_VALUE, 122, -79, 50, -122, 33, 21, -74, 78}, new byte[]{124, -39, 32, 10, -34, 65, -17, 85}));
            jSONObject.put(e0.m.h(new byte[]{4, 123, 89, 17, 35, -60}, new byte[]{115, 18, 55, 117, 76, -77, 42, -97}), i9);
            jSONObject.put(e0.m.h(new byte[]{-99, 104, 120, 95, -8}, new byte[]{-21, 9, 20, 42, -99, 23, 70, -71}), i10);
            h0.b.a();
            h0.b.d().c(jSONObject);
        } catch (Throwable unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final void a(Context context, i0.a aVar) {
        if (aVar == null || !aVar.equals(i0.a.c)) {
            return;
        }
        m7.k.c(context, true);
        h0.b.w(e0.m.h(new byte[]{40, -53, -126, 85, 117, -47, -112, -86, 63, -41, -102, ByteCompanionObject.MAX_VALUE, 59, -82, -43, -98, 51, -40, -123, 95, 117, -30, -105, -91, 63}, new byte[]{90, -66, -20, 26, 27, -125, -11, -55}), ColorText.RED);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final z0.a b() {
        if (this.f2966a == null) {
            this.f2966a = new c5.e(20);
        }
        return this.f2966a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final w d() {
        if (this.f2967b == null) {
            this.f2967b = new c5.e(12);
        }
        return this.f2967b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final t[] e() {
        j[] jVarArrValues = j.values();
        t[] tVarArr = new t[jVarArrValues.length];
        for (int i9 = 0; i9 < jVarArrValues.length; i9++) {
            tVarArr[i9] = jVarArrValues[i9].f2965b;
        }
        return tVarArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final boolean h() {
        return true;
    }
}
