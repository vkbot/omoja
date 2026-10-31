package androidx.core.location;

import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.core.util.Consumer;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class LocationManagerCompat$CancellableLocationListener implements LocationListener {
    private Consumer<Location> mConsumer;
    private final Executor mExecutor;
    private final LocationManager mLocationManager;
    private final Handler mTimeoutHandler = new Handler(Looper.getMainLooper());

    @Nullable
    Runnable mTimeoutRunnable;

    @GuardedBy("this")
    private boolean mTriggered;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LocationManagerCompat$CancellableLocationListener(LocationManager locationManager, Executor executor, Consumer<Location> consumer) {
        this.mLocationManager = locationManager;
        this.mExecutor = executor;
        this.mConsumer = consumer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(LocationManagerCompat$CancellableLocationListener locationManagerCompat$CancellableLocationListener) {
        locationManagerCompat$CancellableLocationListener.lambda$startTimeout$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(Consumer consumer, Location location) {
        lambda$onLocationChanged$1(consumer, location);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    private void cleanup() {
        this.mConsumer = null;
        this.mLocationManager.removeUpdates(this);
        Runnable runnable = this.mTimeoutRunnable;
        if (runnable != null) {
            this.mTimeoutHandler.removeCallbacks(runnable);
            this.mTimeoutRunnable = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$onLocationChanged$1(Consumer consumer, Location location) {
        consumer.accept(location);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$startTimeout$0() {
        this.mTimeoutRunnable = null;
        onLocationChanged((Location) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public void cancel() {
        synchronized (this) {
            try {
                if (this.mTriggered) {
                    return;
                }
                this.mTriggered = true;
                cleanup();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.LocationListener
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public void onLocationChanged(@Nullable Location location) {
        synchronized (this) {
            try {
                if (this.mTriggered) {
                    return;
                }
                this.mTriggered = true;
                this.mExecutor.execute(new d(this.mConsumer, location, 0));
                cleanup();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.LocationListener
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public void onProviderDisabled(@NonNull String str) {
        onLocationChanged((Location) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void startTimeout(long j9) {
        synchronized (this) {
            try {
                if (this.mTriggered) {
                    return;
                }
                c cVar = new c(this);
                this.mTimeoutRunnable = cVar;
                this.mTimeoutHandler.postDelayed(cVar, j9);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(@NonNull String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i9, Bundle bundle) {
    }
}
