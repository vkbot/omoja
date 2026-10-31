package p157o7;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1034g;
import com.bumptech.glide.RunnableC1054m;
import com.bumptech.glide.manager.C1073s;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import kotlin.collections.unsigned.AbstractC2082a;
import p016b1.C0872m;
import p025c0.C0939h;
import p050e3.C1461d;
import p091i4.C1748f;
import p099j1.C1929i;
import p102j4.C1975n;
import p136m5.C2398a;
import p141n.C2455p;
import p148n7.AbstractC2493a1;
import p148n7.AbstractC2500d;
import p148n7.AbstractC2513h0;
import p148n7.AbstractC2519j0;
import p148n7.AbstractC2528m0;
import p148n7.AbstractC2542t;
import p148n7.C2492a0;
import p148n7.C2496b1;
import p148n7.C2497c;
import p148n7.C2506f;
import p148n7.C2508f1;
import p148n7.C2512h;
import p148n7.C2515i;
import p148n7.C2532o;
import p148n7.C2536q;
import p148n7.C2550x;
import p148n7.C2551x0;
import p148n7.EnumC2518j;
import p148n7.ExecutorC2523k1;
import p148n7.InterfaceC2554z;
import p155o4.AbstractC2587b;
import p170p7.C2982g;
import p214u7.C3310g;

/* JADX INFO: renamed from: o7.f2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2632f2 extends AbstractC2528m0 implements InterfaceC2554z {

    /* JADX INFO: renamed from: c0 */
    public static final Logger f7390c0 = Logger.getLogger(C2632f2.class.getName());

    /* JADX INFO: renamed from: d0 */
    public static final Pattern f7391d0 = Pattern.compile("[a-zA-Z][a-zA-Z0-9+.-]*:/.*");

    /* JADX INFO: renamed from: e0 */
    public static final C2508f1 f7392e0;

    /* JADX INFO: renamed from: f0 */
    public static final C2508f1 f7393f0;

    /* JADX INFO: renamed from: g0 */
    public static final C2668l2 f7394g0;

    /* JADX INFO: renamed from: h0 */
    public static final C2709s1 f7395h0;

    /* JADX INFO: renamed from: i0 */
    public static final C2636g0 f7396i0;

    /* JADX INFO: renamed from: A */
    public final HashSet f7397A;

    /* JADX INFO: renamed from: B */
    public LinkedHashSet f7398B;

    /* JADX INFO: renamed from: C */
    public final Object f7399C;

    /* JADX INFO: renamed from: D */
    public final HashSet f7400D;

    /* JADX INFO: renamed from: E */
    public final C2666l0 f7401E;

    /* JADX INFO: renamed from: F */
    public final C0872m f7402F;

    /* JADX INFO: renamed from: G */
    public final AtomicBoolean f7403G;

    /* JADX INFO: renamed from: H */
    public boolean f7404H;

    /* JADX INFO: renamed from: I */
    public volatile boolean f7405I;

    /* JADX INFO: renamed from: J */
    public final CountDownLatch f7406J;

    /* JADX INFO: renamed from: K */
    public final C2722u2 f7407K;

    /* JADX INFO: renamed from: L */
    public final C0872m f7408L;

    /* JADX INFO: renamed from: M */
    public final C2683o f7409M;

    /* JADX INFO: renamed from: N */
    public final C2671m f7410N;

    /* JADX INFO: renamed from: O */
    public final C2550x f7411O;

    /* JADX INFO: renamed from: P */
    public final C2614c2 f7412P;

    /* JADX INFO: renamed from: Q */
    public C2668l2 f7413Q;

    /* JADX INFO: renamed from: R */
    public boolean f7414R;

    /* JADX INFO: renamed from: S */
    public final boolean f7415S;

    /* JADX INFO: renamed from: T */
    public final C2629f f7416T;

    /* JADX INFO: renamed from: U */
    public final long f7417U;

    /* JADX INFO: renamed from: V */
    public final long f7418V;

    /* JADX INFO: renamed from: W */
    public final boolean f7419W;

    /* JADX INFO: renamed from: X */
    public final C2512h f7420X;

    /* JADX INFO: renamed from: Y */
    public final C2625e1 f7421Y;

    /* JADX INFO: renamed from: Z */
    public final C0939h f7422Z;

    /* JADX INFO: renamed from: a */
    public final C2492a0 f7423a;

    /* JADX INFO: renamed from: a0 */
    public final C2681n3 f7424a0;

    /* JADX INFO: renamed from: b */
    public final String f7425b;

    /* JADX INFO: renamed from: b0 */
    public int f7426b0;

    /* JADX INFO: renamed from: c */
    public final C2496b1 f7427c;

    /* JADX INFO: renamed from: d */
    public final C2398a f7428d;

    /* JADX INFO: renamed from: e */
    public final C2736w4 f7429e;

    /* JADX INFO: renamed from: f */
    public final C2665l f7430f;

    /* JADX INFO: renamed from: g */
    public final ScheduledExecutorServiceC2620d2 f7431g;

    /* JADX INFO: renamed from: h */
    public final Executor f7432h;

    /* JADX INFO: renamed from: i */
    public final C2455p f7433i;

    /* JADX INFO: renamed from: j */
    public final ExecutorC2739x1 f7434j;

    /* JADX INFO: renamed from: k */
    public final ExecutorC2739x1 f7435k;

    /* JADX INFO: renamed from: l */
    public final C2722u2 f7436l;

    /* JADX INFO: renamed from: m */
    public final ExecutorC2523k1 f7437m;

    /* JADX INFO: renamed from: n */
    public final C2536q f7438n;

    /* JADX INFO: renamed from: o */
    public final C2515i f7439o;

    /* JADX INFO: renamed from: p */
    public final C2722u2 f7440p;

    /* JADX INFO: renamed from: q */
    public final long f7441q;

    /* JADX INFO: renamed from: r */
    public final C0939h f7442r;

    /* JADX INFO: renamed from: s */
    public final C2722u2 f7443s;

    /* JADX INFO: renamed from: t */
    public final AbstractC2500d f7444t;

    /* JADX INFO: renamed from: u */
    public final ArrayList f7445u;

    /* JADX INFO: renamed from: v */
    public C2646h4 f7446v;

    /* JADX INFO: renamed from: w */
    public boolean f7447w;

    /* JADX INFO: renamed from: x */
    public C2744y1 f7448x;

    /* JADX INFO: renamed from: y */
    public volatile AbstractC2513h0 f7449y;

    /* JADX INFO: renamed from: z */
    public boolean f7450z;

    static {
        C2508f1 c2508f1 = C2508f1.f6945m;
        c2508f1.m3934h("Channel shutdownNow invoked");
        f7392e0 = c2508f1.m3934h("Channel shutdown invoked");
        f7393f0 = c2508f1.m3934h("Subchannel shutdown invoked");
        f7394g0 = new C2668l2(null, new HashMap(), new HashMap(), null, null, null);
        f7395h0 = new C2709s1();
        f7396i0 = new C2636g0(1);
    }

    public C2632f2(C2638g2 c2638g2, C2982g c2982g, C2722u2 c2722u2, C2455p c2455p, C2722u2 c2722u3, ArrayList arrayList) {
        int i10;
        C2722u2 c2722u4 = C2722u2.f7798d;
        ExecutorC2523k1 executorC2523k1 = new ExecutorC2523k1(new C2721u1(this));
        this.f7437m = executorC2523k1;
        C0939h c0939h = new C0939h();
        c0939h.f796b = new ArrayList();
        c0939h.f797c = EnumC2518j.f6971e;
        this.f7442r = c0939h;
        this.f7397A = new HashSet(16, 0.75f);
        this.f7399C = new Object();
        this.f7400D = new HashSet(1, 0.75f);
        this.f7402F = new C0872m(this);
        this.f7403G = new AtomicBoolean(false);
        this.f7406J = new CountDownLatch(1);
        this.f7426b0 = 1;
        this.f7413Q = f7394g0;
        this.f7414R = false;
        this.f7416T = new C2629f(1);
        this.f7420X = C2532o.f7000e;
        C2455p c2455p2 = new C2455p(4, this);
        this.f7421Y = new C2625e1(this, 1);
        this.f7422Z = new C0939h(this);
        String str = c2638g2.f7469g;
        AbstractC2587b.m4042i(str, TypedValues.AttributesType.S_TARGET);
        this.f7425b = str;
        C2492a0 c2492a0 = new C2492a0(C2492a0.f6877d.incrementAndGet(), "Channel", str);
        this.f7423a = c2492a0;
        this.f7436l = c2722u4;
        C2455p c2455p3 = c2638g2.f7464b;
        AbstractC2587b.m4042i(c2455p3, "executorPool");
        this.f7433i = c2455p3;
        Executor executor = (Executor) C2712s4.m4232a((InterfaceC2706r4) c2455p3.f6648c);
        AbstractC2587b.m4042i(executor, "executor");
        this.f7432h = executor;
        C2455p c2455p4 = c2638g2.f7465c;
        AbstractC2587b.m4042i(c2455p4, "offloadExecutorPool");
        ExecutorC2739x1 executorC2739x1 = new ExecutorC2739x1(c2455p4);
        this.f7435k = executorC2739x1;
        C2665l c2665l = new C2665l(c2982g, executorC2739x1);
        this.f7430f = c2665l;
        ScheduledExecutorServiceC2620d2 scheduledExecutorServiceC2620d2 = new ScheduledExecutorServiceC2620d2(c2982g.f8315e);
        this.f7431g = scheduledExecutorServiceC2620d2;
        C2683o c2683o = new C2683o(c2492a0, c2722u4.m4245q(), AbstractC0074a.m162m("Channel for '", str, "'"));
        this.f7409M = c2683o;
        C2671m c2671m = new C2671m(c2683o, c2722u4);
        this.f7410N = c2671m;
        C2645h3 c2645h3 = AbstractC2743y0.f7887m;
        boolean z9 = c2638g2.f7478p;
        this.f7419W = z9;
        C2736w4 c2736w4 = new C2736w4(c2638g2.f7470h);
        this.f7429e = c2736w4;
        C2496b1 c2496b1 = c2638g2.f7467e;
        this.f7427c = c2496b1;
        C2652i4 c2652i4 = new C2652i4(z9, c2638g2.f7474l, c2638g2.f7475m, c2736w4);
        int i11 = c2638g2.f7487y.f8311a.f8334h;
        int iM1296c = AbstractC1034g.m1296c(i11);
        if (iM1296c == 0) {
            i10 = 443;
        } else if (iM1296c == 1) {
            i10 = 80;
        } else {
            C1929i.m3023e(AbstractC2082a.m3242h(i11).concat(" not handled"));
            i10 = 0;
        }
        Integer numValueOf = Integer.valueOf(i10);
        c2645h3.getClass();
        C2398a c2398a = new C2398a(numValueOf, c2645h3, executorC2523k1, c2652i4, scheduledExecutorServiceC2620d2, c2671m, executorC2739x1);
        this.f7428d = c2398a;
        c2665l.f7595b.getClass();
        this.f7446v = m4138i(str, c2496b1, c2398a, Collections.singleton(InetSocketAddress.class));
        this.f7434j = new ExecutorC2739x1(c2455p);
        C2666l0 c2666l0 = new C2666l0(executor, executorC2523k1);
        this.f7401E = c2666l0;
        c2666l0.mo4181b(c2455p2);
        this.f7443s = c2722u2;
        boolean z10 = c2638g2.f7480r;
        this.f7415S = z10;
        C2614c2 c2614c2 = new C2614c2(this, this.f7446v.mo3897e());
        this.f7412P = c2614c2;
        int size = arrayList.size();
        int i12 = 0;
        AbstractC2500d c2506f = c2614c2;
        while (i12 < size) {
            Object obj = arrayList.get(i12);
            i12++;
            c2506f = new C2506f(c2506f, (C3310g) obj);
        }
        this.f7444t = c2506f;
        this.f7445u = new ArrayList(c2638g2.f7468f);
        AbstractC2587b.m4042i(c2722u3, "stopwatchSupplier");
        this.f7440p = c2722u3;
        long j10 = c2638g2.f7473k;
        if (j10 == -1) {
            this.f7441q = j10;
        } else {
            AbstractC2587b.m4040g(j10 >= C2638g2.f7458B, "invalid idleTimeoutMillis %s", j10);
            this.f7441q = c2638g2.f7473k;
        }
        this.f7424a0 = new C2681n3(new RunnableC1054m(14, this), executorC2523k1, c2665l.f7595b.f8315e, (C1748f) c2722u3.m4246r());
        C2536q c2536q = c2638g2.f7471i;
        AbstractC2587b.m4042i(c2536q, "decompressorRegistry");
        this.f7438n = c2536q;
        C2515i c2515i = c2638g2.f7472j;
        AbstractC2587b.m4042i(c2515i, "compressorRegistry");
        this.f7439o = c2515i;
        this.f7418V = c2638g2.f7476n;
        this.f7417U = c2638g2.f7477o;
        this.f7407K = new C2722u2(16);
        this.f7408L = new C0872m(11);
        C2550x c2550x = c2638g2.f7479q;
        c2550x.getClass();
        this.f7411O = c2550x;
        if (z10) {
            return;
        }
        this.f7414R = true;
    }

    /* JADX INFO: renamed from: g */
    public static void m4137g(C2632f2 c2632f2) {
        if (!c2632f2.f7405I && c2632f2.f7403G.get() && c2632f2.f7397A.isEmpty() && c2632f2.f7400D.isEmpty()) {
            c2632f2.f7410N.mo3905m(2, "Terminated");
            C2455p c2455p = c2632f2.f7433i;
            C2712s4.m4233b((InterfaceC2706r4) c2455p.f6648c, c2632f2.f7432h);
            ExecutorC2739x1 executorC2739x1 = c2632f2.f7434j;
            synchronized (executorC2739x1) {
                Executor executor = executorC2739x1.f7867c;
                if (executor != null) {
                    C2712s4.m4233b((InterfaceC2706r4) executorC2739x1.f7866b.f6648c, executor);
                    executorC2739x1.f7867c = null;
                }
            }
            ExecutorC2739x1 executorC2739x2 = c2632f2.f7435k;
            synchronized (executorC2739x2) {
                Executor executor2 = executorC2739x2.f7867c;
                if (executor2 != null) {
                    C2712s4.m4233b((InterfaceC2706r4) executorC2739x2.f7866b.f6648c, executor2);
                    executorC2739x2.f7867c = null;
                }
            }
            c2632f2.f7430f.close();
            c2632f2.f7405I = true;
            c2632f2.f7406J.countDown();
        }
    }

    /* JADX INFO: renamed from: i */
    public static C2646h4 m4138i(String str, C2496b1 c2496b1, C2398a c2398a, Collection collection) {
        URI uri;
        AbstractC2493a1 abstractC2493a1;
        C2398a c2398a2;
        String str2;
        String str3;
        String str4;
        C1975n c1975n;
        C1975n c1975n2;
        StringBuilder sb = new StringBuilder();
        C2690p0 c2690p0 = null;
        try {
            uri = new URI(str);
        } catch (URISyntaxException e) {
            sb.append(e.getMessage());
            uri = null;
        }
        if (uri == null) {
            abstractC2493a1 = null;
        } else {
            String scheme = uri.getScheme();
            if (scheme == null) {
                c2496b1.getClass();
                abstractC2493a1 = null;
            } else {
                synchronized (c2496b1) {
                    c1975n2 = c2496b1.f6889c;
                }
                abstractC2493a1 = (AbstractC2493a1) c1975n2.get(scheme.toLowerCase(Locale.US));
            }
        }
        if (abstractC2493a1 == null && !f7391d0.matcher(str).matches()) {
            try {
                synchronized (c2496b1) {
                    str4 = c2496b1.f6887a;
                }
                uri = new URI(str4, "", "/" + str, null);
                String scheme2 = uri.getScheme();
                if (scheme2 == null) {
                    abstractC2493a1 = null;
                } else {
                    synchronized (c2496b1) {
                        c1975n = c2496b1.f6889c;
                    }
                    abstractC2493a1 = (AbstractC2493a1) c1975n.get(scheme2.toLowerCase(Locale.US));
                }
            } catch (URISyntaxException e6) {
                throw new IllegalArgumentException(e6);
            }
        }
        if (abstractC2493a1 == null) {
            if (sb.length() > 0) {
                str3 = " (" + ((Object) sb) + ")";
            } else {
                str3 = "";
            }
            throw new IllegalArgumentException(AbstractC0074a.m162m("Could not find a NameResolverProvider for ", str, str3));
        }
        if (collection != null && !collection.containsAll(Collections.singleton(InetSocketAddress.class))) {
            C0674b.m856w("Address types of NameResolver '", uri.getScheme(), "' for '", str, "' not supported by transport");
            return null;
        }
        if ("dns".equals(uri.getScheme())) {
            String path = uri.getPath();
            AbstractC2587b.m4042i(path, "targetPath");
            if (!path.startsWith("/")) {
                C1929i.m3029k(C1461d.m2512l("the path component (%s) of the target (%s) must start with '/'", path, uri));
                return null;
            }
            String strSubstring = path.substring(1);
            uri.getAuthority();
            c2398a2 = c2398a;
            c2690p0 = new C2690p0(strSubstring, c2398a2, AbstractC2743y0.f7890p, new C1748f(), C2696q0.f7708a);
        } else {
            c2398a2 = c2398a;
        }
        if (c2690p0 != null) {
            C2722u2 c2722u2 = new C2722u2(9);
            ScheduledExecutorServiceC2620d2 scheduledExecutorServiceC2620d2 = (ScheduledExecutorServiceC2620d2) c2398a2.f6488f;
            if (scheduledExecutorServiceC2620d2 != null) {
                ExecutorC2523k1 executorC2523k1 = (ExecutorC2523k1) c2398a2.f6486d;
                return new C2646h4(c2690p0, new C2653j(c2722u2, scheduledExecutorServiceC2620d2, executorC2523k1), executorC2523k1);
            }
            C1929i.m3030l("ScheduledExecutorService not set in Builder");
            return null;
        }
        if (sb.length() > 0) {
            str2 = " (" + ((Object) sb) + ")";
        } else {
            str2 = "";
        }
        throw new IllegalArgumentException(AbstractC0074a.m162m("cannot create a NameResolver for ", str, str2));
    }

    @Override // p148n7.InterfaceC2554z
    /* JADX INFO: renamed from: c */
    public final C2492a0 mo3995c() {
        return this.f7423a;
    }

    @Override // p148n7.AbstractC2500d
    /* JADX INFO: renamed from: e */
    public final String mo3887e() {
        return this.f7444t.mo3887e();
    }

    @Override // p148n7.AbstractC2500d
    /* JADX INFO: renamed from: f */
    public final AbstractC2542t mo3888f(C2551x0 c2551x0, C2497c c2497c) {
        return this.f7444t.mo3888f(c2551x0, c2497c);
    }

    /* JADX INFO: renamed from: h */
    public final void m4139h() {
        this.f7437m.m3957d();
        if (this.f7403G.get() || this.f7450z) {
            return;
        }
        if (((Set) this.f7421Y.f5497b).isEmpty()) {
            m4140j();
        } else {
            this.f7424a0.f7642f = false;
        }
        if (this.f7448x != null) {
            return;
        }
        this.f7410N.mo3905m(2, "Exiting idle mode");
        C2744y1 c2744y1 = new C2744y1(this);
        C2736w4 c2736w4 = this.f7429e;
        c2736w4.getClass();
        c2744y1.f7893b = new C0872m(c2736w4, c2744y1);
        this.f7448x = c2744y1;
        this.f7446v.mo3889A(new C2749z1(this, c2744y1, this.f7446v));
        this.f7447w = true;
    }

    /* JADX INFO: renamed from: j */
    public final void m4140j() {
        long j10 = this.f7441q;
        if (j10 == -1) {
            return;
        }
        C2681n3 c2681n3 = this.f7424a0;
        c2681n3.getClass();
        long nanos = TimeUnit.MILLISECONDS.toNanos(j10);
        long jM2872a = c2681n3.f7640d.m2872a() + nanos;
        c2681n3.f7642f = true;
        if (jM2872a - c2681n3.f7641e < 0 || c2681n3.f7643g == null) {
            ScheduledFuture scheduledFuture = c2681n3.f7643g;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            c2681n3.f7643g = c2681n3.f7637a.schedule(new RunnableC2675m3(c2681n3, 1), nanos, TimeUnit.NANOSECONDS);
        }
        c2681n3.f7641e = jM2872a;
    }

    /* JADX INFO: renamed from: k */
    public final void m4141k(boolean z9) {
        this.f7437m.m3957d();
        if (z9) {
            AbstractC2587b.m4046m(this.f7447w, "nameResolver is not started");
            AbstractC2587b.m4046m(this.f7448x != null, "lbHelper is null");
        }
        C2646h4 c2646h4 = this.f7446v;
        if (c2646h4 != null) {
            c2646h4.mo3918z();
            this.f7447w = false;
            if (z9) {
                String str = this.f7425b;
                C2496b1 c2496b1 = this.f7427c;
                C2398a c2398a = this.f7428d;
                this.f7430f.f7595b.getClass();
                this.f7446v = m4138i(str, c2496b1, c2398a, Collections.singleton(InetSocketAddress.class));
            } else {
                this.f7446v = null;
            }
        }
        C2744y1 c2744y1 = this.f7448x;
        if (c2744y1 != null) {
            C0872m c0872m = c2744y1.f7893b;
            ((AbstractC2519j0) c0872m.f602d).mo3949f();
            c0872m.f602d = null;
            this.f7448x = null;
        }
        this.f7449y = null;
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1346b(this.f7423a.f6880c, "logId");
        c1073sM1263t.m1347c(this.f7425b, TypedValues.AttributesType.S_TARGET);
        return c1073sM1263t.toString();
    }
}
