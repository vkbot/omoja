package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b4 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4172b;
    public final /* synthetic */ w4 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b4(w4 w4Var, int i9) {
        this.f4172b = i9;
        this.c = w4Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4172b) {
            case 0:
                v1 v1Var = (v1) this.c.d;
                v1Var.A = true;
                w wVar = v1Var.f4479v;
                a5.h hVar = v1Var.t;
                wVar.b((n7.f1) hVar.c, (v) hVar.d, (n7.v0) hVar.e);
                break;
            default:
                v1 v1Var2 = (v1) this.c.d;
                if (!v1Var2.A) {
                    v1Var2.f4479v.j();
                }
                break;
        }
    }
}
