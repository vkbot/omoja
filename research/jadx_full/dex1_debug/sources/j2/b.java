package j2;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f3021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3022b;
    public final Set c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(long j9, long j10, Set set) {
        this.f3021a = j9;
        this.f3022b = j10;
        this.c = set;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (this.f3021a == bVar.f3021a && this.f3022b == bVar.f3022b && this.c.equals(bVar.c)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        long j9 = this.f3021a;
        int i9 = (((int) (j9 ^ (j9 >>> 32))) ^ 1000003) * 1000003;
        long j10 = this.f3022b;
        return ((i9 ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003) ^ this.c.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "ConfigValue{delta=" + this.f3021a + ", maxAllowedDelay=" + this.f3022b + ", flags=" + this.c + "}";
    }
}
