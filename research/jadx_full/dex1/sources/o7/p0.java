package o7;

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
import java.util.Map$Entry;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class p0 extends n7.e {
    public static final Logger t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Set f4364u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final boolean f4365v;
    public static final boolean w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final boolean f4366x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static String f4367y;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h3 f4368b;
    public final String e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f4369f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f4370g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final r4 f4371h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f4372i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final n7.k1 f4373j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final i4.f f4374k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f4375l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4376m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Executor f4377n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f4378o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final i4 f4379p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f4380q;
    public n7.t r;
    public final Random c = new Random();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public volatile int f4381s = 1;
    public final AtomicReference d = new AtomicReference();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Logger logger = Logger.getLogger(p0.class.getName());
        t = logger;
        f4364u = Collections.unmodifiableSet(new HashSet(Arrays.asList("clientLanguage", "percentage", "clientHostname", "serviceConfig")));
        String property = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi", "true");
        String property2 = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost", "false");
        String property3 = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_service_config", "false");
        f4365v = Boolean.parseBoolean(property);
        w = Boolean.parseBoolean(property2);
        f4366x = Boolean.parseBoolean(property3);
        try {
            try {
                try {
                    if (Class.forName("o7.l1", true, p0.class.getClassLoader()).asSubclass(l1.class).getConstructor(null).newInstance(null) == null) {
                        throw null;
                    }
                    throw new ClassCastException();
                } catch (Exception e) {
                    logger.log(Level.FINE, "Can't construct JndiResourceResolverFactory, skipping.", (Throwable) e);
                }
            } catch (Exception e6) {
                logger.log(Level.FINE, "Can't find JndiResourceResolverFactory ctor, skipping.", (Throwable) e6);
            }
        } catch (ClassCastException e9) {
            logger.log(Level.FINE, "Unable to cast JndiResourceResolverFactory, skipping.", (Throwable) e9);
        } catch (ClassNotFoundException e10) {
            logger.log(Level.FINE, "Unable to find JndiResourceResolverFactory, skipping.", (Throwable) e10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public p0(String str, m5.a aVar, r4 r4Var, i4.f fVar, boolean z8) {
        o4.b.i(aVar, "args");
        this.f4371h = r4Var;
        URI uriCreate = URI.create("//".concat(str));
        o4.b.e("Invalid DNS name: %s", uriCreate.getHost() != null, str);
        String authority = uriCreate.getAuthority();
        if (authority == null) {
            n0.b.n(e3.d.l("nameUri (%s) doesn't have an authority", uriCreate));
            throw null;
        }
        this.e = authority;
        this.f4369f = uriCreate.getHost();
        if (uriCreate.getPort() == -1) {
            this.f4370g = aVar.f3666b;
        } else {
            this.f4370g = uriCreate.getPort();
        }
        h3 h3Var = (h3) aVar.c;
        o4.b.i(h3Var, "proxyDetector");
        this.f4368b = h3Var;
        long nanos = 0;
        if (!z8) {
            String property = System.getProperty("networkaddress.cache.ttl");
            long j9 = 30;
            if (property != null) {
                try {
                    j9 = Long.parseLong(property);
                } catch (NumberFormatException unused) {
                    t.log(Level.WARNING, "Property({0}) valid is not valid number format({1}), fall back to default({2})", new Object[]{"networkaddress.cache.ttl", property, 30L});
                }
            }
            nanos = j9 > 0 ? TimeUnit.SECONDS.toNanos(j9) : j9;
        }
        this.f4372i = nanos;
        this.f4374k = fVar;
        n7.k1 k1Var = (n7.k1) aVar.d;
        o4.b.i(k1Var, "syncContext");
        this.f4373j = k1Var;
        x1 x1Var = (x1) aVar.f3669h;
        this.f4377n = x1Var;
        this.f4378o = x1Var == null;
        i4 i4Var = (i4) aVar.e;
        o4.b.i(i4Var, "serviceConfigParser");
        this.f4379p = i4Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Map F(Map map, Random random, String str) {
        for (Map$Entry map$Entry : map.entrySet()) {
            y5.k.z("Bad key: %s", f4364u.contains(map$Entry.getKey()), map$Entry);
        }
        List listF = p4.f("clientLanguage", map);
        if (listF != null && !listF.isEmpty()) {
            Iterator it = listF.iterator();
            while (it.hasNext()) {
                if ("java".equalsIgnoreCase((String) it.next())) {
                }
            }
            return null;
        }
        Double dH = p4.h("percentage", map);
        if (dH != null) {
            int iIntValue = dH.intValue();
            y5.k.z("Bad percentage: %s", iIntValue >= 0 && iIntValue <= 100, dH);
            if (random.nextInt(100) >= iIntValue) {
                return null;
            }
        }
        List listF2 = p4.f("clientHostname", map);
        if (listF2 != null && !listF2.isEmpty()) {
            Iterator it2 = listF2.iterator();
            while (it2.hasNext()) {
                if (((String) it2.next()).equals(str)) {
                }
            }
            return null;
        }
        Map mapJ = p4.j("serviceConfig", map);
        if (mapJ != null) {
            return mapJ;
        }
        throw new a8.a(String.format("key '%s' missing in '%s'", map, "serviceConfig"), 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ArrayList G() {
        List<String> list = Collections.EMPTY_LIST;
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (str.startsWith("grpc_config=")) {
                String strSubstring = str.substring(12);
                Logger logger = m1.f4344a;
                w5.a aVar = new w5.a(new StringReader(strSubstring));
                try {
                    Object objA = m1.a(aVar);
                    try {
                        aVar.close();
                    } catch (IOException e) {
                        logger.log(Level.WARNING, "Failed to close", (Throwable) e);
                    }
                    if (!(objA instanceof List)) {
                        throw new ClassCastException("wrong type " + objA);
                    }
                    List list2 = (List) objA;
                    p4.a(list2);
                    arrayList.addAll(list2);
                } catch (Throwable th) {
                    try {
                        aVar.close();
                    } catch (IOException e6) {
                        logger.log(Level.WARNING, "Failed to close", (Throwable) e6);
                    }
                    throw th;
                }
            } else {
                t.log(Level.FINE, "Ignoring non service config {0}", new Object[]{str});
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void A(n7.t tVar) {
        o4.b.m(this.r == null, "already started");
        if (this.f4378o) {
            this.f4377n = (Executor) s4.a(this.f4371h);
        }
        this.r = tVar;
        H();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:8:0x001a  */
    public final a5.h E() {
        boolean z8;
        n7.y0 y0Var;
        n7.y0 y0Var2;
        List listS;
        n7.y0 y0Var3;
        String str = this.f4369f;
        a5.h hVar = new a5.h(19);
        try {
            hVar.d = I();
            if (!f4366x) {
                return hVar;
            }
            List list = Collections.EMPTY_LIST;
            int i9 = 0;
            if (!f4365v) {
                z8 = false;
            } else if ("localhost".equalsIgnoreCase(str)) {
                z8 = w;
            } else if (str.contains(":")) {
                z8 = false;
            } else {
                boolean z9 = true;
                for (int i10 = 0; i10 < str.length(); i10++) {
                    char cCharAt = str.charAt(i10);
                    if (cCharAt != '.') {
                        z9 &= cCharAt >= '0' && cCharAt <= '9';
                    }
                }
                z8 = true ^ z9;
            }
            if (z8 && this.d.get() != null) {
                n0.b.a();
                return null;
            }
            Object y0Var4 = null;
            if (list.isEmpty()) {
                t.log(Level.FINE, "No TXT records found for {0}", new Object[]{str});
            } else {
                Random random = this.c;
                if (f4367y == null) {
                    try {
                        f4367y = InetAddress.getLocalHost().getHostName();
                    } catch (UnknownHostException e) {
                        n0.b.w(e);
                        return null;
                    }
                }
                String str2 = f4367y;
                try {
                    ArrayList arrayListG = G();
                    int size = arrayListG.size();
                    Map mapF = null;
                    while (i9 < size) {
                        Object obj = arrayListG.get(i9);
                        i9++;
                        try {
                            mapF = F((Map) obj, random, str2);
                            if (mapF != null) {
                                break;
                            }
                        } catch (RuntimeException e6) {
                            y0Var = new n7.y0(n7.f1.f3924g.h("failed to pick service config choice").g(e6));
                        }
                    }
                    y0Var = mapF == null ? null : new n7.y0(mapF);
                } catch (IOException | RuntimeException e9) {
                    y0Var = new n7.y0(n7.f1.f3924g.h("failed to parse TXT records").g(e9));
                }
                if (y0Var != null) {
                    n7.f1 f1Var = y0Var.f3988a;
                    if (f1Var != null) {
                        y0Var4 = new n7.y0(f1Var);
                    } else {
                        Map map = (Map) y0Var.f3989b;
                        i4 i4Var = this.f4379p;
                        i4Var.getClass();
                        try {
                            w4 w4Var = (w4) i4Var.d;
                            w4Var.getClass();
                            if (map != null) {
                                try {
                                    listS = p4.s(p4.g(map));
                                } catch (RuntimeException e10) {
                                    y0Var3 = new n7.y0(n7.f1.f3924g.h("can't parse load balancer configuration").g(e10));
                                }
                            } else {
                                listS = null;
                            }
                            y0Var3 = (listS == null || listS.isEmpty()) ? null : p4.r(listS, (n7.l0) w4Var.c);
                            if (y0Var3 != null) {
                                n7.f1 f1Var2 = y0Var3.f3988a;
                                if (f1Var2 != null) {
                                    y0Var4 = new n7.y0(f1Var2);
                                } else {
                                    y0Var4 = y0Var3.f3989b;
                                }
                            }
                            y0Var2 = new n7.y0(l2.a(map, i4Var.f4282a, i4Var.f4283b, i4Var.c, y0Var4));
                        } catch (RuntimeException e11) {
                            y0Var2 = new n7.y0(n7.f1.f3924g.h("failed to parse service config").g(e11));
                        }
                        y0Var4 = y0Var2;
                    }
                }
            }
            hVar.e = y0Var4;
            return hVar;
        } catch (Exception e12) {
            hVar.c = n7.f1.f3930m.h("Unable to resolve host " + str).g(e12);
            return hVar;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void H() {
        if (this.f4380q || this.f4376m) {
            return;
        }
        if (this.f4375l) {
            long j9 = this.f4372i;
            if (j9 != 0 && (j9 <= 0 || this.f4374k.a() <= j9)) {
                return;
            }
        }
        this.f4380q = true;
        this.f4377n.execute(new e0(this, this.r));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List I() {
        try {
            try {
                int i9 = this.f4381s;
                String str = this.f4369f;
                if (i9 == 0) {
                    throw null;
                }
                List listUnmodifiableList = Collections.unmodifiableList(Arrays.asList(InetAddress.getAllByName(str)));
                ArrayList arrayList = new ArrayList(listUnmodifiableList.size());
                Iterator it = listUnmodifiableList.iterator();
                while (it.hasNext()) {
                    arrayList.add(new n7.r(new InetSocketAddress((InetAddress) it.next(), this.f4370g)));
                }
                return Collections.unmodifiableList(arrayList);
            } catch (Exception e) {
                Object obj = i4.g.f2663a;
                if (e instanceof RuntimeException) {
                    throw ((RuntimeException) e);
                }
                throw new RuntimeException(e);
            }
        } catch (Throwable th) {
            if (0 != 0) {
                t.log(Level.FINE, "Address resolution failure", (Throwable) null);
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final String e() {
        return this.e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void x() {
        o4.b.m(this.r != null, "not started");
        H();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.e
    public final void z() {
        if (this.f4376m) {
            return;
        }
        this.f4376m = true;
        Executor executor = this.f4377n;
        if (executor == null || !this.f4378o) {
            return;
        }
        s4.b(this.f4371h, executor);
        this.f4377n = null;
    }
}
