package w0;

import android.content.Context;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class a0 {
    public static boolean c;
    public static volatile y d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f5595a = e0.m.h(new byte[]{-14, 45, 67, 114, -93, -80, 76, 10, -29, 43, 68, 116, -103, -124, 64, 10, -32}, new byte[]{-124, 66, 42, 17, -58, -17, 41, 100});

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile z f5596b = z.f5831b;
    public static final ArrayList e = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static y a(Context context) {
        f();
        int iOrdinal = f5596b.ordinal();
        if (iOrdinal == 1) {
            if (a.f(context)) {
                return new o(context);
            }
            f5596b = z.f5831b;
            return new g(context);
        }
        if (iOrdinal != 2) {
            return new g(context);
        }
        if (a.f(context)) {
            return new x(context);
        }
        f5596b = z.f5831b;
        return new g(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static synchronized void b() {
        if (d != null) {
            d.b();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static synchronized y c(Context context) {
        try {
            if (d == null) {
                d = a(context.getApplicationContext());
                g(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static synchronized z d() {
        f();
        return f5596b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean e() {
        return f5596b == z.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void f() {
        if (c) {
            return;
        }
        try {
            f5596b = z.valueOf(h0.b.o().loadString(f5595a, z.f5831b.name()));
        } catch (IllegalArgumentException unused) {
            f5596b = z.f5831b;
        }
        c = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static synchronized void g(Context context) {
        b();
        if (!h0.b.o().loadBoolean(e0.m.h(new byte[]{-32, 120, -117, 84, -25, 52, 108, 107, -27, 105, -106, 110, -39, 44, 111, 93, -64, 95}, new byte[]{-109, 8, -30, 11, -122, 95, 24, 2}), false)) {
            c(context).c();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static synchronized void h(Context context, z zVar) {
        if (zVar == null) {
            return;
        }
        try {
            if (zVar == z.c || zVar == z.d) {
                if (!a.f(context)) {
                    zVar = z.f5831b;
                }
            }
            if (c && f5596b == zVar && d != null) {
                return;
            }
            b();
            if (d instanceof x) {
                ((x) d).t();
            }
            f5596b = zVar;
            c = true;
            h0.b.o().saveString(f5595a, zVar.name());
            d = null;
            g(context);
        } catch (Throwable th) {
            throw th;
        }
    }
}
