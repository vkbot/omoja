package n7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f3949a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f1 f3950b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public k(j jVar, f1 f1Var) {
        this.f3949a = jVar;
        o4.b.i(f1Var, "status is null");
        this.f3950b = f1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static k a(j jVar) {
        o4.b.d("state is TRANSIENT_ERROR. Use forError() instead", jVar != j.d);
        return new k(jVar, f1.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f3949a.equals(kVar.f3949a) && this.f3950b.equals(kVar.f3950b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f3949a.hashCode() ^ this.f3950b.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        f1 f1Var = this.f3950b;
        boolean zF = f1Var.f();
        j jVar = this.f3949a;
        if (zF) {
            return jVar.toString();
        }
        return jVar + "(" + f1Var + ")";
    }
}
