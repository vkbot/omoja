package p138m7;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.util.Log;
import java.lang.reflect.Method;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p016b1.C0862c;
import p047e0.AbstractC1387m;
import p184r5.C3105c;

/* JADX INFO: renamed from: m7.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2411j {

    /* JADX INFO: renamed from: a */
    public final Context f6525a;

    /* JADX INFO: renamed from: b */
    public final WifiManager f6526b;

    /* JADX INFO: renamed from: c */
    public final C3105c f6527c;

    /* JADX INFO: renamed from: d */
    public final boolean f6528d;

    /* JADX INFO: renamed from: e */
    public final long f6529e;

    /* JADX INFO: renamed from: f */
    public final long f6530f;

    /* JADX INFO: renamed from: g */
    public final long f6531g;

    /* JADX INFO: renamed from: h */
    public int f6532h;

    /* JADX INFO: renamed from: i */
    public int f6533i;

    /* JADX INFO: renamed from: j */
    public boolean f6534j;

    /* JADX INFO: renamed from: k */
    public boolean f6535k;

    /* JADX INFO: renamed from: l */
    public final C0862c f6536l = new C0862c(5, this);

    /* JADX INFO: renamed from: m */
    public final RunnableC2410i f6537m = new RunnableC2410i(this, 0);

    public C2411j(Context context, WifiManager wifiManager, boolean z9, int i10, long j10, long j11) {
        this.f6525a = context;
        this.f6526b = wifiManager;
        C3105c c3105c = new C3105c(22, false);
        c3105c.f8867c = (ConnectivityManager) context.getApplicationContext().getSystemService(ConnectivityManager.class);
        this.f6527c = c3105c;
        this.f6528d = z9;
        this.f6532h = i10;
        this.f6529e = j10;
        this.f6530f = j11;
        this.f6531g = 5000L;
        this.f6533i = wifiManager.getWifiState();
    }

    /* JADX INFO: renamed from: a */
    public final void m3769a() {
        if (!this.f6528d || !AbstractC2412k.m3774a(this.f6526b)) {
            m3771c();
            m3773e(this.f6529e);
            return;
        }
        this.f6535k = true;
        Log.d(AbstractC1387m.m2421h(new byte[]{-108, 56, -90, 113, 39, 7, 31, 52, -81, 52, -120, 125, 31, 24, 29, 33}, new byte[]{-61, 81, -64, 24, 115, 104, 120, 83}), AbstractC1387m.m2421h(new byte[]{8, 80, -17, 113, -111, -47, -67, -103, 41, 76, -69, 99, -126, -54, -96, -49, 37, 19, -69, 102, -120, -51, -88, -37, 44, 86, -11, 101, -63, -1, -103, -103, 34, 90, -3, 109, -109, -37, -23, -36, 46, 94, -7, 110, -120, -48, -82, -103, 23, 86, -74, 68, -120, -98, -86, -43, 41, 90, -11, 118, -63, -45, -90, -35, 37}, new byte[]{64, 63, -101, 2, -31, -66, -55, -71}));
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f6527c.f8867c;
        try {
            Method method = connectivityManager.getClass().getMethod(AbstractC1387m.m2421h(new byte[]{81, -56, -117, -120, 37, -74, -13, 85, 71, -50, -115, -106, 22}, new byte[]{34, -68, -28, -8, 113, -45, -121, Base64.padSymbol}), Integer.TYPE);
            if (method != null) {
                method.invoke(connectivityManager, 0);
            }
        } catch (Exception unused) {
        }
        m3773e(this.f6531g);
    }

    /* JADX INFO: renamed from: b */
    public final void m3770b() {
        Handler handler = AbstractC2412k.f6539b;
        handler.removeCallbacks(this.f6537m);
        if (this.f6528d) {
            final WifiManager wifiManager = this.f6526b;
            AbstractC2412k.m3775b(wifiManager);
            final int i10 = 0;
            handler.postDelayed(new Runnable() { // from class: m7.h
                @Override // java.lang.Runnable
                public final void run() {
                    switch (i10) {
                        case 0:
                            AbstractC2412k.m3775b(wifiManager);
                            break;
                        default:
                            AbstractC2412k.m3775b(wifiManager);
                            break;
                    }
                }
            }, 2500L);
            final int i11 = 1;
            handler.postDelayed(new Runnable() { // from class: m7.h
                @Override // java.lang.Runnable
                public final void run() {
                    switch (i11) {
                        case 0:
                            AbstractC2412k.m3775b(wifiManager);
                            break;
                        default:
                            AbstractC2412k.m3775b(wifiManager);
                            break;
                    }
                }
            }, 6000L);
        }
        synchronized (AbstractC2412k.class) {
            if (AbstractC2412k.f6540c == this) {
                AbstractC2412k.m3777d();
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m3771c() {
        WifiManager wifiManager = this.f6526b;
        this.f6533i = wifiManager.getWifiState();
        String strM2421h = AbstractC1387m.m2421h(new byte[]{13, -60, 98, 84, -79, 63, -121, -42, 54, -56, 76, 88, -119, 32, -123, -61}, new byte[]{90, -83, 4, Base64.padSymbol, -27, 80, -32, -79});
        StringBuilder sb = new StringBuilder();
        sb.append(AbstractC1387m.m2421h(new byte[]{-11, -40, 31, Base64.padSymbol, 41, 38, 35, -72, -16, -44, 67, 14, 37, 117, 50, -10, -58, -33, 2, 45, 40, 104}, new byte[]{-89, -67, 110, 72, 76, 85, 87, -104}));
        boolean z9 = this.f6528d;
        sb.append(z9);
        sb.append(AbstractC1387m.m2421h(new byte[]{-60, 124, -73, 98, 68, 19, -41, -95, -100, 15, -96, 118, 66, 4, -113}, new byte[]{-24, 92, -44, 23, 54, 97, -78, -49}));
        sb.append(this.f6533i);
        sb.append(AbstractC1387m.m2421h(new byte[]{46, 125, 28, 86, -33, -31, -23, 51, 113, 15, 11, 94, -54, -6, -18, 63, 108, 58, 83}, new byte[]{2, 93, 110, 51, -85, -109, ByteCompanionObject.MIN_VALUE, 86}));
        sb.append(this.f6532h);
        Log.d(strM2421h, sb.toString());
        wifiManager.setWifiEnabled(z9);
    }

    /* JADX INFO: renamed from: d */
    public final void m3772d() {
        RunnableC2410i runnableC2410i = this.f6537m;
        boolean z9 = this.f6528d;
        long j10 = this.f6529e;
        boolean z10 = this.f6535k;
        WifiManager wifiManager = this.f6526b;
        if (z10) {
            if (!AbstractC2412k.m3774a(wifiManager)) {
                this.f6535k = false;
                m3771c();
                m3773e(j10);
                return;
            } else {
                Log.w(AbstractC1387m.m2421h(new byte[]{112, -89, -54, -48, -109, -90, 89, -115, 75, -85, -28, -36, -85, -71, 91, -104}, new byte[]{39, -50, -84, -71, -57, -55, 62, -22}), AbstractC1387m.m2421h(new byte[]{-25, 68, -86, -78, -103, -25, 12, 41, -53, 66, -70, -31, -121, -25, 12, 41, -53, 66, -83, -96, -117, -28, 29, 41, -58, 69, -2, -75, ByteCompanionObject.MIN_VALUE, -27, 29, 37, -113, 72, -79, -81, -99, -31, 22, 124, -58, 69, -71, -31, -98, -31, 12, 97, -113, 88, -86, -96, -121, -20, 25, 123, -53, 11, -119, -88, -60, -50, 17, 41, -54, 69, -65, -93, -123, -19}, new byte[]{-81, 43, -34, -63, -23, -120, 120, 9}));
                this.f6535k = false;
                m3771c();
                m3773e(j10);
                return;
            }
        }
        int wifiState = wifiManager.getWifiState();
        if (!this.f6528d ? wifiState != 1 : wifiState != 3) {
            m3770b();
            return;
        }
        int i10 = this.f6532h;
        if (i10 <= 0) {
            AbstractC2412k.f6539b.removeCallbacks(runnableC2410i);
            Log.e(AbstractC1387m.m2421h(new byte[]{55, 124, -54, -117, 7, 39, -61, -91, 12, 112, -28, -121, 63, 56, -63, -80}, new byte[]{96, 21, -84, -30, 83, 72, -92, -62}), AbstractC1387m.m2421h(new byte[]{4, -102, -87, -28, -120, 29, 39, 76, 52, -108, -24, -57, -63, 91, 50, 74, 63, -106, -32, -116, -63, 73, 50, 81, 52, -106, -16, -25, -113, 92, 49, 79, 54, -105, -71}, new byte[]{83, -13, -124, -94, -31, Base64.padSymbol, 83, 35}) + z9 + AbstractC1387m.m2421h(new byte[]{-103, 35, -4, -112, 27, -83, 98, -51, -45, 106, -61, -123, 9, -83, 80, -103}, new byte[]{-75, 3, -112, -15, 104, -39, 53, -92}) + this.f6533i);
            synchronized (AbstractC2412k.class) {
                if (AbstractC2412k.f6540c == this) {
                    AbstractC2412k.m3777d();
                }
            }
            return;
        }
        this.f6532h = i10 - 1;
        Log.w(AbstractC1387m.m2421h(new byte[]{118, -84, -65, -24, -93, 77, 105, 125, 77, -96, -111, -28, -101, 82, 107, 104}, new byte[]{33, -59, -39, -127, -9, 34, 14, 26}), AbstractC1387m.m2421h(new byte[]{33, 67, -24, -12, 88, 3, 108, 79, 17, 77, -87, -41, 17, 80, 108, 85, 21, 65, -23, -110, 67, 86, 118, 78, 31, 68, -94, -110, 66, 76, 126, 84, 86, 88, -96, -58, 67, 90, 54, 0, 2, 75, -73, -43, 84, 87, 93, 78, 23, 72, -87, -41, 85, 30}, new byte[]{118, 42, -59, -78, 49, 35, 24, 32}) + z9 + AbstractC1387m.m2421h(new byte[]{17, 18, -51, -99, -26, -28, 97, -18, 78, 96, -38, -107, -13, -1, 102, -30, 83, 85, -126}, new byte[]{Base64.padSymbol, 50, -65, -8, -110, -106, 8, -117}) + this.f6532h);
        Handler handler = AbstractC2412k.f6539b;
        handler.removeCallbacks(runnableC2410i);
        if (z9) {
            this.f6535k = false;
            wifiManager.setWifiEnabled(false);
            handler.postDelayed(new RunnableC2410i(this, 1), this.f6530f);
        } else {
            m3771c();
        }
        m3773e(j10);
    }

    /* JADX INFO: renamed from: e */
    public final void m3773e(long j10) {
        Handler handler = AbstractC2412k.f6539b;
        RunnableC2410i runnableC2410i = this.f6537m;
        handler.removeCallbacks(runnableC2410i);
        handler.postDelayed(runnableC2410i, j10);
    }
}
