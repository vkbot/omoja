package o7;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l3 implements r1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Logger f4339b = Logger.getLogger(l3.class.getName());
    public static final Constructor c;
    public static final Method d;
    public static final RuntimeException e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object[] f4340f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4341a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Method method;
        Constructor<?> constructor;
        try {
            Class<?> cls = Class.forName("java.util.concurrent.atomic.LongAdder");
            method = cls.getMethod("add", Long.TYPE);
            try {
                cls.getMethod("sum", null);
                Constructor<?>[] constructors = cls.getConstructors();
                int length = constructors.length;
                int i9 = 0;
                while (true) {
                    if (i9 >= length) {
                        constructor = null;
                        break;
                    }
                    constructor = constructors[i9];
                    if (constructor.getParameterTypes().length == 0) {
                        break;
                    } else {
                        i9++;
                    }
                }
                th = null;
            } catch (Throwable th) {
                th = th;
                f4339b.log(Level.FINE, "LongAdder can not be found via reflection, this is normal for JDK7 and below", th);
                constructor = null;
            }
        } catch (Throwable th2) {
            th = th2;
            method = null;
        }
        if (th != null || constructor == null) {
            c = null;
            d = null;
            e = new RuntimeException(th);
        } else {
            c = constructor;
            d = method;
            e = null;
        }
        f4340f = new Object[]{1L};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l3() {
        RuntimeException runtimeException = e;
        if (runtimeException != null) {
            throw runtimeException;
        }
        try {
            this.f4341a = c.newInstance(null);
        } catch (IllegalAccessException e6) {
            n0.b.w(e6);
            throw null;
        } catch (InstantiationException e9) {
            n0.b.w(e9);
            throw null;
        } catch (InvocationTargetException e10) {
            n0.b.w(e10);
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // o7.r1
    public final void a() {
        try {
            d.invoke(this.f4341a, f4340f);
        } catch (IllegalAccessException e6) {
            n0.b.w(e6);
        } catch (InvocationTargetException e9) {
            n0.b.w(e9);
        }
    }
}
