package androidx.constraintlayout.motion.widget;

import android.view.MotionEvent;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface MotionLayout$MotionTracker {
    void addMovement(MotionEvent motionEvent);

    void clear();

    void computeCurrentVelocity(int i9);

    void computeCurrentVelocity(int i9, float f8);

    float getXVelocity();

    float getXVelocity(int i9);

    float getYVelocity();

    float getYVelocity(int i9);

    void recycle();
}
