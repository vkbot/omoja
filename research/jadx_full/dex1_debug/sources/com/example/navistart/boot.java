package com.example.navistart;

import android.app.ActivityOptions;
import android.app.Notification$Builder;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.Signature;
import android.hardware.display.DisplayManager;
import android.os.Build$VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.provider.Settings$Secure;
import android.util.Base64;
import android.util.Log;
import android.view.Display;
import b1.c;
import c5.h;
import e0.d0;
import e0.m;
import e0.n3;
import e0.o3;
import e0.p3;
import e0.v;
import e0.w;
import e0.x1;
import e0.z2;
import h0.b;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONException;
import org.json.JSONObject;
import p0.j;
import u0.a;
import w0.d;
import y5.k;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class boot extends Service {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static boolean f891u = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Notification$Builder f892b;
    public final Boolean c;
    public final v d;
    public ScheduledFuture e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f893f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ScheduledFuture f894g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public IntentFilter f895h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public IntentFilter f896i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public IntentFilter f897j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public IntentFilter f898k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Boolean f899l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Context f900m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Intent f901n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public c f902o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public MyCarReceiver f903p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public d0 f904q;
    public n3 r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public NotificationManager f905s;
    public boolean t;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boot() {
        Boolean bool = Boolean.TRUE;
        this.c = bool;
        this.d = w.b(1000L, m.h(new byte[]{-119, -102, 7, 24}, new byte[]{-21, -11, 104, 108, -66, 99, 105, -91}));
        this.f893f = w.c(-1, null);
        m.h(new byte[]{-54, -124, 54, 2, -49, -20, 107, 3, -62, -124, 62, 17, -23, -1}, new byte[]{-93, -22, 95, 118, -116, -115, 25, 78});
        this.f899l = bool;
        this.f905s = null;
        this.t = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean b(Context context) {
        byte[] bArr = m.f1897k;
        String[] strArr = p3.f1924a;
        return !new String(bArr).equals(c(context));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String c(Context context) {
        String strEncodeToString = null;
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
            if (signatureArr != null) {
                for (Signature signature : signatureArr) {
                    byte[] bArr = m.f1894h;
                    String[] strArr = p3.f1924a;
                    MessageDigest messageDigest = MessageDigest.getInstance(new String(bArr));
                    messageDigest.update(signature.toByteArray());
                    strEncodeToString = Base64.encodeToString(messageDigest.digest(), 0);
                }
            }
        } catch (Exception unused) {
        }
        return strEncodeToString;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String d(Context context) {
        return Settings$Secure.getString(context.getContentResolver(), m.h(new byte[]{95, -10, 37, 79, 83, -66, 27, -26, 87, -4}, new byte[]{62, -104, 65, kotlin.io.encoding.Base64.padSymbol, 60, -41, ByteCompanionObject.MAX_VALUE, -71}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String e(String str) {
        try {
            byte[] bArr = m.f1895i;
            String[] strArr = p3.f1924a;
            byte[] bArrDigest = MessageDigest.getInstance(new String(bArr)).digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b9 : bArrDigest) {
                sb.append(Integer.toString((b9 & UByte.MAX_VALUE) + 256, 16).substring(1));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(m.h(new byte[]{90, 59}, new byte[]{63, 86, 125, 38, -119, -40, 44, 67}), e(b.o().loadString(d(this.f900m), "") + d(this.f900m)));
        jSONObject.put(m.h(new byte[]{-104, 1}, new byte[]{-15, 101, -1, -117, -94, -118, 8, -127}), d(this.f900m));
        jSONObject.put(m.h(new byte[]{-88, -48}, new byte[]{-37, -72, 18, 105, -86, 69, -117, -70}), e(d(this.f900m)));
        String strH = m.h(new byte[]{119, 25}, new byte[]{7, 112, -75, 5, 97, 29, 112, -109});
        a aVarO = b.o();
        byte[] bArr = m.f1896j;
        String[] strArr = p3.f1924a;
        jSONObject.put(strH, aVarO.loadString(new String(bArr), ""));
        jSONObject.put(m.h(new byte[]{-114, -30}, new byte[]{-19, -113, -59, 115, 111, -121, -24, -89}), m.h(new byte[]{99, 89}, new byte[]{17, 44, 85, -113, -104, -93, 124, -36}));
        return jSONObject;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f() {
        boolean zW = MainActivity.w();
        Boolean bool = this.c;
        if (zW && bool.booleanValue()) {
            throw null;
        }
        if (MainActivity.v(this.f900m) && bool.booleanValue()) {
            this.f901n.toString();
        }
        this.f901n = new Intent(m.h(new byte[]{-15, -44, -112, -79, -34, -115, 36, -45, -7, -44, ByteCompanionObject.MIN_VALUE, -90, -33, -112, 110, -100, -13, -50, -99, -84, -33, -54, 20, -76, -35, -1, -85, -105, -8, -89, 11}, new byte[]{-112, -70, -12, -61, -79, -28, 64, -3}));
        new MyCarReceiver().onReceive(this.f900m, this.f901n);
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
        f891u = true;
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 26) {
            if (this.f905s == null) {
                this.f905s = (NotificationManager) getSystemService(m.h(new byte[]{27, 112, 4, 3, -127, 85, -47, -106, 1, 118, 31, 4}, new byte[]{117, 31, 112, 106, -25, 60, -78, -9}));
            }
            if (!this.t) {
                d.g();
                NotificationChannel notificationChannelD = h.d(m.h(new byte[]{91, -67, -42, -106, -54, -4, -53, 69, 97, -113, -59, -115, -17, -31, -55, 82}, new byte[]{21, -36, -96, -1, -103, -120, -86, 55}), m.h(new byte[]{-126, 86, -3, 63, -11, -73, 121, 124, -82, 83}, new byte[]{-64, 55, -98, 84, -110, -59, 22, 9}));
                h.p(notificationChannelD);
                h.C(notificationChannelD);
                h.D(notificationChannelD);
                d.h(this.f905s, notificationChannelD);
                this.t = true;
            }
            this.f892b = h.c(getApplicationContext(), m.h(new byte[]{59, -124, -73, -115, -89, 69, 125, -109, 1, -74, -92, -106, -126, 88, ByteCompanionObject.MAX_VALUE, -124}, new byte[]{117, -27, -63, -28, -12, 49, 28, -31}));
        } else {
            this.f892b = new Notification$Builder(getApplicationContext());
        }
        startForeground(1, this.f892b.build());
        this.f900m = (pusk(c(this)) || !this.f899l.booleanValue()) ? this : this.f900m;
        this.f902o = new c();
        IntentFilter intentFilter = new IntentFilter();
        this.f895h = intentFilter;
        b.a();
        intentFilter.addAction(b.l().b());
        c cVar = this.f902o;
        IntentFilter intentFilter2 = this.f895h;
        if (i9 >= 33) {
            h.v(this, cVar, intentFilter2);
        } else {
            registerReceiver(cVar, intentFilter2);
        }
        this.f903p = new MyCarReceiver();
        IntentFilter intentFilter3 = new IntentFilter();
        this.f896i = intentFilter3;
        intentFilter3.addAction(m.h(new byte[]{-38, -95, 63, -86, 47, -38, 26, -119, -46, -95, 47, -67, 46, -57, 80, -58, -40, -69, 50, -73, 46, -99, 45, -28, -23, -118, 30, -106, 31, -4, 48}, new byte[]{-69, -49, 91, -40, 64, -77, 126, -89}));
        this.f896i.addAction(m.h(new byte[]{-78, -108, 78, 58, -57, -86, -120, -68, -79, -106, 95, 45, -36, -84, -125, -26, -69, -44, 78, 45, -34, -86, -113, -9, -3, -101, 73, 60, -63, -84, -126, -68, -110, -71, 102, 23, -21, -116, -94, -36, -106, -71, 126, 13, -20}, new byte[]{-45, -6, 42, 72, -88, -61, -20, -110}));
        this.f896i.addAction(m.h(new byte[]{2, ByteCompanionObject.MAX_VALUE, 88, -69, 26, 27, -93, 91, 10, ByteCompanionObject.MAX_VALUE, 72, -84, 27, 6, -23, 20, 0, 101, 85, -90, 27, 92, -108, 54, 49, 84, 121, -121, 42, kotlin.io.encoding.Base64.padSymbol, -127, 51}, new byte[]{99, 17, 60, -55, 117, 114, -57, 117}));
        this.f896i.addAction(m.h(new byte[]{-124, -5, -92, 95, -58, -115, -127, 82, -116, -5, -76, 72, -57, -112, -53, 29, -122, -31, -87, 66, -57, -54, -80, 47, -96, -57, -97, 125, -5, -95, -74, 57, -85, -63}, new byte[]{-27, -107, -64, 45, -87, -28, -27, 124}));
        MyCarReceiver myCarReceiver = this.f903p;
        IntentFilter intentFilter4 = this.f896i;
        if (i9 >= 33) {
            h.v(this, myCarReceiver, intentFilter4);
        } else {
            registerReceiver(myCarReceiver, intentFilter4);
        }
        this.f904q = new d0(this.f900m);
        IntentFilter intentFilter5 = new IntentFilter();
        this.f897j = intentFilter5;
        intentFilter5.addAction(m.h(new byte[]{-57, -70, 65, 53, -22, 116, -27, 46, -49, -70, 81, 34, -21, 105, -81, 97, -59, -96, 76, 40, -21, 51, -30, 97, -44, -117, 86, 62, -10, 105, -28, 109, -7, -77, 64, 52, -15, 104, -13, 101, -7, -71, 74, 35, -32}, new byte[]{-90, -44, 37, 71, -123, 29, -127, 0}));
        d0 d0Var = this.f904q;
        IntentFilter intentFilter6 = this.f897j;
        if (i9 >= 33) {
            h.v(this, d0Var, intentFilter6);
        } else {
            registerReceiver(d0Var, intentFilter6);
        }
        n3 n3Var = new n3();
        n3Var.f1910a = true;
        this.r = n3Var;
        IntentFilter intentFilter7 = new IntentFilter();
        this.f898k = intentFilter7;
        intentFilter7.addAction(m.h(new byte[]{123, 5, 95, 90, 50, 76, -32, 25, 71, 89, 28, 92, 41, 64, -15, 10}, new byte[]{34, 43, 50, 59, 92, 41, -107, 111}));
        this.f898k.addAction(m.h(new byte[]{-78, -20, -65, 18, 90, -40, 1, -25, -114, -80, -4, 5, 93, -50}, new byte[]{-21, -62, -46, 115, 52, -67, 116, -111}));
        n3 n3Var2 = this.r;
        IntentFilter intentFilter8 = this.f898k;
        if (i9 >= 33) {
            h.v(this, n3Var2, intentFilter8);
        } else {
            registerReceiver(n3Var2, intentFilter8);
        }
        d0.d(this.f900m);
        byte[] bArr = punto.f1004v;
        String str = z2.f2015a;
        punto.f1003u = new String(bArr);
        d0.d(this.f900m);
        if (b(this.f900m) && this.c.booleanValue()) {
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        f891u = false;
        j.b();
        c cVar = this.f902o;
        if (cVar != null) {
            unregisterReceiver(cVar);
        }
        MyCarReceiver myCarReceiver = this.f903p;
        if (myCarReceiver != null) {
            unregisterReceiver(myCarReceiver);
        }
        d0 d0Var = this.f904q;
        if (d0Var != null) {
            unregisterReceiver(d0Var);
        }
        n3 n3Var = this.r;
        if (n3Var != null) {
            unregisterReceiver(n3Var);
        }
        Intent intent = new Intent(this.f900m.getApplicationContext(), (Class<?>) boot.class);
        intent.putExtra(m.h(new byte[]{-10}, new byte[]{-110, 34, ByteCompanionObject.MAX_VALUE, 19, -70, -10, -23, 119}), -1);
        if (Build$VERSION.SDK_INT >= 26) {
            h.w(this, intent);
        } else {
            startService(intent);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        int i11;
        Intent launchIntentForPackage;
        boolean zLoadBoolean = b.o().loadBoolean(m.h(new byte[]{40, 94, -44, -65, 34, 94, 77, -34, 46, 114, -39, -92, 25, 90, 98, -53, 51, 76, -45, -95, 24, 91}, new byte[]{93, 45, -79, -51, 125, 63, kotlin.io.encoding.Base64.padSymbol, -82}), false);
        boolean zB = b(this.f900m);
        Boolean bool = this.c;
        if (zB && bool.booleanValue()) {
            throw null;
        }
        try {
            b.a();
            b.r().Ping(m.h(new byte[]{2, -42, 52, -19, 87, 105, 126, 0, 10, -36}, new byte[]{99, -72, 80, -97, 56, 0, 26, 95}));
        } catch (SecurityException e) {
            e.printStackTrace();
        }
        a aVarO = b.o();
        byte[] bArr = m.e;
        String[] strArr = p3.f1924a;
        aVarO.saveString(new String(bArr), x1.f1989q);
        d0.d(this.f900m);
        if (zLoadBoolean) {
            Context context = this.f900m;
            String str = j.f4564l;
            new Handler(Looper.getMainLooper()).post(new androidx.profileinstaller.c(context.getApplicationContext(), 9));
        } else {
            j.b();
            Bundle extras = intent != null ? intent.getExtras() : null;
            if (extras != null && (i11 = extras.getInt(m.h(new byte[]{12}, new byte[]{104, 23, -69, 126, -121, -50, -33, -103}))) > -1) {
                String strLoadString = b.o().loadString(m.h(new byte[]{105, -105, 63}, new byte[]{25, -4, 88, 31, -34, -83, -126, -17}), m.h(new byte[]{33, 53, -68, 30, 69, -64, 3, 91, 43, 110, -21, 6, 74, -54, 2, 70, kotlin.io.encoding.Base64.padSymbol, 33, -28, 14}, new byte[]{83, 64, -110, 103, 36, -82, 103, 62}));
                Display[] displays = ((DisplayManager) getApplicationContext().getSystemService(m.h(new byte[]{-51, 12, 25, 6, 83, 84, -115}, new byte[]{-87, 101, 106, 118, 63, 53, -12, -119}))).getDisplays();
                if (displays.length > 1 && (launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(strLoadString)) != null) {
                    if (Build$VERSION.SDK_INT >= 26) {
                        k.u(this, launchIntentForPackage, h.b(ActivityOptions.makeBasic(), displays[i11].getDisplayId()).toBundle());
                    }
                    Log.e(m.h(new byte[]{kotlin.io.encoding.Base64.padSymbol, 14, -95, 64}, new byte[]{ByteCompanionObject.MAX_VALUE, 65, -18, 20, 117, 15, -93, -61}), m.h(new byte[]{-27, 42, -92, -36, -55, -127, 65, 37, -62, 55, -77, -57, -55, -40}, new byte[]{-74, 94, -59, -82, -67, -95, 0, 70}));
                }
            }
            d0.d(this.f900m);
            com.bumptech.glide.m mVar = new com.bumptech.glide.m(2, this);
            ScheduledFuture scheduledFuture = this.e;
            if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                this.e.cancel(false);
            }
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            v vVar = this.d;
            this.e = vVar.f1975b.schedule(mVar, 20000L, timeUnit);
            f();
            vVar.execute(new o3(this, 8));
            vVar.execute(new o3(this, 9));
            vVar.execute(new o3(this, 10));
            vVar.execute(new o3(this, 0));
            vVar.execute(new o3(this, 1));
            vVar.execute(new o3(this, 2));
            vVar.execute(new o3(this, 3));
            vVar.execute(new o3(this, 4));
            vVar.execute(new o3(this, 5));
            vVar.execute(new o3(this, 6));
        }
        d0.d(this.f900m);
        ScheduledFuture scheduledFuture2 = this.f894g;
        if (scheduledFuture2 != null && !scheduledFuture2.isCancelled()) {
            this.f894g.cancel(true);
        }
        if (b(this.f900m) && bool.booleanValue()) {
            throw null;
        }
        this.f894g = this.f893f.scheduleWithFixedDelay(new o3(this, 7), 10L, 100000L, TimeUnit.MILLISECONDS);
        return 1;
    }

    public native boolean pusk(String str);
}
