package androidx.core.location;

import android.location.GnssStatus;
import android.location.GnssStatus$Callback;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(24)
public class LocationManagerCompat$PreRGnssStatusTransport extends GnssStatus$Callback {
    final GnssStatusCompat$Callback mCallback;

    @Nullable
    volatile Executor mExecutor;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LocationManagerCompat$PreRGnssStatusTransport(GnssStatusCompat$Callback gnssStatusCompat$Callback) {
        Preconditions.checkArgument(gnssStatusCompat$Callback != null, "invalid null callback");
        this.mCallback = gnssStatusCompat$Callback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(LocationManagerCompat$PreRGnssStatusTransport locationManagerCompat$PreRGnssStatusTransport, Executor executor) {
        locationManagerCompat$PreRGnssStatusTransport.lambda$onStopped$1(executor);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(LocationManagerCompat$PreRGnssStatusTransport locationManagerCompat$PreRGnssStatusTransport, Executor executor, int i9) {
        locationManagerCompat$PreRGnssStatusTransport.lambda$onFirstFix$2(executor, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void c(LocationManagerCompat$PreRGnssStatusTransport locationManagerCompat$PreRGnssStatusTransport, Executor executor) {
        locationManagerCompat$PreRGnssStatusTransport.lambda$onStarted$0(executor);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void d(LocationManagerCompat$PreRGnssStatusTransport locationManagerCompat$PreRGnssStatusTransport, Executor executor, GnssStatus gnssStatus) {
        locationManagerCompat$PreRGnssStatusTransport.lambda$onSatelliteStatusChanged$3(executor, gnssStatus);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onFirstFix$2(Executor executor, int i9) {
        if (this.mExecutor != executor) {
            return;
        }
        this.mCallback.onFirstFix(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onSatelliteStatusChanged$3(Executor executor, GnssStatus gnssStatus) {
        if (this.mExecutor != executor) {
            return;
        }
        this.mCallback.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onStarted$0(Executor executor) {
        if (this.mExecutor != executor) {
            return;
        }
        this.mCallback.onStarted();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onStopped$1(Executor executor) {
        if (this.mExecutor != executor) {
            return;
        }
        this.mCallback.onStopped();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.GnssStatus$Callback
    public void onFirstFix(int i9) {
        Executor executor = this.mExecutor;
        if (executor == null) {
            return;
        }
        executor.execute(new f(this, executor, i9, 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.GnssStatus$Callback
    public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
        Executor executor = this.mExecutor;
        if (executor == null) {
            return;
        }
        executor.execute(new e(this, executor, gnssStatus, 2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.GnssStatus$Callback
    public void onStarted() {
        Executor executor = this.mExecutor;
        if (executor == null) {
            return;
        }
        executor.execute(new l(this, executor, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.GnssStatus$Callback
    public void onStopped() {
        Executor executor = this.mExecutor;
        if (executor == null) {
            return;
        }
        executor.execute(new l(this, executor, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void register(Executor executor) {
        Preconditions.checkArgument(executor != null, "invalid null executor");
        Preconditions.checkState(this.mExecutor == null);
        this.mExecutor = executor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unregister() {
        this.mExecutor = null;
    }
}
