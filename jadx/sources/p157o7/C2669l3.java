package p157o7;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;
import p142n0.C2467b;

/* JADX INFO: renamed from: o7.l3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2669l3 implements InterfaceC2703r1 {

    /* JADX INFO: renamed from: b */
    public static final Logger f7614b = Logger.getLogger(C2669l3.class.getName());

    /* JADX INFO: renamed from: c */
    public static final Constructor f7615c;

    /* JADX INFO: renamed from: d */
    public static final Method f7616d;

    /* JADX INFO: renamed from: e */
    public static final RuntimeException f7617e;

    /* JADX INFO: renamed from: f */
    public static final Object[] f7618f;

    /* JADX INFO: renamed from: a */
    public final Object f7619a;

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
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        constructor = null;
                        break;
                    }
                    constructor = constructors[i10];
                    if (constructor.getParameterTypes().length == 0) {
                        break;
                    } else {
                        i10++;
                    }
                }
                th = null;
            } catch (Throwable th) {
                th = th;
                f7614b.log(Level.FINE, "LongAdder can not be found via reflection, this is normal for JDK7 and below", th);
                constructor = null;
            }
        } catch (Throwable th2) {
            th = th2;
            method = null;
        }
        if (th != null || constructor == null) {
            f7615c = null;
            f7616d = null;
            f7617e = new RuntimeException(th);
        } else {
            f7615c = constructor;
            f7616d = method;
            f7617e = null;
        }
        f7618f = new Object[]{1L};
    }

    public C2669l3() {
        RuntimeException runtimeException = f7617e;
        if (runtimeException != null) {
            throw runtimeException;
        }
        try {
            this.f7619a = f7615c.newInstance(null);
        } catch (IllegalAccessException e) {
            C2467b.m3833w(e);
            throw null;
        } catch (InstantiationException e6) {
            C2467b.m3833w(e6);
            throw null;
        } catch (InvocationTargetException e10) {
            C2467b.m3833w(e10);
            throw null;
        }
    }

    @Override // p157o7.InterfaceC2703r1
    /* JADX INFO: renamed from: a */
    public final void mo4136a() {
        try {
            f7616d.invoke(this.f7619a, f7618f);
        } catch (IllegalAccessException e) {
            C2467b.m3833w(e);
        } catch (InvocationTargetException e6) {
            C2467b.m3833w(e6);
        }
    }
}
