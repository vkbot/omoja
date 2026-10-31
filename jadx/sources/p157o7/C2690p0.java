package p157o7;

import java.io.IOException;
import java.io.StringReader;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import p006a5.C0023h;
import p009a8.C0029a;
import p050e3.C1461d;
import p091i4.AbstractC1749g;
import p091i4.C1748f;
import p136m5.C2398a;
import p142n0.C2467b;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2542t;
import p148n7.C2508f1;
import p148n7.C2525l0;
import p148n7.C2538r;
import p148n7.C2553y0;
import p148n7.ExecutorC2523k1;
import p155o4.AbstractC2587b;
import p230w5.C3526a;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: o7.p0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2690p0 extends AbstractC2503e {

    /* JADX INFO: renamed from: t */
    public static final Logger f7659t;

    /* JADX INFO: renamed from: u */
    public static final Set f7660u;

    /* JADX INFO: renamed from: v */
    public static final boolean f7661v;

    /* JADX INFO: renamed from: w */
    public static final boolean f7662w;

    /* JADX INFO: renamed from: x */
    public static final boolean f7663x;

    /* JADX INFO: renamed from: y */
    public static String f7664y;

    /* JADX INFO: renamed from: b */
    public final C2645h3 f7665b;

    /* JADX INFO: renamed from: e */
    public final String f7668e;

    /* JADX INFO: renamed from: f */
    public final String f7669f;

    /* JADX INFO: renamed from: g */
    public final int f7670g;

    /* JADX INFO: renamed from: h */
    public final InterfaceC2706r4 f7671h;

    /* JADX INFO: renamed from: i */
    public final long f7672i;

    /* JADX INFO: renamed from: j */
    public final ExecutorC2523k1 f7673j;

    /* JADX INFO: renamed from: k */
    public final C1748f f7674k;

    /* JADX INFO: renamed from: l */
    public boolean f7675l;

    /* JADX INFO: renamed from: m */
    public boolean f7676m;

    /* JADX INFO: renamed from: n */
    public Executor f7677n;

    /* JADX INFO: renamed from: o */
    public final boolean f7678o;

    /* JADX INFO: renamed from: p */
    public final C2652i4 f7679p;

    /* JADX INFO: renamed from: q */
    public boolean f7680q;

    /* JADX INFO: renamed from: r */
    public AbstractC2542t f7681r;

    /* JADX INFO: renamed from: c */
    public final Random f7666c = new Random();

    /* JADX INFO: renamed from: s */
    public volatile int f7682s = 1;

    /* JADX INFO: renamed from: d */
    public final AtomicReference f7667d = new AtomicReference();

    static {
        Logger logger = Logger.getLogger(C2690p0.class.getName());
        f7659t = logger;
        f7660u = Collections.unmodifiableSet(new HashSet(Arrays.asList("clientLanguage", "percentage", "clientHostname", "serviceConfig")));
        String property = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi", "true");
        String property2 = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost", "false");
        String property3 = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_service_config", "false");
        f7661v = Boolean.parseBoolean(property);
        f7662w = Boolean.parseBoolean(property2);
        f7663x = Boolean.parseBoolean(property3);
        try {
            try {
                try {
                    if (Class.forName("o7.l1", true, C2690p0.class.getClassLoader()).asSubclass(AbstractC2667l1.class).getConstructor(null).newInstance(null) == null) {
                        throw null;
                    }
                    throw new ClassCastException();
                } catch (Exception e) {
                    logger.log(Level.FINE, "Can't construct JndiResourceResolverFactory, skipping.", (Throwable) e);
                }
            } catch (Exception e6) {
                logger.log(Level.FINE, "Can't find JndiResourceResolverFactory ctor, skipping.", (Throwable) e6);
            }
        } catch (ClassCastException e10) {
            logger.log(Level.FINE, "Unable to cast JndiResourceResolverFactory, skipping.", (Throwable) e10);
        } catch (ClassNotFoundException e11) {
            logger.log(Level.FINE, "Unable to find JndiResourceResolverFactory, skipping.", (Throwable) e11);
        }
    }

    public C2690p0(String str, C2398a c2398a, InterfaceC2706r4 interfaceC2706r4, C1748f c1748f, boolean z9) {
        AbstractC2587b.m4042i(c2398a, "args");
        this.f7671h = interfaceC2706r4;
        URI uriCreate = URI.create("//".concat(str));
        AbstractC2587b.m4038e("Invalid DNS name: %s", uriCreate.getHost() != null, str);
        String authority = uriCreate.getAuthority();
        if (authority == null) {
            C2467b.m3828n(C1461d.m2512l("nameUri (%s) doesn't have an authority", uriCreate));
            throw null;
        }
        this.f7668e = authority;
        this.f7669f = uriCreate.getHost();
        if (uriCreate.getPort() == -1) {
            this.f7670g = c2398a.f6484b;
        } else {
            this.f7670g = uriCreate.getPort();
        }
        C2645h3 c2645h3 = (C2645h3) c2398a.f6485c;
        AbstractC2587b.m4042i(c2645h3, "proxyDetector");
        this.f7665b = c2645h3;
        long nanos = 0;
        if (!z9) {
            String property = System.getProperty("networkaddress.cache.ttl");
            long j10 = 30;
            if (property != null) {
                try {
                    j10 = Long.parseLong(property);
                } catch (NumberFormatException unused) {
                    f7659t.log(Level.WARNING, "Property({0}) valid is not valid number format({1}), fall back to default({2})", new Object[]{"networkaddress.cache.ttl", property, 30L});
                }
            }
            nanos = j10 > 0 ? TimeUnit.SECONDS.toNanos(j10) : j10;
        }
        this.f7672i = nanos;
        this.f7674k = c1748f;
        ExecutorC2523k1 executorC2523k1 = (ExecutorC2523k1) c2398a.f6486d;
        AbstractC2587b.m4042i(executorC2523k1, "syncContext");
        this.f7673j = executorC2523k1;
        ExecutorC2739x1 executorC2739x1 = (ExecutorC2739x1) c2398a.f6490h;
        this.f7677n = executorC2739x1;
        this.f7678o = executorC2739x1 == null;
        C2652i4 c2652i4 = (C2652i4) c2398a.f6487e;
        AbstractC2587b.m4042i(c2652i4, "serviceConfigParser");
        this.f7679p = c2652i4;
    }

    /* JADX INFO: renamed from: F */
    public static Map m4198F(Map map, Random random, String str) {
        for (Map.Entry entry : map.entrySet()) {
            AbstractC3656k.m5880z("Bad key: %s", f7660u.contains(entry.getKey()), entry);
        }
        List listM4212f = AbstractC2694p4.m4212f("clientLanguage", map);
        if (listM4212f != null && !listM4212f.isEmpty()) {
            Iterator it = listM4212f.iterator();
            while (it.hasNext()) {
                if ("java".equalsIgnoreCase((String) it.next())) {
                }
            }
            return null;
        }
        Double dM4214h = AbstractC2694p4.m4214h("percentage", map);
        if (dM4214h != null) {
            int iIntValue = dM4214h.intValue();
            AbstractC3656k.m5880z("Bad percentage: %s", iIntValue >= 0 && iIntValue <= 100, dM4214h);
            if (random.nextInt(100) >= iIntValue) {
                return null;
            }
        }
        List listM4212f2 = AbstractC2694p4.m4212f("clientHostname", map);
        if (listM4212f2 != null && !listM4212f2.isEmpty()) {
            Iterator it2 = listM4212f2.iterator();
            while (it2.hasNext()) {
                if (((String) it2.next()).equals(str)) {
                }
            }
            return null;
        }
        Map mapM4216j = AbstractC2694p4.m4216j("serviceConfig", map);
        if (mapM4216j != null) {
            return mapM4216j;
        }
        throw new C0029a(String.format("key '%s' missing in '%s'", map, "serviceConfig"), 1);
    }

    /* JADX INFO: renamed from: G */
    public static ArrayList m4199G() {
        List<String> list = Collections.EMPTY_LIST;
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (str.startsWith("grpc_config=")) {
                String strSubstring = str.substring(12);
                Logger logger = AbstractC2673m1.f7624a;
                C3526a c3526a = new C3526a(new StringReader(strSubstring));
                try {
                    Object objM4189a = AbstractC2673m1.m4189a(c3526a);
                    try {
                        c3526a.close();
                    } catch (IOException e) {
                        logger.log(Level.WARNING, "Failed to close", (Throwable) e);
                    }
                    if (!(objM4189a instanceof List)) {
                        throw new ClassCastException("wrong type " + objM4189a);
                    }
                    List list2 = (List) objM4189a;
                    AbstractC2694p4.m4207a(list2);
                    arrayList.addAll(list2);
                } catch (Throwable th) {
                    try {
                        c3526a.close();
                    } catch (IOException e6) {
                        logger.log(Level.WARNING, "Failed to close", (Throwable) e6);
                    }
                    throw th;
                }
            } else {
                f7659t.log(Level.FINE, "Ignoring non service config {0}", new Object[]{str});
            }
        }
        return arrayList;
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: A */
    public final void mo3889A(AbstractC2542t abstractC2542t) {
        AbstractC2587b.m4046m(this.f7681r == null, "already started");
        if (this.f7678o) {
            this.f7677n = (Executor) C2712s4.m4232a(this.f7671h);
        }
        this.f7681r = abstractC2542t;
        m4201H();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    /* JADX INFO: renamed from: E */
    public final C0023h m4200E() {
        boolean z9;
        C2553y0 c2553y0;
        C2553y0 c2553y1;
        List listM4222s;
        C2553y0 c2553y2;
        String str = this.f7669f;
        C0023h c0023h = new C0023h(19);
        try {
            c0023h.f82d = m4202I();
            if (!f7663x) {
                return c0023h;
            }
            List list = Collections.EMPTY_LIST;
            int i10 = 0;
            if (!f7661v) {
                z9 = false;
            } else if ("localhost".equalsIgnoreCase(str)) {
                z9 = f7662w;
            } else if (str.contains(":")) {
                z9 = false;
            } else {
                boolean z10 = true;
                for (int i11 = 0; i11 < str.length(); i11++) {
                    char cCharAt = str.charAt(i11);
                    if (cCharAt != '.') {
                        z10 &= cCharAt >= '0' && cCharAt <= '9';
                    }
                }
                z9 = true ^ z10;
            }
            if (z9 && this.f7667d.get() != null) {
                C2467b.m3822a();
                return null;
            }
            Object c2553y3 = null;
            if (list.isEmpty()) {
                f7659t.log(Level.FINE, "No TXT records found for {0}", new Object[]{str});
            } else {
                Random random = this.f7666c;
                if (f7664y == null) {
                    try {
                        f7664y = InetAddress.getLocalHost().getHostName();
                    } catch (UnknownHostException e) {
                        C2467b.m3833w(e);
                        return null;
                    }
                }
                String str2 = f7664y;
                try {
                    ArrayList arrayListM4199G = m4199G();
                    int size = arrayListM4199G.size();
                    Map mapM4198F = null;
                    while (i10 < size) {
                        Object obj = arrayListM4199G.get(i10);
                        i10++;
                        try {
                            mapM4198F = m4198F((Map) obj, random, str2);
                            if (mapM4198F != null) {
                                break;
                            }
                        } catch (RuntimeException e6) {
                            c2553y0 = new C2553y0(C2508f1.f6939g.m3934h("failed to pick service config choice").m3933g(e6));
                        }
                    }
                    c2553y0 = mapM4198F == null ? null : new C2553y0(mapM4198F);
                } catch (IOException | RuntimeException e10) {
                    c2553y0 = new C2553y0(C2508f1.f6939g.m3934h("failed to parse TXT records").m3933g(e10));
                }
                if (c2553y0 != null) {
                    C2508f1 c2508f1 = c2553y0.f7061a;
                    if (c2508f1 != null) {
                        c2553y3 = new C2553y0(c2508f1);
                    } else {
                        Map map = (Map) c2553y0.f7062b;
                        C2652i4 c2652i4 = this.f7679p;
                        c2652i4.getClass();
                        try {
                            C2736w4 c2736w4 = (C2736w4) c2652i4.f7529d;
                            c2736w4.getClass();
                            if (map != null) {
                                try {
                                    listM4222s = AbstractC2694p4.m4222s(AbstractC2694p4.m4213g(map));
                                } catch (RuntimeException e11) {
                                    c2553y2 = new C2553y0(C2508f1.f6939g.m3934h("can't parse load balancer configuration").m3933g(e11));
                                }
                            } else {
                                listM4222s = null;
                            }
                            c2553y2 = (listM4222s == null || listM4222s.isEmpty()) ? null : AbstractC2694p4.m4221r(listM4222s, (C2525l0) c2736w4.f7859c);
                            if (c2553y2 != null) {
                                C2508f1 c2508f2 = c2553y2.f7061a;
                                if (c2508f2 != null) {
                                    c2553y3 = new C2553y0(c2508f2);
                                } else {
                                    c2553y3 = c2553y2.f7062b;
                                }
                            }
                            c2553y1 = new C2553y0(C2668l2.m4185a(map, c2652i4.f7526a, c2652i4.f7527b, c2652i4.f7528c, c2553y3));
                        } catch (RuntimeException e12) {
                            c2553y1 = new C2553y0(C2508f1.f6939g.m3934h("failed to parse service config").m3933g(e12));
                        }
                        c2553y3 = c2553y1;
                    }
                }
            }
            c0023h.f83e = c2553y3;
            return c0023h;
        } catch (Exception e13) {
            c0023h.f81c = C2508f1.f6945m.m3934h("Unable to resolve host " + str).m3933g(e13);
            return c0023h;
        }
    }

    /* JADX INFO: renamed from: H */
    public final void m4201H() {
        if (this.f7680q || this.f7676m) {
            return;
        }
        if (this.f7675l) {
            long j10 = this.f7672i;
            if (j10 != 0 && (j10 <= 0 || this.f7674k.m2872a() <= j10)) {
                return;
            }
        }
        this.f7680q = true;
        this.f7677n.execute(new RunnableC2624e0(this, this.f7681r));
    }

    /* JADX INFO: renamed from: I */
    public final List m4202I() {
        try {
            try {
                int i10 = this.f7682s;
                String str = this.f7669f;
                if (i10 == 0) {
                    throw null;
                }
                List listUnmodifiableList = Collections.unmodifiableList(Arrays.asList(InetAddress.getAllByName(str)));
                ArrayList arrayList = new ArrayList(listUnmodifiableList.size());
                Iterator it = listUnmodifiableList.iterator();
                while (it.hasNext()) {
                    arrayList.add(new C2538r(new InetSocketAddress((InetAddress) it.next(), this.f7670g)));
                }
                return Collections.unmodifiableList(arrayList);
            } catch (Exception e) {
                Object obj = AbstractC1749g.f4564a;
                if (e instanceof RuntimeException) {
                    throw ((RuntimeException) e);
                }
                throw new RuntimeException(e);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                f7659t.log(Level.FINE, "Address resolution failure", (Throwable) null);
            }
            throw th;
        }
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: e */
    public final String mo3897e() {
        return this.f7668e;
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: x */
    public final void mo3916x() {
        AbstractC2587b.m4046m(this.f7681r != null, "not started");
        m4201H();
    }

    @Override // p148n7.AbstractC2503e
    /* JADX INFO: renamed from: z */
    public final void mo3918z() {
        if (this.f7676m) {
            return;
        }
        this.f7676m = true;
        Executor executor = this.f7677n;
        if (executor == null || !this.f7678o) {
            return;
        }
        C2712s4.m4233b(this.f7671h, executor);
        this.f7677n = null;
    }
}
