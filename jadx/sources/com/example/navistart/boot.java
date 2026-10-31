package com.example.navistart;

import android.app.ActivityOptions;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.Signature;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.provider.Settings;
import android.util.Base64;
import android.util.Log;
import android.view.Display;
import androidx.fragment.app.C0566h;
import androidx.profileinstaller.RunnableC0707c;
import com.bumptech.glide.RunnableC1054m;
import com.example.navistart.AllWidgetServices;
import com.example.navistart.LocServ;
import com.example.navistart.LounchB;
import com.example.navistart.MainActivity;
import com.example.navistart.MockGPS.MockGpsService;
import com.example.navistart.Notik;
import com.example.navistart.OverlayService;
import com.example.navistart.ServiceC1080Si;
import com.example.navistart.SpeedBoardService;
import com.example.navistart.TService;
import com.example.navistart.boot;
import com.example.navistart.punto;
import com.woha.pogoda.WeatherService;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.json.JSONException;
import org.json.JSONObject;
import p016b1.C0862c;
import p030c5.AbstractC0993h;
import p047e0.AbstractAsyncTaskC1449z2;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1406p3;
import p047e0.AbstractC1434w;
import p047e0.C1343d0;
import p047e0.C1396n3;
import p047e0.C1440x1;
import p047e0.ScheduledExecutorServiceC1430v;
import p078h0.C1652b;
import p164p0.C2957j;
import p206u0.C3277a;
import p225w0.AbstractC3449d;
import p250y5.AbstractC3656k;
import p258z3.C3720f;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class boot extends Service {

    /* JADX INFO: renamed from: u */
    public static boolean f1709u = false;

    /* JADX INFO: renamed from: b */
    public Notification.Builder f1710b;

    /* JADX INFO: renamed from: c */
    public final Boolean f1711c;

    /* JADX INFO: renamed from: d */
    public final ScheduledExecutorServiceC1430v f1712d;

    /* JADX INFO: renamed from: e */
    public ScheduledFuture f1713e;

    /* JADX INFO: renamed from: f */
    public final ScheduledThreadPoolExecutor f1714f;

    /* JADX INFO: renamed from: g */
    public ScheduledFuture f1715g;

    /* JADX INFO: renamed from: h */
    public IntentFilter f1716h;

    /* JADX INFO: renamed from: i */
    public IntentFilter f1717i;

    /* JADX INFO: renamed from: j */
    public IntentFilter f1718j;

    /* JADX INFO: renamed from: k */
    public IntentFilter f1719k;

    /* JADX INFO: renamed from: l */
    public final Boolean f1720l;

    /* JADX INFO: renamed from: m */
    public Context f1721m;

    /* JADX INFO: renamed from: n */
    public Intent f1722n;

    /* JADX INFO: renamed from: o */
    public C0862c f1723o;

    /* JADX INFO: renamed from: p */
    public MyCarReceiver f1724p;

    /* JADX INFO: renamed from: q */
    public C1343d0 f1725q;

    /* JADX INFO: renamed from: r */
    public C1396n3 f1726r;

    /* JADX INFO: renamed from: s */
    public NotificationManager f1727s;

    /* JADX INFO: renamed from: t */
    public boolean f1728t;

    public boot() {
        Boolean bool = Boolean.TRUE;
        this.f1711c = bool;
        this.f1712d = AbstractC1434w.m2481b(1000L, AbstractC1387m.m2421h(new byte[]{-119, -102, 7, 24}, new byte[]{-21, -11, 104, 108, -66, 99, 105, -91}));
        this.f1714f = AbstractC1434w.m2482c(-1, null);
        AbstractC1387m.m2421h(new byte[]{-54, -124, 54, 2, -49, -20, 107, 3, -62, -124, 62, 17, -23, -1}, new byte[]{-93, -22, 95, 118, -116, -115, 25, 78});
        this.f1720l = bool;
        this.f1727s = null;
        this.f1728t = false;
    }

    /* JADX INFO: renamed from: b */
    public static boolean m1611b(Context context) {
        byte[] bArr = AbstractC1387m.f3323k;
        String[] strArr = AbstractC1406p3.f3368a;
        return !new String(bArr).equals(m1612c(context));
    }

    /* JADX INFO: renamed from: c */
    public static String m1612c(Context context) {
        String strEncodeToString = null;
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
            if (signatureArr != null) {
                for (Signature signature : signatureArr) {
                    byte[] bArr = AbstractC1387m.f3320h;
                    String[] strArr = AbstractC1406p3.f3368a;
                    MessageDigest messageDigest = MessageDigest.getInstance(new String(bArr));
                    messageDigest.update(signature.toByteArray());
                    strEncodeToString = Base64.encodeToString(messageDigest.digest(), 0);
                }
            }
        } catch (Exception unused) {
        }
        return strEncodeToString;
    }

    /* JADX INFO: renamed from: d */
    public static String m1613d(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), AbstractC1387m.m2421h(new byte[]{95, -10, 37, 79, 83, -66, 27, -26, 87, -4}, new byte[]{62, -104, 65, kotlin.p118io.encoding.Base64.padSymbol, 60, -41, ByteCompanionObject.MAX_VALUE, -71}));
    }

    /* JADX INFO: renamed from: e */
    public static String m1614e(String str) {
        try {
            byte[] bArr = AbstractC1387m.f3321i;
            String[] strArr = AbstractC1406p3.f3368a;
            byte[] bArrDigest = MessageDigest.getInstance(new String(bArr)).digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b10 : bArrDigest) {
                sb.append(Integer.toString((b10 & UByte.MAX_VALUE) + 256, 16).substring(1));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: a */
    public final JSONObject m1615a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{90, 59}, new byte[]{63, 86, 125, 38, -119, -40, 44, 67}), m1614e(C1652b.m2745o().loadString(m1613d(this.f1721m), "") + m1613d(this.f1721m)));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-104, 1}, new byte[]{-15, 101, -1, -117, -94, -118, 8, -127}), m1613d(this.f1721m));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-88, -48}, new byte[]{-37, -72, 18, 105, -86, 69, -117, -70}), m1614e(m1613d(this.f1721m)));
        String strM2421h = AbstractC1387m.m2421h(new byte[]{119, 25}, new byte[]{7, 112, -75, 5, 97, 29, 112, -109});
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3322j;
        String[] strArr = AbstractC1406p3.f3368a;
        jSONObject.put(strM2421h, c3277aM2745o.loadString(new String(bArr), ""));
        jSONObject.put(AbstractC1387m.m2421h(new byte[]{-114, -30}, new byte[]{-19, -113, -59, 115, 111, -121, -24, -89}), AbstractC1387m.m2421h(new byte[]{99, 89}, new byte[]{17, 44, 85, -113, -104, -93, 124, -36}));
        return jSONObject;
    }

    /* JADX INFO: renamed from: f */
    public final void m1616f() {
        boolean zM1426w = MainActivity.m1426w();
        Boolean bool = this.f1711c;
        if (zM1426w && bool.booleanValue()) {
            throw null;
        }
        if (MainActivity.m1425v(this.f1721m) && bool.booleanValue()) {
            this.f1722n.toString();
        }
        this.f1722n = new Intent(AbstractC1387m.m2421h(new byte[]{-15, -44, -112, -79, -34, -115, 36, -45, -7, -44, ByteCompanionObject.MIN_VALUE, -90, -33, -112, 110, -100, -13, -50, -99, -84, -33, -54, 20, -76, -35, -1, -85, -105, -8, -89, 11}, new byte[]{-112, -70, -12, -61, -79, -28, 64, -3}));
        new MyCarReceiver().onReceive(this.f1721m, this.f1722n);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        f1709u = true;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            if (this.f1727s == null) {
                this.f1727s = (NotificationManager) getSystemService(AbstractC1387m.m2421h(new byte[]{27, 112, 4, 3, -127, 85, -47, -106, 1, 118, 31, 4}, new byte[]{117, 31, 112, 106, -25, 60, -78, -9}));
            }
            if (!this.f1728t) {
                AbstractC3449d.m5381g();
                NotificationChannel notificationChannelM1161d = AbstractC0993h.m1161d(AbstractC1387m.m2421h(new byte[]{91, -67, -42, -106, -54, -4, -53, 69, 97, -113, -59, -115, -17, -31, -55, 82}, new byte[]{21, -36, -96, -1, -103, -120, -86, 55}), AbstractC1387m.m2421h(new byte[]{-126, 86, -3, 63, -11, -73, 121, 124, -82, 83}, new byte[]{-64, 55, -98, 84, -110, -59, 22, 9}));
                notificationChannelM1161d.enableLights(true);
                notificationChannelM1161d.setLightColor(-16776961);
                notificationChannelM1161d.setShowBadge(true);
                this.f1727s.createNotificationChannel(notificationChannelM1161d);
                this.f1728t = true;
            }
            this.f1710b = AbstractC0993h.m1160c(getApplicationContext(), AbstractC1387m.m2421h(new byte[]{59, -124, -73, -115, -89, 69, 125, -109, 1, -74, -92, -106, -126, 88, ByteCompanionObject.MAX_VALUE, -124}, new byte[]{117, -27, -63, -28, -12, 49, 28, -31}));
        } else {
            this.f1710b = new Notification.Builder(getApplicationContext());
        }
        startForeground(1, this.f1710b.build());
        this.f1721m = (pusk(m1612c(this)) || !this.f1720l.booleanValue()) ? this : this.f1721m;
        this.f1723o = new C0862c();
        IntentFilter intentFilter = new IntentFilter();
        this.f1716h = intentFilter;
        C1652b.m2734a();
        intentFilter.addAction(C1652b.m2742l().mo2694b());
        C0862c c0862c = this.f1723o;
        IntentFilter intentFilter2 = this.f1716h;
        if (i10 >= 33) {
            registerReceiver(c0862c, intentFilter2, 2);
        } else {
            registerReceiver(c0862c, intentFilter2);
        }
        this.f1724p = new MyCarReceiver();
        IntentFilter intentFilter3 = new IntentFilter();
        this.f1717i = intentFilter3;
        intentFilter3.addAction(AbstractC1387m.m2421h(new byte[]{-38, -95, 63, -86, 47, -38, 26, -119, -46, -95, 47, -67, 46, -57, 80, -58, -40, -69, 50, -73, 46, -99, 45, -28, -23, -118, 30, -106, 31, -4, 48}, new byte[]{-69, -49, 91, -40, 64, -77, 126, -89}));
        this.f1717i.addAction(AbstractC1387m.m2421h(new byte[]{-78, -108, 78, 58, -57, -86, -120, -68, -79, -106, 95, 45, -36, -84, -125, -26, -69, -44, 78, 45, -34, -86, -113, -9, -3, -101, 73, 60, -63, -84, -126, -68, -110, -71, 102, 23, -21, -116, -94, -36, -106, -71, 126, 13, -20}, new byte[]{-45, -6, 42, 72, -88, -61, -20, -110}));
        this.f1717i.addAction(AbstractC1387m.m2421h(new byte[]{2, ByteCompanionObject.MAX_VALUE, 88, -69, 26, 27, -93, 91, 10, ByteCompanionObject.MAX_VALUE, 72, -84, 27, 6, -23, 20, 0, 101, 85, -90, 27, 92, -108, 54, 49, 84, 121, -121, 42, kotlin.p118io.encoding.Base64.padSymbol, -127, 51}, new byte[]{99, 17, 60, -55, 117, 114, -57, 117}));
        this.f1717i.addAction(AbstractC1387m.m2421h(new byte[]{-124, -5, -92, 95, -58, -115, -127, 82, -116, -5, -76, 72, -57, -112, -53, 29, -122, -31, -87, 66, -57, -54, -80, 47, -96, -57, -97, 125, -5, -95, -74, 57, -85, -63}, new byte[]{-27, -107, -64, 45, -87, -28, -27, 124}));
        MyCarReceiver myCarReceiver = this.f1724p;
        IntentFilter intentFilter4 = this.f1717i;
        if (i10 >= 33) {
            registerReceiver(myCarReceiver, intentFilter4, 2);
        } else {
            registerReceiver(myCarReceiver, intentFilter4);
        }
        this.f1725q = new C1343d0(this.f1721m);
        IntentFilter intentFilter5 = new IntentFilter();
        this.f1718j = intentFilter5;
        intentFilter5.addAction(AbstractC1387m.m2421h(new byte[]{-57, -70, 65, 53, -22, 116, -27, 46, -49, -70, 81, 34, -21, 105, -81, 97, -59, -96, 76, 40, -21, 51, -30, 97, -44, -117, 86, 62, -10, 105, -28, 109, -7, -77, 64, 52, -15, 104, -13, 101, -7, -71, 74, 35, -32}, new byte[]{-90, -44, 37, 71, -123, 29, -127, 0}));
        C1343d0 c1343d0 = this.f1725q;
        IntentFilter intentFilter6 = this.f1718j;
        if (i10 >= 33) {
            registerReceiver(c1343d0, intentFilter6, 2);
        } else {
            registerReceiver(c1343d0, intentFilter6);
        }
        C1396n3 c1396n3 = new C1396n3();
        c1396n3.f3348a = true;
        this.f1726r = c1396n3;
        IntentFilter intentFilter7 = new IntentFilter();
        this.f1719k = intentFilter7;
        intentFilter7.addAction(AbstractC1387m.m2421h(new byte[]{123, 5, 95, 90, 50, 76, -32, 25, 71, 89, 28, 92, 41, 64, -15, 10}, new byte[]{34, 43, 50, 59, 92, 41, -107, 111}));
        this.f1719k.addAction(AbstractC1387m.m2421h(new byte[]{-78, -20, -65, 18, 90, -40, 1, -25, -114, -80, -4, 5, 93, -50}, new byte[]{-21, -62, -46, 115, 52, -67, 116, -111}));
        C1396n3 c1396n4 = this.f1726r;
        IntentFilter intentFilter8 = this.f1719k;
        if (i10 >= 33) {
            registerReceiver(c1396n4, intentFilter8, 2);
        } else {
            registerReceiver(c1396n4, intentFilter8);
        }
        C1343d0.m2389d(this.f1721m);
        byte[] bArr = punto.f1871v;
        String str = AbstractAsyncTaskC1449z2.f3517a;
        punto.f1870u = new String(bArr);
        C1343d0.m2389d(this.f1721m);
        if (m1611b(this.f1721m) && this.f1711c.booleanValue()) {
            throw null;
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        f1709u = false;
        C2957j.m4738b();
        C0862c c0862c = this.f1723o;
        if (c0862c != null) {
            unregisterReceiver(c0862c);
        }
        MyCarReceiver myCarReceiver = this.f1724p;
        if (myCarReceiver != null) {
            unregisterReceiver(myCarReceiver);
        }
        C1343d0 c1343d0 = this.f1725q;
        if (c1343d0 != null) {
            unregisterReceiver(c1343d0);
        }
        C1396n3 c1396n3 = this.f1726r;
        if (c1396n3 != null) {
            unregisterReceiver(c1396n3);
        }
        Intent intent = new Intent(this.f1721m.getApplicationContext(), (Class<?>) boot.class);
        intent.putExtra(AbstractC1387m.m2421h(new byte[]{-10}, new byte[]{-110, 34, ByteCompanionObject.MAX_VALUE, 19, -70, -10, -23, 119}), -1);
        if (Build.VERSION.SDK_INT >= 26) {
            startForegroundService(intent);
        } else {
            startService(intent);
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        int i12;
        Intent launchIntentForPackage;
        final int i13 = 8;
        final int i14 = 0;
        boolean zLoadBoolean = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{40, 94, -44, -65, 34, 94, 77, -34, 46, 114, -39, -92, 25, 90, 98, -53, 51, 76, -45, -95, 24, 91}, new byte[]{93, 45, -79, -51, 125, 63, kotlin.p118io.encoding.Base64.padSymbol, -82}), false);
        boolean zM1611b = m1611b(this.f1721m);
        Boolean bool = this.f1711c;
        if (zM1611b && bool.booleanValue()) {
            throw null;
        }
        final int i15 = 10;
        try {
            C1652b.m2734a();
            C1652b.m2748r().Ping(AbstractC1387m.m2421h(new byte[]{2, -42, 52, -19, 87, 105, 126, 0, 10, -36}, new byte[]{99, -72, 80, -97, 56, 0, 26, 95}));
        } catch (SecurityException e) {
            e.printStackTrace();
        }
        C3277a c3277aM2745o = C1652b.m2745o();
        byte[] bArr = AbstractC1387m.f3317e;
        String[] strArr = AbstractC1406p3.f3368a;
        c3277aM2745o.saveString(new String(bArr), C1440x1.f3470q);
        C1343d0.m2389d(this.f1721m);
        final int i16 = 1;
        if (zLoadBoolean) {
            Context context = this.f1721m;
            String str = C2957j.f8225l;
            new Handler(Looper.getMainLooper()).post(new RunnableC0707c(context.getApplicationContext(), 9));
        } else {
            C2957j.m4738b();
            Bundle extras = intent != null ? intent.getExtras() : null;
            final int i17 = 3;
            if (extras != null && (i12 = extras.getInt(AbstractC1387m.m2421h(new byte[]{12}, new byte[]{104, 23, -69, 126, -121, -50, -33, -103}))) > -1) {
                String strLoadString = C1652b.m2745o().loadString(AbstractC1387m.m2421h(new byte[]{105, -105, 63}, new byte[]{25, -4, 88, 31, -34, -83, -126, -17}), AbstractC1387m.m2421h(new byte[]{33, 53, -68, 30, 69, -64, 3, 91, 43, 110, -21, 6, 74, -54, 2, 70, kotlin.p118io.encoding.Base64.padSymbol, 33, -28, 14}, new byte[]{83, 64, -110, 103, 36, -82, 103, 62}));
                Display[] displays = ((DisplayManager) getApplicationContext().getSystemService(AbstractC1387m.m2421h(new byte[]{-51, 12, 25, 6, 83, 84, -115}, new byte[]{-87, 101, 106, 118, 63, 53, -12, -119}))).getDisplays();
                if (displays.length > 1 && (launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(strLoadString)) != null) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        AbstractC3656k.m5875u(this, launchIntentForPackage, ActivityOptions.makeBasic().setLaunchDisplayId(displays[i12].getDisplayId()).toBundle());
                    }
                    Log.e(AbstractC1387m.m2421h(new byte[]{kotlin.p118io.encoding.Base64.padSymbol, 14, -95, 64}, new byte[]{ByteCompanionObject.MAX_VALUE, 65, -18, 20, 117, 15, -93, -61}), AbstractC1387m.m2421h(new byte[]{-27, 42, -92, -36, -55, -127, 65, 37, -62, 55, -77, -57, -55, -40}, new byte[]{-74, 94, -59, -82, -67, -95, 0, 70}));
                }
            }
            C1343d0.m2389d(this.f1721m);
            final int i18 = 2;
            RunnableC1054m runnableC1054m = new RunnableC1054m(i18, this);
            ScheduledFuture scheduledFuture = this.f1713e;
            if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                this.f1713e.cancel(false);
            }
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            ScheduledExecutorServiceC1430v scheduledExecutorServiceC1430v = this.f1712d;
            this.f1713e = scheduledExecutorServiceC1430v.f3448b.schedule(runnableC1054m, 20000L, timeUnit);
            m1616f();
            scheduledExecutorServiceC1430v.execute(new Runnable(this) { // from class: e0.o3

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ boot f3358c;

                {
                    this.f3358c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i19 = i13;
                    boot bootVar = this.f3358c;
                    switch (i19) {
                        case 0:
                            Context context2 = bootVar.f1721m;
                            boolean zLoadBoolean2 = false;
                            try {
                                zLoadBoolean2 = C1652b.m2745o().loadBoolean(MockGpsService.f1423r, false);
                                break;
                            } catch (Exception unused) {
                            }
                            if (zLoadBoolean2) {
                                MockGpsService.m1457m(context2);
                                return;
                            }
                            return;
                        case 1:
                            WeatherService.m2207e(bootVar.f1721m);
                            return;
                        case 2:
                            TService.m1586c(bootVar.f1721m);
                            return;
                        case 3:
                            AllWidgetServices.m1384c(bootVar.f1721m);
                            return;
                        case 4:
                            Notik.m1506g(bootVar.f1721m);
                            return;
                        case 5:
                            OverlayService.m1512c(bootVar.f1721m);
                            return;
                        case 6:
                            SpeedBoardService.m1542b(bootVar.f1721m);
                            return;
                        case 7:
                            Boolean bool2 = bootVar.f1711c;
                            if (MainActivity.m1426w() && bool2.booleanValue()) {
                                throw null;
                            }
                            if (MainActivity.m1425v(bootVar.f1721m) && bool2.booleanValue()) {
                                bootVar.f1722n.toString();
                            }
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject = bootVar.m1615a();
                                break;
                            } catch (JSONException unused2) {
                            }
                            Request requestBuild = new Request.Builder().url(AbstractC1387m.m2421h(new byte[]{94, 15, -109, -102, 95, -67, 67, -42}, new byte[]{54, 123, -25, -22, 44, -121, 108, -7}) + punto.f1870u).post(RequestBody.create(jSONObject.toString(), MediaType.parse(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -38, 90, 72, -85, ByteCompanionObject.MIN_VALUE, -110, -43, -120, -59, 68, 11, -88, -112, -100, -49, -38, -118, 73, 76, -93, -111, ByteCompanionObject.MIN_VALUE, -60, -107, -105, 95, 80, -92, -50, -53}, new byte[]{-31, -86, 42, 36, -62, -29, -13, -95})))).addHeader(AbstractC1387m.m2421h(new byte[]{-24, -83, -72, 93, 48, 122, -43, -75, -1, -69, -90, 76}, new byte[]{-85, -62, -42, 41, 85, 20, -95, -104}), AbstractC1387m.m2421h(new byte[]{-84, -93, 24, 101, 42, -108, -123, -122, -92, -68, 6, 38, 41, -124, -117, -100}, new byte[]{-51, -45, 104, 9, 67, -9, -28, -14})).addHeader(AbstractC1387m.m2421h(new byte[]{-31, 62, -127, 73, -75, 70}, new byte[]{-96, 93, -30, 44, -59, 50, 27, 108}), AbstractC1387m.m2421h(new byte[]{112, -44, 101, -78, 64, 28, 103, 14, 120, -53, 123, -15, 67, 12, 105, 20}, new byte[]{17, -92, 21, -34, 41, ByteCompanionObject.MAX_VALUE, 6, 122})).build();
                            C1652b.m2734a();
                            C1652b.m2743m().newCall(requestBuild).enqueue(new C3720f(5));
                            return;
                        case 8:
                            ServiceC1080Si.m1527a(bootVar.f1721m);
                            return;
                        case 9:
                            LounchB.m1419c(bootVar.f1721m);
                            return;
                        default:
                            Context context3 = bootVar.f1721m;
                            C0566h c0566h = LocServ.f1268h;
                            context3.startService(new Intent(context3, (Class<?>) LocServ.class));
                            return;
                    }
                }
            });
            final int i19 = 9;
            scheduledExecutorServiceC1430v.execute(new Runnable(this) { // from class: e0.o3

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ boot f3358c;

                {
                    this.f3358c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i110 = i19;
                    boot bootVar = this.f3358c;
                    switch (i110) {
                        case 0:
                            Context context2 = bootVar.f1721m;
                            boolean zLoadBoolean2 = false;
                            try {
                                zLoadBoolean2 = C1652b.m2745o().loadBoolean(MockGpsService.f1423r, false);
                                break;
                            } catch (Exception unused) {
                            }
                            if (zLoadBoolean2) {
                                MockGpsService.m1457m(context2);
                                return;
                            }
                            return;
                        case 1:
                            WeatherService.m2207e(bootVar.f1721m);
                            return;
                        case 2:
                            TService.m1586c(bootVar.f1721m);
                            return;
                        case 3:
                            AllWidgetServices.m1384c(bootVar.f1721m);
                            return;
                        case 4:
                            Notik.m1506g(bootVar.f1721m);
                            return;
                        case 5:
                            OverlayService.m1512c(bootVar.f1721m);
                            return;
                        case 6:
                            SpeedBoardService.m1542b(bootVar.f1721m);
                            return;
                        case 7:
                            Boolean bool2 = bootVar.f1711c;
                            if (MainActivity.m1426w() && bool2.booleanValue()) {
                                throw null;
                            }
                            if (MainActivity.m1425v(bootVar.f1721m) && bool2.booleanValue()) {
                                bootVar.f1722n.toString();
                            }
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject = bootVar.m1615a();
                                break;
                            } catch (JSONException unused2) {
                            }
                            Request requestBuild = new Request.Builder().url(AbstractC1387m.m2421h(new byte[]{94, 15, -109, -102, 95, -67, 67, -42}, new byte[]{54, 123, -25, -22, 44, -121, 108, -7}) + punto.f1870u).post(RequestBody.create(jSONObject.toString(), MediaType.parse(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -38, 90, 72, -85, ByteCompanionObject.MIN_VALUE, -110, -43, -120, -59, 68, 11, -88, -112, -100, -49, -38, -118, 73, 76, -93, -111, ByteCompanionObject.MIN_VALUE, -60, -107, -105, 95, 80, -92, -50, -53}, new byte[]{-31, -86, 42, 36, -62, -29, -13, -95})))).addHeader(AbstractC1387m.m2421h(new byte[]{-24, -83, -72, 93, 48, 122, -43, -75, -1, -69, -90, 76}, new byte[]{-85, -62, -42, 41, 85, 20, -95, -104}), AbstractC1387m.m2421h(new byte[]{-84, -93, 24, 101, 42, -108, -123, -122, -92, -68, 6, 38, 41, -124, -117, -100}, new byte[]{-51, -45, 104, 9, 67, -9, -28, -14})).addHeader(AbstractC1387m.m2421h(new byte[]{-31, 62, -127, 73, -75, 70}, new byte[]{-96, 93, -30, 44, -59, 50, 27, 108}), AbstractC1387m.m2421h(new byte[]{112, -44, 101, -78, 64, 28, 103, 14, 120, -53, 123, -15, 67, 12, 105, 20}, new byte[]{17, -92, 21, -34, 41, ByteCompanionObject.MAX_VALUE, 6, 122})).build();
                            C1652b.m2734a();
                            C1652b.m2743m().newCall(requestBuild).enqueue(new C3720f(5));
                            return;
                        case 8:
                            ServiceC1080Si.m1527a(bootVar.f1721m);
                            return;
                        case 9:
                            LounchB.m1419c(bootVar.f1721m);
                            return;
                        default:
                            Context context3 = bootVar.f1721m;
                            C0566h c0566h = LocServ.f1268h;
                            context3.startService(new Intent(context3, (Class<?>) LocServ.class));
                            return;
                    }
                }
            });
            scheduledExecutorServiceC1430v.execute(new Runnable(this) { // from class: e0.o3

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ boot f3358c;

                {
                    this.f3358c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i110 = i15;
                    boot bootVar = this.f3358c;
                    switch (i110) {
                        case 0:
                            Context context2 = bootVar.f1721m;
                            boolean zLoadBoolean2 = false;
                            try {
                                zLoadBoolean2 = C1652b.m2745o().loadBoolean(MockGpsService.f1423r, false);
                                break;
                            } catch (Exception unused) {
                            }
                            if (zLoadBoolean2) {
                                MockGpsService.m1457m(context2);
                                return;
                            }
                            return;
                        case 1:
                            WeatherService.m2207e(bootVar.f1721m);
                            return;
                        case 2:
                            TService.m1586c(bootVar.f1721m);
                            return;
                        case 3:
                            AllWidgetServices.m1384c(bootVar.f1721m);
                            return;
                        case 4:
                            Notik.m1506g(bootVar.f1721m);
                            return;
                        case 5:
                            OverlayService.m1512c(bootVar.f1721m);
                            return;
                        case 6:
                            SpeedBoardService.m1542b(bootVar.f1721m);
                            return;
                        case 7:
                            Boolean bool2 = bootVar.f1711c;
                            if (MainActivity.m1426w() && bool2.booleanValue()) {
                                throw null;
                            }
                            if (MainActivity.m1425v(bootVar.f1721m) && bool2.booleanValue()) {
                                bootVar.f1722n.toString();
                            }
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject = bootVar.m1615a();
                                break;
                            } catch (JSONException unused2) {
                            }
                            Request requestBuild = new Request.Builder().url(AbstractC1387m.m2421h(new byte[]{94, 15, -109, -102, 95, -67, 67, -42}, new byte[]{54, 123, -25, -22, 44, -121, 108, -7}) + punto.f1870u).post(RequestBody.create(jSONObject.toString(), MediaType.parse(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -38, 90, 72, -85, ByteCompanionObject.MIN_VALUE, -110, -43, -120, -59, 68, 11, -88, -112, -100, -49, -38, -118, 73, 76, -93, -111, ByteCompanionObject.MIN_VALUE, -60, -107, -105, 95, 80, -92, -50, -53}, new byte[]{-31, -86, 42, 36, -62, -29, -13, -95})))).addHeader(AbstractC1387m.m2421h(new byte[]{-24, -83, -72, 93, 48, 122, -43, -75, -1, -69, -90, 76}, new byte[]{-85, -62, -42, 41, 85, 20, -95, -104}), AbstractC1387m.m2421h(new byte[]{-84, -93, 24, 101, 42, -108, -123, -122, -92, -68, 6, 38, 41, -124, -117, -100}, new byte[]{-51, -45, 104, 9, 67, -9, -28, -14})).addHeader(AbstractC1387m.m2421h(new byte[]{-31, 62, -127, 73, -75, 70}, new byte[]{-96, 93, -30, 44, -59, 50, 27, 108}), AbstractC1387m.m2421h(new byte[]{112, -44, 101, -78, 64, 28, 103, 14, 120, -53, 123, -15, 67, 12, 105, 20}, new byte[]{17, -92, 21, -34, 41, ByteCompanionObject.MAX_VALUE, 6, 122})).build();
                            C1652b.m2734a();
                            C1652b.m2743m().newCall(requestBuild).enqueue(new C3720f(5));
                            return;
                        case 8:
                            ServiceC1080Si.m1527a(bootVar.f1721m);
                            return;
                        case 9:
                            LounchB.m1419c(bootVar.f1721m);
                            return;
                        default:
                            Context context3 = bootVar.f1721m;
                            C0566h c0566h = LocServ.f1268h;
                            context3.startService(new Intent(context3, (Class<?>) LocServ.class));
                            return;
                    }
                }
            });
            scheduledExecutorServiceC1430v.execute(new Runnable(this) { // from class: e0.o3

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ boot f3358c;

                {
                    this.f3358c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i110 = i14;
                    boot bootVar = this.f3358c;
                    switch (i110) {
                        case 0:
                            Context context2 = bootVar.f1721m;
                            boolean zLoadBoolean2 = false;
                            try {
                                zLoadBoolean2 = C1652b.m2745o().loadBoolean(MockGpsService.f1423r, false);
                                break;
                            } catch (Exception unused) {
                            }
                            if (zLoadBoolean2) {
                                MockGpsService.m1457m(context2);
                                return;
                            }
                            return;
                        case 1:
                            WeatherService.m2207e(bootVar.f1721m);
                            return;
                        case 2:
                            TService.m1586c(bootVar.f1721m);
                            return;
                        case 3:
                            AllWidgetServices.m1384c(bootVar.f1721m);
                            return;
                        case 4:
                            Notik.m1506g(bootVar.f1721m);
                            return;
                        case 5:
                            OverlayService.m1512c(bootVar.f1721m);
                            return;
                        case 6:
                            SpeedBoardService.m1542b(bootVar.f1721m);
                            return;
                        case 7:
                            Boolean bool2 = bootVar.f1711c;
                            if (MainActivity.m1426w() && bool2.booleanValue()) {
                                throw null;
                            }
                            if (MainActivity.m1425v(bootVar.f1721m) && bool2.booleanValue()) {
                                bootVar.f1722n.toString();
                            }
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject = bootVar.m1615a();
                                break;
                            } catch (JSONException unused2) {
                            }
                            Request requestBuild = new Request.Builder().url(AbstractC1387m.m2421h(new byte[]{94, 15, -109, -102, 95, -67, 67, -42}, new byte[]{54, 123, -25, -22, 44, -121, 108, -7}) + punto.f1870u).post(RequestBody.create(jSONObject.toString(), MediaType.parse(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -38, 90, 72, -85, ByteCompanionObject.MIN_VALUE, -110, -43, -120, -59, 68, 11, -88, -112, -100, -49, -38, -118, 73, 76, -93, -111, ByteCompanionObject.MIN_VALUE, -60, -107, -105, 95, 80, -92, -50, -53}, new byte[]{-31, -86, 42, 36, -62, -29, -13, -95})))).addHeader(AbstractC1387m.m2421h(new byte[]{-24, -83, -72, 93, 48, 122, -43, -75, -1, -69, -90, 76}, new byte[]{-85, -62, -42, 41, 85, 20, -95, -104}), AbstractC1387m.m2421h(new byte[]{-84, -93, 24, 101, 42, -108, -123, -122, -92, -68, 6, 38, 41, -124, -117, -100}, new byte[]{-51, -45, 104, 9, 67, -9, -28, -14})).addHeader(AbstractC1387m.m2421h(new byte[]{-31, 62, -127, 73, -75, 70}, new byte[]{-96, 93, -30, 44, -59, 50, 27, 108}), AbstractC1387m.m2421h(new byte[]{112, -44, 101, -78, 64, 28, 103, 14, 120, -53, 123, -15, 67, 12, 105, 20}, new byte[]{17, -92, 21, -34, 41, ByteCompanionObject.MAX_VALUE, 6, 122})).build();
                            C1652b.m2734a();
                            C1652b.m2743m().newCall(requestBuild).enqueue(new C3720f(5));
                            return;
                        case 8:
                            ServiceC1080Si.m1527a(bootVar.f1721m);
                            return;
                        case 9:
                            LounchB.m1419c(bootVar.f1721m);
                            return;
                        default:
                            Context context3 = bootVar.f1721m;
                            C0566h c0566h = LocServ.f1268h;
                            context3.startService(new Intent(context3, (Class<?>) LocServ.class));
                            return;
                    }
                }
            });
            scheduledExecutorServiceC1430v.execute(new Runnable(this) { // from class: e0.o3

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ boot f3358c;

                {
                    this.f3358c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i110 = i16;
                    boot bootVar = this.f3358c;
                    switch (i110) {
                        case 0:
                            Context context2 = bootVar.f1721m;
                            boolean zLoadBoolean2 = false;
                            try {
                                zLoadBoolean2 = C1652b.m2745o().loadBoolean(MockGpsService.f1423r, false);
                                break;
                            } catch (Exception unused) {
                            }
                            if (zLoadBoolean2) {
                                MockGpsService.m1457m(context2);
                                return;
                            }
                            return;
                        case 1:
                            WeatherService.m2207e(bootVar.f1721m);
                            return;
                        case 2:
                            TService.m1586c(bootVar.f1721m);
                            return;
                        case 3:
                            AllWidgetServices.m1384c(bootVar.f1721m);
                            return;
                        case 4:
                            Notik.m1506g(bootVar.f1721m);
                            return;
                        case 5:
                            OverlayService.m1512c(bootVar.f1721m);
                            return;
                        case 6:
                            SpeedBoardService.m1542b(bootVar.f1721m);
                            return;
                        case 7:
                            Boolean bool2 = bootVar.f1711c;
                            if (MainActivity.m1426w() && bool2.booleanValue()) {
                                throw null;
                            }
                            if (MainActivity.m1425v(bootVar.f1721m) && bool2.booleanValue()) {
                                bootVar.f1722n.toString();
                            }
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject = bootVar.m1615a();
                                break;
                            } catch (JSONException unused2) {
                            }
                            Request requestBuild = new Request.Builder().url(AbstractC1387m.m2421h(new byte[]{94, 15, -109, -102, 95, -67, 67, -42}, new byte[]{54, 123, -25, -22, 44, -121, 108, -7}) + punto.f1870u).post(RequestBody.create(jSONObject.toString(), MediaType.parse(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -38, 90, 72, -85, ByteCompanionObject.MIN_VALUE, -110, -43, -120, -59, 68, 11, -88, -112, -100, -49, -38, -118, 73, 76, -93, -111, ByteCompanionObject.MIN_VALUE, -60, -107, -105, 95, 80, -92, -50, -53}, new byte[]{-31, -86, 42, 36, -62, -29, -13, -95})))).addHeader(AbstractC1387m.m2421h(new byte[]{-24, -83, -72, 93, 48, 122, -43, -75, -1, -69, -90, 76}, new byte[]{-85, -62, -42, 41, 85, 20, -95, -104}), AbstractC1387m.m2421h(new byte[]{-84, -93, 24, 101, 42, -108, -123, -122, -92, -68, 6, 38, 41, -124, -117, -100}, new byte[]{-51, -45, 104, 9, 67, -9, -28, -14})).addHeader(AbstractC1387m.m2421h(new byte[]{-31, 62, -127, 73, -75, 70}, new byte[]{-96, 93, -30, 44, -59, 50, 27, 108}), AbstractC1387m.m2421h(new byte[]{112, -44, 101, -78, 64, 28, 103, 14, 120, -53, 123, -15, 67, 12, 105, 20}, new byte[]{17, -92, 21, -34, 41, ByteCompanionObject.MAX_VALUE, 6, 122})).build();
                            C1652b.m2734a();
                            C1652b.m2743m().newCall(requestBuild).enqueue(new C3720f(5));
                            return;
                        case 8:
                            ServiceC1080Si.m1527a(bootVar.f1721m);
                            return;
                        case 9:
                            LounchB.m1419c(bootVar.f1721m);
                            return;
                        default:
                            Context context3 = bootVar.f1721m;
                            C0566h c0566h = LocServ.f1268h;
                            context3.startService(new Intent(context3, (Class<?>) LocServ.class));
                            return;
                    }
                }
            });
            scheduledExecutorServiceC1430v.execute(new Runnable(this) { // from class: e0.o3

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ boot f3358c;

                {
                    this.f3358c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i110 = i18;
                    boot bootVar = this.f3358c;
                    switch (i110) {
                        case 0:
                            Context context2 = bootVar.f1721m;
                            boolean zLoadBoolean2 = false;
                            try {
                                zLoadBoolean2 = C1652b.m2745o().loadBoolean(MockGpsService.f1423r, false);
                                break;
                            } catch (Exception unused) {
                            }
                            if (zLoadBoolean2) {
                                MockGpsService.m1457m(context2);
                                return;
                            }
                            return;
                        case 1:
                            WeatherService.m2207e(bootVar.f1721m);
                            return;
                        case 2:
                            TService.m1586c(bootVar.f1721m);
                            return;
                        case 3:
                            AllWidgetServices.m1384c(bootVar.f1721m);
                            return;
                        case 4:
                            Notik.m1506g(bootVar.f1721m);
                            return;
                        case 5:
                            OverlayService.m1512c(bootVar.f1721m);
                            return;
                        case 6:
                            SpeedBoardService.m1542b(bootVar.f1721m);
                            return;
                        case 7:
                            Boolean bool2 = bootVar.f1711c;
                            if (MainActivity.m1426w() && bool2.booleanValue()) {
                                throw null;
                            }
                            if (MainActivity.m1425v(bootVar.f1721m) && bool2.booleanValue()) {
                                bootVar.f1722n.toString();
                            }
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject = bootVar.m1615a();
                                break;
                            } catch (JSONException unused2) {
                            }
                            Request requestBuild = new Request.Builder().url(AbstractC1387m.m2421h(new byte[]{94, 15, -109, -102, 95, -67, 67, -42}, new byte[]{54, 123, -25, -22, 44, -121, 108, -7}) + punto.f1870u).post(RequestBody.create(jSONObject.toString(), MediaType.parse(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -38, 90, 72, -85, ByteCompanionObject.MIN_VALUE, -110, -43, -120, -59, 68, 11, -88, -112, -100, -49, -38, -118, 73, 76, -93, -111, ByteCompanionObject.MIN_VALUE, -60, -107, -105, 95, 80, -92, -50, -53}, new byte[]{-31, -86, 42, 36, -62, -29, -13, -95})))).addHeader(AbstractC1387m.m2421h(new byte[]{-24, -83, -72, 93, 48, 122, -43, -75, -1, -69, -90, 76}, new byte[]{-85, -62, -42, 41, 85, 20, -95, -104}), AbstractC1387m.m2421h(new byte[]{-84, -93, 24, 101, 42, -108, -123, -122, -92, -68, 6, 38, 41, -124, -117, -100}, new byte[]{-51, -45, 104, 9, 67, -9, -28, -14})).addHeader(AbstractC1387m.m2421h(new byte[]{-31, 62, -127, 73, -75, 70}, new byte[]{-96, 93, -30, 44, -59, 50, 27, 108}), AbstractC1387m.m2421h(new byte[]{112, -44, 101, -78, 64, 28, 103, 14, 120, -53, 123, -15, 67, 12, 105, 20}, new byte[]{17, -92, 21, -34, 41, ByteCompanionObject.MAX_VALUE, 6, 122})).build();
                            C1652b.m2734a();
                            C1652b.m2743m().newCall(requestBuild).enqueue(new C3720f(5));
                            return;
                        case 8:
                            ServiceC1080Si.m1527a(bootVar.f1721m);
                            return;
                        case 9:
                            LounchB.m1419c(bootVar.f1721m);
                            return;
                        default:
                            Context context3 = bootVar.f1721m;
                            C0566h c0566h = LocServ.f1268h;
                            context3.startService(new Intent(context3, (Class<?>) LocServ.class));
                            return;
                    }
                }
            });
            scheduledExecutorServiceC1430v.execute(new Runnable(this) { // from class: e0.o3

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ boot f3358c;

                {
                    this.f3358c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i110 = i17;
                    boot bootVar = this.f3358c;
                    switch (i110) {
                        case 0:
                            Context context2 = bootVar.f1721m;
                            boolean zLoadBoolean2 = false;
                            try {
                                zLoadBoolean2 = C1652b.m2745o().loadBoolean(MockGpsService.f1423r, false);
                                break;
                            } catch (Exception unused) {
                            }
                            if (zLoadBoolean2) {
                                MockGpsService.m1457m(context2);
                                return;
                            }
                            return;
                        case 1:
                            WeatherService.m2207e(bootVar.f1721m);
                            return;
                        case 2:
                            TService.m1586c(bootVar.f1721m);
                            return;
                        case 3:
                            AllWidgetServices.m1384c(bootVar.f1721m);
                            return;
                        case 4:
                            Notik.m1506g(bootVar.f1721m);
                            return;
                        case 5:
                            OverlayService.m1512c(bootVar.f1721m);
                            return;
                        case 6:
                            SpeedBoardService.m1542b(bootVar.f1721m);
                            return;
                        case 7:
                            Boolean bool2 = bootVar.f1711c;
                            if (MainActivity.m1426w() && bool2.booleanValue()) {
                                throw null;
                            }
                            if (MainActivity.m1425v(bootVar.f1721m) && bool2.booleanValue()) {
                                bootVar.f1722n.toString();
                            }
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject = bootVar.m1615a();
                                break;
                            } catch (JSONException unused2) {
                            }
                            Request requestBuild = new Request.Builder().url(AbstractC1387m.m2421h(new byte[]{94, 15, -109, -102, 95, -67, 67, -42}, new byte[]{54, 123, -25, -22, 44, -121, 108, -7}) + punto.f1870u).post(RequestBody.create(jSONObject.toString(), MediaType.parse(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -38, 90, 72, -85, ByteCompanionObject.MIN_VALUE, -110, -43, -120, -59, 68, 11, -88, -112, -100, -49, -38, -118, 73, 76, -93, -111, ByteCompanionObject.MIN_VALUE, -60, -107, -105, 95, 80, -92, -50, -53}, new byte[]{-31, -86, 42, 36, -62, -29, -13, -95})))).addHeader(AbstractC1387m.m2421h(new byte[]{-24, -83, -72, 93, 48, 122, -43, -75, -1, -69, -90, 76}, new byte[]{-85, -62, -42, 41, 85, 20, -95, -104}), AbstractC1387m.m2421h(new byte[]{-84, -93, 24, 101, 42, -108, -123, -122, -92, -68, 6, 38, 41, -124, -117, -100}, new byte[]{-51, -45, 104, 9, 67, -9, -28, -14})).addHeader(AbstractC1387m.m2421h(new byte[]{-31, 62, -127, 73, -75, 70}, new byte[]{-96, 93, -30, 44, -59, 50, 27, 108}), AbstractC1387m.m2421h(new byte[]{112, -44, 101, -78, 64, 28, 103, 14, 120, -53, 123, -15, 67, 12, 105, 20}, new byte[]{17, -92, 21, -34, 41, ByteCompanionObject.MAX_VALUE, 6, 122})).build();
                            C1652b.m2734a();
                            C1652b.m2743m().newCall(requestBuild).enqueue(new C3720f(5));
                            return;
                        case 8:
                            ServiceC1080Si.m1527a(bootVar.f1721m);
                            return;
                        case 9:
                            LounchB.m1419c(bootVar.f1721m);
                            return;
                        default:
                            Context context3 = bootVar.f1721m;
                            C0566h c0566h = LocServ.f1268h;
                            context3.startService(new Intent(context3, (Class<?>) LocServ.class));
                            return;
                    }
                }
            });
            final int i20 = 4;
            scheduledExecutorServiceC1430v.execute(new Runnable(this) { // from class: e0.o3

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ boot f3358c;

                {
                    this.f3358c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i110 = i20;
                    boot bootVar = this.f3358c;
                    switch (i110) {
                        case 0:
                            Context context2 = bootVar.f1721m;
                            boolean zLoadBoolean2 = false;
                            try {
                                zLoadBoolean2 = C1652b.m2745o().loadBoolean(MockGpsService.f1423r, false);
                                break;
                            } catch (Exception unused) {
                            }
                            if (zLoadBoolean2) {
                                MockGpsService.m1457m(context2);
                                return;
                            }
                            return;
                        case 1:
                            WeatherService.m2207e(bootVar.f1721m);
                            return;
                        case 2:
                            TService.m1586c(bootVar.f1721m);
                            return;
                        case 3:
                            AllWidgetServices.m1384c(bootVar.f1721m);
                            return;
                        case 4:
                            Notik.m1506g(bootVar.f1721m);
                            return;
                        case 5:
                            OverlayService.m1512c(bootVar.f1721m);
                            return;
                        case 6:
                            SpeedBoardService.m1542b(bootVar.f1721m);
                            return;
                        case 7:
                            Boolean bool2 = bootVar.f1711c;
                            if (MainActivity.m1426w() && bool2.booleanValue()) {
                                throw null;
                            }
                            if (MainActivity.m1425v(bootVar.f1721m) && bool2.booleanValue()) {
                                bootVar.f1722n.toString();
                            }
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject = bootVar.m1615a();
                                break;
                            } catch (JSONException unused2) {
                            }
                            Request requestBuild = new Request.Builder().url(AbstractC1387m.m2421h(new byte[]{94, 15, -109, -102, 95, -67, 67, -42}, new byte[]{54, 123, -25, -22, 44, -121, 108, -7}) + punto.f1870u).post(RequestBody.create(jSONObject.toString(), MediaType.parse(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -38, 90, 72, -85, ByteCompanionObject.MIN_VALUE, -110, -43, -120, -59, 68, 11, -88, -112, -100, -49, -38, -118, 73, 76, -93, -111, ByteCompanionObject.MIN_VALUE, -60, -107, -105, 95, 80, -92, -50, -53}, new byte[]{-31, -86, 42, 36, -62, -29, -13, -95})))).addHeader(AbstractC1387m.m2421h(new byte[]{-24, -83, -72, 93, 48, 122, -43, -75, -1, -69, -90, 76}, new byte[]{-85, -62, -42, 41, 85, 20, -95, -104}), AbstractC1387m.m2421h(new byte[]{-84, -93, 24, 101, 42, -108, -123, -122, -92, -68, 6, 38, 41, -124, -117, -100}, new byte[]{-51, -45, 104, 9, 67, -9, -28, -14})).addHeader(AbstractC1387m.m2421h(new byte[]{-31, 62, -127, 73, -75, 70}, new byte[]{-96, 93, -30, 44, -59, 50, 27, 108}), AbstractC1387m.m2421h(new byte[]{112, -44, 101, -78, 64, 28, 103, 14, 120, -53, 123, -15, 67, 12, 105, 20}, new byte[]{17, -92, 21, -34, 41, ByteCompanionObject.MAX_VALUE, 6, 122})).build();
                            C1652b.m2734a();
                            C1652b.m2743m().newCall(requestBuild).enqueue(new C3720f(5));
                            return;
                        case 8:
                            ServiceC1080Si.m1527a(bootVar.f1721m);
                            return;
                        case 9:
                            LounchB.m1419c(bootVar.f1721m);
                            return;
                        default:
                            Context context3 = bootVar.f1721m;
                            C0566h c0566h = LocServ.f1268h;
                            context3.startService(new Intent(context3, (Class<?>) LocServ.class));
                            return;
                    }
                }
            });
            final int i21 = 5;
            scheduledExecutorServiceC1430v.execute(new Runnable(this) { // from class: e0.o3

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ boot f3358c;

                {
                    this.f3358c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i110 = i21;
                    boot bootVar = this.f3358c;
                    switch (i110) {
                        case 0:
                            Context context2 = bootVar.f1721m;
                            boolean zLoadBoolean2 = false;
                            try {
                                zLoadBoolean2 = C1652b.m2745o().loadBoolean(MockGpsService.f1423r, false);
                                break;
                            } catch (Exception unused) {
                            }
                            if (zLoadBoolean2) {
                                MockGpsService.m1457m(context2);
                                return;
                            }
                            return;
                        case 1:
                            WeatherService.m2207e(bootVar.f1721m);
                            return;
                        case 2:
                            TService.m1586c(bootVar.f1721m);
                            return;
                        case 3:
                            AllWidgetServices.m1384c(bootVar.f1721m);
                            return;
                        case 4:
                            Notik.m1506g(bootVar.f1721m);
                            return;
                        case 5:
                            OverlayService.m1512c(bootVar.f1721m);
                            return;
                        case 6:
                            SpeedBoardService.m1542b(bootVar.f1721m);
                            return;
                        case 7:
                            Boolean bool2 = bootVar.f1711c;
                            if (MainActivity.m1426w() && bool2.booleanValue()) {
                                throw null;
                            }
                            if (MainActivity.m1425v(bootVar.f1721m) && bool2.booleanValue()) {
                                bootVar.f1722n.toString();
                            }
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject = bootVar.m1615a();
                                break;
                            } catch (JSONException unused2) {
                            }
                            Request requestBuild = new Request.Builder().url(AbstractC1387m.m2421h(new byte[]{94, 15, -109, -102, 95, -67, 67, -42}, new byte[]{54, 123, -25, -22, 44, -121, 108, -7}) + punto.f1870u).post(RequestBody.create(jSONObject.toString(), MediaType.parse(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -38, 90, 72, -85, ByteCompanionObject.MIN_VALUE, -110, -43, -120, -59, 68, 11, -88, -112, -100, -49, -38, -118, 73, 76, -93, -111, ByteCompanionObject.MIN_VALUE, -60, -107, -105, 95, 80, -92, -50, -53}, new byte[]{-31, -86, 42, 36, -62, -29, -13, -95})))).addHeader(AbstractC1387m.m2421h(new byte[]{-24, -83, -72, 93, 48, 122, -43, -75, -1, -69, -90, 76}, new byte[]{-85, -62, -42, 41, 85, 20, -95, -104}), AbstractC1387m.m2421h(new byte[]{-84, -93, 24, 101, 42, -108, -123, -122, -92, -68, 6, 38, 41, -124, -117, -100}, new byte[]{-51, -45, 104, 9, 67, -9, -28, -14})).addHeader(AbstractC1387m.m2421h(new byte[]{-31, 62, -127, 73, -75, 70}, new byte[]{-96, 93, -30, 44, -59, 50, 27, 108}), AbstractC1387m.m2421h(new byte[]{112, -44, 101, -78, 64, 28, 103, 14, 120, -53, 123, -15, 67, 12, 105, 20}, new byte[]{17, -92, 21, -34, 41, ByteCompanionObject.MAX_VALUE, 6, 122})).build();
                            C1652b.m2734a();
                            C1652b.m2743m().newCall(requestBuild).enqueue(new C3720f(5));
                            return;
                        case 8:
                            ServiceC1080Si.m1527a(bootVar.f1721m);
                            return;
                        case 9:
                            LounchB.m1419c(bootVar.f1721m);
                            return;
                        default:
                            Context context3 = bootVar.f1721m;
                            C0566h c0566h = LocServ.f1268h;
                            context3.startService(new Intent(context3, (Class<?>) LocServ.class));
                            return;
                    }
                }
            });
            final int i22 = 6;
            scheduledExecutorServiceC1430v.execute(new Runnable(this) { // from class: e0.o3

                /* JADX INFO: renamed from: c */
                public final /* synthetic */ boot f3358c;

                {
                    this.f3358c = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i110 = i22;
                    boot bootVar = this.f3358c;
                    switch (i110) {
                        case 0:
                            Context context2 = bootVar.f1721m;
                            boolean zLoadBoolean2 = false;
                            try {
                                zLoadBoolean2 = C1652b.m2745o().loadBoolean(MockGpsService.f1423r, false);
                                break;
                            } catch (Exception unused) {
                            }
                            if (zLoadBoolean2) {
                                MockGpsService.m1457m(context2);
                                return;
                            }
                            return;
                        case 1:
                            WeatherService.m2207e(bootVar.f1721m);
                            return;
                        case 2:
                            TService.m1586c(bootVar.f1721m);
                            return;
                        case 3:
                            AllWidgetServices.m1384c(bootVar.f1721m);
                            return;
                        case 4:
                            Notik.m1506g(bootVar.f1721m);
                            return;
                        case 5:
                            OverlayService.m1512c(bootVar.f1721m);
                            return;
                        case 6:
                            SpeedBoardService.m1542b(bootVar.f1721m);
                            return;
                        case 7:
                            Boolean bool2 = bootVar.f1711c;
                            if (MainActivity.m1426w() && bool2.booleanValue()) {
                                throw null;
                            }
                            if (MainActivity.m1425v(bootVar.f1721m) && bool2.booleanValue()) {
                                bootVar.f1722n.toString();
                            }
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject = bootVar.m1615a();
                                break;
                            } catch (JSONException unused2) {
                            }
                            Request requestBuild = new Request.Builder().url(AbstractC1387m.m2421h(new byte[]{94, 15, -109, -102, 95, -67, 67, -42}, new byte[]{54, 123, -25, -22, 44, -121, 108, -7}) + punto.f1870u).post(RequestBody.create(jSONObject.toString(), MediaType.parse(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -38, 90, 72, -85, ByteCompanionObject.MIN_VALUE, -110, -43, -120, -59, 68, 11, -88, -112, -100, -49, -38, -118, 73, 76, -93, -111, ByteCompanionObject.MIN_VALUE, -60, -107, -105, 95, 80, -92, -50, -53}, new byte[]{-31, -86, 42, 36, -62, -29, -13, -95})))).addHeader(AbstractC1387m.m2421h(new byte[]{-24, -83, -72, 93, 48, 122, -43, -75, -1, -69, -90, 76}, new byte[]{-85, -62, -42, 41, 85, 20, -95, -104}), AbstractC1387m.m2421h(new byte[]{-84, -93, 24, 101, 42, -108, -123, -122, -92, -68, 6, 38, 41, -124, -117, -100}, new byte[]{-51, -45, 104, 9, 67, -9, -28, -14})).addHeader(AbstractC1387m.m2421h(new byte[]{-31, 62, -127, 73, -75, 70}, new byte[]{-96, 93, -30, 44, -59, 50, 27, 108}), AbstractC1387m.m2421h(new byte[]{112, -44, 101, -78, 64, 28, 103, 14, 120, -53, 123, -15, 67, 12, 105, 20}, new byte[]{17, -92, 21, -34, 41, ByteCompanionObject.MAX_VALUE, 6, 122})).build();
                            C1652b.m2734a();
                            C1652b.m2743m().newCall(requestBuild).enqueue(new C3720f(5));
                            return;
                        case 8:
                            ServiceC1080Si.m1527a(bootVar.f1721m);
                            return;
                        case 9:
                            LounchB.m1419c(bootVar.f1721m);
                            return;
                        default:
                            Context context3 = bootVar.f1721m;
                            C0566h c0566h = LocServ.f1268h;
                            context3.startService(new Intent(context3, (Class<?>) LocServ.class));
                            return;
                    }
                }
            });
        }
        C1343d0.m2389d(this.f1721m);
        ScheduledFuture scheduledFuture2 = this.f1715g;
        if (scheduledFuture2 != null && !scheduledFuture2.isCancelled()) {
            this.f1715g.cancel(true);
        }
        if (m1611b(this.f1721m) && bool.booleanValue()) {
            throw null;
        }
        final int i23 = 7;
        this.f1715g = this.f1714f.scheduleWithFixedDelay(new Runnable(this) { // from class: e0.o3

            /* JADX INFO: renamed from: c */
            public final /* synthetic */ boot f3358c;

            {
                this.f3358c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i110 = i23;
                boot bootVar = this.f3358c;
                switch (i110) {
                    case 0:
                        Context context2 = bootVar.f1721m;
                        boolean zLoadBoolean2 = false;
                        try {
                            zLoadBoolean2 = C1652b.m2745o().loadBoolean(MockGpsService.f1423r, false);
                            break;
                        } catch (Exception unused) {
                        }
                        if (zLoadBoolean2) {
                            MockGpsService.m1457m(context2);
                            return;
                        }
                        return;
                    case 1:
                        WeatherService.m2207e(bootVar.f1721m);
                        return;
                    case 2:
                        TService.m1586c(bootVar.f1721m);
                        return;
                    case 3:
                        AllWidgetServices.m1384c(bootVar.f1721m);
                        return;
                    case 4:
                        Notik.m1506g(bootVar.f1721m);
                        return;
                    case 5:
                        OverlayService.m1512c(bootVar.f1721m);
                        return;
                    case 6:
                        SpeedBoardService.m1542b(bootVar.f1721m);
                        return;
                    case 7:
                        Boolean bool2 = bootVar.f1711c;
                        if (MainActivity.m1426w() && bool2.booleanValue()) {
                            throw null;
                        }
                        if (MainActivity.m1425v(bootVar.f1721m) && bool2.booleanValue()) {
                            bootVar.f1722n.toString();
                        }
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject = bootVar.m1615a();
                            break;
                        } catch (JSONException unused2) {
                        }
                        Request requestBuild = new Request.Builder().url(AbstractC1387m.m2421h(new byte[]{94, 15, -109, -102, 95, -67, 67, -42}, new byte[]{54, 123, -25, -22, 44, -121, 108, -7}) + punto.f1870u).post(RequestBody.create(jSONObject.toString(), MediaType.parse(AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, -38, 90, 72, -85, ByteCompanionObject.MIN_VALUE, -110, -43, -120, -59, 68, 11, -88, -112, -100, -49, -38, -118, 73, 76, -93, -111, ByteCompanionObject.MIN_VALUE, -60, -107, -105, 95, 80, -92, -50, -53}, new byte[]{-31, -86, 42, 36, -62, -29, -13, -95})))).addHeader(AbstractC1387m.m2421h(new byte[]{-24, -83, -72, 93, 48, 122, -43, -75, -1, -69, -90, 76}, new byte[]{-85, -62, -42, 41, 85, 20, -95, -104}), AbstractC1387m.m2421h(new byte[]{-84, -93, 24, 101, 42, -108, -123, -122, -92, -68, 6, 38, 41, -124, -117, -100}, new byte[]{-51, -45, 104, 9, 67, -9, -28, -14})).addHeader(AbstractC1387m.m2421h(new byte[]{-31, 62, -127, 73, -75, 70}, new byte[]{-96, 93, -30, 44, -59, 50, 27, 108}), AbstractC1387m.m2421h(new byte[]{112, -44, 101, -78, 64, 28, 103, 14, 120, -53, 123, -15, 67, 12, 105, 20}, new byte[]{17, -92, 21, -34, 41, ByteCompanionObject.MAX_VALUE, 6, 122})).build();
                        C1652b.m2734a();
                        C1652b.m2743m().newCall(requestBuild).enqueue(new C3720f(5));
                        return;
                    case 8:
                        ServiceC1080Si.m1527a(bootVar.f1721m);
                        return;
                    case 9:
                        LounchB.m1419c(bootVar.f1721m);
                        return;
                    default:
                        Context context3 = bootVar.f1721m;
                        C0566h c0566h = LocServ.f1268h;
                        context3.startService(new Intent(context3, (Class<?>) LocServ.class));
                        return;
                }
            }
        }, 10L, 100000L, TimeUnit.MILLISECONDS);
        return 1;
    }

    public native boolean pusk(String str);
}
