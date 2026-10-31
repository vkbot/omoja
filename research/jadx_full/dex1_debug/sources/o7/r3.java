package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r3 implements v3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4419a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ r3(int i9) {
        this.f4419a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.v3
    public final void a(c4 c4Var) {
        switch (this.f4419a) {
            case 0:
                c4Var.f4177a.flush();
                break;
            case 1:
                c4Var.f4177a.i();
                break;
            case 2:
                c4Var.f4177a.o();
                break;
            default:
                c4Var.f4177a.request();
                break;
        }
    }
}
