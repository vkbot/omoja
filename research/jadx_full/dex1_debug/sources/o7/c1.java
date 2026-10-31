package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4173b = 0;
    public final /* synthetic */ o1 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c1(o1 o1Var, long j9) {
        this.c = o1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4173b) {
            case 0:
                this.c.getClass();
                break;
            default:
                ((p7.n) this.c.f4359a.c).q(n7.f1.f3930m.h("Keepalive failed. The connection is likely gone"));
                break;
        }
    }

    public c1(o1 o1Var, Throwable th) {
        this.c = o1Var;
    }
}
