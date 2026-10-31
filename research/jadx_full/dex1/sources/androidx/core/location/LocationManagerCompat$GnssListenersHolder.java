package androidx.core.location;

import android.location.GnssMeasurementsEvent$Callback;
import androidx.annotation.GuardedBy;
import androidx.collection.SimpleArrayMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LocationManagerCompat$GnssListenersHolder {

    @GuardedBy("sGnssStatusListeners")
    static final SimpleArrayMap<Object, Object> sGnssStatusListeners = new SimpleArrayMap<>();

    @GuardedBy("sGnssMeasurementListeners")
    static final SimpleArrayMap<GnssMeasurementsEvent$Callback, GnssMeasurementsEvent$Callback> sGnssMeasurementListeners = new SimpleArrayMap<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LocationManagerCompat$GnssListenersHolder() {
    }
}
