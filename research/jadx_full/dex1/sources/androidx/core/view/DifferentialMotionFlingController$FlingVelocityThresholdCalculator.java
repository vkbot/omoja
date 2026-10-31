package androidx.core.view;

import android.content.Context;
import android.view.MotionEvent;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@VisibleForTesting
public interface DifferentialMotionFlingController$FlingVelocityThresholdCalculator {
    void calculateFlingVelocityThresholds(Context context, int[] iArr, MotionEvent motionEvent, int i9);
}
