package f5;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class s implements b8.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f2226b;
    public final /* synthetic */ String c;
    public final /* synthetic */ q d;
    public final /* synthetic */ f e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ e0.g f2227f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ s(t tVar, String str, q qVar, f fVar, e0.g gVar) {
        this.f2226b = tVar;
        this.c = str;
        this.d = qVar;
        this.e = fVar;
        this.f2227f = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // b8.c
    public final Object apply(Object obj) {
        t tVar = this.f2226b;
        tVar.getClass();
        com.google.protobuf.a0 a0VarQ = ((y5.i) obj).q();
        int i9 = x7.b.f6040b;
        d8.b.a(a0VarQ, "source is null");
        h8.w wVar = new h8.w(new h8.l(2, a0VarQ), new q(tVar, 2), 0);
        String str = this.c;
        h8.w wVar2 = new h8.w(new h8.w(new h8.w(wVar, new androidx.constraintlayout.core.state.a(str, 4), 0).b(this.d).b(this.e).b(this.f2227f)), new r5.c(6, new androidx.constraintlayout.core.utils.a(2)), 1);
        int i10 = x7.b.f6040b;
        d8.b.b(i10, "bufferSize");
        return new i8.k(new h8.s(new h8.a0(wVar2, i10)), new q(tVar, str), 0);
    }
}
