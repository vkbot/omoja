package j5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f3069a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3070b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(long j9, long j10) {
        this.f3069a = j9;
        this.f3070b = j10;
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
        return this.f3069a == bVar.f3069a && this.f3070b == bVar.f3070b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        long j9 = this.f3069a;
        int i9 = (((int) (j9 ^ (j9 >>> 32))) ^ 430065837) * 1000003;
        long j10 = this.f3070b;
        return i9 ^ ((int) ((j10 >>> 32) ^ j10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("RateLimit{limiterKey=APP_FOREGROUND_ONE_PER_DAY_LIMITER_KEY, limit=");
        sb.append(this.f3069a);
        sb.append(", timeToLiveMillis=");
        return ai.onnxruntime.a.n(sb, this.f3070b, "}");
    }
}
