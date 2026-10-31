package v7;

import n7.f1;
import n7.g0;
import n7.h0;
import n7.j0;
import n7.k0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e extends j0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final o7.g f5533o = new o7.g(1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final c f5534f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final a f5535g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public k0 f5536h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public j0 f5537i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public k0 f5538j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public j0 f5539k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public n7.j f5540l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public h0 f5541m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f5542n;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(a aVar) {
        c cVar = new c(this);
        this.f5534f = cVar;
        this.f5537i = cVar;
        this.f5539k = cVar;
        this.f5535g = aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final boolean b() {
        return g().b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final void c(f1 f1Var) {
        g().c(f1Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final void d(g0 g0Var) {
        g().d(g0Var);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final void e() {
        g().e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final void f() {
        this.f5539k.f();
        this.f5537i.f();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final j0 g() {
        j0 j0Var = this.f5539k;
        return j0Var == this.f5534f ? this.f5537i : j0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h() {
        this.f5535g.D(this.f5540l, this.f5541m);
        this.f5537i.f();
        this.f5537i = this.f5539k;
        this.f5536h = this.f5538j;
        this.f5539k = this.f5534f;
        this.f5538j = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(k0 k0Var) {
        o4.b.i(k0Var, "newBalancerFactory");
        if (k0Var == this.f5538j) {
            return;
        }
        this.f5539k.f();
        this.f5539k = this.f5534f;
        this.f5538j = null;
        this.f5540l = n7.j.f3943b;
        this.f5541m = f5533o;
        if (k0Var == this.f5536h) {
            return;
        }
        d dVar = new d(this);
        j0 j0VarB = k0Var.b(dVar);
        dVar.c = j0VarB;
        this.f5539k = j0VarB;
        this.f5538j = k0Var;
        if (this.f5542n) {
            return;
        }
        h();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(g(), "delegate");
        return sVarT.toString();
    }
}
