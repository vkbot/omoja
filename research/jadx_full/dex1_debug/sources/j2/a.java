package j2;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m2.a f3019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f3020b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(m2.a aVar, HashMap map) {
        this.f3019a = aVar;
        this.f3020b = map;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final long a(a2.b bVar, long j9, int i9) {
        long jD = j9 - this.f3019a.d();
        b bVar2 = (b) this.f3020b.get(bVar);
        long j10 = bVar2.f3021a;
        int i10 = i9 - 1;
        return Math.min(Math.max((long) (Math.pow(3.0d, i10) * j10 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j10 > 1 ? j10 : 2L) * ((long) i10)))), jD), bVar2.f3022b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f3019a.equals(aVar.f3019a) && this.f3020b.equals(aVar.f3020b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return ((this.f3019a.hashCode() ^ 1000003) * 1000003) ^ this.f3020b.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "SchedulerConfig{clock=" + this.f3019a + ", values=" + this.f3020b + "}";
    }
}
