package p232w7;

/* JADX INFO: renamed from: w7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3536b {

    /* JADX INFO: renamed from: a */
    public static final C3535a f10507a;

    static {
        Object obj;
        Class<?> cls;
        C3535a c3535a;
        try {
            cls = Class.forName("io.perfmark.impl.SecretPerfMarkImpl$PerfMarkImpl");
            obj = null;
        } catch (Throwable th) {
            obj = th;
            cls = null;
        }
        if (cls != null) {
            try {
                c3535a = (C3535a) cls.asSubclass(C3535a.class).getConstructor(C3537c.class).newInstance(C3535a.f10505a);
            } catch (Throwable th2) {
                obj = th2;
                c3535a = null;
            }
        } else {
            c3535a = null;
        }
        if (c3535a != null) {
            f10507a = c3535a;
        } else {
            f10507a = new C3535a();
        }
        if (obj != null) {
            try {
                if (Boolean.getBoolean("io.perfmark.PerfMark.debug")) {
                    Class<?> cls2 = Class.forName("java.util.logging.Logger");
                    Object objInvoke = cls2.getMethod("getLogger", String.class).invoke(null, AbstractC3536b.class.getName());
                    Class<?> cls3 = Class.forName("java.util.logging.Level");
                    cls2.getMethod("log", cls3, String.class, Throwable.class).invoke(objInvoke, cls3.getField("FINE").get(null), "Error during PerfMark.<clinit>", obj);
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m5640a() {
        f10507a.getClass();
    }

    /* JADX INFO: renamed from: b */
    public static void m5641b() {
        f10507a.getClass();
    }

    /* JADX INFO: renamed from: c */
    public static void m5642c() {
        f10507a.getClass();
    }
}
