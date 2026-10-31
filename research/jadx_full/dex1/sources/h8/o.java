package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class o extends a {
    public final e0.g d;
    public final z3.f e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final w7.c f2586f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final w7.c f2587g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public o(x7.b bVar, e0.g gVar) {
        super(bVar);
        this.d = gVar;
        this.e = d8.b.d;
        w7.c cVar = d8.b.c;
        this.f2586f = cVar;
        this.f2587g = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.b
    public final void e(x7.d dVar) {
        boolean z8 = dVar instanceof e8.a;
        x7.b bVar = this.c;
        e0.g gVar = this.d;
        if (z8) {
            bVar.d(new m((e8.a) dVar, gVar, this.e, this.f2586f, this.f2587g));
        } else {
            bVar.d(new n(dVar, gVar, this.e, this.f2586f, this.f2587g));
        }
    }
}
