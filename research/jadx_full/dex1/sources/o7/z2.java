package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class z2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n7.t f4525a;
    public final w2 c;
    public boolean d = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public n7.j f4526b = n7.j.e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public z2(n7.t tVar, w2 w2Var) {
        this.f4525a = tVar;
        this.c = w2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(z2 z2Var, n7.j jVar) {
        z2Var.f4526b = jVar;
        if (jVar == n7.j.c || jVar == n7.j.d) {
            z2Var.d = true;
        } else if (jVar == n7.j.e) {
            z2Var.d = false;
        }
    }
}
