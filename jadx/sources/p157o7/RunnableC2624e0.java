package p157o7;

import com.bumptech.glide.RunnableC1054m;
import com.bumptech.glide.manager.C1074t;
import com.bumptech.glide.manager.RunnableC1071q;
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
import p006a5.C0023h;
import p016b1.C0872m;
import p062f5.RunnableC1556j;
import p091i4.C1748f;
import p120l.C2187d;
import p148n7.AbstractC2519j0;
import p148n7.AbstractC2522k0;
import p148n7.AbstractC2542t;
import p148n7.AbstractC2552y;
import p148n7.C2491a;
import p148n7.C2494b;
import p148n7.C2508f1;
import p148n7.C2510g0;
import p148n7.C2512h;
import p148n7.C2521k;
import p148n7.C2525l0;
import p148n7.C2532o;
import p148n7.C2536q;
import p148n7.C2538r;
import p148n7.C2544u;
import p148n7.C2547v0;
import p148n7.C2553y0;
import p148n7.C2555z0;
import p148n7.EnumC2518j;
import p148n7.ExecutorC2523k1;
import p155o4.AbstractC2587b;
import p203t7.C3265a;
import p250y5.C3652g;

/* JADX INFO: renamed from: o7.e0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2624e0 implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f7361b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f7362c;

    /* JADX INFO: renamed from: d */
    public final Object f7363d;

    public RunnableC2624e0(C2690p0 c2690p0, AbstractC2542t abstractC2542t) {
        this.f7361b = 13;
        this.f7362c = c2690p0;
        AbstractC2587b.m4042i(abstractC2542t, "savedListener");
        this.f7363d = abstractC2542t;
    }

    /* JADX INFO: renamed from: a */
    private final void m4135a() {
        ((C2727v1) ((C2736w4) this.f7362c).f7860d).f7835v.mo77l((C2547v0) this.f7363d);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00ad A[Catch: all -> 0x00aa, TryCatch #4 {all -> 0x00aa, blocks: (B:15:0x004f, B:35:0x00df, B:18:0x005e, B:20:0x007e, B:22:0x008a, B:27:0x0098, B:30:0x00ad, B:34:0x00d3, B:33:0x00bc), top: B:309:0x004f }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:33:0x00bc A[Catch: all -> 0x00aa, TryCatch #4 {all -> 0x00aa, blocks: (B:15:0x004f, B:35:0x00df, B:18:0x005e, B:20:0x007e, B:22:0x008a, B:27:0x0098, B:30:0x00ad, B:34:0x00d3, B:33:0x00bc), top: B:309:0x004f }] */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        RunnableC1071q runnableC1071q;
        C2553y0 c2553y0;
        List listSingletonList;
        C2637g1 c2637g1;
        C2508f1 c2508f1Mo3944a;
        Object obj;
        C2751z3 c2751z3;
        int i10 = 3;
        int i11 = 22;
        int i12 = 2;
        C0023h c0023h = null;
        c1074t = null;
        C1074t c1074t = null;
        c0023h = null;
        c0023h = null;
        boolean z9 = false;
        boolean z10 = true;
        switch (this.f7361b) {
            case 0:
                ((C2608b2) this.f7362c).m4125r(C2508f1.f6940h.m3934h(((StringBuilder) this.f7363d).toString()), true);
                return;
            case 1:
                AbstractC2542t abstractC2542t = ((C2608b2) this.f7362c).f7316i;
                C2508f1 c2508f1 = (C2508f1) this.f7363d;
                abstractC2542t.mo3969a(c2508f1.f6949b, c2508f1.f6950c);
                return;
            case 2:
                ((C2608b2) this.f7362c).f7316i.mo3972m((C3652g) this.f7363d);
                return;
            case 3:
                ((C2648i0) this.f7362c).f7516b.mo3908p((C2547v0) this.f7363d);
                return;
            case 4:
                ((C2648i0) this.f7362c).f7516b.mo3909q(this.f7363d);
                return;
            case 5:
                AbstractC2587b.m4046m(((C2632f2) ((C2666l0) this.f7362c).f7603h.f6648c).f7403G.get(), "Channel must have been shut down");
                return;
            case 6:
                ((C2660k0) this.f7362c).f7557d.mo4090a((C2512h) this.f7363d);
                return;
            case 7:
                ((C2660k0) this.f7362c).f7557d.mo4096g((C2536q) this.f7363d);
                return;
            case 8:
                ((C2660k0) this.f7362c).f7557d.mo4100n((C2532o) this.f7363d);
                return;
            case 9:
                ((C2660k0) this.f7362c).f7557d.mo4095f((C3265a) this.f7363d);
                return;
            case 10:
                ((C2660k0) this.f7362c).f7557d.mo4097h((C2508f1) this.f7363d);
                return;
            case 11:
                ((C2684o0) this.f7362c).f7649b.mo76k((C2686o2) this.f7363d);
                return;
            case 12:
                ((C2684o0) this.f7362c).f7649b.mo77l((C2547v0) this.f7363d);
                return;
            case 13:
                AbstractC2542t abstractC2542t2 = (AbstractC2542t) this.f7363d;
                C2690p0 c2690p0 = (C2690p0) this.f7362c;
                String str = c2690p0.f7669f;
                ExecutorC2523k1 executorC2523k1 = c2690p0.f7673j;
                Logger logger = C2690p0.f7659t;
                Level level = Level.FINER;
                if (logger.isLoggable(level)) {
                    logger.finer("Attempting DNS resolution of " + str);
                }
                try {
                    try {
                        C2544u c2544uM4165a = c2690p0.f7665b.m4165a(InetSocketAddress.createUnresolved(str, c2690p0.f7670g));
                        C2538r c2538r = c2544uM4165a != null ? new C2538r(c2544uM4165a) : null;
                        List list = Collections.EMPTY_LIST;
                        C2494b c2494b = C2494b.f6881b;
                        if (c2538r == null) {
                            C0023h c0023hM4200E = c2690p0.m4200E();
                            try {
                                C2508f1 c2508f2 = (C2508f1) c0023hM4200E.f81c;
                                if (c2508f2 != null) {
                                    abstractC2542t2.mo3980i(c2508f2);
                                    runnableC1071q = new RunnableC1071q(this, ((C2508f1) c0023hM4200E.f81c) == null, 1);
                                } else {
                                    List list2 = (List) c0023hM4200E.f82d;
                                    if (list2 != null) {
                                        list = list2;
                                    }
                                    C2553y0 c2553y1 = (C2553y0) c0023hM4200E.f83e;
                                    c2553y0 = c2553y1 != null ? c2553y1 : null;
                                    c0023h = c0023hM4200E;
                                    listSingletonList = list;
                                }
                            } catch (IOException e) {
                                e = e;
                                c0023h = c0023hM4200E;
                                abstractC2542t2.mo3980i(C2508f1.f6945m.m3934h("Unable to resolve host " + str).m3933g(e));
                                runnableC1071q = new RunnableC1071q(this, c0023h != null && ((C2508f1) c0023h.f81c) == null, 1);
                            } catch (Throwable th) {
                                th = th;
                                c0023h = c0023hM4200E;
                                executorC2523k1.execute(new RunnableC1071q(this, c0023h != null && ((C2508f1) c0023h.f81c) == null, 1));
                                throw th;
                            }
                            executorC2523k1.execute(runnableC1071q);
                            return;
                        }
                        if (logger.isLoggable(level)) {
                            logger.finer("Using proxy address " + c2538r);
                        }
                        listSingletonList = Collections.singletonList(c2538r);
                        c2553y0 = null;
                        abstractC2542t2.mo3981j(new C2555z0(listSingletonList, c2494b, c2553y0));
                        runnableC1071q = new RunnableC1071q(this, c0023h != null && ((C2508f1) c0023h.f81c) == null, 1);
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (IOException e6) {
                    e = e6;
                }
                executorC2523k1.execute(runnableC1071q);
                return;
            case 14:
                C2643h1 c2643h1 = ((C2661k1) this.f7362c).f7579l;
                SocketAddress socketAddress = (SocketAddress) ((C2538r) c2643h1.f7496a.get(c2643h1.f7497b)).f7017a.get(c2643h1.f7498c);
                C2643h1 c2643h2 = ((C2661k1) this.f7362c).f7579l;
                c2643h2.f7496a = (List) this.f7363d;
                c2643h2.m4162d();
                ((C2661k1) this.f7362c).f7580m = (List) this.f7363d;
                EnumC2518j enumC2518j = ((C2661k1) this.f7362c).f7590w.f6982a;
                EnumC2518j enumC2518j2 = EnumC2518j.f6969c;
                if (enumC2518j == enumC2518j2 || ((C2661k1) this.f7362c).f7590w.f6982a == EnumC2518j.f6968b) {
                    C2643h1 c2643h3 = ((C2661k1) this.f7362c).f7579l;
                    int i13 = 0;
                    while (true) {
                        if (i13 < c2643h3.f7496a.size()) {
                            int iIndexOf = ((C2538r) c2643h3.f7496a.get(i13)).f7017a.indexOf(socketAddress);
                            if (iIndexOf == -1) {
                                i13++;
                            } else {
                                c2643h3.f7497b = i13;
                                c2643h3.f7498c = iIndexOf;
                            }
                        } else {
                            EnumC2518j enumC2518j3 = ((C2661k1) this.f7362c).f7590w.f6982a;
                            C2661k1 c2661k1 = (C2661k1) this.f7362c;
                            if (enumC2518j3 == enumC2518j2) {
                                c2637g1 = c2661k1.f7589v;
                                ((C2661k1) this.f7362c).f7589v = null;
                                ((C2661k1) this.f7362c).f7579l.m4162d();
                                C2661k1.m4174e((C2661k1) this.f7362c, EnumC2518j.f6971e);
                            } else {
                                c2661k1.f7588u.mo4170a(C2508f1.f6945m.m3934h("InternalSubchannel closed pending transport due to address change"));
                                C2661k1 c2661k2 = (C2661k1) this.f7362c;
                                c2661k2.f7588u = null;
                                c2661k2.f7579l.m4162d();
                                C2661k1.m4175f((C2661k1) this.f7362c);
                            }
                        }
                        c2637g1 = null;
                    }
                } else {
                    c2637g1 = null;
                }
                if (c2637g1 != null) {
                    C2661k1 c2661k3 = (C2661k1) this.f7362c;
                    if (c2661k3.f7584q != null) {
                        c2661k3.f7585r.mo4170a(C2508f1.f6945m.m3934h("InternalSubchannel closed transport early due to address change"));
                        ((C2661k1) this.f7362c).f7584q.m3482j();
                        C2661k1 c2661k4 = (C2661k1) this.f7362c;
                        c2661k4.f7584q = null;
                        c2661k4.f7585r = null;
                    }
                    C2661k1 c2661k5 = (C2661k1) this.f7362c;
                    c2661k5.f7585r = c2637g1;
                    c2661k5.f7584q = c2661k5.f7578k.m3956c(new RunnableC1054m(12, this), 5L, TimeUnit.SECONDS, c2661k5.f7573f);
                    return;
                }
                return;
            case 15:
                EnumC2518j enumC2518j4 = ((C2661k1) this.f7362c).f7590w.f6982a;
                EnumC2518j enumC2518j5 = EnumC2518j.f6972f;
                if (enumC2518j4 == enumC2518j5) {
                    return;
                }
                C2661k1 c2661k6 = (C2661k1) this.f7362c;
                c2661k6.f7591x = (C2508f1) this.f7363d;
                C2637g1 c2637g2 = c2661k6.f7589v;
                C2661k1 c2661k7 = (C2661k1) this.f7362c;
                C2637g1 c2637g3 = c2661k7.f7588u;
                c2661k7.f7589v = null;
                C2661k1 c2661k8 = (C2661k1) this.f7362c;
                c2661k8.f7588u = null;
                C2661k1.m4174e(c2661k8, enumC2518j5);
                ((C2661k1) this.f7362c).f7579l.m4162d();
                if (((C2661k1) this.f7362c).f7586s.isEmpty()) {
                    C2661k1 c2661k9 = (C2661k1) this.f7362c;
                    c2661k9.f7578k.execute(new RunnableC2631f1(c2661k9, i12));
                }
                C2661k1 c2661k10 = (C2661k1) this.f7362c;
                c2661k10.f7578k.m3957d();
                C2187d c2187d = c2661k10.f7583p;
                if (c2187d != null) {
                    c2187d.m3482j();
                    c2661k10.f7583p = null;
                    c2661k10.f7581n = null;
                }
                C2187d c2187d2 = ((C2661k1) this.f7362c).f7584q;
                if (c2187d2 != null) {
                    c2187d2.m3482j();
                    ((C2661k1) this.f7362c).f7585r.mo4170a((C2508f1) this.f7363d);
                    C2661k1 c2661k11 = (C2661k1) this.f7362c;
                    c2661k11.f7584q = null;
                    c2661k11.f7585r = null;
                }
                if (c2637g2 != null) {
                    c2637g2.mo4170a((C2508f1) this.f7363d);
                }
                if (c2637g3 != null) {
                    c2637g3.mo4170a((C2508f1) this.f7363d);
                    return;
                }
                return;
            case 16:
                if (((C2661k1) ((C1074t) this.f7362c).f1185e).f7590w.f6982a == EnumC2518j.f6972f) {
                    return;
                }
                C2637g1 c2637g4 = ((C2661k1) ((C1074t) this.f7362c).f1185e).f7589v;
                C1074t c1074t2 = (C1074t) this.f7362c;
                C2637g1 c2637g5 = (C2637g1) c1074t2.f1184d;
                C2661k1 c2661k12 = (C2661k1) c1074t2.f1185e;
                if (c2637g4 == c2637g5) {
                    c2661k12.f7589v = null;
                    ((C2661k1) ((C1074t) this.f7362c).f1185e).f7579l.m4162d();
                    C2661k1.m4174e((C2661k1) ((C1074t) this.f7362c).f1185e, EnumC2518j.f6971e);
                    return;
                }
                if (c2661k12.f7588u == c2637g5) {
                    AbstractC2587b.m4045l("Expected state is CONNECTING, actual state is %s", c2661k12.f7590w.f6982a == EnumC2518j.f6968b, ((C2661k1) ((C1074t) this.f7362c).f1185e).f7590w.f6982a);
                    C2643h1 c2643h4 = ((C2661k1) ((C1074t) this.f7362c).f1185e).f7579l;
                    C2538r c2538r2 = (C2538r) c2643h4.f7496a.get(c2643h4.f7497b);
                    int i14 = c2643h4.f7498c + 1;
                    c2643h4.f7498c = i14;
                    if (i14 >= c2538r2.f7017a.size()) {
                        c2643h4.f7497b++;
                        c2643h4.f7498c = 0;
                    }
                    C2643h1 c2643h5 = ((C2661k1) ((C1074t) this.f7362c).f1185e).f7579l;
                    int i15 = c2643h5.f7497b;
                    int size = c2643h5.f7496a.size();
                    C2661k1 c2661k13 = (C2661k1) ((C1074t) this.f7362c).f1185e;
                    if (i15 < size) {
                        C2661k1.m4175f(c2661k13);
                        return;
                    }
                    c2661k13.f7588u = null;
                    c2661k13.f7579l.m4162d();
                    C2661k1 c2661k14 = (C2661k1) ((C1074t) this.f7362c).f1185e;
                    C2508f1 c2508f3 = (C2508f1) this.f7363d;
                    c2661k14.f7578k.m3957d();
                    AbstractC2587b.m4037d("The error status must not be OK", !c2508f3.m3932f());
                    c2661k14.m4177g(new C2521k(EnumC2518j.f6970d, c2508f3));
                    if (c2661k14.f7581n == null) {
                        c2661k14.f7570c.getClass();
                        c2661k14.f7581n = C2722u2.m4244s();
                    }
                    long jM4230a = c2661k14.f7581n.m4230a();
                    C1748f c1748f = c2661k14.f7582o;
                    TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                    long jM2872a = jM4230a - c1748f.m2872a();
                    c2661k14.f7576i.mo3906n(2, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns", C2661k1.m4176h(c2508f3), Long.valueOf(jM2872a));
                    AbstractC2587b.m4046m(c2661k14.f7583p == null, "previous reconnectTask is not done");
                    c2661k14.f7583p = c2661k14.f7578k.m3956c(new RunnableC2631f1(c2661k14, 0), jM2872a, timeUnit, c2661k14.f7573f);
                    return;
                }
                return;
            case 17:
                C2749z1 c2749z1 = (C2749z1) this.f7362c;
                C2508f1 c2508f4 = (C2508f1) this.f7363d;
                Logger logger2 = C2632f2.f7390c0;
                Level level2 = Level.WARNING;
                C2632f2 c2632f2 = c2749z1.f7905f;
                logger2.log(level2, "[{0}] Failed to resolve name. status={1}", new Object[]{c2632f2.f7423a, c2508f4});
                C2614c2 c2614c2 = c2632f2.f7412P;
                if (c2614c2.f7331a.get() == C2632f2.f7395h0) {
                    c2614c2.m4131h(null);
                }
                if (c2632f2.f7426b0 != 3) {
                    c2632f2.f7410N.mo3906n(3, "Failed to resolve name: {0}", c2508f4);
                    c2632f2.f7426b0 = 3;
                }
                C2744y1 c2744y1 = c2749z1.f7903d;
                if (c2744y1 != c2632f2.f7448x) {
                    return;
                }
                ((AbstractC2519j0) c2744y1.f7893b.f602d).mo3946c(c2508f4);
                return;
            case 18:
                C2491a c2491a = AbstractC2552y.f7060a;
                C2749z1 c2749z2 = (C2749z1) this.f7362c;
                C2632f2 c2632f3 = c2749z2.f7905f;
                if (c2632f3.f7446v != c2749z2.f7904e) {
                    return;
                }
                C2555z0 c2555z0 = (C2555z0) this.f7363d;
                List list3 = c2555z0.f7063a;
                c2632f3.f7410N.mo3906n(1, "Resolved address: {0}, config={1}", list3, c2555z0.f7064b);
                C2632f2 c2632f4 = ((C2749z1) this.f7362c).f7905f;
                if (c2632f4.f7426b0 != 2) {
                    c2632f4.f7410N.mo3906n(2, "Address resolved: {0}", list3);
                    ((C2749z1) this.f7362c).f7905f.f7426b0 = 2;
                }
                C2555z0 c2555z1 = (C2555z0) this.f7363d;
                C2553y0 c2553y2 = c2555z1.f7065c;
                C2634f4 c2634f4 = (C2634f4) c2555z1.f7064b.f6882a.get(C2646h4.f7512e);
                AbstractC2552y abstractC2552y = (AbstractC2552y) ((C2555z0) this.f7363d).f7064b.f6882a.get(c2491a);
                C2668l2 c2668l2 = (c2553y2 == null || (obj = c2553y2.f7062b) == null) ? null : (C2668l2) obj;
                C2508f1 c2508f5 = c2553y2 != null ? c2553y2.f7061a : null;
                C2632f2 c2632f5 = ((C2749z1) this.f7362c).f7905f;
                int i16 = 9;
                if (c2632f5.f7415S) {
                    if (c2668l2 != null) {
                        C2614c2 c2614c3 = c2632f5.f7412P;
                        if (abstractC2552y != null) {
                            c2614c3.m4131h(abstractC2552y);
                            if (c2668l2.m4186b() != null) {
                                ((C2749z1) this.f7362c).f7905f.f7410N.mo3905m(1, "Method configs in service config will be discarded due to presence ofconfig-selector");
                            }
                        } else {
                            c2614c3.m4131h(c2668l2.m4186b());
                        }
                    } else if (c2508f5 == null) {
                        c2668l2 = C2632f2.f7394g0;
                        c2632f5.f7412P.m4131h(null);
                    } else {
                        if (!c2632f5.f7414R) {
                            c2632f5.f7410N.mo3905m(2, "Fallback to error due to invalid first service config without default config");
                            ((C2749z1) this.f7362c).mo3980i(c2553y2.f7061a);
                            if (c2634f4 != null) {
                                boolean zM3932f = c2553y2.f7061a.m3932f();
                                C2646h4 c2646h4 = c2634f4.f7452a;
                                C2653j c2653j = c2646h4.f7514c;
                                if (!zM3932f) {
                                    c2653j.m4168a(new RunnableC1054m(i11, c2646h4));
                                    return;
                                }
                                ExecutorC2523k1 executorC2523k2 = c2653j.f7532b;
                                executorC2523k2.m3957d();
                                executorC2523k2.execute(new RunnableC1556j(i16, c2653j));
                                return;
                            }
                            return;
                        }
                        c2668l2 = c2632f5.f7413Q;
                    }
                    if (!c2668l2.equals(((C2749z1) this.f7362c).f7905f.f7413Q)) {
                        ((C2749z1) this.f7362c).f7905f.f7410N.mo3906n(2, "Service config changed{0}", c2668l2 == C2632f2.f7394g0 ? " to empty" : "");
                        C2632f2 c2632f6 = ((C2749z1) this.f7362c).f7905f;
                        c2632f6.f7413Q = c2668l2;
                        c2632f6.f7422Z.f797c = c2668l2.f7611d;
                    }
                    try {
                        ((C2749z1) this.f7362c).f7905f.f7414R = true;
                    } catch (RuntimeException e10) {
                        C2632f2.f7390c0.log(Level.WARNING, "[" + ((C2749z1) this.f7362c).f7905f.f7423a + "] Unexpected exception from parsing service config", (Throwable) e10);
                    }
                    break;
                } else {
                    if (c2668l2 != null) {
                        c2632f5.f7410N.mo3905m(2, "Service config from name resolver discarded by channel settings");
                    }
                    C2632f2 c2632f7 = ((C2749z1) this.f7362c).f7905f;
                    c2668l2 = C2632f2.f7394g0;
                    if (abstractC2552y != null) {
                        c2632f7.f7410N.mo3905m(2, "Config selector from name resolver discarded by channel settings");
                    }
                    ((C2749z1) this.f7362c).f7905f.f7412P.m4131h(c2668l2.m4186b());
                }
                C2494b c2494b2 = ((C2555z0) this.f7363d).f7064b;
                C2749z1 c2749z3 = (C2749z1) this.f7362c;
                if (c2749z3.f7903d == c2749z3.f7905f.f7448x) {
                    c2494b2.getClass();
                    C2187d c2187d3 = new C2187d(i10, c2494b2);
                    if (((C2494b) c2187d3.f5705c).f6882a.containsKey(c2491a)) {
                        IdentityHashMap identityHashMap = new IdentityHashMap(((C2494b) c2187d3.f5705c).f6882a);
                        identityHashMap.remove(c2491a);
                        c2187d3.f5705c = new C2494b(identityHashMap);
                    }
                    IdentityHashMap identityHashMap2 = (IdentityHashMap) c2187d3.f5706d;
                    if (identityHashMap2 != null) {
                        identityHashMap2.remove(c2491a);
                    }
                    Map map = c2668l2.f7613f;
                    if (map != null) {
                        c2187d3.m3472M(AbstractC2519j0.f6974b, map);
                        c2187d3.m3480g();
                    }
                    C2494b c2494bM3480g = c2187d3.m3480g();
                    C0872m c0872m = ((C2749z1) this.f7362c).f7903d.f7893b;
                    C2494b c2494b3 = C2494b.f6881b;
                    C2510g0 c2510g0 = new C2510g0(list3, c2494bM3480g, c2668l2.f7612e);
                    C2744y1 c2744y2 = (C2744y1) c0872m.f601c;
                    C2688o4 c2688o4 = (C2688o4) c2510g0.f6953c;
                    if (c2688o4 == null) {
                        try {
                            C2736w4 c2736w4 = (C2736w4) c0872m.f604f;
                            String str2 = (String) c2736w4.f7860d;
                            AbstractC2522k0 abstractC2522k0M3959b = ((C2525l0) c2736w4.f7859c).m3959b(str2);
                            if (abstractC2522k0M3959b == null) {
                                throw new C2647i("Trying to load '" + str2 + "' because using default policy, but it's unavailable");
                            }
                            c2688o4 = new C2688o4(abstractC2522k0M3959b, null);
                        } catch (C2647i e11) {
                            c2744y2.mo3892D(EnumC2518j.f6970d, new C2740x2(C2508f1.f6944l.m3934h(e11.getMessage())));
                            ((AbstractC2519j0) c0872m.f602d).mo3949f();
                            c0872m.f603e = null;
                            c0872m.f602d = new C2641h();
                            c2508f1Mo3944a = C2508f1.f6937e;
                        }
                    }
                    Object obj2 = c2688o4.f7655b;
                    AbstractC2522k0 abstractC2522k0 = c2688o4.f7654a;
                    if (((AbstractC2522k0) c0872m.f603e) == null || !abstractC2522k0.mo3951a().equals(((AbstractC2522k0) c0872m.f603e).mo3951a())) {
                        c2744y2.mo3892D(EnumC2518j.f6968b, new C2635g(0));
                        ((AbstractC2519j0) c0872m.f602d).mo3949f();
                        c0872m.f603e = abstractC2522k0;
                        AbstractC2519j0 abstractC2519j0 = (AbstractC2519j0) c0872m.f602d;
                        c0872m.f602d = abstractC2522k0.mo3952b(c2744y2);
                        c2744y2.f7894c.f7410N.mo3906n(2, "Load balancer changed from {0} to {1}", abstractC2519j0.getClass().getSimpleName(), ((AbstractC2519j0) c0872m.f602d).getClass().getSimpleName());
                    }
                    if (obj2 != null) {
                        c2744y2.f7894c.f7410N.mo3906n(1, "Load-balancing config: {0}", obj2);
                    }
                    c2508f1Mo3944a = ((AbstractC2519j0) c0872m.f602d).mo3944a(new C2510g0(c2510g0.f6951a, c2510g0.f6952b, obj2));
                    if (c2634f4 != null) {
                        boolean zM3932f2 = c2508f1Mo3944a.m3932f();
                        C2646h4 c2646h5 = c2634f4.f7452a;
                        C2653j c2653j2 = c2646h5.f7514c;
                        if (!zM3932f2) {
                            c2653j2.m4168a(new RunnableC1054m(i11, c2646h5));
                            return;
                        }
                        ExecutorC2523k1 executorC2523k3 = c2653j2.f7532b;
                        executorC2523k3.m3957d();
                        executorC2523k3.execute(new RunnableC1556j(i16, c2653j2));
                        return;
                    }
                    return;
                }
                return;
            case 19:
                C2608b2 c2608b2 = (C2608b2) this.f7362c;
                C2614c2 c2614c4 = (C2614c2) this.f7363d;
                C2632f2 c2632f8 = c2614c4.f7334d;
                if (c2614c4.f7331a.get() != C2632f2.f7395h0) {
                    c2608b2.m4128u();
                    return;
                }
                if (c2632f8.f7398B == null) {
                    c2632f8.f7398B = new LinkedHashSet();
                    c2632f8.f7421Y.m3098d(c2632f8.f7399C, true);
                }
                c2632f8.f7398B.add(c2608b2);
                return;
            case 20:
                ((C2701r) this.f7363d).run();
                C2608b2 c2608b3 = (C2608b2) this.f7362c;
                c2608b3.f7324q.f7334d.f7437m.execute(new RunnableC2630f0(c2608b3, i12));
                return;
            case 21:
                synchronized (((C2727v1) ((RunnableC2624e0) this.f7362c).f7362c).f7823j) {
                    try {
                        RunnableC2624e0 runnableC2624e0 = (RunnableC2624e0) this.f7362c;
                        if (((C1074t) runnableC2624e0.f7363d).f1183c) {
                            z9 = true;
                        } else {
                            C2727v1 c2727v1 = (C2727v1) runnableC2624e0.f7362c;
                            c2727v1.f7829p = c2727v1.f7829p.m4267a((C2616c4) this.f7363d);
                            C2727v1 c2727v2 = (C2727v1) ((RunnableC2624e0) this.f7362c).f7362c;
                            if (c2727v2.m4253r(c2727v2.f7829p)) {
                                C2622d4 c2622d4 = ((C2727v1) ((RunnableC2624e0) this.f7362c).f7362c).f7827n;
                                if (c2622d4 != null) {
                                    if (c2622d4.f7357d.get() <= c2622d4.f7355b) {
                                        z10 = false;
                                    }
                                    if (!z10) {
                                        C2727v1 c2727v3 = (C2727v1) ((RunnableC2624e0) this.f7362c).f7362c;
                                        c2751z3 = c2727v3.f7829p;
                                        if (c2751z3.f7917h) {
                                            c2751z3 = new C2751z3(c2751z3.f7911b, c2751z3.f7912c, c2751z3.f7913d, c2751z3.f7915f, c2751z3.f7916g, c2751z3.f7910a, true, c2751z3.f7914e);
                                        }
                                        c2727v3.f7829p = c2751z3;
                                        ((C2727v1) ((RunnableC2624e0) this.f7362c).f7362c).f7837x = null;
                                    }
                                }
                                C2727v1 c2727v4 = (C2727v1) ((RunnableC2624e0) this.f7362c).f7362c;
                                c1074t = new C1074t(c2727v4.f7823j);
                                c2727v4.f7837x = c1074t;
                            } else {
                                C2727v1 c2727v5 = (C2727v1) ((RunnableC2624e0) this.f7362c).f7362c;
                                c2751z3 = c2727v5.f7829p;
                                if (c2751z3.f7917h) {
                                    c2751z3 = new C2751z3(c2751z3.f7911b, c2751z3.f7912c, c2751z3.f7913d, c2751z3.f7915f, c2751z3.f7916g, c2751z3.f7910a, true, c2751z3.f7914e);
                                }
                                c2727v5.f7829p = c2751z3;
                                ((C2727v1) ((RunnableC2624e0) this.f7362c).f7362c).f7837x = null;
                            }
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                    break;
                }
                if (z9) {
                    C2616c4 c2616c4 = (C2616c4) this.f7363d;
                    c2616c4.f7336a.mo4093d(new C2736w4(5, (C2727v1) ((RunnableC2624e0) this.f7362c).f7362c, c2616c4));
                    ((C2616c4) this.f7363d).f7336a.mo4097h(C2508f1.f6938f.m3934h("Unneeded hedging"));
                    return;
                } else {
                    if (c1074t != null) {
                        C2727v1 c2727v6 = (C2727v1) ((RunnableC2624e0) this.f7362c).f7362c;
                        c1074t.m1363i(c2727v6.f7818e.schedule(new RunnableC2624e0(i11, c2727v6, c1074t), c2727v6.f7821h.f7257b, TimeUnit.NANOSECONDS));
                    }
                    ((C2727v1) ((RunnableC2624e0) this.f7362c).f7362c).m4251p((C2616c4) this.f7363d);
                    return;
                }
            case 22:
                C2727v1 c2727v7 = (C2727v1) this.f7362c;
                C2616c4 c2616c4M4249k = c2727v7.m4249k(c2727v7.f7829p.f7914e, false);
                if (c2616c4M4249k == null) {
                    return;
                }
                ((C2727v1) this.f7362c).f7816c.execute(new RunnableC2624e0(21, this, c2616c4M4249k));
                return;
            case 23:
                m4135a();
                return;
            default:
                ((C2727v1) ((C2736w4) this.f7362c).f7860d).f7835v.mo76k((C2686o2) this.f7363d);
                return;
        }
    }

    public /* synthetic */ RunnableC2624e0(int i10, Object obj, Object obj2) {
        this.f7361b = i10;
        this.f7362c = obj;
        this.f7363d = obj2;
    }

    public RunnableC2624e0(C2614c2 c2614c2, C2608b2 c2608b2) {
        this.f7361b = 19;
        this.f7363d = c2614c2;
        this.f7362c = c2608b2;
    }
}
