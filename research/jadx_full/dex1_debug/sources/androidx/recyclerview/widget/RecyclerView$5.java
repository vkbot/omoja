package androidx.recyclerview.widget;

import androidx.core.view.DifferentialMotionFlingTarget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView$5 implements DifferentialMotionFlingTarget {
    final /* synthetic */ RecyclerView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$5(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.DifferentialMotionFlingTarget
    public float getScaledScrollFactor() {
        float f8;
        boolean zCanScrollVertically = this.this$0.mLayout.canScrollVertically();
        RecyclerView recyclerView = this.this$0;
        if (zCanScrollVertically) {
            f8 = recyclerView.mScaledVerticalScrollFactor;
        } else {
            if (!recyclerView.mLayout.canScrollHorizontally()) {
                return 0.0f;
            }
            f8 = this.this$0.mScaledHorizontalScrollFactor;
        }
        return -f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.DifferentialMotionFlingTarget
    public boolean startDifferentialMotionFling(float f8) {
        int i9;
        int i10;
        if (this.this$0.mLayout.canScrollVertically()) {
            i10 = (int) f8;
            i9 = 0;
        } else if (this.this$0.mLayout.canScrollHorizontally()) {
            i9 = (int) f8;
            i10 = 0;
        } else {
            i9 = 0;
            i10 = 0;
        }
        if (i9 == 0 && i10 == 0) {
            return false;
        }
        this.this$0.stopScroll();
        return this.this$0.flingNoThresholdCheck(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.DifferentialMotionFlingTarget
    public void stopDifferentialMotionFling() {
        this.this$0.stopScroll();
    }
}
