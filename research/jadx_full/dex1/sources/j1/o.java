package j1;

import android.content.Context;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o implements v {
    public static final String c = e0.m.h(new byte[]{-105, -97, 18, 5, -94, 10, 0, 109, -115, -120, 42, 20, -89, 8, 49, 121, -105, -124, 16}, new byte[]{-29, -16, 117, 98, -50, 111, 95, 28});
    public static final String d = e0.m.h(new byte[]{-80, -77, 41, 73, 9, -20, 55, 107, -77, -86, 33, 70, 34, -29}, new byte[]{-33, -61, 76, 39, 86, -122, 104, 8});
    public static final String e = e0.m.h(new byte[]{-126, -75, 126, 124, 124, 91, -10, -98, -106, -81, 114, 70, 85, 80, -2, -97, -97, -66, 103, 77}, new byte[]{-13, -37, 6, 35, 10, 50, -111, -16});

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c5.e f3008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c5.e f3009b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void i(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(e0.m.h(new byte[]{60, 126, 69, -38, -4, -52, 112}, new byte[]{95, 17, 40, -73, -99, -94, 20, -52}), str);
            jSONObject.put(e0.m.h(new byte[]{-99, 116, -52, 65, -115}, new byte[]{-21, 21, -96, 52, -24, 9, -92, ByteCompanionObject.MAX_VALUE}), obj);
            h0.b.a();
            h0.b.d().c(jSONObject);
        } catch (Throwable unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final z0.a b() {
        if (this.f3008a == null) {
            this.f3008a = new c5.e(20);
        }
        return this.f3008a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final w d() {
        if (this.f3009b == null) {
            this.f3009b = new c5.e(12);
        }
        return this.f3009b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final t[] e() {
        n[] nVarArrValues = n.values();
        m[] mVarArrValues = m.values();
        int length = nVarArrValues.length + mVarArrValues.length;
        t[] tVarArr = new t[length + 2];
        tVarArr[0] = new t(d, null, 2131952604, 2131165470, new i(14));
        int i9 = 0;
        while (i9 < nVarArrValues.length) {
            int i10 = i9 + 1;
            tVarArr[i10] = nVarArrValues[i9].f3007b;
            i9 = i10;
        }
        int length2 = nVarArrValues.length + 1;
        for (int i11 = 0; i11 < mVarArrValues.length; i11++) {
            tVarArr[length2 + i11] = mVarArrValues[i11].f2988b;
        }
        tVarArr[length + 1] = new t(c, null, 2131952065, 2131165755, new i(15));
        return tVarArr;
    }

    @Override // j1.v
    public final void a(Context context, i0.a aVar) {
    }
}
