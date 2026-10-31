package f7;

import java.net.Inet4Address;
import java.net.InetAddress;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InetAddress f2286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2287b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(InetAddress inetAddress, int i9) {
        this.f2286a = inetAddress;
        this.f2287b = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static f a(String str) throws i {
        String strSubstring;
        int i9;
        int iLastIndexOf = str.lastIndexOf(47);
        if (iLastIndexOf >= 0) {
            strSubstring = str.substring(iLastIndexOf + 1);
            try {
                i9 = Integer.parseInt(strSubstring, 10);
                str = str.substring(0, iLastIndexOf);
            } catch (NumberFormatException unused) {
                throw new i(Integer.class, strSubstring, null, null);
            }
        } else {
            strSubstring = "";
            i9 = -1;
        }
        InetAddress inetAddressA = d.a(str);
        int i10 = inetAddressA instanceof Inet4Address ? 32 : 128;
        if (i9 > i10) {
            throw new i(f.class, strSubstring, "Invalid network mask", null);
        }
        if (i9 < 0) {
            i9 = i10;
        }
        return new f(inetAddressA, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f2286a.equals(fVar.f2286a) && this.f2287b == fVar.f2287b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f2286a.hashCode() ^ this.f2287b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return this.f2286a.getHostAddress() + '/' + this.f2287b;
    }
}
