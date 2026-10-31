package androidx.constraintlayout.motion.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface MotionLayout$TransitionListener {
    void onTransitionChange(MotionLayout motionLayout, int i9, int i10, float f8);

    void onTransitionCompleted(MotionLayout motionLayout, int i9);

    void onTransitionStarted(MotionLayout motionLayout, int i9, int i10);

    void onTransitionTrigger(MotionLayout motionLayout, int i9, boolean z8, float f8);
}
