package androidx.recyclerview.widget;

import ai.onnxruntime.a;
import ai.onnxruntime.b;
import android.content.Context;
import android.graphics.PointF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat;
import androidx.fragment.app.FragmentTransaction;
import j1.i;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LinearLayoutManager extends RecyclerView$LayoutManager implements ItemTouchHelper$ViewDropHandler, RecyclerView$SmoothScroller$ScrollVectorProvider {
    static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    final LinearLayoutManager$AnchorInfo mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final LinearLayoutManager$LayoutChunkResult mLayoutChunkResult;
    private LinearLayoutManager$LayoutState mLayoutState;
    int mOrientation;
    OrientationHelper mOrientationHelper;
    LinearLayoutManager$SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private int[] mReusableIntPair;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i9, int i10) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new LinearLayoutManager$AnchorInfo();
        this.mLayoutChunkResult = new LinearLayoutManager$LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        RecyclerView$LayoutManager$Properties properties = RecyclerView$LayoutManager.getProperties(context, attributeSet, i9, i10);
        setOrientation(properties.orientation);
        setReverseLayout(properties.reverseLayout);
        setStackFromEnd(properties.stackFromEnd);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int computeScrollExtent(RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollExtent(recyclerView$State, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int computeScrollOffset(RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollOffset(recyclerView$State, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int computeScrollRange(RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollRange(recyclerView$State, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private View findFirstPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private View findLastPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private View findPartiallyOrCompletelyInvisibleChildClosestToEnd() {
        return this.mShouldReverseLayout ? findFirstPartiallyOrCompletelyInvisibleChild() : findLastPartiallyOrCompletelyInvisibleChild();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private View findPartiallyOrCompletelyInvisibleChildClosestToStart() {
        return this.mShouldReverseLayout ? findLastPartiallyOrCompletelyInvisibleChild() : findFirstPartiallyOrCompletelyInvisibleChild();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int fixLayoutEndGap(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, boolean z8) {
        int endAfterPadding;
        int endAfterPadding2 = this.mOrientationHelper.getEndAfterPadding() - i9;
        if (endAfterPadding2 <= 0) {
            return 0;
        }
        int i10 = -scrollBy(-endAfterPadding2, recyclerView$Recycler, recyclerView$State);
        int i11 = i9 + i10;
        if (!z8 || (endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i11) <= 0) {
            return i10;
        }
        this.mOrientationHelper.offsetChildren(endAfterPadding);
        return endAfterPadding + i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int fixLayoutStartGap(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, boolean z8) {
        int startAfterPadding;
        int startAfterPadding2 = i9 - this.mOrientationHelper.getStartAfterPadding();
        if (startAfterPadding2 <= 0) {
            return 0;
        }
        int i10 = -scrollBy(startAfterPadding2, recyclerView$Recycler, recyclerView$State);
        int i11 = i9 + i10;
        if (!z8 || (startAfterPadding = i11 - this.mOrientationHelper.getStartAfterPadding()) <= 0) {
            return i10;
        }
        this.mOrientationHelper.offsetChildren(-startAfterPadding);
        return i10 - startAfterPadding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void layoutForPredictiveAnimations(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, int i9, int i10) {
        if (!recyclerView$State.willRunPredictiveAnimations() || getChildCount() == 0 || recyclerView$State.isPreLayout() || !supportsPredictiveItemAnimations()) {
            return;
        }
        List<RecyclerView$ViewHolder> scrapList = recyclerView$Recycler.getScrapList();
        int size = scrapList.size();
        int position = getPosition(getChildAt(0));
        int decoratedMeasurement = 0;
        int decoratedMeasurement2 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RecyclerView$ViewHolder recyclerView$ViewHolder = scrapList.get(i11);
            if (!recyclerView$ViewHolder.isRemoved()) {
                boolean z8 = recyclerView$ViewHolder.getLayoutPosition() < position;
                boolean z9 = this.mShouldReverseLayout;
                OrientationHelper orientationHelper = this.mOrientationHelper;
                if (z8 != z9) {
                    decoratedMeasurement += orientationHelper.getDecoratedMeasurement(recyclerView$ViewHolder.itemView);
                } else {
                    decoratedMeasurement2 += orientationHelper.getDecoratedMeasurement(recyclerView$ViewHolder.itemView);
                }
            }
        }
        this.mLayoutState.mScrapList = scrapList;
        if (decoratedMeasurement > 0) {
            updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), i9);
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState = this.mLayoutState;
            linearLayoutManager$LayoutState.mExtraFillSpace = decoratedMeasurement;
            linearLayoutManager$LayoutState.mAvailable = 0;
            linearLayoutManager$LayoutState.assignPositionFromScrapList();
            fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State, false);
        }
        if (decoratedMeasurement2 > 0) {
            updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), i10);
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState2 = this.mLayoutState;
            linearLayoutManager$LayoutState2.mExtraFillSpace = decoratedMeasurement2;
            linearLayoutManager$LayoutState2.mAvailable = 0;
            linearLayoutManager$LayoutState2.assignPositionFromScrapList();
            fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State, false);
        }
        this.mLayoutState.mScrapList = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void logChildren() {
        Log.d(TAG, "internal representation of views on the screen");
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            Log.d(TAG, "item " + getPosition(childAt) + ", coord:" + this.mOrientationHelper.getDecoratedStart(childAt));
        }
        Log.d(TAG, "==============");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void recycleByLayoutState(RecyclerView$Recycler recyclerView$Recycler, LinearLayoutManager$LayoutState linearLayoutManager$LayoutState) {
        if (!linearLayoutManager$LayoutState.mRecycle || linearLayoutManager$LayoutState.mInfinite) {
            return;
        }
        int i9 = linearLayoutManager$LayoutState.mScrollingOffset;
        int i10 = linearLayoutManager$LayoutState.mNoRecycleSpace;
        if (linearLayoutManager$LayoutState.mLayoutDirection == -1) {
            recycleViewsFromEnd(recyclerView$Recycler, i9, i10);
        } else {
            recycleViewsFromStart(recyclerView$Recycler, i9, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void recycleChildren(RecyclerView$Recycler recyclerView$Recycler, int i9, int i10) {
        if (i9 == i10) {
            return;
        }
        if (i10 <= i9) {
            while (i9 > i10) {
                removeAndRecycleViewAt(i9, recyclerView$Recycler);
                i9--;
            }
        } else {
            for (int i11 = i10 - 1; i11 >= i9; i11--) {
                removeAndRecycleViewAt(i11, recyclerView$Recycler);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void recycleViewsFromEnd(RecyclerView$Recycler recyclerView$Recycler, int i9, int i10) {
        int childCount = getChildCount();
        if (i9 < 0) {
            return;
        }
        int end = (this.mOrientationHelper.getEnd() - i9) + i10;
        if (this.mShouldReverseLayout) {
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (this.mOrientationHelper.getDecoratedStart(childAt) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt) < end) {
                    recycleChildren(recyclerView$Recycler, 0, i11);
                    return;
                }
            }
            return;
        }
        int i12 = childCount - 1;
        for (int i13 = i12; i13 >= 0; i13--) {
            View childAt2 = getChildAt(i13);
            if (this.mOrientationHelper.getDecoratedStart(childAt2) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt2) < end) {
                recycleChildren(recyclerView$Recycler, i12, i13);
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void recycleViewsFromStart(RecyclerView$Recycler recyclerView$Recycler, int i9, int i10) {
        if (i9 < 0) {
            return;
        }
        int i11 = i9 - i10;
        int childCount = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (this.mOrientationHelper.getDecoratedEnd(childAt) > i11 || this.mOrientationHelper.getTransformedEndWithDecoration(childAt) > i11) {
                    recycleChildren(recyclerView$Recycler, 0, i12);
                    return;
                }
            }
            return;
        }
        int i13 = childCount - 1;
        for (int i14 = i13; i14 >= 0; i14--) {
            View childAt2 = getChildAt(i14);
            if (this.mOrientationHelper.getDecoratedEnd(childAt2) > i11 || this.mOrientationHelper.getTransformedEndWithDecoration(childAt2) > i11) {
                recycleChildren(recyclerView$Recycler, i13, i14);
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean updateAnchorFromChildren(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo) {
        View viewFindReferenceChild;
        boolean z8 = false;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && linearLayoutManager$AnchorInfo.isViewValidAsAnchor(focusedChild, recyclerView$State)) {
            linearLayoutManager$AnchorInfo.assignFromViewAndKeepVisibleRect(focusedChild, getPosition(focusedChild));
            return true;
        }
        boolean z9 = this.mLastStackFromEnd;
        boolean z10 = this.mStackFromEnd;
        if (z9 != z10 || (viewFindReferenceChild = findReferenceChild(recyclerView$Recycler, recyclerView$State, linearLayoutManager$AnchorInfo.mLayoutFromEnd, z10)) == null) {
            return false;
        }
        linearLayoutManager$AnchorInfo.assignFromView(viewFindReferenceChild, getPosition(viewFindReferenceChild));
        if (!recyclerView$State.isPreLayout() && supportsPredictiveItemAnimations()) {
            int decoratedStart = this.mOrientationHelper.getDecoratedStart(viewFindReferenceChild);
            int decoratedEnd = this.mOrientationHelper.getDecoratedEnd(viewFindReferenceChild);
            int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
            int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
            boolean z11 = decoratedEnd <= startAfterPadding && decoratedStart < startAfterPadding;
            if (decoratedStart >= endAfterPadding && decoratedEnd > endAfterPadding) {
                z8 = true;
            }
            if (z11 || z8) {
                if (linearLayoutManager$AnchorInfo.mLayoutFromEnd) {
                    startAfterPadding = endAfterPadding;
                }
                linearLayoutManager$AnchorInfo.mCoordinate = startAfterPadding;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean updateAnchorFromPendingData(RecyclerView$State recyclerView$State, LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo) {
        int i9;
        if (!recyclerView$State.isPreLayout() && (i9 = this.mPendingScrollPosition) != -1) {
            if (i9 >= 0 && i9 < recyclerView$State.getItemCount()) {
                linearLayoutManager$AnchorInfo.mPosition = this.mPendingScrollPosition;
                LinearLayoutManager$SavedState linearLayoutManager$SavedState = this.mPendingSavedState;
                if (linearLayoutManager$SavedState != null && linearLayoutManager$SavedState.hasValidAnchor()) {
                    boolean z8 = this.mPendingSavedState.mAnchorLayoutFromEnd;
                    linearLayoutManager$AnchorInfo.mLayoutFromEnd = z8;
                    OrientationHelper orientationHelper = this.mOrientationHelper;
                    if (z8) {
                        linearLayoutManager$AnchorInfo.mCoordinate = orientationHelper.getEndAfterPadding() - this.mPendingSavedState.mAnchorOffset;
                    } else {
                        linearLayoutManager$AnchorInfo.mCoordinate = orientationHelper.getStartAfterPadding() + this.mPendingSavedState.mAnchorOffset;
                    }
                    return true;
                }
                if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
                    boolean z9 = this.mShouldReverseLayout;
                    linearLayoutManager$AnchorInfo.mLayoutFromEnd = z9;
                    OrientationHelper orientationHelper2 = this.mOrientationHelper;
                    if (z9) {
                        linearLayoutManager$AnchorInfo.mCoordinate = orientationHelper2.getEndAfterPadding() - this.mPendingScrollPositionOffset;
                    } else {
                        linearLayoutManager$AnchorInfo.mCoordinate = orientationHelper2.getStartAfterPadding() + this.mPendingScrollPositionOffset;
                    }
                    return true;
                }
                View viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition);
                if (viewFindViewByPosition == null) {
                    if (getChildCount() > 0) {
                        linearLayoutManager$AnchorInfo.mLayoutFromEnd = (this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout;
                    }
                    linearLayoutManager$AnchorInfo.assignCoordinateFromPadding();
                } else {
                    if (this.mOrientationHelper.getDecoratedMeasurement(viewFindViewByPosition) > this.mOrientationHelper.getTotalSpace()) {
                        linearLayoutManager$AnchorInfo.assignCoordinateFromPadding();
                        return true;
                    }
                    int decoratedStart = this.mOrientationHelper.getDecoratedStart(viewFindViewByPosition) - this.mOrientationHelper.getStartAfterPadding();
                    OrientationHelper orientationHelper3 = this.mOrientationHelper;
                    if (decoratedStart < 0) {
                        linearLayoutManager$AnchorInfo.mCoordinate = orientationHelper3.getStartAfterPadding();
                        linearLayoutManager$AnchorInfo.mLayoutFromEnd = false;
                        return true;
                    }
                    if (orientationHelper3.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(viewFindViewByPosition) < 0) {
                        linearLayoutManager$AnchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding();
                        linearLayoutManager$AnchorInfo.mLayoutFromEnd = true;
                        return true;
                    }
                    boolean z10 = linearLayoutManager$AnchorInfo.mLayoutFromEnd;
                    OrientationHelper orientationHelper4 = this.mOrientationHelper;
                    linearLayoutManager$AnchorInfo.mCoordinate = z10 ? this.mOrientationHelper.getTotalSpaceChange() + orientationHelper4.getDecoratedEnd(viewFindViewByPosition) : orientationHelper4.getDecoratedStart(viewFindViewByPosition);
                }
                return true;
            }
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateAnchorInfoForLayout(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo) {
        if (updateAnchorFromPendingData(recyclerView$State, linearLayoutManager$AnchorInfo) || updateAnchorFromChildren(recyclerView$Recycler, recyclerView$State, linearLayoutManager$AnchorInfo)) {
            return;
        }
        linearLayoutManager$AnchorInfo.assignCoordinateFromPadding();
        linearLayoutManager$AnchorInfo.mPosition = this.mStackFromEnd ? recyclerView$State.getItemCount() - 1 : 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateLayoutState(int i9, int i10, boolean z8, RecyclerView$State recyclerView$State) {
        int startAfterPadding;
        this.mLayoutState.mInfinite = resolveIsInfinite();
        this.mLayoutState.mLayoutDirection = i9;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(recyclerView$State, iArr);
        int iMax = Math.max(0, this.mReusableIntPair[0]);
        int iMax2 = Math.max(0, this.mReusableIntPair[1]);
        boolean z9 = i9 == 1;
        LinearLayoutManager$LayoutState linearLayoutManager$LayoutState = this.mLayoutState;
        int i11 = z9 ? iMax2 : iMax;
        linearLayoutManager$LayoutState.mExtraFillSpace = i11;
        if (!z9) {
            iMax = iMax2;
        }
        linearLayoutManager$LayoutState.mNoRecycleSpace = iMax;
        if (z9) {
            linearLayoutManager$LayoutState.mExtraFillSpace = this.mOrientationHelper.getEndPadding() + i11;
            View childClosestToEnd = getChildClosestToEnd();
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState2 = this.mLayoutState;
            linearLayoutManager$LayoutState2.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
            int position = getPosition(childClosestToEnd);
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState3 = this.mLayoutState;
            linearLayoutManager$LayoutState2.mCurrentPosition = position + linearLayoutManager$LayoutState3.mItemDirection;
            linearLayoutManager$LayoutState3.mOffset = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
            startAfterPadding = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd) - this.mOrientationHelper.getEndAfterPadding();
        } else {
            View childClosestToStart = getChildClosestToStart();
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState4 = this.mLayoutState;
            linearLayoutManager$LayoutState4.mExtraFillSpace = this.mOrientationHelper.getStartAfterPadding() + linearLayoutManager$LayoutState4.mExtraFillSpace;
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState5 = this.mLayoutState;
            linearLayoutManager$LayoutState5.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
            int position2 = getPosition(childClosestToStart);
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState6 = this.mLayoutState;
            linearLayoutManager$LayoutState5.mCurrentPosition = position2 + linearLayoutManager$LayoutState6.mItemDirection;
            linearLayoutManager$LayoutState6.mOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart);
            startAfterPadding = (-this.mOrientationHelper.getDecoratedStart(childClosestToStart)) + this.mOrientationHelper.getStartAfterPadding();
        }
        LinearLayoutManager$LayoutState linearLayoutManager$LayoutState7 = this.mLayoutState;
        linearLayoutManager$LayoutState7.mAvailable = i10;
        if (z8) {
            linearLayoutManager$LayoutState7.mAvailable = i10 - startAfterPadding;
        }
        linearLayoutManager$LayoutState7.mScrollingOffset = startAfterPadding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateLayoutStateToFillEnd(int i9, int i10) {
        this.mLayoutState.mAvailable = this.mOrientationHelper.getEndAfterPadding() - i10;
        LinearLayoutManager$LayoutState linearLayoutManager$LayoutState = this.mLayoutState;
        linearLayoutManager$LayoutState.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
        linearLayoutManager$LayoutState.mCurrentPosition = i9;
        linearLayoutManager$LayoutState.mLayoutDirection = 1;
        linearLayoutManager$LayoutState.mOffset = i10;
        linearLayoutManager$LayoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateLayoutStateToFillStart(int i9, int i10) {
        this.mLayoutState.mAvailable = i10 - this.mOrientationHelper.getStartAfterPadding();
        LinearLayoutManager$LayoutState linearLayoutManager$LayoutState = this.mLayoutState;
        linearLayoutManager$LayoutState.mCurrentPosition = i9;
        linearLayoutManager$LayoutState.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
        linearLayoutManager$LayoutState.mLayoutDirection = -1;
        linearLayoutManager$LayoutState.mOffset = i10;
        linearLayoutManager$LayoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void calculateExtraLayoutSpace(@NonNull RecyclerView$State recyclerView$State, @NonNull int[] iArr) {
        int i9;
        int extraLayoutSpace = getExtraLayoutSpace(recyclerView$State);
        if (this.mLayoutState.mLayoutDirection == -1) {
            i9 = 0;
        } else {
            i9 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void collectAdjacentPrefetchPositions(int i9, int i10, RecyclerView$State recyclerView$State, RecyclerView$LayoutManager$LayoutPrefetchRegistry recyclerView$LayoutManager$LayoutPrefetchRegistry) {
        if (this.mOrientation != 0) {
            i9 = i10;
        }
        if (getChildCount() == 0 || i9 == 0) {
            return;
        }
        ensureLayoutState();
        updateLayoutState(i9 > 0 ? 1 : -1, Math.abs(i9), true, recyclerView$State);
        collectPrefetchPositionsForLayoutState(recyclerView$State, this.mLayoutState, recyclerView$LayoutManager$LayoutPrefetchRegistry);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void collectInitialPrefetchPositions(int i9, RecyclerView$LayoutManager$LayoutPrefetchRegistry recyclerView$LayoutManager$LayoutPrefetchRegistry) {
        boolean z8;
        int i10;
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = this.mPendingSavedState;
        if (linearLayoutManager$SavedState == null || !linearLayoutManager$SavedState.hasValidAnchor()) {
            resolveShouldLayoutReverse();
            z8 = this.mShouldReverseLayout;
            i10 = this.mPendingScrollPosition;
            if (i10 == -1) {
                i10 = z8 ? i9 - 1 : 0;
            }
        } else {
            LinearLayoutManager$SavedState linearLayoutManager$SavedState2 = this.mPendingSavedState;
            z8 = linearLayoutManager$SavedState2.mAnchorLayoutFromEnd;
            i10 = linearLayoutManager$SavedState2.mAnchorPosition;
        }
        int i11 = z8 ? -1 : 1;
        for (int i12 = 0; i12 < this.mInitialPrefetchItemCount && i10 >= 0 && i10 < i9; i12++) {
            recyclerView$LayoutManager$LayoutPrefetchRegistry.addPosition(i10, 0);
            i10 += i11;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void collectPrefetchPositionsForLayoutState(RecyclerView$State recyclerView$State, LinearLayoutManager$LayoutState linearLayoutManager$LayoutState, RecyclerView$LayoutManager$LayoutPrefetchRegistry recyclerView$LayoutManager$LayoutPrefetchRegistry) {
        int i9 = linearLayoutManager$LayoutState.mCurrentPosition;
        if (i9 < 0 || i9 >= recyclerView$State.getItemCount()) {
            return;
        }
        recyclerView$LayoutManager$LayoutPrefetchRegistry.addPosition(i9, Math.max(0, linearLayoutManager$LayoutState.mScrollingOffset));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView$State recyclerView$State) {
        return computeScrollExtent(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView$State recyclerView$State) {
        return computeScrollOffset(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int computeHorizontalScrollRange(RecyclerView$State recyclerView$State) {
        return computeScrollRange(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$SmoothScroller$ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i9) {
        if (getChildCount() == 0) {
            return null;
        }
        int i10 = (i9 < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        return this.mOrientation == 0 ? new PointF(i10, 0.0f) : new PointF(0.0f, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int computeVerticalScrollExtent(RecyclerView$State recyclerView$State) {
        return computeScrollExtent(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int computeVerticalScrollOffset(RecyclerView$State recyclerView$State) {
        return computeScrollOffset(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int computeVerticalScrollRange(RecyclerView$State recyclerView$State) {
        return computeScrollRange(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int convertFocusDirectionToLayoutDirection(int i9) {
        if (i9 == 1) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
        }
        if (i9 == 2) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1;
        }
        if (i9 == 17) {
            return this.mOrientation == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i9 == 33) {
            return this.mOrientation == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i9 != 66) {
            return (i9 == 130 && this.mOrientation == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.mOrientation == 0 ? 1 : Integer.MIN_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LinearLayoutManager$LayoutState createLayoutState() {
        return new LinearLayoutManager$LayoutState();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int fill(RecyclerView$Recycler recyclerView$Recycler, LinearLayoutManager$LayoutState linearLayoutManager$LayoutState, RecyclerView$State recyclerView$State, boolean z8) {
        int i9 = linearLayoutManager$LayoutState.mAvailable;
        int i10 = linearLayoutManager$LayoutState.mScrollingOffset;
        if (i10 != Integer.MIN_VALUE) {
            if (i9 < 0) {
                linearLayoutManager$LayoutState.mScrollingOffset = i10 + i9;
            }
            recycleByLayoutState(recyclerView$Recycler, linearLayoutManager$LayoutState);
        }
        int i11 = linearLayoutManager$LayoutState.mAvailable + linearLayoutManager$LayoutState.mExtraFillSpace;
        LinearLayoutManager$LayoutChunkResult linearLayoutManager$LayoutChunkResult = this.mLayoutChunkResult;
        while (true) {
            if ((!linearLayoutManager$LayoutState.mInfinite && i11 <= 0) || !linearLayoutManager$LayoutState.hasMore(recyclerView$State)) {
                break;
            }
            linearLayoutManager$LayoutChunkResult.resetInternal();
            layoutChunk(recyclerView$Recycler, recyclerView$State, linearLayoutManager$LayoutState, linearLayoutManager$LayoutChunkResult);
            if (!linearLayoutManager$LayoutChunkResult.mFinished) {
                linearLayoutManager$LayoutState.mOffset = (linearLayoutManager$LayoutChunkResult.mConsumed * linearLayoutManager$LayoutState.mLayoutDirection) + linearLayoutManager$LayoutState.mOffset;
                if (!linearLayoutManager$LayoutChunkResult.mIgnoreConsumed || linearLayoutManager$LayoutState.mScrapList != null || !recyclerView$State.isPreLayout()) {
                    int i12 = linearLayoutManager$LayoutState.mAvailable;
                    int i13 = linearLayoutManager$LayoutChunkResult.mConsumed;
                    linearLayoutManager$LayoutState.mAvailable = i12 - i13;
                    i11 -= i13;
                }
                int i14 = linearLayoutManager$LayoutState.mScrollingOffset;
                if (i14 != Integer.MIN_VALUE) {
                    int i15 = i14 + linearLayoutManager$LayoutChunkResult.mConsumed;
                    linearLayoutManager$LayoutState.mScrollingOffset = i15;
                    int i16 = linearLayoutManager$LayoutState.mAvailable;
                    if (i16 < 0) {
                        linearLayoutManager$LayoutState.mScrollingOffset = i15 + i16;
                    }
                    recycleByLayoutState(recyclerView$Recycler, linearLayoutManager$LayoutState);
                }
                if (z8 && linearLayoutManager$LayoutChunkResult.mFocusable) {
                    break;
                }
            } else {
                break;
            }
        }
        return i9 - linearLayoutManager$LayoutState.mAvailable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findFirstCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View findFirstVisibleChildClosestToEnd(boolean z8, boolean z9) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z8, z9) : findOneVisibleChild(getChildCount() - 1, -1, z8, z9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View findFirstVisibleChildClosestToStart(boolean z8, boolean z9) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z8, z9) : findOneVisibleChild(0, getChildCount(), z8, z9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findFirstVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findLastCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findLastVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View findOnePartiallyOrCompletelyInvisibleChild(int i9, int i10) {
        int i11;
        int i12;
        ensureLayoutState();
        if (i10 <= i9 && i10 >= i9) {
            return getChildAt(i9);
        }
        if (this.mOrientationHelper.getDecoratedStart(getChildAt(i9)) < this.mOrientationHelper.getStartAfterPadding()) {
            i11 = 16644;
            i12 = 16388;
        } else {
            i11 = 4161;
            i12 = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.findOneViewWithinBoundFlags(i9, i10, i11, i12) : this.mVerticalBoundCheck.findOneViewWithinBoundFlags(i9, i10, i11, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View findOneVisibleChild(int i9, int i10, boolean z8, boolean z9) {
        ensureLayoutState();
        int i11 = z8 ? 24579 : 320;
        int i12 = z9 ? 320 : 0;
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.findOneViewWithinBoundFlags(i9, i10, i11, i12) : this.mVerticalBoundCheck.findOneViewWithinBoundFlags(i9, i10, i11, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:33:0x0073  */
    /* JADX WARN: Code duplicated, block: B:35:0x0077  */
    public View findReferenceChild(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, boolean z8, boolean z9) {
        int i9;
        int childCount;
        int i10;
        ensureLayoutState();
        int childCount2 = getChildCount();
        if (z9) {
            childCount = getChildCount() - 1;
            i9 = -1;
            i10 = -1;
        } else {
            i9 = childCount2;
            childCount = 0;
            i10 = 1;
        }
        int itemCount = recyclerView$State.getItemCount();
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (childCount != i9) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            int decoratedStart = this.mOrientationHelper.getDecoratedStart(childAt);
            int decoratedEnd = this.mOrientationHelper.getDecoratedEnd(childAt);
            if (position >= 0 && position < itemCount) {
                if (!((RecyclerView$LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    boolean z10 = decoratedEnd <= startAfterPadding && decoratedStart < startAfterPadding;
                    boolean z11 = decoratedStart >= endAfterPadding && decoratedEnd > endAfterPadding;
                    if (!z10 && !z11) {
                        return childAt;
                    }
                    if (z8) {
                        if (z11) {
                            view2 = childAt;
                        } else if (view == null) {
                            view = childAt;
                        }
                    } else if (z10) {
                        view2 = childAt;
                    } else if (view == null) {
                        view = childAt;
                    }
                } else if (view3 == null) {
                    view3 = childAt;
                }
            }
            childCount += i10;
        }
        if (view != null) {
            return view;
        }
        return view2 != null ? view2 : view3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public View findViewByPosition(int i9) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i9 - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i9) {
                return childAt;
            }
        }
        return super.findViewByPosition(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public RecyclerView$LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView$LayoutParams(-2, -2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public int getExtraLayoutSpace(RecyclerView$State recyclerView$State) {
        if (recyclerView$State.hasTargetScrollPosition()) {
            return this.mOrientationHelper.getTotalSpace();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getOrientation() {
        return this.mOrientation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public boolean isLayoutReversed() {
        return this.mReverseLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:42:0x00b1  */
    public void layoutChunk(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, LinearLayoutManager$LayoutState linearLayoutManager$LayoutState, LinearLayoutManager$LayoutChunkResult linearLayoutManager$LayoutChunkResult) {
        int decoratedMeasurementInOther;
        int i9;
        int paddingLeft;
        int i10;
        int decoratedMeasurementInOther2;
        View next = linearLayoutManager$LayoutState.next(recyclerView$Recycler);
        if (next == null) {
            linearLayoutManager$LayoutChunkResult.mFinished = true;
            return;
        }
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) next.getLayoutParams();
        List<RecyclerView$ViewHolder> list = linearLayoutManager$LayoutState.mScrapList;
        boolean z8 = this.mShouldReverseLayout;
        if (list == null) {
            if (z8 == (linearLayoutManager$LayoutState.mLayoutDirection == -1)) {
                addView(next);
            } else {
                addView(next, 0);
            }
        } else {
            if (z8 == (linearLayoutManager$LayoutState.mLayoutDirection == -1)) {
                addDisappearingView(next);
            } else {
                addDisappearingView(next, 0);
            }
        }
        measureChildWithMargins(next, 0, 0);
        linearLayoutManager$LayoutChunkResult.mConsumed = this.mOrientationHelper.getDecoratedMeasurement(next);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                decoratedMeasurementInOther2 = getWidth() - getPaddingRight();
                paddingLeft = decoratedMeasurementInOther2 - this.mOrientationHelper.getDecoratedMeasurementInOther(next);
            } else {
                paddingLeft = getPaddingLeft();
                decoratedMeasurementInOther2 = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + paddingLeft;
            }
            int i11 = linearLayoutManager$LayoutState.mLayoutDirection;
            int i12 = linearLayoutManager$LayoutState.mOffset;
            if (i11 == -1) {
                i10 = i12 - linearLayoutManager$LayoutChunkResult.mConsumed;
                decoratedMeasurementInOther = i12;
                i9 = decoratedMeasurementInOther2;
            } else {
                i9 = decoratedMeasurementInOther2;
                decoratedMeasurementInOther = linearLayoutManager$LayoutChunkResult.mConsumed + i12;
                i10 = i12;
            }
            layoutDecoratedWithMargins(next, paddingLeft, i10, i9, decoratedMeasurementInOther);
            if (recyclerView$LayoutParams.isItemRemoved() || recyclerView$LayoutParams.isItemChanged()) {
                linearLayoutManager$LayoutChunkResult.mIgnoreConsumed = true;
            }
            linearLayoutManager$LayoutChunkResult.mFocusable = next.hasFocusable();
        }
        int paddingTop = getPaddingTop();
        decoratedMeasurementInOther = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + paddingTop;
        int i13 = linearLayoutManager$LayoutState.mLayoutDirection;
        int i14 = linearLayoutManager$LayoutState.mOffset;
        if (i13 == -1) {
            i9 = i14;
            paddingLeft = i14 - linearLayoutManager$LayoutChunkResult.mConsumed;
        } else {
            i9 = linearLayoutManager$LayoutChunkResult.mConsumed + i14;
            paddingLeft = i14;
        }
        i10 = paddingTop;
        layoutDecoratedWithMargins(next, paddingLeft, i10, i9, decoratedMeasurementInOther);
        if (recyclerView$LayoutParams.isItemRemoved()) {
            linearLayoutManager$LayoutChunkResult.mIgnoreConsumed = true;
        } else {
            linearLayoutManager$LayoutChunkResult.mIgnoreConsumed = true;
        }
        linearLayoutManager$LayoutChunkResult.mFocusable = next.hasFocusable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView$Recycler recyclerView$Recycler) {
        super.onDetachedFromWindow(recyclerView, recyclerView$Recycler);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(recyclerView$Recycler);
            recyclerView$Recycler.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public View onFocusSearchFailed(View view, int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        int iConvertFocusDirectionToLayoutDirection;
        resolveShouldLayoutReverse();
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i9)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        updateLayoutState(iConvertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.getTotalSpace() * MAX_SCROLL_FACTOR), false, recyclerView$State);
        LinearLayoutManager$LayoutState linearLayoutManager$LayoutState = this.mLayoutState;
        linearLayoutManager$LayoutState.mScrollingOffset = Integer.MIN_VALUE;
        linearLayoutManager$LayoutState.mRecycle = false;
        fill(recyclerView$Recycler, linearLayoutManager$LayoutState, recyclerView$State, true);
        View viewFindPartiallyOrCompletelyInvisibleChildClosestToStart = iConvertFocusDirectionToLayoutDirection == -1 ? findPartiallyOrCompletelyInvisibleChildClosestToStart() : findPartiallyOrCompletelyInvisibleChildClosestToEnd();
        View childClosestToStart = iConvertFocusDirectionToLayoutDirection == -1 ? getChildClosestToStart() : getChildClosestToEnd();
        if (!childClosestToStart.hasFocusable()) {
            return viewFindPartiallyOrCompletelyInvisibleChildClosestToStart;
        }
        if (viewFindPartiallyOrCompletelyInvisibleChildClosestToStart == null) {
            return null;
        }
        return childClosestToStart;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(recyclerView$Recycler, recyclerView$State, accessibilityNodeInfoCompat);
        RecyclerView$Adapter recyclerView$Adapter = this.mRecyclerView.mAdapter;
        if (recyclerView$Adapter == null || recyclerView$Adapter.getItemCount() <= 0) {
            return;
        }
        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_SCROLL_TO_POSITION);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onLayoutChildren(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        int i9;
        int i10;
        int i11;
        int i12;
        int iFixLayoutEndGap;
        int i13;
        View viewFindViewByPosition;
        int decoratedStart;
        int endAfterPadding;
        int i14 = -1;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && recyclerView$State.getItemCount() == 0) {
            removeAndRecycleAllViews(recyclerView$Recycler);
            return;
        }
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = this.mPendingSavedState;
        if (linearLayoutManager$SavedState != null && linearLayoutManager$SavedState.hasValidAnchor()) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
        }
        ensureLayoutState();
        this.mLayoutState.mRecycle = false;
        resolveShouldLayoutReverse();
        View focusedChild = getFocusedChild();
        LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo = this.mAnchorInfo;
        if (!linearLayoutManager$AnchorInfo.mValid || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            linearLayoutManager$AnchorInfo.reset();
            LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo2 = this.mAnchorInfo;
            linearLayoutManager$AnchorInfo2.mLayoutFromEnd = this.mShouldReverseLayout ^ this.mStackFromEnd;
            updateAnchorInfoForLayout(recyclerView$Recycler, recyclerView$State, linearLayoutManager$AnchorInfo2);
            this.mAnchorInfo.mValid = true;
        } else if (focusedChild != null && (this.mOrientationHelper.getDecoratedStart(focusedChild) >= this.mOrientationHelper.getEndAfterPadding() || this.mOrientationHelper.getDecoratedEnd(focusedChild) <= this.mOrientationHelper.getStartAfterPadding())) {
            this.mAnchorInfo.assignFromViewAndKeepVisibleRect(focusedChild, getPosition(focusedChild));
        }
        LinearLayoutManager$LayoutState linearLayoutManager$LayoutState = this.mLayoutState;
        linearLayoutManager$LayoutState.mLayoutDirection = linearLayoutManager$LayoutState.mLastScrollDelta >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(recyclerView$State, iArr);
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding() + Math.max(0, this.mReusableIntPair[0]);
        int endPadding = this.mOrientationHelper.getEndPadding() + Math.max(0, this.mReusableIntPair[1]);
        if (recyclerView$State.isPreLayout() && (i13 = this.mPendingScrollPosition) != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (viewFindViewByPosition = findViewByPosition(i13)) != null) {
            boolean z8 = this.mShouldReverseLayout;
            OrientationHelper orientationHelper = this.mOrientationHelper;
            if (z8) {
                endAfterPadding = orientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(viewFindViewByPosition);
                decoratedStart = this.mPendingScrollPositionOffset;
            } else {
                decoratedStart = orientationHelper.getDecoratedStart(viewFindViewByPosition) - this.mOrientationHelper.getStartAfterPadding();
                endAfterPadding = this.mPendingScrollPositionOffset;
            }
            int i15 = endAfterPadding - decoratedStart;
            if (i15 > 0) {
                startAfterPadding += i15;
            } else {
                endPadding -= i15;
            }
        }
        LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo3 = this.mAnchorInfo;
        boolean z9 = linearLayoutManager$AnchorInfo3.mLayoutFromEnd;
        boolean z10 = this.mShouldReverseLayout;
        if (!z9 ? !z10 : z10) {
            i14 = 1;
        }
        onAnchorReady(recyclerView$Recycler, recyclerView$State, linearLayoutManager$AnchorInfo3, i14);
        detachAndScrapAttachedViews(recyclerView$Recycler);
        this.mLayoutState.mInfinite = resolveIsInfinite();
        this.mLayoutState.mIsPreLayout = recyclerView$State.isPreLayout();
        this.mLayoutState.mNoRecycleSpace = 0;
        LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo4 = this.mAnchorInfo;
        if (linearLayoutManager$AnchorInfo4.mLayoutFromEnd) {
            updateLayoutStateToFillStart(linearLayoutManager$AnchorInfo4);
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState2 = this.mLayoutState;
            linearLayoutManager$LayoutState2.mExtraFillSpace = startAfterPadding;
            fill(recyclerView$Recycler, linearLayoutManager$LayoutState2, recyclerView$State, false);
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState3 = this.mLayoutState;
            i10 = linearLayoutManager$LayoutState3.mOffset;
            int i16 = linearLayoutManager$LayoutState3.mCurrentPosition;
            int i17 = linearLayoutManager$LayoutState3.mAvailable;
            if (i17 > 0) {
                endPadding += i17;
            }
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState4 = this.mLayoutState;
            linearLayoutManager$LayoutState4.mExtraFillSpace = endPadding;
            linearLayoutManager$LayoutState4.mCurrentPosition += linearLayoutManager$LayoutState4.mItemDirection;
            fill(recyclerView$Recycler, linearLayoutManager$LayoutState4, recyclerView$State, false);
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState5 = this.mLayoutState;
            i9 = linearLayoutManager$LayoutState5.mOffset;
            int i18 = linearLayoutManager$LayoutState5.mAvailable;
            if (i18 > 0) {
                updateLayoutStateToFillStart(i16, i10);
                LinearLayoutManager$LayoutState linearLayoutManager$LayoutState6 = this.mLayoutState;
                linearLayoutManager$LayoutState6.mExtraFillSpace = i18;
                fill(recyclerView$Recycler, linearLayoutManager$LayoutState6, recyclerView$State, false);
                i10 = this.mLayoutState.mOffset;
            }
        } else {
            updateLayoutStateToFillEnd(linearLayoutManager$AnchorInfo4);
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState7 = this.mLayoutState;
            linearLayoutManager$LayoutState7.mExtraFillSpace = endPadding;
            fill(recyclerView$Recycler, linearLayoutManager$LayoutState7, recyclerView$State, false);
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState8 = this.mLayoutState;
            i9 = linearLayoutManager$LayoutState8.mOffset;
            int i19 = linearLayoutManager$LayoutState8.mCurrentPosition;
            int i20 = linearLayoutManager$LayoutState8.mAvailable;
            if (i20 > 0) {
                startAfterPadding += i20;
            }
            updateLayoutStateToFillStart(this.mAnchorInfo);
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState9 = this.mLayoutState;
            linearLayoutManager$LayoutState9.mExtraFillSpace = startAfterPadding;
            linearLayoutManager$LayoutState9.mCurrentPosition += linearLayoutManager$LayoutState9.mItemDirection;
            fill(recyclerView$Recycler, linearLayoutManager$LayoutState9, recyclerView$State, false);
            LinearLayoutManager$LayoutState linearLayoutManager$LayoutState10 = this.mLayoutState;
            int i21 = linearLayoutManager$LayoutState10.mOffset;
            int i22 = linearLayoutManager$LayoutState10.mAvailable;
            if (i22 > 0) {
                updateLayoutStateToFillEnd(i19, i9);
                LinearLayoutManager$LayoutState linearLayoutManager$LayoutState11 = this.mLayoutState;
                linearLayoutManager$LayoutState11.mExtraFillSpace = i22;
                fill(recyclerView$Recycler, linearLayoutManager$LayoutState11, recyclerView$State, false);
                i9 = this.mLayoutState.mOffset;
            }
            i10 = i21;
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int iFixLayoutEndGap2 = fixLayoutEndGap(i9, recyclerView$Recycler, recyclerView$State, true);
                i11 = i10 + iFixLayoutEndGap2;
                i12 = i9 + iFixLayoutEndGap2;
                iFixLayoutEndGap = fixLayoutStartGap(i11, recyclerView$Recycler, recyclerView$State, false);
            } else {
                int iFixLayoutStartGap = fixLayoutStartGap(i10, recyclerView$Recycler, recyclerView$State, true);
                i11 = i10 + iFixLayoutStartGap;
                i12 = i9 + iFixLayoutStartGap;
                iFixLayoutEndGap = fixLayoutEndGap(i12, recyclerView$Recycler, recyclerView$State, false);
            }
            i10 = i11 + iFixLayoutEndGap;
            i9 = i12 + iFixLayoutEndGap;
        }
        layoutForPredictiveAnimations(recyclerView$Recycler, recyclerView$State, i10, i9);
        if (recyclerView$State.isPreLayout()) {
            this.mAnchorInfo.reset();
        } else {
            this.mOrientationHelper.onLayoutComplete();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onLayoutCompleted(RecyclerView$State recyclerView$State) {
        super.onLayoutCompleted(recyclerView$State);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.reset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof LinearLayoutManager$SavedState) {
            LinearLayoutManager$SavedState linearLayoutManager$SavedState = (LinearLayoutManager$SavedState) parcelable;
            this.mPendingSavedState = linearLayoutManager$SavedState;
            if (this.mPendingScrollPosition != -1) {
                linearLayoutManager$SavedState.invalidateAnchor();
            }
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new LinearLayoutManager$SavedState(this.mPendingSavedState);
        }
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = new LinearLayoutManager$SavedState();
        if (getChildCount() <= 0) {
            linearLayoutManager$SavedState.invalidateAnchor();
            return linearLayoutManager$SavedState;
        }
        ensureLayoutState();
        boolean z8 = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
        linearLayoutManager$SavedState.mAnchorLayoutFromEnd = z8;
        if (z8) {
            View childClosestToEnd = getChildClosestToEnd();
            linearLayoutManager$SavedState.mAnchorOffset = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
            linearLayoutManager$SavedState.mAnchorPosition = getPosition(childClosestToEnd);
            return linearLayoutManager$SavedState;
        }
        View childClosestToStart = getChildClosestToStart();
        linearLayoutManager$SavedState.mAnchorPosition = getPosition(childClosestToStart);
        linearLayoutManager$SavedState.mAnchorOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart) - this.mOrientationHelper.getStartAfterPadding();
        return linearLayoutManager$SavedState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public boolean performAccessibilityAction(int i9, @Nullable Bundle bundle) {
        int iMin;
        if (super.performAccessibilityAction(i9, bundle)) {
            return true;
        }
        if (i9 == 16908343 && bundle != null) {
            if (this.mOrientation == 1) {
                int i10 = bundle.getInt(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_ROW_INT, -1);
                if (i10 < 0) {
                    return false;
                }
                RecyclerView recyclerView = this.mRecyclerView;
                iMin = Math.min(i10, getRowCountForAccessibility(recyclerView.mRecycler, recyclerView.mState) - 1);
            } else {
                int i11 = bundle.getInt(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_COLUMN_INT, -1);
                if (i11 < 0) {
                    return false;
                }
                RecyclerView recyclerView2 = this.mRecyclerView;
                iMin = Math.min(i11, getColumnCountForAccessibility(recyclerView2.mRecycler, recyclerView2.mState) - 1);
            }
            if (iMin >= 0) {
                scrollToPositionWithOffset(iMin, 0);
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ItemTouchHelper$ViewDropHandler
    public void prepareForDrop(@NonNull View view, @NonNull View view2, int i9, int i10) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        resolveShouldLayoutReverse();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        byte b9 = position < position2 ? (byte) 1 : (byte) -1;
        if (this.mShouldReverseLayout) {
            OrientationHelper orientationHelper = this.mOrientationHelper;
            if (b9 == 1) {
                scrollToPositionWithOffset(position2, orientationHelper.getEndAfterPadding() - (this.mOrientationHelper.getDecoratedMeasurement(view) + this.mOrientationHelper.getDecoratedStart(view2)));
                return;
            } else {
                scrollToPositionWithOffset(position2, orientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(view2));
                return;
            }
        }
        OrientationHelper orientationHelper2 = this.mOrientationHelper;
        if (b9 == -1) {
            scrollToPositionWithOffset(position2, orientationHelper2.getDecoratedStart(view2));
        } else {
            scrollToPositionWithOffset(position2, orientationHelper2.getDecoratedEnd(view2) - this.mOrientationHelper.getDecoratedMeasurement(view));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean resolveIsInfinite() {
        return this.mOrientationHelper.getMode() == 0 && this.mOrientationHelper.getEnd() == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int scrollBy(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0 || i9 == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.mRecycle = true;
        int i10 = i9 > 0 ? 1 : -1;
        int iAbs = Math.abs(i9);
        updateLayoutState(i10, iAbs, true, recyclerView$State);
        LinearLayoutManager$LayoutState linearLayoutManager$LayoutState = this.mLayoutState;
        int iFill = fill(recyclerView$Recycler, linearLayoutManager$LayoutState, recyclerView$State, false) + linearLayoutManager$LayoutState.mScrollingOffset;
        if (iFill < 0) {
            return 0;
        }
        if (iAbs > iFill) {
            i9 = i10 * iFill;
        }
        this.mOrientationHelper.offsetChildren(-i9);
        this.mLayoutState.mLastScrollDelta = i9;
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int scrollHorizontallyBy(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i9, recyclerView$Recycler, recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void scrollToPosition(int i9) {
        this.mPendingScrollPosition = i9;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = this.mPendingSavedState;
        if (linearLayoutManager$SavedState != null) {
            linearLayoutManager$SavedState.invalidateAnchor();
        }
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void scrollToPositionWithOffset(int i9, int i10) {
        this.mPendingScrollPosition = i9;
        this.mPendingScrollPositionOffset = i10;
        LinearLayoutManager$SavedState linearLayoutManager$SavedState = this.mPendingSavedState;
        if (linearLayoutManager$SavedState != null) {
            linearLayoutManager$SavedState.invalidateAnchor();
        }
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int scrollVerticallyBy(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i9, recyclerView$Recycler, recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInitialPrefetchItemCount(int i9) {
        this.mInitialPrefetchItemCount = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOrientation(int i9) {
        if (i9 != 0 && i9 != 1) {
            i.k(a.e(i9, "invalid orientation:"));
            return;
        }
        assertNotInLayoutOrScroll(null);
        if (i9 != this.mOrientation || this.mOrientationHelper == null) {
            OrientationHelper orientationHelperCreateOrientationHelper = OrientationHelper.createOrientationHelper(this, i9);
            this.mOrientationHelper = orientationHelperCreateOrientationHelper;
            this.mAnchorInfo.mOrientationHelper = orientationHelperCreateOrientationHelper;
            this.mOrientation = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRecycleChildrenOnDetach(boolean z8) {
        this.mRecycleChildrenOnDetach = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setReverseLayout(boolean z8) {
        assertNotInLayoutOrScroll(null);
        if (z8 == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z8;
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSmoothScrollbarEnabled(boolean z8) {
        this.mSmoothScrollbarEnabled = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStackFromEnd(boolean z8) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z8) {
            return;
        }
        this.mStackFromEnd = z8;
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView$State recyclerView$State, int i9) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i9);
        startSmoothScroll(linearSmoothScroller);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void validateChildOrder() {
        Log.d(TAG, "validating child count " + getChildCount());
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int decoratedStart = this.mOrientationHelper.getDecoratedStart(getChildAt(0));
        if (this.mShouldReverseLayout) {
            for (int i9 = 1; i9 < getChildCount(); i9++) {
                View childAt = getChildAt(i9);
                int position2 = getPosition(childAt);
                int decoratedStart2 = this.mOrientationHelper.getDecoratedStart(childAt);
                if (position2 < position) {
                    logChildren();
                    StringBuilder sb = new StringBuilder("detected invalid position. loc invalid? ");
                    sb.append(decoratedStart2 < decoratedStart);
                    throw new RuntimeException(sb.toString());
                }
                if (decoratedStart2 > decoratedStart) {
                    logChildren();
                    b.h("detected invalid location");
                    return;
                }
            }
            return;
        }
        for (int i10 = 1; i10 < getChildCount(); i10++) {
            View childAt2 = getChildAt(i10);
            int position3 = getPosition(childAt2);
            int decoratedStart3 = this.mOrientationHelper.getDecoratedStart(childAt2);
            if (position3 < position) {
                logChildren();
                StringBuilder sb2 = new StringBuilder("detected invalid position. loc invalid? ");
                sb2.append(decoratedStart3 < decoratedStart);
                throw new RuntimeException(sb2.toString());
            }
            if (decoratedStart3 < decoratedStart) {
                logChildren();
                b.h("detected invalid location");
                return;
            }
        }
    }

    private void updateLayoutStateToFillEnd(LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo) {
        updateLayoutStateToFillEnd(linearLayoutManager$AnchorInfo.mPosition, linearLayoutManager$AnchorInfo.mCoordinate);
    }

    private void updateLayoutStateToFillStart(LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo) {
        updateLayoutStateToFillStart(linearLayoutManager$AnchorInfo.mPosition, linearLayoutManager$AnchorInfo.mCoordinate);
    }

    public LinearLayoutManager(Context context, int i9, boolean z8) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new LinearLayoutManager$AnchorInfo();
        this.mLayoutChunkResult = new LinearLayoutManager$LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i9);
        setReverseLayout(z8);
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public void onAnchorReady(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo, int i9) {
    }
}
