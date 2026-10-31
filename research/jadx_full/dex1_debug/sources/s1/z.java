package s1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class z implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5235b;
    public final /* synthetic */ q0 c;
    public final /* synthetic */ m0 d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ z(q0 q0Var, m0 m0Var, int i9) {
        this.f5235b = i9;
        this.c = q0Var;
        this.d = m0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5235b) {
            case 0:
                m0 m0Var = m0.c;
                q0 q0Var = this.c;
                m0 m0Var2 = this.d;
                if (m0Var2 == m0Var) {
                    q0Var.f5188z = false;
                }
                if (m0Var2 == m0.d) {
                    q0Var.A = false;
                }
                if (q0Var.isAttachedToWindow()) {
                    q0Var.B(m0Var2);
                }
                break;
            default:
                this.c.B(this.d);
                break;
        }
    }
}
