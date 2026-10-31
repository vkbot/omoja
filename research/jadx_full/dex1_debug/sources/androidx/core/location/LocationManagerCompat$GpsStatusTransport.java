package androidx.core.location;

import android.location.GpsStatus;
import android.location.GpsStatus$Listener;
import android.location.LocationManager;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.core.util.Preconditions;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LocationManagerCompat$GpsStatusTransport implements GpsStatus$Listener {
    final GnssStatusCompat$Callback mCallback;

    @Nullable
    volatile Executor mExecutor;
    private final LocationManager mLocationManager;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LocationManagerCompat$GpsStatusTransport(LocationManager locationManager, GnssStatusCompat$Callback gnssStatusCompat$Callback) {
        Preconditions.checkArgument(gnssStatusCompat$Callback != null, "invalid null callback");
        this.mLocationManager = locationManager;
        this.mCallback = gnssStatusCompat$Callback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(LocationManagerCompat$GpsStatusTransport locationManagerCompat$GpsStatusTransport, Executor executor) {
        locationManagerCompat$GpsStatusTransport.lambda$onGpsStatusChanged$1(executor);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(LocationManagerCompat$GpsStatusTransport locationManagerCompat$GpsStatusTransport, Executor executor) {
        locationManagerCompat$GpsStatusTransport.lambda$onGpsStatusChanged$0(executor);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(LocationManagerCompat$GpsStatusTransport locationManagerCompat$GpsStatusTransport, Executor executor, int i9) {
        locationManagerCompat$GpsStatusTransport.lambda$onGpsStatusChanged$2(executor, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void d(LocationManagerCompat$GpsStatusTransport locationManagerCompat$GpsStatusTransport, Executor executor, GnssStatusCompat gnssStatusCompat) {
        locationManagerCompat$GpsStatusTransport.lambda$onGpsStatusChanged$3(executor, gnssStatusCompat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onGpsStatusChanged$0(Executor executor) {
        if (this.mExecutor != executor) {
            return;
        }
        this.mCallback.onStarted();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onGpsStatusChanged$1(Executor executor) {
        if (this.mExecutor != executor) {
            return;
        }
        this.mCallback.onStopped();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onGpsStatusChanged$2(Executor executor, int i9) {
        if (this.mExecutor != executor) {
            return;
        }
        this.mCallback.onFirstFix(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onGpsStatusChanged$3(Executor executor, GnssStatusCompat gnssStatusCompat) {
        if (this.mExecutor != executor) {
            return;
        }
        this.mCallback.onSatelliteStatusChanged(gnssStatusCompat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.GpsStatus$Listener
    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public void onGpsStatusChanged(int i9) {
        GpsStatus gpsStatus;
        Executor executor = this.mExecutor;
        if (executor == null) {
            return;
        }
        if (i9 == 1) {
            executor.execute(new g(this, executor, 0));
            return;
        }
        if (i9 == 2) {
            executor.execute(new g(this, executor, 1));
            return;
        }
        if (i9 != 3) {
            if (i9 == 4 && (gpsStatus = this.mLocationManager.getGpsStatus(null)) != null) {
                executor.execute(new e(this, executor, GnssStatusCompat.wrap(gpsStatus), 1));
                return;
            }
            return;
        }
        GpsStatus gpsStatus2 = this.mLocationManager.getGpsStatus(null);
        if (gpsStatus2 != null) {
            executor.execute(new f(this, executor, gpsStatus2.getTimeToFirstFix(), 1));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void register(Executor executor) {
        Preconditions.checkState(this.mExecutor == null);
        this.mExecutor = executor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unregister() {
        this.mExecutor = null;
    }
}
