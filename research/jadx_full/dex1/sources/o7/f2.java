package o7;

import androidx.constraintlayout.core.motion.utils.TypedValues$AttributesType;
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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f2 extends n7.m0 implements n7.z {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final Logger f4211c0 = Logger.getLogger(f2.class.getName());

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final Pattern f4212d0 = Pattern.compile("[a-zA-Z][a-zA-Z0-9+.-]*:/.*");

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final n7.f1 f4213e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final n7.f1 f4214f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final l2 f4215g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final s1 f4216h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final g0 f4217i0;
    public final HashSet A;
    public LinkedHashSet B;
    public final Object C;
    public final HashSet D;
    public final l0 E;
    public final b1.m F;
    public final AtomicBoolean G;
    public boolean H;
    public volatile boolean I;
    public final CountDownLatch J;
    public final u2 K;
    public final b1.m L;
    public final o M;
    public final m N;
    public final n7.x O;
    public final c2 P;
    public l2 Q;
    public boolean R;
    public final boolean S;
    public final f T;
    public final long U;
    public final long V;
    public final boolean W;
    public final n7.h X;
    public final e1 Y;
    public final c0.h Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n7.a0 f4218a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final n3 f4219a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4220b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f4221b0;
    public final n7.b1 c;
    public final m5.a d;
    public final w4 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final l f4222f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final d2 f4223g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Executor f4224h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final n.p f4225i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final x1 f4226j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final x1 f4227k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final u2 f4228l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final n7.k1 f4229m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final n7.q f4230n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final n7.i f4231o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final u2 f4232p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final long f4233q;
    public final c0.h r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final u2 f4234s;
    public final n7.d t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ArrayList f4235u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public h4 f4236v;
    public boolean w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public y1 f4237x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public volatile n7.h0 f4238y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f4239z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        n7.f1 f1Var = n7.f1.f3930m;
        f1Var.h("Channel shutdownNow invoked");
        f4213e0 = f1Var.h("Channel shutdown invoked");
        f4214f0 = f1Var.h("Subchannel shutdown invoked");
        f4215g0 = new l2(null, new HashMap(), new HashMap(), null, null, null);
        f4216h0 = new s1();
        f4217i0 = new g0(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f2(g2 g2Var, p7.g gVar, u2 u2Var, n.p pVar, u2 u2Var2, ArrayList arrayList) {
        int i9;
        u2 u2Var3 = u2.d;
        n7.k1 k1Var = new n7.k1(new u1(this));
        this.f4229m = k1Var;
        c0.h hVar = new c0.h();
        hVar.f400b = new ArrayList();
        hVar.c = n7.j.e;
        this.r = hVar;
        this.A = new HashSet(16, 0.75f);
        this.C = new Object();
        this.D = new HashSet(1, 0.75f);
        this.F = new b1.m(this);
        this.G = new AtomicBoolean(false);
        this.J = new CountDownLatch(1);
        this.f4221b0 = 1;
        this.Q = f4215g0;
        this.R = false;
        this.T = new f(1);
        this.X = n7.o.e;
        n.p pVar2 = new n.p(4, this);
        this.Y = new e1(this, 1);
        this.Z = new c0.h(this);
        String str = g2Var.f4248g;
        o4.b.i(str, TypedValues$AttributesType.S_TARGET);
        this.f4220b = str;
        n7.a0 a0Var = new n7.a0(n7.a0.d.incrementAndGet(), "Channel", str);
        this.f4218a = a0Var;
        this.f4228l = u2Var3;
        n.p pVar3 = g2Var.f4246b;
        o4.b.i(pVar3, "executorPool");
        this.f4225i = pVar3;
        Executor executor = (Executor) s4.a((r4) pVar3.c);
        o4.b.i(executor, "executor");
        this.f4224h = executor;
        n.p pVar4 = g2Var.c;
        o4.b.i(pVar4, "offloadExecutorPool");
        x1 x1Var = new x1(pVar4);
        this.f4227k = x1Var;
        l lVar = new l(gVar, x1Var);
        this.f4222f = lVar;
        d2 d2Var = new d2(gVar.e);
        this.f4223g = d2Var;
        o oVar = new o(a0Var, u2Var3.q(), ai.onnxruntime.a.m("Channel for '", str, "'"));
        this.M = oVar;
        m mVar = new m(oVar, u2Var3);
        this.N = mVar;
        h3 h3Var = y0.f4514m;
        boolean z8 = g2Var.f4257p;
        this.W = z8;
        w4 w4Var = new w4(g2Var.f4249h);
        this.e = w4Var;
        n7.b1 b1Var = g2Var.e;
        this.c = b1Var;
        i4 i4Var = new i4(z8, g2Var.f4253l, g2Var.f4254m, w4Var);
        int i10 = g2Var.f4263y.f4622a.f4639h;
        int iC = com.bumptech.glide.g.c(i10);
        if (iC == 0) {
            i9 = 443;
        } else if (iC == 1) {
            i9 = 80;
        } else {
            j1.i.e(kotlin.collections.unsigned.a.h(i10).concat(" not handled"));
            i9 = 0;
        }
        Integer numValueOf = Integer.valueOf(i9);
        h3Var.getClass();
        m5.a aVar = new m5.a(numValueOf, h3Var, k1Var, i4Var, d2Var, mVar, x1Var);
        this.d = aVar;
        lVar.f4326b.getClass();
        this.f4236v = i(str, b1Var, aVar, Collections.singleton(InetSocketAddress.class));
        this.f4226j = new x1(pVar);
        l0 l0Var = new l0(executor, k1Var);
        this.E = l0Var;
        l0Var.b(pVar2);
        this.f4234s = u2Var;
        boolean z9 = g2Var.r;
        this.S = z9;
        c2 c2Var = new c2(this, this.f4236v.e());
        this.P = c2Var;
        int size = arrayList.size();
        int i11 = 0;
        n7.d fVar = c2Var;
        while (i11 < size) {
            Object obj = arrayList.get(i11);
            i11++;
            fVar = new n7.f(fVar, (u7.g) obj);
        }
        this.t = fVar;
        this.f4235u = new ArrayList(g2Var.f4247f);
        o4.b.i(u2Var2, "stopwatchSupplier");
        this.f4232p = u2Var2;
        long j9 = g2Var.f4252k;
        if (j9 == -1) {
            this.f4233q = j9;
        } else {
            o4.b.g(j9 >= g2.B, "invalid idleTimeoutMillis %s", j9);
            this.f4233q = g2Var.f4252k;
        }
        this.f4219a0 = new n3(new com.bumptech.glide.m(14, this), k1Var, lVar.f4326b.e, (i4.f) u2Var2.r());
        n7.q qVar = g2Var.f4250i;
        o4.b.i(qVar, "decompressorRegistry");
        this.f4230n = qVar;
        n7.i iVar = g2Var.f4251j;
        o4.b.i(iVar, "compressorRegistry");
        this.f4231o = iVar;
        this.V = g2Var.f4255n;
        this.U = g2Var.f4256o;
        this.K = new u2(16);
        this.L = new b1.m(11);
        n7.x xVar = g2Var.f4258q;
        xVar.getClass();
        this.O = xVar;
        if (z9) {
            return;
        }
        this.R = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void g(f2 f2Var) {
        if (!f2Var.I && f2Var.G.get() && f2Var.A.isEmpty() && f2Var.D.isEmpty()) {
            f2Var.N.m(2, "Terminated");
            n.p pVar = f2Var.f4225i;
            s4.b((r4) pVar.c, f2Var.f4224h);
            x1 x1Var = f2Var.f4226j;
            synchronized (x1Var) {
                Executor executor = x1Var.c;
                if (executor != null) {
                    s4.b((r4) x1Var.f4498b.c, executor);
                    x1Var.c = null;
                }
            }
            x1 x1Var2 = f2Var.f4227k;
            synchronized (x1Var2) {
                Executor executor2 = x1Var2.c;
                if (executor2 != null) {
                    s4.b((r4) x1Var2.f4498b.c, executor2);
                    x1Var2.c = null;
                }
            }
            f2Var.f4222f.close();
            f2Var.I = true;
            f2Var.J.countDown();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static h4 i(String str, n7.b1 b1Var, m5.a aVar, Collection collection) {
        URI uri;
        n7.a1 a1Var;
        m5.a aVar2;
        String str2;
        String str3;
        String str4;
        j4.n nVar;
        j4.n nVar2;
        StringBuilder sb = new StringBuilder();
        p0 p0Var = null;
        try {
            uri = new URI(str);
        } catch (URISyntaxException e) {
            sb.append(e.getMessage());
            uri = null;
        }
        if (uri == null) {
            a1Var = null;
        } else {
            String scheme = uri.getScheme();
            if (scheme == null) {
                b1Var.getClass();
                a1Var = null;
            } else {
                synchronized (b1Var) {
                    nVar2 = b1Var.c;
                }
                a1Var = (n7.a1) nVar2.get(scheme.toLowerCase(Locale.US));
            }
        }
        if (a1Var == null && !f4212d0.matcher(str).matches()) {
            try {
                synchronized (b1Var) {
                    str4 = b1Var.f3890a;
                }
                uri = new URI(str4, "", "/" + str, null);
                String scheme2 = uri.getScheme();
                if (scheme2 == null) {
                    a1Var = null;
                } else {
                    synchronized (b1Var) {
                        nVar = b1Var.c;
                    }
                    a1Var = (n7.a1) nVar.get(scheme2.toLowerCase(Locale.US));
                }
            } catch (URISyntaxException e6) {
                throw new IllegalArgumentException(e6);
            }
        }
        if (a1Var == null) {
            if (sb.length() > 0) {
                str3 = " (" + ((Object) sb) + ")";
            } else {
                str3 = "";
            }
            throw new IllegalArgumentException(ai.onnxruntime.a.m("Could not find a NameResolverProvider for ", str, str3));
        }
        if (collection != null && !collection.containsAll(Collections.singleton(InetSocketAddress.class))) {
            androidx.navigation.b.w("Address types of NameResolver '", uri.getScheme(), "' for '", str, "' not supported by transport");
            return null;
        }
        if ("dns".equals(uri.getScheme())) {
            String path = uri.getPath();
            o4.b.i(path, "targetPath");
            if (!path.startsWith("/")) {
                j1.i.k(e3.d.l("the path component (%s) of the target (%s) must start with '/'", path, uri));
                return null;
            }
            String strSubstring = path.substring(1);
            uri.getAuthority();
            aVar2 = aVar;
            p0Var = new p0(strSubstring, aVar2, y0.f4517p, new i4.f(), q0.f4396a);
        } else {
            aVar2 = aVar;
        }
        if (p0Var != null) {
            u2 u2Var = new u2(9);
            d2 d2Var = (d2) aVar2.f3667f;
            if (d2Var != null) {
                n7.k1 k1Var = (n7.k1) aVar2.d;
                return new h4(p0Var, new j(u2Var, d2Var, k1Var), k1Var);
            }
            j1.i.l("ScheduledExecutorService not set in Builder");
            return null;
        }
        if (sb.length() > 0) {
            str2 = " (" + ((Object) sb) + ")";
        } else {
            str2 = "";
        }
        throw new IllegalArgumentException(ai.onnxruntime.a.m("cannot create a NameResolver for ", str, str2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.z
    public final n7.a0 c() {
        return this.f4218a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.d
    public final String e() {
        return this.t.e();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.d
    public final n7.t f(n7.x0 x0Var, n7.c cVar) {
        return this.t.f(x0Var, cVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h() {
        this.f4229m.d();
        if (this.G.get() || this.f4239z) {
            return;
        }
        if (((Set) this.Y.f3128b).isEmpty()) {
            j();
        } else {
            this.f4219a0.f4352f = false;
        }
        if (this.f4237x != null) {
            return;
        }
        this.N.m(2, "Exiting idle mode");
        y1 y1Var = new y1(this);
        w4 w4Var = this.e;
        w4Var.getClass();
        y1Var.f4519b = new b1.m(w4Var, y1Var);
        this.f4237x = y1Var;
        this.f4236v.A(new z1(this, y1Var, this.f4236v));
        this.w = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j() {
        long j9 = this.f4233q;
        if (j9 == -1) {
            return;
        }
        n3 n3Var = this.f4219a0;
        n3Var.getClass();
        long nanos = TimeUnit.MILLISECONDS.toNanos(j9);
        long jA = n3Var.d.a() + nanos;
        n3Var.f4352f = true;
        if (jA - n3Var.e < 0 || n3Var.f4353g == null) {
            ScheduledFuture scheduledFuture = n3Var.f4353g;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            n3Var.f4353g = n3Var.f4350a.schedule(new m3(n3Var, 1), nanos, TimeUnit.NANOSECONDS);
        }
        n3Var.e = jA;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(boolean z8) {
        this.f4229m.d();
        if (z8) {
            o4.b.m(this.w, "nameResolver is not started");
            o4.b.m(this.f4237x != null, "lbHelper is null");
        }
        h4 h4Var = this.f4236v;
        if (h4Var != null) {
            h4Var.z();
            this.w = false;
            if (z8) {
                String str = this.f4220b;
                n7.b1 b1Var = this.c;
                m5.a aVar = this.d;
                this.f4222f.f4326b.getClass();
                this.f4236v = i(str, b1Var, aVar, Collections.singleton(InetSocketAddress.class));
            } else {
                this.f4236v = null;
            }
        }
        y1 y1Var = this.f4237x;
        if (y1Var != null) {
            b1.m mVar = y1Var.f4519b;
            ((n7.j0) mVar.d).f();
            mVar.d = null;
            this.f4237x = null;
        }
        this.f4238y = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.b(this.f4218a.c, "logId");
        sVarT.c(this.f4220b, TypedValues$AttributesType.S_TARGET);
        return sVarT.toString();
    }
}
