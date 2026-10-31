package v8;

import kotlin.Unit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class e1 extends d1 {
    public final h1 f;
    public final f1 g;
    public final i h;
    public final Object i;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e1(h1 h1Var, f1 f1Var, i iVar, Object obj) {
        this.f = h1Var;
        this.g = f1Var;
        this.h = iVar;
        this.i = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        j((Throwable) obj);
        return Unit.INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // v8.d1
    public final void j(Throwable th) {
        i iVarC = h1.C(this.h);
        h1 h1Var = this.f;
        f1 f1Var = this.g;
        Object obj = this.i;
        if (iVarC != null) {
            while (x0.a(iVarC.f, new e1(h1Var, f1Var, iVarC, obj), 1) == k1.b) {
                iVarC = h1.C(iVarC);
                if (iVarC == null) {
                }
            }
            return;
        }
        h1Var.i(h1Var.r(f1Var, obj));
    }
}
