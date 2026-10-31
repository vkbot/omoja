package androidx.recyclerview.widget;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class SnapHelper extends RecyclerView$OnFlingListener {
    static final float MILLISECONDS_PER_INCH = 100.0f;
    private Scroller mGravityScroller;
    RecyclerView mRecyclerView;
    private final RecyclerView$OnScrollListener mScrollListener = new SnapHelper$1(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void destroyCallbacks() {
        this.mRecyclerView.removeOnScrollListener(this.mScrollListener);
        this.mRecyclerView.setOnFlingListener(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setupCallbacks() {
        if (this.mRecyclerView.getOnFlingListener() != null) {
            i.l("An instance of OnFlingListener already set.");
        } else {
            this.mRecyclerView.addOnScrollListener(this.mScrollListener);
            this.mRecyclerView.setOnFlingListener(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean snapFromFling(@NonNull RecyclerView$LayoutManager recyclerView$LayoutManager, int i9, int i10) {
        RecyclerView$SmoothScroller recyclerView$SmoothScrollerCreateScroller;
        int iFindTargetSnapPosition;
        if (!(recyclerView$LayoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider) || (recyclerView$SmoothScrollerCreateScroller = createScroller(recyclerView$LayoutManager)) == null || (iFindTargetSnapPosition = findTargetSnapPosition(recyclerView$LayoutManager, i9, i10)) == -1) {
            return false;
        }
        recyclerView$SmoothScrollerCreateScroller.setTargetPosition(iFindTargetSnapPosition);
        recyclerView$LayoutManager.startSmoothScroll(recyclerView$SmoothScrollerCreateScroller);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            destroyCallbacks();
        }
        this.mRecyclerView = recyclerView;
        if (recyclerView != null) {
            setupCallbacks();
            this.mGravityScroller = new Scroller(this.mRecyclerView.getContext(), new DecelerateInterpolator());
            snapToTargetExistingView();
        }
    }

    @Nullable
    public abstract int[] calculateDistanceToFinalSnap(@NonNull RecyclerView$LayoutManager recyclerView$LayoutManager, @NonNull View view);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] calculateScrollDistance(int i9, int i10) {
        this.mGravityScroller.fling(0, 0, i9, i10, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return new int[]{this.mGravityScroller.getFinalX(), this.mGravityScroller.getFinalY()};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public RecyclerView$SmoothScroller createScroller(@NonNull RecyclerView$LayoutManager recyclerView$LayoutManager) {
        return createSnapScroller(recyclerView$LayoutManager);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @Deprecated
    public LinearSmoothScroller createSnapScroller(@NonNull RecyclerView$LayoutManager recyclerView$LayoutManager) {
        if (recyclerView$LayoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider) {
            return new SnapHelper$2(this, this.mRecyclerView.getContext());
        }
        return null;
    }

    @Nullable
    public abstract View findSnapView(RecyclerView$LayoutManager recyclerView$LayoutManager);

    public abstract int findTargetSnapPosition(RecyclerView$LayoutManager recyclerView$LayoutManager, int i9, int i10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$OnFlingListener
    public boolean onFling(int i9, int i10) {
        RecyclerView$LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
        if (layoutManager == null || this.mRecyclerView.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.mRecyclerView.getMinFlingVelocity();
        return (Math.abs(i10) > minFlingVelocity || Math.abs(i9) > minFlingVelocity) && snapFromFling(layoutManager, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void snapToTargetExistingView() {
        RecyclerView$LayoutManager layoutManager;
        View viewFindSnapView;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (viewFindSnapView = findSnapView(layoutManager)) == null) {
            return;
        }
        int[] iArrCalculateDistanceToFinalSnap = calculateDistanceToFinalSnap(layoutManager, viewFindSnapView);
        int i9 = iArrCalculateDistanceToFinalSnap[0];
        if (i9 == 0 && iArrCalculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.mRecyclerView.smoothScrollBy(i9, iArrCalculateDistanceToFinalSnap[1]);
    }
}
