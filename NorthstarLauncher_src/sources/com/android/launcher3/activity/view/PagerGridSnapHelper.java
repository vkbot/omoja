package com.android.launcher3.activity.view;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PagerGridSnapHelper extends SnapHelper {
    private static final String TAG = "PagerGridSnapHelper";
    private RecyclerView mRecyclerView;
    private final List<View> mSnapList = new ArrayList(2);

    @Override // androidx.recyclerview.widget.SnapHelper
    public void attachToRecyclerView(RecyclerView recyclerView) {
        super.attachToRecyclerView(recyclerView);
        this.mRecyclerView = recyclerView;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    protected RecyclerView.SmoothScroller createScroller(RecyclerView.LayoutManager layoutManager) {
        if ((layoutManager instanceof PagerGridLayoutManager) && this.mRecyclerView != null) {
            return new PagerGridSmoothScroller(this.mRecyclerView, (PagerGridLayoutManager) layoutManager);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0090 A[PHI: r4
  0x0090: PHI (r4v5 int) = (r4v2 int), (r4v3 int), (r4v1 int), (r4v1 int), (r4v4 int), (r4v6 int), (r4v7 int), (r4v1 int), (r4v1 int), (r4v8 int) binds: [B:69:0x00e8, B:64:0x00d7, B:53:0x00be, B:56:0x00c6, B:59:0x00cb, B:49:0x00ac, B:44:0x009b, B:32:0x007f, B:35:0x0087, B:38:0x008c] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int velocityX, int velocityY) {
        int currentPagerIndex = -1;
        if (layoutManager.getItemCount() == 0 || layoutManager.getChildCount() == 0 || !(layoutManager instanceof PagerGridLayoutManager)) {
            return -1;
        }
        PagerGridLayoutManager pagerGridLayoutManager = (PagerGridLayoutManager) layoutManager;
        if (pagerGridLayoutManager.getLayoutState().mLastScrollDelta == 0) {
            return -1;
        }
        int[] iArrCalculateScrollDistance = calculateScrollDistance(velocityX, velocityY);
        int i = pagerGridLayoutManager.canScrollHorizontally() ? iArrCalculateScrollDistance[0] : iArrCalculateScrollDistance[1];
        if (pagerGridLayoutManager.shouldHorizontallyReverseLayout()) {
            i = -i;
        }
        boolean zIsForwardFling = isForwardFling(pagerGridLayoutManager, velocityX, velocityY);
        int layoutCenter = getLayoutCenter(pagerGridLayoutManager);
        reacquireSnapList(pagerGridLayoutManager);
        int size = this.mSnapList.size();
        if (size == 1) {
            View view = this.mSnapList.get(0);
            int position = pagerGridLayoutManager.getPosition(view);
            if (!zIsForwardFling ? Math.abs(i) < layoutCenter ? !pagerGridLayoutManager.shouldHorizontallyReverseLayout() ? getViewDecoratedEnd(pagerGridLayoutManager, view) + Math.abs(i) <= layoutCenter || (position = position - 1) >= 0 : getViewDecoratedStart(pagerGridLayoutManager, view) - Math.abs(i) >= layoutCenter || (position = position - 1) >= 0 : (position = position - 1) >= 0 : i >= layoutCenter || (!pagerGridLayoutManager.shouldHorizontallyReverseLayout() ? !(getViewDecoratedStart(pagerGridLayoutManager, view) - i > layoutCenter && (position = position - 1) < 0) : !(getViewDecoratedEnd(pagerGridLayoutManager, view) + i < layoutCenter && (position = position - 1) < 0))) {
                currentPagerIndex = position;
            }
        } else if (size == 2) {
            View view2 = this.mSnapList.get(0);
            pagerGridLayoutManager.getPosition(view2);
            View view3 = this.mSnapList.get(1);
            int position2 = pagerGridLayoutManager.getPosition(view3);
            if (pagerGridLayoutManager.shouldHorizontallyReverseLayout()) {
                if (zIsForwardFling) {
                    if (i >= layoutCenter || getViewDecoratedEnd(pagerGridLayoutManager, view3) + i >= layoutCenter || (position2 = position2 - 1) >= 0) {
                        currentPagerIndex = position2;
                    }
                } else if (Math.abs(i) >= layoutCenter) {
                    position2--;
                    if (position2 >= 0) {
                        currentPagerIndex = position2;
                    }
                } else if (getViewDecoratedStart(pagerGridLayoutManager, view2) - Math.abs(i) <= layoutCenter) {
                    position2--;
                    if (position2 >= 0) {
                        currentPagerIndex = position2;
                    }
                } else {
                    currentPagerIndex = pagerGridLayoutManager.getCurrentPagerIndex() * pagerGridLayoutManager.getOnePageSize();
                }
            } else if (zIsForwardFling) {
                if (i >= layoutCenter || getViewDecoratedStart(pagerGridLayoutManager, view3) - i <= layoutCenter || (position2 = position2 - 1) >= 0) {
                    currentPagerIndex = position2;
                }
            } else if (Math.abs(i) >= layoutCenter) {
                position2--;
                if (position2 >= 0) {
                    currentPagerIndex = position2;
                }
            } else if (getViewDecoratedEnd(pagerGridLayoutManager, view2) + Math.abs(i) >= layoutCenter) {
                position2--;
                if (position2 >= 0) {
                    currentPagerIndex = position2;
                }
            } else {
                currentPagerIndex = pagerGridLayoutManager.getCurrentPagerIndex() * pagerGridLayoutManager.getOnePageSize();
            }
        } else if (size == 3) {
            currentPagerIndex = pagerGridLayoutManager.getPosition(this.mSnapList.get(1));
        }
        this.mSnapList.clear();
        return currentPagerIndex;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        View view;
        View view2 = null;
        if (layoutManager instanceof PagerGridLayoutManager) {
            PagerGridLayoutManager pagerGridLayoutManager = (PagerGridLayoutManager) layoutManager;
            reacquireSnapList(pagerGridLayoutManager);
            int size = this.mSnapList.size();
            if (size == 1) {
                view = this.mSnapList.get(0);
            } else {
                if (size == 2) {
                    int layoutCenter = getLayoutCenter(pagerGridLayoutManager);
                    view2 = this.mSnapList.get(0);
                    View view3 = this.mSnapList.get(1);
                    pagerGridLayoutManager.getDecoratedBoundsWithMargins(view3, new Rect());
                    if (!pagerGridLayoutManager.shouldHorizontallyReverseLayout() ? getViewDecoratedStart(pagerGridLayoutManager, view3) <= layoutCenter : getViewDecoratedEnd(pagerGridLayoutManager, view3) > layoutCenter) {
                        view2 = view3;
                    }
                } else if (size == 3) {
                    view = this.mSnapList.get(1);
                }
                this.mSnapList.clear();
            }
            view2 = view;
            this.mSnapList.clear();
        }
        return view2;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int[] calculateDistanceToFinalSnap(RecyclerView.LayoutManager layoutManager, View targetView) {
        int iCalculateDx;
        int iCalculateDyToNextPager;
        int iCalculateDy;
        int[] iArr = new int[2];
        int position = layoutManager.getPosition(targetView);
        if (layoutManager instanceof PagerGridLayoutManager) {
            PagerGridLayoutManager pagerGridLayoutManager = (PagerGridLayoutManager) layoutManager;
            int layoutCenter = getLayoutCenter(pagerGridLayoutManager);
            Rect rect = new Rect();
            layoutManager.getDecoratedBoundsWithMargins(targetView, rect);
            if (pagerGridLayoutManager.shouldHorizontallyReverseLayout()) {
                if (getViewDecoratedEnd(pagerGridLayoutManager, targetView) >= layoutCenter) {
                    Rect startSnapRect = pagerGridLayoutManager.getStartSnapRect();
                    iCalculateDx = PagerGridSmoothScroller.calculateDx(pagerGridLayoutManager, startSnapRect, rect);
                    iCalculateDy = PagerGridSmoothScroller.calculateDy(pagerGridLayoutManager, startSnapRect, rect);
                } else {
                    iCalculateDx = -calculateDxToNextPager(pagerGridLayoutManager, rect);
                    iCalculateDyToNextPager = calculateDyToNextPager(pagerGridLayoutManager, rect);
                    iCalculateDy = -iCalculateDyToNextPager;
                }
            } else if (getViewDecoratedStart(pagerGridLayoutManager, targetView) <= layoutCenter) {
                Rect startSnapRect2 = pagerGridLayoutManager.getStartSnapRect();
                iCalculateDx = PagerGridSmoothScroller.calculateDx(pagerGridLayoutManager, startSnapRect2, rect);
                iCalculateDy = PagerGridSmoothScroller.calculateDy(pagerGridLayoutManager, startSnapRect2, rect);
            } else {
                iCalculateDx = -calculateDxToNextPager(pagerGridLayoutManager, rect);
                iCalculateDyToNextPager = calculateDyToNextPager(pagerGridLayoutManager, rect);
                iCalculateDy = -iCalculateDyToNextPager;
            }
            iArr[0] = iCalculateDx;
            iArr[1] = iCalculateDy;
            if (iCalculateDx == 0 && iCalculateDy == 0) {
                pagerGridLayoutManager.calculateCurrentPagerIndexByPosition(position);
            }
        }
        return iArr;
    }

    private boolean isForwardFling(PagerGridLayoutManager layoutManager, int velocityX, int velocityY) {
        if (layoutManager.canScrollHorizontally()) {
            if (layoutManager.getShouldReverseLayout()) {
                if (velocityX < 0) {
                    return true;
                }
            } else if (velocityX > 0) {
                return true;
            }
        } else if (velocityY > 0) {
            return true;
        }
        return false;
    }

    private void reacquireSnapList(PagerGridLayoutManager manager) {
        if (!this.mSnapList.isEmpty()) {
            this.mSnapList.clear();
        }
        int childCount = manager.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = manager.getChildAt(i);
            if (childAt != null && manager.getPosition(childAt) % manager.getOnePageSize() == 0) {
                this.mSnapList.add(childAt);
            }
        }
    }

    static int calculateDxToNextPager(PagerGridLayoutManager manager, Rect targetRect) {
        if (manager.canScrollHorizontally()) {
            return getLayoutEndAfterPadding(manager) - targetRect.left;
        }
        return 0;
    }

    static int calculateDyToNextPager(PagerGridLayoutManager manager, Rect targetRect) {
        if (manager.canScrollVertically()) {
            return getLayoutEndAfterPadding(manager) - targetRect.top;
        }
        return 0;
    }

    static int distanceToCenter(RecyclerView.LayoutManager layoutManager, View targetView) {
        return getChildViewCenter(layoutManager, targetView) - getLayoutCenter(layoutManager);
    }

    static int getLayoutCenter(RecyclerView.LayoutManager layoutManager) {
        return getLayoutStartAfterPadding(layoutManager) + (getLayoutTotalSpace(layoutManager) / 2);
    }

    static int getLayoutStartAfterPadding(RecyclerView.LayoutManager layoutManager) {
        return layoutManager.canScrollHorizontally() ? layoutManager.getPaddingStart() : layoutManager.getPaddingTop();
    }

    static int getLayoutEndAfterPadding(RecyclerView.LayoutManager layoutManager) {
        int height;
        int paddingBottom;
        if (layoutManager.canScrollHorizontally()) {
            height = layoutManager.getWidth();
            paddingBottom = layoutManager.getPaddingEnd();
        } else {
            height = layoutManager.getHeight();
            paddingBottom = layoutManager.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    static int getLayoutTotalSpace(RecyclerView.LayoutManager layoutManager) {
        int height;
        int paddingBottom;
        if (layoutManager.canScrollHorizontally()) {
            height = layoutManager.getWidth() - layoutManager.getPaddingStart();
            paddingBottom = layoutManager.getPaddingEnd();
        } else {
            height = layoutManager.getHeight() - layoutManager.getPaddingTop();
            paddingBottom = layoutManager.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    static int getChildViewCenter(RecyclerView.LayoutManager layoutManager, View targetView) {
        return getViewDecoratedStart(layoutManager, targetView) + (getViewDecoratedMeasurement(layoutManager, targetView) / 2);
    }

    static int getViewDecoratedStart(RecyclerView.LayoutManager layoutManager, View view) {
        int decoratedTop;
        int i;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (layoutManager.canScrollHorizontally()) {
            decoratedTop = layoutManager.getDecoratedLeft(view);
            i = layoutParams.leftMargin;
        } else {
            decoratedTop = layoutManager.getDecoratedTop(view);
            i = layoutParams.topMargin;
        }
        return decoratedTop - i;
    }

    static int getViewDecoratedEnd(RecyclerView.LayoutManager layoutManager, View view) {
        int decoratedBottom;
        int i;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (layoutManager.canScrollHorizontally()) {
            decoratedBottom = layoutManager.getDecoratedRight(view);
            i = layoutParams.rightMargin;
        } else {
            decoratedBottom = layoutManager.getDecoratedBottom(view);
            i = layoutParams.bottomMargin;
        }
        return decoratedBottom - i;
    }

    static int getViewDecoratedMeasurement(RecyclerView.LayoutManager layoutManager, View view) {
        int decoratedMeasuredHeight;
        int i;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (layoutManager.canScrollHorizontally()) {
            decoratedMeasuredHeight = layoutManager.getDecoratedMeasuredWidth(view) + layoutParams.leftMargin;
            i = layoutParams.rightMargin;
        } else {
            decoratedMeasuredHeight = layoutManager.getDecoratedMeasuredHeight(view) + layoutParams.topMargin;
            i = layoutParams.bottomMargin;
        }
        return decoratedMeasuredHeight + i;
    }
}
