package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t3 implements v3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y5.g f4455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ v1 f4456b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t3(v1 v1Var, y5.g gVar) {
        this.f4456b = v1Var;
        this.f4455a = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.v3
    public final void a(c4 c4Var) {
        u uVar = c4Var.f4177a;
        t7.b bVar = this.f4456b.f4464b.d;
        bVar.getClass();
        uVar.f(new t7.a(this.f4455a, bVar.f5416a));
        c4Var.f4177a.flush();
    }
}
