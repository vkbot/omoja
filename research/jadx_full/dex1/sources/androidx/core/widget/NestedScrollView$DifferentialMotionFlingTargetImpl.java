package androidx.core.widget;

import androidx.core.view.DifferentialMotionFlingTarget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class NestedScrollView$DifferentialMotionFlingTargetImpl implements DifferentialMotionFlingTarget {
    final /* synthetic */ NestedScrollView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NestedScrollView$DifferentialMotionFlingTargetImpl(NestedScrollView nestedScrollView) {
        this.this$0 = nestedScrollView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.DifferentialMotionFlingTarget
    public float getScaledScrollFactor() {
        return -this.this$0.getVerticalScrollFactorCompat();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.DifferentialMotionFlingTarget
    public boolean startDifferentialMotionFling(float f8) {
        if (f8 == 0.0f) {
            return false;
        }
        stopDifferentialMotionFling();
        this.this$0.fling((int) f8);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.DifferentialMotionFlingTarget
    public void stopDifferentialMotionFling() {
        NestedScrollView.access$000(this.this$0).abortAnimation();
    }
}
