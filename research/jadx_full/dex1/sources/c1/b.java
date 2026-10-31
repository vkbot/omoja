package c1;

import e0.m;
import j1.i;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f415b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(double d, double d9) {
        if (!Double.isFinite(d) || d < -90.0d || d > 90.0d) {
            i.k(m.h(new byte[]{15, 56, 60, 45, 60, 43, 100, 28, 14, 18, 60, 37, -51, 123, 0, 114, 97, 64, 87, 69, 91, 123, 9, 114, 111, -80, 60, 36, 60, 32, 101, 32, 14, 28, -52, 69, 83, 122, 54, -126, -14, -87, -36, -75, Base64.padSymbol, 31, 100, 28, -1, -87, -36}, new byte[]{-33, -112, -20, -107, -19, -85, -76, -94}));
            throw null;
        }
        if (!Double.isFinite(d9) || d9 < -180.0d || d9 > 180.0d) {
            i.k(m.h(new byte[]{-38, -54, 13, 67, 49, -71, 12, -67, -38, -32, 12, ByteCompanionObject.MAX_VALUE, 49, -78, -4, -34, -66, -114, 99, 45, 90, -46, 106, -34, -73, -114, 109, -35, 49, -77, 13, -123, -37, -36, 12, 113, -63, -46, 98, -33, -120, 126, -16, -52, -39, 50, -4, -34, -66, -114, 99, -35, -48, 58, -20}, new byte[]{10, 94, -35, -3, -31, 2, -36, 14}));
            throw null;
        }
        this.f414a = d;
        this.f415b = d9;
    }
}
