package o7;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l0 implements n2 {
    public final Executor c;
    public final n7.k1 d;
    public j0 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public j0 f4329f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public j0 f4330g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public n.p f4331h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public n7.f1 f4333j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public n7.h0 f4334k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f4335l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n7.a0 f4327a = n7.a0.a(l0.class, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f4328b = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Collection f4332i = new LinkedHashSet();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l0(Executor executor, n7.k1 k1Var) {
        this.c = executor;
        this.d = k1Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.n2
    public final void a(n7.f1 f1Var) {
        j0 j0Var;
        synchronized (this.f4328b) {
            try {
                if (this.f4333j != null) {
                    return;
                }
                this.f4333j = f1Var;
                this.d.b(new e0(5, this, f1Var));
                if (!f() && (j0Var = this.f4330g) != null) {
                    this.d.b(j0Var);
                    this.f4330g = null;
                }
                this.d.a();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.n2
    public final Runnable b(m2 m2Var) {
        n.p pVar = (n.p) m2Var;
        this.f4331h = pVar;
        this.e = new j0(pVar, 0);
        this.f4329f = new j0(pVar, 1);
        this.f4330g = new j0(pVar, 2);
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.z
    public final n7.a0 c() {
        return this.f4327a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.x
    public final u d(n7.x0 x0Var, n7.v0 v0Var, n7.c cVar, n7.e[] eVarArr) {
        u s0Var;
        try {
            g3 g3Var = new g3(x0Var, v0Var, cVar);
            n7.h0 h0Var = null;
            long j9 = -1;
            while (true) {
                synchronized (this.f4328b) {
                    n7.f1 f1Var = this.f4333j;
                    if (f1Var == null) {
                        n7.h0 h0Var2 = this.f4334k;
                        if (h0Var2 != null) {
                            if (h0Var != null && j9 == this.f4335l) {
                                s0Var = e(g3Var, eVarArr);
                                break;
                            }
                            j9 = this.f4335l;
                            x xVarF = y0.f(h0Var2.a(g3Var), Boolean.TRUE.equals(cVar.e));
                            if (xVarF != null) {
                                s0Var = xVarF.d(g3Var.c, g3Var.f4265b, g3Var.f4264a, eVarArr);
                                break;
                            }
                            h0Var = h0Var2;
                        } else {
                            s0Var = e(g3Var, eVarArr);
                            break;
                        }
                    } else {
                        s0Var = new s0(f1Var, v.f4462b, eVarArr);
                        break;
                    }
                }
            }
            this.d.a();
            return s0Var;
        } catch (Throwable th) {
            this.d.a();
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final k0 e(g3 g3Var, n7.e[] eVarArr) {
        int size;
        k0 k0Var = new k0(this, g3Var, eVarArr);
        this.f4332i.add(k0Var);
        synchronized (this.f4328b) {
            size = this.f4332i.size();
        }
        if (size == 1) {
            this.d.b(this.e);
        }
        for (n7.e eVar : eVarArr) {
            eVar.a();
        }
        return k0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean f() {
        boolean z8;
        synchronized (this.f4328b) {
            z8 = !this.f4332i.isEmpty();
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(n7.h0 h0Var) {
        j0 j0Var;
        m0 m0Var;
        synchronized (this.f4328b) {
            this.f4334k = h0Var;
            this.f4335l++;
            if (h0Var != null && f()) {
                ArrayList arrayList = new ArrayList(this.f4332i);
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                int i9 = 0;
                while (i9 < size) {
                    Object obj = arrayList.get(i9);
                    i9++;
                    k0 k0Var = (k0) obj;
                    n7.f0 f0VarA = h0Var.a(k0Var.f4302k);
                    n7.c cVar = k0Var.f4302k.f4264a;
                    x xVarF = y0.f(f0VarA, Boolean.TRUE.equals(cVar.e));
                    if (xVarF != null) {
                        Executor executor = this.c;
                        Executor executor2 = cVar.f3894b;
                        if (executor2 != null) {
                            executor = executor2;
                        }
                        n7.n nVar = k0Var.f4303l;
                        n7.n nVarA = nVar.a();
                        try {
                            g3 g3Var = k0Var.f4302k;
                            u uVarD = xVarF.d(g3Var.c, g3Var.f4265b, g3Var.f4264a, k0Var.f4304m);
                            nVar.c(nVarA);
                            synchronized (k0Var) {
                                try {
                                    m0Var = null;
                                    if (k0Var.d == null) {
                                        o4.b.i(uVarD, "stream");
                                        u uVar = k0Var.d;
                                        o4.b.l("realStream already set to %s", uVar == null, uVar);
                                        k0Var.d = uVarD;
                                        k0Var.f4300i = System.nanoTime();
                                        w wVar = k0Var.c;
                                        if (wVar == null) {
                                            k0Var.f4297f = null;
                                            k0Var.f4296b = true;
                                        }
                                        if (wVar != null) {
                                            k0Var.k(wVar);
                                            m0Var = new m0(k0Var, 2);
                                        }
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            if (m0Var != null) {
                                executor.execute(m0Var);
                            }
                            arrayList2.add(k0Var);
                        } catch (Throwable th2) {
                            nVar.c(nVarA);
                            throw th2;
                        }
                    }
                }
                synchronized (this.f4328b) {
                    try {
                        if (f()) {
                            this.f4332i.removeAll(arrayList2);
                            if (this.f4332i.isEmpty()) {
                                this.f4332i = new LinkedHashSet();
                            }
                            if (!f()) {
                                this.d.b(this.f4329f);
                                if (this.f4333j != null && (j0Var = this.f4330g) != null) {
                                    this.d.b(j0Var);
                                    this.f4330g = null;
                                }
                            }
                            this.d.a();
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
        }
    }
}
