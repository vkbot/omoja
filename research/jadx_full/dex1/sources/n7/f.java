package n7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f3919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final u7.g f3920b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(d dVar, u7.g gVar) {
        this.f3919a = dVar;
        o4.b.i(gVar, "interceptor");
        this.f3920b = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.d
    public final String e() {
        return this.f3919a.e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.d
    public final t f(x0 x0Var, c cVar) {
        u7.g gVar = this.f3920b;
        gVar.getClass();
        return new u7.f(gVar, this.f3919a.f(x0Var, cVar));
    }
}
