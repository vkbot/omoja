package i8;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class k extends a {
    public final /* synthetic */ int c;
    public final b8.c d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k(x7.e eVar, b8.c cVar, int i9) {
        super(eVar);
        this.c = i9;
        this.d = cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x7.e
    public final void d(x7.f fVar) {
        switch (this.c) {
            case 0:
                this.f2730b.c(new j(fVar, this.d));
                break;
            default:
                this.f2730b.c(new g8.c(fVar, this.d, 1));
                break;
        }
    }
}
