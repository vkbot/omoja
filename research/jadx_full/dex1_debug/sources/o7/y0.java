package o7;

import androidx.constraintlayout.core.motion.utils.TypedValues$PositionType;
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

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f4505a = Logger.getLogger(y0.class.getName());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set f4506b = Collections.unmodifiableSet(EnumSet.of(n7.e1.OK, n7.e1.INVALID_ARGUMENT, n7.e1.NOT_FOUND, n7.e1.ALREADY_EXISTS, n7.e1.FAILED_PRECONDITION, n7.e1.ABORTED, n7.e1.OUT_OF_RANGE, n7.e1.DATA_LOSS));
    public static final n7.q0 c;
    public static final n7.q0 d;
    public static final n7.t0 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final n7.q0 f4507f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final n7.t0 f4508g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final n7.q0 f4509h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final n7.q0 f4510i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final n7.q0 f4511j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final n7.q0 f4512k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final long f4513l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final h3 f4514m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a9.w f4515n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final w0 f4516o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final u2 f4517p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final u2 f4518q;
    public static final u2 r;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Charset.forName("US-ASCII");
        c = new n7.q0("grpc-timeout", new u2(14));
        n7.h hVar = n7.v0.d;
        d = new n7.q0("grpc-encoding", hVar);
        e = n7.b0.a("grpc-accept-encoding", new u2(13));
        f4507f = new n7.q0("content-encoding", hVar);
        f4508g = n7.b0.a("accept-encoding", new u2(13));
        f4509h = new n7.q0("content-length", hVar);
        f4510i = new n7.q0("content-type", hVar);
        f4511j = new n7.q0("te", hVar);
        f4512k = new n7.q0("user-agent", hVar);
        i4.a.c.getClass();
        f4513l = 20000000000L;
        f4514m = new h3();
        f4515n = new a9.w("io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER", 3);
        f4516o = new w0();
        f4517p = new u2(10);
        f4518q = new u2(11);
        r = new u2(12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static URI a(String str) {
        String str2;
        o4.b.i(str, "authority");
        try {
            str2 = str;
            try {
                return new URI(null, str2, null, null, null);
            } catch (URISyntaxException e6) {
                e = e6;
                throw new IllegalArgumentException("Invalid authority: ".concat(str2), e);
            }
        } catch (URISyntaxException e9) {
            e = e9;
            str2 = str;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e6) {
            f4505a.log(Level.WARNING, "exception caught in closeQuietly", (Throwable) e6);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static n7.e[] c(n7.c cVar, n7.v0 v0Var, int i9, boolean z8) {
        List list = cVar.d;
        int size = list.size();
        n7.e[] eVarArr = new n7.e[size + 1];
        n7.c cVar2 = n7.c.f3892h;
        j4.b bVar = new j4.b(cVar, i9, z8);
        for (int i10 = 0; i10 < list.size(); i10++) {
            eVarArr[i10] = ((n7.g) list.get(i10)).a(bVar, v0Var);
        }
        eVarArr[size] = f4516o;
        return eVarArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String d(InetSocketAddress inetSocketAddress) {
        try {
            return (String) InetSocketAddress.class.getMethod("getHostString", null).invoke(inetSocketAddress, null);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return inetSocketAddress.getHostName();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static m4.p e(String str) {
        Boolean bool = Boolean.TRUE;
        String.format(Locale.ROOT, str, 0);
        return new m4.p(Executors.defaultThreadFactory(), str, new AtomicLong(0L), bool);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static x f(n7.f0 f0Var, boolean z8) {
        g1 g1Var;
        n7.t tVar = f0Var.f3921a;
        n7.f1 f1Var = f0Var.c;
        if (tVar == null) {
            g1Var = null;
        } else {
            k1 k1Var = (k1) tVar.f();
            g1Var = k1Var.f4322v;
            if (g1Var == null) {
                k1Var.f4313k.execute(new f1(k1Var, 1));
                g1Var = null;
            }
        }
        if (g1Var != null) {
            n7.g gVar = f0Var.f3922b;
            return gVar == null ? g1Var : new t0(gVar, g1Var);
        }
        if (!f1Var.f()) {
            if (f0Var.d) {
                return new t0(h(f1Var), v.d);
            }
            if (!z8) {
                return new t0(h(f1Var), v.f4462b);
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:21:0x0029  */
    /* JADX WARN: Code duplicated, block: B:25:0x0035  */
    public static n7.f1 g(int i9) {
        n7.e1 e1Var;
        if ((i9 >= 100 && i9 < 200) || i9 == 400) {
            e1Var = n7.e1.INTERNAL;
        } else if (i9 == 401) {
            e1Var = n7.e1.UNAUTHENTICATED;
        } else if (i9 == 403) {
            e1Var = n7.e1.PERMISSION_DENIED;
        } else if (i9 == 404) {
            e1Var = n7.e1.UNIMPLEMENTED;
        } else if (i9 == 429) {
            e1Var = n7.e1.UNAVAILABLE;
        } else if (i9 != 431) {
            switch (i9) {
                case TypedValues$PositionType.TYPE_DRAWPATH /* 502 */:
                case TypedValues$PositionType.TYPE_PERCENT_WIDTH /* 503 */:
                case TypedValues$PositionType.TYPE_PERCENT_HEIGHT /* 504 */:
                    e1Var = n7.e1.UNAVAILABLE;
                    break;
                default:
                    e1Var = n7.e1.UNKNOWN;
                    break;
            }
        } else {
            e1Var = n7.e1.INTERNAL;
        }
        return e1Var.a().h("HTTP status code " + i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static n7.f1 h(n7.f1 f1Var) {
        o4.b.f(f1Var != null);
        if (!f4506b.contains(f1Var.f3933a)) {
            return f1Var;
        }
        return n7.f1.f3929l.h("Inappropriate status code from control plane: " + f1Var.f3933a + " " + f1Var.f3934b).g(f1Var.c);
    }
}
