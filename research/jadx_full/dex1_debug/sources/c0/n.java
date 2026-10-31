package c0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Class f408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Class f409b;
    public Class c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n(Class cls, Class cls2, Class cls3) {
        this.f408a = cls;
        this.f409b = cls2;
        this.c = cls3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n.class != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        return this.f408a.equals(nVar.f408a) && this.f409b.equals(nVar.f409b) && p.b(this.c, nVar.c);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        int iHashCode = (this.f409b.hashCode() + (this.f408a.hashCode() * 31)) * 31;
        Class cls = this.c;
        return iHashCode + (cls != null ? cls.hashCode() : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "MultiClassKey{first=" + this.f408a + ", second=" + this.f409b + '}';
    }
}
