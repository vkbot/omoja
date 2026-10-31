package p157o7;

import ai.onnxruntime.C0075b;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bumptech.glide.AbstractC1034g;
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
import kotlin.collections.unsigned.AbstractC2082a;
import org.apache.commons.p161io.FileUtils;
import p141n.C2455p;
import p148n7.AbstractC2493a1;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2528m0;
import p148n7.AbstractC2542t;
import p148n7.C2496b1;
import p148n7.C2512h;
import p148n7.C2515i;
import p148n7.C2536q;
import p148n7.C2550x;
import p155o4.AbstractC2587b;
import p170p7.C2981f;
import p170p7.C2982g;
import p170p7.C2983h;
import p179q7.C3084k;
import p214u7.C3310g;

/* JADX INFO: renamed from: o7.g2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2638g2 extends AbstractC2503e {

    /* JADX INFO: renamed from: F */
    public static final Method f7462F;

    /* JADX INFO: renamed from: b */
    public final C2455p f7464b;

    /* JADX INFO: renamed from: c */
    public final C2455p f7465c;

    /* JADX INFO: renamed from: d */
    public final ArrayList f7466d;

    /* JADX INFO: renamed from: e */
    public final C2496b1 f7467e;

    /* JADX INFO: renamed from: f */
    public final ArrayList f7468f;

    /* JADX INFO: renamed from: g */
    public final String f7469g;

    /* JADX INFO: renamed from: h */
    public final String f7470h;

    /* JADX INFO: renamed from: i */
    public final C2536q f7471i;

    /* JADX INFO: renamed from: j */
    public final C2515i f7472j;

    /* JADX INFO: renamed from: k */
    public final long f7473k;

    /* JADX INFO: renamed from: l */
    public final int f7474l;

    /* JADX INFO: renamed from: m */
    public final int f7475m;

    /* JADX INFO: renamed from: n */
    public final long f7476n;

    /* JADX INFO: renamed from: o */
    public final long f7477o;

    /* JADX INFO: renamed from: p */
    public final boolean f7478p;

    /* JADX INFO: renamed from: q */
    public final C2550x f7479q;

    /* JADX INFO: renamed from: r */
    public final boolean f7480r;

    /* JADX INFO: renamed from: s */
    public final boolean f7481s;

    /* JADX INFO: renamed from: t */
    public final boolean f7482t;

    /* JADX INFO: renamed from: u */
    public final boolean f7483u;

    /* JADX INFO: renamed from: v */
    public final boolean f7484v;

    /* JADX INFO: renamed from: w */
    public final boolean f7485w;

    /* JADX INFO: renamed from: x */
    public final C2981f f7486x;

    /* JADX INFO: renamed from: y */
    public final C2981f f7487y;

    /* JADX INFO: renamed from: z */
    public static final Logger f7463z = Logger.getLogger(C2638g2.class.getName());

    /* JADX INFO: renamed from: A */
    public static final long f7457A = 1800000;

    /* JADX INFO: renamed from: B */
    public static final long f7458B = 1000;

    /* JADX INFO: renamed from: C */
    public static final C2455p f7459C = new C2455p(5, AbstractC2743y0.f7890p);

    /* JADX INFO: renamed from: D */
    public static final C2536q f7460D = C2536q.f7012d;

    /* JADX INFO: renamed from: E */
    public static final C2515i f7461E = C2515i.f6962b;

    static {
        Method declaredMethod;
        try {
            Class<?> cls = Class.forName("io.grpc.census.InternalCensusStatsAccessor");
            Class cls2 = Boolean.TYPE;
            declaredMethod = cls.getDeclaredMethod("getClientInterceptor", cls2, cls2, cls2, cls2);
        } catch (ClassNotFoundException e) {
            f7463z.log(Level.FINE, "Unable to apply census stats", (Throwable) e);
            declaredMethod = null;
        } catch (NoSuchMethodException e6) {
            f7463z.log(Level.FINE, "Unable to apply census stats", (Throwable) e6);
            declaredMethod = null;
        }
        f7462F = declaredMethod;
    }

    public C2638g2(String str, C2981f c2981f, C2981f c2981f2) {
        C2496b1 c2496b1;
        C2455p c2455p = f7459C;
        this.f7464b = c2455p;
        this.f7465c = c2455p;
        this.f7466d = new ArrayList();
        Logger logger = C2496b1.f6885d;
        synchronized (C2496b1.class) {
            try {
                if (C2496b1.f6886e == null) {
                    ArrayList arrayList = new ArrayList();
                    try {
                        boolean z9 = C2696q0.f7708a;
                        arrayList.add(C2696q0.class);
                    } catch (ClassNotFoundException e) {
                        C2496b1.f6885d.log(Level.FINE, "Unable to find DNS NameResolver", (Throwable) e);
                    }
                    List<AbstractC2493a1> listM3974h = AbstractC2542t.m3974h(AbstractC2493a1.class, Collections.unmodifiableList(arrayList), AbstractC2493a1.class.getClassLoader(), new C2512h(9));
                    if (listM3974h.isEmpty()) {
                        C2496b1.f6885d.warning("No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration");
                    }
                    C2496b1.f6886e = new C2496b1();
                    for (AbstractC2493a1 abstractC2493a1 : listM3974h) {
                        C2496b1.f6885d.fine("Service loader found " + abstractC2493a1);
                        C2496b1 c2496b2 = C2496b1.f6886e;
                        synchronized (c2496b2) {
                            abstractC2493a1.getClass();
                            c2496b2.f6888b.add(abstractC2493a1);
                        }
                    }
                    C2496b1.f6886e.m3883a();
                }
                c2496b1 = C2496b1.f6886e;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f7467e = c2496b1;
        this.f7468f = new ArrayList();
        this.f7470h = "pick_first";
        this.f7471i = f7460D;
        this.f7472j = f7461E;
        this.f7473k = f7457A;
        this.f7474l = 5;
        this.f7475m = 5;
        this.f7476n = 16777216L;
        this.f7477o = FileUtils.ONE_MB;
        this.f7478p = true;
        this.f7479q = C2550x.f7050e;
        this.f7480r = true;
        this.f7481s = true;
        this.f7482t = true;
        this.f7483u = true;
        this.f7484v = true;
        this.f7485w = true;
        AbstractC2587b.m4042i(str, TypedValues.AttributesType.S_TARGET);
        this.f7469g = str;
        this.f7486x = c2981f;
        this.f7487y = c2981f2;
    }

    /* JADX INFO: renamed from: E */
    public final AbstractC2528m0 m4158E() {
        SSLSocketFactory sSLSocketFactory;
        C3310g c3310g;
        C3310g c3310g2;
        C2983h c2983h = this.f7486x.f8311a;
        boolean z9 = c2983h.f8335i != Long.MAX_VALUE;
        C2455p c2455p = c2983h.f8330d;
        C2455p c2455p2 = c2983h.f8331e;
        int i10 = c2983h.f8334h;
        int iM1296c = AbstractC1034g.m1296c(i10);
        if (iM1296c == 0) {
            try {
                if (c2983h.f8332f == null) {
                    c2983h.f8332f = SSLContext.getInstance("Default", C3084k.f8756d.f8757a).getSocketFactory();
                }
                sSLSocketFactory = c2983h.f8332f;
            } catch (GeneralSecurityException e) {
                C0075b.m190o("TLS Provider failure", e);
                return null;
            }
        } else {
            if (iM1296c != 1) {
                C0075b.m183h("Unknown negotiation type: ".concat(AbstractC2082a.m3242h(i10)));
                return null;
            }
            sSLSocketFactory = null;
        }
        C2982g c2982g = new C2982g(c2455p, c2455p2, sSLSocketFactory, c2983h.f8333g, c2983h.f8338l, z9, c2983h.f8335i, c2983h.f8336j, c2983h.f8337k, c2983h.f8339m, c2983h.f8329c);
        C2722u2 c2722u2 = new C2722u2(9);
        C2455p c2455p3 = new C2455p(5, AbstractC2743y0.f7890p);
        C2722u2 c2722u3 = AbstractC2743y0.f7892r;
        ArrayList arrayList = new ArrayList(this.f7466d);
        synchronized (AbstractC2542t.class) {
        }
        if (this.f7481s) {
            Method method = f7462F;
            if (method != null) {
                try {
                    c3310g2 = (C3310g) method.invoke(null, Boolean.valueOf(this.f7482t), Boolean.valueOf(this.f7483u), Boolean.FALSE, Boolean.valueOf(this.f7484v));
                } catch (IllegalAccessException e6) {
                    f7463z.log(Level.FINE, "Unable to apply census stats", (Throwable) e6);
                    c3310g2 = null;
                } catch (InvocationTargetException e10) {
                    f7463z.log(Level.FINE, "Unable to apply census stats", (Throwable) e10);
                    c3310g2 = null;
                }
            } else {
                c3310g2 = null;
            }
            if (c3310g2 != null) {
                arrayList.add(0, c3310g2);
            }
        }
        if (this.f7485w) {
            try {
                c3310g = (C3310g) Class.forName("io.grpc.census.InternalCensusTracingAccessor").getDeclaredMethod("getClientInterceptor", null).invoke(null, null);
            } catch (ClassNotFoundException e11) {
                f7463z.log(Level.FINE, "Unable to apply census stats", (Throwable) e11);
                c3310g = null;
            } catch (IllegalAccessException e12) {
                f7463z.log(Level.FINE, "Unable to apply census stats", (Throwable) e12);
                c3310g = null;
            } catch (NoSuchMethodException e13) {
                f7463z.log(Level.FINE, "Unable to apply census stats", (Throwable) e13);
                c3310g = null;
            } catch (InvocationTargetException e14) {
                f7463z.log(Level.FINE, "Unable to apply census stats", (Throwable) e14);
                c3310g = null;
            }
            if (c3310g != null) {
                arrayList.add(0, c3310g);
            }
        }
        return new C2650i2(new C2632f2(this, c2982g, c2722u2, c2455p3, c2722u3, arrayList));
    }
}
