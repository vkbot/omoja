package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class m0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4343b;
    public final /* synthetic */ k0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ m0(k0 k0Var, int i9) {
        this.f4343b = i9;
        this.c = k0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4343b) {
            case 0:
                this.c.d.request();
                break;
            case 1:
                this.c.d.o();
                break;
            case 2:
                this.c.j();
                break;
            case 3:
                this.c.d.flush();
                break;
            default:
                this.c.d.i();
                break;
        }
    }
}
