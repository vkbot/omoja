package e0;

import android.location.GnssStatus;
import android.location.GnssStatus$Callback;
import android.location.LocationListener;
import android.os.SystemClock;
import com.example.navistart.LocServ;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class i0 extends GnssStatus$Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LocationListener f1862b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i0(LocationListener locationListener, int i9) {
        this.f1861a = i9;
        this.f1862b = locationListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.GnssStatus$Callback
    public final void onSatelliteStatusChanged(GnssStatus gnssStatus) {
        switch (this.f1861a) {
            case 0:
                int satelliteCount = gnssStatus.getSatelliteCount();
                int i9 = 0;
                for (int i10 = 0; i10 < satelliteCount; i10++) {
                    if (gnssStatus.usedInFix(i10)) {
                        i9++;
                    }
                }
                ((LocServ) this.f1862b).e = (i9 / satelliteCount) * 100.0f;
                break;
            default:
                int i11 = 0;
                for (int i12 = 0; i12 < gnssStatus.getSatelliteCount(); i12++) {
                    if (gnssStatus.usedInFix(i12)) {
                        i11++;
                    }
                }
                q0.s.f4847l = i11;
                q0.s.f4848m = SystemClock.elapsedRealtime();
                q0.s sVar = (q0.s) this.f1862b;
                if (!sVar.f4850f || i11 < 4) {
                    sVar.f4853i = 0L;
                } else if (sVar.f4853i == 0) {
                    sVar.f4853i = SystemClock.elapsedRealtime();
                }
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.GnssStatus$Callback
    public void onStopped() {
        switch (this.f1861a) {
            case 1:
                q0.s.f4847l = 0;
                ((q0.s) this.f1862b).f4853i = 0L;
                break;
            default:
                super.onStopped();
                break;
        }
    }
}
