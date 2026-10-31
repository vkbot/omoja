package p225w0;

import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p099j1.C1929i;

/* JADX INFO: renamed from: w0.y0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3501y0 {

    /* JADX INFO: renamed from: a */
    public final String f10322a;

    /* JADX INFO: renamed from: b */
    public final String f10323b;

    /* JADX INFO: renamed from: c */
    public final String f10324c;

    /* JADX INFO: renamed from: d */
    public final double f10325d;

    public C3501y0(String str, String str2, String str3, double d) {
        if (str == null || !str.matches(AbstractC1387m.m2421h(new byte[]{36, -99, 30, -12, 56, -31, -25, -38, 60, -101, 2, -20, 35, -28, -18, -48, 56, -120, 23, -4, 56, -32, -2, -36, 60, -116, 12, -28, 50, -5, -21, -37, 33, -107, 4, -27, 37, -13, -25, -42, 54, -107, 4, -20, 33, -13, -11, -54, 47, -110, 17, -2, 43, -32, -12, -46, 38, -103, 21, -20, 58, -29, -17, -37, 47, ByteCompanionObject.MIN_VALUE, 2, -15, 52, -3, -25, -51, 54, ByteCompanionObject.MIN_VALUE, 4, -7, 57, -15, -24, -62, 50, -99, 2, -86, 12, -9, -74, -60, 12, -87, 91, -20, 36, -31, -14, -54, 48, -100, 74, -53, 54, -69, -31, -31, 14, -33}, new byte[]{83, -12, 112, -112, 87, -106, -101, -66})) || str2 == null || !str2.matches(AbstractC1387m.m2421h(new byte[]{75, 52, -95, 80, 37, -110, 44, -25, 81, 42, -81, 74, 54, -126, 50}, new byte[]{45, 88, -35, 54, 87, -18, 94, -117})) || str3 == null || !str3.matches(AbstractC1387m.m2421h(new byte[]{-22, 104, 53, ByteCompanionObject.MAX_VALUE, -14, -98, 106, -43, -10, 122, 47, ByteCompanionObject.MAX_VALUE, -24, ByteCompanionObject.MIN_VALUE, 106, -34, -1, 107, Base64.padSymbol, 119, -24, -119, 113, -35, -4, 113, 46, 115, -30, ByteCompanionObject.MIN_VALUE, 106, -46, -11, 98, 50, 102, -5, ByteCompanionObject.MIN_VALUE, 115, -55, -19, 113, 49, 113, -30, -104, ByteCompanionObject.MAX_VALUE, -34, -20, 126}, new byte[]{-103, 13, 65, 3, -121, -18, 22, -79})) || Double.isNaN(d) || Double.isInfinite(d)) {
            C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{-119, -30, -104, 74, 8, -50, 68, 115, -74, -29, -121, 72, 1, -121, 73, Base64.padSymbol, -76, -23, ByteCompanionObject.MIN_VALUE, 95, 68, -61, 69, 32, -93, -2, -121, 91, 16, -56, 82}, new byte[]{-64, -116, -18, 43, 100, -89, 32, 83}));
            throw null;
        }
        this.f10322a = str;
        this.f10323b = str2;
        this.f10324c = str3;
        this.f10325d = d;
    }

    /* JADX INFO: renamed from: a */
    public final boolean m5562a(C3501y0 c3501y0) {
        return this.f10322a.equals(c3501y0.f10322a) && this.f10323b.equals(c3501y0.f10323b) && this.f10324c.equals(c3501y0.f10324c) && Math.abs(this.f10325d - c3501y0.f10325d) < 0.001d;
    }
}
