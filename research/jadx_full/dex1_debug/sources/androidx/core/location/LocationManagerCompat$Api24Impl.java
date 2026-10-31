package androidx.core.location;

import android.location.GnssMeasurementsEvent$Callback;
import android.location.GnssStatus$Callback;
import android.location.LocationManager;
import android.os.Handler;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Preconditions;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(24)
public class LocationManagerCompat$Api24Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LocationManagerCompat$Api24Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    @DoNotInline
    public static boolean registerGnssMeasurementsCallback(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent$Callback gnssMeasurementsEvent$Callback) {
        return locationManager.registerGnssMeasurementsCallback(gnssMeasurementsEvent$Callback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    @DoNotInline
    public static boolean registerGnssStatusCallback(LocationManager locationManager, Handler handler, Executor executor, GnssStatusCompat$Callback gnssStatusCompat$Callback) {
        Preconditions.checkArgument(handler != null);
        SimpleArrayMap<Object, Object> simpleArrayMap = LocationManagerCompat$GnssListenersHolder.sGnssStatusListeners;
        synchronized (simpleArrayMap) {
            try {
                LocationManagerCompat$PreRGnssStatusTransport locationManagerCompat$PreRGnssStatusTransport = (LocationManagerCompat$PreRGnssStatusTransport) simpleArrayMap.get(gnssStatusCompat$Callback);
                if (locationManagerCompat$PreRGnssStatusTransport == null) {
                    locationManagerCompat$PreRGnssStatusTransport = new LocationManagerCompat$PreRGnssStatusTransport(gnssStatusCompat$Callback);
                } else {
                    locationManagerCompat$PreRGnssStatusTransport.unregister();
                }
                locationManagerCompat$PreRGnssStatusTransport.register(executor);
                if (!locationManager.registerGnssStatusCallback(locationManagerCompat$PreRGnssStatusTransport, handler)) {
                    return false;
                }
                simpleArrayMap.put(gnssStatusCompat$Callback, locationManagerCompat$PreRGnssStatusTransport);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void unregisterGnssMeasurementsCallback(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent$Callback gnssMeasurementsEvent$Callback) {
        locationManager.unregisterGnssMeasurementsCallback(gnssMeasurementsEvent$Callback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void unregisterGnssStatusCallback(LocationManager locationManager, Object obj) {
        if (obj instanceof LocationManagerCompat$PreRGnssStatusTransport) {
            ((LocationManagerCompat$PreRGnssStatusTransport) obj).unregister();
        }
        locationManager.unregisterGnssStatusCallback((GnssStatus$Callback) obj);
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    @DoNotInline
    public static boolean registerGnssMeasurementsCallback(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent$Callback gnssMeasurementsEvent$Callback, @NonNull Handler handler) {
        return locationManager.registerGnssMeasurementsCallback(gnssMeasurementsEvent$Callback, handler);
    }
}
