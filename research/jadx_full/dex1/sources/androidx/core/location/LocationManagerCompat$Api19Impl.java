package androidx.core.location;

import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationRequest;
import android.os.Looper;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LocationManagerCompat$Api19Impl {
    private static Class<?> sLocationRequestClass;
    private static Method sRequestLocationUpdatesLooperMethod;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LocationManagerCompat$Api19Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    @DoNotInline
    public static boolean tryRequestLocationUpdates(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, LocationManagerCompat$LocationListenerTransport locationManagerCompat$LocationListenerTransport) {
        try {
            if (sLocationRequestClass == null) {
                sLocationRequestClass = Class.forName("android.location.LocationRequest");
            }
            if (sRequestLocationUpdatesLooperMethod == null) {
                Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", sLocationRequestClass, LocationListener.class, Looper.class);
                sRequestLocationUpdatesLooperMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
            if (locationRequest == null) {
                return false;
            }
            synchronized (LocationManagerCompat.sLocationListeners) {
                try {
                    sRequestLocationUpdatesLooperMethod.invoke(locationManager, locationRequest, locationManagerCompat$LocationListenerTransport, Looper.getMainLooper());
                    LocationManagerCompat.registerLocationListenerTransport(locationManager, locationManagerCompat$LocationListenerTransport);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return true;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
            return false;
        }
    }

    @DoNotInline
    public static boolean tryRequestLocationUpdates(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, LocationListenerCompat locationListenerCompat, Looper looper) {
        try {
            if (sLocationRequestClass == null) {
                sLocationRequestClass = Class.forName("android.location.LocationRequest");
            }
            if (sRequestLocationUpdatesLooperMethod == null) {
                Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", sLocationRequestClass, LocationListener.class, Looper.class);
                sRequestLocationUpdatesLooperMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
            if (locationRequest == null) {
                return false;
            }
            sRequestLocationUpdatesLooperMethod.invoke(locationManager, locationRequest, locationListenerCompat, looper);
            return true;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
            return false;
        }
    }
}
