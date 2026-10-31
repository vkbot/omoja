package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4210b;
    public final /* synthetic */ k1 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f1(k1 k1Var, int i9) {
        this.f4210b = i9;
        this.c = k1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4210b) {
            case 0:
                k1 k1Var = this.c;
                k1Var.f4318p = null;
                k1Var.f4311i.m(2, "CONNECTING after backoff");
                k1.e(k1Var, n7.j.f3943b);
                k1.f(k1Var);
                break;
            case 1:
                if (this.c.w.f3949a == n7.j.e) {
                    this.c.f4311i.m(2, "CONNECTING as requested");
                    k1.e(this.c, n7.j.f3943b);
                    k1.f(this.c);
                }
                break;
            default:
                k1 k1Var2 = this.c;
                k1Var2.f4311i.m(2, "Terminated");
                f2 f2Var = ((e2) k1Var2.d.d).f4201m;
                f2Var.A.remove(k1Var2);
                f2.g(f2Var);
                break;
        }
    }
}
