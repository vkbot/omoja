package com.mega.carlink.view.widget;

import android.view.View;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class CarLinkPagerGridSnapHelper extends SnapHelper {
    private RecyclerView mRecyclerView;

    @Override // androidx.recyclerview.widget.SnapHelper
    public void attachToRecyclerView(RecyclerView recyclerView) throws IllegalStateException {
        super.attachToRecyclerView(recyclerView);
        this.mRecyclerView = recyclerView;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int[] calculateDistanceToFinalSnap(RecyclerView.LayoutManager layoutManager, View view) {
        int position = layoutManager.getPosition(view);
        MLog.d("findTargetSnapPosition, pos = " + position);
        return layoutManager instanceof CarLinkPagerGridLayoutManager ? ((CarLinkPagerGridLayoutManager) layoutManager).getSnapOffset(position) : new int[2];
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof CarLinkPagerGridLayoutManager) {
            return ((CarLinkPagerGridLayoutManager) layoutManager).findSnapView();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005e  */
    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        int iFindPrePageFirstPos;
        MLog.d("findTargetSnapPosition, velocityX = " + i + ", velocityY" + i2);
        if (layoutManager == null || !(layoutManager instanceof CarLinkPagerGridLayoutManager)) {
            iFindPrePageFirstPos = -1;
        } else {
            CarLinkPagerGridLayoutManager carLinkPagerGridLayoutManager = (CarLinkPagerGridLayoutManager) layoutManager;
            if (carLinkPagerGridLayoutManager.canScrollHorizontally()) {
                if (i > CarLinkPagerConfig.getFlingThreshold()) {
                    iFindPrePageFirstPos = carLinkPagerGridLayoutManager.findNextPageFirstPos();
                } else if (i < (-CarLinkPagerConfig.getFlingThreshold())) {
                    iFindPrePageFirstPos = carLinkPagerGridLayoutManager.findPrePageFirstPos();
                } else {
                    iFindPrePageFirstPos = -1;
                }
            } else if (!carLinkPagerGridLayoutManager.canScrollVertically()) {
                iFindPrePageFirstPos = -1;
            } else if (i2 > CarLinkPagerConfig.getFlingThreshold()) {
                iFindPrePageFirstPos = carLinkPagerGridLayoutManager.findNextPageFirstPos();
            } else if (i2 < (-CarLinkPagerConfig.getFlingThreshold())) {
                iFindPrePageFirstPos = carLinkPagerGridLayoutManager.findPrePageFirstPos();
            } else {
                iFindPrePageFirstPos = -1;
            }
        }
        MLog.d("findTargetSnapPosition, target = " + iFindPrePageFirstPos);
        return iFindPrePageFirstPos;
    }

    @Override // androidx.recyclerview.widget.SnapHelper, androidx.recyclerview.widget.RecyclerView.OnFlingListener
    public boolean onFling(int i, int i2) {
        RecyclerView.LayoutManager layoutManager = this.mRecyclerView.getLayoutManager();
        if (layoutManager == null || this.mRecyclerView.getAdapter() == null) {
            return false;
        }
        int flingThreshold = CarLinkPagerConfig.getFlingThreshold();
        return (Math.abs(i2) > flingThreshold || Math.abs(i) > flingThreshold) && snapFromFling(layoutManager, i, i2);
    }

    private boolean snapFromFling(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        LinearSmoothScroller linearSmoothScrollerCreateSnapScroller;
        int iFindTargetSnapPosition;
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (linearSmoothScrollerCreateSnapScroller = createSnapScroller(layoutManager)) == null || (iFindTargetSnapPosition = findTargetSnapPosition(layoutManager, i, i2)) == -1) {
            return false;
        }
        linearSmoothScrollerCreateSnapScroller.setTargetPosition(iFindTargetSnapPosition);
        layoutManager.startSmoothScroll(linearSmoothScrollerCreateSnapScroller);
        return true;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    protected LinearSmoothScroller createSnapScroller(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) {
            return new PagerGridSmoothScroller(this.mRecyclerView);
        }
        return null;
    }

    public void setFlingThreshold(int i) {
        CarLinkPagerConfig.setFlingThreshold(i);
    }
}
