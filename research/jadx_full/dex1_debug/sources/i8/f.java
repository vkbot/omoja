package i8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f extends a {
    public final /* synthetic */ int c;
    public final Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ f(x7.e eVar, Object obj, int i9) {
        super(eVar);
        this.c = i9;
        this.d = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.e
    public final void d(x7.f fVar) {
        switch (this.c) {
            case 0:
                this.f2730b.c(new e(fVar, (b8.d) this.d, 0));
                break;
            case 1:
                this.f2730b.c(new p(fVar, (x7.k) this.d));
                break;
            case 2:
                this.f2730b.c(new q(fVar, (d8.a) this.d));
                break;
            default:
                this.f2730b.c(new h(1, fVar, (x7.e) this.d));
                break;
        }
    }
}
