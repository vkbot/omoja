package q0;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.example.navistart.MockGPS.MockGpsService;
import e0.i0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class s implements LocationListener {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static volatile int f4847l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static volatile long f4848m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LocationManager f4849b;
    public final f c;
    public boolean e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4850f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f4851g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f4852h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f4853i;
    public final Handler d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final com.bumptech.glide.m f4854j = new com.bumptech.glide.m(27, this);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final i0 f4855k = new i0(this, 1);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s(MockGpsService mockGpsService, f fVar) {
        this.f4849b = (LocationManager) mockGpsService.getSystemService(e0.m.h(new byte[]{-103, 101, -41, -29, 5, -38, -38, -56}, new byte[]{-11, 10, -76, -126, 113, -77, -75, -90}));
        this.c = fVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a() {
        LocationManager locationManager = this.f4849b;
        if (this.e) {
            this.e = false;
            this.d.removeCallbacks(this.f4854j);
            try {
                locationManager.removeUpdates(this);
                locationManager.unregisterGnssStatusCallback(this.f4855k);
            } catch (RuntimeException unused) {
            }
            this.f4850f = false;
            this.f4853i = 0L;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.LocationListener
    public final void onLocationChanged(Location location) {
        if (location.isFromMockProvider()) {
            return;
        }
        this.f4852h = SystemClock.elapsedRealtime();
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
