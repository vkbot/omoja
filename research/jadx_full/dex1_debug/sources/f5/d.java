package f5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2192a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l5.a f2193b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(String str, l5.a aVar) {
        if (str == null) {
            n0.b.n("Null installationId");
            throw null;
        }
        this.f2192a = str;
        if (aVar != null) {
            this.f2193b = aVar;
        } else {
            n0.b.n("Null installationTokenResult");
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (this.f2192a.equals(dVar.f2192a) && this.f2193b.equals(dVar.f2193b)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return ((this.f2192a.hashCode() ^ 1000003) * 1000003) ^ this.f2193b.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "InstallationIdResult{installationId=" + this.f2192a + ", installationTokenResult=" + this.f2193b + "}";
    }
}
