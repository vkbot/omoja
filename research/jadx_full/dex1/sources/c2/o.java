package c2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o extends w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v f467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final u f468b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o(v vVar, u uVar) {
        this.f467a = vVar;
        this.f468b = uVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof w) {
            w wVar = (w) obj;
            v vVar = this.f467a;
            if (vVar != null ? vVar.equals(((o) wVar).f467a) : ((o) wVar).f467a == null) {
                u uVar = this.f468b;
                if (uVar != null ? uVar.equals(((o) wVar).f468b) : ((o) wVar).f468b == null) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        v vVar = this.f467a;
        int iHashCode = ((vVar == null ? 0 : vVar.hashCode()) ^ 1000003) * 1000003;
        u uVar = this.f468b;
        return (uVar != null ? uVar.hashCode() : 0) ^ iHashCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f467a + ", mobileSubtype=" + this.f468b + "}";
    }
}
