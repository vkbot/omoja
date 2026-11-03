package com.android.launcher3.activity.view;

import android.graphics.PointF;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
class PagerGridSmoothScroller extends LinearSmoothScroller {
    static final int MAX_SCROLL_ON_FLING_DURATION = 160;
    static final float MILLISECONDS_PER_INCH = 100.0f;
    private static final String TAG = "PagerGridSmoothScroller";
    private final PagerGridLayoutManager mLayoutManager;
    private final RecyclerView mRecyclerView;

    PagerGridSmoothScroller(RecyclerView recyclerView, PagerGridLayoutManager layoutManager) {
        super(recyclerView.getContext());
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = layoutManager;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
    protected void onTargetFound(View targetView, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
        PagerGridLayoutManager pagerGridLayoutManager;
        int position;
        PointF pointFComputeScrollVectorForPosition;
        Rect endSnapRect;
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (!(layoutManager instanceof PagerGridLayoutManager) || (pointFComputeScrollVectorForPosition = computeScrollVectorForPosition((position = (pagerGridLayoutManager = (PagerGridLayoutManager) layoutManager).getPosition(targetView)))) == null) {
            return;
        }
        boolean z = pointFComputeScrollVectorForPosition.x > 0.0f || pointFComputeScrollVectorForPosition.y > 0.0f;
        if (pagerGridLayoutManager.shouldHorizontallyReverseLayout()) {
            z = !z;
        }
        if (z) {
            endSnapRect = pagerGridLayoutManager.getStartSnapRect();
        } else {
            endSnapRect = pagerGridLayoutManager.getEndSnapRect();
        }
        Rect rect = new Rect();
        layoutManager.getDecoratedBoundsWithMargins(targetView, rect);
        int iCalculateDx = calculateDx(pagerGridLayoutManager, endSnapRect, rect, z);
        int iCalculateDy = calculateDy(pagerGridLayoutManager, endSnapRect, rect, z);
        int iCalculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(iCalculateDx), Math.abs(iCalculateDy)));
        if (iCalculateTimeForDeceleration > 0) {
            action.update(iCalculateDx, iCalculateDy, iCalculateTimeForDeceleration, this.mDecelerateInterpolator);
        } else {
            pagerGridLayoutManager.calculateCurrentPagerIndexByPosition(position);
        }
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return this.mLayoutManager.getMillisecondPreInch() / displayMetrics.densityDpi;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    protected final int calculateTimeForScrolling(int dx) {
        int iMin = Math.min(this.mLayoutManager.getMaxScrollOnFlingDuration(), super.calculateTimeForScrolling(dx));
        Log.i(TAG, "calculateTimeForScrolling-time: " + iMin);
        return iMin;
    }

    static int calculateDx(PagerGridLayoutManager manager, Rect snapRect, Rect targetRect) {
        if (manager.canScrollHorizontally()) {
            return targetRect.left - snapRect.left;
        }
        return 0;
    }

    static int calculateDx(PagerGridLayoutManager manager, Rect snapRect, Rect targetRect, boolean isLayoutToEnd) {
        int i;
        int i2;
        if (!manager.canScrollHorizontally()) {
            return 0;
        }
        if (isLayoutToEnd) {
            i = targetRect.left;
            i2 = snapRect.left;
        } else {
            i = targetRect.right;
            i2 = snapRect.right;
        }
        return i - i2;
    }

    static int calculateDy(PagerGridLayoutManager manager, Rect snapRect, Rect targetRect) {
        if (manager.canScrollVertically()) {
            return targetRect.top - snapRect.top;
        }
        return 0;
    }

    static int calculateDy(PagerGridLayoutManager manager, Rect snapRect, Rect targetRect, boolean isLayoutToEnd) {
        int i;
        int i2;
        if (!manager.canScrollVertically()) {
            return 0;
        }
        if (isLayoutToEnd) {
            i = targetRect.top;
            i2 = snapRect.top;
        } else {
            i = targetRect.bottom;
            i2 = snapRect.bottom;
        }
        return i - i2;
    }
}
