package o4;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f4080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f4081b;
    public final long c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(long j9, long j10, long j11) {
        this.f4080a = j9;
        this.f4081b = j10;
        this.c = j11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f4080a == aVar.f4080a && this.f4081b == aVar.f4081b && this.c == aVar.c) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        long j9 = this.f4080a;
        long j10 = this.f4081b;
        int i9 = (((((int) (j9 ^ (j9 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.c;
        return i9 ^ ((int) ((j11 >>> 32) ^ j11));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("StartupTime{epochMillis=");
        sb.append(this.f4080a);
        sb.append(", elapsedRealtime=");
        sb.append(this.f4081b);
        sb.append(", uptimeMillis=");
        return ai.onnxruntime.a.n(sb, this.c, "}");
    }
}
