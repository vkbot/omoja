package p225w0;

import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p000a.AbstractC0000a;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: w0.x0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3499x0 {

    /* JADX INFO: renamed from: a */
    public long f10318a;

    /* JADX INFO: renamed from: b */
    public long f10319b;

    /* JADX INFO: renamed from: c */
    public String f10320c = "";

    /* JADX INFO: renamed from: d */
    public String f10321d = "";

    /* JADX INFO: renamed from: a */
    public final synchronized String m5557a(String str, boolean z9) {
        String strTrim;
        if (str == null) {
            strTrim = "";
        } else {
            try {
                strTrim = str.trim();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (strTrim.isEmpty()) {
            return "";
        }
        if (!this.f10321d.equals(AbstractC1387m.m2421h(new byte[]{58, 114, -82, -99, -33, -69, 114, -62, 23, 113, -93, -110, -12, -66, 97, -47, 45, 123, -99, -110, -60, -90, 91, -44, Base64.padSymbol, 103, -78, -109, -39, -90, 97, -61}, new byte[]{72, 23, -62, -4, -85, -46, 4, -89})) && !this.f10321d.equals(AbstractC1387m.m2421h(new byte[]{-73, -89, 41, -7, 29, -127, -111, 1, -94, -74, 34, -59, 24, -126, -98, 59, -88}, new byte[]{-60, -41, 76, -102, 116, -25, -24, 94}))) {
            C3451d1.m5394c(strTrim);
            if (m5559c()) {
                strTrim = strTrim.replaceFirst(AbstractC1387m.m2421h(new byte[]{-92, -27, -19, -56, 101, 3, 23, -48, -74, 10, 57, 109, -7, -116, -67, -76, -84, -10, -39, -106, 48, -116, -67, 63, 50, 11, 3, 109, -15, -115, -118, 63, 57, -127, -92, -111, 17, 118, 67, 62, 3, -6, 84, 5, -100, -31, -17, 90, 92, 97, -92, 109, -2, 125, -17, 93, 92, 98, 84, 9, -99, -34, 100, -49, -96, -121, -81, -108}, new byte[]{-116, -38, -124, -67, 76, 93, 63, -17}), "").trim();
                String strM5394c = C3451d1.m5394c(strTrim);
                boolean zMatches = strM5394c.matches(AbstractC1387m.m2421h(new byte[]{-103, -15, 57, -5, 63, 103, 102, -64, -60, -14, 57, -5, 63, -23, -92, 77, 53, 11, -85, 21, -123, 101, 106, -25, -5, -90, 59, -72, -43, -114, -54, 44, 103, 97, -64, 68, 89, 73, 97, -48, -54, -15, 109, 20, -73, -23, -96, 76, 12, 10, -97, 21, -126, 101, 106, -25, -5, -90, 59, -72, -43, -117, -53, 23, 103, 97, -63, ByteCompanionObject.MAX_VALUE, -44, -73, -53, 27, -21, -85, 106, -120, 120, 19, 102, 76, 0, 11, -95, 20, -70, -24, -103, 77, 54, 10, -109, -104, 117, 66, 86, -31, -99, -89, -63, 123, -43, -116, -53, 28, 103, 110, -63, 126, -43, -126, -53, 18, 102, 92, 77, -76, 126, 117, 103, -74, -53, 10, -110, 21, -124, -24, -104, 76, 7, 11, -84, 20, -69, -23, -88, -64, -57, -96, 93, -71, 47, 69, -54, 35, 103, 101, -64, 69, -44, -69, -54, 44, 103, 105, 77, -76, 126, 117, 103, -74, -53, 11, -82, 20, -69, -23, -87, 77, 55, 11, -92, 20, -68, 69, -54, 33, 103, 107, -63, 119, -44, -71, -54, 41, 103, 98, 109, -85, 117, 92, 116, -32, -44, -73, 126, -73, 96, 69, 110, -23, -59, -75, 109, -88, 100, 76, 116, -1, -33, -89, 98, -95, 113, 69, 110, -13, -48, -68, 125, -95, 44, 17, 37, -90, -21, -88, 63, -18, 121, 29, 51}, new byte[]{-73, -37, 17, -60, 5, 57, 26, -100}));
                boolean z10 = false;
                boolean z11 = this.f10321d.equals(AbstractC1387m.m2421h(new byte[]{104, -70, -86, -114, -54, -87, -11, -9, 106, -93, -68, -113, -62, -77, -5, -57, 107}, new byte[]{5, -45, -39, -3, -93, -57, -110, -88})) && strM5394c.matches(AbstractC1387m.m2421h(new byte[]{23, -117, -17, 71, -107, -25, -53, 87, 23, -117, -18, 124, 57, -115, -92, 6, 69, -27, -124, 20, -59, -116, -111, 6, 69, -28, -78, -71, -107, -22, -54, 103, 23, -113, -17, 69, -107, -29, -54, 110, -69, -27, -119, 21, -11, -115, -96, 6, 71, -28, -75, 20, -57, -116, -106, -85, 23, -121, -18, ByteCompanionObject.MAX_VALUE, -107, -26, -53, 89, 22, -78, -18, 125, 57, -115, -88, 7, 125, -27, -123, 20, -53, -116, -99, 7, ByteCompanionObject.MAX_VALUE, -28, -68, 20, -55, 33, -54, 101, 22, -66, -18, ByteCompanionObject.MAX_VALUE, -107, -26, -53, 89, 22, -78, -18, 125, 57, -115, -88, 6, 76, -27, -124, 21, -2, -116, -108, 6, 64, -27, -122, 20, -57, -116, -106, -85, 22, -74, -17, 68, -108, -33, -54, 103, 23, -120, -18, 123, -107, -17, -54, 111, -69, -28, -67, 20, -60, -116, -104, 7, 119, -27, -125, 21, -5, -115, -88, 7, ByteCompanionObject.MAX_VALUE, -28, -68, 20, -55, 33, 117, -89, -94, 91, 66, -90, 41, 50, 105, -78, -69, 90, 80, -71, 42, 59, 124, -85, -76, 80, 74, -71, 49, 40, 104, -71, -25, 90, 80, -71, 49, 40, 104, -71, -25, 90, 88, -93}, new byte[]{-57, 53, 62, -59, 69, 93, 26, -41}));
                if (this.f10321d.startsWith(AbstractC1387m.m2421h(new byte[]{36, 5, 38, 36, 54, -70, -36, -122}, new byte[]{87, 117, 67, 71, 95, -36, -91, -39})) && !zMatches && strM5394c.split(AbstractC1387m.m2421h(new byte[]{-123, 105, -117}, new byte[]{-39, 26, -96, 94, 80, 34, -4, -97})).length <= 8) {
                    z10 = true;
                }
                if (!z9 && (z10 || z11)) {
                    strTrim = this.f10320c + " " + strTrim;
                }
            }
            this.f10321d = "";
            this.f10320c = "";
            return strTrim;
        }
        if (!z9 && AbstractC0000a.m12m(strTrim)) {
            strTrim = AbstractC1387m.m2421h(new byte[]{-4, 119, -69, -43, -12, 124, -116, 118, -3, 73, -70, -22, -11, 76, -116, 126, 13, 37, -21, -124, -97, 46, -30, 23, -83, 36, -44, -123, -92, 47, -34, 23, -95, -44, -70, -26, -11, 75, -116, 123, -4, 118, -70, -20, -11, 69, -115, 73, -4, 118, -70, -22, -12, 126, -116, 118, 13}, new byte[]{45, -12, 106, 84, 37, -2, 92, -58}).concat(strTrim);
        }
        this.f10321d = "";
        this.f10320c = "";
        return strTrim;
    }

    /* JADX INFO: renamed from: b */
    public final synchronized void m5558b(long j10, String str, String str2) {
        try {
            if (this.f10319b == 0) {
                m5560d(j10);
            }
            this.f10320c = str;
            this.f10321d = str2;
            this.f10318a = Math.min(this.f10319b, j10 + 20000);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: c */
    public final synchronized boolean m5559c() {
        return !this.f10321d.isEmpty();
    }

    /* JADX INFO: renamed from: d */
    public final synchronized void m5560d(long j10) {
        this.f10318a = 10000 + j10;
        this.f10319b = j10 + 60000;
        this.f10321d = "";
        this.f10320c = "";
    }

    /* JADX INFO: renamed from: e */
    public final synchronized long m5561e() {
        return this.f10318a;
    }
}
