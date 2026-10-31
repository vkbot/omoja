package s1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class g0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f0 f5078b;
    public final /* synthetic */ int c;
    public final /* synthetic */ int d;
    public final /* synthetic */ int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f5079f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g0(f0 f0Var, int i9, int i10, int i11, int i12) {
        this.f5078b = f0Var;
        this.c = i9;
        this.d = i10;
        this.e = i11;
        this.f5079f = i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        f0 f0Var = this.f5078b;
        int i9 = this.c;
        int i10 = this.d;
        int i11 = this.e;
        int i12 = this.f5079f;
        if (f0Var.c.E) {
            return;
        }
        q0 q0Var = f0Var.c;
        q0Var.F = i9;
        q0Var.G = i10;
        q0Var.H = i11;
        q0Var.I = i12;
        q0Var.C();
        f0Var.c.r.removeCallbacks(f0Var);
        f0Var.c.r.postDelayed(f0Var, 3000L);
    }
}
