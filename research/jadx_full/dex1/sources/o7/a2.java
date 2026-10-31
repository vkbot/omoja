package o7;

import java.util.concurrent.Executor;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a2 extends n7.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c2 f4120a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public a2(c2 c2Var) {
        this.f4120a = c2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.d
    public final String e() {
        return this.f4120a.f4175b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.d
    public final n7.t f(n7.x0 x0Var, n7.c cVar) {
        f2 f2Var = this.f4120a.d;
        Logger logger = f2.f4211c0;
        Executor executor = cVar.f3894b;
        if (executor == null) {
            executor = f2Var.f4224h;
        }
        t tVar = new t(x0Var, executor, cVar, f2Var.Z, f2Var.I ? null : this.f4120a.d.f4222f.f4326b.e, this.f4120a.d.L);
        tVar.r = this.f4120a.d.f4230n;
        return tVar;
    }
}
