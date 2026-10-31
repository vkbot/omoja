package f5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class h0 implements b8.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2201b;
    public final /* synthetic */ i0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ h0(i0 i0Var, int i9) {
        this.f2201b = i9;
        this.c = i0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.b
    public final void accept(Object obj) {
        switch (this.f2201b) {
            case 0:
                i0 i0Var = this.c;
                i0Var.getClass();
                i0Var.c = x7.e.a((f0) obj);
                break;
            default:
                this.c.c = i8.d.f2733b;
                break;
        }
    }
}
