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
import androidx.fragment.app.C0566h;
import com.example.navistart.R;
import com.google.protobuf.AbstractC1178q;
import java.util.Locale;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import p000a.AbstractC0000a;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.C1428u1;
import p047e0.C1440x1;
import p047e0.RunnableC1375j2;
import p078h0.C1652b;
import p115k7.C2051a;
import p115k7.C2052b;
import p115k7.C2055e;
import p115k7.C2056f;
import p115k7.InterfaceC2053c;
import p115k7.RunnableC2054d;
import p142n0.EnumC2471f;
import p184r5.C3105c;
import p206u0.C3277a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class WeatherService extends Service {

    /* JADX INFO: renamed from: f */
    public static boolean f2877f;

    /* JADX INFO: renamed from: g */
    public static Location f2878g;

    /* JADX INFO: renamed from: h */
    public static InterfaceC2053c f2879h;

    /* JADX INFO: renamed from: i */
    public static C3105c f2880i;

    /* JADX INFO: renamed from: j */
    public static volatile C2052b f2881j;

    /* JADX INFO: renamed from: k */
    public static Location f2882k;

    /* JADX INFO: renamed from: l */
    public static String f2883l;

    /* JADX INFO: renamed from: b */
    public C2055e f2884b;

    /* JADX INFO: renamed from: c */
    public WindowManager f2885c;

    /* JADX INFO: renamed from: d */
    public final ScheduledThreadPoolExecutor f2886d = AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-123, -36, 46, -76, 10, -37, -33, 23, -73, -53, 57, -87, 1, -37}, new byte[]{-46, -71, 79, -64, 98, -66, -83, 68}));

    /* JADX INFO: renamed from: e */
    public ScheduledFuture f2887e;

    /* JADX INFO: renamed from: a */
    public static synchronized InterfaceC2053c m2203a() {
        try {
            String strM2204b = m2204b();
            if (f2879h == null || !strM2204b.equals(f2883l)) {
                if (strM2204b.equals(EnumC2471f.f6804d.name())) {
                    f2879h = new C2056f();
                } else if (strM2204b.equals(EnumC2471f.f6805e.name())) {
                    f2879h = new C2051a();
                } else {
                    f2879h = new C3105c(23, new InterfaceC2053c[]{new C2056f(), new C2051a()});
                }
                f2883l = strM2204b;
            }
        } catch (Throwable th) {
            throw th;
        }
        return f2879h;
    }

    /* JADX INFO: renamed from: b */
    public static String m2204b() {
        return C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{-1, -59, 55, 46, -9, 101, -122, -64, -4, -38, 57, 47, -3, 97, -85, -24, -27, -47, 57, 31, -23, 114, -101}, new byte[]{-116, -75, 94, 64, -103, 0, -12, -97}), EnumC2471f.f6803c.name());
    }

    /* JADX INFO: renamed from: c */
    public static C2052b m2205c() {
        if (f2881j == null) {
            f2881j = new C2052b(AbstractC1387m.m2421h(new byte[]{-80, 115, -9}, new byte[]{-2, 92, -74, -13, -6, -114, -56, 84}), "", "", R.drawable.unknown);
        }
        return f2881j;
    }

    /* JADX INFO: renamed from: d */
    public static boolean m2206d(double d, double d10, C0566h c0566h) {
        if (!Double.isFinite(d) || !Double.isFinite(d10) || d < -90.0d || d > 90.0d || d10 < -180.0d || d10 > 180.0d) {
            return false;
        }
        AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{0, 7, ByteCompanionObject.MIN_VALUE, 53, -117, 19, 42, -112, 50, 16, -105, 40, ByteCompanionObject.MIN_VALUE, 19}, new byte[]{87, 98, -31, 65, -29, 118, 88, -61})).execute(new RunnableC1375j2(c0566h, String.format(Locale.US, AbstractC1387m.m2421h(new byte[]{42, 103, -4, 19, -91, -52, -69, 40, 105}, new byte[]{15, 73, -50, 117, -119, -23, -107, 26}), Double.valueOf(d), Double.valueOf(d10))));
        return true;
    }

    /* JADX INFO: renamed from: e */
    public static void m2207e(Context context) {
        if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{43, 97, -40, 46, -117, -55, 84, 86, 57, 73, -16, 55, ByteCompanionObject.MIN_VALUE, -55, 100, 93, 54, 121, -31, 56}, new byte[]{88, 22, -121, 94, -28, -82, 59, 50}), false)) {
            context.startService(new Intent(context, (Class<?>) WeatherService.class));
        }
    }

    /* JADX INFO: renamed from: g */
    public static void m2208g(C2052b c2052b) {
        f2881j = c2052b;
        C3105c c3105c = f2880i;
        if (c3105c != null) {
            WeatherService weatherService = (WeatherService) c3105c.f8867c;
            if (f2881j == null) {
                f2881j = new C2052b(AbstractC1387m.m2421h(new byte[]{-106, -71, -119}, new byte[]{-40, -106, -56, -87, 94, -40, -95, 72}), "", "", R.drawable.unknown);
            }
            if (!AbstractC1387m.m2421h(new byte[]{-3, -75, -62}, new byte[]{-77, -102, -125, -93, 113, -10, -26, -66}).equals(c2052b.f5605a) && !"".equals(c2052b.f5605a)) {
                f2881j.f5605a = c2052b.f5605a;
            }
            if (!"".equals(c2052b.f5606b)) {
                f2881j.f5606b = c2052b.f5606b;
            }
            int i10 = c2052b.f5608d;
            if (i10 == -1) {
                f2881j.f5608d = R.drawable.unknown;
            } else {
                f2881j.f5608d = i10;
            }
            if (weatherService.f2884b != null) {
                new Handler(Looper.getMainLooper()).post(new RunnableC2054d(weatherService, 2));
            }
        }
    }

    /* JADX INFO: renamed from: h */
    public static void m2209h(boolean z9) {
        C3105c c3105c = f2880i;
        if (c3105c != null) {
            WeatherService weatherService = (WeatherService) c3105c.f8867c;
            Boolean boolValueOf = Boolean.valueOf(z9);
            if (weatherService.f2884b != null) {
                new Handler(Looper.getMainLooper()).post(new RunnableC1375j2(14, weatherService, boolValueOf));
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m2210f() {
        Boolean boolValueOf;
        Location location;
        ScheduledFuture scheduledFuture = this.f2887e;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.f2887e.cancel(true);
        }
        StringBuilder sb = new StringBuilder();
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        AbstractC1178q.m2085s(bArr, c3277aM2745o, "", sb);
        AbstractC1178q.m2084r(new byte[]{108, 105, 99, 116, 95, 114, 105, 117, 101}, sb);
        String strM2073g = AbstractC1178q.m2073g(sb, C1440x1.f3470q);
        C3277a c3277aM2745o2 = C1652b.m2745o();
        byte[] bArr2 = AbstractC1387m.f3318f;
        if (AbstractC1178q.m2089w(bArr2, c3277aM2745o2, "", strM2073g)) {
            boolValueOf = Boolean.valueOf(AbstractC1178q.m2070d(Long.MAX_VALUE, C1652b.m2734a().m2755j()) < Long.parseLong(new String(AbstractC1178q.m2090x(new byte[]{87}, new byte[]{103, 34, -117, 17, -102, 33, 38, 30}, C1652b.m2745o(), AbstractC1178q.m2074h(AbstractC1387m.f3319g, C1652b.m2745o(), new String(bArr2)), 0))));
        } else {
            boolValueOf = Boolean.FALSE;
        }
        if (boolValueOf.booleanValue()) {
            Location location2 = f2878g;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f2886d;
            if (location2 == null) {
                this.f2887e = scheduledThreadPoolExecutor.schedule(new RunnableC2054d(this, 0), 10000L, timeUnit);
                return;
            }
            if (!m2204b().equals(EnumC2471f.f6806f.name()) && (location = f2878g) != null) {
                m2206d(location.getLatitude(), location.getLongitude(), null);
            }
            this.f2887e = scheduledThreadPoolExecutor.schedule(new RunnableC2054d(this, 0), 1800000L, timeUnit);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        m2203a();
        f2877f = true;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        f2880i = null;
        C2055e c2055e = this.f2884b;
        if (c2055e != null) {
            AbstractC0000a.m21v(this.f2885c, c2055e);
            this.f2884b = null;
        }
        f2877f = false;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        super.onStartCommand(intent, i10, i11);
        C2055e c2055e = this.f2884b;
        if (c2055e != null) {
            AbstractC0000a.m21v(this.f2885c, c2055e);
            this.f2884b = null;
        }
        C1428u1 c1428u1 = new C1428u1(this, AbstractC1387m.m2421h(new byte[]{-12, 18, -70, 124, 87, -93, 74, -109, -22, 18, -84}, new byte[]{-125, 119, -37, 8, 63, -58, 56, -59}));
        C2055e c2055e2 = new C2055e(this);
        c2055e2.f5616g = Boolean.FALSE;
        LayoutInflater.from(this).inflate(R.layout.weather_view, (ViewGroup) c2055e2, true);
        c2055e2.f5611b = (TextView) c2055e2.findViewById(R.id.textView38);
        c2055e2.f5612c = (TextView) c2055e2.findViewById(R.id.textView39);
        c2055e2.f5613d = (ImageView) c2055e2.findViewById(R.id.imageViewWeather);
        c2055e2.f5614e = (LinearLayout) c2055e2.findViewById(R.id.viewWeatherBlock);
        c2055e2.f5615f = (ProgressBar) c2055e2.findViewById(R.id.progressBar2);
        c2055e2.setOrientation(1);
        c2055e2.setVisibility(0);
        this.f2884b = c2055e2;
        f2880i = new C3105c(24, this);
        C1652b.m2734a();
        WindowManager windowManagerMo1144f = C1652b.m2738g().mo3013b().mo1144f(this.f2884b, c1428u1.f3431c);
        this.f2885c = windowManagerMo1144f;
        c1428u1.m2476a(this.f2884b, windowManagerMo1144f, new RunnableC2054d(this, 1));
        c1428u1.m2479d();
        m2210f();
        return 1;
    }
}
