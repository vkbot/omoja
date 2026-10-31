package w0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5613b;
    public final /* synthetic */ l0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e0(l0 l0Var, int i9) {
        this.f5613b = i9;
        this.c = l0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5613b) {
            case 0:
                l0 l0Var = this.c;
                l0Var.c0();
                l0Var.d.shutdownNow();
                break;
            case 1:
                l0 l0Var2 = this.c;
                l0Var2.f5706q = -1;
                l0Var2.f5695f.c();
                break;
            default:
                l0 l0Var3 = this.c;
                if (!l0Var3.f5703n.isEmpty() && !l0Var3.j0()) {
                    l0Var3.c0();
                    l0Var3.f5695f.c();
                    l0Var3.f5698i = false;
                }
                l0Var3.S();
                break;
        }
    }
}
