package com.woha.pogoda;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.h;
import com.google.protobuf.q;
import e0.j2;
import e0.m;
import e0.p3;
import e0.u1;
import e0.w;
import e0.x1;
import java.util.Locale;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import k7.a;
import k7.b;
import k7.c;
import k7.d;
import k7.e;
import kotlin.jvm.internal.ByteCompanionObject;
import n0.f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class WeatherService extends Service {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f1624f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static Location f1625g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static c f1626h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static r5.c f1627i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile b f1628j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Location f1629k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static String f1630l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e f1631b;
    public WindowManager c;
    public final ScheduledThreadPoolExecutor d = w.c(-1, m.h(new byte[]{-123, -36, 46, -76, 10, -37, -33, 23, -73, -53, 57, -87, 1, -37}, new byte[]{-46, -71, 79, -64, 98, -66, -83, 68}));
    public ScheduledFuture e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static synchronized c a() {
        try {
            String strB = b();
            if (f1626h == null || !strB.equals(f1630l)) {
                if (strB.equals(f.d.name())) {
                    f1626h = new k7.f();
                } else if (strB.equals(f.e.name())) {
                    f1626h = new a();
                } else {
                    f1626h = new r5.c(23, new c[]{new k7.f(), new a()});
                }
                f1630l = strB;
            }
        } catch (Throwable th) {
            throw th;
        }
        return f1626h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String b() {
        return h0.b.o().loadString(m.h(new byte[]{-1, -59, 55, 46, -9, 101, -122, -64, -4, -38, 57, 47, -3, 97, -85, -24, -27, -47, 57, 31, -23, 114, -101}, new byte[]{-116, -75, 94, 64, -103, 0, -12, -97}), f.c.name());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b c() {
        if (f1628j == null) {
            f1628j = new b(m.h(new byte[]{-80, 115, -9}, new byte[]{-2, 92, -74, -13, -6, -114, -56, 84}), "", "", 2131165760);
        }
        return f1628j;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean d(double d, double d9, h hVar) {
        if (!Double.isFinite(d) || !Double.isFinite(d9) || d < -90.0d || d > 90.0d || d9 < -180.0d || d9 > 180.0d) {
            return false;
        }
        w.c(-1, m.h(new byte[]{0, 7, ByteCompanionObject.MIN_VALUE, 53, -117, 19, 42, -112, 50, 16, -105, 40, ByteCompanionObject.MIN_VALUE, 19}, new byte[]{87, 98, -31, 65, -29, 118, 88, -61})).execute(new j2(hVar, String.format(Locale.US, m.h(new byte[]{42, 103, -4, 19, -91, -52, -69, 40, 105}, new byte[]{15, 73, -50, 117, -119, -23, -107, 26}), Double.valueOf(d), Double.valueOf(d9))));
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void e(Context context) {
        if (h0.b.o().loadBoolean(m.h(new byte[]{43, 97, -40, 46, -117, -55, 84, 86, 57, 73, -16, 55, ByteCompanionObject.MIN_VALUE, -55, 100, 93, 54, 121, -31, 56}, new byte[]{88, 22, -121, 94, -28, -82, 59, 50}), false)) {
            context.startService(new Intent(context, (Class<?>) WeatherService.class));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void g(b bVar) {
        f1628j = bVar;
        r5.c cVar = f1627i;
        if (cVar != null) {
            WeatherService weatherService = (WeatherService) cVar.c;
            if (f1628j == null) {
                f1628j = new b(m.h(new byte[]{-106, -71, -119}, new byte[]{-40, -106, -56, -87, 94, -40, -95, 72}), "", "", 2131165760);
            }
            if (!m.h(new byte[]{-3, -75, -62}, new byte[]{-77, -102, -125, -93, 113, -10, -26, -66}).equals(bVar.f3200a) && !"".equals(bVar.f3200a)) {
                f1628j.f3200a = bVar.f3200a;
            }
            if (!"".equals(bVar.f3201b)) {
                f1628j.f3201b = bVar.f3201b;
            }
            int i9 = bVar.d;
            if (i9 == -1) {
                f1628j.d = 2131165760;
            } else {
                f1628j.d = i9;
            }
            if (weatherService.f1631b != null) {
                new Handler(Looper.getMainLooper()).post(new d(weatherService, 2));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void h(boolean z8) {
        r5.c cVar = f1627i;
        if (cVar != null) {
            WeatherService weatherService = (WeatherService) cVar.c;
            Boolean boolValueOf = Boolean.valueOf(z8);
            if (weatherService.f1631b != null) {
                new Handler(Looper.getMainLooper()).post(new j2(14, weatherService, boolValueOf));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f() {
        Boolean boolValueOf;
        Location location;
        ScheduledFuture scheduledFuture = this.e;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.e.cancel(true);
        }
        StringBuilder sb = new StringBuilder();
        u0.a aVarO = h0.b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        q.s(bArr, aVarO, "", sb);
        q.r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strG = q.g(sb, x1.f1989q);
        u0.a aVarO2 = h0.b.o();
        byte[] bArr2 = m.f1892f;
        if (q.w(bArr2, aVarO2, "", strG)) {
            boolValueOf = Boolean.valueOf(q.d(Long.MAX_VALUE, h0.b.a().j()) < Long.parseLong(new String(q.x(new byte[]{87}, new byte[]{103, 34, -117, 17, -102, 33, 38, 30}, h0.b.o(), q.h(m.f1893g, h0.b.o(), new String(bArr2)), 0))));
        } else {
            boolValueOf = Boolean.FALSE;
        }
        if (boolValueOf.booleanValue()) {
            Location location2 = f1625g;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.d;
            if (location2 == null) {
                this.e = scheduledThreadPoolExecutor.schedule(new d(this, 0), 10000L, timeUnit);
                return;
            }
            if (!b().equals(f.f3844f.name()) && (location = f1625g) != null) {
                d(location.getLatitude(), location.getLongitude(), null);
            }
            this.e = scheduledThreadPoolExecutor.schedule(new d(this, 0), 1800000L, timeUnit);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        a();
        f1624f = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        f1627i = null;
        e eVar = this.f1631b;
        if (eVar != null) {
            a.a.v(this.c, eVar);
            this.f1631b = null;
        }
        f1624f = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        super.onStartCommand(intent, i9, i10);
        e eVar = this.f1631b;
        if (eVar != null) {
            a.a.v(this.c, eVar);
            this.f1631b = null;
        }
        u1 u1Var = new u1(this, m.h(new byte[]{-12, 18, -70, 124, 87, -93, 74, -109, -22, 18, -84}, new byte[]{-125, 119, -37, 8, 63, -58, 56, -59}));
        e eVar2 = new e(this);
        eVar2.f3205g = Boolean.FALSE;
        LayoutInflater.from(this).inflate(2131493152, (ViewGroup) eVar2, true);
        eVar2.f3203b = (TextView) eVar2.findViewById(2131297611);
        eVar2.c = (TextView) eVar2.findViewById(2131297612);
        eVar2.d = (ImageView) eVar2.findViewById(2131296854);
        eVar2.e = (LinearLayout) eVar2.findViewById(2131297747);
        eVar2.f3204f = (ProgressBar) eVar2.findViewById(2131297215);
        eVar2.setOrientation(1);
        eVar2.setVisibility(0);
        this.f1631b = eVar2;
        f1627i = new r5.c(24, this);
        h0.b.a();
        WindowManager windowManagerF = h0.b.g().b().f(this.f1631b, u1Var.c);
        this.c = windowManagerF;
        u1Var.a(this.f1631b, windowManagerF, new d(this, 1));
        u1Var.d();
        f();
        return 1;
    }
}
