package o7;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class y1 extends n7.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public b1.m f4519b;
    public final /* synthetic */ f2 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public y1(f2 f2Var) {
        this.c = f2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void D(n7.j jVar, n7.h0 h0Var) {
        n7.k1 k1Var = this.c.f4229m;
        k1Var.d();
        o4.b.i(jVar, "newState");
        o4.b.i(h0Var, "newPicker");
        k1Var.execute(new c3.e(this, h0Var, jVar, 4));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final n7.t b(n7.e0 e0Var) {
        f2 f2Var = this.c;
        f2Var.f4229m.d();
        o4.b.m(!f2Var.H, "Channel is being terminated");
        return new e2(f2Var, e0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final n7.e c() {
        return this.c.N;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final ScheduledExecutorService d() {
        return this.c.f4223g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final n7.k1 f() {
        return this.c.f4229m;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void y() {
        n7.k1 k1Var = this.c.f4229m;
        k1Var.d();
        k1Var.execute(new com.bumptech.glide.m(15, this));
    }
}
