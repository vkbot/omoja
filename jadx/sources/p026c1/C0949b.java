package p026c1;

import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p099j1.C1929i;

/* JADX INFO: renamed from: c1.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0949b {

    /* JADX INFO: renamed from: a */
    public final double f817a;

    /* JADX INFO: renamed from: b */
    public final double f818b;

    public C0949b(double d, double d10) {
        if (!Double.isFinite(d) || d < -90.0d || d > 90.0d) {
            C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{15, 56, 60, 45, 60, 43, 100, 28, 14, 18, 60, 37, -51, 123, 0, 114, 97, 64, 87, 69, 91, 123, 9, 114, 111, -80, 60, 36, 60, 32, 101, 32, 14, 28, -52, 69, 83, 122, 54, -126, -14, -87, -36, -75, Base64.padSymbol, 31, 100, 28, -1, -87, -36}, new byte[]{-33, -112, -20, -107, -19, -85, -76, -94}));
            throw null;
        }
        if (!Double.isFinite(d10) || d10 < -180.0d || d10 > 180.0d) {
            C1929i.m3029k(AbstractC1387m.m2421h(new byte[]{-38, -54, 13, 67, 49, -71, 12, -67, -38, -32, 12, ByteCompanionObject.MAX_VALUE, 49, -78, -4, -34, -66, -114, 99, 45, 90, -46, 106, -34, -73, -114, 109, -35, 49, -77, 13, -123, -37, -36, 12, 113, -63, -46, 98, -33, -120, 126, -16, -52, -39, 50, -4, -34, -66, -114, 99, -35, -48, 58, -20}, new byte[]{10, 94, -35, -3, -31, 2, -36, 14}));
            throw null;
        }
        this.f817a = d;
        this.f818b = d10;
    }
}
