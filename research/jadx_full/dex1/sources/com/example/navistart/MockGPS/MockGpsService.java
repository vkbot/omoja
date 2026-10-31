package com.example.navistart.MockGPS;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import e0.m;
import h0.b;
import j.i;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import q0.d;
import q0.e;
import q0.f;
import q0.g;
import q0.h;
import q0.p;
import q0.q;
import q0.s;
import q0.t;
import u0.a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MockGpsService extends Service {
    public static volatile Context F;
    public static volatile boolean G;
    public static volatile long H;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static volatile String f759x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static volatile boolean f761z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e f762b;
    public h c;
    public s d;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f744f = m.h(new byte[]{-11, -22, -53, -14, -65, -16, 57, -42, -57, -10, -57, -20, -110, -12, 44, -6, -20, -4, -40, -4}, new byte[]{-104, -123, -88, -103, -32, -105, 73, -91});

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f745g = m.h(new byte[]{86, 95, -114, -29, -34, 83, 32, -35, 100, 88, -126, -5, -11}, new byte[]{59, 48, -19, -120, -127, 52, 80, -82});

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f746h = m.h(new byte[]{-83, 120, 40, -69, 79, -121, 95, 20, -97, 103, 36, -94, 100}, new byte[]{-64, 23, 75, -48, 16, -32, 47, 103});

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f747i = m.h(new byte[]{66, -118, 107, 119, -119, -16, 8, 97, 112, -124, 125, 104, -71, -56, 30, 115, 67, -119, 106, 125, -75, -4}, new byte[]{47, -27, 8, 28, -42, -105, 120, 18});

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f748j = m.h(new byte[]{-21, -89, -82, -38, -69, 125, -88, 37, -21}, new byte[]{-101, -49, -63, -76, -34, 34, -55, 85});

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f749k = m.h(new byte[]{125, -26, -96, 23, -13, 114, 114, 99, ByteCompanionObject.MAX_VALUE, -28, -116, 33, -17, 100}, new byte[]{26, -106, -45, 72, ByteCompanionObject.MIN_VALUE, 23, 0, 21});

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f750l = m.h(new byte[]{-33, -66, 113}, new byte[]{-86, -51, 19, -62, -84, 34, 85, -39});

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f751m = m.h(new byte[]{63, -96, Base64.padSymbol, -45, -110}, new byte[]{82, -49, 89, -74, -1, 31, -4, 30});

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f752n = m.h(new byte[]{89, -125, -64, -48, -94, 22, 12, 39, 113, -98, -43, -46, -122, 3}, new byte[]{20, -20, -93, -69, -27, 102, ByteCompanionObject.MAX_VALUE, 116});

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f753o = m.h(new byte[]{Base64.padSymbol, -2, -80, 113, 110, -28, -23, -23, 3, -2, -90, 104, 74, -47, -27, -62, 9, -31, -74}, new byte[]{112, -111, -45, 26, 41, -76, -70, -74});

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f754p = m.h(new byte[]{-14, -88, -61, 34, -89, 39, 64, -19, -41, -88, -45, Base64.padSymbol}, new byte[]{-65, -57, -96, 73, -32, 119, 19, -78});

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f755q = m.h(new byte[]{83, -45, -81, 89, 62, -98, -111, 98, 110, -45, -66, 70}, new byte[]{30, -68, -52, 50, 121, -50, -62, Base64.padSymbol});
    public static final String r = m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 107, -91, -35, -93, 57, 99, -48, -84, 113, -78, -39, -105, 29, 81, -3, -71}, new byte[]{-51, 4, -58, -74, -28, 105, 48, -113});

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f756s = m.h(new byte[]{33, 116, -82, 55, -121, -4, -105, 41, 13, 110, -71, 51, -97, -54, -91, 26, 0, 121, -84, 63, -85}, new byte[]{108, 27, -51, 92, -64, -84, -60, 118});
    public static final AtomicBoolean t = new AtomicBoolean(false);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final AtomicBoolean f757u = new AtomicBoolean(false);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final AtomicBoolean f758v = new AtomicBoolean(false);
    public static volatile String w = m.h(new byte[]{23, -63, -33, 35, -71, -69, -20, 124, 23}, new byte[]{103, -87, -80, 77, -36, -28, -115, 12});

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static volatile int f760y = 8887;
    public static volatile String A = "";
    public static volatile String B = "";
    public static volatile String C = "";
    public static volatile String D = "";
    public static volatile String E = "";

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int a(String str) {
        if (f749k.equals(str)) {
            return 8887;
        }
        if (f750l.equals(str)) {
            return 460800;
        }
        return f751m.equals(str) ? 11010 : 8887;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(Context context) {
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        F = applicationContext;
        if (G) {
            return;
        }
        A = applicationContext.getString(2131952261);
        B = applicationContext.getString(2131952265);
        C = applicationContext.getString(2131952213, 8887);
        D = applicationContext.getString(2131952246);
        E = applicationContext.getString(2131952242);
        G = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean c(int i9, String str) {
        if (f750l.equals(str)) {
            return i9 >= 1200 && i9 <= 921600;
        }
        return i9 > 0 && i9 <= 65535;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static g d(Context context) {
        b(context);
        String str = f753o;
        String strLoadString = f748j;
        try {
            strLoadString = b.o().loadString(str, strLoadString);
        } catch (Exception unused) {
        }
        String strF = f(strLoadString);
        String strLoadString2 = "";
        try {
            strLoadString2 = b.o().loadString(f754p, "");
        } catch (Exception unused2) {
        }
        String str2 = f755q;
        int iA = a(strF);
        try {
            iA = b.o().loadInt(str2, iA);
        } catch (Exception unused3) {
        }
        try {
            b.o().loadBoolean(f756s, false);
        } catch (Exception unused4) {
        }
        return e(iA, strF, strLoadString2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static g e(int i9, String str, String str2) {
        String strF = f(str);
        if (!c(i9, strF)) {
            i9 = a(strF);
        }
        String str3 = null;
        if (str2 != null) {
            String strTrim = str2.trim();
            if (!strTrim.isEmpty()) {
                str3 = strTrim;
            }
        }
        return new g(strF, str3, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String f(String str) {
        String str2 = f749k;
        if (str2.equals(str)) {
            return str2;
        }
        String str3 = f750l;
        if (str3.equals(str)) {
            return str3;
        }
        String str4 = f751m;
        if (str4.equals(str)) {
            return str4;
        }
        String str5 = f748j;
        str5.equals(str);
        return str5;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void j(String str, String str2, boolean z8) {
        if (t.get()) {
            f757u.set(z8);
            B = str;
            C = str2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void k(g gVar) {
        try {
            b.o().saveString(f753o, gVar.f4781b);
            a aVarO = b.o();
            String str = f754p;
            String str2 = gVar.c;
            if (str2 == null) {
                str2 = "";
            }
            aVarO.saveString(str, str2);
            b.o().saveInt(f755q, gVar.d);
            b.o().saveBoolean(f756s, false);
        } catch (Exception unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void l(String str) {
        f758v.set(false);
        H = 0L;
        E = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void m(Context context) {
        g gVarD = d(context);
        String str = gVarD.f4781b;
        String str2 = gVarD.c;
        int i9 = gVarD.d;
        try {
            b.o().loadBoolean(f756s, false);
        } catch (Exception unused) {
        }
        n(context, i9, str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void n(Context context, int i9, String str, String str2) {
        b(context);
        g gVarE = e(i9, str, str2);
        k(gVarE);
        Intent intent = new Intent(context, (Class<?>) MockGpsService.class);
        intent.putExtra(f744f, gVarE.f4781b);
        String str3 = gVarE.c;
        if (str3 != null && !str3.isEmpty()) {
            intent.putExtra(f745g, str3);
        }
        intent.putExtra(f746h, gVarE.d);
        intent.putExtra(f747i, false);
        context.startService(intent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g() {
        e eVar = this.f762b;
        if (eVar != null) {
            eVar.d();
        }
        l(getString(2131952241));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h() {
        e eVar = this.f762b;
        if (eVar != null) {
            eVar.d();
        }
        l(getString(2131952240));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(q qVar) {
        Float f8 = qVar.e;
        String string = f8 == null ? getString(2131952208) : getString(2131952207, f8);
        Double dValueOf = Double.valueOf(qVar.f4824a);
        Double dValueOf2 = Double.valueOf(qVar.f4825b);
        String str = qVar.f4833m;
        int i9 = qVar.f4828h;
        Float f9 = qVar.e;
        if (i9 <= 0 && (i9 = qVar.f4830j) <= 0 && (i9 = qVar.f4829i) <= 0) {
            i9 = (f9 == null || f9.floatValue() > 10.0f) ? (f9 == null || f9.floatValue() > 30.0f) ? 4 : 6 : 10;
        }
        D = getString(2131952249, dValueOf, dValueOf2, string, str, Integer.valueOf(i9));
        if (!f761z || this.e) {
            e eVar = this.f762b;
            if (eVar != null) {
                synchronized (eVar) {
                    if (eVar.b()) {
                        try {
                            for (String str2 : eVar.f4778b) {
                                eVar.f4777a.setTestProviderLocation(str2, e.a(qVar, str2));
                            }
                            f758v.set(true);
                            H = System.currentTimeMillis();
                            E = getString(2131952237, A);
                            Log.d(f752n, m.h(new byte[]{7, -80, -25, -25, 90, 55, -49, -63, 5, -122, -86, -23, 94, 34, -125, -17, 48, -79}, new byte[]{85, -43, -118, -120, 46, 82, -17, -122}));
                            return;
                        } catch (IllegalArgumentException | SecurityException e) {
                            Log.w(e.c, m.h(new byte[]{-93, 66, -119, 47, -70, 105, 74, 121, -112, 83, -117, 56, -11, 112, 5, 123, -117, 3, -117, 46, -74, 124, 30, 113, -113, 77}, new byte[]{-32, 35, -25, 65, -43, 29, 106, 24}), e);
                            eVar.d();
                        }
                    }
                }
            }
            l(getString(2131952239));
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
        b(this);
        this.f762b = new e(this);
        this.d = new s(this, new f(0, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        t.set(false);
        f757u.set(false);
        l(getString(2131952242));
        B = getString(2131952265);
        h hVar = this.c;
        if (hVar != null) {
            hVar.stop();
            this.c = null;
        }
        s sVar = this.d;
        if (sVar != null) {
            sVar.a();
        }
        e eVar = this.f762b;
        if (eVar != null) {
            eVar.d();
        }
        super.onDestroy();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:23:0x007b  */
    /* JADX WARN: Code duplicated, block: B:54:0x017c  */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        String str;
        h mVar;
        boolean z8;
        boolean zLoadBoolean;
        y0.g.d(this);
        g gVarD = d(this);
        String strF = gVarD.f4781b;
        String stringExtra = gVarD.c;
        int intExtra = gVarD.d;
        if (intent != null) {
            String str2 = f744f;
            if (intent.hasExtra(str2)) {
                strF = f(intent.getStringExtra(str2));
                if (!strF.equals(gVarD.f4781b)) {
                    intExtra = a(strF);
                    stringExtra = null;
                }
            }
            String str3 = f745g;
            if (intent.hasExtra(str3)) {
                stringExtra = intent.getStringExtra(str3);
            }
            String str4 = f746h;
            if (intent.hasExtra(str4)) {
                intExtra = intent.getIntExtra(str4, a(strF));
            }
            String str5 = f747i;
            if (intent.hasExtra(str5)) {
                intent.getBooleanExtra(str5, false);
            }
        }
        g gVarE = e(intExtra, strF, stringExtra);
        k(gVarE);
        String str6 = gVarE.f4781b;
        String str7 = gVarE.c;
        int iA = gVarE.d;
        String strF2 = f(str6);
        if (!c(iA, strF2)) {
            iA = a(strF2);
        }
        int i11 = iA;
        if (str7 == null) {
            str = null;
        } else {
            String strTrim = str7.trim();
            if (strTrim.isEmpty()) {
                str = null;
            } else {
                str = strTrim;
            }
        }
        if (this.c == null || !strF2.equals(w)) {
            h hVar = this.c;
            if (hVar != null) {
                hVar.stop();
            }
            if (f749k.equals(strF2)) {
                mVar = new d(this, this);
            } else if (f750l.equals(strF2)) {
                mVar = new t(this, this);
            } else {
                mVar = f751m.equals(strF2) ? new q0.m(this, this, m.h(new byte[]{87, -70, 104, 103, 81}, new byte[]{58, -43, 12, 2, 60, -122, -95, 44}), getString(2131952260), getString(2131952212), getString(2131952244), m.h(new byte[]{4, 86, -42, -9, -119, 74, -67, -61, 26, 86, -57, -32, -121, 104}, new byte[]{73, 57, -78, -110, -28, 13, -51, -80}), new org.apache.commons.net.ftp.a(3), m.h(new byte[]{-104, 65, -38, 41, 123, 59, -19, -25, -109, 65}, new byte[]{-10, 44, -65, 72, 36, 86, -126, -125})) : new p(this, this);
            }
            this.c = mVar;
            w = mVar.getType();
            A = this.c.getTitle();
            f757u.set(false);
            l(getString(2131952242));
        }
        f759x = str;
        f760y = i11;
        this.c.b(new i(str, i11));
        C = this.c.a();
        t.set(true);
        B = getString(2131952264);
        this.c.start();
        if (f748j.equals(w)) {
            try {
                zLoadBoolean = b.o().loadBoolean(f756s, false);
            } catch (Exception unused) {
                zLoadBoolean = false;
            }
            if (zLoadBoolean) {
                z8 = true;
            } else {
                z8 = false;
            }
        } else {
            z8 = false;
        }
        f761z = z8;
        this.e = !f761z;
        s sVar = this.d;
        if (sVar != null) {
            sVar.a();
        }
        boolean z9 = !f761z;
        h hVar2 = this.c;
        if (hVar2 instanceof p) {
            p pVar = (p) hVar2;
            pVar.f4819j = z9;
            pVar.e();
        }
        if (f761z) {
            e eVar = this.f762b;
            if (eVar != null) {
                eVar.d();
            }
            l(getString(2131952242));
            s sVar2 = this.d;
            if (!sVar2.e) {
                sVar2.e = true;
                sVar2.f4850f = false;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                sVar2.f4851g = jElapsedRealtime;
                sVar2.f4852h = jElapsedRealtime;
                sVar2.f4853i = 0L;
                s.f4847l = 0;
                s.f4848m = 0L;
                try {
                    sVar2.f4849b.requestLocationUpdates(m.h(new byte[]{67, 102, 22}, new byte[]{36, 22, 101, 31, -126, -97, 44, 108}), 1000L, 0.0f, sVar2, Looper.getMainLooper());
                    sVar2.f4849b.registerGnssStatusCallback(sVar2.f4855k, sVar2.d);
                } catch (IllegalArgumentException | SecurityException unused2) {
                }
                sVar2.d.post(sVar2.f4854j);
            }
        }
        return 1;
    }
}
