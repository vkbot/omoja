package w0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class s0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5763b;
    public final /* synthetic */ v0 c;
    public final /* synthetic */ int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ s0(v0 v0Var, int i9, int i10) {
        this.f5763b = i10;
        this.c = v0Var;
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5763b) {
            case 0:
                v0 v0Var = this.c;
                v0Var.f5783i.setText(v0Var.getString(2131952850, Integer.valueOf(this.d)));
                break;
            default:
                v0 v0Var2 = this.c;
                v0Var2.f5786l.setText(v0Var2.getString(2131952813, Integer.valueOf(this.d)));
                break;
        }
    }
}
