package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PagerSnapHelper extends SnapHelper {
    private static final int MAX_SCROLL_ON_FLING_DURATION = 100;

    @Nullable
    private OrientationHelper mHorizontalHelper;

    @Nullable
    private OrientationHelper mVerticalHelper;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int distanceToCenter(@NonNull View view, OrientationHelper orientationHelper) {
        return ((orientationHelper.getDecoratedMeasurement(view) / 2) + orientationHelper.getDecoratedStart(view)) - ((orientationHelper.getTotalSpace() / 2) + orientationHelper.getStartAfterPadding());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private View findCenterView(RecyclerView$LayoutManager recyclerView$LayoutManager, OrientationHelper orientationHelper) {
        int childCount = recyclerView$LayoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int totalSpace = (orientationHelper.getTotalSpace() / 2) + orientationHelper.getStartAfterPadding();
        int i9 = Integer.MAX_VALUE;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = recyclerView$LayoutManager.getChildAt(i10);
            int iAbs = Math.abs(((orientationHelper.getDecoratedMeasurement(childAt) / 2) + orientationHelper.getDecoratedStart(childAt)) - totalSpace);
            if (iAbs < i9) {
                view = childAt;
                i9 = iAbs;
            }
        }
        return view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private OrientationHelper getHorizontalHelper(@NonNull RecyclerView$LayoutManager recyclerView$LayoutManager) {
        OrientationHelper orientationHelper = this.mHorizontalHelper;
        if (orientationHelper == null || orientationHelper.mLayoutManager != recyclerView$LayoutManager) {
            this.mHorizontalHelper = OrientationHelper.createHorizontalHelper(recyclerView$LayoutManager);
        }
        return this.mHorizontalHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private OrientationHelper getOrientationHelper(RecyclerView$LayoutManager recyclerView$LayoutManager) {
        if (recyclerView$LayoutManager.canScrollVertically()) {
            return getVerticalHelper(recyclerView$LayoutManager);
        }
        if (recyclerView$LayoutManager.canScrollHorizontally()) {
            return getHorizontalHelper(recyclerView$LayoutManager);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    private OrientationHelper getVerticalHelper(@NonNull RecyclerView$LayoutManager recyclerView$LayoutManager) {
        OrientationHelper orientationHelper = this.mVerticalHelper;
        if (orientationHelper == null || orientationHelper.mLayoutManager != recyclerView$LayoutManager) {
            this.mVerticalHelper = OrientationHelper.createVerticalHelper(recyclerView$LayoutManager);
        }
        return this.mVerticalHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isForwardFling(RecyclerView$LayoutManager recyclerView$LayoutManager, int i9, int i10) {
        if (recyclerView$LayoutManager.canScrollHorizontally()) {
            return i9 > 0;
        }
        return i10 > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: androidx.recyclerview.widget.RecyclerView$LayoutManager */
    /* JADX WARN: Multi-variable type inference failed */
    private boolean isReverseLayout(RecyclerView$LayoutManager recyclerView$LayoutManager) {
        PointF pointFComputeScrollVectorForPosition;
        int itemCount = recyclerView$LayoutManager.getItemCount();
        if (!(recyclerView$LayoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider) || (pointFComputeScrollVectorForPosition = ((RecyclerView$SmoothScroller$ScrollVectorProvider) recyclerView$LayoutManager).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return false;
        }
        return pointFComputeScrollVectorForPosition.x < 0.0f || pointFComputeScrollVectorForPosition.y < 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView$LayoutManager recyclerView$LayoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (recyclerView$LayoutManager.canScrollHorizontally()) {
            iArr[0] = distanceToCenter(view, getHorizontalHelper(recyclerView$LayoutManager));
        } else {
            iArr[0] = 0;
        }
        if (recyclerView$LayoutManager.canScrollVertically()) {
            iArr[1] = distanceToCenter(view, getVerticalHelper(recyclerView$LayoutManager));
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public RecyclerView$SmoothScroller createScroller(@NonNull RecyclerView$LayoutManager recyclerView$LayoutManager) {
        if (recyclerView$LayoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider) {
            return new PagerSnapHelper$1(this, this.mRecyclerView.getContext());
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public View findSnapView(RecyclerView$LayoutManager recyclerView$LayoutManager) {
        if (recyclerView$LayoutManager.canScrollVertically()) {
            return findCenterView(recyclerView$LayoutManager, getVerticalHelper(recyclerView$LayoutManager));
        }
        if (recyclerView$LayoutManager.canScrollHorizontally()) {
            return findCenterView(recyclerView$LayoutManager, getHorizontalHelper(recyclerView$LayoutManager));
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView$LayoutManager recyclerView$LayoutManager, int i9, int i10) {
        OrientationHelper orientationHelper;
        int itemCount = recyclerView$LayoutManager.getItemCount();
        if (itemCount == 0 || (orientationHelper = getOrientationHelper(recyclerView$LayoutManager)) == null) {
            return -1;
        }
        int childCount = recyclerView$LayoutManager.getChildCount();
        View view = null;
        int i11 = Integer.MAX_VALUE;
        int i12 = Integer.MIN_VALUE;
        View view2 = null;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = recyclerView$LayoutManager.getChildAt(i13);
            if (childAt != null) {
                int iDistanceToCenter = distanceToCenter(childAt, orientationHelper);
                if (iDistanceToCenter <= 0 && iDistanceToCenter > i12) {
                    view2 = childAt;
                    i12 = iDistanceToCenter;
                }
                if (iDistanceToCenter >= 0 && iDistanceToCenter < i11) {
                    view = childAt;
                    i11 = iDistanceToCenter;
                }
            }
        }
        boolean zIsForwardFling = isForwardFling(recyclerView$LayoutManager, i9, i10);
        if (zIsForwardFling && view != null) {
            return recyclerView$LayoutManager.getPosition(view);
        }
        if (!zIsForwardFling && view2 != null) {
            return recyclerView$LayoutManager.getPosition(view2);
        }
        if (zIsForwardFling) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int position = recyclerView$LayoutManager.getPosition(view) + (isReverseLayout(recyclerView$LayoutManager) == zIsForwardFling ? -1 : 1);
        if (position < 0 || position >= itemCount) {
            return -1;
        }
        return position;
    }
}
