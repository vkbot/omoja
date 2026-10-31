package androidx.core.location;

import android.location.GnssMeasurementsEvent$Callback;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build$VERSION;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.collection.SimpleArrayMap;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.os.ExecutorCompat;
import androidx.core.util.Consumer;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class LocationManagerCompat {
    private static final long GET_CURRENT_LOCATION_TIMEOUT_MS = 30000;
    private static final long MAX_CURRENT_LOCATION_AGE_MS = 10000;
    private static final long PRE_N_LOOPER_TIMEOUT_S = 5;
    private static Field sContextField;
    private static Method sGnssRequestBuilderBuildMethod;
    private static Class<?> sGnssRequestBuilderClass;

    @GuardedBy("sLocationListeners")
    static final WeakHashMap<LocationManagerCompat$LocationListenerKey, WeakReference<LocationManagerCompat$LocationListenerTransport>> sLocationListeners = new WeakHashMap<>();
    private static Method sRegisterGnssMeasurementsCallbackMethod;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private LocationManagerCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(Consumer consumer, Location location) {
        lambda$getCurrentLocation$0(consumer, location);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void getCurrentLocation(@NonNull LocationManager locationManager, @NonNull String str, @Nullable CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull Consumer<Location> consumer) {
        if (Build$VERSION.SDK_INT >= 30) {
            LocationManagerCompat$Api30Impl.getCurrentLocation(locationManager, str, cancellationSignal, executor, consumer);
            return;
        }
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
        }
        Location lastKnownLocation = locationManager.getLastKnownLocation(str);
        if (lastKnownLocation != null && SystemClock.elapsedRealtime() - LocationCompat.getElapsedRealtimeMillis(lastKnownLocation) < MAX_CURRENT_LOCATION_AGE_MS) {
            executor.execute(new d(consumer, lastKnownLocation, 1));
            return;
        }
        LocationManagerCompat$CancellableLocationListener locationManagerCompat$CancellableLocationListener = new LocationManagerCompat$CancellableLocationListener(locationManager, executor, consumer);
        locationManager.requestLocationUpdates(str, 0L, 0.0f, locationManagerCompat$CancellableLocationListener, Looper.getMainLooper());
        if (cancellationSignal != null) {
            cancellationSignal.setOnCancelListener(new a(locationManagerCompat$CancellableLocationListener));
        }
        locationManagerCompat$CancellableLocationListener.startTimeout(GET_CURRENT_LOCATION_TIMEOUT_MS);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static String getGnssHardwareModelName(@NonNull LocationManager locationManager) {
        if (Build$VERSION.SDK_INT >= 28) {
            return LocationManagerCompat$Api28Impl.getGnssHardwareModelName(locationManager);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int getGnssYearOfHardware(@NonNull LocationManager locationManager) {
        if (Build$VERSION.SDK_INT >= 28) {
            return LocationManagerCompat$Api28Impl.getGnssYearOfHardware(locationManager);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean hasProvider(@NonNull LocationManager locationManager, @NonNull String str) {
        if (Build$VERSION.SDK_INT >= 31) {
            return LocationManagerCompat$Api31Impl.hasProvider(locationManager, str);
        }
        if (locationManager.getAllProviders().contains(str)) {
            return true;
        }
        try {
            return locationManager.getProvider(str) != null;
        } catch (SecurityException unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isLocationEnabled(@NonNull LocationManager locationManager) {
        if (Build$VERSION.SDK_INT >= 28) {
            return LocationManagerCompat$Api28Impl.isLocationEnabled(locationManager);
        }
        return locationManager.isProviderEnabled("network") || locationManager.isProviderEnabled("gps");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$getCurrentLocation$0(Consumer consumer, Location location) {
        consumer.accept(location);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Boolean lambda$registerGnssStatusCallback$1(LocationManager locationManager, LocationManagerCompat$GpsStatusTransport locationManagerCompat$GpsStatusTransport) {
        return Boolean.valueOf(locationManager.addGpsStatusListener(locationManagerCompat$GpsStatusTransport));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    @RequiresApi(24)
    public static boolean registerGnssMeasurementsCallback(@NonNull LocationManager locationManager, @NonNull Executor executor, @NonNull GnssMeasurementsEvent$Callback gnssMeasurementsEvent$Callback) {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 > 30) {
            return LocationManagerCompat$Api31Impl.registerGnssMeasurementsCallback(locationManager, executor, gnssMeasurementsEvent$Callback);
        }
        if (i9 == 30) {
            return registerGnssMeasurementsCallbackOnR(locationManager, executor, gnssMeasurementsEvent$Callback);
        }
        SimpleArrayMap<GnssMeasurementsEvent$Callback, GnssMeasurementsEvent$Callback> simpleArrayMap = LocationManagerCompat$GnssListenersHolder.sGnssMeasurementListeners;
        synchronized (simpleArrayMap) {
            try {
                LocationManagerCompat$GnssMeasurementsTransport locationManagerCompat$GnssMeasurementsTransport = new LocationManagerCompat$GnssMeasurementsTransport(gnssMeasurementsEvent$Callback, executor);
                unregisterGnssMeasurementsCallback(locationManager, gnssMeasurementsEvent$Callback);
                if (!LocationManagerCompat$Api24Impl.registerGnssMeasurementsCallback(locationManager, locationManagerCompat$GnssMeasurementsTransport)) {
                    return false;
                }
                simpleArrayMap.put(gnssMeasurementsEvent$Callback, locationManagerCompat$GnssMeasurementsTransport);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
    private static boolean registerGnssMeasurementsCallbackOnR(@NonNull LocationManager locationManager, @NonNull Executor executor, @NonNull GnssMeasurementsEvent$Callback gnssMeasurementsEvent$Callback) {
        if (Build$VERSION.SDK_INT != 30) {
            throw new IllegalStateException();
        }
        try {
            if (sGnssRequestBuilderClass == null) {
                sGnssRequestBuilderClass = Class.forName("android.location.GnssRequest$Builder");
            }
            if (sGnssRequestBuilderBuildMethod == null) {
                Method declaredMethod = sGnssRequestBuilderClass.getDeclaredMethod("build", null);
                sGnssRequestBuilderBuildMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            if (sRegisterGnssMeasurementsCallbackMethod == null) {
                Method declaredMethod2 = LocationManager.class.getDeclaredMethod("registerGnssMeasurementsCallback", Class.forName("android.location.GnssRequest"), Executor.class, GnssMeasurementsEvent$Callback.class);
                sRegisterGnssMeasurementsCallbackMethod = declaredMethod2;
                declaredMethod2.setAccessible(true);
            }
            Object objInvoke = sRegisterGnssMeasurementsCallbackMethod.invoke(locationManager, sGnssRequestBuilderBuildMethod.invoke(sGnssRequestBuilderClass.getDeclaredConstructor(null).newInstance(null), null), executor, gnssMeasurementsEvent$Callback);
            return objInvoke != null && ((Boolean) objInvoke).booleanValue();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static boolean registerGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull Executor executor, @NonNull GnssStatusCompat$Callback gnssStatusCompat$Callback) {
        if (Build$VERSION.SDK_INT >= 30) {
            return registerGnssStatusCallback(locationManager, null, executor, gnssStatusCompat$Callback);
        }
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null) {
            looperMyLooper = Looper.getMainLooper();
        }
        return registerGnssStatusCallback(locationManager, new Handler(looperMyLooper), executor, gnssStatusCompat$Callback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    @GuardedBy("sLocationListeners")
    public static void registerLocationListenerTransport(LocationManager locationManager, LocationManagerCompat$LocationListenerTransport locationManagerCompat$LocationListenerTransport) {
        WeakReference<LocationManagerCompat$LocationListenerTransport> weakReferencePut = sLocationListeners.put(locationManagerCompat$LocationListenerTransport.getKey(), new WeakReference<>(locationManagerCompat$LocationListenerTransport));
        LocationManagerCompat$LocationListenerTransport locationManagerCompat$LocationListenerTransport2 = weakReferencePut != null ? weakReferencePut.get() : null;
        if (locationManagerCompat$LocationListenerTransport2 != null) {
            locationManagerCompat$LocationListenerTransport2.unregister();
            locationManager.removeUpdates(locationManagerCompat$LocationListenerTransport2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void removeUpdates(@NonNull LocationManager locationManager, @NonNull LocationListenerCompat locationListenerCompat) {
        WeakHashMap<LocationManagerCompat$LocationListenerKey, WeakReference<LocationManagerCompat$LocationListenerTransport>> weakHashMap = sLocationListeners;
        synchronized (weakHashMap) {
            try {
                Iterator<WeakReference<LocationManagerCompat$LocationListenerTransport>> it = weakHashMap.values().iterator();
                ArrayList arrayList = null;
                while (it.hasNext()) {
                    LocationManagerCompat$LocationListenerTransport locationManagerCompat$LocationListenerTransport = it.next().get();
                    if (locationManagerCompat$LocationListenerTransport != null) {
                        LocationManagerCompat$LocationListenerKey key = locationManagerCompat$LocationListenerTransport.getKey();
                        if (key.mListener == locationListenerCompat) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(key);
                            locationManagerCompat$LocationListenerTransport.unregister();
                            locationManager.removeUpdates(locationManagerCompat$LocationListenerTransport);
                        }
                    }
                }
                if (arrayList != null) {
                    int size = arrayList.size();
                    int i9 = 0;
                    while (i9 < size) {
                        Object obj = arrayList.get(i9);
                        i9++;
                        sLocationListeners.remove((LocationManagerCompat$LocationListenerKey) obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        locationManager.removeUpdates(locationListenerCompat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void requestLocationUpdates(@NonNull LocationManager locationManager, @NonNull String str, @NonNull LocationRequestCompat locationRequestCompat, @NonNull Executor executor, @NonNull LocationListenerCompat locationListenerCompat) {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 >= 31) {
            LocationManagerCompat$Api31Impl.requestLocationUpdates(locationManager, str, locationRequestCompat.toLocationRequest(), executor, locationListenerCompat);
            return;
        }
        if (i9 < 30 || !LocationManagerCompat$Api30Impl.tryRequestLocationUpdates(locationManager, str, locationRequestCompat, executor, locationListenerCompat)) {
            LocationManagerCompat$LocationListenerTransport locationManagerCompat$LocationListenerTransport = new LocationManagerCompat$LocationListenerTransport(new LocationManagerCompat$LocationListenerKey(str, locationListenerCompat), executor);
            if (LocationManagerCompat$Api19Impl.tryRequestLocationUpdates(locationManager, str, locationRequestCompat, locationManagerCompat$LocationListenerTransport)) {
                return;
            }
            synchronized (sLocationListeners) {
                locationManager.requestLocationUpdates(str, locationRequestCompat.getIntervalMillis(), locationRequestCompat.getMinUpdateDistanceMeters(), locationManagerCompat$LocationListenerTransport, Looper.getMainLooper());
                registerLocationListenerTransport(locationManager, locationManagerCompat$LocationListenerTransport);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(24)
    public static void unregisterGnssMeasurementsCallback(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent$Callback gnssMeasurementsEvent$Callback) {
        if (Build$VERSION.SDK_INT >= 30) {
            LocationManagerCompat$Api24Impl.unregisterGnssMeasurementsCallback(locationManager, gnssMeasurementsEvent$Callback);
            return;
        }
        SimpleArrayMap<GnssMeasurementsEvent$Callback, GnssMeasurementsEvent$Callback> simpleArrayMap = LocationManagerCompat$GnssListenersHolder.sGnssMeasurementListeners;
        synchronized (simpleArrayMap) {
            try {
                GnssMeasurementsEvent$Callback gnssMeasurementsEvent$CallbackRemove = simpleArrayMap.remove(gnssMeasurementsEvent$Callback);
                if (gnssMeasurementsEvent$CallbackRemove != null) {
                    if (gnssMeasurementsEvent$CallbackRemove instanceof LocationManagerCompat$GnssMeasurementsTransport) {
                        ((LocationManagerCompat$GnssMeasurementsTransport) gnssMeasurementsEvent$CallbackRemove).unregister();
                    }
                    LocationManagerCompat$Api24Impl.unregisterGnssMeasurementsCallback(locationManager, gnssMeasurementsEvent$CallbackRemove);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void unregisterGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull GnssStatusCompat$Callback gnssStatusCompat$Callback) {
        SimpleArrayMap<Object, Object> simpleArrayMap = LocationManagerCompat$GnssListenersHolder.sGnssStatusListeners;
        synchronized (simpleArrayMap) {
            try {
                Object objRemove = simpleArrayMap.remove(gnssStatusCompat$Callback);
                if (objRemove != null) {
                    LocationManagerCompat$Api24Impl.unregisterGnssStatusCallback(locationManager, objRemove);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static boolean registerGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull GnssStatusCompat$Callback gnssStatusCompat$Callback, @NonNull Handler handler) {
        if (Build$VERSION.SDK_INT >= 30) {
            return registerGnssStatusCallback(locationManager, ExecutorCompat.create(handler), gnssStatusCompat$Callback);
        }
        return registerGnssStatusCallback(locationManager, new LocationManagerCompat$InlineHandlerExecutor(handler), gnssStatusCompat$Callback);
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    private static boolean registerGnssStatusCallback(LocationManager locationManager, Handler handler, Executor executor, GnssStatusCompat$Callback gnssStatusCompat$Callback) {
        if (Build$VERSION.SDK_INT >= 30) {
            return LocationManagerCompat$Api30Impl.registerGnssStatusCallback(locationManager, handler, executor, gnssStatusCompat$Callback);
        }
        return LocationManagerCompat$Api24Impl.registerGnssStatusCallback(locationManager, handler, executor, gnssStatusCompat$Callback);
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    @RequiresApi(24)
    public static boolean registerGnssMeasurementsCallback(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent$Callback gnssMeasurementsEvent$Callback, @NonNull Handler handler) {
        int i9 = Build$VERSION.SDK_INT;
        if (i9 > 30) {
            return LocationManagerCompat$Api24Impl.registerGnssMeasurementsCallback(locationManager, gnssMeasurementsEvent$Callback, handler);
        }
        if (i9 == 30) {
            return registerGnssMeasurementsCallbackOnR(locationManager, ExecutorCompat.create(handler), gnssMeasurementsEvent$Callback);
        }
        SimpleArrayMap<GnssMeasurementsEvent$Callback, GnssMeasurementsEvent$Callback> simpleArrayMap = LocationManagerCompat$GnssListenersHolder.sGnssMeasurementListeners;
        synchronized (simpleArrayMap) {
            try {
                unregisterGnssMeasurementsCallback(locationManager, gnssMeasurementsEvent$Callback);
                if (!LocationManagerCompat$Api24Impl.registerGnssMeasurementsCallback(locationManager, gnssMeasurementsEvent$Callback, handler)) {
                    return false;
                }
                simpleArrayMap.put(gnssMeasurementsEvent$Callback, gnssMeasurementsEvent$Callback);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void requestLocationUpdates(@NonNull LocationManager locationManager, @NonNull String str, @NonNull LocationRequestCompat locationRequestCompat, @NonNull LocationListenerCompat locationListenerCompat, @NonNull Looper looper) {
        if (Build$VERSION.SDK_INT >= 31) {
            LocationManagerCompat$Api31Impl.requestLocationUpdates(locationManager, str, locationRequestCompat.toLocationRequest(), ExecutorCompat.create(new Handler(looper)), locationListenerCompat);
        } else {
            if (LocationManagerCompat$Api19Impl.tryRequestLocationUpdates(locationManager, str, locationRequestCompat, locationListenerCompat, looper)) {
                return;
            }
            locationManager.requestLocationUpdates(str, locationRequestCompat.getIntervalMillis(), locationRequestCompat.getMinUpdateDistanceMeters(), locationListenerCompat, looper);
        }
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    @Deprecated
    public static void getCurrentLocation(@NonNull LocationManager locationManager, @NonNull String str, @Nullable androidx.core.os.CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull Consumer<Location> consumer) {
        getCurrentLocation(locationManager, str, cancellationSignal != null ? (CancellationSignal) cancellationSignal.getCancellationSignalObject() : null, executor, consumer);
    }
}
