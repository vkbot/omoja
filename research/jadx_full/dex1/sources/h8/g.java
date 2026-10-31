package h8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g extends a {
    public final /* synthetic */ int d = 0;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2550f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b8.c f2551g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(l lVar, int i9) {
        super(lVar);
        this.f2551g = d8.b.f1795a;
        this.e = 3;
        this.f2550f = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.b
    public final void e(x7.d dVar) {
        x7.d cVar;
        switch (this.d) {
            case 0:
                f5.q qVar = (f5.q) this.f2551g;
                x7.b bVar = this.c;
                if (!y5.k.y(bVar, dVar, qVar)) {
                    int iC = com.bumptech.glide.g.c(this.f2550f);
                    int i9 = this.e;
                    if (iC != 1) {
                        cVar = iC != 2 ? new d(dVar, qVar, i9) : new c(dVar, qVar, i9, true);
                    } else {
                        cVar = new c(dVar, qVar, i9, false);
                    }
                    bVar.d(cVar);
                    break;
                }
                break;
            default:
                c5.e eVar = (c5.e) this.f2551g;
                x7.b bVar2 = this.c;
                if (!y5.k.y(bVar2, dVar, eVar)) {
                    bVar2.d(new y(dVar, eVar, this.e, this.f2550f));
                    break;
                }
                break;
        }
    }

    public g(a0 a0Var, f5.q qVar) {
        super(a0Var);
        this.f2551g = qVar;
        this.e = 2;
        this.f2550f = 1;
    }
}
