package androidx.slidingpanelayout.widget;

import android.view.View;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.customview.widget.ViewDragHelper$Callback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SlidingPaneLayout$DragHelperCallback extends ViewDragHelper$Callback {
    final /* synthetic */ SlidingPaneLayout this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SlidingPaneLayout$DragHelperCallback(SlidingPaneLayout slidingPaneLayout) {
        this.this$0 = slidingPaneLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isDraggable() {
        SlidingPaneLayout slidingPaneLayout = this.this$0;
        if (slidingPaneLayout.mIsUnableToDrag || slidingPaneLayout.getLockMode() == 3) {
            return false;
        }
        if (this.this$0.isOpen() && this.this$0.getLockMode() == 1) {
            return false;
        }
        return this.this$0.isOpen() || this.this$0.getLockMode() != 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public int clampViewPositionHorizontal(View view, int i9, int i10) {
        SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) this.this$0.mSlideableView.getLayoutParams();
        boolean zIsLayoutRtlSupport = this.this$0.isLayoutRtlSupport();
        SlidingPaneLayout slidingPaneLayout = this.this$0;
        if (!zIsLayoutRtlSupport) {
            int paddingLeft = slidingPaneLayout.getPaddingLeft() + ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).leftMargin;
            return Math.min(Math.max(i9, paddingLeft), this.this$0.mSlideRange + paddingLeft);
        }
        int width = slidingPaneLayout.getWidth() - (this.this$0.mSlideableView.getWidth() + (this.this$0.getPaddingRight() + ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).rightMargin));
        return Math.max(Math.min(i9, width), width - this.this$0.mSlideRange);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public int clampViewPositionVertical(View view, int i9, int i10) {
        return view.getTop();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public int getViewHorizontalDragRange(View view) {
        return this.this$0.mSlideRange;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public void onEdgeDragStarted(int i9, int i10) {
        if (isDraggable()) {
            SlidingPaneLayout slidingPaneLayout = this.this$0;
            slidingPaneLayout.mDragHelper.captureChildView(slidingPaneLayout.mSlideableView, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public void onEdgeTouched(int i9, int i10) {
        if (isDraggable()) {
            SlidingPaneLayout slidingPaneLayout = this.this$0;
            slidingPaneLayout.mDragHelper.captureChildView(slidingPaneLayout.mSlideableView, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public void onViewCaptured(View view, int i9) {
        this.this$0.setAllChildrenVisible();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public void onViewDragStateChanged(int i9) {
        if (this.this$0.mDragHelper.getViewDragState() == 0) {
            SlidingPaneLayout slidingPaneLayout = this.this$0;
            if (slidingPaneLayout.mSlideOffset != 1.0f) {
                slidingPaneLayout.dispatchOnPanelOpened(slidingPaneLayout.mSlideableView);
                this.this$0.mPreservedOpenState = true;
            } else {
                slidingPaneLayout.updateObscuredViewsVisibility(slidingPaneLayout.mSlideableView);
                SlidingPaneLayout slidingPaneLayout2 = this.this$0;
                slidingPaneLayout2.dispatchOnPanelClosed(slidingPaneLayout2.mSlideableView);
                this.this$0.mPreservedOpenState = false;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public void onViewPositionChanged(View view, int i9, int i10, int i11, int i12) {
        this.this$0.onPanelDragged(i9);
        this.this$0.invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public void onViewReleased(View view, float f8, float f9) {
        int paddingLeft;
        SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) view.getLayoutParams();
        boolean zIsLayoutRtlSupport = this.this$0.isLayoutRtlSupport();
        SlidingPaneLayout slidingPaneLayout = this.this$0;
        if (zIsLayoutRtlSupport) {
            int paddingRight = slidingPaneLayout.getPaddingRight() + ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).rightMargin;
            if (f8 < 0.0f || (f8 == 0.0f && this.this$0.mSlideOffset > 0.5f)) {
                paddingRight += this.this$0.mSlideRange;
            }
            paddingLeft = (this.this$0.getWidth() - paddingRight) - this.this$0.mSlideableView.getWidth();
        } else {
            paddingLeft = ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).leftMargin + slidingPaneLayout.getPaddingLeft();
            if (f8 > 0.0f || (f8 == 0.0f && this.this$0.mSlideOffset > 0.5f)) {
                paddingLeft += this.this$0.mSlideRange;
            }
        }
        this.this$0.mDragHelper.settleCapturedViewAt(paddingLeft, view.getTop());
        this.this$0.invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public boolean tryCaptureView(View view, int i9) {
        if (isDraggable()) {
            return ((SlidingPaneLayout$LayoutParams) view.getLayoutParams()).slideable;
        }
        return false;
    }
}
