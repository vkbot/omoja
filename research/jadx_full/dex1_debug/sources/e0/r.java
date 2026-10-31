package e0;

import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s f1934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s f1935b;
    public final boolean c;
    public final boolean d;
    public final boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f1936f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f1937g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f1938h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public r(s sVar, s sVar2, boolean z8, boolean z9, boolean z10, boolean z11, String str, String str2) {
        this.f1934a = sVar;
        this.f1935b = sVar2;
        this.c = z8;
        this.d = z9;
        this.e = z10;
        this.f1936f = z11;
        this.f1937g = str;
        this.f1938h = str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String a() {
        StringBuilder sb = new StringBuilder();
        sb.append(m.h(new byte[]{24, 51, -84, -63, -59, -110, -94, -45}, new byte[]{122, 86, -54, -82, -73, -9, -97, -88}));
        sb.append(this.f1934a.a());
        sb.append(m.h(new byte[]{-99, -40, -3, -43, -102, -78, -111, 56, -81, -125, -77, -45, -124, -106, -124, 62, -123, -103, -83, -62, -109, -77, -51}, new byte[]{-32, -12, -35, -74, -10, -41, -16, 74}));
        sb.append(this.c);
        sb.append(m.h(new byte[]{-53, -116, 29, 101, -122, 1, 98, -14, -112, -62, 27, 123, -96, 1, 124, -47, -76, -39, 29, 106, -122, 5, 116, -40, -125, -111}, new byte[]{-25, -84, 126, 9, -29, 96, 16, -67}));
        sb.append(this.d);
        String str = this.f1937g;
        sb.append(str == null ? "" : m.h(new byte[]{77, 13, -29, 91, 71, 77, -77, -118, 22, 67, -27, 69, 103, 94, -77, -86, 19, 16}, new byte[]{97, 45, ByteCompanionObject.MIN_VALUE, 55, 34, 44, -63, -59}).concat(str));
        sb.append(m.h(new byte[]{-71, -88, 10, -119, 47, 67, -2, 58, -44, -20, 21, -123, 44, 109, -4, 43, -16, -27, 8, -104, 39, 72, -75}, new byte[]{-107, -120, 120, -20, 66, 44, -120, 95}));
        sb.append(this.e);
        sb.append(m.h(new byte[]{-60, 125, 84, 52, 47, -66, 82, 28, -87, 57, 75, 56, 44, -110, 69, 21, -124, 14, 83, 50, 33, -76, 65, 29, -115, 57, 27}, new byte[]{-24, 93, 38, 81, 66, -47, 36, 121}));
        sb.append(this.f1936f);
        String str2 = this.f1938h;
        sb.append(str2 != null ? m.h(new byte[]{-122, 34, 114, 82, 5, -2, 116, -96, -21, 102, 109, 94, 6, -44, 112, -73, -59, 112, Base64.padSymbol}, new byte[]{-86, 2, 0, 55, 104, -111, 2, -59}).concat(str2) : "");
        sb.append(m.h(new byte[]{-51, -33, -71, -102, 114, 54, -45, 112, -102}, new byte[]{-31, -1, -40, -4, 6, 83, -95, 77}));
        sb.append(this.f1935b.a());
        return com.google.protobuf.q.i(new byte[]{-23}, new byte[]{-108, 93, -90, 42, -18, 54, -43, 110}, sb);
    }
}
