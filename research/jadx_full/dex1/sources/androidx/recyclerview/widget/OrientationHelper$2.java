package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup$MarginLayoutParams;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class OrientationHelper$2 extends OrientationHelper {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrientationHelper$2(RecyclerView$LayoutManager recyclerView$LayoutManager) {
        super(recyclerView$LayoutManager, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public int getDecoratedEnd(View view) {
        return this.mLayoutManager.getDecoratedBottom(view) + ((ViewGroup$MarginLayoutParams) ((RecyclerView$LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public int getDecoratedMeasurement(View view) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        return this.mLayoutManager.getDecoratedMeasuredHeight(view) + ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).topMargin + ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).bottomMargin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public int getDecoratedMeasurementInOther(View view) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        return this.mLayoutManager.getDecoratedMeasuredWidth(view) + ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).leftMargin + ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).rightMargin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public int getDecoratedStart(View view) {
        return this.mLayoutManager.getDecoratedTop(view) - ((ViewGroup$MarginLayoutParams) ((RecyclerView$LayoutParams) view.getLayoutParams())).topMargin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public int getEnd() {
        return this.mLayoutManager.getHeight();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public int getEndAfterPadding() {
        return this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingBottom();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public int getEndPadding() {
        return this.mLayoutManager.getPaddingBottom();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public int getMode() {
        return this.mLayoutManager.getHeightMode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public int getModeInOther() {
        return this.mLayoutManager.getWidthMode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public int getStartAfterPadding() {
        return this.mLayoutManager.getPaddingTop();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public int getTotalSpace() {
        return (this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingTop()) - this.mLayoutManager.getPaddingBottom();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public int getTransformedEndWithDecoration(View view) {
        this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
        return this.mTmpRect.bottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public int getTransformedStartWithDecoration(View view) {
        this.mLayoutManager.getTransformedBoundingBox(view, true, this.mTmpRect);
        return this.mTmpRect.top;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public void offsetChild(View view, int i9) {
        view.offsetTopAndBottom(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.OrientationHelper
    public void offsetChildren(int i9) {
        this.mLayoutManager.offsetChildrenVertical(i9);
    }
}
