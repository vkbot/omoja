package m0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3345b;
    public final /* synthetic */ e0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c0(e0 e0Var, int i9) {
        this.f3345b = i9;
        this.c = e0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f3345b;
        e0 e0Var = this.c;
        switch (i9) {
            case 0:
                if (e0Var.getView() != null) {
                    String strH = e0.m.h(new byte[]{99, 67, -62, 0, -60, 91, -39, 18, 103, 87, -40}, new byte[]{19, 34, -85, 114, -101, 40, -83, 115});
                    String str = e0.A;
                    boolean zB = e0Var.B(strH, false);
                    int i10 = e0Var.r + 1;
                    e0Var.r = i10;
                    if (zB && i10 < 50) {
                        e0Var.f3393o.postDelayed(this, 1500L);
                        break;
                    }
                }
                break;
            default:
                if (e0Var.getView() != null) {
                    String str2 = e0.A;
                    e0Var.y();
                    e0Var.f3393o.postDelayed(this, 1000L);
                    break;
                }
                break;
        }
    }
}
