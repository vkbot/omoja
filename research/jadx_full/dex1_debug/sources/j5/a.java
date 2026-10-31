package j5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f3068b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a(String str, d dVar) {
        this.f3067a = str;
        this.f3068b = dVar;
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
        d dVar = aVar.f3068b;
        String str = aVar.f3067a;
        if (hashCode() != aVar.hashCode()) {
            return false;
        }
        String str2 = this.f3067a;
        if ((str2 == null && str != null) || (str2 != null && !str2.equals(str))) {
            return false;
        }
        d dVar2 = this.f3068b;
        return (dVar2 == null && dVar == null) || (dVar2 != null && dVar2.equals(dVar));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        String str = this.f3067a;
        int iHashCode = str != null ? str.hashCode() : 0;
        d dVar = this.f3068b;
        return iHashCode + (dVar != null ? dVar.hashCode() : 0);
    }
}
