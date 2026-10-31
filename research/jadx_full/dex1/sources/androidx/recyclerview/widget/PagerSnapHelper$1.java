package androidx.recyclerview.widget;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PagerSnapHelper$1 extends LinearSmoothScroller {
    final /* synthetic */ PagerSnapHelper this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerSnapHelper$1(PagerSnapHelper pagerSnapHelper, Context context) {
        super(context);
        this.this$0 = pagerSnapHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    public float calculateSpeedPerPixel(@NonNull DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    public int calculateTimeForScrolling(int i9) {
        return Math.min(100, super.calculateTimeForScrolling(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView$SmoothScroller
    public void onTargetFound(@NonNull View view, @NonNull RecyclerView$State recyclerView$State, @NonNull RecyclerView$SmoothScroller$Action recyclerView$SmoothScroller$Action) {
        PagerSnapHelper pagerSnapHelper = this.this$0;
        int[] iArrCalculateDistanceToFinalSnap = pagerSnapHelper.calculateDistanceToFinalSnap(pagerSnapHelper.mRecyclerView.getLayoutManager(), view);
        int i9 = iArrCalculateDistanceToFinalSnap[0];
        int i10 = iArrCalculateDistanceToFinalSnap[1];
        int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i9), Math.abs(i10)));
        if (iCalculateTimeForDeceleration > 0) {
            recyclerView$SmoothScroller$Action.update(i9, i10, iCalculateTimeForDeceleration, this.mDecelerateInterpolator);
        }
    }
}
