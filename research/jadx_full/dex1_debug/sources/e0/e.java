package e0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1828b;
    public final /* synthetic */ s1.u0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(s1.u0 u0Var, int i9) {
        this.f1828b = i9;
        this.c = u0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1828b) {
            case 0:
                s1.u0 u0Var = this.c;
                boolean z8 = u0Var.f5214n;
                u0Var.f5214n = !z8;
                if (z8) {
                    u0Var.g();
                } else {
                    u0Var.l();
                }
                u0Var.c.setVisibility(u0Var.f5214n ? 0 : 8);
                u0Var.c();
                u0Var.h();
                break;
            case 1:
                s1.u0 u0Var2 = this.c;
                u0Var2.h();
                u0Var2.setAlpha(u0Var2.f5214n ? 1.0f : 0.5f);
                break;
            case 2:
                this.c.h();
                break;
            default:
                s1.u0 u0Var3 = this.c;
                u0Var3.h();
                if (u0Var3.f5206f && !u0Var3.f5209i.isEmpty()) {
                    u0Var3.j();
                    break;
                }
                break;
        }
    }
}
