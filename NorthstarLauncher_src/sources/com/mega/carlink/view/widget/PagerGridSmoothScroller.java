package com.mega.carlink.view.widget;

import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class PagerGridSmoothScroller extends LinearSmoothScroller {
    private static final String TAG = "PagerGridSmoothScroller";
    private RecyclerView mRecyclerView;

    public PagerGridSmoothScroller(RecyclerView recyclerView) {
        super(recyclerView.getContext());
        this.mRecyclerView = recyclerView;
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
    protected void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
        RecyclerView.LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
        if (layoutManager != null && (layoutManager instanceof CarLinkPagerGridLayoutManager)) {
            int[] snapOffset = ((CarLinkPagerGridLayoutManager) layoutManager).getSnapOffset(this.mRecyclerView.getChildAdapterPosition(view));
            int i = snapOffset[0];
            int i2 = snapOffset[1];
            MLog.d(TAG, "onTargetFound: dx = " + i + ", dy = " + i2);
            int iCalculateTimeForScrolling = calculateTimeForScrolling(Math.max(Math.abs(i), Math.abs(i2)));
            if (iCalculateTimeForScrolling > 0) {
                action.update(i, i2, iCalculateTimeForScrolling, this.mDecelerateInterpolator);
            }
        }
    }

    @Override // androidx.recyclerview.widget.LinearSmoothScroller
    protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return 60.0f / displayMetrics.densityDpi;
    }
}
