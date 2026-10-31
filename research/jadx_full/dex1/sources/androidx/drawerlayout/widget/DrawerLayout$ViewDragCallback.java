package androidx.drawerlayout.widget;

import android.view.View;
import androidx.customview.widget.ViewDragHelper;
import androidx.customview.widget.ViewDragHelper$Callback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DrawerLayout$ViewDragCallback extends ViewDragHelper$Callback {
    private final int mAbsGravity;
    private ViewDragHelper mDragger;
    private final Runnable mPeekRunnable = new DrawerLayout$ViewDragCallback$1(this);
    final /* synthetic */ DrawerLayout this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DrawerLayout$ViewDragCallback(DrawerLayout drawerLayout, int i9) {
        this.this$0 = drawerLayout;
        this.mAbsGravity = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void closeOtherDrawer() {
        View viewFindDrawerWithGravity = this.this$0.findDrawerWithGravity(this.mAbsGravity == 3 ? 5 : 3);
        if (viewFindDrawerWithGravity != null) {
            this.this$0.closeDrawer(viewFindDrawerWithGravity);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public int clampViewPositionHorizontal(View view, int i9, int i10) {
        if (this.this$0.checkDrawerViewAbsoluteGravity(view, 3)) {
            return Math.max(-view.getWidth(), Math.min(i9, 0));
        }
        int width = this.this$0.getWidth();
        return Math.max(width - view.getWidth(), Math.min(i9, width));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public int clampViewPositionVertical(View view, int i9, int i10) {
        return view.getTop();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public int getViewHorizontalDragRange(View view) {
        if (this.this$0.isDrawerView(view)) {
            return view.getWidth();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public void onEdgeDragStarted(int i9, int i10) {
        int i11 = i9 & 1;
        DrawerLayout drawerLayout = this.this$0;
        View viewFindDrawerWithGravity = i11 == 1 ? drawerLayout.findDrawerWithGravity(3) : drawerLayout.findDrawerWithGravity(5);
        if (viewFindDrawerWithGravity == null || this.this$0.getDrawerLockMode(viewFindDrawerWithGravity) != 0) {
            return;
        }
        this.mDragger.captureChildView(viewFindDrawerWithGravity, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public boolean onEdgeLock(int i9) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public void onEdgeTouched(int i9, int i10) {
        this.this$0.postDelayed(this.mPeekRunnable, 160L);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public void onViewCaptured(View view, int i9) {
        ((DrawerLayout$LayoutParams) view.getLayoutParams()).isPeeking = false;
        closeOtherDrawer();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public void onViewDragStateChanged(int i9) {
        this.this$0.updateDrawerState(i9, this.mDragger.getCapturedView());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public void onViewPositionChanged(View view, int i9, int i10, int i11, int i12) {
        int width = view.getWidth();
        float width2 = (this.this$0.checkDrawerViewAbsoluteGravity(view, 3) ? i9 + width : this.this$0.getWidth() - i9) / width;
        this.this$0.setDrawerViewOffset(view, width2);
        view.setVisibility(width2 == 0.0f ? 4 : 0);
        this.this$0.invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public void onViewReleased(View view, float f8, float f9) {
        int i9;
        float drawerViewOffset = this.this$0.getDrawerViewOffset(view);
        int width = view.getWidth();
        if (this.this$0.checkDrawerViewAbsoluteGravity(view, 3)) {
            i9 = (f8 > 0.0f || (f8 == 0.0f && drawerViewOffset > 0.5f)) ? 0 : -width;
        } else {
            int width2 = this.this$0.getWidth();
            if (f8 < 0.0f || (f8 == 0.0f && drawerViewOffset > 0.5f)) {
                width2 -= width;
            }
            i9 = width2;
        }
        this.mDragger.settleCapturedViewAt(i9, view.getTop());
        this.this$0.invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void peekDrawer() {
        View viewFindDrawerWithGravity;
        int width;
        int edgeSize = this.mDragger.getEdgeSize();
        boolean z8 = this.mAbsGravity == 3;
        DrawerLayout drawerLayout = this.this$0;
        if (z8) {
            viewFindDrawerWithGravity = drawerLayout.findDrawerWithGravity(3);
            width = (viewFindDrawerWithGravity != null ? -viewFindDrawerWithGravity.getWidth() : 0) + edgeSize;
        } else {
            viewFindDrawerWithGravity = drawerLayout.findDrawerWithGravity(5);
            width = this.this$0.getWidth() - edgeSize;
        }
        if (viewFindDrawerWithGravity != null) {
            if (((!z8 || viewFindDrawerWithGravity.getLeft() >= width) && (z8 || viewFindDrawerWithGravity.getLeft() <= width)) || this.this$0.getDrawerLockMode(viewFindDrawerWithGravity) != 0) {
                return;
            }
            DrawerLayout$LayoutParams drawerLayout$LayoutParams = (DrawerLayout$LayoutParams) viewFindDrawerWithGravity.getLayoutParams();
            this.mDragger.smoothSlideViewTo(viewFindDrawerWithGravity, width, viewFindDrawerWithGravity.getTop());
            drawerLayout$LayoutParams.isPeeking = true;
            this.this$0.invalidate();
            closeOtherDrawer();
            this.this$0.cancelChildViewTouch();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeCallbacks() {
        this.this$0.removeCallbacks(this.mPeekRunnable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDragger(ViewDragHelper viewDragHelper) {
        this.mDragger = viewDragHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.ViewDragHelper$Callback
    public boolean tryCaptureView(View view, int i9) {
        return this.this$0.isDrawerView(view) && this.this$0.checkDrawerViewAbsoluteGravity(view, this.mAbsGravity) && this.this$0.getDrawerLockMode(view) == 0;
    }
}
