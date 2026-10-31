package p064f7;

import java.net.Inet4Address;
import java.net.InetAddress;
import org.apache.commons.p161io.IOUtils;

/* JADX INFO: renamed from: f7.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1589f {

    /* JADX INFO: renamed from: a */
    public final InetAddress f3949a;

    /* JADX INFO: renamed from: b */
    public final int f3950b;

    public C1589f(InetAddress inetAddress, int i10) {
        this.f3949a = inetAddress;
        this.f3950b = i10;
    }

    /* JADX INFO: renamed from: a */
    public static C1589f m2674a(String str) throws C1592i {
        String strSubstring;
        int i10;
        int iLastIndexOf = str.lastIndexOf(47);
        if (iLastIndexOf >= 0) {
            strSubstring = str.substring(iLastIndexOf + 1);
            try {
                i10 = Integer.parseInt(strSubstring, 10);
                str = str.substring(0, iLastIndexOf);
            } catch (NumberFormatException unused) {
                throw new C1592i(Integer.class, strSubstring, null, null);
            }
        } else {
            strSubstring = "";
            i10 = -1;
        }
        InetAddress inetAddressM2671a = AbstractC1587d.m2671a(str);
        int i11 = inetAddressM2671a instanceof Inet4Address ? 32 : 128;
        if (i10 > i11) {
            throw new C1592i(C1589f.class, strSubstring, "Invalid network mask", null);
        }
        if (i10 < 0) {
            i10 = i11;
        }
        return new C1589f(inetAddressM2671a, i10);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1589f)) {
            return false;
        }
        C1589f c1589f = (C1589f) obj;
        return this.f3949a.equals(c1589f.f3949a) && this.f3950b == c1589f.f3950b;
    }

    public final int hashCode() {
        return this.f3949a.hashCode() ^ this.f3950b;
    }

    public final String toString() {
        return this.f3949a.getHostAddress() + IOUtils.DIR_SEPARATOR_UNIX + this.f3950b;
    }
}
