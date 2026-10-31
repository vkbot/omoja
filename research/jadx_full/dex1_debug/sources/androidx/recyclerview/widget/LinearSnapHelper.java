package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LinearSnapHelper extends SnapHelper {
    private static final float INVALID_DISTANCE = 1.0f;

    @Nullable
    private OrientationHelper mHorizontalHelper;

    @Nullable
    private OrientationHelper mVerticalHelper;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private float computeDistancePerChild(RecyclerView$LayoutManager recyclerView$LayoutManager, OrientationHelper orientationHelper) {
        int childCount = recyclerView$LayoutManager.getChildCount();
        if (childCount == 0) {
            return 1.0f;
        }
        View view = null;
        int i9 = Integer.MIN_VALUE;
        int i10 = Integer.MAX_VALUE;
        View view2 = null;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = recyclerView$LayoutManager.getChildAt(i11);
            int position = recyclerView$LayoutManager.getPosition(childAt);
            if (position != -1) {
                if (position < i10) {
                    view = childAt;
                    i10 = position;
                }
                if (position > i9) {
                    view2 = childAt;
                    i9 = position;
                }
            }
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        int iMax = Math.max(orientationHelper.getDecoratedEnd(view), orientationHelper.getDecoratedEnd(view2)) - Math.min(orientationHelper.getDecoratedStart(view), orientationHelper.getDecoratedStart(view2));
        if (iMax == 0) {
            return 1.0f;
        }
        return (iMax * 1.0f) / ((i9 - i10) + 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int distanceToCenter(@NonNull View view, OrientationHelper orientationHelper) {
        return ((orientationHelper.getDecoratedMeasurement(view) / 2) + orientationHelper.getDecoratedStart(view)) - ((orientationHelper.getTotalSpace() / 2) + orientationHelper.getStartAfterPadding());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int estimateNextPositionDiffForFling(RecyclerView$LayoutManager recyclerView$LayoutManager, OrientationHelper orientationHelper, int i9, int i10) {
        int[] iArrCalculateScrollDistance = calculateScrollDistance(i9, i10);
        float fComputeDistancePerChild = computeDistancePerChild(recyclerView$LayoutManager, orientationHelper);
        if (fComputeDistancePerChild <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(iArrCalculateScrollDistance[0]) > Math.abs(iArrCalculateScrollDistance[1]) ? iArrCalculateScrollDistance[0] : iArrCalculateScrollDistance[1]) / fComputeDistancePerChild);
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
    @NonNull
    private OrientationHelper getVerticalHelper(@NonNull RecyclerView$LayoutManager recyclerView$LayoutManager) {
        OrientationHelper orientationHelper = this.mVerticalHelper;
        if (orientationHelper == null || orientationHelper.mLayoutManager != recyclerView$LayoutManager) {
            this.mVerticalHelper = OrientationHelper.createVerticalHelper(recyclerView$LayoutManager);
        }
        return this.mVerticalHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.SnapHelper
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
    /* JADX DEBUG: Multi-variable search result rejected for r9v0, resolved type: androidx.recyclerview.widget.RecyclerView$LayoutManager */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView$LayoutManager recyclerView$LayoutManager, int i9, int i10) {
        int itemCount;
        View viewFindSnapView;
        int position;
        int i11;
        PointF pointFComputeScrollVectorForPosition;
        int iEstimateNextPositionDiffForFling;
        int iEstimateNextPositionDiffForFling2;
        if ((recyclerView$LayoutManager instanceof RecyclerView$SmoothScroller$ScrollVectorProvider) && (itemCount = recyclerView$LayoutManager.getItemCount()) != 0 && (viewFindSnapView = findSnapView(recyclerView$LayoutManager)) != null && (position = recyclerView$LayoutManager.getPosition(viewFindSnapView)) != -1 && (pointFComputeScrollVectorForPosition = ((RecyclerView$SmoothScroller$ScrollVectorProvider) recyclerView$LayoutManager).computeScrollVectorForPosition((i11 = itemCount - 1))) != null) {
            if (recyclerView$LayoutManager.canScrollHorizontally()) {
                iEstimateNextPositionDiffForFling = estimateNextPositionDiffForFling(recyclerView$LayoutManager, getHorizontalHelper(recyclerView$LayoutManager), i9, 0);
                if (pointFComputeScrollVectorForPosition.x < 0.0f) {
                    iEstimateNextPositionDiffForFling = -iEstimateNextPositionDiffForFling;
                }
            } else {
                iEstimateNextPositionDiffForFling = 0;
            }
            if (recyclerView$LayoutManager.canScrollVertically()) {
                iEstimateNextPositionDiffForFling2 = estimateNextPositionDiffForFling(recyclerView$LayoutManager, getVerticalHelper(recyclerView$LayoutManager), 0, i10);
                if (pointFComputeScrollVectorForPosition.y < 0.0f) {
                    iEstimateNextPositionDiffForFling2 = -iEstimateNextPositionDiffForFling2;
                }
            } else {
                iEstimateNextPositionDiffForFling2 = 0;
            }
            if (recyclerView$LayoutManager.canScrollVertically()) {
                iEstimateNextPositionDiffForFling = iEstimateNextPositionDiffForFling2;
            }
            if (iEstimateNextPositionDiffForFling != 0) {
                int i12 = position + iEstimateNextPositionDiffForFling;
                int i13 = i12 >= 0 ? i12 : 0;
                return i13 >= itemCount ? i11 : i13;
            }
        }
        return -1;
    }
}
