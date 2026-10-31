package androidx.core.view;

import android.view.MotionEvent;
import android.view.VelocityTracker;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@VisibleForTesting
public interface DifferentialMotionFlingController$DifferentialVelocityProvider {
    float getCurrentVelocity(VelocityTracker velocityTracker, MotionEvent motionEvent, int i9);
}
