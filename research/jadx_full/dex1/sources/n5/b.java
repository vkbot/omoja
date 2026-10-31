package n5;

import c7.l;
import com.bumptech.glide.g;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3855b;
    public final int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(int i9, String str, long j9) {
        this.f3854a = str;
        this.f3855b = j9;
        this.c = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static l a() {
        l lVar = new l(1);
        lVar.d = 0L;
        return lVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        String str = bVar.f3854a;
        String str2 = this.f3854a;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        if (this.f3855b != bVar.f3855b) {
            return false;
        }
        int i9 = bVar.c;
        int i10 = this.c;
        if (i10 == 0) {
            return i9 == 0;
        }
        return g.a(i10, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        String str = this.f3854a;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j9 = this.f3855b;
        int i9 = (((iHashCode ^ 1000003) * 1000003) ^ ((int) ((j9 >>> 32) ^ j9))) * 1000003;
        int i10 = this.c;
        return (i10 != 0 ? g.c(i10) : 0) ^ i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("TokenResult{token=");
        sb.append(this.f3854a);
        sb.append(", tokenExpirationTimestamp=");
        sb.append(this.f3855b);
        sb.append(", responseCode=");
        int i9 = this.c;
        if (i9 == 1) {
            str = "OK";
        } else if (i9 != 2) {
            str = i9 != 3 ? "null" : "AUTH_ERROR";
        } else {
            str = "BAD_CONFIG";
        }
        sb.append(str);
        sb.append("}");
        return sb.toString();
    }
}
