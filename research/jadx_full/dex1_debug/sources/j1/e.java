package j1;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.example.navistart.MyCarReceiver;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements v {
    public static final Uri B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c5.e f2923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p2.e f2924b;
    public static final String c = e0.m.h(new byte[]{42, 33, 30, -17, 84, -77, 10, -98, 41, 14, 15, -32, 101, -66}, new byte[]{69, 81, 123, -127, 11, -43, ByteCompanionObject.MAX_VALUE, -5});
    public static final String d = e0.m.h(new byte[]{-1, 123, -110, 45, -95, 104, 101, -1, -2, 96}, new byte[]{-112, 11, -9, 67, -2, 28, 23, -118});
    public static final String e = e0.m.h(new byte[]{-85, Base64.padSymbol, -44, 96, -22, -48, -70, -116, -67, 63, -48}, new byte[]{-56, 81, -69, 19, -113, -113, -50, -2});

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f2905f = e0.m.h(new byte[]{16, 55, 93, 78, -98, 19, 118, -29, 9, 34, 103, 66, -82, 12}, new byte[]{ByteCompanionObject.MAX_VALUE, 71, 56, 32, -63, 116, 26, -116});

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f2906g = e0.m.h(new byte[]{-19, -116, 71, 1, 125, 96, -95, 7, -10, -114, 67, 3, 125, 111, -85, 10, -23}, new byte[]{-126, -4, 34, 111, 34, 3, -60, 105});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f2907h = e0.m.h(new byte[]{-68, -94, -71, -26, -69, -100, -125, 69, -79, -70, -92, -12, -78, -100, -116, 79, -68, -91}, new byte[]{-33, -50, -42, -107, -34, -61, -32, 32});

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f2908i = e0.m.h(new byte[]{-72, 39, 111, 63, -42, 5, -121, 106, -77, 56, 125, 34, -42, 20, -101, 104, -69}, new byte[]{-41, 87, 10, 81, -119, 114, -18, 4});

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f2909j = e0.m.h(new byte[]{-9, -93, -99, 23, -41, -50, 120, 51, -4, -68, -113, 10, -41, -120, 33}, new byte[]{-104, -45, -8, 121, -120, -71, 17, 93});

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f2910k = e0.m.h(new byte[]{-16, -24, 66, 41, -30, -41, 67, 54, -5, -9, 80, 52, -30, -107, 26}, new byte[]{-97, -104, 39, 71, -67, -96, 42, 88});

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f2911l = e0.m.h(new byte[]{-34, -113, -26, -15, 121, -41, -11, 0, -45, -121, -26, -11, 111}, new byte[]{-67, -29, -119, -126, 28, -120, -126, 105});

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f2912m = e0.m.h(new byte[]{-125, -12, -101, -113, 72, 88, 40, 39, -120, -21, -119, -66, 113, 93, 46, 39, -104, -37, -110, -124, 113, 91, 30, 120, -36}, new byte[]{-20, -124, -2, -31, 23, 47, 65, 73});

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f2913n = e0.m.h(new byte[]{82, 12, -81, -98, -60, 82, 67, 81, 89, 19, -67, -81, -3, 87, 69, 81, 73, 35, -72, -103, -4, 77, 94, 96, 12, 76}, new byte[]{Base64.padSymbol, 124, -54, -16, -101, 37, 42, 63});

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f2914o = e0.m.h(new byte[]{121, 110, 16, 22, 117, 11, 119, -61, 114, 113, 2, 39, 88, 25, ByteCompanionObject.MAX_VALUE, -33, 73, 114, 16, 30, 94, 35, 47, -99}, new byte[]{22, 30, 117, 120, 42, 124, 30, -83});

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f2915p = e0.m.h(new byte[]{6, -25, -69, 95, -22, -125, -118, -38, 13, -8, -87, 110, -57, -111, -126, -58, 54, -27, -73, 86, -35, ByteCompanionObject.MIN_VALUE, -68, -123, 89}, new byte[]{105, -105, -34, 49, -75, -12, -29, -76});

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f2916q = e0.m.h(new byte[]{-43, 13, -31, 112, 82, -25, 35, -32, -63, 13, -1, 103}, new byte[]{-77, 98, -115, 20, 13, -118, 74, -110});
    public static final String r = e0.m.h(new byte[]{-70, -92, -56, -23, -73, 57, -6, -111, -90, -72, -36, -23, -87, 46}, new byte[]{-49, -54, -82, -122, -37, 93, -91, -4});

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f2917s = e0.m.h(new byte[]{100, 2, -47, 99, 40, 27, -99, -77, 107, 49, -38, ByteCompanionObject.MAX_VALUE, 34, 54, -113}, new byte[]{7, 110, -66, 16, 77, 68, -4, -33});
    public static final String t = e0.m.h(new byte[]{-59, 64, 25, 102, -81, -77, -111, -9, -40, 111, 26, 122, -97, -71, -118, -57, -58, 85, 26, 124}, new byte[]{-86, 48, 124, 8, -16, -41, -2, -104});

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f2918u = e0.m.h(new byte[]{-16, -32, -26, -70, -13, 13, 67, -93, -4, -2, -42, -81, -28, Base64.padSymbol, 73, -72, -52, -32, -20, -81, -30}, new byte[]{-109, -116, -119, -55, -106, 82, 39, -52});

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f2919v = e0.m.h(new byte[]{112, 87, 31, -18, 57, 121, 116, -18, 109, 120, 28, -14, 9, 115, 111, -34, 109, 78, 29, -24, 18}, new byte[]{31, 39, 122, ByteCompanionObject.MIN_VALUE, 102, 29, 27, -127});
    public static final String w = e0.m.h(new byte[]{-13, 48, 21, -120, 84, -52, -68, -113, -1, 46, 37, -99, 67, -4, -74, -108, -49, 46, 19, -100, 89, -25}, new byte[]{-112, 92, 122, -5, 49, -109, -40, -32});

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f2920x = e0.m.h(new byte[]{20, 45, -71, -25, -95, 72, 45, -29, 9, 2, -82, -20, -97, 94, 29, -32, 30, 59, -88}, new byte[]{123, 93, -36, -119, -2, 44, 66, -116});

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f2921y = e0.m.h(new byte[]{-13, 18, 101, -41, -22, 26, 106, 113, -1, 12, 85, -42, -22, 36, 124, 65, -4, 27, 108, -48}, new byte[]{-112, 126, 10, -92, -113, 69, 14, 30});

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String f2922z = e0.m.h(new byte[]{124, -21, -69, 91, -18, 9, -113, 48, 97, -60, -84, 80, -48, 31, -65, 45, 122, -4, -74, 65}, new byte[]{19, -101, -34, 53, -79, 109, -32, 95});
    public static final String A = e0.m.h(new byte[]{-71, -80, -52, -17, 95, -109, 63, -87, -75, -82, -4, -18, 95, -83, 41, -103, -88, -75, -60, -12, 78}, new byte[]{-38, -36, -93, -100, 58, -52, 91, -58});

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e0.m.h(new byte[]{83, 62, -83, 60, -1, 12, 104, -26, 78, 41, -79, 13, -51, 8, 104, -30, 91, 43, -91, 55, -50, 29}, new byte[]{60, 78, -56, 82, -96, 105, 6, -125});
        B = Uri.parse(e0.m.h(new byte[]{-120, 31, -78, Base64.padSymbol, -10, -20, -16, -117, -60, 95, -65, 38, -2, -84, -23, -44, -116, 17, -14, 57, -5, -25, -14, -97, -99, 31, -75, 42, -10, -18, -19, -45}, new byte[]{-21, 112, -36, 73, -109, -126, -124, -79}));
        new AtomicBoolean(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void i(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(e0.m.h(new byte[]{19, 46, -89}, new byte[]{112, 67, -61, -69, 95, -127, -47, -100}), str);
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
        new MyCarReceiver().onReceive(context, new Intent(e0.m.h(new byte[]{62, 111, 57, 48, -97, -8, -37, 125, 54, 111, 41, 39, -98, -27, -111, 50, 60, 117, 52, 45, -98, -65, -20, 16, 13, 68, 24, 12, -81, -34, -15}, new byte[]{95, 1, 93, 66, -16, -111, -65, 83})));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final z0.a b() {
        if (this.f2923a == null) {
            this.f2923a = new c5.e(20);
        }
        return this.f2923a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final boolean c() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final w d() {
        if (this.f2924b == null) {
            this.f2924b = new p2.e(12);
        }
        return this.f2924b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final t[] e() {
        d[] dVarArrValues = d.values();
        t[] tVarArr = new t[dVarArrValues.length];
        for (int i9 = 0; i9 < dVarArrValues.length; i9++) {
            tVarArr[i9] = dVarArrValues[i9].f2904b;
        }
        return tVarArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j1.v
    public final boolean h() {
        return true;
    }
}
