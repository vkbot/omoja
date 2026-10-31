package com.example.navistart.MockGPS;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.example.navistart.R;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import org.apache.commons.net.ftp.C2930a;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p097j.C1897i;
import p173q0.C3040d;
import p173q0.C3041e;
import p173q0.C3042f;
import p173q0.C3043g;
import p173q0.C3049m;
import p173q0.C3052p;
import p173q0.C3053q;
import p173q0.C3055s;
import p173q0.C3056t;
import p173q0.InterfaceC3044h;
import p206u0.C3277a;
import p245y0.AbstractC3629g;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MockGpsService extends Service {

    /* JADX INFO: renamed from: F */
    public static volatile Context f1408F;

    /* JADX INFO: renamed from: G */
    public static volatile boolean f1409G;

    /* JADX INFO: renamed from: H */
    public static volatile long f1410H;

    /* JADX INFO: renamed from: x */
    public static volatile String f1429x;

    /* JADX INFO: renamed from: z */
    public static volatile boolean f1431z;

    /* JADX INFO: renamed from: b */
    public C3041e f1432b;

    /* JADX INFO: renamed from: c */
    public InterfaceC3044h f1433c;

    /* JADX INFO: renamed from: d */
    public C3055s f1434d;

    /* JADX INFO: renamed from: e */
    public boolean f1435e;

    /* JADX INFO: renamed from: f */
    public static final String f1411f = AbstractC1387m.m2421h(new byte[]{-11, -22, -53, -14, -65, -16, 57, -42, -57, -10, -57, -20, -110, -12, 44, -6, -20, -4, -40, -4}, new byte[]{-104, -123, -88, -103, -32, -105, 73, -91});

    /* JADX INFO: renamed from: g */
    public static final String f1412g = AbstractC1387m.m2421h(new byte[]{86, 95, -114, -29, -34, 83, 32, -35, 100, 88, -126, -5, -11}, new byte[]{59, 48, -19, -120, -127, 52, 80, -82});

    /* JADX INFO: renamed from: h */
    public static final String f1413h = AbstractC1387m.m2421h(new byte[]{-83, 120, 40, -69, 79, -121, 95, 20, -97, 103, 36, -94, 100}, new byte[]{-64, 23, 75, -48, 16, -32, 47, 103});

    /* JADX INFO: renamed from: i */
    public static final String f1414i = AbstractC1387m.m2421h(new byte[]{66, -118, 107, 119, -119, -16, 8, 97, 112, -124, 125, 104, -71, -56, 30, 115, 67, -119, 106, 125, -75, -4}, new byte[]{47, -27, 8, 28, -42, -105, 120, 18});

    /* JADX INFO: renamed from: j */
    public static final String f1415j = AbstractC1387m.m2421h(new byte[]{-21, -89, -82, -38, -69, 125, -88, 37, -21}, new byte[]{-101, -49, -63, -76, -34, 34, -55, 85});

    /* JADX INFO: renamed from: k */
    public static final String f1416k = AbstractC1387m.m2421h(new byte[]{125, -26, -96, 23, -13, 114, 114, 99, ByteCompanionObject.MAX_VALUE, -28, -116, 33, -17, 100}, new byte[]{26, -106, -45, 72, ByteCompanionObject.MIN_VALUE, 23, 0, 21});

    /* JADX INFO: renamed from: l */
    public static final String f1417l = AbstractC1387m.m2421h(new byte[]{-33, -66, 113}, new byte[]{-86, -51, 19, -62, -84, 34, 85, -39});

    /* JADX INFO: renamed from: m */
    public static final String f1418m = AbstractC1387m.m2421h(new byte[]{63, -96, Base64.padSymbol, -45, -110}, new byte[]{82, -49, 89, -74, -1, 31, -4, 30});

    /* JADX INFO: renamed from: n */
    public static final String f1419n = AbstractC1387m.m2421h(new byte[]{89, -125, -64, -48, -94, 22, 12, 39, 113, -98, -43, -46, -122, 3}, new byte[]{20, -20, -93, -69, -27, 102, ByteCompanionObject.MAX_VALUE, 116});

    /* JADX INFO: renamed from: o */
    public static final String f1420o = AbstractC1387m.m2421h(new byte[]{Base64.padSymbol, -2, -80, 113, 110, -28, -23, -23, 3, -2, -90, 104, 74, -47, -27, -62, 9, -31, -74}, new byte[]{112, -111, -45, 26, 41, -76, -70, -74});

    /* JADX INFO: renamed from: p */
    public static final String f1421p = AbstractC1387m.m2421h(new byte[]{-14, -88, -61, 34, -89, 39, 64, -19, -41, -88, -45, Base64.padSymbol}, new byte[]{-65, -57, -96, 73, -32, 119, 19, -78});

    /* JADX INFO: renamed from: q */
    public static final String f1422q = AbstractC1387m.m2421h(new byte[]{83, -45, -81, 89, 62, -98, -111, 98, 110, -45, -66, 70}, new byte[]{30, -68, -52, 50, 121, -50, -62, Base64.padSymbol});

    /* JADX INFO: renamed from: r */
    public static final String f1423r = AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MIN_VALUE, 107, -91, -35, -93, 57, 99, -48, -84, 113, -78, -39, -105, 29, 81, -3, -71}, new byte[]{-51, 4, -58, -74, -28, 105, 48, -113});

    /* JADX INFO: renamed from: s */
    public static final String f1424s = AbstractC1387m.m2421h(new byte[]{33, 116, -82, 55, -121, -4, -105, 41, 13, 110, -71, 51, -97, -54, -91, 26, 0, 121, -84, 63, -85}, new byte[]{108, 27, -51, 92, -64, -84, -60, 118});

    /* JADX INFO: renamed from: t */
    public static final AtomicBoolean f1425t = new AtomicBoolean(false);

    /* JADX INFO: renamed from: u */
    public static final AtomicBoolean f1426u = new AtomicBoolean(false);

    /* JADX INFO: renamed from: v */
    public static final AtomicBoolean f1427v = new AtomicBoolean(false);

    /* JADX INFO: renamed from: w */
    public static volatile String f1428w = AbstractC1387m.m2421h(new byte[]{23, -63, -33, 35, -71, -69, -20, 124, 23}, new byte[]{103, -87, -80, 77, -36, -28, -115, 12});

    /* JADX INFO: renamed from: y */
    public static volatile int f1430y = 8887;

    /* JADX INFO: renamed from: A */
    public static volatile String f1403A = "";

    /* JADX INFO: renamed from: B */
    public static volatile String f1404B = "";

    /* JADX INFO: renamed from: C */
    public static volatile String f1405C = "";

    /* JADX INFO: renamed from: D */
    public static volatile String f1406D = "";

    /* JADX INFO: renamed from: E */
    public static volatile String f1407E = "";

    /* JADX INFO: renamed from: a */
    public static int m1448a(String str) {
        if (f1416k.equals(str)) {
            return 8887;
        }
        if (f1417l.equals(str)) {
            return 460800;
        }
        return f1418m.equals(str) ? 11010 : 8887;
    }

    /* JADX INFO: renamed from: b */
    public static void m1449b(Context context) {
        if (context == null) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        f1408F = applicationContext;
        if (f1409G) {
            return;
        }
        f1403A = applicationContext.getString(R.string.mock_gps_source_phone_app);
        f1404B = applicationContext.getString(R.string.mock_gps_status_stopped);
        f1405C = applicationContext.getString(R.string.mock_gps_auto_wifi_gateway, 8887);
        f1406D = applicationContext.getString(R.string.mock_gps_no_packets);
        f1407E = applicationContext.getString(R.string.mock_gps_mock_system);
        f1409G = true;
    }

    /* JADX INFO: renamed from: c */
    public static boolean m1450c(int i10, String str) {
        if (f1417l.equals(str)) {
            return i10 >= 1200 && i10 <= 921600;
        }
        return i10 > 0 && i10 <= 65535;
    }

    /* JADX INFO: renamed from: d */
    public static C3043g m1451d(Context context) {
        m1449b(context);
        String str = f1420o;
        String strLoadString = f1415j;
        try {
            strLoadString = C1652b.m2745o().loadString(str, strLoadString);
        } catch (Exception unused) {
        }
        String strM1453f = m1453f(strLoadString);
        String strLoadString2 = "";
        try {
            strLoadString2 = C1652b.m2745o().loadString(f1421p, "");
        } catch (Exception unused2) {
        }
        String str2 = f1422q;
        int iM1448a = m1448a(strM1453f);
        try {
            iM1448a = C1652b.m2745o().loadInt(str2, iM1448a);
        } catch (Exception unused3) {
        }
        try {
            C1652b.m2745o().loadBoolean(f1424s, false);
        } catch (Exception unused4) {
        }
        return m1452e(iM1448a, strM1453f, strLoadString2);
    }

    /* JADX INFO: renamed from: e */
    public static C3043g m1452e(int i10, String str, String str2) {
        String strM1453f = m1453f(str);
        if (!m1450c(i10, strM1453f)) {
            i10 = m1448a(strM1453f);
        }
        String str3 = null;
        if (str2 != null) {
            String strTrim = str2.trim();
            if (!strTrim.isEmpty()) {
                str3 = strTrim;
            }
        }
        return new C3043g(strM1453f, str3, i10);
    }

    /* JADX INFO: renamed from: f */
    public static String m1453f(String str) {
        String str2 = f1416k;
        if (str2.equals(str)) {
            return str2;
        }
        String str3 = f1417l;
        if (str3.equals(str)) {
            return str3;
        }
        String str4 = f1418m;
        if (str4.equals(str)) {
            return str4;
        }
        String str5 = f1415j;
        str5.equals(str);
        return str5;
    }

    /* JADX INFO: renamed from: j */
    public static void m1454j(String str, String str2, boolean z9) {
        if (f1425t.get()) {
            f1426u.set(z9);
            f1404B = str;
            f1405C = str2;
        }
    }

    /* JADX INFO: renamed from: k */
    public static void m1455k(C3043g c3043g) {
        try {
            C1652b.m2745o().saveString(f1420o, c3043g.f8558b);
            C3277a c3277aM2745o = C1652b.m2745o();
            String str = f1421p;
            String str2 = c3043g.f8559c;
            if (str2 == null) {
                str2 = "";
            }
            c3277aM2745o.saveString(str, str2);
            C1652b.m2745o().saveInt(f1422q, c3043g.f8560d);
            C1652b.m2745o().saveBoolean(f1424s, false);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: l */
    public static void m1456l(String str) {
        f1427v.set(false);
        f1410H = 0L;
        f1407E = str;
    }

    /* JADX INFO: renamed from: m */
    public static void m1457m(Context context) {
        C3043g c3043gM1451d = m1451d(context);
        String str = c3043gM1451d.f8558b;
        String str2 = c3043gM1451d.f8559c;
        int i10 = c3043gM1451d.f8560d;
        try {
            C1652b.m2745o().loadBoolean(f1424s, false);
        } catch (Exception unused) {
        }
        m1458n(context, i10, str, str2);
    }

    /* JADX INFO: renamed from: n */
    public static void m1458n(Context context, int i10, String str, String str2) {
        m1449b(context);
        C3043g c3043gM1452e = m1452e(i10, str, str2);
        m1455k(c3043gM1452e);
        Intent intent = new Intent(context, (Class<?>) MockGpsService.class);
        intent.putExtra(f1411f, c3043gM1452e.f8558b);
        String str3 = c3043gM1452e.f8559c;
        if (str3 != null && !str3.isEmpty()) {
            intent.putExtra(f1412g, str3);
        }
        intent.putExtra(f1413h, c3043gM1452e.f8560d);
        intent.putExtra(f1414i, false);
        context.startService(intent);
    }

    /* JADX INFO: renamed from: g */
    public final void m1459g() {
        C3041e c3041e = this.f1432b;
        if (c3041e != null) {
            c3041e.m4870d();
        }
        m1456l(getString(R.string.mock_gps_mock_stale));
    }

    /* JADX INFO: renamed from: h */
    public final void m1460h() {
        C3041e c3041e = this.f1432b;
        if (c3041e != null) {
            c3041e.m4870d();
        }
        m1456l(getString(R.string.mock_gps_mock_peer_lost));
    }

    /* JADX INFO: renamed from: i */
    public final void m1461i(C3053q c3053q) {
        Float f8 = c3053q.f8622e;
        String string = f8 == null ? getString(R.string.mock_gps_accuracy_na) : getString(R.string.mock_gps_accuracy_m, f8);
        Double dValueOf = Double.valueOf(c3053q.f8618a);
        Double dValueOf2 = Double.valueOf(c3053q.f8619b);
        String str = c3053q.f8630m;
        int i10 = c3053q.f8625h;
        Float f10 = c3053q.f8622e;
        if (i10 <= 0 && (i10 = c3053q.f8627j) <= 0 && (i10 = c3053q.f8626i) <= 0) {
            i10 = (f10 == null || f10.floatValue() > 10.0f) ? (f10 == null || f10.floatValue() > 30.0f) ? 4 : 6 : 10;
        }
        f1406D = getString(R.string.mock_gps_packet_format, dValueOf, dValueOf2, string, str, Integer.valueOf(i10));
        if (!f1431z || this.f1435e) {
            C3041e c3041e = this.f1432b;
            if (c3041e != null) {
                synchronized (c3041e) {
                    if (c3041e.m4869b()) {
                        try {
                            for (String str2 : c3041e.f8554b) {
                                c3041e.f8553a.setTestProviderLocation(str2, C3041e.m4867a(c3053q, str2));
                            }
                            f1427v.set(true);
                            f1410H = System.currentTimeMillis();
                            f1407E = getString(R.string.mock_gps_mock_active, f1403A);
                            Log.d(f1419n, AbstractC1387m.m2421h(new byte[]{7, -80, -25, -25, 90, 55, -49, -63, 5, -122, -86, -23, 94, 34, -125, -17, 48, -79}, new byte[]{85, -43, -118, -120, 46, 82, -17, -122}));
                            return;
                        } catch (IllegalArgumentException | SecurityException e) {
                            Log.w(C3041e.f8551c, AbstractC1387m.m2421h(new byte[]{-93, 66, -119, 47, -70, 105, 74, 121, -112, 83, -117, 56, -11, 112, 5, 123, -117, 3, -117, 46, -74, 124, 30, 113, -113, 77}, new byte[]{-32, 35, -25, 65, -43, 29, 106, 24}), e);
                            c3041e.m4870d();
                        }
                    }
                }
            }
            m1456l(getString(R.string.mock_gps_mock_not_applied));
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        m1449b(this);
        this.f1432b = new C3041e(this);
        this.f1434d = new C3055s(this, new C3042f(0, this));
    }

    @Override // android.app.Service
    public final void onDestroy() {
        f1425t.set(false);
        f1426u.set(false);
        m1456l(getString(R.string.mock_gps_mock_system));
        f1404B = getString(R.string.mock_gps_status_stopped);
        InterfaceC3044h interfaceC3044h = this.f1433c;
        if (interfaceC3044h != null) {
            interfaceC3044h.stop();
            this.f1433c = null;
        }
        C3055s c3055s = this.f1434d;
        if (c3055s != null) {
            c3055s.m4895a();
        }
        C3041e c3041e = this.f1432b;
        if (c3041e != null) {
            c3041e.m4870d();
        }
        super.onDestroy();
    }

    /* JADX WARN: Code duplicated, block: B:23:0x007b  */
    /* JADX WARN: Code duplicated, block: B:54:0x017c  */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        String str;
        InterfaceC3044h c3049m;
        boolean z9;
        boolean zLoadBoolean;
        AbstractC3629g.m5804d(this);
        C3043g c3043gM1451d = m1451d(this);
        String strM1453f = c3043gM1451d.f8558b;
        String stringExtra = c3043gM1451d.f8559c;
        int intExtra = c3043gM1451d.f8560d;
        if (intent != null) {
            String str2 = f1411f;
            if (intent.hasExtra(str2)) {
                strM1453f = m1453f(intent.getStringExtra(str2));
                if (!strM1453f.equals(c3043gM1451d.f8558b)) {
                    intExtra = m1448a(strM1453f);
                    stringExtra = null;
                }
            }
            String str3 = f1412g;
            if (intent.hasExtra(str3)) {
                stringExtra = intent.getStringExtra(str3);
            }
            String str4 = f1413h;
            if (intent.hasExtra(str4)) {
                intExtra = intent.getIntExtra(str4, m1448a(strM1453f));
            }
            String str5 = f1414i;
            if (intent.hasExtra(str5)) {
                intent.getBooleanExtra(str5, false);
            }
        }
        C3043g c3043gM1452e = m1452e(intExtra, strM1453f, stringExtra);
        m1455k(c3043gM1452e);
        String str6 = c3043gM1452e.f8558b;
        String str7 = c3043gM1452e.f8559c;
        int iM1448a = c3043gM1452e.f8560d;
        String strM1453f2 = m1453f(str6);
        if (!m1450c(iM1448a, strM1453f2)) {
            iM1448a = m1448a(strM1453f2);
        }
        int i12 = iM1448a;
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
        int i13 = 3;
        if (this.f1433c == null || !strM1453f2.equals(f1428w)) {
            InterfaceC3044h interfaceC3044h = this.f1433c;
            if (interfaceC3044h != null) {
                interfaceC3044h.stop();
            }
            if (f1416k.equals(strM1453f2)) {
                c3049m = new C3040d(this, this);
            } else if (f1417l.equals(strM1453f2)) {
                c3049m = new C3056t(this, this);
            } else {
                c3049m = f1418m.equals(strM1453f2) ? new C3049m(this, this, AbstractC1387m.m2421h(new byte[]{87, -70, 104, 103, 81}, new byte[]{58, -43, 12, 2, 60, -122, -95, 44}), getString(R.string.mock_gps_source_modem), getString(R.string.mock_gps_auto_modem_gateway), getString(R.string.mock_gps_modem_gateway_missing), AbstractC1387m.m2421h(new byte[]{4, 86, -42, -9, -119, 74, -67, -61, 26, 86, -57, -32, -121, 104}, new byte[]{73, 57, -78, -110, -28, 13, -51, -80}), new C2930a(i13), AbstractC1387m.m2421h(new byte[]{-104, 65, -38, 41, 123, 59, -19, -25, -109, 65}, new byte[]{-10, 44, -65, 72, 36, 86, -126, -125})) : new C3052p(this, this);
            }
            this.f1433c = c3049m;
            f1428w = c3049m.getType();
            f1403A = this.f1433c.getTitle();
            f1426u.set(false);
            m1456l(getString(R.string.mock_gps_mock_system));
        }
        f1429x = str;
        f1430y = i12;
        this.f1433c.mo4864b(new C1897i(str, i12));
        f1405C = this.f1433c.mo4863a();
        f1425t.set(true);
        f1404B = getString(R.string.mock_gps_status_started);
        this.f1433c.start();
        if (f1415j.equals(f1428w)) {
            try {
                zLoadBoolean = C1652b.m2745o().loadBoolean(f1424s, false);
            } catch (Exception unused) {
                zLoadBoolean = false;
            }
            if (zLoadBoolean) {
                z9 = true;
            } else {
                z9 = false;
            }
        } else {
            z9 = false;
        }
        f1431z = z9;
        this.f1435e = !f1431z;
        C3055s c3055s = this.f1434d;
        if (c3055s != null) {
            c3055s.m4895a();
        }
        boolean z10 = !f1431z;
        InterfaceC3044h interfaceC3044h2 = this.f1433c;
        if (interfaceC3044h2 instanceof C3052p) {
            C3052p c3052p = (C3052p) interfaceC3044h2;
            c3052p.f8613j = z10;
            c3052p.m4886e();
        }
        if (f1431z) {
            C3041e c3041e = this.f1432b;
            if (c3041e != null) {
                c3041e.m4870d();
            }
            m1456l(getString(R.string.mock_gps_mock_system));
            C3055s c3055s2 = this.f1434d;
            if (!c3055s2.f8652e) {
                c3055s2.f8652e = true;
                c3055s2.f8653f = false;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                c3055s2.f8654g = jElapsedRealtime;
                c3055s2.f8655h = jElapsedRealtime;
                c3055s2.f8656i = 0L;
                C3055s.f8647l = 0;
                C3055s.f8648m = 0L;
                try {
                    c3055s2.f8649b.requestLocationUpdates(AbstractC1387m.m2421h(new byte[]{67, 102, 22}, new byte[]{36, 22, 101, 31, -126, -97, 44, 108}), 1000L, 0.0f, c3055s2, Looper.getMainLooper());
                    c3055s2.f8649b.registerGnssStatusCallback(c3055s2.f8658k, c3055s2.f8651d);
                } catch (IllegalArgumentException | SecurityException unused2) {
                }
                c3055s2.f8651d.post(c3055s2.f8657j);
            }
        }
        return 1;
    }
}
