package androidx.core.location;

import android.location.GnssMeasurementsEvent;
import android.location.GnssMeasurementsEvent$Callback;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(24)
public class LocationManagerCompat$GnssMeasurementsTransport extends GnssMeasurementsEvent$Callback {
    final GnssMeasurementsEvent$Callback mCallback;

    @Nullable
    volatile Executor mExecutor;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LocationManagerCompat$GnssMeasurementsTransport(@NonNull GnssMeasurementsEvent$Callback gnssMeasurementsEvent$Callback, @NonNull Executor executor) {
        this.mCallback = gnssMeasurementsEvent$Callback;
        this.mExecutor = executor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(LocationManagerCompat$GnssMeasurementsTransport locationManagerCompat$GnssMeasurementsTransport, Executor executor, GnssMeasurementsEvent gnssMeasurementsEvent) {
        locationManagerCompat$GnssMeasurementsTransport.lambda$onGnssMeasurementsReceived$0(executor, gnssMeasurementsEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void b(LocationManagerCompat$GnssMeasurementsTransport locationManagerCompat$GnssMeasurementsTransport, Executor executor, int i9) {
        locationManagerCompat$GnssMeasurementsTransport.lambda$onStatusChanged$1(executor, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onGnssMeasurementsReceived$0(Executor executor, GnssMeasurementsEvent gnssMeasurementsEvent) {
        if (this.mExecutor != executor) {
            return;
        }
        this.mCallback.onGnssMeasurementsReceived(gnssMeasurementsEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ void lambda$onStatusChanged$1(Executor executor, int i9) {
        if (this.mExecutor != executor) {
            return;
        }
        this.mCallback.onStatusChanged(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.GnssMeasurementsEvent$Callback
    public void onGnssMeasurementsReceived(GnssMeasurementsEvent gnssMeasurementsEvent) {
        Executor executor = this.mExecutor;
        if (executor == null) {
            return;
        }
        executor.execute(new e(this, executor, gnssMeasurementsEvent, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.GnssMeasurementsEvent$Callback
    public void onStatusChanged(int i9) {
        Executor executor = this.mExecutor;
        if (executor == null) {
            return;
        }
        executor.execute(new f(this, executor, i9, 0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unregister() {
        this.mExecutor = null;
    }
}
