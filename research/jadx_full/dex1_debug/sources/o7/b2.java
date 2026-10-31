package o7;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b2 extends n7.t {
    public static final g0 r;
    public final ScheduledFuture d;
    public final Executor e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final n7.n f4158f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile boolean f4159g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public n7.e f4160h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public n7.t f4161i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public n7.f1 f4162j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public List f4163k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public i0 f4164l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final n7.n f4165m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final n7.x0 f4166n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final n7.c f4167o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f4168p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ c2 f4169q;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Logger.getLogger(b2.class.getName());
        r = new g0(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b2(c2 c2Var, n7.n nVar, n7.x0 x0Var, n7.c cVar) {
        ScheduledFuture<?> scheduledFutureSchedule;
        this.f4169q = c2Var;
        f2 f2Var = c2Var.d;
        Logger logger = f2.f4211c0;
        Executor executor = cVar.f3894b;
        executor = executor == null ? f2Var.f4224h : executor;
        d2 d2Var = f2Var.f4223g;
        n7.o oVar = cVar.f3893a;
        this.f4163k = new ArrayList();
        o4.b.i(executor, "callExecutor");
        this.e = executor;
        o4.b.i(d2Var, "scheduler");
        n7.n nVarB = n7.n.b();
        this.f4158f = nVarB;
        nVarB.getClass();
        if (oVar == null) {
            scheduledFutureSchedule = null;
        } else {
            long jB = oVar.b();
            long jAbs = Math.abs(jB) / 1000000000;
            long jAbs2 = Math.abs(jB) % 1000000000;
            StringBuilder sb = new StringBuilder();
            if (jB < 0) {
                sb.append("ClientCall started after CallOptions deadline was exceeded. Deadline has been exceeded for ");
            } else {
                sb.append("Deadline CallOptions will be exceeded in ");
            }
            sb.append(jAbs);
            sb.append(String.format(Locale.US, ".%09d", Long.valueOf(jAbs2)));
            sb.append("s. ");
            scheduledFutureSchedule = d2Var.f4186b.schedule(new e0(0, this, sb), jB, TimeUnit.NANOSECONDS);
        }
        this.d = scheduledFutureSchedule;
        this.f4165m = nVar;
        this.f4166n = x0Var;
        this.f4167o = cVar;
        f2Var.X.getClass();
        this.f4168p = System.nanoTime();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void a(String str, Throwable th) {
        n7.f1 f1Var = n7.f1.f3923f;
        n7.f1 f1VarH = str != null ? f1Var.h(str) : f1Var.h("Call cancelled without message");
        if (th != null) {
            f1VarH = f1VarH.g(th);
        }
        r(f1VarH, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void g() {
        s(new f0(this, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void k() {
        if (this.f4159g) {
            this.f4161i.k();
        } else {
            s(new f0(this, 0));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void m(y5.g gVar) {
        if (this.f4159g) {
            this.f4161i.m(gVar);
        } else {
            s(new e0(2, this, gVar));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void o(n7.e eVar, n7.v0 v0Var) {
        n7.f1 f1Var;
        boolean z8;
        o4.b.m(this.f4160h == null, "already started");
        synchronized (this) {
            try {
                this.f4160h = eVar;
                f1Var = this.f4162j;
                z8 = this.f4159g;
                if (!z8) {
                    i0 i0Var = new i0(eVar);
                    this.f4164l = i0Var;
                    eVar = i0Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (f1Var != null) {
            this.e.execute(new h0(this, eVar, f1Var));
        } else if (z8) {
            this.f4161i.o(eVar, v0Var);
        } else {
            s(new c3.e(this, eVar, v0Var, 2));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void r(n7.f1 f1Var, boolean z8) {
        n7.e eVar;
        synchronized (this) {
            try {
                n7.t tVar = this.f4161i;
                boolean z9 = true;
                if (tVar == null) {
                    g0 g0Var = r;
                    if (tVar != null) {
                        z9 = false;
                    }
                    o4.b.l("realCall already set to %s", z9, tVar);
                    ScheduledFuture scheduledFuture = this.d;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.f4161i = g0Var;
                    eVar = this.f4160h;
                    this.f4162j = f1Var;
                    z9 = false;
                } else if (z8) {
                    return;
                } else {
                    eVar = null;
                }
                if (z9) {
                    s(new e0(1, this, f1Var));
                } else {
                    if (eVar != null) {
                        this.e.execute(new h0(this, eVar, f1Var));
                    }
                    t();
                }
                this.f4169q.d.f4229m.execute(new f0(this, 2));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s(Runnable runnable) {
        synchronized (this) {
            try {
                if (this.f4159g) {
                    runnable.run();
                } else {
                    this.f4163k.add(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:26:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002b, code lost:
    
        r0 = r1.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        if (r0.hasNext() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0035, code lost:
    
        ((java.lang.Runnable) r0.next()).run();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void t() {
        i0 i0Var;
        List list;
        List arrayList = new ArrayList();
        while (true) {
            synchronized (this) {
                if (this.f4163k.isEmpty()) {
                    break;
                }
                list = this.f4163k;
                this.f4163k = arrayList;
            }
            if (i0Var != null) {
                this.e.execute(new r(this, i0Var));
            }
            list.clear();
            arrayList = list;
        }
        this.f4163k = null;
        this.f4159g = true;
        i0Var = this.f4164l;
        if (i0Var != null) {
            this.e.execute(new r(this, i0Var));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f4161i, "realCall");
        return sVarT.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u() {
        r rVar;
        n7.n nVarA = this.f4165m.a();
        try {
            n7.c cVar = this.f4167o;
            a9.w wVar = n7.e.f3901a;
            this.f4169q.d.X.getClass();
            n7.t tVarG = this.f4169q.g(this.f4166n, cVar.c(wVar, Long.valueOf(System.nanoTime() - this.f4168p)));
            this.f4165m.c(nVarA);
            synchronized (this) {
                try {
                    n7.t tVar = this.f4161i;
                    if (tVar != null) {
                        rVar = null;
                    } else {
                        o4.b.l("realCall already set to %s", tVar == null, tVar);
                        ScheduledFuture scheduledFuture = this.d;
                        if (scheduledFuture != null) {
                            scheduledFuture.cancel(false);
                        }
                        this.f4161i = tVarG;
                        rVar = new r(this, this.f4158f);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            f2 f2Var = this.f4169q.d;
            if (rVar == null) {
                f2Var.f4229m.execute(new f0(this, 2));
                return;
            }
            Executor executor = this.f4167o.f3894b;
            if (executor == null) {
                executor = f2Var.f4224h;
            }
            executor.execute(new e0(20, this, rVar));
        } catch (Throwable th2) {
            this.f4165m.c(nVarA);
            throw th2;
        }
    }
}
