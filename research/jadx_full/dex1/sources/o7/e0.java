package o7;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4193b;
    public final /* synthetic */ Object c;
    public final Object d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e0(p0 p0Var, n7.t tVar) {
        this.f4193b = 13;
        this.c = p0Var;
        o4.b.i(tVar, "savedListener");
        this.d = tVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void a() {
        ((v1) ((w4) this.c).d).f4479v.l((n7.v0) this.d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:30:0x00ad A[Catch: all -> 0x00aa, TryCatch #4 {all -> 0x00aa, blocks: (B:15:0x004f, B:35:0x00df, B:18:0x005e, B:20:0x007e, B:22:0x008a, B:27:0x0098, B:30:0x00ad, B:34:0x00d3, B:33:0x00bc), top: B:309:0x004f }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:33:0x00bc A[Catch: all -> 0x00aa, TryCatch #4 {all -> 0x00aa, blocks: (B:15:0x004f, B:35:0x00df, B:18:0x005e, B:20:0x007e, B:22:0x008a, B:27:0x0098, B:30:0x00ad, B:34:0x00d3, B:33:0x00bc), top: B:309:0x004f }] */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        com.bumptech.glide.manager.q qVar;
        n7.y0 y0Var;
        List listSingletonList;
        g1 g1Var;
        n7.f1 f1VarA;
        Object obj;
        z3 z3Var;
        a5.h hVar = null;
        tVar = null;
        com.bumptech.glide.manager.t tVar = null;
        hVar = null;
        hVar = null;
        boolean z8 = false;
        boolean z9 = true;
        switch (this.f4193b) {
            case 0:
                ((b2) this.c).r(n7.f1.f3925h.h(((StringBuilder) this.d).toString()), true);
                return;
            case 1:
                n7.t tVar2 = ((b2) this.c).f4161i;
                n7.f1 f1Var = (n7.f1) this.d;
                tVar2.a(f1Var.f3934b, f1Var.c);
                return;
            case 2:
                ((b2) this.c).f4161i.m((y5.g) this.d);
                return;
            case 3:
                ((i0) this.c).f4277b.p((n7.v0) this.d);
                return;
            case 4:
                ((i0) this.c).f4277b.q(this.d);
                return;
            case 5:
                o4.b.m(((f2) ((l0) this.c).f4331h.c).G.get(), "Channel must have been shut down");
                return;
            case 6:
                ((k0) this.c).d.a((n7.h) this.d);
                return;
            case 7:
                ((k0) this.c).d.g((n7.q) this.d);
                return;
            case 8:
                ((k0) this.c).d.n((n7.o) this.d);
                return;
            case 9:
                ((k0) this.c).d.f((t7.a) this.d);
                return;
            case 10:
                ((k0) this.c).d.h((n7.f1) this.d);
                return;
            case 11:
                ((o0) this.c).f4358b.k((o2) this.d);
                return;
            case 12:
                ((o0) this.c).f4358b.l((n7.v0) this.d);
                return;
            case 13:
                n7.t tVar3 = (n7.t) this.d;
                p0 p0Var = (p0) this.c;
                String str = p0Var.f4369f;
                n7.k1 k1Var = p0Var.f4373j;
                Logger logger = p0.t;
                Level level = Level.FINER;
                if (logger.isLoggable(level)) {
                    logger.finer("Attempting DNS resolution of " + str);
                }
                try {
                    try {
                        n7.u uVarA = p0Var.f4368b.a(InetSocketAddress.createUnresolved(str, p0Var.f4370g));
                        n7.r rVar = uVarA != null ? new n7.r(uVarA) : null;
                        List list = Collections.EMPTY_LIST;
                        n7.b bVar = n7.b.f3886b;
                        if (rVar == null) {
                            a5.h hVarE = p0Var.E();
                            try {
                                n7.f1 f1Var2 = (n7.f1) hVarE.c;
                                if (f1Var2 != null) {
                                    tVar3.i(f1Var2);
                                    qVar = new com.bumptech.glide.manager.q(this, ((n7.f1) hVarE.c) == null, 1);
                                } else {
                                    List list2 = (List) hVarE.d;
                                    if (list2 != null) {
                                        list = list2;
                                    }
                                    n7.y0 y0Var2 = (n7.y0) hVarE.e;
                                    y0Var = y0Var2 != null ? y0Var2 : null;
                                    hVar = hVarE;
                                    listSingletonList = list;
                                }
                            } catch (IOException e) {
                                e = e;
                                hVar = hVarE;
                                tVar3.i(n7.f1.f3930m.h("Unable to resolve host " + str).g(e));
                                qVar = new com.bumptech.glide.manager.q(this, hVar != null && ((n7.f1) hVar.c) == null, 1);
                            } catch (Throwable th) {
                                th = th;
                                hVar = hVarE;
                                k1Var.execute(new com.bumptech.glide.manager.q(this, hVar != null && ((n7.f1) hVar.c) == null, 1));
                                throw th;
                            }
                            k1Var.execute(qVar);
                            return;
                        }
                        if (logger.isLoggable(level)) {
                            logger.finer("Using proxy address " + rVar);
                        }
                        listSingletonList = Collections.singletonList(rVar);
                        y0Var = null;
                        tVar3.j(new n7.z0(listSingletonList, bVar, y0Var));
                        qVar = new com.bumptech.glide.manager.q(this, hVar != null && ((n7.f1) hVar.c) == null, 1);
                    } catch (IOException e6) {
                        e = e6;
                    }
                    k1Var.execute(qVar);
                    return;
                } catch (Throwable th2) {
                    th = th2;
                }
                break;
            case 14:
                h1 h1Var = ((k1) this.c).f4314l;
                SocketAddress socketAddress = (SocketAddress) ((n7.r) h1Var.f4267a.get(h1Var.f4268b)).f3968a.get(h1Var.c);
                h1 h1Var2 = ((k1) this.c).f4314l;
                h1Var2.f4267a = (List) this.d;
                h1Var2.d();
                ((k1) this.c).f4315m = (List) this.d;
                n7.j jVar = ((k1) this.c).w.f3949a;
                n7.j jVar2 = n7.j.c;
                if (jVar == jVar2 || ((k1) this.c).w.f3949a == n7.j.f3943b) {
                    h1 h1Var3 = ((k1) this.c).f4314l;
                    int i9 = 0;
                    while (true) {
                        if (i9 < h1Var3.f4267a.size()) {
                            int iIndexOf = ((n7.r) h1Var3.f4267a.get(i9)).f3968a.indexOf(socketAddress);
                            if (iIndexOf == -1) {
                                i9++;
                            } else {
                                h1Var3.f4268b = i9;
                                h1Var3.c = iIndexOf;
                            }
                        } else {
                            n7.j jVar3 = ((k1) this.c).w.f3949a;
                            k1 k1Var2 = (k1) this.c;
                            if (jVar3 == jVar2) {
                                g1Var = k1Var2.f4322v;
                                ((k1) this.c).f4322v = null;
                                ((k1) this.c).f4314l.d();
                                k1.e((k1) this.c, n7.j.e);
                            } else {
                                k1Var2.f4321u.a(n7.f1.f3930m.h("InternalSubchannel closed pending transport due to address change"));
                                k1 k1Var3 = (k1) this.c;
                                k1Var3.f4321u = null;
                                k1Var3.f4314l.d();
                                k1.f((k1) this.c);
                            }
                        }
                        g1Var = null;
                    }
                } else {
                    g1Var = null;
                }
                if (g1Var != null) {
                    k1 k1Var4 = (k1) this.c;
                    if (k1Var4.f4319q != null) {
                        k1Var4.r.a(n7.f1.f3930m.h("InternalSubchannel closed transport early due to address change"));
                        ((k1) this.c).f4319q.j();
                        k1 k1Var5 = (k1) this.c;
                        k1Var5.f4319q = null;
                        k1Var5.r = null;
                    }
                    k1 k1Var6 = (k1) this.c;
                    k1Var6.r = g1Var;
                    k1Var6.f4319q = k1Var6.f4313k.c(new com.bumptech.glide.m(12, this), 5L, TimeUnit.SECONDS, k1Var6.f4308f);
                    return;
                }
                return;
            case 15:
                n7.j jVar4 = ((k1) this.c).w.f3949a;
                n7.j jVar5 = n7.j.f3944f;
                if (jVar4 == jVar5) {
                    return;
                }
                k1 k1Var7 = (k1) this.c;
                k1Var7.f4323x = (n7.f1) this.d;
                g1 g1Var2 = k1Var7.f4322v;
                k1 k1Var8 = (k1) this.c;
                g1 g1Var3 = k1Var8.f4321u;
                k1Var8.f4322v = null;
                k1 k1Var9 = (k1) this.c;
                k1Var9.f4321u = null;
                k1.e(k1Var9, jVar5);
                ((k1) this.c).f4314l.d();
                if (((k1) this.c).f4320s.isEmpty()) {
                    k1 k1Var10 = (k1) this.c;
                    k1Var10.f4313k.execute(new f1(k1Var10, 2));
                }
                k1 k1Var11 = (k1) this.c;
                k1Var11.f4313k.d();
                l.d dVar = k1Var11.f4318p;
                if (dVar != null) {
                    dVar.j();
                    k1Var11.f4318p = null;
                    k1Var11.f4316n = null;
                }
                l.d dVar2 = ((k1) this.c).f4319q;
                if (dVar2 != null) {
                    dVar2.j();
                    ((k1) this.c).r.a((n7.f1) this.d);
                    k1 k1Var12 = (k1) this.c;
                    k1Var12.f4319q = null;
                    k1Var12.r = null;
                }
                if (g1Var2 != null) {
                    g1Var2.a((n7.f1) this.d);
                }
                if (g1Var3 != null) {
                    g1Var3.a((n7.f1) this.d);
                    return;
                }
                return;
            case 16:
                if (((k1) ((com.bumptech.glide.manager.t) this.c).e).w.f3949a == n7.j.f3944f) {
                    return;
                }
                g1 g1Var4 = ((k1) ((com.bumptech.glide.manager.t) this.c).e).f4322v;
                com.bumptech.glide.manager.t tVar4 = (com.bumptech.glide.manager.t) this.c;
                g1 g1Var5 = (g1) tVar4.d;
                k1 k1Var13 = (k1) tVar4.e;
                if (g1Var4 == g1Var5) {
                    k1Var13.f4322v = null;
                    ((k1) ((com.bumptech.glide.manager.t) this.c).e).f4314l.d();
                    k1.e((k1) ((com.bumptech.glide.manager.t) this.c).e, n7.j.e);
                    return;
                }
                if (k1Var13.f4321u == g1Var5) {
                    o4.b.l("Expected state is CONNECTING, actual state is %s", k1Var13.w.f3949a == n7.j.f3943b, ((k1) ((com.bumptech.glide.manager.t) this.c).e).w.f3949a);
                    h1 h1Var4 = ((k1) ((com.bumptech.glide.manager.t) this.c).e).f4314l;
                    n7.r rVar2 = (n7.r) h1Var4.f4267a.get(h1Var4.f4268b);
                    int i10 = h1Var4.c + 1;
                    h1Var4.c = i10;
                    if (i10 >= rVar2.f3968a.size()) {
                        h1Var4.f4268b++;
                        h1Var4.c = 0;
                    }
                    h1 h1Var5 = ((k1) ((com.bumptech.glide.manager.t) this.c).e).f4314l;
                    int i11 = h1Var5.f4268b;
                    int size = h1Var5.f4267a.size();
                    k1 k1Var14 = (k1) ((com.bumptech.glide.manager.t) this.c).e;
                    if (i11 < size) {
                        k1.f(k1Var14);
                        return;
                    }
                    k1Var14.f4321u = null;
                    k1Var14.f4314l.d();
                    k1 k1Var15 = (k1) ((com.bumptech.glide.manager.t) this.c).e;
                    n7.f1 f1Var3 = (n7.f1) this.d;
                    k1Var15.f4313k.d();
                    o4.b.d("The error status must not be OK", !f1Var3.f());
                    k1Var15.g(new n7.k(n7.j.d, f1Var3));
                    if (k1Var15.f4316n == null) {
                        k1Var15.c.getClass();
                        k1Var15.f4316n = u2.s();
                    }
                    long jA = k1Var15.f4316n.a();
                    i4.f fVar = k1Var15.f4317o;
                    TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                    long jA2 = jA - fVar.a();
                    k1Var15.f4311i.n(2, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns", k1.h(f1Var3), Long.valueOf(jA2));
                    o4.b.m(k1Var15.f4318p == null, "previous reconnectTask is not done");
                    k1Var15.f4318p = k1Var15.f4313k.c(new f1(k1Var15, 0), jA2, timeUnit, k1Var15.f4308f);
                    return;
                }
                return;
            case 17:
                z1 z1Var = (z1) this.c;
                n7.f1 f1Var4 = (n7.f1) this.d;
                Logger logger2 = f2.f4211c0;
                Level level2 = Level.WARNING;
                f2 f2Var = z1Var.f4524f;
                logger2.log(level2, "[{0}] Failed to resolve name. status={1}", new Object[]{f2Var.f4218a, f1Var4});
                c2 c2Var = f2Var.P;
                if (c2Var.f4174a.get() == f2.f4216h0) {
                    c2Var.h(null);
                }
                if (f2Var.f4221b0 != 3) {
                    f2Var.N.n(3, "Failed to resolve name: {0}", f1Var4);
                    f2Var.f4221b0 = 3;
                }
                y1 y1Var = z1Var.d;
                if (y1Var != f2Var.f4237x) {
                    return;
                }
                ((n7.j0) y1Var.f4519b.d).c(f1Var4);
                return;
            case 18:
                n7.a aVar = n7.y.f3987a;
                z1 z1Var2 = (z1) this.c;
                f2 f2Var2 = z1Var2.f4524f;
                if (f2Var2.f4236v != z1Var2.e) {
                    return;
                }
                n7.z0 z0Var = (n7.z0) this.d;
                List list3 = z0Var.f3990a;
                f2Var2.N.n(1, "Resolved address: {0}, config={1}", list3, z0Var.f3991b);
                f2 f2Var3 = ((z1) this.c).f4524f;
                if (f2Var3.f4221b0 != 2) {
                    f2Var3.N.n(2, "Address resolved: {0}", list3);
                    ((z1) this.c).f4524f.f4221b0 = 2;
                }
                n7.z0 z0Var2 = (n7.z0) this.d;
                n7.y0 y0Var3 = z0Var2.c;
                f4 f4Var = (f4) z0Var2.f3991b.f3887a.get(h4.e);
                n7.y yVar = (n7.y) ((n7.z0) this.d).f3991b.f3887a.get(aVar);
                l2 l2Var = (y0Var3 == null || (obj = y0Var3.f3989b) == null) ? null : (l2) obj;
                n7.f1 f1Var5 = y0Var3 != null ? y0Var3.f3988a : null;
                f2 f2Var4 = ((z1) this.c).f4524f;
                if (f2Var4.S) {
                    if (l2Var != null) {
                        c2 c2Var2 = f2Var4.P;
                        if (yVar != null) {
                            c2Var2.h(yVar);
                            if (l2Var.b() != null) {
                                ((z1) this.c).f4524f.N.m(1, "Method configs in service config will be discarded due to presence ofconfig-selector");
                            }
                        } else {
                            c2Var2.h(l2Var.b());
                        }
                    } else if (f1Var5 == null) {
                        l2Var = f2.f4215g0;
                        f2Var4.P.h(null);
                    } else {
                        if (!f2Var4.R) {
                            f2Var4.N.m(2, "Fallback to error due to invalid first service config without default config");
                            ((z1) this.c).i(y0Var3.f3988a);
                            if (f4Var != null) {
                                boolean zF = y0Var3.f3988a.f();
                                h4 h4Var = f4Var.f4241a;
                                j jVar6 = h4Var.c;
                                if (!zF) {
                                    jVar6.a(new com.bumptech.glide.m(22, h4Var));
                                    return;
                                }
                                n7.k1 k1Var16 = jVar6.f4285b;
                                k1Var16.d();
                                k1Var16.execute(new f5.j(9, jVar6));
                                return;
                            }
                            return;
                        }
                        l2Var = f2Var4.Q;
                    }
                    if (!l2Var.equals(((z1) this.c).f4524f.Q)) {
                        ((z1) this.c).f4524f.N.n(2, "Service config changed{0}", l2Var == f2.f4215g0 ? " to empty" : "");
                        f2 f2Var5 = ((z1) this.c).f4524f;
                        f2Var5.Q = l2Var;
                        f2Var5.Z.c = l2Var.d;
                    }
                    try {
                        ((z1) this.c).f4524f.R = true;
                    } catch (RuntimeException e9) {
                        f2.f4211c0.log(Level.WARNING, "[" + ((z1) this.c).f4524f.f4218a + "] Unexpected exception from parsing service config", (Throwable) e9);
                    }
                    break;
                } else {
                    if (l2Var != null) {
                        f2Var4.N.m(2, "Service config from name resolver discarded by channel settings");
                    }
                    f2 f2Var6 = ((z1) this.c).f4524f;
                    l2Var = f2.f4215g0;
                    if (yVar != null) {
                        f2Var6.N.m(2, "Config selector from name resolver discarded by channel settings");
                    }
                    ((z1) this.c).f4524f.P.h(l2Var.b());
                }
                n7.b bVar2 = ((n7.z0) this.d).f3991b;
                z1 z1Var3 = (z1) this.c;
                if (z1Var3.d == z1Var3.f4524f.f4237x) {
                    bVar2.getClass();
                    l.d dVar3 = new l.d(3, bVar2);
                    if (((n7.b) dVar3.c).f3887a.containsKey(aVar)) {
                        IdentityHashMap identityHashMap = new IdentityHashMap(((n7.b) dVar3.c).f3887a);
                        identityHashMap.remove(aVar);
                        dVar3.c = new n7.b(identityHashMap);
                    }
                    IdentityHashMap identityHashMap2 = (IdentityHashMap) dVar3.d;
                    if (identityHashMap2 != null) {
                        identityHashMap2.remove(aVar);
                    }
                    Map map = l2Var.f4338f;
                    if (map != null) {
                        dVar3.M(n7.j0.f3946b, map);
                        dVar3.g();
                    }
                    n7.b bVarG = dVar3.g();
                    b1.m mVar = ((z1) this.c).d.f4519b;
                    n7.b bVar3 = n7.b.f3886b;
                    n7.g0 g0Var = new n7.g0(list3, bVarG, l2Var.e);
                    y1 y1Var2 = (y1) mVar.c;
                    o4 o4Var = (o4) g0Var.c;
                    if (o4Var == null) {
                        try {
                            w4 w4Var = (w4) mVar.f270f;
                            String str2 = (String) w4Var.d;
                            n7.k0 k0VarB = ((n7.l0) w4Var.c).b(str2);
                            if (k0VarB == null) {
                                throw new i("Trying to load '" + str2 + "' because using default policy, but it's unavailable");
                            }
                            o4Var = new o4(k0VarB, null);
                        } catch (i e10) {
                            y1Var2.D(n7.j.d, new x2(n7.f1.f3929l.h(e10.getMessage())));
                            ((n7.j0) mVar.d).f();
                            mVar.e = null;
                            mVar.d = new h();
                            f1VarA = n7.f1.e;
                        }
                    }
                    Object obj2 = o4Var.f4362b;
                    n7.k0 k0Var = o4Var.f4361a;
                    if (((n7.k0) mVar.e) == null || !k0Var.a().equals(((n7.k0) mVar.e).a())) {
                        y1Var2.D(n7.j.f3943b, new g(0));
                        ((n7.j0) mVar.d).f();
                        mVar.e = k0Var;
                        n7.j0 j0Var = (n7.j0) mVar.d;
                        mVar.d = k0Var.b(y1Var2);
                        y1Var2.c.N.n(2, "Load balancer changed from {0} to {1}", j0Var.getClass().getSimpleName(), ((n7.j0) mVar.d).getClass().getSimpleName());
                    }
                    if (obj2 != null) {
                        y1Var2.c.N.n(1, "Load-balancing config: {0}", obj2);
                    }
                    f1VarA = ((n7.j0) mVar.d).a(new n7.g0(g0Var.f3935a, g0Var.f3936b, obj2));
                    if (f4Var != null) {
                        boolean zF2 = f1VarA.f();
                        h4 h4Var2 = f4Var.f4241a;
                        j jVar7 = h4Var2.c;
                        if (!zF2) {
                            jVar7.a(new com.bumptech.glide.m(22, h4Var2));
                            return;
                        }
                        n7.k1 k1Var17 = jVar7.f4285b;
                        k1Var17.d();
                        k1Var17.execute(new f5.j(9, jVar7));
                        return;
                    }
                    return;
                }
                return;
            case 19:
                b2 b2Var = (b2) this.c;
                c2 c2Var3 = (c2) this.d;
                f2 f2Var7 = c2Var3.d;
                if (c2Var3.f4174a.get() != f2.f4216h0) {
                    b2Var.u();
                    return;
                }
                if (f2Var7.B == null) {
                    f2Var7.B = new LinkedHashSet();
                    f2Var7.Y.d(f2Var7.C, true);
                }
                f2Var7.B.add(b2Var);
                return;
            case 20:
                ((r) this.d).run();
                b2 b2Var2 = (b2) this.c;
                b2Var2.f4169q.d.f4229m.execute(new f0(b2Var2, 2));
                return;
            case 21:
                synchronized (((v1) ((e0) this.c).c).f4469j) {
                    try {
                        e0 e0Var = (e0) this.c;
                        if (((com.bumptech.glide.manager.t) e0Var.d).c) {
                            z8 = true;
                        } else {
                            v1 v1Var = (v1) e0Var.c;
                            v1Var.f4475p = v1Var.f4475p.a((c4) this.d);
                            v1 v1Var2 = (v1) ((e0) this.c).c;
                            if (v1Var2.r(v1Var2.f4475p)) {
                                d4 d4Var = ((v1) ((e0) this.c).c).f4473n;
                                if (d4Var != null) {
                                    if (d4Var.d.get() <= d4Var.f4190b) {
                                        z9 = false;
                                    }
                                    if (!z9) {
                                        v1 v1Var3 = (v1) ((e0) this.c).c;
                                        z3Var = v1Var3.f4475p;
                                        if (z3Var.f4531h) {
                                            z3Var = new z3(z3Var.f4528b, z3Var.c, z3Var.d, z3Var.f4529f, z3Var.f4530g, z3Var.f4527a, true, z3Var.e);
                                        }
                                        v1Var3.f4475p = z3Var;
                                        ((v1) ((e0) this.c).c).f4480x = null;
                                    }
                                }
                                v1 v1Var4 = (v1) ((e0) this.c).c;
                                tVar = new com.bumptech.glide.manager.t(v1Var4.f4469j);
                                v1Var4.f4480x = tVar;
                            } else {
                                v1 v1Var5 = (v1) ((e0) this.c).c;
                                z3Var = v1Var5.f4475p;
                                if (z3Var.f4531h) {
                                    z3Var = new z3(z3Var.f4528b, z3Var.c, z3Var.d, z3Var.f4529f, z3Var.f4530g, z3Var.f4527a, true, z3Var.e);
                                }
                                v1Var5.f4475p = z3Var;
                                ((v1) ((e0) this.c).c).f4480x = null;
                            }
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                    break;
                }
                if (z8) {
                    c4 c4Var = (c4) this.d;
                    c4Var.f4177a.d(new w4(5, (v1) ((e0) this.c).c, c4Var));
                    ((c4) this.d).f4177a.h(n7.f1.f3923f.h("Unneeded hedging"));
                    return;
                } else {
                    if (tVar != null) {
                        v1 v1Var6 = (v1) ((e0) this.c).c;
                        tVar.i(v1Var6.e.schedule(new e0(22, v1Var6, tVar), v1Var6.f4467h.f4119b, TimeUnit.NANOSECONDS));
                    }
                    ((v1) ((e0) this.c).c).p((c4) this.d);
                    return;
                }
            case 22:
                v1 v1Var7 = (v1) this.c;
                c4 c4VarK = v1Var7.k(v1Var7.f4475p.e, false);
                if (c4VarK == null) {
                    return;
                }
                ((v1) this.c).c.execute(new e0(21, this, c4VarK));
                return;
            case 23:
                a();
                return;
            default:
                ((v1) ((w4) this.c).d).f4479v.k((o2) this.d);
                return;
        }
    }

    public /* synthetic */ e0(int i9, Object obj, Object obj2) {
        this.f4193b = i9;
        this.c = obj;
        this.d = obj2;
    }

    public e0(c2 c2Var, b2 b2Var) {
        this.f4193b = 19;
        this.d = c2Var;
        this.c = b2Var;
    }
}
