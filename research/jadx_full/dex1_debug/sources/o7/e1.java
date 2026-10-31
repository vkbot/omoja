package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e1 extends k.a {
    public final /* synthetic */ int c;
    public final /* synthetic */ n7.z d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e1(n7.z zVar, int i9) {
        super(2);
        this.c = i9;
        this.d = zVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k.a
    public final void a() {
        switch (this.c) {
            case 0:
                k1 k1Var = (k1) this.d;
                ((e2) k1Var.d.d).f4201m.Y.d(k1Var, true);
                break;
            case 1:
                ((f2) this.d).h();
                break;
            default:
                ((p7.n) this.d).f4663h.j(true);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // k.a
    public final void b() {
        switch (this.c) {
            case 0:
                k1 k1Var = (k1) this.d;
                ((e2) k1Var.d.d).f4201m.Y.d(k1Var, false);
                break;
            case 1:
                f2 f2Var = (f2) this.d;
                if (!f2Var.G.get()) {
                    f2Var.j();
                    break;
                }
                break;
            default:
                ((p7.n) this.d).f4663h.j(false);
                break;
        }
    }
}
