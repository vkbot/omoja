package w0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5616b;
    public final /* synthetic */ l0 c;
    public final /* synthetic */ int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f0(l0 l0Var, int i9, int i10) {
        this.f5616b = i10;
        this.c = l0Var;
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5616b) {
            case 0:
                l0 l0Var = this.c;
                if (this.d == l0Var.f5697h.get()) {
                    l0Var.c0();
                }
                break;
            default:
                l0 l0Var2 = this.c;
                if (this.d == l0Var2.f5697h.get()) {
                    l0Var2.c0();
                    l0Var2.S();
                }
                break;
        }
    }
}
