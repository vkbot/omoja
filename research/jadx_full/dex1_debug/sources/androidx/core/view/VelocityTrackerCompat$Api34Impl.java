package androidx.core.view;

import android.view.VelocityTracker;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(34)
public class VelocityTrackerCompat$Api34Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private VelocityTrackerCompat$Api34Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static float getAxisVelocity(VelocityTracker velocityTracker, int i9, int i10) {
        return velocityTracker.getAxisVelocity(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean isAxisSupported(VelocityTracker velocityTracker, int i9) {
        return velocityTracker.isAxisSupported(i9);
    }

    @DoNotInline
    public static float getAxisVelocity(VelocityTracker velocityTracker, int i9) {
        return velocityTracker.getAxisVelocity(i9);
    }
}
