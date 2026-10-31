package o7;

import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class b implements u, u4 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Logger f4132h = Logger.getLogger(b.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w4 f4133b;
    public final v0 c;
    public final boolean d;
    public final boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public n7.v0 f4134f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile boolean f4135g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(c5.e eVar, t4 t4Var, w4 w4Var, n7.v0 v0Var, n7.c cVar, boolean z8) {
        o4.b.i(v0Var, "headers");
        o4.b.i(w4Var, "transportTracer");
        this.f4133b = w4Var;
        this.d = !Boolean.TRUE.equals(cVar.a(y0.f4515n));
        this.e = z8;
        if (z8) {
            this.c = new a(this, v0Var, t4Var);
        } else {
            this.c = new t2(this, eVar, t4Var);
            this.f4134f = v0Var;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void a(n7.h hVar) {
        this.c.a(hVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(p7.u uVar, boolean z8, boolean z9, int i9) {
        l9.l lVar;
        o4.b.d("null frame before EOS", uVar != null || z8);
        n.p pVar = ((p7.k) this).f4655n;
        pVar.getClass();
        w7.b.c();
        try {
            if (uVar == null) {
                lVar = p7.k.f4649q;
            } else {
                lVar = uVar.f4695a;
                int i10 = (int) lVar.c;
                if (i10 > 0) {
                    p7.j jVar = ((p7.k) pVar.c).f4654m;
                    synchronized (jVar.f4144b) {
                        jVar.e += i10;
                    }
                }
            }
            synchronized (((p7.k) pVar.c).f4654m.w) {
                p7.j.k(((p7.k) pVar.c).f4654m, lVar, z8, z9);
                w4 w4Var = ((p7.k) pVar.c).f4133b;
                if (i9 == 0) {
                    w4Var.getClass();
                } else {
                    w4Var.getClass();
                    ((u2) w4Var.c).q();
                }
            }
            w7.b.f5947a.getClass();
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
    @Override // o7.u
    public final void c(int i9) {
        this.c.c(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void d(w wVar) {
        p7.k kVar = (p7.k) this;
        p7.j jVar = kVar.f4654m;
        o4.b.m(jVar.f4149j == null, "Already called setListener");
        o4.b.i(wVar, "listener");
        jVar.f4149j = wVar;
        if (this.e) {
            return;
        }
        kVar.f4655n.l(this.f4134f, null);
        this.f4134f = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void e(i7.i iVar) {
        iVar.b(((p7.k) this).f4656o.f3887a.get(n7.t.f3972a), "remote_addr");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void f(t7.a aVar) {
        v0 v0Var = this.c;
        try {
            if (!v0Var.isClosed()) {
                v0Var.b(aVar);
            }
        } finally {
            y0.b(aVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void flush() {
        v0 v0Var = this.c;
        if (v0Var.isClosed()) {
            return;
        }
        v0Var.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void g(n7.q qVar) {
        p7.j jVar = ((p7.k) this).f4654m;
        o4.b.m(jVar.f4149j == null, "Already called start");
        o4.b.i(qVar, "decompressorRegistry");
        jVar.f4150k = qVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void h(n7.f1 f1Var) {
        o4.b.d("Should not cancel with OK status", !f1Var.f());
        this.f4135g = true;
        n.p pVar = ((p7.k) this).f4655n;
        pVar.getClass();
        w7.b.c();
        try {
            synchronized (((p7.k) pVar.c).f4654m.w) {
                ((p7.k) pVar.c).f4654m.l(f1Var, true, null);
            }
            w7.b.f5947a.getClass();
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
    @Override // o7.u
    public final void i() {
        p7.k kVar = (p7.k) this;
        if (kVar.f4654m.f4153n) {
            return;
        }
        kVar.f4654m.f4153n = true;
        this.c.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final boolean isReady() {
        return ((p7.k) this).f4654m.f() && !this.f4135g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void m(int i9) {
        ((p7.k) this).f4654m.f4143a.c = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u
    public final void n(n7.o oVar) {
        n7.v0 v0Var = this.f4134f;
        n7.q0 q0Var = y0.c;
        v0Var.a(q0Var);
        this.f4134f.e(q0Var, Long.valueOf(Math.max(0L, oVar.b())));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void o() {
        p7.j jVar = ((p7.k) this).f4654m;
        q2 q2Var = jVar.d;
        q2Var.f4398b = jVar;
        jVar.f4143a = q2Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.u4
    public final void request() {
        p7.j jVar = ((p7.k) this).f4654m;
        jVar.getClass();
        w7.b.b();
        com.bumptech.glide.m mVar = new com.bumptech.glide.m(9, jVar);
        synchronized (jVar.w) {
            mVar.run();
        }
    }
}
