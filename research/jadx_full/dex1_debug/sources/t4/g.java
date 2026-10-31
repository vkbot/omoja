package t4;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f5395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f5396b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(p pVar, boolean z8) {
        this.f5395a = pVar;
        this.f5396b = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (gVar.f5395a.equals(this.f5395a) && gVar.f5396b == this.f5396b) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return ((this.f5395a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.f5396b).hashCode();
    }
}
