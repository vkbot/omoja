package o7;

import androidx.constraintlayout.core.motion.utils.TypedValues$AttributesType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g2 extends n7.e {
    public static final Method F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final n.p f4246b;
    public final n.p c;
    public final ArrayList d;
    public final n7.b1 e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f4247f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f4248g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f4249h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final n7.q f4250i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final n7.i f4251j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f4252k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f4253l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f4254m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f4255n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final long f4256o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f4257p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final n7.x f4258q;
    public final boolean r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final boolean f4259s;
    public final boolean t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f4260u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final boolean f4261v;
    public final boolean w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final p7.f f4262x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final p7.f f4263y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final Logger f4245z = Logger.getLogger(g2.class.getName());
    public static final long A = 1800000;
    public static final long B = 1000;
    public static final n.p C = new n.p(5, y0.f4517p);
    public static final n7.q D = n7.q.d;
    public static final n7.i E = n7.i.f3940b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Method declaredMethod;
        try {
            Class<?> cls = Class.forName("io.grpc.census.InternalCensusStatsAccessor");
            Class cls2 = Boolean.TYPE;
            declaredMethod = cls.getDeclaredMethod("getClientInterceptor", cls2, cls2, cls2, cls2);
        } catch (ClassNotFoundException e) {
            f4245z.log(Level.FINE, "Unable to apply census stats", (Throwable) e);
            declaredMethod = null;
        } catch (NoSuchMethodException e6) {
            f4245z.log(Level.FINE, "Unable to apply census stats", (Throwable) e6);
            declaredMethod = null;
        }
        F = declaredMethod;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g2(String str, p7.f fVar, p7.f fVar2) {
        n7.b1 b1Var;
        n.p pVar = C;
        this.f4246b = pVar;
        this.c = pVar;
        this.d = new ArrayList();
        Logger logger = n7.b1.d;
        synchronized (n7.b1.class) {
            try {
                if (n7.b1.e == null) {
                    ArrayList arrayList = new ArrayList();
                    try {
                        boolean z8 = q0.f4396a;
                        arrayList.add(q0.class);
                    } catch (ClassNotFoundException e) {
                        n7.b1.d.log(Level.FINE, "Unable to find DNS NameResolver", (Throwable) e);
                    }
                    List<n7.a1> listH = n7.t.h(n7.a1.class, Collections.unmodifiableList(arrayList), n7.a1.class.getClassLoader(), new n7.h(9));
                    if (listH.isEmpty()) {
                        n7.b1.d.warning("No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration");
                    }
                    n7.b1.e = new n7.b1();
                    for (n7.a1 a1Var : listH) {
                        n7.b1.d.fine("Service loader found " + a1Var);
                        n7.b1 b1Var2 = n7.b1.e;
                        synchronized (b1Var2) {
                            a1Var.getClass();
                            b1Var2.f3891b.add(a1Var);
                        }
                    }
                    n7.b1.e.a();
                }
                b1Var = n7.b1.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.e = b1Var;
        this.f4247f = new ArrayList();
        this.f4249h = "pick_first";
        this.f4250i = D;
        this.f4251j = E;
        this.f4252k = A;
        this.f4253l = 5;
        this.f4254m = 5;
        this.f4255n = 16777216L;
        this.f4256o = 1048576L;
        this.f4257p = true;
        this.f4258q = n7.x.e;
        this.r = true;
        this.f4259s = true;
        this.t = true;
        this.f4260u = true;
        this.f4261v = true;
        this.w = true;
        o4.b.i(str, TypedValues$AttributesType.S_TARGET);
        this.f4248g = str;
        this.f4262x = fVar;
        this.f4263y = fVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final n7.m0 E() {
        SSLSocketFactory sSLSocketFactory;
        u7.g gVar;
        u7.g gVar2;
        p7.h hVar = this.f4262x.f4622a;
        boolean z8 = hVar.f4640i != Long.MAX_VALUE;
        n.p pVar = hVar.d;
        n.p pVar2 = hVar.e;
        int i9 = hVar.f4639h;
        int iC = com.bumptech.glide.g.c(i9);
        if (iC == 0) {
            try {
                if (hVar.f4637f == null) {
                    hVar.f4637f = SSLContext.getInstance("Default", q7.k.d.f4917a).getSocketFactory();
                }
                sSLSocketFactory = hVar.f4637f;
            } catch (GeneralSecurityException e) {
                ai.onnxruntime.b.o("TLS Provider failure", e);
                return null;
            }
        } else {
            if (iC != 1) {
                ai.onnxruntime.b.h("Unknown negotiation type: ".concat(kotlin.collections.unsigned.a.h(i9)));
                return null;
            }
            sSLSocketFactory = null;
        }
        p7.g gVar3 = new p7.g(pVar, pVar2, sSLSocketFactory, hVar.f4638g, hVar.f4643l, z8, hVar.f4640i, hVar.f4641j, hVar.f4642k, hVar.f4644m, hVar.c);
        u2 u2Var = new u2(9);
        n.p pVar3 = new n.p(5, y0.f4517p);
        u2 u2Var2 = y0.r;
        ArrayList arrayList = new ArrayList(this.d);
        synchronized (n7.t.class) {
        }
        if (this.f4259s) {
            Method method = F;
            if (method != null) {
                try {
                    gVar2 = (u7.g) method.invoke(null, Boolean.valueOf(this.t), Boolean.valueOf(this.f4260u), Boolean.FALSE, Boolean.valueOf(this.f4261v));
                } catch (IllegalAccessException e6) {
                    f4245z.log(Level.FINE, "Unable to apply census stats", (Throwable) e6);
                    gVar2 = null;
                } catch (InvocationTargetException e9) {
                    f4245z.log(Level.FINE, "Unable to apply census stats", (Throwable) e9);
                    gVar2 = null;
                }
            } else {
                gVar2 = null;
            }
            if (gVar2 != null) {
                arrayList.add(0, gVar2);
            }
        }
        if (this.w) {
            try {
                gVar = (u7.g) Class.forName("io.grpc.census.InternalCensusTracingAccessor").getDeclaredMethod("getClientInterceptor", null).invoke(null, null);
            } catch (ClassNotFoundException e10) {
                f4245z.log(Level.FINE, "Unable to apply census stats", (Throwable) e10);
                gVar = null;
            } catch (IllegalAccessException e11) {
                f4245z.log(Level.FINE, "Unable to apply census stats", (Throwable) e11);
                gVar = null;
            } catch (NoSuchMethodException e12) {
                f4245z.log(Level.FINE, "Unable to apply census stats", (Throwable) e12);
                gVar = null;
            } catch (InvocationTargetException e13) {
                f4245z.log(Level.FINE, "Unable to apply census stats", (Throwable) e13);
                gVar = null;
            }
            if (gVar != null) {
                arrayList.add(0, gVar);
            }
        }
        return new i2(new f2(this, gVar3, u2Var, pVar3, u2Var2, arrayList));
    }
}
