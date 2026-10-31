package f5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class g0 implements b8.c, b8.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i0 f2199b;
    public final /* synthetic */ j5.b c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ g0(i0 i0Var, j5.b bVar) {
        this.f2199b = i0Var;
        this.c = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.c
    public Object apply(Object obj) {
        i0 i0Var = this.f2199b;
        i0Var.getClass();
        this.c.getClass();
        c0 c0VarS = d0.s();
        c0VarS.c();
        d0.n((d0) c0VarS.c);
        i0Var.f2208b.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        c0VarS.c();
        d0.o((d0) c0VarS.c, jCurrentTimeMillis);
        return ((f0) obj).o((d0) c0VarS.a());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.d
    public boolean test(Object obj) {
        d0 d0Var = (d0) obj;
        this.f2199b.f2208b.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis() - d0Var.q();
        j5.b bVar = this.c;
        return jCurrentTimeMillis > bVar.f3070b || d0Var.r() < bVar.f3069a;
    }
}
