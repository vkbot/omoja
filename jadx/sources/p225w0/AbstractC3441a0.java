package p225w0;

import android.content.Context;
import java.util.ArrayList;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: renamed from: w0.a0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3441a0 {

    /* JADX INFO: renamed from: c */
    public static boolean f9923c;

    /* JADX INFO: renamed from: d */
    public static volatile InterfaceC3500y f9924d;

    /* JADX INFO: renamed from: a */
    public static final String f9921a = AbstractC1387m.m2421h(new byte[]{-14, 45, 67, 114, -93, -80, 76, 10, -29, 43, 68, 116, -103, -124, 64, 10, -32}, new byte[]{-124, 66, 42, 17, -58, -17, 41, 100});

    /* JADX INFO: renamed from: b */
    public static volatile EnumC3502z f9922b = EnumC3502z.f10326b;

    /* JADX INFO: renamed from: e */
    public static final ArrayList f9925e = new ArrayList();

    /* JADX INFO: renamed from: a */
    public static InterfaceC3500y m5367a(Context context) {
        m5372f();
        int iOrdinal = f9922b.ordinal();
        if (iOrdinal == 1) {
            if (AbstractC3440a.m5365f(context)) {
                return new C3480o(context);
            }
            f9922b = EnumC3502z.f10326b;
            return new C3458g(context);
        }
        if (iOrdinal != 2) {
            return new C3458g(context);
        }
        if (AbstractC3440a.m5365f(context)) {
            return new C3498x(context);
        }
        f9922b = EnumC3502z.f10326b;
        return new C3458g(context);
    }

    /* JADX INFO: renamed from: b */
    public static synchronized void m5368b() {
        if (f9924d != null) {
            f9924d.mo5403b();
        }
    }

    /* JADX INFO: renamed from: c */
    public static synchronized InterfaceC3500y m5369c(Context context) {
        try {
            if (f9924d == null) {
                f9924d = m5367a(context.getApplicationContext());
                m5373g(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f9924d;
    }

    /* JADX INFO: renamed from: d */
    public static synchronized EnumC3502z m5370d() {
        m5372f();
        return f9922b;
    }

    /* JADX INFO: renamed from: e */
    public static boolean m5371e() {
        return f9922b == EnumC3502z.f10328d;
    }

    /* JADX INFO: renamed from: f */
    public static void m5372f() {
        if (f9923c) {
            return;
        }
        try {
            f9922b = EnumC3502z.valueOf(C1652b.m2745o().loadString(f9921a, EnumC3502z.f10326b.name()));
        } catch (IllegalArgumentException unused) {
            f9922b = EnumC3502z.f10326b;
        }
        f9923c = true;
    }

    /* JADX INFO: renamed from: g */
    public static synchronized void m5373g(Context context) {
        m5368b();
        if (!C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-32, 120, -117, 84, -25, 52, 108, 107, -27, 105, -106, 110, -39, 44, 111, 93, -64, 95}, new byte[]{-109, 8, -30, 11, -122, 95, 24, 2}), false)) {
            m5369c(context).mo5404c();
        }
    }

    /* JADX INFO: renamed from: h */
    public static synchronized void m5374h(Context context, EnumC3502z enumC3502z) {
        if (enumC3502z == null) {
            return;
        }
        try {
            if (enumC3502z == EnumC3502z.f10327c || enumC3502z == EnumC3502z.f10328d) {
                if (!AbstractC3440a.m5365f(context)) {
                    enumC3502z = EnumC3502z.f10326b;
                }
            }
            if (f9923c && f9922b == enumC3502z && f9924d != null) {
                return;
            }
            m5368b();
            if (f9924d instanceof C3498x) {
                ((C3498x) f9924d).m5553t();
            }
            f9922b = enumC3502z;
            f9923c = true;
            C1652b.m2745o().saveString(f9921a, enumC3502z.name());
            f9924d = null;
            m5373g(context);
        } catch (Throwable th) {
            throw th;
        }
    }
}
