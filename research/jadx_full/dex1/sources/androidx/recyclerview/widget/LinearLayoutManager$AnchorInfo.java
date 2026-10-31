package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LinearLayoutManager$AnchorInfo {
    int mCoordinate;
    boolean mLayoutFromEnd;
    OrientationHelper mOrientationHelper;
    int mPosition;
    boolean mValid;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LinearLayoutManager$AnchorInfo() {
        reset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void assignCoordinateFromPadding() {
        boolean z8 = this.mLayoutFromEnd;
        OrientationHelper orientationHelper = this.mOrientationHelper;
        this.mCoordinate = z8 ? orientationHelper.getEndAfterPadding() : orientationHelper.getStartAfterPadding();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void assignFromView(View view, int i9) {
        boolean z8 = this.mLayoutFromEnd;
        OrientationHelper orientationHelper = this.mOrientationHelper;
        if (z8) {
            this.mCoordinate = this.mOrientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedEnd(view);
        } else {
            this.mCoordinate = orientationHelper.getDecoratedStart(view);
        }
        this.mPosition = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void assignFromViewAndKeepVisibleRect(View view, int i9) {
        int totalSpaceChange = this.mOrientationHelper.getTotalSpaceChange();
        if (totalSpaceChange >= 0) {
            assignFromView(view, i9);
            return;
        }
        this.mPosition = i9;
        boolean z8 = this.mLayoutFromEnd;
        OrientationHelper orientationHelper = this.mOrientationHelper;
        if (!z8) {
            int decoratedStart = orientationHelper.getDecoratedStart(view);
            int startAfterPadding = decoratedStart - this.mOrientationHelper.getStartAfterPadding();
            this.mCoordinate = decoratedStart;
            if (startAfterPadding > 0) {
                int endAfterPadding = (this.mOrientationHelper.getEndAfterPadding() - Math.min(0, (this.mOrientationHelper.getEndAfterPadding() - totalSpaceChange) - this.mOrientationHelper.getDecoratedEnd(view))) - (this.mOrientationHelper.getDecoratedMeasurement(view) + decoratedStart);
                if (endAfterPadding < 0) {
                    this.mCoordinate -= Math.min(startAfterPadding, -endAfterPadding);
                    return;
                }
                return;
            }
            return;
        }
        int endAfterPadding2 = (orientationHelper.getEndAfterPadding() - totalSpaceChange) - this.mOrientationHelper.getDecoratedEnd(view);
        this.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - endAfterPadding2;
        if (endAfterPadding2 > 0) {
            int decoratedMeasurement = this.mCoordinate - this.mOrientationHelper.getDecoratedMeasurement(view);
            int startAfterPadding2 = this.mOrientationHelper.getStartAfterPadding();
            int iMin = decoratedMeasurement - (Math.min(this.mOrientationHelper.getDecoratedStart(view) - startAfterPadding2, 0) + startAfterPadding2);
            if (iMin < 0) {
                this.mCoordinate = Math.min(endAfterPadding2, -iMin) + this.mCoordinate;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isViewValidAsAnchor(View view, RecyclerView$State recyclerView$State) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        return !recyclerView$LayoutParams.isItemRemoved() && recyclerView$LayoutParams.getViewLayoutPosition() >= 0 && recyclerView$LayoutParams.getViewLayoutPosition() < recyclerView$State.getItemCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reset() {
        this.mPosition = -1;
        this.mCoordinate = Integer.MIN_VALUE;
        this.mLayoutFromEnd = false;
        this.mValid = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "AnchorInfo{mPosition=" + this.mPosition + ", mCoordinate=" + this.mCoordinate + ", mLayoutFromEnd=" + this.mLayoutFromEnd + ", mValid=" + this.mValid + '}';
    }
}
