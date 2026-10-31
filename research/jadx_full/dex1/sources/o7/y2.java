package o7;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class y2 extends n7.h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4520a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f4521b = new AtomicBoolean(false);
    public final Object c;
    public final /* synthetic */ n7.j0 d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public y2(e3 e3Var, n7.t tVar) {
        this.d = e3Var;
        o4.b.i(tVar, "subchannel");
        this.c = tVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.h0
    public final n7.f0 a(g3 g3Var) {
        switch (this.f4520a) {
            case 0:
                if (this.f4521b.compareAndSet(false, true)) {
                    n7.k1 k1VarF = ((a3) this.d).f4122f.f();
                    a3 a3Var = (a3) this.c;
                    Objects.requireNonNull(a3Var);
                    k1VarF.execute(new f5.j(10, a3Var));
                }
                break;
            default:
                if (this.f4521b.compareAndSet(false, true)) {
                    ((e3) this.d).f4202f.f().execute(new com.bumptech.glide.m(19, this));
                }
                break;
        }
        return n7.f0.e;
    }

    public y2(a3 a3Var, a3 a3Var2) {
        this.d = a3Var;
        this.c = a3Var2;
    }
}
