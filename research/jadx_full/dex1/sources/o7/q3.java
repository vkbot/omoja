package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q3 implements v3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4413b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ q3(int i9, Object obj) {
        this.f4412a = i9;
        this.f4413b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.v3
    public final void a(c4 c4Var) {
        switch (this.f4412a) {
            case 0:
                c4Var.f4177a.a((n7.h) this.f4413b);
                break;
            case 1:
                c4Var.f4177a.n((n7.o) this.f4413b);
                break;
            default:
                c4Var.f4177a.g((n7.q) this.f4413b);
                break;
        }
    }
}
