package androidx.core.location;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.ObjectsCompat;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LocationManagerCompat$LocationListenerTransport implements LocationListener {
    final Executor mExecutor;

    @Nullable
    volatile LocationManagerCompat$LocationListenerKey mKey;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LocationManagerCompat$LocationListenerTransport(@Nullable LocationManagerCompat$LocationListenerKey locationManagerCompat$LocationListenerKey, Executor executor) {
        this.mKey = locationManagerCompat$LocationListenerKey;
        this.mExecutor = executor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(LocationManagerCompat$LocationListenerTransport locationManagerCompat$LocationListenerTransport, String str) {
        locationManagerCompat$LocationListenerTransport.lambda$onProviderEnabled$4(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(LocationManagerCompat$LocationListenerTransport locationManagerCompat$LocationListenerTransport, String str, int i9, Bundle bundle) {
        locationManagerCompat$LocationListenerTransport.lambda$onStatusChanged$3(str, i9, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(LocationManagerCompat$LocationListenerTransport locationManagerCompat$LocationListenerTransport, Location location) {
        locationManagerCompat$LocationListenerTransport.lambda$onLocationChanged$0(location);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void d(LocationManagerCompat$LocationListenerTransport locationManagerCompat$LocationListenerTransport, List list) {
        locationManagerCompat$LocationListenerTransport.lambda$onLocationChanged$1(list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void e(LocationManagerCompat$LocationListenerTransport locationManagerCompat$LocationListenerTransport, String str) {
        locationManagerCompat$LocationListenerTransport.lambda$onProviderDisabled$5(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void f(LocationManagerCompat$LocationListenerTransport locationManagerCompat$LocationListenerTransport, int i9) {
        locationManagerCompat$LocationListenerTransport.lambda$onFlushComplete$2(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onFlushComplete$2(int i9) {
        LocationManagerCompat$LocationListenerKey locationManagerCompat$LocationListenerKey = this.mKey;
        if (locationManagerCompat$LocationListenerKey == null) {
            return;
        }
        locationManagerCompat$LocationListenerKey.mListener.onFlushComplete(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onLocationChanged$0(Location location) {
        LocationManagerCompat$LocationListenerKey locationManagerCompat$LocationListenerKey = this.mKey;
        if (locationManagerCompat$LocationListenerKey == null) {
            return;
        }
        locationManagerCompat$LocationListenerKey.mListener.onLocationChanged(location);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onLocationChanged$1(List list) {
        LocationManagerCompat$LocationListenerKey locationManagerCompat$LocationListenerKey = this.mKey;
        if (locationManagerCompat$LocationListenerKey == null) {
            return;
        }
        locationManagerCompat$LocationListenerKey.mListener.onLocationChanged((List<Location>) list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onProviderDisabled$5(String str) {
        LocationManagerCompat$LocationListenerKey locationManagerCompat$LocationListenerKey = this.mKey;
        if (locationManagerCompat$LocationListenerKey == null) {
            return;
        }
        locationManagerCompat$LocationListenerKey.mListener.onProviderDisabled(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onProviderEnabled$4(String str) {
        LocationManagerCompat$LocationListenerKey locationManagerCompat$LocationListenerKey = this.mKey;
        if (locationManagerCompat$LocationListenerKey == null) {
            return;
        }
        locationManagerCompat$LocationListenerKey.mListener.onProviderEnabled(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onStatusChanged$3(String str, int i9, Bundle bundle) {
        LocationManagerCompat$LocationListenerKey locationManagerCompat$LocationListenerKey = this.mKey;
        if (locationManagerCompat$LocationListenerKey == null) {
            return;
        }
        locationManagerCompat$LocationListenerKey.mListener.onStatusChanged(str, i9, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LocationManagerCompat$LocationListenerKey getKey() {
        return (LocationManagerCompat$LocationListenerKey) ObjectsCompat.requireNonNull(this.mKey);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.LocationListener
    public void onFlushComplete(int i9) {
        if (this.mKey == null) {
            return;
        }
        this.mExecutor.execute(new j(this, i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.LocationListener
    public void onLocationChanged(@NonNull Location location) {
        if (this.mKey == null) {
            return;
        }
        this.mExecutor.execute(new i(this, location, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.LocationListener
    public void onProviderDisabled(@NonNull String str) {
        if (this.mKey == null) {
            return;
        }
        this.mExecutor.execute(new h(this, str, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.LocationListener
    public void onProviderEnabled(@NonNull String str) {
        if (this.mKey == null) {
            return;
        }
        this.mExecutor.execute(new h(this, str, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i9, Bundle bundle) {
        if (this.mKey == null) {
            return;
        }
        this.mExecutor.execute(new k(this, str, i9, bundle));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unregister() {
        this.mKey = null;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(@NonNull List<Location> list) {
        if (this.mKey == null) {
            return;
        }
        this.mExecutor.execute(new i(this, list, 0));
    }
}
