package o7;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t extends n7.t {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final Logger f4429s = Logger.getLogger(t.class.getName());
    public static final double t;
    public final n7.x0 d;
    public final Executor e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f4430f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final b1.m f4431g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final n7.n f4432h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile ScheduledFuture f4433i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f4434j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public n7.c f4435k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public u f4436l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile boolean f4437m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f4438n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f4439o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final c0.h f4440p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final ScheduledExecutorService f4441q;
    public n7.q r = n7.q.d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        "gzip".getBytes(Charset.forName("US-ASCII"));
        t = 1000000000 * 1.0d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t(n7.x0 x0Var, Executor executor, n7.c cVar, c0.h hVar, ScheduledExecutorService scheduledExecutorService, b1.m mVar) {
        n7.i iVar = n7.i.f3940b;
        this.d = x0Var;
        String str = x0Var.f3985b;
        System.identityHashCode(this);
        w7.b.f5947a.getClass();
        if (executor == m4.n.f3663b) {
            this.e = new j4();
            this.f4430f = true;
        } else {
            this.e = new m4(executor);
            this.f4430f = false;
        }
        this.f4431g = mVar;
        this.f4432h = n7.n.b();
        n7.w0 w0Var = x0Var.f3984a;
        this.f4434j = w0Var == n7.w0.f3981b || w0Var == n7.w0.c;
        this.f4435k = cVar;
        this.f4440p = hVar;
        this.f4441q = scheduledExecutorService;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void a(String str, Throwable th) {
        w7.b.c();
        try {
            w7.b.a();
            r(str, th);
            w7.b.f5947a.getClass();
        } catch (Throwable th2) {
            try {
                w7.b.f5947a.getClass();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.t
    public final void g() {
        w7.b.c();
        try {
            w7.b.a();
            o4.b.m(this.f4436l != null, "Not started");
            o4.b.m(!this.f4438n, "call was cancelled");
            o4.b.m(!this.f4439o, "call already half-closed");
            this.f4439o = true;
            this.f4436l.i();
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
    @Override // n7.t
    public final void k() {
        w7.b.c();
        try {
            w7.b.a();
            o4.b.m(this.f4436l != null, "Not started");
            this.f4436l.request();
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
    @Override // n7.t
    public final void m(y5.g gVar) {
        w7.b.c();
        try {
            w7.b.a();
            t(gVar);
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
    @Override // n7.t
    public final void o(n7.e eVar, n7.v0 v0Var) {
        w7.b.c();
        try {
            w7.b.a();
            u(eVar, v0Var);
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
    public final void r(String str, Throwable th) {
        if (str == null && th == null) {
            th = new CancellationException("Cancelled without a message or cause");
            f4429s.log(Level.WARNING, "Cancelling without a message or cause is suboptimal", th);
        }
        if (this.f4438n) {
            return;
        }
        this.f4438n = true;
        try {
            if (this.f4436l != null) {
                n7.f1 f1Var = n7.f1.f3923f;
                n7.f1 f1VarH = str != null ? f1Var.h(str) : f1Var.h("Call cancelled without message");
                if (th != null) {
                    f1VarH = f1VarH.g(th);
                }
                this.f4436l.h(f1VarH);
            }
        } finally {
            s();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void s() {
        this.f4432h.getClass();
        ScheduledFuture scheduledFuture = this.f4433i;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t(y5.g gVar) {
        o4.b.m(this.f4436l != null, "Not started");
        o4.b.m(!this.f4438n, "call was cancelled");
        o4.b.m(!this.f4439o, "call was half-closed");
        try {
            u uVar = this.f4436l;
            if (uVar instanceof v1) {
                ((v1) uVar).t(gVar);
            } else {
                t7.b bVar = this.d.d;
                bVar.getClass();
                uVar.f(new t7.a(gVar, bVar.f5416a));
            }
            if (this.f4434j) {
                return;
            }
            this.f4436l.flush();
        } catch (Error e) {
            this.f4436l.h(n7.f1.f3923f.h("Client sendMessage() failed with Error"));
            throw e;
        } catch (RuntimeException e6) {
            this.f4436l.h(n7.f1.f3923f.g(e6).h("Failed to stream message"));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.d, "method");
        return sVarT.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u(n7.e eVar, n7.v0 v0Var) {
        long j9;
        n7.c cVar;
        u v1Var;
        n7.h hVar = n7.h.c;
        o4.b.m(this.f4436l == null, "Already started");
        o4.b.m(!this.f4438n, "call was cancelled");
        this.f4432h.getClass();
        n7.c cVar2 = this.f4435k;
        a9.w wVar = j2.f4288g;
        j2 j2Var = (j2) cVar2.a(wVar);
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        if (j2Var == null) {
            j9 = 0;
        } else {
            Integer num = j2Var.d;
            Integer num2 = j2Var.c;
            Long l9 = j2Var.f4289a;
            if (l9 != null) {
                long jLongValue = l9.longValue();
                if (timeUnit == null) {
                    n0.b.n("units");
                    return;
                }
                n7.o oVar = new n7.o(jLongValue);
                n7.c cVar3 = this.f4435k;
                n7.o oVar2 = cVar3.f3893a;
                if (oVar2 != null) {
                    n7.h hVar2 = oVar.f3961b;
                    if (hVar2 != oVar2.f3961b) {
                        StringBuilder sb = new StringBuilder("Tickers (");
                        sb.append(hVar2);
                        n7.h hVar3 = oVar2.f3961b;
                        sb.append(" and ");
                        sb.append(hVar3);
                        sb.append(") don't match. Custom Ticker should only be used in tests!");
                        throw new AssertionError(sb.toString());
                    }
                    j9 = 0;
                    if (oVar.c - oVar2.c < 0) {
                    }
                } else {
                    j9 = 0;
                }
                cVar3.getClass();
                c2.k kVarB = n7.c.b(cVar3);
                kVarB.c = oVar;
                this.f4435k = new n7.c(kVarB);
            } else {
                j9 = 0;
            }
            Boolean bool = j2Var.f4290b;
            if (bool != null) {
                boolean zBooleanValue = bool.booleanValue();
                n7.c cVar4 = this.f4435k;
                cVar4.getClass();
                if (zBooleanValue) {
                    c2.k kVarB2 = n7.c.b(cVar4);
                    kVarB2.f457h = Boolean.TRUE;
                    cVar = new n7.c(kVarB2);
                } else {
                    c2.k kVarB3 = n7.c.b(cVar4);
                    kVarB3.f457h = Boolean.FALSE;
                    cVar = new n7.c(kVarB3);
                }
                this.f4435k = cVar;
            }
            if (num2 != null) {
                n7.c cVar5 = this.f4435k;
                Integer num3 = cVar5.f3895f;
                if (num3 != null) {
                    int iMin = Math.min(num3.intValue(), num2.intValue());
                    o4.b.c(iMin, "invalid maxsize %s", iMin >= 0);
                    c2.k kVarB4 = n7.c.b(cVar5);
                    kVarB4.f455f = Integer.valueOf(iMin);
                    this.f4435k = new n7.c(kVarB4);
                } else {
                    int iIntValue = num2.intValue();
                    o4.b.c(iIntValue, "invalid maxsize %s", iIntValue >= 0);
                    c2.k kVarB5 = n7.c.b(cVar5);
                    kVarB5.f455f = num2;
                    this.f4435k = new n7.c(kVarB5);
                }
            }
            if (num != null) {
                n7.c cVar6 = this.f4435k;
                Integer num4 = cVar6.f3896g;
                if (num4 != null) {
                    int iMin2 = Math.min(num4.intValue(), num.intValue());
                    o4.b.c(iMin2, "invalid maxsize %s", iMin2 >= 0);
                    c2.k kVarB6 = n7.c.b(cVar6);
                    kVarB6.f458i = Integer.valueOf(iMin2);
                    this.f4435k = new n7.c(kVarB6);
                } else {
                    int iIntValue2 = num.intValue();
                    o4.b.c(iIntValue2, "invalid maxsize %s", iIntValue2 >= 0);
                    c2.k kVarB7 = n7.c.b(cVar6);
                    kVarB7.f458i = num;
                    this.f4435k = new n7.c(kVarB7);
                }
            }
        }
        this.f4435k.getClass();
        n7.q qVar = this.r;
        v0Var.a(y0.f4509h);
        v0Var.a(y0.d);
        n7.s0 s0Var = y0.e;
        v0Var.a(s0Var);
        byte[] bArr = qVar.f3967b;
        if (bArr.length != 0) {
            v0Var.e(s0Var, bArr);
        }
        v0Var.a(y0.f4507f);
        v0Var.a(y0.f4508g);
        n7.o oVar3 = this.f4435k.f3893a;
        this.f4432h.getClass();
        n7.o oVar4 = oVar3 == null ? null : oVar3;
        if (oVar4 == null || !oVar4.a()) {
            this.f4432h.getClass();
            n7.o oVar5 = this.f4435k.f3893a;
            Logger logger = f4429s;
            if (logger.isLoggable(Level.FINE) && oVar4 != null && oVar4.equals(null)) {
                long jMax = Math.max(j9, oVar4.b());
                Locale locale = Locale.US;
                StringBuilder sb2 = new StringBuilder("Call timeout set to '" + jMax + "' ns, due to context deadline.");
                if (oVar5 == null) {
                    sb2.append(" Explicit call timeout was not set.");
                } else {
                    sb2.append(" Explicit call timeout was '" + oVar5.b() + "' ns.");
                }
                logger.fine(sb2.toString());
            }
            c0.h hVar4 = this.f4440p;
            n7.x0 x0Var = this.d;
            n7.c cVar7 = this.f4435k;
            n7.n nVar = this.f4432h;
            if (((f2) hVar4.f400b).W) {
                j2 j2Var2 = (j2) cVar7.a(wVar);
                v1Var = new v1(hVar4, x0Var, v0Var, cVar7, j2Var2 == null ? null : j2Var2.e, j2Var2 == null ? null : j2Var2.f4291f, nVar);
            } else {
                x xVarB = hVar4.b(new g3(x0Var, v0Var, cVar7));
                n7.n nVarA = nVar.a();
                try {
                    v1Var = xVarB.d(x0Var, v0Var, cVar7, y0.c(cVar7, v0Var, 0, false));
                    nVar.c(nVarA);
                } catch (Throwable th) {
                    nVar.c(nVarA);
                    throw th;
                }
            }
            this.f4436l = v1Var;
        } else {
            n7.e[] eVarArrC = y0.c(this.f4435k, v0Var, 0, false);
            n7.o oVar6 = this.f4435k.f3893a;
            this.f4432h.getClass();
            String str = oVar6 == null ? "Context" : "CallOptions";
            Long l10 = (Long) this.f4435k.a(n7.e.f3901a);
            double dB = oVar4.b();
            double d = t;
            this.f4436l = new s0(n7.f1.f3925h.h(String.format("ClientCall started after %s deadline was exceeded %.9f seconds ago. Name resolution delay %.9f seconds.", str, Double.valueOf(dB / d), Double.valueOf(l10 == null ? 0.0d : l10.longValue() / d))), v.f4462b, eVarArrC);
        }
        if (this.f4430f) {
            this.f4436l.o();
        }
        this.f4435k.getClass();
        Integer num5 = this.f4435k.f3895f;
        if (num5 != null) {
            this.f4436l.m(num5.intValue());
        }
        Integer num6 = this.f4435k.f3896g;
        if (num6 != null) {
            this.f4436l.c(num6.intValue());
        }
        if (oVar4 != null) {
            this.f4436l.n(oVar4);
        }
        this.f4436l.a(hVar);
        this.f4436l.g(this.r);
        b1.m mVar = this.f4431g;
        ((r1) mVar.d).a();
        ((u2) mVar.c).q();
        this.f4436l.d(new a5.h(this, eVar));
        this.f4432h.getClass();
        Logger logger2 = n7.n.f3958a;
        if (oVar4 != null) {
            this.f4432h.getClass();
            if (!oVar4.equals(null) && this.f4441q != null) {
                long jB = oVar4.b();
                this.f4433i = this.f4441q.schedule(new q1(new s(this, jB)), jB, timeUnit);
            }
        }
        if (this.f4437m) {
            s();
        }
    }
}
