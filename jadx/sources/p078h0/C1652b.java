package p078h0;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import com.bumptech.glide.AbstractC1031d;
import com.example.navistart.MainActivity;
import com.example.navistart.MyApplication;
import com.example.navistart.cores.AreaDisplayProxy;
import com.example.navistart.cores.CarCmdProxy;
import com.example.navistart.cores.ColorText;
import com.example.navistart.cores.InterC;
import com.example.navistart.cores.ProBroProxy;
import com.example.navistart.cores.ProLanProxy;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import okhttp3.OkHttpClient;
import p016b1.C0872m;
import p032c7.RunnableC1001e;
import p039d2.C1252h;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.C1328a0;
import p047e0.C1338c0;
import p047e0.C1402p;
import p047e0.C1440x1;
import p047e0.RunnableC1350e2;
import p062f5.RunnableC1556j;
import p088i0.InterfaceC1738b;
import p098j0.C1917c;
import p099j1.InterfaceC1942v;
import p110k1.C2028a;
import p120l.C2187d;
import p142n0.EnumC2468c;
import p165p2.C2962e;
import p206u0.C3277a;
import p209u3.p210p.c00008;
import p225w0.AbstractC3441a0;
import p225w0.InterfaceC3500y;
import p232w7.C3537c;

/* JADX INFO: renamed from: h0.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1652b {

    /* JADX INFO: renamed from: d */
    public static C3277a f4195d;

    /* JADX INFO: renamed from: e */
    public static C3537c f4196e;

    /* JADX INFO: renamed from: f */
    public static volatile C1652b f4197f;

    /* JADX INFO: renamed from: g */
    public static C2962e f4198g;

    /* JADX INFO: renamed from: h */
    public static C1651a f4199h;

    /* JADX INFO: renamed from: i */
    public static C1328a0 f4200i;

    /* JADX INFO: renamed from: j */
    public static C1252h f4201j;

    /* JADX INFO: renamed from: k */
    public static C1440x1 f4202k;

    /* JADX INFO: renamed from: l */
    public static C2187d f4203l;

    /* JADX INFO: renamed from: m */
    public static InterC f4204m;

    /* JADX INFO: renamed from: n */
    public static C1338c0 f4205n;

    /* JADX INFO: renamed from: o */
    public static C1917c f4206o;

    /* JADX INFO: renamed from: q */
    public static ContextWrapper f4208q;

    /* JADX INFO: renamed from: a */
    public C1402p f4213a;

    /* JADX INFO: renamed from: b */
    public C0872m f4214b;

    /* JADX INFO: renamed from: c */
    public static final String f4194c = AbstractC1387m.m2421h(new byte[]{-68, 75, -43, 8, 41, 39, 81, 39, -102, 88}, new byte[]{-1, 42, -89, 69, 72, 73, 48, 64});

    /* JADX INFO: renamed from: p */
    public static final Object f4207p = new Object();

    /* JADX INFO: renamed from: r */
    public static final ScheduledThreadPoolExecutor f4209r = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-92, 103, 112, -64, 22, 51, -20, 126, -120, 106, 88, -33, 8}, new byte[]{-23, 30, 49, -80, 102, 95, -123, 29}));

    /* JADX INFO: renamed from: s */
    public static final Object f4210s = new Object();

    /* JADX INFO: renamed from: t */
    public static volatile CountDownLatch f4211t = new CountDownLatch(1);

    /* JADX INFO: renamed from: u */
    public static volatile boolean f4212u = false;

    public C1652b(Context context, boolean z9) {
        m2745o();
        try {
            AbstractC1031d.f1075b = context;
            m2753b();
            m2755j();
            m2737f();
            AbstractC1031d.f1076c = m2755j();
            this.f4213a = new C1402p();
            m2756t();
            if (f4199h == null) {
                f4199h = new C1651a(context, this.f4213a.f3359a);
            }
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = f4209r;
            scheduledThreadPoolExecutor.execute(new RunnableC1350e2(this, context, z9, 1));
            this.f4214b = new C0872m(context);
            m2740i();
            m2741k();
            scheduledThreadPoolExecutor.execute(new RunnableC1556j(2, this));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: a */
    public static C1652b m2734a() {
        C1652b c1652b;
        boolean z9 = false;
        while (true) {
            try {
                f4211t.await();
                c1652b = f4197f;
                if (c1652b != null) {
                    break;
                }
                synchronized (C1652b.class) {
                    m2749s(false);
                }
            } catch (InterruptedException unused) {
                z9 = true;
            }
        }
        if (z9) {
            Thread.currentThread().interrupt();
        }
        return c1652b;
    }

    /* JADX INFO: renamed from: c */
    public static AreaDisplayProxy m2735c() {
        AreaDisplayProxy areaDisplayProxy;
        C1651a c1651a = f4199h;
        synchronized (c1651a) {
            try {
                if (c1651a.f4189e == null) {
                    c1651a.f4189e = (AreaDisplayProxy) c1651a.f4192h.f6708g.create(c1651a.f4185a);
                }
                areaDisplayProxy = c1651a.f4189e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return areaDisplayProxy;
    }

    /* JADX INFO: renamed from: d */
    public static CarCmdProxy m2736d() {
        CarCmdProxy carCmdProxy;
        C1651a c1651a = f4199h;
        synchronized (c1651a) {
            try {
                if (c1651a.f4186b == null) {
                    c1651a.f4186b = (CarCmdProxy) c1651a.f4192h.f6704c.create(c1651a.f4185a);
                }
                carCmdProxy = c1651a.f4186b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return carCmdProxy;
    }

    /* JADX INFO: renamed from: f */
    public static C1917c m2737f() {
        synchronized (f4207p) {
            try {
                if (f4206o == null) {
                    Log.d(f4194c, AbstractC1387m.m2421h(new byte[]{125, 56, 108, 40, -3, 79, 33, -93, 125, 28, 107, 27, -52, 79, 28, -82, 106}, new byte[]{19, 93, 27, 107, -100, Base64.padSymbol, 115, -42}));
                    f4206o = new C1917c(m2739h());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f4206o;
    }

    /* JADX INFO: renamed from: g */
    public static InterfaceC1942v m2738g() {
        InterfaceC1942v interfaceC1942v;
        C1651a c1651a = f4199h;
        synchronized (c1651a) {
            try {
                if (c1651a.f4193i == null) {
                    c1651a.f4193i = c1651a.f4192h.f6710i;
                }
                interfaceC1942v = c1651a.f4193i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return interfaceC1942v;
    }

    /* JADX INFO: renamed from: h */
    public static Context m2739h() {
        if (f4196e == null) {
            C3537c c3537c = new C3537c(7);
            System.loadLibrary(AbstractC1387m.m2421h(new byte[]{-8, -53, 43}, new byte[]{-101, -93, 78, -8, -37, 75, -27, 8}));
            f4196e = c3537c;
        }
        return MyApplication.f1461c;
    }

    /* JADX INFO: renamed from: i */
    public static C1328a0 m2740i() {
        synchronized (f4207p) {
            try {
                if (f4200i == null) {
                    Log.d(f4194c, AbstractC1387m.m2421h(new byte[]{-1, 124, 13, -113, -8, -29, 81, 106, -1, 120, 29, -94, -33}, new byte[]{-111, 25, 122, -57, -83, -89, 28, 11}));
                    f4200i = new C1328a0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f4200i;
    }

    /* JADX INFO: renamed from: k */
    public static C1440x1 m2741k() {
        synchronized (f4207p) {
            try {
                if (f4202k == null) {
                    Log.d(f4194c, AbstractC1387m.m2421h(new byte[]{-109, -35, 12, -98, -95, 25, -90, -9, -76, -42, 29, -68, -124, 24, -96, -20, -124}, new byte[]{-3, -72, 123, -45, -44, 106, -49, -108}));
                    f4202k = new C1440x1(m2739h());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f4202k;
    }

    /* JADX INFO: renamed from: l */
    public static InterfaceC1738b m2742l() {
        InterfaceC1738b interfaceC1738b;
        C1651a c1651a = f4199h;
        synchronized (c1651a) {
            try {
                if (c1651a.f4190f == null) {
                    c1651a.f4190f = (InterfaceC1738b) c1651a.f4192h.f6707f.create();
                }
                interfaceC1738b = c1651a.f4190f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return interfaceC1738b;
    }

    /* JADX INFO: renamed from: m */
    public static OkHttpClient m2743m() {
        C1338c0 c1338c0;
        synchronized (C1652b.class) {
            try {
                if (f4205n == null) {
                    f4205n = new C1338c0();
                }
                c1338c0 = f4205n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1338c0.f3192a;
    }

    /* JADX INFO: renamed from: n */
    public static ProLanProxy m2744n() {
        ProLanProxy proLanProxy;
        C1651a c1651a = f4199h;
        synchronized (c1651a) {
            try {
                if (c1651a.f4187c == null) {
                    c1651a.f4187c = (ProLanProxy) c1651a.f4192h.f6705d.create(c1651a.f4185a);
                }
                proLanProxy = c1651a.f4187c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return proLanProxy;
    }

    /* JADX INFO: renamed from: o */
    public static C3277a m2745o() {
        synchronized (f4207p) {
            try {
                if (f4195d == null) {
                    Log.d(f4194c, AbstractC1387m.m2421h(new byte[]{8, 80, -36, 93, -33, -68, 2, 101, 8, 82, -40, 106, -22, -70, 25, 116, 31}, new byte[]{102, 53, -85, 14, -70, -56, 118, 12}));
                    f4195d = new C3277a(m2739h());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f4195d;
    }

    /* JADX INFO: renamed from: p */
    public static C2028a m2746p() {
        C2028a c2028a;
        C1651a c1651a = f4199h;
        synchronized (c1651a) {
            try {
                if (c1651a.f4191g == null) {
                    c1651a.f4191g = (C2028a) c1651a.f4192h.f6709h.create();
                }
                c2028a = c1651a.f4191g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2028a;
    }

    /* JADX INFO: renamed from: q */
    public static InterfaceC3500y m2747q() {
        return AbstractC3441a0.m5369c(m2739h());
    }

    /* JADX INFO: renamed from: r */
    public static ProBroProxy m2748r() {
        ProBroProxy proBroProxy;
        C1651a c1651a = f4199h;
        synchronized (c1651a) {
            try {
                if (c1651a.f4188d == null) {
                    c1651a.f4188d = (ProBroProxy) c1651a.f4192h.f6706e.create(c1651a.f4185a);
                }
                proBroProxy = c1651a.f4188d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return proBroProxy;
    }

    /* JADX INFO: renamed from: s */
    public static synchronized void m2749s(boolean z9) {
        try {
            if (f4197f == null && !f4212u) {
                if (f4211t.getCount() == 0) {
                    f4211t = new CountDownLatch(1);
                }
                f4212u = true;
                f4209r.execute(new RunnableC1001e(z9, f4211t));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: renamed from: v */
    public static void m2750v(String str) {
        m2734a();
        C1252h c1252h = f4201j;
        c1252h.getClass();
        c1252h.m2254p(str, ColorText.BLACK);
    }

    /* JADX INFO: renamed from: w */
    public static void m2751w(String str, ColorText colorText) {
        m2734a();
        f4201j.m2254p(str, colorText);
    }

    /* JADX INFO: renamed from: x */
    public static synchronized void m2752x(boolean z9) {
        f4211t = new CountDownLatch(1);
        f4212u = false;
        f4197f = null;
        m2749s(z9);
    }

    /* JADX INFO: renamed from: b */
    public final C1252h m2753b() {
        synchronized (this) {
            synchronized (f4207p) {
                try {
                    if (f4201j == null) {
                        Log.d(f4194c, AbstractC1387m.m2421h(new byte[]{-49, -101, 57, 23, 52, 119, 12, -18, -58, -103, 43, 36}, new byte[]{-95, -2, 78, 86, 68, 7, 64, -127}));
                        f4201j = new C1252h();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4201j;
    }

    /* JADX INFO: renamed from: e */
    public final C1402p m2754e() {
        synchronized (f4207p) {
            try {
                if (this.f4213a == null) {
                    this.f4213a = new C1402p();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.f4213a;
    }

    /* JADX INFO: renamed from: j */
    public final InterC m2755j() {
        synchronized (this) {
            if (f4204m == null) {
                synchronized (C1652b.class) {
                    try {
                        if (f4204m == null) {
                            if (f4203l == null) {
                                f4203l = new C2187d(m2739h(), 9);
                            }
                            C2187d c2187d = f4203l;
                            InterC interC = (InterC) ((c00008) c2187d.f5706d).getP((Context) c2187d.f5705c);
                            f4204m = interC;
                            if (f4198g == null && interC != null) {
                                C2962e c2962e = new C2962e(7);
                                f4198g = c2962e;
                                interC.set(c2962e);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        return f4204m;
    }

    /* JADX INFO: renamed from: t */
    public final void m2756t() {
        C1402p c1402p = this.f4213a;
        String strLoadString = f4195d.loadString(AbstractC1387m.m2421h(new byte[]{80, 32, -25, 68, -63, -125, 83, 107, ByteCompanionObject.MAX_VALUE, 4}, new byte[]{19, 97, -75, 20, -77, -20, 53, 2}), null);
        c1402p.getClass();
        if (strLoadString == null || strLoadString.isEmpty() || AbstractC1031d.m1279i(EnumC2468c.class, strLoadString) == null) {
            strLoadString = EnumC2468c.values()[0].name();
        }
        c1402p.f3359a = (EnumC2468c) AbstractC1031d.m1279i(EnumC2468c.class, strLoadString);
        this.f4213a.f3363e = f4195d.loadInt(AbstractC1387m.m2421h(new byte[]{50, -124, -117, -105, 29, -42, 57, -106, 39, -105, -123}, new byte[]{70, -31, -32, -31, 114, -78, 102, -27}), 1);
        this.f4213a.f3362d = f4195d.loadInt(AbstractC1387m.m2421h(new byte[]{19, -26, -5, -74, 0, -108, 53, -17, 42, -30, -27, -82}, new byte[]{94, -121, -120, -34, 95, -6, 84, -99}), 0);
    }

    /* JADX INFO: renamed from: u */
    public final void m2757u() {
        int iLoadInt;
        if (MainActivity.m1426w()) {
            InterC interCM2755j = m2755j();
            if (interCM2755j != null ? interCM2755j.m1631bi() : false) {
                throw null;
            }
        }
        if (MainActivity.m1425v(m2739h())) {
            InterC interCM2755j2 = m2755j();
            if (interCM2755j2 != null ? interCM2755j2.m1631bi() : false) {
                throw null;
            }
        }
        m2734a();
        C1402p c1402p = this.f4213a;
        if (m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{19, 79, -79, 39, -51, 102, -93, -107, 59, 86, -118, 46, -5}, new byte[]{82, 58, -59, 72, -99, 20, -52, -13}), false)) {
            iLoadInt = 1;
        } else {
            iLoadInt = m2736d().getvod();
            if (iLoadInt <= 0) {
                iLoadInt = m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{46, -114, 4, 17, -12, -40, -33, -111, 59, -99, 10}, new byte[]{90, -21, 111, 103, -101, -68, ByteCompanionObject.MIN_VALUE, -30}), 1);
            }
        }
        m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{113, -111, 53, -96, 83, -77, 72, 88, 100, -126, 59}, new byte[]{5, -12, 94, -42, 60, -41, 23, 43}), iLoadInt);
        c1402p.f3363e = iLoadInt;
        this.f4213a.f3361c = m2736d().getstatengin();
        this.f4213a.f3362d = m2736d().getouttemp();
        if (f4195d.loadBoolean(AbstractC1387m.m2421h(new byte[]{-54, 49, -42, 29, 31, 44, -71, -78, -42, 59, -38, 22, 31, 58, -93}, new byte[]{-125, 117, -119, 94, 94, 126, -26, -31}) + f4195d.loadInt(AbstractC1387m.m2421h(new byte[]{-93, -96, 88, 27, -126, ByteCompanionObject.MIN_VALUE, 63, 69, -74, -77, 86}, new byte[]{-41, -59, 51, 109, -19, -28, 96, 54}), 1), false)) {
            this.f4213a.f3360b = m2736d().getsun();
        }
        if (this.f4213a.f3361c.booleanValue()) {
            this.f4213a.f3364f = m2736d().getSpeed();
        }
        if (MainActivity.m1426w()) {
            InterC interCM2755j3 = m2755j();
            if (interCM2755j3 != null ? interCM2755j3.m1631bi() : false) {
                throw null;
            }
        }
        if (MainActivity.m1425v(m2739h())) {
            InterC interCM2755j4 = m2755j();
            if (interCM2755j4 != null ? interCM2755j4.m1631bi() : false) {
                throw null;
            }
        }
    }
}
