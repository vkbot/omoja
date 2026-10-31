package p157o7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import p006a5.C0023h;
import p010a9.C0061w;
import p016b1.C0872m;
import p025c0.C0939h;
import p027c2.C0961k;
import p135m4.EnumC2395n;
import p142n0.C2467b;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2541s0;
import p148n7.AbstractC2542t;
import p148n7.C2497c;
import p148n7.C2508f1;
import p148n7.C2512h;
import p148n7.C2515i;
import p148n7.C2530n;
import p148n7.C2532o;
import p148n7.C2536q;
import p148n7.C2547v0;
import p148n7.C2551x0;
import p148n7.EnumC2549w0;
import p155o4.AbstractC2587b;
import p203t7.C3265a;
import p203t7.C3266b;
import p232w7.AbstractC3536b;
import p250y5.C3652g;

/* JADX INFO: renamed from: o7.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2713t extends AbstractC2542t {

    /* JADX INFO: renamed from: s */
    public static final Logger f7758s = Logger.getLogger(C2713t.class.getName());

    /* JADX INFO: renamed from: t */
    public static final double f7759t;

    /* JADX INFO: renamed from: d */
    public final C2551x0 f7760d;

    /* JADX INFO: renamed from: e */
    public final Executor f7761e;

    /* JADX INFO: renamed from: f */
    public final boolean f7762f;

    /* JADX INFO: renamed from: g */
    public final C0872m f7763g;

    /* JADX INFO: renamed from: h */
    public final C2530n f7764h;

    /* JADX INFO: renamed from: i */
    public volatile ScheduledFuture f7765i;

    /* JADX INFO: renamed from: j */
    public final boolean f7766j;

    /* JADX INFO: renamed from: k */
    public C2497c f7767k;

    /* JADX INFO: renamed from: l */
    public InterfaceC2719u f7768l;

    /* JADX INFO: renamed from: m */
    public volatile boolean f7769m;

    /* JADX INFO: renamed from: n */
    public boolean f7770n;

    /* JADX INFO: renamed from: o */
    public boolean f7771o;

    /* JADX INFO: renamed from: p */
    public final C0939h f7772p;

    /* JADX INFO: renamed from: q */
    public final ScheduledExecutorService f7773q;

    /* JADX INFO: renamed from: r */
    public C2536q f7774r = C2536q.f7012d;

    static {
        "gzip".getBytes(Charset.forName("US-ASCII"));
        f7759t = 1000000000 * 1.0d;
    }

    public C2713t(C2551x0 c2551x0, Executor executor, C2497c c2497c, C0939h c0939h, ScheduledExecutorService scheduledExecutorService, C0872m c0872m) {
        C2515i c2515i = C2515i.f6962b;
        this.f7760d = c2551x0;
        String str = c2551x0.f7055b;
        System.identityHashCode(this);
        AbstractC3536b.f10507a.getClass();
        if (executor == EnumC2395n.f6477b) {
            this.f7761e = new ExecutorC2658j4();
            this.f7762f = true;
        } else {
            this.f7761e = new ExecutorC2676m4(executor);
            this.f7762f = false;
        }
        this.f7763g = c0872m;
        this.f7764h = C2530n.m3961b();
        EnumC2549w0 enumC2549w0 = c2551x0.f7054a;
        this.f7766j = enumC2549w0 == EnumC2549w0.f7046b || enumC2549w0 == EnumC2549w0.f7047c;
        this.f7767k = c2497c;
        this.f7772p = c0939h;
        this.f7773q = scheduledExecutorService;
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: a */
    public final void mo3969a(String str, Throwable th) {
        AbstractC3536b.m5642c();
        try {
            AbstractC3536b.m5640a();
            m4234r(str, th);
            AbstractC3536b.f10507a.getClass();
        } catch (Throwable th2) {
            try {
                AbstractC3536b.f10507a.getClass();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: g */
    public final void mo3970g() {
        AbstractC3536b.m5642c();
        try {
            AbstractC3536b.m5640a();
            AbstractC2587b.m4046m(this.f7768l != null, "Not started");
            AbstractC2587b.m4046m(!this.f7770n, "call was cancelled");
            AbstractC2587b.m4046m(!this.f7771o, "call already half-closed");
            this.f7771o = true;
            this.f7768l.mo4098i();
            AbstractC3536b.f10507a.getClass();
        } catch (Throwable th) {
            try {
                AbstractC3536b.f10507a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: k */
    public final void mo3971k() {
        AbstractC3536b.m5642c();
        try {
            AbstractC3536b.m5640a();
            AbstractC2587b.m4046m(this.f7768l != null, "Not started");
            this.f7768l.request();
            AbstractC3536b.f10507a.getClass();
        } catch (Throwable th) {
            try {
                AbstractC3536b.f10507a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: m */
    public final void mo3972m(C3652g c3652g) {
        AbstractC3536b.m5642c();
        try {
            AbstractC3536b.m5640a();
            m4236t(c3652g);
            AbstractC3536b.f10507a.getClass();
        } catch (Throwable th) {
            try {
                AbstractC3536b.f10507a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // p148n7.AbstractC2542t
    /* JADX INFO: renamed from: o */
    public final void mo3984o(AbstractC2503e abstractC2503e, C2547v0 c2547v0) {
        AbstractC3536b.m5642c();
        try {
            AbstractC3536b.m5640a();
            m4237u(abstractC2503e, c2547v0);
            AbstractC3536b.f10507a.getClass();
        } catch (Throwable th) {
            try {
                AbstractC3536b.f10507a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: renamed from: r */
    public final void m4234r(String str, Throwable th) {
        if (str == null && th == null) {
            th = new CancellationException("Cancelled without a message or cause");
            f7758s.log(Level.WARNING, "Cancelling without a message or cause is suboptimal", th);
        }
        if (this.f7770n) {
            return;
        }
        this.f7770n = true;
        try {
            if (this.f7768l != null) {
                C2508f1 c2508f1 = C2508f1.f6938f;
                C2508f1 c2508f1M3934h = str != null ? c2508f1.m3934h(str) : c2508f1.m3934h("Call cancelled without message");
                if (th != null) {
                    c2508f1M3934h = c2508f1M3934h.m3933g(th);
                }
                this.f7768l.mo4097h(c2508f1M3934h);
            }
        } finally {
            m4235s();
        }
    }

    /* JADX INFO: renamed from: s */
    public final void m4235s() {
        this.f7764h.getClass();
        ScheduledFuture scheduledFuture = this.f7765i;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m4236t(C3652g c3652g) {
        AbstractC2587b.m4046m(this.f7768l != null, "Not started");
        AbstractC2587b.m4046m(!this.f7770n, "call was cancelled");
        AbstractC2587b.m4046m(!this.f7771o, "call was half-closed");
        try {
            InterfaceC2719u interfaceC2719u = this.f7768l;
            if (interfaceC2719u instanceof C2727v1) {
                ((C2727v1) interfaceC2719u).m4255t(c3652g);
            } else {
                C3266b c3266b = this.f7760d.f7057d;
                c3266b.getClass();
                interfaceC2719u.mo4095f(new C3265a(c3652g, c3266b.f9559a));
            }
            if (this.f7766j) {
                return;
            }
            this.f7768l.flush();
        } catch (Error e) {
            this.f7768l.mo4097h(C2508f1.f6938f.m3934h("Client sendMessage() failed with Error"));
            throw e;
        } catch (RuntimeException e6) {
            this.f7768l.mo4097h(C2508f1.f6938f.m3933g(e6).m3934h("Failed to stream message"));
        }
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f7760d, "method");
        return c1073sM1263t.toString();
    }

    /* JADX INFO: renamed from: u */
    public final void m4237u(AbstractC2503e abstractC2503e, C2547v0 c2547v0) {
        long j10;
        C2497c c2497c;
        InterfaceC2719u c2727v1;
        C2512h c2512h = C2512h.f6956c;
        AbstractC2587b.m4046m(this.f7768l == null, "Already started");
        AbstractC2587b.m4046m(!this.f7770n, "call was cancelled");
        this.f7764h.getClass();
        C2497c c2497c2 = this.f7767k;
        C0061w c0061w = C2656j2.f7538g;
        C2656j2 c2656j2 = (C2656j2) c2497c2.m3885a(c0061w);
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        if (c2656j2 == null) {
            j10 = 0;
        } else {
            Integer num = c2656j2.f7542d;
            Integer num2 = c2656j2.f7541c;
            Long l10 = c2656j2.f7539a;
            if (l10 != null) {
                long jLongValue = l10.longValue();
                if (timeUnit == null) {
                    C2467b.m3828n("units");
                    return;
                }
                C2532o c2532o = new C2532o(jLongValue);
                C2497c c2497c3 = this.f7767k;
                C2532o c2532o2 = c2497c3.f6891a;
                if (c2532o2 != null) {
                    C2512h c2512h2 = c2532o.f7002b;
                    if (c2512h2 != c2532o2.f7002b) {
                        StringBuilder sb = new StringBuilder("Tickers (");
                        sb.append(c2512h2);
                        C2512h c2512h3 = c2532o2.f7002b;
                        sb.append(" and ");
                        sb.append(c2512h3);
                        sb.append(") don't match. Custom Ticker should only be used in tests!");
                        throw new AssertionError(sb.toString());
                    }
                    j10 = 0;
                    if (c2532o.f7003c - c2532o2.f7003c < 0) {
                    }
                } else {
                    j10 = 0;
                }
                c2497c3.getClass();
                C0961k c0961kM3884b = C2497c.m3884b(c2497c3);
                c0961kM3884b.f872c = c2532o;
                this.f7767k = new C2497c(c0961kM3884b);
            } else {
                j10 = 0;
            }
            Boolean bool = c2656j2.f7540b;
            if (bool != null) {
                boolean zBooleanValue = bool.booleanValue();
                C2497c c2497c4 = this.f7767k;
                c2497c4.getClass();
                if (zBooleanValue) {
                    C0961k c0961kM3884b2 = C2497c.m3884b(c2497c4);
                    c0961kM3884b2.f877h = Boolean.TRUE;
                    c2497c = new C2497c(c0961kM3884b2);
                } else {
                    C0961k c0961kM3884b3 = C2497c.m3884b(c2497c4);
                    c0961kM3884b3.f877h = Boolean.FALSE;
                    c2497c = new C2497c(c0961kM3884b3);
                }
                this.f7767k = c2497c;
            }
            if (num2 != null) {
                C2497c c2497c5 = this.f7767k;
                Integer num3 = c2497c5.f6896f;
                if (num3 != null) {
                    int iMin = Math.min(num3.intValue(), num2.intValue());
                    AbstractC2587b.m4036c(iMin, "invalid maxsize %s", iMin >= 0);
                    C0961k c0961kM3884b4 = C2497c.m3884b(c2497c5);
                    c0961kM3884b4.f875f = Integer.valueOf(iMin);
                    this.f7767k = new C2497c(c0961kM3884b4);
                } else {
                    int iIntValue = num2.intValue();
                    AbstractC2587b.m4036c(iIntValue, "invalid maxsize %s", iIntValue >= 0);
                    C0961k c0961kM3884b5 = C2497c.m3884b(c2497c5);
                    c0961kM3884b5.f875f = num2;
                    this.f7767k = new C2497c(c0961kM3884b5);
                }
            }
            if (num != null) {
                C2497c c2497c6 = this.f7767k;
                Integer num4 = c2497c6.f6897g;
                if (num4 != null) {
                    int iMin2 = Math.min(num4.intValue(), num.intValue());
                    AbstractC2587b.m4036c(iMin2, "invalid maxsize %s", iMin2 >= 0);
                    C0961k c0961kM3884b6 = C2497c.m3884b(c2497c6);
                    c0961kM3884b6.f878i = Integer.valueOf(iMin2);
                    this.f7767k = new C2497c(c0961kM3884b6);
                } else {
                    int iIntValue2 = num.intValue();
                    AbstractC2587b.m4036c(iIntValue2, "invalid maxsize %s", iIntValue2 >= 0);
                    C0961k c0961kM3884b7 = C2497c.m3884b(c2497c6);
                    c0961kM3884b7.f878i = num;
                    this.f7767k = new C2497c(c0961kM3884b7);
                }
            }
        }
        this.f7767k.getClass();
        C2536q c2536q = this.f7774r;
        c2547v0.m3987a(AbstractC2743y0.f7882h);
        c2547v0.m3987a(AbstractC2743y0.f7878d);
        AbstractC2541s0 abstractC2541s0 = AbstractC2743y0.f7879e;
        c2547v0.m3987a(abstractC2541s0);
        byte[] bArr = c2536q.f7014b;
        if (bArr.length != 0) {
            c2547v0.m3991e(abstractC2541s0, bArr);
        }
        c2547v0.m3987a(AbstractC2743y0.f7880f);
        c2547v0.m3987a(AbstractC2743y0.f7881g);
        C2532o c2532o3 = this.f7767k.f6891a;
        this.f7764h.getClass();
        C2532o c2532o4 = c2532o3 == null ? null : c2532o3;
        if (c2532o4 == null || !c2532o4.m3964a()) {
            this.f7764h.getClass();
            C2532o c2532o5 = this.f7767k.f6891a;
            Logger logger = f7758s;
            if (logger.isLoggable(Level.FINE) && c2532o4 != null && c2532o4.equals(null)) {
                long jMax = Math.max(j10, c2532o4.m3965b());
                Locale locale = Locale.US;
                StringBuilder sb2 = new StringBuilder("Call timeout set to '" + jMax + "' ns, due to context deadline.");
                if (c2532o5 == null) {
                    sb2.append(" Explicit call timeout was not set.");
                } else {
                    sb2.append(" Explicit call timeout was '" + c2532o5.m3965b() + "' ns.");
                }
                logger.fine(sb2.toString());
            }
            C0939h c0939h = this.f7772p;
            C2551x0 c2551x0 = this.f7760d;
            C2497c c2497c7 = this.f7767k;
            C2530n c2530n = this.f7764h;
            if (((C2632f2) c0939h.f796b).f7419W) {
                C2656j2 c2656j3 = (C2656j2) c2497c7.m3885a(c0061w);
                c2727v1 = new C2727v1(c0939h, c2551x0, c2547v0, c2497c7, c2656j3 == null ? null : c2656j3.f7543e, c2656j3 == null ? null : c2656j3.f7544f, c2530n);
            } else {
                InterfaceC2737x interfaceC2737xM1074b = c0939h.m1074b(new C2639g3(c2551x0, c2547v0, c2497c7));
                C2530n c2530nM3962a = c2530n.m3962a();
                try {
                    c2727v1 = interfaceC2737xM1074b.mo4156d(c2551x0, c2547v0, c2497c7, AbstractC2743y0.m4259c(c2497c7, c2547v0, 0, false));
                    c2530n.m3963c(c2530nM3962a);
                } catch (Throwable th) {
                    c2530n.m3963c(c2530nM3962a);
                    throw th;
                }
            }
            this.f7768l = c2727v1;
        } else {
            AbstractC2503e[] abstractC2503eArrM4259c = AbstractC2743y0.m4259c(this.f7767k, c2547v0, 0, false);
            C2532o c2532o6 = this.f7767k.f6891a;
            this.f7764h.getClass();
            String str = c2532o6 == null ? "Context" : "CallOptions";
            Long l11 = (Long) this.f7767k.m3885a(AbstractC2503e.f6904a);
            double dM3965b = c2532o4.m3965b();
            double d = f7759t;
            this.f7768l = new C2708s0(C2508f1.f6940h.m3934h(String.format("ClientCall started after %s deadline was exceeded %.9f seconds ago. Name resolution delay %.9f seconds.", str, Double.valueOf(dM3965b / d), Double.valueOf(l11 == null ? 0.0d : l11.longValue() / d))), EnumC2725v.f7801b, abstractC2503eArrM4259c);
        }
        if (this.f7762f) {
            this.f7768l.mo4101o();
        }
        this.f7767k.getClass();
        Integer num5 = this.f7767k.f6896f;
        if (num5 != null) {
            this.f7768l.mo4099m(num5.intValue());
        }
        Integer num6 = this.f7767k.f6897g;
        if (num6 != null) {
            this.f7768l.mo4092c(num6.intValue());
        }
        if (c2532o4 != null) {
            this.f7768l.mo4100n(c2532o4);
        }
        this.f7768l.mo4090a(c2512h);
        this.f7768l.mo4096g(this.f7774r);
        C0872m c0872m = this.f7763g;
        ((InterfaceC2703r1) c0872m.f602d).mo4136a();
        ((C2722u2) c0872m.f601c).m4245q();
        this.f7768l.mo4093d(new C0023h(this, abstractC2503e));
        this.f7764h.getClass();
        Logger logger2 = C2530n.f6998a;
        if (c2532o4 != null) {
            this.f7764h.getClass();
            if (!c2532o4.equals(null) && this.f7773q != null) {
                long jM3965b = c2532o4.m3965b();
                this.f7765i = this.f7773q.schedule(new RunnableC2697q1(new RunnableC2707s(this, jM3965b)), jM3965b, timeUnit);
            }
        }
        if (this.f7769m) {
            m4235s();
        }
    }
}
