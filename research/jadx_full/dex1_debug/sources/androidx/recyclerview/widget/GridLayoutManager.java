package androidx.recyclerview.widget;

import ai.onnxruntime.a;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.widget.GridView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$AccessibilityActionCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
import androidx.navigation.b;
import j1.i;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    private static final boolean DEBUG = false;
    public static final int DEFAULT_SPAN_COUNT = -1;
    private static final int INVALID_POSITION = -1;
    private static final String TAG = "GridLayoutManager";
    private static final Set<Integer> sSupportedDirectionsForActionScrollInDirection = Collections.unmodifiableSet(new HashSet(Arrays.asList(17, 66, 33, 130)));
    int[] mCachedBorders;
    int mColumnWithAccessibilityFocus;
    final Rect mDecorInsets;
    boolean mPendingSpanCountChange;
    private int mPositionTargetedByScrollInDirection;
    final SparseIntArray mPreLayoutSpanIndexCache;
    final SparseIntArray mPreLayoutSpanSizeCache;
    int mRowWithAccessibilityFocus;
    View[] mSet;
    int mSpanCount;
    GridLayoutManager$SpanSizeLookup mSpanSizeLookup;
    private boolean mUsingSpansToEstimateScrollBarDimensions;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public GridLayoutManager(Context context, AttributeSet attributeSet, int i9, int i10) {
        super(context, attributeSet, i9, i10);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new GridLayoutManager$DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        this.mPositionTargetedByScrollInDirection = -1;
        this.mRowWithAccessibilityFocus = -1;
        this.mColumnWithAccessibilityFocus = -1;
        setSpanCount(RecyclerView$LayoutManager.getProperties(context, attributeSet, i9, i10).spanCount);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void assignSpans(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, int i9, boolean z8) {
        int i10;
        int i11;
        int i12;
        int i13 = 0;
        if (z8) {
            i12 = 1;
            i11 = i9;
            i10 = 0;
        } else {
            i10 = i9 - 1;
            i11 = -1;
            i12 = -1;
        }
        while (i10 != i11) {
            View view = this.mSet[i10];
            GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams) view.getLayoutParams();
            int spanSize = getSpanSize(recyclerView$Recycler, recyclerView$State, getPosition(view));
            gridLayoutManager$LayoutParams.mSpanSize = spanSize;
            gridLayoutManager$LayoutParams.mSpanIndex = i13;
            i13 += spanSize;
            i10 += i12;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void cachePreLayoutSpanMapping() {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams) getChildAt(i9).getLayoutParams();
            int viewLayoutPosition = gridLayoutManager$LayoutParams.getViewLayoutPosition();
            this.mPreLayoutSpanSizeCache.put(viewLayoutPosition, gridLayoutManager$LayoutParams.getSpanSize());
            this.mPreLayoutSpanIndexCache.put(viewLayoutPosition, gridLayoutManager$LayoutParams.getSpanIndex());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int[] calculateItemBorders(int[] iArr, int i9, int i10) {
        int i11;
        if (iArr == null || iArr.length != i9 + 1 || iArr[iArr.length - 1] != i10) {
            iArr = new int[i9 + 1];
        }
        int i12 = 0;
        iArr[0] = 0;
        int i13 = i10 / i9;
        int i14 = i10 % i9;
        int i15 = 0;
        for (int i16 = 1; i16 <= i9; i16++) {
            i12 += i14;
            if (i12 <= 0 || i9 - i12 >= i14) {
                i11 = i13;
            } else {
                i11 = i13 + 1;
                i12 -= i9;
            }
            i15 += i11;
            iArr[i16] = i15;
        }
        return iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void clearPreLayoutSpanMappingCache() {
        this.mPreLayoutSpanSizeCache.clear();
        this.mPreLayoutSpanIndexCache.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int computeScrollOffsetWithSpanInfo(RecyclerView$State recyclerView$State) {
        if (getChildCount() != 0 && recyclerView$State.getItemCount() != 0) {
            ensureLayoutState();
            boolean zIsSmoothScrollbarEnabled = isSmoothScrollbarEnabled();
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!zIsSmoothScrollbarEnabled, true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!zIsSmoothScrollbarEnabled, true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                int cachedSpanGroupIndex = this.mSpanSizeLookup.getCachedSpanGroupIndex(getPosition(viewFindFirstVisibleChildClosestToStart), this.mSpanCount);
                int cachedSpanGroupIndex2 = this.mSpanSizeLookup.getCachedSpanGroupIndex(getPosition(viewFindFirstVisibleChildClosestToEnd), this.mSpanCount);
                int iMax = this.mShouldReverseLayout ? Math.max(0, ((this.mSpanSizeLookup.getCachedSpanGroupIndex(recyclerView$State.getItemCount() - 1, this.mSpanCount) + 1) - Math.max(cachedSpanGroupIndex, cachedSpanGroupIndex2)) - 1) : Math.max(0, Math.min(cachedSpanGroupIndex, cachedSpanGroupIndex2));
                if (zIsSmoothScrollbarEnabled) {
                    return Math.round((iMax * (Math.abs(this.mOrientationHelper.getDecoratedEnd(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.getDecoratedStart(viewFindFirstVisibleChildClosestToStart)) / ((this.mSpanSizeLookup.getCachedSpanGroupIndex(getPosition(viewFindFirstVisibleChildClosestToEnd), this.mSpanCount) - this.mSpanSizeLookup.getCachedSpanGroupIndex(getPosition(viewFindFirstVisibleChildClosestToStart), this.mSpanCount)) + 1))) + (this.mOrientationHelper.getStartAfterPadding() - this.mOrientationHelper.getDecoratedStart(viewFindFirstVisibleChildClosestToStart)));
                }
                return iMax;
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int computeScrollRangeWithSpanInfo(RecyclerView$State recyclerView$State) {
        if (getChildCount() != 0 && recyclerView$State.getItemCount() != 0) {
            ensureLayoutState();
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!isSmoothScrollbarEnabled(), true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!isSmoothScrollbarEnabled(), true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                if (!isSmoothScrollbarEnabled()) {
                    return this.mSpanSizeLookup.getCachedSpanGroupIndex(recyclerView$State.getItemCount() - 1, this.mSpanCount) + 1;
                }
                return (int) (((this.mOrientationHelper.getDecoratedEnd(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.getDecoratedStart(viewFindFirstVisibleChildClosestToStart)) / ((this.mSpanSizeLookup.getCachedSpanGroupIndex(getPosition(viewFindFirstVisibleChildClosestToEnd), this.mSpanCount) - this.mSpanSizeLookup.getCachedSpanGroupIndex(getPosition(viewFindFirstVisibleChildClosestToStart), this.mSpanCount)) + 1)) * (this.mSpanSizeLookup.getCachedSpanGroupIndex(recyclerView$State.getItemCount() - 1, this.mSpanCount) + 1));
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void ensureAnchorIsInCorrectSpan(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo, int i9) {
        boolean z8 = i9 == 1;
        int spanIndex = getSpanIndex(recyclerView$Recycler, recyclerView$State, linearLayoutManager$AnchorInfo.mPosition);
        if (z8) {
            while (spanIndex > 0) {
                int i10 = linearLayoutManager$AnchorInfo.mPosition;
                if (i10 <= 0) {
                    return;
                }
                int i11 = i10 - 1;
                linearLayoutManager$AnchorInfo.mPosition = i11;
                spanIndex = getSpanIndex(recyclerView$Recycler, recyclerView$State, i11);
            }
            return;
        }
        int itemCount = recyclerView$State.getItemCount() - 1;
        int i12 = linearLayoutManager$AnchorInfo.mPosition;
        while (i12 < itemCount) {
            int i13 = i12 + 1;
            int spanIndex2 = getSpanIndex(recyclerView$Recycler, recyclerView$State, i13);
            if (spanIndex2 <= spanIndex) {
                break;
            }
            i12 = i13;
            spanIndex = spanIndex2;
        }
        linearLayoutManager$AnchorInfo.mPosition = i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void ensureViewSet() {
        View[] viewArr = this.mSet;
        if (viewArr == null || viewArr.length != this.mSpanCount) {
            this.mSet = new View[this.mSpanCount];
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private View findChildWithAccessibilityFocus() {
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            Objects.requireNonNull(childAt);
            if (GridLayoutManager$Api21Impl.isAccessibilityFocused(childAt)) {
                return getChildAt(i9);
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int findScrollTargetPositionAbove(int i9, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= 0; i12--) {
            int rowIndex = getRowIndex(i12);
            int columnIndex = getColumnIndex(i12);
            if (rowIndex < 0 || columnIndex < 0) {
                break;
            }
            if (this.mOrientation == 1) {
                if (rowIndex < i9 && getColumnIndices(i12).contains(Integer.valueOf(i10))) {
                    this.mRowWithAccessibilityFocus = rowIndex;
                    return i12;
                }
            } else if (rowIndex < i9 && columnIndex == i10) {
                this.mRowWithAccessibilityFocus = ((Integer) Collections.max(getRowIndices(i12))).intValue();
                return i12;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int findScrollTargetPositionBelow(int i9, int i10, int i11) {
        for (int i12 = i11 + 1; i12 < getItemCount(); i12++) {
            int rowIndex = getRowIndex(i12);
            int columnIndex = getColumnIndex(i12);
            if (rowIndex < 0 || columnIndex < 0) {
                break;
            }
            if (this.mOrientation == 1) {
                if (rowIndex > i9 && (columnIndex == i10 || getColumnIndices(i12).contains(Integer.valueOf(i10)))) {
                    this.mRowWithAccessibilityFocus = rowIndex;
                    return i12;
                }
            } else if (rowIndex > i9 && columnIndex == i10) {
                this.mRowWithAccessibilityFocus = getRowIndex(i12);
                return i12;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int findScrollTargetPositionOnTheLeft(int i9, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= 0; i12--) {
            int rowIndex = getRowIndex(i12);
            int columnIndex = getColumnIndex(i12);
            if (rowIndex < 0 || columnIndex < 0) {
                break;
            }
            if (this.mOrientation == 1) {
                if ((rowIndex == i9 && columnIndex < i10) || rowIndex < i9) {
                    this.mRowWithAccessibilityFocus = rowIndex;
                    this.mColumnWithAccessibilityFocus = columnIndex;
                    return i12;
                }
            } else if (getRowIndices(i12).contains(Integer.valueOf(i9)) && columnIndex < i10) {
                this.mColumnWithAccessibilityFocus = columnIndex;
                return i12;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int findScrollTargetPositionOnTheRight(int i9, int i10, int i11) {
        for (int i12 = i11 + 1; i12 < getItemCount(); i12++) {
            int rowIndex = getRowIndex(i12);
            int columnIndex = getColumnIndex(i12);
            if (rowIndex < 0 || columnIndex < 0) {
                break;
            }
            if (this.mOrientation == 1) {
                if ((rowIndex == i9 && columnIndex > i10) || rowIndex > i9) {
                    this.mRowWithAccessibilityFocus = rowIndex;
                    this.mColumnWithAccessibilityFocus = columnIndex;
                    return i12;
                }
            } else if (columnIndex > i10 && getRowIndices(i12).contains(Integer.valueOf(i9))) {
                this.mColumnWithAccessibilityFocus = columnIndex;
                return i12;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getColumnIndex(int i9) {
        int i10 = this.mOrientation;
        RecyclerView recyclerView = this.mRecyclerView;
        return i10 == 0 ? getSpanGroupIndex(recyclerView.mRecycler, recyclerView.mState, i9) : getSpanIndex(recyclerView.mRecycler, recyclerView.mState, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Set<Integer> getColumnIndices(int i9) {
        return getRowOrColumnIndices(getColumnIndex(i9), i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getRowIndex(int i9) {
        int i10 = this.mOrientation;
        RecyclerView recyclerView = this.mRecyclerView;
        return i10 == 1 ? getSpanGroupIndex(recyclerView.mRecycler, recyclerView.mState, i9) : getSpanIndex(recyclerView.mRecycler, recyclerView.mState, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Set<Integer> getRowIndices(int i9) {
        return getRowOrColumnIndices(getRowIndex(i9), i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Set<Integer> getRowOrColumnIndices(int i9, int i10) {
        HashSet hashSet = new HashSet();
        RecyclerView recyclerView = this.mRecyclerView;
        int spanSize = getSpanSize(recyclerView.mRecycler, recyclerView.mState, i10);
        for (int i11 = i9; i11 < i9 + spanSize; i11++) {
            hashSet.add(Integer.valueOf(i11));
        }
        return hashSet;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getSpanGroupIndex(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, int i9) {
        if (!recyclerView$State.isPreLayout()) {
            return this.mSpanSizeLookup.getCachedSpanGroupIndex(i9, this.mSpanCount);
        }
        int iConvertPreLayoutPositionToPostLayout = recyclerView$Recycler.convertPreLayoutPositionToPostLayout(i9);
        if (iConvertPreLayoutPositionToPostLayout != -1) {
            return this.mSpanSizeLookup.getCachedSpanGroupIndex(iConvertPreLayoutPositionToPostLayout, this.mSpanCount);
        }
        Log.w(TAG, "Cannot find span size for pre layout position. " + i9);
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getSpanIndex(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, int i9) {
        if (!recyclerView$State.isPreLayout()) {
            return this.mSpanSizeLookup.getCachedSpanIndex(i9, this.mSpanCount);
        }
        int i10 = this.mPreLayoutSpanIndexCache.get(i9, -1);
        if (i10 != -1) {
            return i10;
        }
        int iConvertPreLayoutPositionToPostLayout = recyclerView$Recycler.convertPreLayoutPositionToPostLayout(i9);
        if (iConvertPreLayoutPositionToPostLayout != -1) {
            return this.mSpanSizeLookup.getCachedSpanIndex(iConvertPreLayoutPositionToPostLayout, this.mSpanCount);
        }
        Log.w(TAG, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i9);
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getSpanSize(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, int i9) {
        if (!recyclerView$State.isPreLayout()) {
            return this.mSpanSizeLookup.getSpanSize(i9);
        }
        int i10 = this.mPreLayoutSpanSizeCache.get(i9, -1);
        if (i10 != -1) {
            return i10;
        }
        int iConvertPreLayoutPositionToPostLayout = recyclerView$Recycler.convertPreLayoutPositionToPostLayout(i9);
        if (iConvertPreLayoutPositionToPostLayout != -1) {
            return this.mSpanSizeLookup.getSpanSize(iConvertPreLayoutPositionToPostLayout);
        }
        Log.w(TAG, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i9);
        return 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void guessMeasurement(float f8, int i9) {
        calculateItemBorders(Math.max(Math.round(f8 * this.mSpanCount), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean hasAccessibilityFocusChanged(int i9) {
        return (getRowIndices(i9).contains(Integer.valueOf(this.mRowWithAccessibilityFocus)) && getColumnIndices(i9).contains(Integer.valueOf(this.mColumnWithAccessibilityFocus))) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void measureChild(View view, int i9, boolean z8) {
        int childMeasureSpec;
        int childMeasureSpec2;
        GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams) view.getLayoutParams();
        Rect rect = gridLayoutManager$LayoutParams.mDecorInsets;
        int i10 = rect.top + rect.bottom + ((ViewGroup$MarginLayoutParams) gridLayoutManager$LayoutParams).topMargin + ((ViewGroup$MarginLayoutParams) gridLayoutManager$LayoutParams).bottomMargin;
        int i11 = rect.left + rect.right + ((ViewGroup$MarginLayoutParams) gridLayoutManager$LayoutParams).leftMargin + ((ViewGroup$MarginLayoutParams) gridLayoutManager$LayoutParams).rightMargin;
        int spaceForSpanRange = getSpaceForSpanRange(gridLayoutManager$LayoutParams.mSpanIndex, gridLayoutManager$LayoutParams.mSpanSize);
        if (this.mOrientation == 1) {
            childMeasureSpec2 = RecyclerView$LayoutManager.getChildMeasureSpec(spaceForSpanRange, i9, i11, ((ViewGroup$MarginLayoutParams) gridLayoutManager$LayoutParams).width, false);
            childMeasureSpec = RecyclerView$LayoutManager.getChildMeasureSpec(this.mOrientationHelper.getTotalSpace(), getHeightMode(), i10, ((ViewGroup$MarginLayoutParams) gridLayoutManager$LayoutParams).height, true);
        } else {
            int childMeasureSpec3 = RecyclerView$LayoutManager.getChildMeasureSpec(spaceForSpanRange, i9, i10, ((ViewGroup$MarginLayoutParams) gridLayoutManager$LayoutParams).height, false);
            int childMeasureSpec4 = RecyclerView$LayoutManager.getChildMeasureSpec(this.mOrientationHelper.getTotalSpace(), getWidthMode(), i11, ((ViewGroup$MarginLayoutParams) gridLayoutManager$LayoutParams).width, true);
            childMeasureSpec = childMeasureSpec3;
            childMeasureSpec2 = childMeasureSpec4;
        }
        measureChildWithDecorationsAndMargin(view, childMeasureSpec2, childMeasureSpec, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void measureChildWithDecorationsAndMargin(View view, int i9, int i10, boolean z8) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        if (z8 ? shouldReMeasureChild(view, i9, i10, recyclerView$LayoutParams) : shouldMeasureChild(view, i9, i10, recyclerView$LayoutParams)) {
            view.measure(i9, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateMeasurements() {
        int height;
        int paddingTop;
        if (getOrientation() == 1) {
            height = getWidth() - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        calculateItemBorders(height - paddingTop);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public boolean checkLayoutParams(RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return recyclerView$LayoutParams instanceof GridLayoutManager$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void collectPrefetchPositionsForLayoutState(RecyclerView$State recyclerView$State, LinearLayoutManager$LayoutState linearLayoutManager$LayoutState, RecyclerView$LayoutManager$LayoutPrefetchRegistry recyclerView$LayoutManager$LayoutPrefetchRegistry) {
        int spanSize = this.mSpanCount;
        for (int i9 = 0; i9 < this.mSpanCount && linearLayoutManager$LayoutState.hasMore(recyclerView$State) && spanSize > 0; i9++) {
            int i10 = linearLayoutManager$LayoutState.mCurrentPosition;
            recyclerView$LayoutManager$LayoutPrefetchRegistry.addPosition(i10, Math.max(0, linearLayoutManager$LayoutState.mScrollingOffset));
            spanSize -= this.mSpanSizeLookup.getSpanSize(i10);
            linearLayoutManager$LayoutState.mCurrentPosition += linearLayoutManager$LayoutState.mItemDirection;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView$State recyclerView$State) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? computeScrollOffsetWithSpanInfo(recyclerView$State) : super.computeHorizontalScrollOffset(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int computeHorizontalScrollRange(RecyclerView$State recyclerView$State) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? computeScrollRangeWithSpanInfo(recyclerView$State) : super.computeHorizontalScrollRange(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int computeVerticalScrollOffset(RecyclerView$State recyclerView$State) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? computeScrollOffsetWithSpanInfo(recyclerView$State) : super.computeVerticalScrollOffset(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int computeVerticalScrollRange(RecyclerView$State recyclerView$State) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? computeScrollRangeWithSpanInfo(recyclerView$State) : super.computeVerticalScrollRange(recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findPositionOfFirstItemOnARowBelowForHorizontalGrid(int i9) {
        if (i9 < 0 || this.mOrientation == 1) {
            return -1;
        }
        TreeMap treeMap = new TreeMap();
        for (int i10 = 0; i10 < getItemCount(); i10++) {
            for (Integer num : getRowIndices(i10)) {
                if (num.intValue() < 0) {
                    return -1;
                }
                if (!treeMap.containsKey(num)) {
                    treeMap.put(num, Integer.valueOf(i10));
                }
            }
        }
        for (Integer num2 : treeMap.keySet()) {
            int iIntValue = num2.intValue();
            if (iIntValue > i9) {
                int iIntValue2 = ((Integer) treeMap.get(num2)).intValue();
                this.mRowWithAccessibilityFocus = iIntValue;
                this.mColumnWithAccessibilityFocus = 0;
                return iIntValue2;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findPositionOfLastItemOnARowAboveForHorizontalGrid(int i9) {
        if (i9 < 0 || this.mOrientation == 1) {
            return -1;
        }
        TreeMap treeMap = new TreeMap(Collections.reverseOrder());
        for (int i10 = 0; i10 < getItemCount(); i10++) {
            for (Integer num : getRowIndices(i10)) {
                if (num.intValue() < 0) {
                    return -1;
                }
                treeMap.put(num, Integer.valueOf(i10));
            }
        }
        for (Integer num2 : treeMap.keySet()) {
            int iIntValue = num2.intValue();
            if (iIntValue < i9) {
                int iIntValue2 = ((Integer) treeMap.get(num2)).intValue();
                this.mRowWithAccessibilityFocus = iIntValue;
                this.mColumnWithAccessibilityFocus = getColumnIndex(iIntValue2);
                return iIntValue2;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public View findReferenceChild(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, boolean z8, boolean z9) {
        int i9;
        int childCount;
        int childCount2 = getChildCount();
        int i10 = 1;
        if (z9) {
            childCount = getChildCount() - 1;
            i9 = -1;
            i10 = -1;
        } else {
            i9 = childCount2;
            childCount = 0;
        }
        int itemCount = recyclerView$State.getItemCount();
        ensureLayoutState();
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        View view = null;
        View view2 = null;
        while (childCount != i9) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            if (position >= 0 && position < itemCount && getSpanIndex(recyclerView$Recycler, recyclerView$State, position) == 0) {
                if (((RecyclerView$LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.mOrientationHelper.getDecoratedStart(childAt) < endAfterPadding && this.mOrientationHelper.getDecoratedEnd(childAt) >= startAfterPadding) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            childCount += i10;
        }
        return view != null ? view : view2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView$LayoutManager
    public RecyclerView$LayoutParams generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new GridLayoutManager$LayoutParams(-2, -1) : new GridLayoutManager$LayoutParams(-1, -2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public RecyclerView$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams ? new GridLayoutManager$LayoutParams((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams) : new GridLayoutManager$LayoutParams(viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int getColumnCountForAccessibility(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (this.mOrientation == 1) {
            return Math.min(this.mSpanCount, getItemCount());
        }
        if (recyclerView$State.getItemCount() < 1) {
            return 0;
        }
        return getSpanGroupIndex(recyclerView$Recycler, recyclerView$State, recyclerView$State.getItemCount() - 1) + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int getRowCountForAccessibility(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (this.mOrientation == 0) {
            return Math.min(this.mSpanCount, getItemCount());
        }
        if (recyclerView$State.getItemCount() < 1) {
            return 0;
        }
        return getSpanGroupIndex(recyclerView$Recycler, recyclerView$State, recyclerView$State.getItemCount() - 1) + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSpaceForSpanRange(int i9, int i10) {
        if (this.mOrientation != 1 || !isLayoutRTL()) {
            int[] iArr = this.mCachedBorders;
            return iArr[i10 + i9] - iArr[i9];
        }
        int[] iArr2 = this.mCachedBorders;
        int i11 = this.mSpanCount;
        return iArr2[i11 - i9] - iArr2[(i11 - i9) - i10];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSpanCount() {
        return this.mSpanCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public GridLayoutManager$SpanSizeLookup getSpanSizeLookup() {
        return this.mSpanSizeLookup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isUsingSpansToEstimateScrollbarDimensions() {
        return this.mUsingSpansToEstimateScrollBarDimensions;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void layoutChunk(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, LinearLayoutManager$LayoutState linearLayoutManager$LayoutState, LinearLayoutManager$LayoutChunkResult linearLayoutManager$LayoutChunkResult) {
        int i9;
        int i10;
        int paddingTop;
        int decoratedMeasurementInOther;
        int childMeasureSpec;
        int childMeasureSpec2;
        View next;
        GridLayoutManager gridLayoutManager = this;
        int modeInOther = gridLayoutManager.mOrientationHelper.getModeInOther();
        int paddingLeft = 0;
        boolean z8 = modeInOther != 1073741824;
        int i11 = gridLayoutManager.getChildCount() > 0 ? gridLayoutManager.mCachedBorders[gridLayoutManager.mSpanCount] : 0;
        if (z8) {
            gridLayoutManager.updateMeasurements();
        }
        boolean z9 = linearLayoutManager$LayoutState.mItemDirection == 1;
        int spanIndex = gridLayoutManager.mSpanCount;
        if (!z9) {
            spanIndex = gridLayoutManager.getSpanIndex(recyclerView$Recycler, recyclerView$State, linearLayoutManager$LayoutState.mCurrentPosition) + gridLayoutManager.getSpanSize(recyclerView$Recycler, recyclerView$State, linearLayoutManager$LayoutState.mCurrentPosition);
        }
        int i12 = 0;
        while (i12 < gridLayoutManager.mSpanCount && linearLayoutManager$LayoutState.hasMore(recyclerView$State) && spanIndex > 0) {
            int i13 = linearLayoutManager$LayoutState.mCurrentPosition;
            int spanSize = gridLayoutManager.getSpanSize(recyclerView$Recycler, recyclerView$State, i13);
            if (spanSize > gridLayoutManager.mSpanCount) {
                i.k(a.o(a.v("Item at position ", i13, spanSize, " requires ", " spans but GridLayoutManager has only "), " spans.", gridLayoutManager.mSpanCount));
                return;
            }
            spanIndex -= spanSize;
            if (spanIndex < 0 || (next = linearLayoutManager$LayoutState.next(recyclerView$Recycler)) == null) {
                break;
            }
            gridLayoutManager.mSet[i12] = next;
            i12++;
        }
        if (i12 == 0) {
            linearLayoutManager$LayoutChunkResult.mFinished = true;
            return;
        }
        gridLayoutManager.assignSpans(recyclerView$Recycler, recyclerView$State, i12, z9);
        float f8 = 0.0f;
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15++) {
            View view = gridLayoutManager.mSet[i15];
            if (linearLayoutManager$LayoutState.mScrapList == null) {
                if (z9) {
                    gridLayoutManager.addView(view);
                } else {
                    gridLayoutManager.addView(view, 0);
                }
            } else if (z9) {
                gridLayoutManager.addDisappearingView(view);
            } else {
                gridLayoutManager.addDisappearingView(view, 0);
            }
            gridLayoutManager.calculateItemDecorationsForChild(view, gridLayoutManager.mDecorInsets);
            gridLayoutManager.measureChild(view, modeInOther, false);
            int decoratedMeasurement = gridLayoutManager.mOrientationHelper.getDecoratedMeasurement(view);
            if (decoratedMeasurement > i14) {
                i14 = decoratedMeasurement;
            }
            float decoratedMeasurementInOther2 = (gridLayoutManager.mOrientationHelper.getDecoratedMeasurementInOther(view) * 1.0f) / ((GridLayoutManager$LayoutParams) view.getLayoutParams()).mSpanSize;
            if (decoratedMeasurementInOther2 > f8) {
                f8 = decoratedMeasurementInOther2;
            }
        }
        if (z8) {
            gridLayoutManager.guessMeasurement(f8, i11);
            i14 = 0;
            for (int i16 = 0; i16 < i12; i16++) {
                View view2 = gridLayoutManager.mSet[i16];
                gridLayoutManager.measureChild(view2, BasicMeasure.EXACTLY, true);
                int decoratedMeasurement2 = gridLayoutManager.mOrientationHelper.getDecoratedMeasurement(view2);
                if (decoratedMeasurement2 > i14) {
                    i14 = decoratedMeasurement2;
                }
            }
        }
        for (int i17 = 0; i17 < i12; i17++) {
            View view3 = gridLayoutManager.mSet[i17];
            if (gridLayoutManager.mOrientationHelper.getDecoratedMeasurement(view3) != i14) {
                GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams) view3.getLayoutParams();
                Rect rect = gridLayoutManager$LayoutParams.mDecorInsets;
                int i18 = rect.top + rect.bottom + ((ViewGroup$MarginLayoutParams) gridLayoutManager$LayoutParams).topMargin + ((ViewGroup$MarginLayoutParams) gridLayoutManager$LayoutParams).bottomMargin;
                int i19 = rect.left + rect.right + ((ViewGroup$MarginLayoutParams) gridLayoutManager$LayoutParams).leftMargin + ((ViewGroup$MarginLayoutParams) gridLayoutManager$LayoutParams).rightMargin;
                int spaceForSpanRange = gridLayoutManager.getSpaceForSpanRange(gridLayoutManager$LayoutParams.mSpanIndex, gridLayoutManager$LayoutParams.mSpanSize);
                if (gridLayoutManager.mOrientation == 1) {
                    childMeasureSpec2 = RecyclerView$LayoutManager.getChildMeasureSpec(spaceForSpanRange, BasicMeasure.EXACTLY, i19, ((ViewGroup$MarginLayoutParams) gridLayoutManager$LayoutParams).width, false);
                    childMeasureSpec = View$MeasureSpec.makeMeasureSpec(i14 - i18, BasicMeasure.EXACTLY);
                } else {
                    int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(i14 - i19, BasicMeasure.EXACTLY);
                    childMeasureSpec = RecyclerView$LayoutManager.getChildMeasureSpec(spaceForSpanRange, BasicMeasure.EXACTLY, i18, ((ViewGroup$MarginLayoutParams) gridLayoutManager$LayoutParams).height, false);
                    childMeasureSpec2 = iMakeMeasureSpec;
                }
                gridLayoutManager.measureChildWithDecorationsAndMargin(view3, childMeasureSpec2, childMeasureSpec, true);
            }
        }
        linearLayoutManager$LayoutChunkResult.mConsumed = i14;
        int i20 = gridLayoutManager.mOrientation;
        int i21 = linearLayoutManager$LayoutState.mLayoutDirection;
        if (i20 == 1) {
            i10 = linearLayoutManager$LayoutState.mOffset;
            if (i21 == -1) {
                paddingTop = i10 - i14;
            } else {
                paddingTop = i10;
                i10 = i14 + i10;
            }
            i9 = paddingLeft;
        } else {
            int i22 = linearLayoutManager$LayoutState.mOffset;
            if (i21 == -1) {
                paddingLeft = i22 - i14;
                i9 = i22;
            } else {
                i9 = i14 + i22;
                paddingLeft = i22;
            }
            i10 = 0;
            paddingTop = 0;
        }
        int decoratedMeasurementInOther3 = i9;
        int i23 = 0;
        while (true) {
            View[] viewArr = gridLayoutManager.mSet;
            if (i23 >= i12) {
                Arrays.fill(viewArr, (Object) null);
                return;
            }
            int i24 = i10;
            View view4 = viewArr[i23];
            GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams2 = (GridLayoutManager$LayoutParams) view4.getLayoutParams();
            if (gridLayoutManager.mOrientation == 1) {
                if (gridLayoutManager.isLayoutRTL()) {
                    decoratedMeasurementInOther3 = gridLayoutManager.mCachedBorders[gridLayoutManager.mSpanCount - gridLayoutManager$LayoutParams2.mSpanIndex] + gridLayoutManager.getPaddingLeft();
                    paddingLeft = decoratedMeasurementInOther3 - gridLayoutManager.mOrientationHelper.getDecoratedMeasurementInOther(view4);
                } else {
                    paddingLeft = gridLayoutManager.getPaddingLeft() + gridLayoutManager.mCachedBorders[gridLayoutManager$LayoutParams2.mSpanIndex];
                    decoratedMeasurementInOther3 = gridLayoutManager.mOrientationHelper.getDecoratedMeasurementInOther(view4) + paddingLeft;
                }
                decoratedMeasurementInOther = i24;
            } else {
                paddingTop = gridLayoutManager.getPaddingTop() + gridLayoutManager.mCachedBorders[gridLayoutManager$LayoutParams2.mSpanIndex];
                decoratedMeasurementInOther = gridLayoutManager.mOrientationHelper.getDecoratedMeasurementInOther(view4) + paddingTop;
            }
            gridLayoutManager.layoutDecoratedWithMargins(view4, paddingLeft, paddingTop, decoratedMeasurementInOther3, decoratedMeasurementInOther);
            i10 = decoratedMeasurementInOther;
            if (gridLayoutManager$LayoutParams2.isItemRemoved() || gridLayoutManager$LayoutParams2.isItemChanged()) {
                linearLayoutManager$LayoutChunkResult.mIgnoreConsumed = true;
            }
            linearLayoutManager$LayoutChunkResult.mFocusable = view4.hasFocusable() | linearLayoutManager$LayoutChunkResult.mFocusable;
            i23++;
            gridLayoutManager = this;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void onAnchorReady(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, LinearLayoutManager$AnchorInfo linearLayoutManager$AnchorInfo, int i9) {
        super.onAnchorReady(recyclerView$Recycler, recyclerView$State, linearLayoutManager$AnchorInfo, i9);
        updateMeasurements();
        if (recyclerView$State.getItemCount() > 0 && !recyclerView$State.isPreLayout()) {
            ensureAnchorIsInCorrectSpan(recyclerView$Recycler, recyclerView$State, linearLayoutManager$AnchorInfo, i9);
        }
        ensureViewSet();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:72:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:73:0x0110  */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d3, code lost:
    
        if (r13 == (r2 > r15)) goto L47;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView$LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View onFocusSearchFailed(View view, int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        int childCount;
        int i10;
        int childCount2;
        View view2;
        View view3;
        View view4;
        int i11;
        int i12;
        int i13;
        boolean zHasFocusable;
        int i14;
        RecyclerView$Recycler recyclerView$Recycler2 = recyclerView$Recycler;
        RecyclerView$State recyclerView$State2 = recyclerView$State;
        View viewFindContainingItemView = findContainingItemView(view);
        View view5 = null;
        if (viewFindContainingItemView == null) {
            return null;
        }
        GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams) viewFindContainingItemView.getLayoutParams();
        int i15 = gridLayoutManager$LayoutParams.mSpanIndex;
        int i16 = gridLayoutManager$LayoutParams.mSpanSize + i15;
        if (super.onFocusSearchFailed(view, i9, recyclerView$Recycler, recyclerView$State) == null) {
            return null;
        }
        if ((convertFocusDirectionToLayoutDirection(i9) == 1) != this.mShouldReverseLayout) {
            childCount2 = getChildCount() - 1;
            childCount = -1;
            i10 = -1;
        } else {
            childCount = getChildCount();
            i10 = 1;
            childCount2 = 0;
        }
        boolean z8 = this.mOrientation == 1 && isLayoutRTL();
        int spanGroupIndex = getSpanGroupIndex(recyclerView$Recycler2, recyclerView$State2, childCount2);
        int i17 = -1;
        int i18 = -1;
        int iMin = 0;
        int iMin2 = 0;
        int i19 = childCount2;
        View view6 = null;
        while (i19 != childCount) {
            int spanGroupIndex2 = getSpanGroupIndex(recyclerView$Recycler2, recyclerView$State2, i19);
            View childAt = getChildAt(i19);
            if (childAt == viewFindContainingItemView) {
                break;
            }
            if (!childAt.hasFocusable() || spanGroupIndex2 == spanGroupIndex) {
                GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams2 = (GridLayoutManager$LayoutParams) childAt.getLayoutParams();
                int i20 = gridLayoutManager$LayoutParams2.mSpanIndex;
                view2 = viewFindContainingItemView;
                int i21 = gridLayoutManager$LayoutParams2.mSpanSize + i20;
                if (childAt.hasFocusable() && i20 == i15 && i21 == i16) {
                    return childAt;
                }
                if (!(childAt.hasFocusable() && view5 == null) && (childAt.hasFocusable() || view6 != null)) {
                    view3 = view5;
                    int iMin3 = Math.min(i21, i16) - Math.max(i20, i15);
                    if (!childAt.hasFocusable()) {
                        if (view3 == null) {
                            view4 = view6;
                            i11 = iMin;
                            if (isViewPartiallyVisible(childAt, false, true)) {
                                i12 = iMin2;
                                if (iMin3 > i12) {
                                    i13 = i18;
                                } else if (iMin3 == i12) {
                                    i13 = i18;
                                    if (z8 == (i20 > i13)) {
                                    }
                                    iMin = i11;
                                    view5 = view3;
                                    i19 += i10;
                                    recyclerView$Recycler2 = recyclerView$Recycler;
                                    recyclerView$State2 = recyclerView$State;
                                    viewFindContainingItemView = view2;
                                } else {
                                    i13 = i18;
                                }
                                zHasFocusable = childAt.hasFocusable();
                                i14 = gridLayoutManager$LayoutParams2.mSpanIndex;
                                if (zHasFocusable) {
                                    iMin = Math.min(i21, i16) - Math.max(i20, i15);
                                    i18 = i13;
                                    iMin2 = i12;
                                    i17 = i14;
                                    view6 = view4;
                                    view5 = childAt;
                                } else {
                                    iMin2 = Math.min(i21, i16) - Math.max(i20, i15);
                                    view6 = childAt;
                                    i18 = i14;
                                    iMin = i11;
                                    view5 = view3;
                                }
                                i19 += i10;
                                recyclerView$Recycler2 = recyclerView$Recycler;
                                recyclerView$State2 = recyclerView$State;
                                viewFindContainingItemView = view2;
                            }
                            i18 = i13;
                            iMin2 = i12;
                            view6 = view4;
                            iMin = i11;
                            view5 = view3;
                            i19 += i10;
                            recyclerView$Recycler2 = recyclerView$Recycler;
                            recyclerView$State2 = recyclerView$State;
                            viewFindContainingItemView = view2;
                        }
                        i13 = i18;
                        i12 = iMin2;
                        i18 = i13;
                        iMin2 = i12;
                        view6 = view4;
                        iMin = i11;
                        view5 = view3;
                        i19 += i10;
                        recyclerView$Recycler2 = recyclerView$Recycler;
                        recyclerView$State2 = recyclerView$State;
                        viewFindContainingItemView = view2;
                    } else if (iMin3 <= iMin) {
                        if (iMin3 == iMin) {
                        }
                    }
                } else {
                    view3 = view5;
                }
                view4 = view6;
                i11 = iMin;
                i13 = i18;
                i12 = iMin2;
                zHasFocusable = childAt.hasFocusable();
                i14 = gridLayoutManager$LayoutParams2.mSpanIndex;
                if (zHasFocusable) {
                    iMin = Math.min(i21, i16) - Math.max(i20, i15);
                    i18 = i13;
                    iMin2 = i12;
                    i17 = i14;
                    view6 = view4;
                    view5 = childAt;
                } else {
                    iMin2 = Math.min(i21, i16) - Math.max(i20, i15);
                    view6 = childAt;
                    i18 = i14;
                    iMin = i11;
                    view5 = view3;
                }
                i19 += i10;
                recyclerView$Recycler2 = recyclerView$Recycler;
                recyclerView$State2 = recyclerView$State;
                viewFindContainingItemView = view2;
            } else {
                if (view5 != null) {
                    break;
                }
                view2 = viewFindContainingItemView;
                view3 = view5;
            }
            view4 = view6;
            i11 = iMin;
            i13 = i18;
            i12 = iMin2;
            i18 = i13;
            iMin2 = i12;
            view6 = view4;
            iMin = i11;
            view5 = view3;
            i19 += i10;
            recyclerView$Recycler2 = recyclerView$Recycler;
            recyclerView$State2 = recyclerView$State;
            viewFindContainingItemView = view2;
        }
        View view7 = view5;
        return view7 != null ? view7 : view6;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(recyclerView$Recycler, recyclerView$State, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(GridView.class.getName());
        RecyclerView$Adapter recyclerView$Adapter = this.mRecyclerView.mAdapter;
        if (recyclerView$Adapter == null || recyclerView$Adapter.getItemCount() <= 1) {
            return;
        }
        accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_SCROLL_IN_DIRECTION);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof GridLayoutManager$LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
            return;
        }
        GridLayoutManager$LayoutParams gridLayoutManager$LayoutParams = (GridLayoutManager$LayoutParams) layoutParams;
        int spanGroupIndex = getSpanGroupIndex(recyclerView$Recycler, recyclerView$State, gridLayoutManager$LayoutParams.getViewLayoutPosition());
        if (this.mOrientation == 0) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat$CollectionItemInfoCompat.obtain(gridLayoutManager$LayoutParams.getSpanIndex(), gridLayoutManager$LayoutParams.getSpanSize(), spanGroupIndex, 1, false, false));
        } else {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat$CollectionItemInfoCompat.obtain(spanGroupIndex, 1, gridLayoutManager$LayoutParams.getSpanIndex(), gridLayoutManager$LayoutParams.getSpanSize(), false, false));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i9, int i10) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
        this.mSpanSizeLookup.invalidateSpanGroupIndexCache();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
        this.mSpanSizeLookup.invalidateSpanGroupIndexCache();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i9, int i10, int i11) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
        this.mSpanSizeLookup.invalidateSpanGroupIndexCache();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i9, int i10) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
        this.mSpanSizeLookup.invalidateSpanGroupIndexCache();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i9, int i10, Object obj) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
        this.mSpanSizeLookup.invalidateSpanGroupIndexCache();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onLayoutChildren(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (recyclerView$State.isPreLayout()) {
            cachePreLayoutSpanMapping();
        }
        super.onLayoutChildren(recyclerView$Recycler, recyclerView$State);
        clearPreLayoutSpanMappingCache();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onLayoutCompleted(RecyclerView$State recyclerView$State) {
        View viewFindViewByPosition;
        super.onLayoutCompleted(recyclerView$State);
        this.mPendingSpanCountChange = false;
        int i9 = this.mPositionTargetedByScrollInDirection;
        if (i9 == -1 || (viewFindViewByPosition = findViewByPosition(i9)) == null) {
            return;
        }
        viewFindViewByPosition.sendAccessibilityEvent(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
        this.mPositionTargetedByScrollInDirection = -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView$LayoutManager
    public boolean performAccessibilityAction(int i9, @Nullable Bundle bundle) {
        RecyclerView$ViewHolder childViewHolder;
        int iFindScrollTargetPositionOnTheLeft;
        if (i9 == AccessibilityNodeInfoCompat$AccessibilityActionCompat.ACTION_SCROLL_IN_DIRECTION.getId() && i9 != -1) {
            View viewFindChildWithAccessibilityFocus = findChildWithAccessibilityFocus();
            if (viewFindChildWithAccessibilityFocus != null && bundle != null) {
                int i10 = bundle.getInt("android.view.accessibility.action.ARGUMENT_DIRECTION_INT", -1);
                if (sSupportedDirectionsForActionScrollInDirection.contains(Integer.valueOf(i10)) && (childViewHolder = this.mRecyclerView.getChildViewHolder(viewFindChildWithAccessibilityFocus)) != null) {
                    int absoluteAdapterPosition = childViewHolder.getAbsoluteAdapterPosition();
                    int rowIndex = getRowIndex(absoluteAdapterPosition);
                    int columnIndex = getColumnIndex(absoluteAdapterPosition);
                    if (rowIndex >= 0 && columnIndex >= 0) {
                        if (hasAccessibilityFocusChanged(absoluteAdapterPosition)) {
                            this.mRowWithAccessibilityFocus = rowIndex;
                            this.mColumnWithAccessibilityFocus = columnIndex;
                        }
                        int i11 = this.mRowWithAccessibilityFocus;
                        if (i11 == -1) {
                            i11 = rowIndex;
                        }
                        int i12 = this.mColumnWithAccessibilityFocus;
                        if (i12 != -1) {
                            columnIndex = i12;
                        }
                        if (i10 == 17) {
                            iFindScrollTargetPositionOnTheLeft = findScrollTargetPositionOnTheLeft(i11, columnIndex, absoluteAdapterPosition);
                        } else if (i10 == 33) {
                            iFindScrollTargetPositionOnTheLeft = findScrollTargetPositionAbove(i11, columnIndex, absoluteAdapterPosition);
                        } else if (i10 == 66) {
                            iFindScrollTargetPositionOnTheLeft = findScrollTargetPositionOnTheRight(i11, columnIndex, absoluteAdapterPosition);
                        } else if (i10 == 130) {
                            iFindScrollTargetPositionOnTheLeft = findScrollTargetPositionBelow(i11, columnIndex, absoluteAdapterPosition);
                        }
                        if (iFindScrollTargetPositionOnTheLeft == -1 && this.mOrientation == 0) {
                            if (i10 == 17) {
                                iFindScrollTargetPositionOnTheLeft = findPositionOfLastItemOnARowAboveForHorizontalGrid(rowIndex);
                            } else if (i10 == 66) {
                                iFindScrollTargetPositionOnTheLeft = findPositionOfFirstItemOnARowBelowForHorizontalGrid(rowIndex);
                            }
                        }
                        if (iFindScrollTargetPositionOnTheLeft != -1) {
                            scrollToPosition(iFindScrollTargetPositionOnTheLeft);
                            this.mPositionTargetedByScrollInDirection = iFindScrollTargetPositionOnTheLeft;
                            return true;
                        }
                    }
                }
            }
        } else {
            if (i9 != 16908343 || bundle == null) {
                return super.performAccessibilityAction(i9, bundle);
            }
            int i13 = bundle.getInt(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_ROW_INT, -1);
            int i14 = bundle.getInt(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_COLUMN_INT, -1);
            if (i13 != -1 && i14 != -1) {
                int itemCount = this.mRecyclerView.mAdapter.getItemCount();
                int i15 = 0;
                while (true) {
                    if (i15 >= itemCount) {
                        i15 = -1;
                        break;
                    }
                    RecyclerView recyclerView = this.mRecyclerView;
                    int spanIndex = getSpanIndex(recyclerView.mRecycler, recyclerView.mState, i15);
                    RecyclerView recyclerView2 = this.mRecyclerView;
                    int spanGroupIndex = getSpanGroupIndex(recyclerView2.mRecycler, recyclerView2.mState, i15);
                    if (this.mOrientation != 1) {
                        if (spanIndex == i13 && spanGroupIndex == i14) {
                            break;
                        }
                        i15++;
                    } else {
                        if (spanIndex == i14 && spanGroupIndex == i13) {
                            break;
                        }
                        i15++;
                    }
                }
                if (i15 > -1) {
                    scrollToPositionWithOffset(i15, 0);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int scrollHorizontallyBy(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        updateMeasurements();
        ensureViewSet();
        return super.scrollHorizontallyBy(i9, recyclerView$Recycler, recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int scrollVerticallyBy(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        updateMeasurements();
        ensureViewSet();
        return super.scrollVerticallyBy(i9, recyclerView$Recycler, recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void setMeasuredDimension(Rect rect, int i9, int i10) {
        int iChooseSize;
        int iChooseSize2;
        if (this.mCachedBorders == null) {
            super.setMeasuredDimension(rect, i9, i10);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.mOrientation == 1) {
            iChooseSize2 = RecyclerView$LayoutManager.chooseSize(i10, rect.height() + paddingBottom, getMinimumHeight());
            int[] iArr = this.mCachedBorders;
            iChooseSize = RecyclerView$LayoutManager.chooseSize(i9, iArr[iArr.length - 1] + paddingRight, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView$LayoutManager.chooseSize(i9, rect.width() + paddingRight, getMinimumWidth());
            int[] iArr2 = this.mCachedBorders;
            iChooseSize2 = RecyclerView$LayoutManager.chooseSize(i10, iArr2[iArr2.length - 1] + paddingBottom, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpanCount(int i9) {
        if (i9 == this.mSpanCount) {
            return;
        }
        this.mPendingSpanCountChange = true;
        if (i9 < 1) {
            i.k(a.e(i9, "Span count should be at least 1. Provided "));
            return;
        }
        this.mSpanCount = i9;
        this.mSpanSizeLookup.invalidateSpanIndexCache();
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpanSizeLookup(GridLayoutManager$SpanSizeLookup gridLayoutManager$SpanSizeLookup) {
        this.mSpanSizeLookup = gridLayoutManager$SpanSizeLookup;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z8) {
        if (z8) {
            b.g("GridLayoutManager does not support stack from end. Consider using reverse layout");
        } else {
            super.setStackFromEnd(false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setUsingSpansToEstimateScrollbarDimensions(boolean z8) {
        this.mUsingSpansToEstimateScrollBarDimensions = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView$LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.mPendingSpanCountChange;
    }

    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public RecyclerView$LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new GridLayoutManager$LayoutParams(context, attributeSet);
    }

    private void calculateItemBorders(int i9) {
        this.mCachedBorders = calculateItemBorders(this.mCachedBorders, this.mSpanCount, i9);
    }

    public GridLayoutManager(Context context, int i9) {
        super(context);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new GridLayoutManager$DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        this.mPositionTargetedByScrollInDirection = -1;
        this.mRowWithAccessibilityFocus = -1;
        this.mColumnWithAccessibilityFocus = -1;
        setSpanCount(i9);
    }

    public GridLayoutManager(Context context, int i9, int i10, boolean z8) {
        super(context, i10, z8);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new GridLayoutManager$DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        this.mPositionTargetedByScrollInDirection = -1;
        this.mRowWithAccessibilityFocus = -1;
        this.mColumnWithAccessibilityFocus = -1;
        setSpanCount(i9);
    }
}
