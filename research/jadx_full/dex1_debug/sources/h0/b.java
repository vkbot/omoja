package h0;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import b1.m;
import com.example.navistart.MainActivity;
import com.example.navistart.MyApplication;
import com.example.navistart.cores.AreaDisplayProxy;
import com.example.navistart.cores.CarCmdProxy;
import com.example.navistart.cores.ColorText;
import com.example.navistart.cores.InterC;
import com.example.navistart.cores.ProBroProxy;
import com.example.navistart.cores.ProLanProxy;
import d2.h;
import e0.a0;
import e0.c0;
import e0.e2;
import e0.p;
import e0.w;
import e0.x1;
import f5.j;
import j1.v;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import l.d;
import okhttp3.OkHttpClient;
import p2.e;
import u3.p.c00008;
import w0.y;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {
    public static u0.a d;
    public static w7.c e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile b f2420f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static e f2421g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static a f2422h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static a0 f2423i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static h f2424j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static x1 f2425k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static d f2426l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static InterC f2427m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static c0 f2428n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static j0.c f2429o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static ContextWrapper f2431q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public p f2434a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public m f2435b;
    public static final String c = e0.m.h(new byte[]{-68, 75, -43, 8, 41, 39, 81, 39, -102, 88}, new byte[]{-1, 42, -89, 69, 72, 73, 48, 64});

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Object f2430p = new Object();
    public static final ScheduledThreadPoolExecutor r = w.c(-1, e0.m.h(new byte[]{-92, 103, 112, -64, 22, 51, -20, 126, -120, 106, 88, -33, 8}, new byte[]{-23, 30, 49, -80, 102, 95, -123, 29}));

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final Object f2432s = new Object();
    public static volatile CountDownLatch t = new CountDownLatch(1);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static volatile boolean f2433u = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(Context context, boolean z8) {
        o();
        try {
            com.bumptech.glide.d.f554b = context;
            b();
            j();
            f();
            com.bumptech.glide.d.c = j();
            this.f2434a = new p();
            t();
            if (f2422h == null) {
                f2422h = new a(context, this.f2434a.f1918a);
            }
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = r;
            scheduledThreadPoolExecutor.execute(new e2(this, context, z8, 1));
            this.f2435b = new m(context);
            i();
            k();
            scheduledThreadPoolExecutor.execute(new j(2, this));
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b a() {
        b bVar;
        boolean z8 = false;
        while (true) {
            try {
                t.await();
                bVar = f2420f;
                if (bVar != null) {
                    break;
                }
                synchronized (b.class) {
                    s(false);
                }
            } catch (InterruptedException unused) {
                z8 = true;
            }
        }
        if (z8) {
            Thread.currentThread().interrupt();
        }
        return bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static AreaDisplayProxy c() {
        AreaDisplayProxy areaDisplayProxy;
        a aVar = f2422h;
        synchronized (aVar) {
            try {
                if (aVar.e == null) {
                    aVar.e = (AreaDisplayProxy) aVar.f2418h.f3795g.create(aVar.f2414a);
                }
                areaDisplayProxy = aVar.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return areaDisplayProxy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CarCmdProxy d() {
        CarCmdProxy carCmdProxy;
        a aVar = f2422h;
        synchronized (aVar) {
            try {
                if (aVar.f2415b == null) {
                    aVar.f2415b = (CarCmdProxy) aVar.f2418h.c.create(aVar.f2414a);
                }
                carCmdProxy = aVar.f2415b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return carCmdProxy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static j0.c f() {
        synchronized (f2430p) {
            try {
                if (f2429o == null) {
                    Log.d(c, e0.m.h(new byte[]{125, 56, 108, 40, -3, 79, 33, -93, 125, 28, 107, 27, -52, 79, 28, -82, 106}, new byte[]{19, 93, 27, 107, -100, Base64.padSymbol, 115, -42}));
                    f2429o = new j0.c(h());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f2429o;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static v g() {
        v vVar;
        a aVar = f2422h;
        synchronized (aVar) {
            try {
                if (aVar.f2419i == null) {
                    aVar.f2419i = aVar.f2418h.f3797i;
                }
                vVar = aVar.f2419i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return vVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Context h() {
        if (e == null) {
            w7.c cVar = new w7.c(7);
            System.loadLibrary(e0.m.h(new byte[]{-8, -53, 43}, new byte[]{-101, -93, 78, -8, -37, 75, -27, 8}));
            e = cVar;
        }
        return MyApplication.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a0 i() {
        synchronized (f2430p) {
            try {
                if (f2423i == null) {
                    Log.d(c, e0.m.h(new byte[]{-1, 124, 13, -113, -8, -29, 81, 106, -1, 120, 29, -94, -33}, new byte[]{-111, 25, 122, -57, -83, -89, 28, 11}));
                    f2423i = new a0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f2423i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static x1 k() {
        synchronized (f2430p) {
            try {
                if (f2425k == null) {
                    Log.d(c, e0.m.h(new byte[]{-109, -35, 12, -98, -95, 25, -90, -9, -76, -42, 29, -68, -124, 24, -96, -20, -124}, new byte[]{-3, -72, 123, -45, -44, 106, -49, -108}));
                    f2425k = new x1(h());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f2425k;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static i0.b l() {
        i0.b bVar;
        a aVar = f2422h;
        synchronized (aVar) {
            try {
                if (aVar.f2416f == null) {
                    aVar.f2416f = (i0.b) aVar.f2418h.f3794f.create();
                }
                bVar = aVar.f2416f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OkHttpClient m() {
        c0 c0Var;
        synchronized (b.class) {
            try {
                if (f2428n == null) {
                    f2428n = new c0();
                }
                c0Var = f2428n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0Var.f1816a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ProLanProxy n() {
        ProLanProxy proLanProxy;
        a aVar = f2422h;
        synchronized (aVar) {
            try {
                if (aVar.c == null) {
                    aVar.c = (ProLanProxy) aVar.f2418h.d.create(aVar.f2414a);
                }
                proLanProxy = aVar.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return proLanProxy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static u0.a o() {
        synchronized (f2430p) {
            try {
                if (d == null) {
                    Log.d(c, e0.m.h(new byte[]{8, 80, -36, 93, -33, -68, 2, 101, 8, 82, -40, 106, -22, -70, 25, 116, 31}, new byte[]{102, 53, -85, 14, -70, -56, 118, 12}));
                    d = new u0.a(h());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static k1.a p() {
        k1.a aVar;
        a aVar2 = f2422h;
        synchronized (aVar2) {
            try {
                if (aVar2.f2417g == null) {
                    aVar2.f2417g = (k1.a) aVar2.f2418h.f3796h.create();
                }
                aVar = aVar2.f2417g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static y q() {
        return w0.a0.c(h());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ProBroProxy r() {
        ProBroProxy proBroProxy;
        a aVar = f2422h;
        synchronized (aVar) {
            try {
                if (aVar.d == null) {
                    aVar.d = (ProBroProxy) aVar.f2418h.e.create(aVar.f2414a);
                }
                proBroProxy = aVar.d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return proBroProxy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static synchronized void s(boolean z8) {
        try {
            if (f2420f == null && !f2433u) {
                if (t.getCount() == 0) {
                    t = new CountDownLatch(1);
                }
                f2433u = true;
                r.execute(new c7.e(z8, t));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void v(String str) {
        a();
        h hVar = f2424j;
        hVar.getClass();
        hVar.p(str, ColorText.BLACK);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void w(String str, ColorText colorText) {
        a();
        f2424j.p(str, colorText);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static synchronized void x(boolean z8) {
        t = new CountDownLatch(1);
        f2433u = false;
        f2420f = null;
        s(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final h b() {
        synchronized (this) {
            synchronized (f2430p) {
                try {
                    if (f2424j == null) {
                        Log.d(c, e0.m.h(new byte[]{-49, -101, 57, 23, 52, 119, 12, -18, -58, -103, 43, 36}, new byte[]{-95, -2, 78, 86, 68, 7, 64, -127}));
                        f2424j = new h();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2424j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final p e() {
        synchronized (f2430p) {
            try {
                if (this.f2434a == null) {
                    this.f2434a = new p();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.f2434a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final InterC j() {
        synchronized (this) {
            if (f2427m == null) {
                synchronized (b.class) {
                    try {
                        if (f2427m == null) {
                            if (f2426l == null) {
                                f2426l = new d(h(), 9);
                            }
                            d dVar = f2426l;
                            InterC interC = (InterC) ((c00008) dVar.d).getP((Context) dVar.c);
                            f2427m = interC;
                            if (f2421g == null && interC != null) {
                                e eVar = new e(7);
                                f2421g = eVar;
                                interC.set(eVar);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        return f2427m;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void t() {
        p pVar = this.f2434a;
        String strLoadString = d.loadString(e0.m.h(new byte[]{80, 32, -25, 68, -63, -125, 83, 107, ByteCompanionObject.MAX_VALUE, 4}, new byte[]{19, 97, -75, 20, -77, -20, 53, 2}), null);
        pVar.getClass();
        if (strLoadString == null || strLoadString.isEmpty() || com.bumptech.glide.d.i(n0.c.class, strLoadString) == null) {
            strLoadString = n0.c.values()[0].name();
        }
        pVar.f1918a = (n0.c) com.bumptech.glide.d.i(n0.c.class, strLoadString);
        this.f2434a.e = d.loadInt(e0.m.h(new byte[]{50, -124, -117, -105, 29, -42, 57, -106, 39, -105, -123}, new byte[]{70, -31, -32, -31, 114, -78, 102, -27}), 1);
        this.f2434a.d = d.loadInt(e0.m.h(new byte[]{19, -26, -5, -74, 0, -108, 53, -17, 42, -30, -27, -82}, new byte[]{94, -121, -120, -34, 95, -6, 84, -99}), 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void u() {
        int iLoadInt;
        if (MainActivity.w()) {
            InterC interCJ = j();
            if (interCJ != null ? interCJ.bi() : false) {
                throw null;
            }
        }
        if (MainActivity.v(h())) {
            InterC interCJ2 = j();
            if (interCJ2 != null ? interCJ2.bi() : false) {
                throw null;
            }
        }
        a();
        p pVar = this.f2434a;
        if (o().loadBoolean(e0.m.h(new byte[]{19, 79, -79, 39, -51, 102, -93, -107, 59, 86, -118, 46, -5}, new byte[]{82, 58, -59, 72, -99, 20, -52, -13}), false)) {
            iLoadInt = 1;
        } else {
            iLoadInt = d().getvod();
            if (iLoadInt <= 0) {
                iLoadInt = o().loadInt(e0.m.h(new byte[]{46, -114, 4, 17, -12, -40, -33, -111, 59, -99, 10}, new byte[]{90, -21, 111, 103, -101, -68, ByteCompanionObject.MIN_VALUE, -30}), 1);
            }
        }
        o().saveInt(e0.m.h(new byte[]{113, -111, 53, -96, 83, -77, 72, 88, 100, -126, 59}, new byte[]{5, -12, 94, -42, 60, -41, 23, 43}), iLoadInt);
        pVar.e = iLoadInt;
        this.f2434a.c = d().getstatengin();
        this.f2434a.d = d().getouttemp();
        if (d.loadBoolean(e0.m.h(new byte[]{-54, 49, -42, 29, 31, 44, -71, -78, -42, 59, -38, 22, 31, 58, -93}, new byte[]{-125, 117, -119, 94, 94, 126, -26, -31}) + d.loadInt(e0.m.h(new byte[]{-93, -96, 88, 27, -126, ByteCompanionObject.MIN_VALUE, 63, 69, -74, -77, 86}, new byte[]{-41, -59, 51, 109, -19, -28, 96, 54}), 1), false)) {
            this.f2434a.f1919b = d().getsun();
        }
        if (this.f2434a.c.booleanValue()) {
            this.f2434a.f1920f = d().getSpeed();
        }
        if (MainActivity.w()) {
            InterC interCJ3 = j();
            if (interCJ3 != null ? interCJ3.bi() : false) {
                throw null;
            }
        }
        if (MainActivity.v(h())) {
            InterC interCJ4 = j();
            if (interCJ4 != null ? interCJ4.bi() : false) {
                throw null;
            }
        }
    }
}
