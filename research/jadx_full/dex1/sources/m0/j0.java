package m0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class j0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ n0 f3479b;
    public final /* synthetic */ int c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f3480f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j0(n0 n0Var, int i9, boolean z8, String str, boolean z9) {
        this.f3479b = n0Var;
        this.c = i9;
        this.d = z8;
        this.e = str;
        this.f3480f = z9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        String str = n0.f3526k;
        n0 n0Var = this.f3479b;
        int i9 = this.c;
        if (n0Var.t(i9)) {
            if (!this.d) {
                n0Var.u(i9);
                return;
            }
            n0Var.e = this.e;
            n0Var.d = false;
            n0Var.f3530h.setVisibility(8);
            n0Var.f3529g.setVisibility(this.f3480f ? 8 : 0);
            n0Var.f3529g.setText(2131952008);
            n0Var.f3532j.notifyDataSetChanged();
        }
    }
}
