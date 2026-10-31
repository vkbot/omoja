package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a4 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4131b;
    public final /* synthetic */ c4 c;
    public final /* synthetic */ w4 d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a4(w4 w4Var, c4 c4Var, int i9) {
        this.f4131b = i9;
        this.d = w4Var;
        this.c = c4Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f4131b;
        w4 w4Var = this.d;
        switch (i9) {
            case 0:
                ((v1) w4Var.d).c.execute(new com.bumptech.glide.m(21, this));
                break;
            default:
                v1 v1Var = (v1) w4Var.d;
                n7.q0 q0Var = v1.F;
                v1Var.p(this.c);
                break;
        }
    }
}
