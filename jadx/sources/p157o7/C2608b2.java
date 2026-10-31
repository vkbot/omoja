package p157o7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import p010a9.C0061w;
import p028c3.RunnableC0979e;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2542t;
import p148n7.C2497c;
import p148n7.C2508f1;
import p148n7.C2530n;
import p148n7.C2532o;
import p148n7.C2547v0;
import p148n7.C2551x0;
import p155o4.AbstractC2587b;
import p250y5.C3652g;

/* JADX INFO: renamed from: o7.b2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2608b2 extends AbstractC2542t {

    /* JADX INFO: renamed from: r */
    public static final C2636g0 f7310r;

    /* JADX INFO: renamed from: d */
    public final ScheduledFuture f7311d;

    /* JADX INFO: renamed from: e */
    public final Executor f7312e;

    /* JADX INFO: renamed from: f */
    public final C2530n f7313f;

    /* JADX INFO: renamed from: g */
    public volatile boolean f7314g;

    /* JADX INFO: renamed from: h */
    public AbstractC2503e f7315h;

    /* JADX INFO: renamed from: i */
    public AbstractC2542t f7316i;

    /* JADX INFO: renamed from: j */
    public C2508f1 f7317j;

    /* JADX INFO: renamed from: k */
    public List f7318k;

    /* JADX INFO: renamed from: l */
    public C2648i0 f7319l;

    /* JADX INFO: renamed from: m */
    public final C2530n f7320m;

    /* JADX INFO: renamed from: n */
    public final C2551x0 f7321n;

    /* JADX INFO: renamed from: o */
    public final C2497c f7322o;

    /* JADX INFO: renamed from: p */
    public final long f7323p;

    /* JADX INFO: renamed from: q */
    public final /* synthetic */ C2614c2 f7324q;

    static {
        Logger.getLogger(C2608b2.class.getName());
        f7310r = new C2636g0(0);
    }

    public C2608b2(C2614c2 c2614c2, C2530n c2530n, C2551x0 c2551x0, C2497c c2497c) {
        ScheduledFuture<?> scheduledFutureSchedule;
        this.f7324q = c2614c2;
        C2632f2 c2632f2 = c2614c2.f7334d;
        Logger logger = C2632f2.f7390c0;
        Executor executor = c2497c.f6892b;
        executor = executor == null ? c2632f2.f7432h : executor;
        ScheduledExecutorServiceC2620d2 scheduledExecutorServiceC2620d2 = c2632f2.f7431g;
        C2532o c2532o = c2497c.f6891a;
        this.f7318k = new ArrayList();
        AbstractC2587b.m4042i(executor, "callExecutor");
        this.f7312e = executor;
        AbstractC2587b.m4042i(scheduledExecutorServiceC2620d2, "scheduler");
        C2530n c2530nM3961b = C2530n.m3961b();
        this.f7313f = c2530nM3961b;
        c2530nM3961b.getClass();
        if (c2532o == null) {
            scheduledFutureSchedule = null;
        } else {
            long jM3965b = c2532o.m3965b();
            long jAbs = Math.abs(jM3965b) / 1000000000;
            long jAbs2 = Math.abs(jM3965b) % 1000000000;
            StringBuilder sb = new StringBuilder();
            if (jM3965b < 0) {
                sb.append("ClientCall started after CallOptions deadline was exceeded. Deadline has been exceeded for ");
            } else {
                sb.append("Deadline CallOptions will be exceeded in ");
            }
            sb.append(jAbs);
            sb.append(String.format(Locale.US, ".%09d", Long.valueOf(jAbs2)));
            sb.append("s. ");
            scheduledFutureSchedule = scheduledExecutorServiceC2620d2.f7351b.schedule(new RunnableC2624e0(0, this, sb), jM3965b, TimeUnit.NANOSECONDS);
        }
        this.f7311d = scheduledFutureSchedule;
        this.f7320m = c2530n;
        this.f7321n = c2551x0;
        this.f7322o = c2497c;
        c2632f2.f7420X.getClass();
        this.f7323p = System.nanoTime();
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: a */
    public final void mo3969a(String str, Throwable th) {
        C2508f1 c2508f1 = C2508f1.f6938f;
        C2508f1 c2508f1M3934h = str != null ? c2508f1.m3934h(str) : c2508f1.m3934h("Call cancelled without message");
        if (th != null) {
            c2508f1M3934h = c2508f1M3934h.m3933g(th);
        }
        m4125r(c2508f1M3934h, false);
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: g */
    public final void mo3970g() {
        m4126s(new RunnableC2630f0(this, 1));
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: k */
    public final void mo3971k() {
        if (this.f7314g) {
            this.f7316i.mo3971k();
        } else {
            m4126s(new RunnableC2630f0(this, 0));
        }
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: m */
    public final void mo3972m(C3652g c3652g) {
        if (this.f7314g) {
            this.f7316i.mo3972m(c3652g);
        } else {
            m4126s(new RunnableC2624e0(2, this, c3652g));
        }
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: o */
    public final void mo3984o(AbstractC2503e abstractC2503e, C2547v0 c2547v0) {
        C2508f1 c2508f1;
        boolean z9;
        AbstractC2587b.m4046m(this.f7315h == null, "already started");
        synchronized (this) {
            try {
                this.f7315h = abstractC2503e;
                c2508f1 = this.f7317j;
                z9 = this.f7314g;
                if (!z9) {
                    C2648i0 c2648i0 = new C2648i0(abstractC2503e);
                    this.f7319l = c2648i0;
                    abstractC2503e = c2648i0;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (c2508f1 != null) {
            this.f7312e.execute(new C2642h0(this, abstractC2503e, c2508f1));
        } else if (z9) {
            this.f7316i.mo3984o(abstractC2503e, c2547v0);
        } else {
            m4126s(new RunnableC0979e(this, abstractC2503e, c2547v0, 2));
        }
    }

    /* JADX INFO: renamed from: r */
    public final void m4125r(C2508f1 c2508f1, boolean z9) {
        AbstractC2503e abstractC2503e;
        synchronized (this) {
            try {
                AbstractC2542t abstractC2542t = this.f7316i;
                boolean z10 = true;
                if (abstractC2542t == null) {
                    C2636g0 c2636g0 = f7310r;
                    if (abstractC2542t != null) {
                        z10 = false;
                    }
                    AbstractC2587b.m4045l("realCall already set to %s", z10, abstractC2542t);
                    ScheduledFuture scheduledFuture = this.f7311d;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.f7316i = c2636g0;
                    abstractC2503e = this.f7315h;
                    this.f7317j = c2508f1;
                    z10 = false;
                } else if (z9) {
                    return;
                } else {
                    abstractC2503e = null;
                }
                if (z10) {
                    m4126s(new RunnableC2624e0(1, this, c2508f1));
                } else {
                    if (abstractC2503e != null) {
                        this.f7312e.execute(new C2642h0(this, abstractC2503e, c2508f1));
                    }
                    m4127t();
                }
                this.f7324q.f7334d.f7437m.execute(new RunnableC2630f0(this, 2));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: s */
    public final void m4126s(Runnable runnable) {
        synchronized (this) {
            try {
                if (this.f7314g) {
                    runnable.run();
                } else {
                    this.f7318k.add(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

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
    /* JADX INFO: renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m4127t() {
        /*
            r3 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L5:
            monitor-enter(r3)
            java.util.List r1 = r3.f7318k     // Catch: java.lang.Throwable -> L24
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L24
            if (r1 == 0) goto L26
            r0 = 0
            r3.f7318k = r0     // Catch: java.lang.Throwable -> L24
            r0 = 1
            r3.f7314g = r0     // Catch: java.lang.Throwable -> L24
            o7.i0 r0 = r3.f7319l     // Catch: java.lang.Throwable -> L24
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L24
            if (r0 == 0) goto L23
            java.util.concurrent.Executor r1 = r3.f7312e
            o7.r r2 = new o7.r
            r2.<init>(r3, r0)
            r1.execute(r2)
        L23:
            return
        L24:
            r0 = move-exception
            goto L44
        L26:
            java.util.List r1 = r3.f7318k     // Catch: java.lang.Throwable -> L24
            r3.f7318k = r0     // Catch: java.lang.Throwable -> L24
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L24
            java.util.Iterator r0 = r1.iterator()
        L2f:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L3f
            java.lang.Object r2 = r0.next()
            java.lang.Runnable r2 = (java.lang.Runnable) r2
            r2.run()
            goto L2f
        L3f:
            r1.clear()
            r0 = r1
            goto L5
        L44:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L24
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p157o7.C2608b2.m4127t():void");
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f7316i, "realCall");
        return c1073sM1263t.toString();
    }

    /* JADX INFO: renamed from: u */
    public final void m4128u() {
        C2701r c2701r;
        C2530n c2530nM3962a = this.f7320m.m3962a();
        try {
            C2497c c2497c = this.f7322o;
            C0061w c0061w = AbstractC2503e.f6904a;
            this.f7324q.f7334d.f7420X.getClass();
            AbstractC2542t abstractC2542tM4130g = this.f7324q.m4130g(this.f7321n, c2497c.m3886c(c0061w, Long.valueOf(System.nanoTime() - this.f7323p)));
            this.f7320m.m3963c(c2530nM3962a);
            synchronized (this) {
                try {
                    AbstractC2542t abstractC2542t = this.f7316i;
                    if (abstractC2542t != null) {
                        c2701r = null;
                    } else {
                        AbstractC2587b.m4045l("realCall already set to %s", abstractC2542t == null, abstractC2542t);
                        ScheduledFuture scheduledFuture = this.f7311d;
                        if (scheduledFuture != null) {
                            scheduledFuture.cancel(false);
                        }
                        this.f7316i = abstractC2542tM4130g;
                        c2701r = new C2701r(this, this.f7313f);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            C2632f2 c2632f2 = this.f7324q.f7334d;
            if (c2701r == null) {
                c2632f2.f7437m.execute(new RunnableC2630f0(this, 2));
                return;
            }
            Executor executor = this.f7322o.f6892b;
            if (executor == null) {
                executor = c2632f2.f7432h;
            }
            executor.execute(new RunnableC2624e0(20, this, c2701r));
        } catch (Throwable th2) {
            this.f7320m.m3963c(c2530nM3962a);
            throw th2;
        }
    }
}
