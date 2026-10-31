package androidx.core.location;

import android.location.GnssMeasurementsEvent;
import android.location.GnssStatus;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: androidx.core.location.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0353e implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f351b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Executor f352c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f353d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f354e;

    public /* synthetic */ RunnableC0353e(Object obj, Executor executor, Object obj2, int i10) {
        this.f351b = i10;
        this.f353d = obj;
        this.f352c = executor;
        this.f354e = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f351b) {
            case 0:
                ((LocationManagerCompat.GnssMeasurementsTransport) this.f353d).lambda$onGnssMeasurementsReceived$0(this.f352c, (GnssMeasurementsEvent) this.f354e);
                break;
            case 1:
                ((LocationManagerCompat.GpsStatusTransport) this.f353d).lambda$onGpsStatusChanged$3(this.f352c, (GnssStatusCompat) this.f354e);
                break;
            default:
                ((LocationManagerCompat.PreRGnssStatusTransport) this.f353d).lambda$onSatelliteStatusChanged$3(this.f352c, (GnssStatus) this.f354e);
                break;
        }
    }
}
