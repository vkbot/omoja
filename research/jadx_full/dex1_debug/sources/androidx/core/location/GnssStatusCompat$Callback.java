package androidx.core.location;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class GnssStatusCompat$Callback {
    public void onStarted() {
    }

    public void onStopped() {
    }

    public void onFirstFix(@IntRange(from = ULong.MIN_VALUE) int i9) {
    }

    public void onSatelliteStatusChanged(@NonNull GnssStatusCompat gnssStatusCompat) {
    }
}
