package k2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f3160a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d2.j f3161b;
    public final d2.i c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(long j9, d2.j jVar, d2.i iVar) {
        this.f3160a = j9;
        this.f3161b = jVar;
        this.c = iVar;
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
        return this.f3160a == bVar.f3160a && this.f3161b.equals(bVar.f3161b) && this.c.equals(bVar.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        long j9 = this.f3160a;
        return ((((((int) ((j9 >>> 32) ^ j9)) ^ 1000003) * 1000003) ^ this.f3161b.hashCode()) * 1000003) ^ this.c.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "PersistedEvent{id=" + this.f3160a + ", transportContext=" + this.f3161b + ", event=" + this.c + "}";
    }
}
