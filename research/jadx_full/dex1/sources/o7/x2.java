package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x2 extends n7.h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4499a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4500b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x2(n7.f0 f0Var) {
        o4.b.i(f0Var, "result");
        this.f4500b = f0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.h0
    public final n7.f0 a(g3 g3Var) {
        switch (this.f4499a) {
            case 0:
                return (n7.f0) this.f4500b;
            default:
                return n7.f0.a((n7.f1) this.f4500b);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f4499a) {
            case 0:
                com.bumptech.glide.manager.s sVar = new com.bumptech.glide.manager.s(x2.class.getSimpleName());
                sVar.c((n7.f0) this.f4500b, "result");
                return sVar.toString();
            default:
                return super.toString();
        }
    }

    public x2(n7.f1 f1Var) {
        this.f4500b = f1Var;
    }
}
