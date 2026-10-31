package m0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3346b;
    public final /* synthetic */ e1 c;
    public final /* synthetic */ h1 d;
    public final /* synthetic */ String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f3347f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c1(e1 e1Var, h1 h1Var, String str, int i9, int i10) {
        this.f3346b = i10;
        this.c = e1Var;
        this.d = h1Var;
        this.e = str;
        this.f3347f = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3346b) {
            case 0:
                h1 h1Var = this.d;
                h1Var.f3447i = false;
                h1Var.f3448j = this.e;
                i1.v((i1) this.c.f3406i, this.f3347f);
                break;
            case 1:
                this.d.f3448j = this.e;
                i1.v((i1) this.c.f3406i, this.f3347f);
                break;
            default:
                this.d.f3448j = this.e;
                i1.v((i1) this.c.f3406i, this.f3347f);
                break;
        }
    }
}
