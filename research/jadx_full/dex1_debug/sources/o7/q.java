package o7;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class q extends d0 {
    public final /* synthetic */ n7.f1 d;
    public final /* synthetic */ n7.v0 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ a5.h f4395f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(a5.h hVar, n7.f1 f1Var, n7.v0 v0Var) {
        super(0, ((t) hVar.e).f4432h);
        this.f4395f = hVar;
        this.d = f1Var;
        this.e = v0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.d0
    public final void b() {
        w7.b.c();
        try {
            w7.b.a();
            w7.a aVar = w7.b.f5947a;
            aVar.getClass();
            c();
            aVar.getClass();
        } catch (Throwable th) {
            try {
                w7.b.f5947a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c() {
        n7.f1 f1Var = this.d;
        n7.v0 v0Var = this.e;
        n7.f1 f1Var2 = (n7.f1) this.f4395f.d;
        if (f1Var2 != null) {
            v0Var = new n7.v0();
            f1Var = f1Var2;
        }
        ((t) this.f4395f.e).f4437m = true;
        try {
            ((n7.e) this.f4395f.c).o(f1Var, v0Var);
            ((t) this.f4395f.e).s();
            b1.m mVar = ((t) this.f4395f.e).f4431g;
            if (f1Var.f()) {
                ((r1) mVar.e).a();
            } else {
                ((r1) mVar.f270f).a();
            }
        } catch (Throwable th) {
            ((t) this.f4395f.e).s();
            b1.m mVar2 = ((t) this.f4395f.e).f4431g;
            if (f1Var.f()) {
                ((r1) mVar2.e).a();
            } else {
                ((r1) mVar2.f270f).a();
            }
            throw th;
        }
    }
}
