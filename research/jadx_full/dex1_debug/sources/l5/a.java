package l5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3287a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3288b;
    public final long c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(String str, long j9, long j10) {
        this.f3287a = str;
        this.f3288b = j9;
        this.c = j10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f3287a.equals(aVar.f3287a) && this.f3288b == aVar.f3288b && this.c == aVar.c) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        int iHashCode = (this.f3287a.hashCode() ^ 1000003) * 1000003;
        long j9 = this.f3288b;
        long j10 = this.c;
        return ((iHashCode ^ ((int) (j9 ^ (j9 >>> 32)))) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("InstallationTokenResult{token=");
        sb.append(this.f3287a);
        sb.append(", tokenExpirationTimestamp=");
        sb.append(this.f3288b);
        sb.append(", tokenCreationTimestamp=");
        return ai.onnxruntime.a.n(sb, this.c, "}");
    }
}
