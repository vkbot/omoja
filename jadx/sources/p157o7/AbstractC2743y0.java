package p157o7;

import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;
import p010a9.C0061w;
import p091i4.C1743a;
import p102j4.C1963b;
import p135m4.ThreadFactoryC2397p;
import p148n7.AbstractC2495b0;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2509g;
import p148n7.AbstractC2542t;
import p148n7.C2497c;
import p148n7.C2507f0;
import p148n7.C2508f1;
import p148n7.C2512h;
import p148n7.C2537q0;
import p148n7.C2543t0;
import p148n7.C2547v0;
import p148n7.EnumC2505e1;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.y0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2743y0 {

    /* JADX INFO: renamed from: a */
    public static final Logger f7875a = Logger.getLogger(AbstractC2743y0.class.getName());

    /* JADX INFO: renamed from: b */
    public static final Set f7876b = Collections.unmodifiableSet(EnumSet.of(EnumC2505e1.OK, EnumC2505e1.INVALID_ARGUMENT, EnumC2505e1.NOT_FOUND, EnumC2505e1.ALREADY_EXISTS, EnumC2505e1.FAILED_PRECONDITION, EnumC2505e1.ABORTED, EnumC2505e1.OUT_OF_RANGE, EnumC2505e1.DATA_LOSS));

    /* JADX INFO: renamed from: c */
    public static final C2537q0 f7877c;

    /* JADX INFO: renamed from: d */
    public static final C2537q0 f7878d;

    /* JADX INFO: renamed from: e */
    public static final C2543t0 f7879e;

    /* JADX INFO: renamed from: f */
    public static final C2537q0 f7880f;

    /* JADX INFO: renamed from: g */
    public static final C2543t0 f7881g;

    /* JADX INFO: renamed from: h */
    public static final C2537q0 f7882h;

    /* JADX INFO: renamed from: i */
    public static final C2537q0 f7883i;

    /* JADX INFO: renamed from: j */
    public static final C2537q0 f7884j;

    /* JADX INFO: renamed from: k */
    public static final C2537q0 f7885k;

    /* JADX INFO: renamed from: l */
    public static final long f7886l;

    /* JADX INFO: renamed from: m */
    public static final C2645h3 f7887m;

    /* JADX INFO: renamed from: n */
    public static final C0061w f7888n;

    /* JADX INFO: renamed from: o */
    public static final C2732w0 f7889o;

    /* JADX INFO: renamed from: p */
    public static final C2722u2 f7890p;

    /* JADX INFO: renamed from: q */
    public static final C2722u2 f7891q;

    /* JADX INFO: renamed from: r */
    public static final C2722u2 f7892r;

    static {
        Charset.forName("US-ASCII");
        f7877c = new C2537q0("grpc-timeout", new C2722u2(14));
        C2512h c2512h = C2547v0.f7038d;
        f7878d = new C2537q0("grpc-encoding", c2512h);
        f7879e = AbstractC2495b0.m3882a("grpc-accept-encoding", new C2722u2(13));
        f7880f = new C2537q0("content-encoding", c2512h);
        f7881g = AbstractC2495b0.m3882a("accept-encoding", new C2722u2(13));
        f7882h = new C2537q0("content-length", c2512h);
        f7883i = new C2537q0("content-type", c2512h);
        f7884j = new C2537q0("te", c2512h);
        f7885k = new C2537q0("user-agent", c2512h);
        C1743a.f4556c.getClass();
        f7886l = 20000000000L;
        f7887m = new C2645h3();
        f7888n = new C0061w("io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER", 3);
        f7889o = new C2732w0();
        f7890p = new C2722u2(10);
        f7891q = new C2722u2(11);
        f7892r = new C2722u2(12);
    }

    /* JADX INFO: renamed from: a */
    public static URI m4257a(String str) {
        String str2;
        AbstractC2587b.m4042i(str, "authority");
        try {
            str2 = str;
            try {
                return new URI(null, str2, null, null, null);
            } catch (URISyntaxException e) {
                e = e;
                throw new IllegalArgumentException("Invalid authority: ".concat(str2), e);
            }
        } catch (URISyntaxException e6) {
            e = e6;
            str2 = str;
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m4258b(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            f7875a.log(Level.WARNING, "exception caught in closeQuietly", (Throwable) e);
        }
    }

    /* JADX INFO: renamed from: c */
    public static AbstractC2503e[] m4259c(C2497c c2497c, C2547v0 c2547v0, int i10, boolean z9) {
        List list = c2497c.f6894d;
        int size = list.size();
        AbstractC2503e[] abstractC2503eArr = new AbstractC2503e[size + 1];
        C2497c c2497c2 = C2497c.f6890h;
        C1963b c1963b = new C1963b(c2497c, i10, z9);
        for (int i11 = 0; i11 < list.size(); i11++) {
            abstractC2503eArr[i11] = ((AbstractC2509g) list.get(i11)).mo3935a(c1963b, c2547v0);
        }
        abstractC2503eArr[size] = f7889o;
        return abstractC2503eArr;
    }

    /* JADX INFO: renamed from: d */
    public static String m4260d(InetSocketAddress inetSocketAddress) {
        try {
            return (String) InetSocketAddress.class.getMethod("getHostString", null).invoke(inetSocketAddress, null);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return inetSocketAddress.getHostName();
        }
    }

    /* JADX INFO: renamed from: e */
    public static ThreadFactoryC2397p m4261e(String str) {
        Boolean bool = Boolean.TRUE;
        String.format(Locale.ROOT, str, 0);
        return new ThreadFactoryC2397p(Executors.defaultThreadFactory(), str, new AtomicLong(0L), bool);
    }

    /* JADX INFO: renamed from: f */
    public static InterfaceC2737x m4262f(C2507f0 c2507f0, boolean z9) {
        C2637g1 c2637g1;
        AbstractC2542t abstractC2542t = c2507f0.f6932a;
        C2508f1 c2508f1 = c2507f0.f6934c;
        if (abstractC2542t == null) {
            c2637g1 = null;
        } else {
            C2661k1 c2661k1 = (C2661k1) abstractC2542t.mo3979f();
            c2637g1 = c2661k1.f7589v;
            if (c2637g1 == null) {
                c2661k1.f7578k.execute(new RunnableC2631f1(c2661k1, 1));
                c2637g1 = null;
            }
        }
        if (c2637g1 != null) {
            AbstractC2509g abstractC2509g = c2507f0.f6933b;
            return abstractC2509g == null ? c2637g1 : new C2714t0(abstractC2509g, c2637g1);
        }
        if (!c2508f1.m3932f()) {
            if (c2507f0.f6935d) {
                return new C2714t0(m4264h(c2508f1), EnumC2725v.f7803d);
            }
            if (!z9) {
                return new C2714t0(m4264h(c2508f1), EnumC2725v.f7801b);
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0029  */
    /* JADX WARN: Code duplicated, block: B:25:0x0035  */
    /* JADX INFO: renamed from: g */
    public static C2508f1 m4263g(int i10) {
        EnumC2505e1 enumC2505e1;
        if ((i10 >= 100 && i10 < 200) || i10 == 400) {
            enumC2505e1 = EnumC2505e1.INTERNAL;
        } else if (i10 == 401) {
            enumC2505e1 = EnumC2505e1.UNAUTHENTICATED;
        } else if (i10 == 403) {
            enumC2505e1 = EnumC2505e1.PERMISSION_DENIED;
        } else if (i10 == 404) {
            enumC2505e1 = EnumC2505e1.UNIMPLEMENTED;
        } else if (i10 == 429) {
            enumC2505e1 = EnumC2505e1.UNAVAILABLE;
        } else if (i10 != 431) {
            switch (i10) {
                case 502:
                case 503:
                case 504:
                    enumC2505e1 = EnumC2505e1.UNAVAILABLE;
                    break;
                default:
                    enumC2505e1 = EnumC2505e1.UNKNOWN;
                    break;
            }
        } else {
            enumC2505e1 = EnumC2505e1.INTERNAL;
        }
        return enumC2505e1.m3924a().m3934h("HTTP status code " + i10);
    }

    /* JADX INFO: renamed from: h */
    public static C2508f1 m4264h(C2508f1 c2508f1) {
        AbstractC2587b.m4039f(c2508f1 != null);
        if (!f7876b.contains(c2508f1.f6948a)) {
            return c2508f1;
        }
        return C2508f1.f6944l.m3934h("Inappropriate status code from control plane: " + c2508f1.f6948a + " " + c2508f1.f6949b).m3933g(c2508f1.f6950c);
    }
}
