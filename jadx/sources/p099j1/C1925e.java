package p099j1;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.example.navistart.MyCarReceiver;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.json.JSONObject;
import p030c5.C0990e;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p088i0.EnumC1737a;
import p165p2.C2962e;
import p255z0.InterfaceC3692a;

/* JADX INFO: renamed from: j1.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1925e implements InterfaceC1942v {

    /* JADX INFO: renamed from: B */
    public static final Uri f5109B;

    /* JADX INFO: renamed from: a */
    public C0990e f5134a;

    /* JADX INFO: renamed from: b */
    public C2962e f5135b;

    /* JADX INFO: renamed from: c */
    public static final String f5110c = AbstractC1387m.m2421h(new byte[]{42, 33, 30, -17, 84, -77, 10, -98, 41, 14, 15, -32, 101, -66}, new byte[]{69, 81, 123, -127, 11, -43, ByteCompanionObject.MAX_VALUE, -5});

    /* JADX INFO: renamed from: d */
    public static final String f5111d = AbstractC1387m.m2421h(new byte[]{-1, 123, -110, 45, -95, 104, 101, -1, -2, 96}, new byte[]{-112, 11, -9, 67, -2, 28, 23, -118});

    /* JADX INFO: renamed from: e */
    public static final String f5112e = AbstractC1387m.m2421h(new byte[]{-85, Base64.padSymbol, -44, 96, -22, -48, -70, -116, -67, 63, -48}, new byte[]{-56, 81, -69, 19, -113, -113, -50, -2});

    /* JADX INFO: renamed from: f */
    public static final String f5113f = AbstractC1387m.m2421h(new byte[]{16, 55, 93, 78, -98, 19, 118, -29, 9, 34, 103, 66, -82, 12}, new byte[]{ByteCompanionObject.MAX_VALUE, 71, 56, 32, -63, 116, 26, -116});

    /* JADX INFO: renamed from: g */
    public static final String f5114g = AbstractC1387m.m2421h(new byte[]{-19, -116, 71, 1, 125, 96, -95, 7, -10, -114, 67, 3, 125, 111, -85, 10, -23}, new byte[]{-126, -4, 34, 111, 34, 3, -60, 105});

    /* JADX INFO: renamed from: h */
    public static final String f5115h = AbstractC1387m.m2421h(new byte[]{-68, -94, -71, -26, -69, -100, -125, 69, -79, -70, -92, -12, -78, -100, -116, 79, -68, -91}, new byte[]{-33, -50, -42, -107, -34, -61, -32, 32});

    /* JADX INFO: renamed from: i */
    public static final String f5116i = AbstractC1387m.m2421h(new byte[]{-72, 39, 111, 63, -42, 5, -121, 106, -77, 56, 125, 34, -42, 20, -101, 104, -69}, new byte[]{-41, 87, 10, 81, -119, 114, -18, 4});

    /* JADX INFO: renamed from: j */
    public static final String f5117j = AbstractC1387m.m2421h(new byte[]{-9, -93, -99, 23, -41, -50, 120, 51, -4, -68, -113, 10, -41, -120, 33}, new byte[]{-104, -45, -8, 121, -120, -71, 17, 93});

    /* JADX INFO: renamed from: k */
    public static final String f5118k = AbstractC1387m.m2421h(new byte[]{-16, -24, 66, 41, -30, -41, 67, 54, -5, -9, 80, 52, -30, -107, 26}, new byte[]{-97, -104, 39, 71, -67, -96, 42, 88});

    /* JADX INFO: renamed from: l */
    public static final String f5119l = AbstractC1387m.m2421h(new byte[]{-34, -113, -26, -15, 121, -41, -11, 0, -45, -121, -26, -11, 111}, new byte[]{-67, -29, -119, -126, 28, -120, -126, 105});

    /* JADX INFO: renamed from: m */
    public static final String f5120m = AbstractC1387m.m2421h(new byte[]{-125, -12, -101, -113, 72, 88, 40, 39, -120, -21, -119, -66, 113, 93, 46, 39, -104, -37, -110, -124, 113, 91, 30, 120, -36}, new byte[]{-20, -124, -2, -31, 23, 47, 65, 73});

    /* JADX INFO: renamed from: n */
    public static final String f5121n = AbstractC1387m.m2421h(new byte[]{82, 12, -81, -98, -60, 82, 67, 81, 89, 19, -67, -81, -3, 87, 69, 81, 73, 35, -72, -103, -4, 77, 94, 96, 12, 76}, new byte[]{Base64.padSymbol, 124, -54, -16, -101, 37, 42, 63});

    /* JADX INFO: renamed from: o */
    public static final String f5122o = AbstractC1387m.m2421h(new byte[]{121, 110, 16, 22, 117, 11, 119, -61, 114, 113, 2, 39, 88, 25, ByteCompanionObject.MAX_VALUE, -33, 73, 114, 16, 30, 94, 35, 47, -99}, new byte[]{22, 30, 117, 120, 42, 124, 30, -83});

    /* JADX INFO: renamed from: p */
    public static final String f5123p = AbstractC1387m.m2421h(new byte[]{6, -25, -69, 95, -22, -125, -118, -38, 13, -8, -87, 110, -57, -111, -126, -58, 54, -27, -73, 86, -35, ByteCompanionObject.MIN_VALUE, -68, -123, 89}, new byte[]{105, -105, -34, 49, -75, -12, -29, -76});

    /* JADX INFO: renamed from: q */
    public static final String f5124q = AbstractC1387m.m2421h(new byte[]{-43, 13, -31, 112, 82, -25, 35, -32, -63, 13, -1, 103}, new byte[]{-77, 98, -115, 20, 13, -118, 74, -110});

    /* JADX INFO: renamed from: r */
    public static final String f5125r = AbstractC1387m.m2421h(new byte[]{-70, -92, -56, -23, -73, 57, -6, -111, -90, -72, -36, -23, -87, 46}, new byte[]{-49, -54, -82, -122, -37, 93, -91, -4});

    /* JADX INFO: renamed from: s */
    public static final String f5126s = AbstractC1387m.m2421h(new byte[]{100, 2, -47, 99, 40, 27, -99, -77, 107, 49, -38, ByteCompanionObject.MAX_VALUE, 34, 54, -113}, new byte[]{7, 110, -66, 16, 77, 68, -4, -33});

    /* JADX INFO: renamed from: t */
    public static final String f5127t = AbstractC1387m.m2421h(new byte[]{-59, 64, 25, 102, -81, -77, -111, -9, -40, 111, 26, 122, -97, -71, -118, -57, -58, 85, 26, 124}, new byte[]{-86, 48, 124, 8, -16, -41, -2, -104});

    /* JADX INFO: renamed from: u */
    public static final String f5128u = AbstractC1387m.m2421h(new byte[]{-16, -32, -26, -70, -13, 13, 67, -93, -4, -2, -42, -81, -28, Base64.padSymbol, 73, -72, -52, -32, -20, -81, -30}, new byte[]{-109, -116, -119, -55, -106, 82, 39, -52});

    /* JADX INFO: renamed from: v */
    public static final String f5129v = AbstractC1387m.m2421h(new byte[]{112, 87, 31, -18, 57, 121, 116, -18, 109, 120, 28, -14, 9, 115, 111, -34, 109, 78, 29, -24, 18}, new byte[]{31, 39, 122, ByteCompanionObject.MIN_VALUE, 102, 29, 27, -127});

    /* JADX INFO: renamed from: w */
    public static final String f5130w = AbstractC1387m.m2421h(new byte[]{-13, 48, 21, -120, 84, -52, -68, -113, -1, 46, 37, -99, 67, -4, -74, -108, -49, 46, 19, -100, 89, -25}, new byte[]{-112, 92, 122, -5, 49, -109, -40, -32});

    /* JADX INFO: renamed from: x */
    public static final String f5131x = AbstractC1387m.m2421h(new byte[]{20, 45, -71, -25, -95, 72, 45, -29, 9, 2, -82, -20, -97, 94, 29, -32, 30, 59, -88}, new byte[]{123, 93, -36, -119, -2, 44, 66, -116});

    /* JADX INFO: renamed from: y */
    public static final String f5132y = AbstractC1387m.m2421h(new byte[]{-13, 18, 101, -41, -22, 26, 106, 113, -1, 12, 85, -42, -22, 36, 124, 65, -4, 27, 108, -48}, new byte[]{-112, 126, 10, -92, -113, 69, 14, 30});

    /* JADX INFO: renamed from: z */
    public static final String f5133z = AbstractC1387m.m2421h(new byte[]{124, -21, -69, 91, -18, 9, -113, 48, 97, -60, -84, 80, -48, 31, -65, 45, 122, -4, -74, 65}, new byte[]{19, -101, -34, 53, -79, 109, -32, 95});

    /* JADX INFO: renamed from: A */
    public static final String f5108A = AbstractC1387m.m2421h(new byte[]{-71, -80, -52, -17, 95, -109, 63, -87, -75, -82, -4, -18, 95, -83, 41, -103, -88, -75, -60, -12, 78}, new byte[]{-38, -36, -93, -100, 58, -52, 91, -58});

    static {
        AbstractC1387m.m2421h(new byte[]{83, 62, -83, 60, -1, 12, 104, -26, 78, 41, -79, 13, -51, 8, 104, -30, 91, 43, -91, 55, -50, 29}, new byte[]{60, 78, -56, 82, -96, 105, 6, -125});
        f5109B = Uri.parse(AbstractC1387m.m2421h(new byte[]{-120, 31, -78, Base64.padSymbol, -10, -20, -16, -117, -60, 95, -65, 38, -2, -84, -23, -44, -116, 17, -14, 57, -5, -25, -14, -97, -99, 31, -75, 42, -10, -18, -19, -45}, new byte[]{-21, 112, -36, 73, -109, -126, -124, -79}));
        new AtomicBoolean(false);
    }

    /* JADX INFO: renamed from: i */
    public static void m3018i(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC1387m.m2421h(new byte[]{19, 46, -89}, new byte[]{112, 67, -61, -69, 95, -127, -47, -100}), str);
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
        new MyCarReceiver().onReceive(context, new Intent(AbstractC1387m.m2421h(new byte[]{62, 111, 57, 48, -97, -8, -37, 125, 54, 111, 41, 39, -98, -27, -111, 50, 60, 117, 52, 45, -98, -65, -20, 16, 13, 68, 24, 12, -81, -34, -15}, new byte[]{95, 1, 93, 66, -16, -111, -65, 83})));
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: b */
    public final InterfaceC3692a mo3013b() {
        if (this.f5134a == null) {
            this.f5134a = new C0990e(20);
        }
        return this.f5134a;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: c */
    public final boolean mo3015c() {
        return true;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: d */
    public final InterfaceC1943w mo3014d() {
        if (this.f5135b == null) {
            this.f5135b = new C2962e(12);
        }
        return this.f5135b;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: e */
    public final C1940t[] mo3019e() {
        EnumC1924d[] enumC1924dArrValues = EnumC1924d.values();
        C1940t[] c1940tArr = new C1940t[enumC1924dArrValues.length];
        for (int i10 = 0; i10 < enumC1924dArrValues.length; i10++) {
            c1940tArr[i10] = enumC1924dArrValues[i10].f5107b;
        }
        return c1940tArr;
    }

    @Override // p099j1.InterfaceC1942v
    /* JADX INFO: renamed from: h */
    public final boolean mo3016h() {
        return true;
    }
}
