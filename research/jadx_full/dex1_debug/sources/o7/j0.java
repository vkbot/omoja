package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4286b;
    public final /* synthetic */ n.p c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j0(n.p pVar, int i9) {
        this.f4286b = i9;
        this.c = pVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4286b) {
            case 0:
                this.c.k(true);
                break;
            case 1:
                this.c.k(false);
                break;
            default:
                f2 f2Var = (f2) this.c.c;
                o4.b.m(f2Var.G.get(), "Channel must have been shut down");
                f2Var.H = true;
                f2Var.k(false);
                f2.g(f2Var);
                break;
        }
    }
}
