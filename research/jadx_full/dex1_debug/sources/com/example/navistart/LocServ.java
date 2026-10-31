package com.example.navistart;

import a1.a;
import a4.g;
import android.app.Service;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import androidx.core.content.PermissionChecker;
import androidx.fragment.app.h;
import e0.h0;
import e0.i0;
import e0.w;
import h0.b;
import i7.m;
import java.util.Calendar;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;
import org.json.JSONException;
import org.json.JSONObject;
import v1.d;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LocServ extends Service implements LocationListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static h f674h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Boolean f675i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static boolean f676j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static LocationManager f677k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static byte[] f678l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static JSONObject f679m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static Boolean f680n;
    public ScheduledFuture c;
    public m d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f681b = w.c(-1, e0.m.h(new byte[]{42, -38, 93, -95, 102, 2, 24}, new byte[]{102, -75, 62, -14, 3, 112, 110, 83}));
    public float e = 0.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f682f = System.currentTimeMillis();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final i0 f683g = new i0(this, 0);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        Boolean bool = Boolean.FALSE;
        f675i = bool;
        f676j = false;
        f677k = null;
        f678l = null;
        f679m = null;
        f680n = bool;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void a(Location location) {
        try {
            f679m.put(e0.m.h(new byte[]{126, 82, -120, -126, 30, -67, 123, -66}, new byte[]{18, 51, -4, -21, 106, -56, 31, -37}), location.getLatitude());
            f679m.put(e0.m.h(new byte[]{-36, 76, 55, 113, -106, -30, 33, 122, -43}, new byte[]{-80, 35, 89, 22, -1, -106, 84, 30}), location.getLongitude());
            f679m.put(e0.m.h(new byte[]{7, -9, -64, -126, -3, 51, 43, -124}, new byte[]{102, -108, -93, -9, -113, 82, 72, -3}), location.getAccuracy());
            f679m.put(e0.m.h(new byte[]{-13, -107, 22, 5, 21, 101, -8, -121}, new byte[]{-110, -7, 98, 108, 97, 16, -100, -30}), location.getAltitude());
            f679m.put(e0.m.h(new byte[]{-51, -55, -63, 64, 39, 43, 106}, new byte[]{-81, -84, -96, 50, 78, 69, 13, -119}), location.getBearing());
            f679m.put(e0.m.h(new byte[]{-58, 108, 41, -92, -114}, new byte[]{-75, 28, 76, -63, -22, 65, 108, -96}), location.getSpeed());
            JSONObject jSONObject = new JSONObject();
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(location.getTime());
            jSONObject.put(e0.m.h(new byte[]{0, 85, 15, -72}, new byte[]{121, 48, 110, -54, 122, -85, ByteCompanionObject.MIN_VALUE, 57}), calendar.get(1));
            jSONObject.put(e0.m.h(new byte[]{-84, -63, 91, -62, 83}, new byte[]{-63, -82, 53, -74, 59, 4, -54, -77}), calendar.get(2));
            jSONObject.put(e0.m.h(new byte[]{-15, 2, -49}, new byte[]{-107, 99, -74, 33, -108, -15, 16, 79}), calendar.get(5));
            jSONObject.put(e0.m.h(new byte[]{-47, 125, -19, 98}, new byte[]{-71, 18, -104, 16, -53, -77, 11, -74}), calendar.get(11));
            jSONObject.put(e0.m.h(new byte[]{-102, 125, 39, 113, -107, 113}, new byte[]{-9, 20, 73, 4, -31, 20, -73, -1}), calendar.get(12));
            jSONObject.put(e0.m.h(new byte[]{72, 39, -13, -99, -81, 85}, new byte[]{59, 66, -112, -14, -63, 49, -50, -94}), calendar.get(13));
            f679m.put(e0.m.h(new byte[]{71, 78, -28, -57}, new byte[]{51, 39, -119, -94, 113, -47, -73, 34}), jSONObject);
            f679m.put(e0.m.h(new byte[]{Base64.padSymbol, -84, -72, -59, 30}, new byte[]{91, -59, -64, -96, 122, 51, -63, 97}), true);
            Bundle extras = location.getExtras();
            if (extras != null) {
                String string = extras.getString(e0.m.h(new byte[]{1, -123, -88, -72, 36, -107, -50, -84, 4, -70, -103, -89, 22}, new byte[]{64, -24, -55, -56, 101, -32, -70, -61}));
                if (string != null) {
                    try {
                        f679m.put(e0.m.h(new byte[]{123, -126, -32, 85, -87}, new byte[]{8, -14, -123, 48, -51, 108, 33, 109}), new JSONObject(string).getDouble(e0.m.h(new byte[]{107, ByteCompanionObject.MAX_VALUE, -98, -38, -122}, new byte[]{24, 15, -5, -65, -30, 62, -21, 40})) / 3.6d);
                    } catch (JSONException unused) {
                        Log.i(e0.m.h(new byte[]{-74, 75, -118, 95, -110, 109, -84, 52, -108, 105}, new byte[]{-15, 27, -39, 18, -13, 3, -51, 83}), e0.m.h(new byte[]{-39, 111, -102, -82, 59, 85, -100, 18, -64, 121, -43, -90, 122, 76, -111, 5, -41}, new byte[]{-77, 28, -11, -64, 27, 37, -3, 96}));
                    }
                } else {
                    if (f676j) {
                        return;
                    }
                    Log.i(e0.m.h(new byte[]{-32, 20, -30, 92, -98, -11, -56, -70, -62, 54}, new byte[]{-89, 68, -79, 17, -1, -101, -87, -35}), e0.m.h(new byte[]{55, 65, -100, -81, -47, -86, 34, -102, 52, 69, -106, -75, -97, -124, 59, -37, 47, 97, -102, -5, -48, -127, 4, -22, 48, 83}, new byte[]{95, 32, -17, -113, -65, -59, 86, -70}));
                    f676j = true;
                }
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        Location lastKnownLocation;
        if (!f675i.booleanValue()) {
            if (f678l == null) {
                f678l = new byte[512];
            }
            try {
                if (PermissionChecker.checkCallingOrSelfPermission(this, e0.m.h(new byte[]{-83, 43, 103, -26, -11, -11, -79, -59, -68, 32, 113, -7, -13, -17, -90, -126, -93, 43, 45, -43, -39, -33, -112, -72, -97, 26, 64, -37, -37, -50, -122, -82, -109, 9, 76, -41, -37, -56, -100, -92, -126}, new byte[]{-52, 69, 3, -108, -102, -100, -43, -21})) == 0) {
                    if (f677k == null) {
                        f677k = (LocationManager) getSystemService(e0.m.h(new byte[]{76, 46, 69, 19, -118, -66, -123, -38}, new byte[]{32, 65, 38, 114, -2, -41, -22, -76}));
                    }
                    if (f677k.isProviderEnabled(e0.m.h(new byte[]{0, -80, 115}, new byte[]{103, -64, 0, -62, -23, -90, 67, 108}))) {
                        f679m = new JSONObject();
                        try {
                            lastKnownLocation = f677k.getLastKnownLocation(e0.m.h(new byte[]{-4, 79, -75}, new byte[]{-101, 63, -58, -19, 76, -102, ByteCompanionObject.MIN_VALUE, 50}));
                        } catch (Exception unused) {
                            lastKnownLocation = null;
                        }
                        if (lastKnownLocation != null) {
                            a(lastKnownLocation);
                        }
                        try {
                            try {
                                f677k.requestLocationUpdates(e0.m.h(new byte[]{123, -119, 19}, new byte[]{28, -7, 96, 91, -65, -35, 55, 62}), 1000L, 0.0f, this, Looper.getMainLooper());
                                f677k.registerGnssStatusCallback(this.f683g);
                            } catch (Exception unused2) {
                            }
                        } catch (Exception unused3) {
                        }
                        try {
                            f675i = Boolean.TRUE;
                        } catch (Exception unused4) {
                        }
                    }
                }
            } catch (Exception unused5) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        ScheduledFuture scheduledFuture = this.c;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.c.cancel(true);
        }
        LocationManager locationManager = f677k;
        if (locationManager != null) {
            locationManager.removeUpdates(this);
            f677k.unregisterGnssStatusCallback(this.f683g);
        }
        m mVar = this.d;
        if (mVar != null) {
            mVar.e.e();
            this.d = null;
            f674h = null;
        }
        f675i = Boolean.FALSE;
        this.f681b.schedule(new h0(this, 0), 10000L, TimeUnit.MILLISECONDS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.LocationListener
    public final void onLocationChanged(Location location) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f681b;
        b.a();
        d.a().d().f5514g.postValue(location);
        try {
            scheduledThreadPoolExecutor.execute(new g(9, location));
        } catch (Exception unused) {
        }
        if (f680n.booleanValue() && this.d == null) {
            this.d = new m(this);
            f674h = new h(6, this);
        }
        scheduledThreadPoolExecutor.execute(new a(15, this, location));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i9, int i10) {
        i7.g gVar;
        b();
        f680n = Boolean.valueOf(b.o().loadString(e0.m.h(new byte[]{97, 64, -39, -51, -114, 1, 35, -122, 115, 66, -47, -57, -127, 22, 14, -87, 96, 95}, new byte[]{18, 48, -80, -93, -32, 100, 81, -39}), e0.m.h(new byte[]{107, -107, 111, -30, -86, -41, -68, -95, 100, -86, 75}, new byte[]{37, -6, 27, -67, -8, -94, -46, -2})).equals(n0.a.e.name()));
        if (!f675i.booleanValue()) {
            stopSelf();
        }
        ScheduledFuture scheduledFuture = this.c;
        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
            this.c.cancel(true);
        }
        this.c = this.f681b.schedule(new h0(this, 1), 30000L, TimeUnit.MILLISECONDS);
        m mVar = this.d;
        if (mVar != null && (gVar = mVar.e) != null) {
            gVar.e();
            gVar.d();
        }
        return super.onStartCommand(intent, i9, i10);
    }

    @Override // android.location.LocationListener
    public final void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public final void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public final void onStatusChanged(String str, int i9, Bundle bundle) {
    }
}
