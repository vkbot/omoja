package p190s1;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p098j0.AbstractC1920f;
import p098j0.C1919e;
import p142n0.EnumC2469d;

/* JADX INFO: renamed from: s1.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3167r {

    /* JADX INFO: renamed from: b */
    public static final String f9191b;

    /* JADX INFO: renamed from: c */
    public static final String f9192c;

    /* JADX INFO: renamed from: d */
    public static final String f9193d;

    /* JADX INFO: renamed from: e */
    public static final String f9194e;

    /* JADX INFO: renamed from: f */
    public static final String f9195f;

    /* JADX INFO: renamed from: g */
    public static final String f9196g;

    /* JADX INFO: renamed from: h */
    public static final String f9197h;

    /* JADX INFO: renamed from: i */
    public static final String f9198i;

    /* JADX INFO: renamed from: j */
    public static final String f9199j;

    /* JADX INFO: renamed from: k */
    public static final String f9200k;

    /* JADX INFO: renamed from: a */
    public final SharedPreferences f9201a;

    static {
        AbstractC1387m.m2421h(new byte[]{2, 70, -4, -65, -8, -94, -78, -96, 4, 68, -3, -114, -20, -81, -75, -115}, new byte[]{104, 37, -120, -32, -113, -57, -48, -1});
        f9191b = AbstractC1387m.m2421h(new byte[]{52, 56, 39, 37, -16, 67, 36, -65, 63, 55, 38, 19, -25, 83, 15, -67, 5, 49, 58, 40, -29}, new byte[]{90, 89, 83, 76, -122, 38, 123, -46});
        f9192c = AbstractC1387m.m2421h(new byte[]{89, -88, -91, ByteCompanionObject.MIN_VALUE, -102, -28, 113, -1, 82, -89, -92, -74, -119, -27, 73, -9}, new byte[]{55, -55, -47, -23, -20, -127, 46, -110});
        f9193d = AbstractC1387m.m2421h(new byte[]{-58, -10, 85, 97, -63, 90, 35, -70, -51, -7, 84, 87, -46, 91, 27, -78, -9, -25, 78, 123, -34, 75, 21, -72, -58}, new byte[]{-88, -105, 33, 8, -73, 63, 124, -41});
        f9194e = AbstractC1387m.m2421h(new byte[]{52, 26, -122, -56, 117, 58, -100, -76, 63, 21, -121, -2, 98, 60, -73, -80, 53, 21, -83, -59, 102, 57, -94, -84, 54, 15, -127, -2, 96, 45, -90, -72, 46, 30, -106}, new byte[]{90, 123, -14, -95, 3, 95, -61, -39});
        f9195f = AbstractC1387m.m2421h(new byte[]{53, -22, 28, -106, 117, 100, -66, -115, 62, -27, 29, -96, 113, 100, -126, -123, 53, -1, 55, -98, 115, 113, -110, -65, 47, -7, 9, -122}, new byte[]{91, -117, 104, -1, 3, 1, -31, -32});
        f9196g = AbstractC1387m.m2421h(new byte[]{69, -114, -120, 116, -29, 105, Base64.padSymbol, -124, 78, -127, -119, 66, -25, 105, 1, -116, 69, -101, -93, 110, -27, 96, 11, -99, 88, -80, -120, 111, -12, 117}, new byte[]{43, -17, -4, 29, -107, 12, 98, -23});
        f9197h = AbstractC1387m.m2421h(new byte[]{26, -112, -116, -67, 16, -54, -90, 119, 35, -120, -111, -67, 29, -4, -87, 101, 8, -109, -68, -65, 11, -49, -92, 113, 12, -113, -122}, new byte[]{124, -4, -29, -36, 100, -93, -56, 16});
        f9198i = AbstractC1387m.m2421h(new byte[]{-48, 19, -23, 84, 54, -11, 11, -102, -23, 11, -12, 84, 59, -61, 4, -111, -63, 30, -1, 70, 29, -22, 12, -114, -33, 29, -22, 80}, new byte[]{-74, ByteCompanionObject.MAX_VALUE, -122, 53, 66, -100, 101, -3});
        f9199j = AbstractC1387m.m2421h(new byte[]{117, -41, -73, -6, -63, -93, -26, -107, 76, -49, -86, -6, -52, -107, -5, -102, 114, -53, -67}, new byte[]{19, -69, -40, -101, -75, -54, -120, -14});
        f9200k = AbstractC1387m.m2421h(new byte[]{18, 118, 93, -19, -1, 41, ByteCompanionObject.MAX_VALUE, 22, 43, 110, 64, -19, -14, 31, 126, 3, 29, ByteCompanionObject.MAX_VALUE, 92, -8, -22, 52, 120, 30, 26}, new byte[]{116, 26, 50, -116, -117, 64, 17, 113});
        AbstractC1387m.m2421h(new byte[]{-19, 24, -67, 42, -110, -33, -4, -12, -34, 29, -89, 39, -102, -24, -8, -27, -11, 16, -89, 42, -82}, new byte[]{-127, 121, -56, 68, -15, -73, -103, -122});
    }

    public C3167r(Context context) {
        this.f9201a = context.getSharedPreferences(AbstractC1387m.m2421h(new byte[]{113, 87, -93, -50, 66, 45, 78, -43, 119, 85, -94, -1, 86, 32, 73, -8}, new byte[]{27, 52, -41, -111, 53, 72, 44, -118}), 0);
    }

    /* JADX INFO: renamed from: a */
    public final void m5078a(Context context) {
        SharedPreferences sharedPreferences = this.f9201a;
        String str = f9194e;
        if (sharedPreferences.getBoolean(str, false)) {
            return;
        }
        AbstractC1920f.m3008f(AbstractC1387m.m2421h(new byte[]{-33, -126, 91, -84, 0, -76, 49, 102, -20, -121, 65, -95, 8, -125, 53, 119, -57, -118, 65, -84, 60, -20}, new byte[]{-77, -29, 46, -62, 99, -36, 84, 20}), C1919e.m3000c(EnumC2469d.f6770l, context));
        AbstractC1920f.m3008f(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -41, -48, 119, 64, 85, 99, 94, 76, -46, -54, 122, 72, 98, 103, 79, 103, -33, -54, 119, 124, 12}, new byte[]{19, -74, -91, 25, 35, Base64.padSymbol, 6, 44}), C1919e.m3000c(EnumC2469d.f6763h0, context));
        AbstractC1920f.m3008f(AbstractC1387m.m2421h(new byte[]{-72, 54, -52, -92, 88, 36, 30, -125, -117, 51, -42, -87, 80, 19, 26, -110, -96, 62, -42, -92, 100, 126}, new byte[]{-44, 87, -71, -54, 59, 76, 123, -15}), C1919e.m3000c(EnumC2469d.f6713A0, context));
        sharedPreferences.edit().putBoolean(str, true).apply();
    }

    /* JADX INFO: renamed from: b */
    public final EnumC3161o m5079b() {
        String string = this.f9201a.getString(f9192c, EnumC3161o.f9134b.name());
        if (string != null) {
            try {
                return EnumC3161o.valueOf(string);
            } catch (IllegalArgumentException unused) {
            }
        }
        return EnumC3161o.f9134b;
    }

    /* JADX INFO: renamed from: c */
    public final int m5080c() {
        return Math.max(0, Math.min(100, this.f9201a.getInt(f9193d, 50)));
    }

    /* JADX INFO: renamed from: d */
    public final EnumC3163p m5081d() {
        String string = this.f9201a.getString(f9200k, EnumC3163p.f9139b.name());
        if (string != null) {
            try {
                return EnumC3163p.valueOf(string);
            } catch (IllegalArgumentException unused) {
            }
        }
        return EnumC3163p.f9139b;
    }

    /* JADX INFO: renamed from: e */
    public final EnumC3165q m5082e() {
        String string = this.f9201a.getString(f9199j, EnumC3165q.f9148b.name());
        if (string != null) {
            try {
                return EnumC3165q.valueOf(string);
            } catch (IllegalArgumentException unused) {
            }
        }
        return EnumC3165q.f9148b;
    }

    /* JADX INFO: renamed from: f */
    public final boolean m5083f() {
        return this.f9201a.getBoolean(f9191b, true);
    }
}
