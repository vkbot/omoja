package p047e0;

import android.location.GnssStatus;
import android.location.LocationListener;
import android.os.SystemClock;
import com.example.navistart.LocServ;
import p173q0.C3055s;

/* JADX INFO: renamed from: e0.i0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1368i0 extends GnssStatus.Callback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f3267a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ LocationListener f3268b;

    public /* synthetic */ C1368i0(LocationListener locationListener, int i10) {
        this.f3267a = i10;
        this.f3268b = locationListener;
    }

    @Override // android.location.GnssStatus.Callback
    public final void onSatelliteStatusChanged(GnssStatus gnssStatus) {
        switch (this.f3267a) {
            case 0:
                int satelliteCount = gnssStatus.getSatelliteCount();
                int i10 = 0;
                for (int i11 = 0; i11 < satelliteCount; i11++) {
                    if (gnssStatus.usedInFix(i11)) {
                        i10++;
                    }
                }
                ((LocServ) this.f3268b).f1278e = (i10 / satelliteCount) * 100.0f;
                break;
            default:
                int i12 = 0;
                for (int i13 = 0; i13 < gnssStatus.getSatelliteCount(); i13++) {
                    if (gnssStatus.usedInFix(i13)) {
                        i12++;
                    }
                }
                C3055s.f8647l = i12;
                C3055s.f8648m = SystemClock.elapsedRealtime();
                C3055s c3055s = (C3055s) this.f3268b;
                if (!c3055s.f8653f || i12 < 4) {
                    c3055s.f8656i = 0L;
                } else if (c3055s.f8656i == 0) {
                    c3055s.f8656i = SystemClock.elapsedRealtime();
                }
                break;
        }
    }

    @Override // android.location.GnssStatus.Callback
    public void onStopped() {
        switch (this.f3267a) {
            case 1:
                C3055s.f8647l = 0;
                ((C3055s) this.f3268b).f8656i = 0L;
                break;
            default:
                super.onStopped();
                break;
        }
    }
}
