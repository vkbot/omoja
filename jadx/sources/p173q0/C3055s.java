package p173q0;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.bumptech.glide.RunnableC1054m;
import com.example.navistart.MockGPS.MockGpsService;
import p047e0.AbstractC1387m;
import p047e0.C1368i0;

/* JADX INFO: renamed from: q0.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3055s implements LocationListener {

    /* JADX INFO: renamed from: l */
    public static volatile int f8647l;

    /* JADX INFO: renamed from: m */
    public static volatile long f8648m;

    /* JADX INFO: renamed from: b */
    public final LocationManager f8649b;

    /* JADX INFO: renamed from: c */
    public final C3042f f8650c;

    /* JADX INFO: renamed from: e */
    public boolean f8652e;

    /* JADX INFO: renamed from: f */
    public boolean f8653f;

    /* JADX INFO: renamed from: g */
    public long f8654g;

    /* JADX INFO: renamed from: h */
    public long f8655h;

    /* JADX INFO: renamed from: i */
    public long f8656i;

    /* JADX INFO: renamed from: d */
    public final Handler f8651d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: j */
    public final RunnableC1054m f8657j = new RunnableC1054m(27, this);

    /* JADX INFO: renamed from: k */
    public final C1368i0 f8658k = new C1368i0(this, 1);

    public C3055s(MockGpsService mockGpsService, C3042f c3042f) {
        this.f8649b = (LocationManager) mockGpsService.getSystemService(AbstractC1387m.m2421h(new byte[]{-103, 101, -41, -29, 5, -38, -38, -56}, new byte[]{-11, 10, -76, -126, 113, -77, -75, -90}));
        this.f8650c = c3042f;
    }

    /* JADX INFO: renamed from: a */
    public final void m4895a() {
        LocationManager locationManager = this.f8649b;
        if (this.f8652e) {
            this.f8652e = false;
            this.f8651d.removeCallbacks(this.f8657j);
            try {
                locationManager.removeUpdates(this);
                locationManager.unregisterGnssStatusCallback(this.f8658k);
            } catch (RuntimeException unused) {
            }
            this.f8653f = false;
            this.f8656i = 0L;
        }
    }

    @Override // android.location.LocationListener
    public final void onLocationChanged(Location location) {
        if (location.isFromMockProvider()) {
            return;
        }
        this.f8655h = SystemClock.elapsedRealtime();
    }

    @Override // android.location.LocationListener
    public final void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public final void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public final void onStatusChanged(String str, int i10, Bundle bundle) {
    }
}
