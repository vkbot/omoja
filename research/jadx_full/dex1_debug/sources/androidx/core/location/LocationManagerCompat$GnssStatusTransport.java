package androidx.core.location;

import android.location.GnssStatus;
import android.location.GnssStatus$Callback;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.util.Preconditions;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
public class LocationManagerCompat$GnssStatusTransport extends GnssStatus$Callback {
    final GnssStatusCompat$Callback mCallback;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LocationManagerCompat$GnssStatusTransport(GnssStatusCompat$Callback gnssStatusCompat$Callback) {
        Preconditions.checkArgument(gnssStatusCompat$Callback != null, "invalid null callback");
        this.mCallback = gnssStatusCompat$Callback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.GnssStatus$Callback
    public void onFirstFix(int i9) {
        this.mCallback.onFirstFix(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.GnssStatus$Callback
    public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
        this.mCallback.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.GnssStatus$Callback
    public void onStarted() {
        this.mCallback.onStarted();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.location.GnssStatus$Callback
    public void onStopped() {
        this.mCallback.onStopped();
    }
}
