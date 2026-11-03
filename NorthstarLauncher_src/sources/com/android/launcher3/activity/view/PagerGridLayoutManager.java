package com.android.launcher3.activity.view;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.Utilities;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class PagerGridLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {
    static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int NO_ITEM = -1;
    public static final int NO_PAGER_COUNT = 0;
    private static final String TAG = "PagerGridLayoutManager";
    public static final int VERTICAL = 1;
    private int mColumns;
    private int mCurrentPagerIndex;
    private int mDiffHeight;
    private int mDiffWidth;
    private final Rect mEndSnapRect;
    private boolean mIsHandlingSlidingConflictsEnabled;
    private int mItemHeight;
    private int mItemHeightUsed;
    private int mItemWidth;
    private int mItemWidthUsed;
    protected final LayoutChunkResult mLayoutChunkResult;
    protected final LayoutState mLayoutState;
    private int mMaxScrollOnFlingDuration;
    private float mMillisecondPreInch;
    private RecyclerView.OnItemTouchListener mOnItemTouchListener;
    private int mOnePageSize;
    private int mOrientation;
    private PagerChangedListener mPagerChangedListener;
    private int mPagerCount;
    private RecyclerView mRecyclerView;
    private boolean mReverseLayout;
    private int mRows;
    protected boolean mShouldReverseLayout;
    private final Rect mStartSnapRect;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Orientation {
    }

    public interface PagerChangedListener {
        void onPagerCountChanged(int pagerCount);

        void onPagerIndexSelected(int prePagerIndex, int currentPagerIndex);
    }

    private void calculateOnePageSize() {
        this.mOnePageSize = this.mRows * this.mColumns;
    }

    private int getPositionByPagerIndex(int pagerIndex, boolean isLayoutToEnd) {
        if (isLayoutToEnd) {
            return pagerIndex * this.mOnePageSize;
        }
        int i = this.mOnePageSize;
        return ((pagerIndex * i) + i) - 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    public final int getColumns() {
        return this.mColumns;
    }

    public final int getCurrentPagerIndex() {
        return this.mCurrentPagerIndex;
    }

    final Rect getEndSnapRect() {
        return this.mEndSnapRect;
    }

    public final int getItemHeight() {
        return this.mItemHeight;
    }

    public final int getItemWidth() {
        return this.mItemWidth;
    }

    final LayoutState getLayoutState() {
        return this.mLayoutState;
    }

    public final int getMaxScrollOnFlingDuration() {
        return this.mMaxScrollOnFlingDuration;
    }

    public final float getMillisecondPreInch() {
        return this.mMillisecondPreInch;
    }

    public final int getOnePageSize() {
        return this.mOnePageSize;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public final int getRows() {
        return this.mRows;
    }

    boolean getShouldReverseLayout() {
        return this.mShouldReverseLayout;
    }

    final Rect getStartSnapRect() {
        return this.mStartSnapRect;
    }

    public final boolean isHandlingSlidingConflictsEnabled() {
        return this.mIsHandlingSlidingConflictsEnabled;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int state) {
    }

    public final void setHandlingSlidingConflictsEnabled(boolean enabled) {
        this.mIsHandlingSlidingConflictsEnabled = enabled;
    }

    public void setPagerChangedListener(PagerChangedListener listener) {
        this.mPagerChangedListener = listener;
    }

    boolean shouldHorizontallyReverseLayout() {
        return this.mShouldReverseLayout && this.mOrientation == 0;
    }

    public PagerGridLayoutManager(int rows, int columns) {
        this(rows, columns, 0);
    }

    public PagerGridLayoutManager(int rows, int columns, boolean reverseLayout) {
        this(rows, columns, 0, reverseLayout);
    }

    public PagerGridLayoutManager(int rows, int columns, int orientation) {
        this(rows, columns, orientation, false);
    }

    public PagerGridLayoutManager(int rows, int columns, int orientation, boolean reverseLayout) {
        this.mOrientation = 0;
        this.mPagerCount = 0;
        this.mCurrentPagerIndex = -1;
        this.mStartSnapRect = new Rect();
        this.mEndSnapRect = new Rect();
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mDiffWidth = 0;
        this.mDiffHeight = 0;
        this.mIsHandlingSlidingConflictsEnabled = true;
        this.mMillisecondPreInch = 100.0f;
        this.mMaxScrollOnFlingDuration = 160;
        this.mLayoutState = createLayoutState();
        this.mLayoutChunkResult = createLayoutChunkResult();
        setRows(rows);
        setColumns(columns);
        setOrientation(orientation);
        setReverseLayout(reverseLayout);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context c, AttributeSet attrs) {
        return new LayoutParams(c, attrs);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams lp) {
        if (lp instanceof RecyclerView.LayoutParams) {
            return new LayoutParams((RecyclerView.LayoutParams) lp);
        }
        if (lp instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) lp);
        }
        return new LayoutParams(lp);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams lp) {
        return lp instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView view) {
        super.onAttachedToWindow(view);
        view.setHasFixedSize(true);
        if (isInScrollingContainer(view) && this.mIsHandlingSlidingConflictsEnabled) {
            PagerGridItemTouchListener pagerGridItemTouchListener = new PagerGridItemTouchListener(this, view);
            this.mOnItemTouchListener = pagerGridItemTouchListener;
            view.addOnItemTouchListener(pagerGridItemTouchListener);
        }
        this.mRecyclerView = view;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int widthSpec, int heightSpec) {
        int size = View.MeasureSpec.getSize(widthSpec);
        int size2 = View.MeasureSpec.getSize(heightSpec);
        int paddingStart = (size - getPaddingStart()) - getPaddingEnd();
        int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
        int i = this.mColumns;
        int i2 = i > 0 ? paddingStart / i : 0;
        this.mItemWidth = i2;
        int i3 = this.mRows;
        int i4 = i3 > 0 ? paddingTop / i3 : 0;
        this.mItemHeight = i4;
        int i5 = paddingStart - (i * i2);
        this.mDiffWidth = i5;
        int i6 = paddingTop - (i3 * i4);
        this.mDiffHeight = i6;
        this.mItemWidthUsed = (paddingStart - i5) - i2;
        this.mItemHeightUsed = (paddingTop - i6) - i4;
        super.onMeasure(recycler, state, widthSpec, heightSpec);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00e6  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int height;
        int width;
        int i;
        int i2;
        int paddingStart;
        int i3;
        int i4;
        int decoratedStart;
        int i5;
        if (state.isPreLayout() || !state.didStructureChange()) {
            return;
        }
        int itemCount = state.getItemCount();
        if (itemCount == 0) {
            removeAndRecycleAllViews(recycler);
            return;
        }
        resolveShouldLayoutReverse();
        if (this.mShouldReverseLayout) {
            this.mStartSnapRect.set((getWidth() - getPaddingEnd()) - this.mItemWidth, getPaddingTop(), getWidth() - getPaddingEnd(), getPaddingTop() + this.mItemHeight);
            this.mEndSnapRect.set(getPaddingStart(), (getHeight() - getPaddingBottom()) - this.mItemHeight, getPaddingStart() + this.mItemWidth, getHeight() - getPaddingBottom());
        } else {
            this.mStartSnapRect.set(getPaddingStart(), getPaddingTop(), getPaddingStart() + this.mItemWidth, getPaddingTop() + this.mItemHeight);
            this.mEndSnapRect.set((getWidth() - getPaddingEnd()) - this.mItemWidth, (getHeight() - getPaddingBottom()) - this.mItemHeight, getWidth() - getPaddingEnd(), getHeight() - getPaddingBottom());
        }
        int i6 = this.mOnePageSize;
        int i7 = itemCount / i6;
        if (itemCount % i6 != 0) {
            i7++;
        }
        this.mLayoutState.replenishDelta = 0;
        if (i7 > 1) {
            int i8 = itemCount % this.mOnePageSize;
            if (i8 != 0) {
                int i9 = this.mColumns;
                int i10 = i8 / i9;
                int i11 = i8 % i9;
                if (this.mOrientation != 0) {
                    if (i11 > 0) {
                        i10++;
                    }
                    i5 = this.mItemHeight * (this.mRows - i10);
                } else if (i10 == 0) {
                    i5 = (i9 - i11) * this.mItemWidth;
                } else {
                    i5 = 0;
                }
            } else {
                i5 = 0;
            }
            this.mLayoutState.replenishDelta = i5;
        }
        this.mLayoutState.mRecycle = false;
        this.mLayoutState.mLayoutDirection = 1;
        this.mLayoutState.mAvailable = getEnd();
        this.mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
        int i12 = this.mCurrentPagerIndex;
        int iMin = i12 != -1 ? Math.min(i12, getMaxPagerIndex()) : 0;
        View childClosestToStart = (isIdle() || getChildCount() == 0) ? null : getChildClosestToStart();
        if (this.mShouldReverseLayout) {
            if (childClosestToStart == null) {
                this.mLayoutState.mCurrentPosition = this.mOnePageSize * iMin;
                int iCalculateClipOffset = calculateClipOffset(true, this.mLayoutState.mCurrentPosition);
                if (this.mOrientation == 0) {
                    height = getHeight() - getPaddingBottom();
                    paddingStart = (getWidth() - getPaddingEnd()) + iCalculateClipOffset;
                } else {
                    height = getPaddingTop() - iCalculateClipOffset;
                    paddingStart = getPaddingStart();
                }
            } else {
                int position = getPosition(childClosestToStart);
                this.mLayoutState.mCurrentPosition = position;
                Rect rect = this.mLayoutState.mOffsetRect;
                int iCalculateClipOffset2 = calculateClipOffset(true, this.mLayoutState.mCurrentPosition);
                getDecoratedBoundsWithMargins(childClosestToStart, rect);
                if (this.mOrientation == 0) {
                    if (isNeedMoveToNextSpan(position)) {
                        height = getHeight() - getPaddingBottom();
                        paddingStart = rect.right + iCalculateClipOffset2;
                    } else {
                        i3 = rect.top;
                        i4 = rect.left;
                        paddingStart = i4;
                        height = i3;
                    }
                } else if (isNeedMoveToNextSpan(position)) {
                    height = rect.top - iCalculateClipOffset2;
                    paddingStart = getPaddingStart();
                } else {
                    i3 = rect.bottom;
                    i4 = rect.right;
                    paddingStart = i4;
                    height = i3;
                }
                if (this.mOrientation == 0) {
                    decoratedStart = getDecoratedStart(childClosestToStart) - getEndAfterPadding();
                } else {
                    decoratedStart = getDecoratedStart(childClosestToStart);
                }
                this.mLayoutState.mAvailable -= decoratedStart;
            }
            i2 = height - this.mItemHeight;
            i = this.mItemWidth + paddingStart;
        } else {
            if (childClosestToStart == null) {
                this.mLayoutState.mCurrentPosition = this.mOnePageSize * iMin;
                int iCalculateClipOffset3 = calculateClipOffset(true, this.mLayoutState.mCurrentPosition);
                if (this.mOrientation == 0) {
                    height = getHeight() - getPaddingBottom();
                    width = getPaddingStart() - iCalculateClipOffset3;
                } else {
                    height = getPaddingTop() - iCalculateClipOffset3;
                    width = getWidth() - getPaddingEnd();
                }
            } else {
                int position2 = getPosition(childClosestToStart);
                this.mLayoutState.mCurrentPosition = position2;
                Rect rect2 = this.mLayoutState.mOffsetRect;
                int iCalculateClipOffset4 = calculateClipOffset(true, this.mLayoutState.mCurrentPosition);
                getDecoratedBoundsWithMargins(childClosestToStart, rect2);
                if (this.mOrientation == 0) {
                    if (isNeedMoveToNextSpan(position2)) {
                        height = getHeight() - getPaddingBottom();
                        width = rect2.left - iCalculateClipOffset4;
                    } else {
                        height = rect2.top;
                        width = rect2.right;
                    }
                } else if (isNeedMoveToNextSpan(position2)) {
                    height = rect2.top - iCalculateClipOffset4;
                    width = getWidth() - getPaddingEnd();
                } else {
                    height = rect2.bottom;
                    width = rect2.left;
                }
                this.mLayoutState.mAvailable -= getDecoratedStart(childClosestToStart);
            }
            i = width;
            i2 = height - this.mItemHeight;
            paddingStart = i - this.mItemWidth;
        }
        this.mLayoutState.setOffsetRect(paddingStart, i2, i, height);
        detachAndScrapAttachedViews(recycler);
        fill(recycler, state);
        if (childClosestToStart == null) {
            setPagerCount(i7);
            setCurrentPagerIndex(iMin);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View findViewByPosition(int position) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position2 = position - getPosition(getChildAt(0));
        if (position2 >= 0 && position2 < childCount) {
            View childAt = getChildAt(position2);
            if (getPosition(childAt) == position) {
                return childAt;
            }
        }
        return super.findViewByPosition(position);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.mOrientation = this.mOrientation;
        savedState.mRows = this.mRows;
        savedState.mColumns = this.mColumns;
        savedState.mCurrentPagerIndex = this.mCurrentPagerIndex;
        savedState.mReverseLayout = this.mReverseLayout;
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable state) {
        if (state instanceof SavedState) {
            SavedState savedState = (SavedState) state;
            this.mOrientation = savedState.mOrientation;
            this.mRows = savedState.mRows;
            this.mColumns = savedState.mColumns;
            calculateOnePageSize();
            setCurrentPagerIndex(savedState.mCurrentPagerIndex);
            this.mReverseLayout = savedState.mReverseLayout;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int position) {
        assertNotInLayoutOrScroll(null);
        scrollToPagerIndex(getPagerIndexByPosition(position));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int position) {
        assertNotInLayoutOrScroll(null);
        smoothScrollToPagerIndex(getPagerIndexByPosition(position));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int dx, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(dx, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int dy, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(dy, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getWidth() {
        return super.getWidth() - getDiffWidth();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public final int getHeight() {
        return super.getHeight() - getDiffHeight();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView view, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(view, recycler);
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            RecyclerView.OnItemTouchListener onItemTouchListener = this.mOnItemTouchListener;
            if (onItemTouchListener != null) {
                recyclerView.removeOnItemTouchListener(onItemTouchListener);
            }
            this.mRecyclerView = null;
        }
    }

    public final void setMillisecondPreInch(float millisecondPreInch) {
        this.mMillisecondPreInch = Math.max(1.0f, millisecondPreInch);
    }

    public final void setMaxScrollOnFlingDuration(int maxScrollOnFlingDuration) {
        this.mMaxScrollOnFlingDuration = Math.max(1, maxScrollOnFlingDuration);
    }

    public void setColumns(int columns) {
        assertNotInLayoutOrScroll(null);
        if (this.mColumns == columns) {
            return;
        }
        this.mColumns = Math.max(columns, 1);
        this.mPagerCount = 0;
        this.mCurrentPagerIndex = -1;
        calculateOnePageSize();
        requestLayout();
    }

    public void setRows(int rows) {
        assertNotInLayoutOrScroll(null);
        if (this.mRows == rows) {
            return;
        }
        this.mRows = Math.max(rows, 1);
        this.mPagerCount = 0;
        this.mCurrentPagerIndex = -1;
        calculateOnePageSize();
        requestLayout();
    }

    public void setOrientation(int orientation) {
        assertNotInLayoutOrScroll(null);
        if (orientation != 0 && orientation != 1) {
            throw new IllegalArgumentException("invalid orientation:" + orientation);
        }
        if (orientation != this.mOrientation) {
            this.mOrientation = orientation;
            requestLayout();
        }
    }

    public void setReverseLayout(boolean reverseLayout) {
        assertNotInLayoutOrScroll(null);
        if (reverseLayout == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = reverseLayout;
        requestLayout();
    }

    public final int getPagerIndexByPosition(int position) {
        return position / this.mOnePageSize;
    }

    public final int getMaxPagerIndex() {
        return getPagerIndexByPosition(getItemCount() - 1);
    }

    public void scrollToPagerIndex(int pagerIndex) {
        assertNotInLayoutOrScroll(null);
        int iMin = Math.min(Math.max(pagerIndex, 0), getMaxPagerIndex());
        if (iMin == this.mCurrentPagerIndex) {
            return;
        }
        setCurrentPagerIndex(iMin);
        requestLayout();
    }

    public void scrollToPrePager() {
        assertNotInLayoutOrScroll(null);
        scrollToPagerIndex(this.mCurrentPagerIndex - 1);
    }

    public void scrollToNextPager() {
        assertNotInLayoutOrScroll(null);
        scrollToPagerIndex(this.mCurrentPagerIndex + 1);
    }

    public void smoothScrollToPagerIndex(int pagerIndex) {
        assertNotInLayoutOrScroll(null);
        int iMin = Math.min(Math.max(pagerIndex, 0), getMaxPagerIndex());
        int i = this.mCurrentPagerIndex;
        if (iMin == i) {
            return;
        }
        boolean z = iMin > i;
        if (Math.abs(iMin - i) > 3) {
            scrollToPagerIndex(iMin > i ? iMin - 3 : iMin + 3);
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.post(new SmoothScrollToPosition(getPositionByPagerIndex(iMin, z), this, this.mRecyclerView));
                return;
            }
            return;
        }
        if (this.mRecyclerView != null) {
            PagerGridSmoothScroller pagerGridSmoothScroller = new PagerGridSmoothScroller(this.mRecyclerView, this);
            pagerGridSmoothScroller.setTargetPosition(getPositionByPagerIndex(iMin, z));
            startSmoothScroll(pagerGridSmoothScroller);
        }
    }

    public void smoothScrollToPrePager() {
        if (this.mCurrentPagerIndex <= 0) {
            MLog.d(TAG, "smoothScrollToPrePager: already to start");
            return;
        }
        MLog.d(TAG, "smoothScrollToPrePager: ");
        assertNotInLayoutOrScroll(null);
        smoothScrollToPagerIndex(this.mCurrentPagerIndex - 1);
    }

    public void smoothScrollToNextPager() {
        if (this.mCurrentPagerIndex >= getPagerCount() - 1) {
            MLog.d(TAG, "smoothScrollToNextPager: already to end");
            return;
        }
        MLog.d(TAG, "smoothScrollToNextPager: ");
        assertNotInLayoutOrScroll(null);
        smoothScrollToPagerIndex(this.mCurrentPagerIndex + 1);
    }

    protected LayoutState createLayoutState() {
        return new LayoutState();
    }

    protected LayoutChunkResult createLayoutChunkResult() {
        return new LayoutChunkResult();
    }

    protected boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    private void setPagerCount(int pagerCount) {
        if (this.mPagerCount == pagerCount) {
            return;
        }
        this.mPagerCount = pagerCount;
        PagerChangedListener pagerChangedListener = this.mPagerChangedListener;
        if (pagerChangedListener != null) {
            pagerChangedListener.onPagerCountChanged(pagerCount);
        }
    }

    public final int getPagerCount() {
        return Math.max(this.mPagerCount, 0);
    }

    private void setCurrentPagerIndex(int pagerIndex) {
        int i = this.mCurrentPagerIndex;
        if (i == pagerIndex) {
            return;
        }
        this.mCurrentPagerIndex = pagerIndex;
        PagerChangedListener pagerChangedListener = this.mPagerChangedListener;
        if (pagerChangedListener != null) {
            pagerChangedListener.onPagerIndexSelected(i, pagerIndex);
        }
    }

    private boolean isInScrollingContainer(View view) {
        for (ViewParent parent = view.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
            if (((ViewGroup) parent).shouldDelayChildPressedState()) {
                return true;
            }
        }
        return false;
    }

    public final int getDiffWidth() {
        return Math.max(this.mDiffWidth, 0);
    }

    public final int getDiffHeight() {
        return Math.max(this.mDiffHeight, 0);
    }

    private int getRealWidth() {
        return (getWidth() - getPaddingStart()) - getPaddingEnd();
    }

    private int getRealHeight() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    private int fill(RecyclerView.Recycler recycler, RecyclerView.State state) {
        boolean zIsNeedMoveToPreSpan;
        LayoutState layoutState = this.mLayoutState;
        int i = layoutState.mAvailable;
        LayoutChunkResult layoutChunkResult = this.mLayoutChunkResult;
        for (int i2 = layoutState.mAvailable; i2 > 0 && layoutState.hasMore(state); i2 -= layoutChunkResult.mConsumed) {
            if (this.mShouldReverseLayout) {
                reverseLayoutChunk(recycler, state, layoutState, layoutChunkResult);
            } else {
                layoutChunk(recycler, state, layoutState, layoutChunkResult);
            }
            layoutState.mAvailable -= layoutChunkResult.mConsumed;
        }
        boolean z = layoutState.mLayoutDirection == 1;
        while (layoutState.hasMore(state)) {
            if (z) {
                zIsNeedMoveToPreSpan = isNeedMoveToNextSpan(layoutState.mCurrentPosition);
            } else {
                zIsNeedMoveToPreSpan = isNeedMoveToPreSpan(layoutState.mCurrentPosition);
            }
            if (zIsNeedMoveToPreSpan) {
                break;
            }
            if (this.mShouldReverseLayout) {
                reverseLayoutChunk(recycler, state, layoutState, layoutChunkResult);
            } else {
                layoutChunk(recycler, state, layoutState, layoutChunkResult);
            }
        }
        recycleViews(recycler);
        updateChildAlpha(state);
        return i - layoutState.mAvailable;
    }

    private void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        int prePosition;
        boolean zIsNeedMoveToPreSpan;
        int i;
        int paddingStart;
        int iCalculateClipOffset;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int iCalculateClipOffset2;
        int height;
        boolean z = layoutState.mLayoutDirection == 1;
        int i8 = layoutState.mCurrentPosition;
        View next = layoutState.next(recycler);
        if (z) {
            addView(next);
        } else {
            addView(next, 0);
        }
        if (z) {
            prePosition = layoutState.getNextPosition(i8, this.mOrientation, this.mRows, this.mColumns, state);
        } else {
            prePosition = layoutState.getPrePosition(i8, this.mOrientation, this.mRows, this.mColumns, state);
        }
        layoutState.mCurrentPosition = prePosition;
        measureChildWithMargins(next, this.mItemWidthUsed, this.mItemHeightUsed);
        if (z) {
            zIsNeedMoveToPreSpan = isNeedMoveToNextSpan(i8);
        } else {
            zIsNeedMoveToPreSpan = isNeedMoveToPreSpan(i8);
        }
        if (zIsNeedMoveToPreSpan) {
            i = this.mOrientation == 0 ? this.mItemWidth : this.mItemHeight;
        } else {
            i = 0;
        }
        layoutChunkResult.mConsumed = i;
        Rect rect = layoutState.mOffsetRect;
        if (this.mOrientation != 0) {
            if (z) {
                if (zIsNeedMoveToPreSpan) {
                    paddingStart = getPaddingStart();
                    iCalculateClipOffset = rect.bottom + calculateClipOffset(true, i8);
                } else {
                    paddingStart = rect.left + this.mItemWidth;
                    iCalculateClipOffset = rect.top;
                }
                i2 = this.mItemWidth + paddingStart;
                i3 = this.mItemHeight;
            } else if (zIsNeedMoveToPreSpan) {
                int width = getWidth() - getPaddingEnd();
                int i9 = width - this.mItemWidth;
                int iCalculateClipOffset3 = rect.top - calculateClipOffset(false, i8);
                i4 = width;
                i5 = iCalculateClipOffset3;
                i6 = i9;
                i7 = iCalculateClipOffset3 - this.mItemHeight;
            } else {
                paddingStart = rect.left - this.mItemWidth;
                iCalculateClipOffset = rect.top;
                i2 = this.mItemWidth + paddingStart;
                i3 = this.mItemHeight;
            }
            i6 = paddingStart;
            i7 = iCalculateClipOffset;
            i4 = i2;
            i5 = i3 + iCalculateClipOffset;
        } else if (z) {
            if (zIsNeedMoveToPreSpan) {
                paddingStart = rect.left + this.mItemWidth + calculateClipOffset(true, i8);
                iCalculateClipOffset = getPaddingTop();
            } else {
                paddingStart = rect.left;
                iCalculateClipOffset = rect.bottom;
            }
            i2 = this.mItemWidth + paddingStart;
            i3 = this.mItemHeight;
            i6 = paddingStart;
            i7 = iCalculateClipOffset;
            i4 = i2;
            i5 = i3 + iCalculateClipOffset;
        } else {
            if (zIsNeedMoveToPreSpan) {
                iCalculateClipOffset2 = (rect.left - this.mItemWidth) - calculateClipOffset(false, i8);
                height = getHeight() - getPaddingBottom();
            } else {
                iCalculateClipOffset2 = rect.left;
                height = rect.top;
            }
            i6 = iCalculateClipOffset2;
            i5 = height;
            i7 = height - this.mItemHeight;
            i4 = this.mItemWidth + iCalculateClipOffset2;
        }
        layoutState.setOffsetRect(i6, i7, i4, i5);
        layoutDecoratedWithMargins(next, i6, i7, i4, i5);
    }

    private void reverseLayoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        int prePosition;
        int i;
        int iCalculateClipOffset;
        int i2;
        int paddingTop;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int width;
        int iCalculateClipOffset2;
        int i8;
        int iCalculateClipOffset3;
        int height;
        boolean z = layoutState.mLayoutDirection == 1;
        int i9 = layoutState.mCurrentPosition;
        View next = layoutState.next(recycler);
        if (z) {
            addView(next);
        } else {
            addView(next, 0);
        }
        if (z) {
            prePosition = layoutState.getNextPosition(i9, this.mOrientation, this.mRows, this.mColumns, state);
        } else {
            prePosition = layoutState.getPrePosition(i9, this.mOrientation, this.mRows, this.mColumns, state);
        }
        layoutState.mCurrentPosition = prePosition;
        measureChildWithMargins(next, this.mItemWidthUsed, this.mItemHeightUsed);
        boolean zIsNeedMoveToNextSpan = z ? isNeedMoveToNextSpan(i9) : isNeedMoveToPreSpan(i9);
        if (zIsNeedMoveToNextSpan) {
            i = this.mOrientation == 0 ? this.mItemWidth : this.mItemHeight;
        } else {
            i = 0;
        }
        layoutChunkResult.mConsumed = i;
        Rect rect = layoutState.mOffsetRect;
        if (this.mOrientation == 0) {
            if (z) {
                if (zIsNeedMoveToNextSpan) {
                    iCalculateClipOffset = (rect.left - this.mItemWidth) - calculateClipOffset(true, i9);
                    paddingTop = getPaddingTop();
                } else {
                    iCalculateClipOffset = rect.left;
                    paddingTop = rect.bottom;
                }
                i2 = this.mItemWidth + iCalculateClipOffset;
                i3 = this.mItemHeight;
                i8 = i3 + paddingTop;
                i4 = iCalculateClipOffset;
                i7 = paddingTop;
                i6 = i2;
                i5 = i8;
            } else {
                if (zIsNeedMoveToNextSpan) {
                    iCalculateClipOffset3 = rect.left + this.mItemWidth + calculateClipOffset(false, i9);
                    height = getHeight() - getPaddingBottom();
                } else {
                    iCalculateClipOffset3 = rect.left;
                    height = rect.top;
                }
                i4 = iCalculateClipOffset3;
                i5 = height;
                i7 = height - this.mItemHeight;
                i6 = this.mItemWidth + iCalculateClipOffset3;
            }
        } else if (z) {
            if (zIsNeedMoveToNextSpan) {
                width = getWidth() - getPaddingEnd();
                iCalculateClipOffset2 = rect.bottom + calculateClipOffset(true, i9);
            } else {
                width = rect.left;
                iCalculateClipOffset2 = rect.top;
            }
            int i10 = width - this.mItemWidth;
            i8 = this.mItemHeight + iCalculateClipOffset2;
            i6 = width;
            i7 = iCalculateClipOffset2;
            i4 = i10;
            i5 = i8;
        } else if (zIsNeedMoveToNextSpan) {
            int paddingStart = getPaddingStart();
            int i11 = this.mItemWidth + paddingStart;
            int iCalculateClipOffset4 = rect.top - calculateClipOffset(false, i9);
            i4 = paddingStart;
            i5 = iCalculateClipOffset4;
            i6 = i11;
            i7 = iCalculateClipOffset4 - this.mItemHeight;
        } else {
            iCalculateClipOffset = rect.right;
            i2 = this.mItemWidth + iCalculateClipOffset;
            paddingTop = rect.top;
            i3 = this.mItemHeight;
            i8 = i3 + paddingTop;
            i4 = iCalculateClipOffset;
            i7 = paddingTop;
            i6 = i2;
            i5 = i8;
        }
        layoutState.setOffsetRect(i4, i7, i6, i5);
        layoutDecoratedWithMargins(next, i4, i7, i6, i5);
    }

    private void updateChildAlpha(RecyclerView.State state) {
        int iComputeHorizontalScrollOffset = computeHorizontalScrollOffset(state);
        for (int i = 0; i < getItemCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt != null) {
                updateChildAlpha(childAt, getPosition(childAt), iComputeHorizontalScrollOffset);
            }
        }
    }

    private void updateChildAlpha(View child, int position, int offsetX) {
        RecyclerView.ViewHolder draggingViewHolder;
        ViewParent viewParent = this.mRecyclerView;
        if ((viewParent instanceof DragStateProvider) && (draggingViewHolder = ((DragStateProvider) viewParent).getDraggingViewHolder()) != null && draggingViewHolder.itemView == child) {
            child.setAlpha(1.0f);
            return;
        }
        int[] pageLeftTopByPosition = getPageLeftTopByPosition(position);
        if (canScrollHorizontally()) {
            child.setAlpha(Utilities.boundToRange(1.0f - ((Math.abs(pageLeftTopByPosition[0] - offsetX) * 1.0f) / getRealWidth()), 0.0f, 1.0f));
        } else {
            child.setAlpha(Utilities.boundToRange(1.0f - ((Math.abs(pageLeftTopByPosition[1] - offsetX) * 1.0f) / getRealHeight()), 0.0f, 1.0f));
        }
    }

    private int[] getPageLeftTopByPosition(int pos) {
        int realWidth;
        int[] iArr = new int[2];
        int pagerIndexByPosition = getPagerIndexByPosition(pos);
        boolean zIsLayoutRTL = isLayoutRTL();
        if (canScrollHorizontally()) {
            if (zIsLayoutRTL) {
                realWidth = ((getPagerCount() - 1) - pagerIndexByPosition) * getRealWidth();
            } else {
                realWidth = pagerIndexByPosition * getRealWidth();
            }
            iArr[0] = realWidth;
        } else {
            iArr[1] = pagerIndexByPosition * getRealHeight();
        }
        return iArr;
    }

    private int scrollBy(int delta, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || delta == 0 || this.mPagerCount == 1) {
            return 0;
        }
        this.mLayoutState.mRecycle = true;
        int i = -1;
        if (!shouldHorizontallyReverseLayout() ? delta > 0 : delta <= 0) {
            i = 1;
        }
        this.mLayoutState.mLayoutDirection = i;
        boolean z = i == 1;
        int iAbs = Math.abs(delta);
        updateLayoutState(z, iAbs, true, state);
        int iFill = this.mLayoutState.mScrollingOffset + fill(recycler, state);
        if (z) {
            iFill += this.mLayoutState.replenishDelta;
        }
        if (iFill < 0) {
            return 0;
        }
        if (iAbs > iFill) {
            delta = i * iFill;
        }
        offsetChildren(-delta);
        this.mLayoutState.mLastScrollDelta = delta;
        recycleViews(recycler);
        return delta;
    }

    private void updateLayoutState(boolean layoutToEnd, int requiredSpace, boolean canUseExistingSpace, RecyclerView.State state) {
        View childClosestToStart;
        int i;
        int startAfterPadding;
        int decoratedEnd;
        int endAfterPadding;
        int i2;
        int prePosition;
        if (layoutToEnd) {
            childClosestToStart = getChildClosestToEnd();
            if (shouldHorizontallyReverseLayout()) {
                i = -getDecoratedStart(childClosestToStart);
                startAfterPadding = getStartAfterPadding();
                i2 = i + startAfterPadding;
            } else {
                decoratedEnd = getDecoratedEnd(childClosestToStart);
                endAfterPadding = getEndAfterPadding();
                i2 = decoratedEnd - endAfterPadding;
            }
        } else {
            childClosestToStart = getChildClosestToStart();
            if (shouldHorizontallyReverseLayout()) {
                decoratedEnd = getDecoratedEnd(childClosestToStart);
                endAfterPadding = getEndAfterPadding();
                i2 = decoratedEnd - endAfterPadding;
            } else {
                i = -getDecoratedStart(childClosestToStart);
                startAfterPadding = getStartAfterPadding();
                i2 = i + startAfterPadding;
            }
        }
        getDecoratedBoundsWithMargins(childClosestToStart, this.mLayoutState.mOffsetRect);
        LayoutState layoutState = this.mLayoutState;
        if (layoutToEnd) {
            prePosition = layoutState.getNextPosition(getPosition(childClosestToStart), this.mOrientation, this.mRows, this.mColumns, state);
        } else {
            prePosition = layoutState.getPrePosition(getPosition(childClosestToStart), this.mOrientation, this.mRows, this.mColumns, state);
        }
        layoutState.mCurrentPosition = prePosition;
        this.mLayoutState.mAvailable = requiredSpace;
        if (canUseExistingSpace) {
            this.mLayoutState.mAvailable -= i2;
        }
        this.mLayoutState.mScrollingOffset = i2;
    }

    private View getChildClosestToEnd() {
        return getChildAt(getChildCount() - 1);
    }

    private View getChildClosestToStart() {
        return getChildAt(0);
    }

    private void recycleViews(RecyclerView.Recycler recycler) {
        if (this.mLayoutState.mRecycle) {
            if (shouldHorizontallyReverseLayout()) {
                if (this.mLayoutState.mLayoutDirection == -1) {
                    recycleViewsFromStart(recycler);
                    return;
                } else {
                    recycleViewsFromEnd(recycler);
                    return;
                }
            }
            if (this.mLayoutState.mLayoutDirection == -1) {
                recycleViewsFromEnd(recycler);
            } else {
                recycleViewsFromStart(recycler);
            }
        }
    }

    private void recycleViewsFromStart(RecyclerView.Recycler recycler) {
        int startAfterPadding = getClipToPadding() ? getStartAfterPadding() : 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt != null && getDecoratedEnd(childAt) < startAfterPadding) {
                removeAndRecycleViewAt(childCount, recycler);
            }
        }
    }

    private void recycleViewsFromEnd(RecyclerView.Recycler recycler) {
        int width;
        if (getClipToPadding()) {
            width = getEndAfterPadding();
        } else {
            width = this.mOrientation == 0 ? getWidth() : getHeight();
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt != null && getDecoratedStart(childAt) > width) {
                removeAndRecycleViewAt(childCount, recycler);
            }
        }
    }

    private int getDecoratedEnd(View child) {
        int decoratedBottom;
        int i;
        LayoutParams layoutParams = (LayoutParams) child.getLayoutParams();
        if (this.mOrientation == 0) {
            decoratedBottom = getDecoratedRight(child);
            i = layoutParams.rightMargin;
        } else {
            decoratedBottom = getDecoratedBottom(child);
            i = layoutParams.bottomMargin;
        }
        return decoratedBottom + i;
    }

    private int getDecoratedStart(View child) {
        int decoratedTop;
        int i;
        LayoutParams layoutParams = (LayoutParams) child.getLayoutParams();
        if (this.mOrientation == 0) {
            decoratedTop = getDecoratedLeft(child);
            i = layoutParams.leftMargin;
        } else {
            decoratedTop = getDecoratedTop(child);
            i = layoutParams.topMargin;
        }
        return decoratedTop - i;
    }

    private int getEndAfterPadding() {
        int height;
        int paddingBottom;
        if (this.mOrientation == 0) {
            height = getWidth();
            paddingBottom = getPaddingEnd();
        } else {
            height = getHeight();
            paddingBottom = getPaddingBottom();
        }
        return height - paddingBottom;
    }

    private int getStartAfterPadding() {
        return this.mOrientation == 0 ? getPaddingStart() : getPaddingTop();
    }

    private int getClipToPaddingSize() {
        int paddingTop;
        int paddingBottom;
        if (this.mOrientation == 0) {
            paddingTop = getPaddingStart();
            paddingBottom = getPaddingEnd();
        } else {
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
        }
        return paddingTop + paddingBottom;
    }

    private int calculateClipOffset(boolean layoutToEnd, int position) {
        if (getClipToPadding()) {
            return 0;
        }
        int i = this.mOnePageSize;
        if (position % i == (layoutToEnd ? 0 : i - 1)) {
            return getClipToPaddingSize();
        }
        return 0;
    }

    private int getEnd() {
        return this.mOrientation == 0 ? getRealWidth() : getRealHeight();
    }

    private void offsetChildren(int delta) {
        if (this.mOrientation == 0) {
            offsetChildrenHorizontal(delta);
        } else {
            offsetChildrenVertical(delta);
        }
    }

    private boolean isIdle() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView == null || recyclerView.getScrollState() == 0;
    }

    private boolean isNeedMoveToNextSpan(int position) {
        if (this.mOrientation == 0) {
            return (position % this.mOnePageSize) / this.mColumns == 0;
        }
        return position % this.mColumns == 0;
    }

    private boolean isNeedMoveToPreSpan(int position) {
        if (this.mOrientation == 0) {
            return (position % this.mOnePageSize) / this.mColumns == this.mRows - 1;
        }
        int i = this.mColumns;
        return position % i == i - 1;
    }

    private int computeScrollOffset(RecyclerView.State state) {
        View childAt;
        int i;
        if (getChildCount() == 0 || state.getItemCount() == 0 || (childAt = getChildAt(0)) == null) {
            return 0;
        }
        int position = getPosition(childAt);
        float end = getEnd();
        int i2 = this.mOrientation;
        float f = end / (i2 == 0 ? this.mColumns : this.mRows);
        if (i2 == 0) {
            int pagerIndexByPosition = getPagerIndexByPosition(position);
            int i3 = this.mColumns;
            i = (pagerIndexByPosition * i3) + (position % i3);
        } else {
            i = position / this.mColumns;
        }
        if (shouldHorizontallyReverseLayout()) {
            return (computeScrollRange(state) - computeScrollExtent(state)) - Math.round((i * f) + (getDecoratedEnd(childAt) - getEndAfterPadding()));
        }
        return Math.round((i * f) + (getStartAfterPadding() - getDecoratedStart(childAt)));
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0 || state.getItemCount() == 0) {
            return 0;
        }
        return getEnd();
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0 || state.getItemCount() == 0) {
            return 0;
        }
        return Math.max(this.mPagerCount, 0) * getEnd();
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    final void calculateCurrentPagerIndexByPosition(int position) {
        setCurrentPagerIndex(getPagerIndexByPosition(position));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int targetPosition) {
        int position;
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        while (true) {
            childCount--;
            if (childCount < 0) {
                position = -1;
                break;
            }
            View childAt = getChildAt(childCount);
            if (childAt != null) {
                position = getPosition(childAt);
                if (position % this.mOnePageSize == 0) {
                    break;
                }
            }
        }
        if (position == -1) {
            return null;
        }
        float f = targetPosition < position ? -1.0f : 1.0f;
        if (shouldHorizontallyReverseLayout()) {
            f = -f;
        }
        if (this.mOrientation == 0) {
            return new PointF(f, 0.0f);
        }
        return new PointF(0.0f, f);
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {
        public LayoutParams(Context c, AttributeSet attrs) {
            super(c, attrs);
        }

        public LayoutParams(int width, int height) {
            super(width, height);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super(source);
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
        }

        public LayoutParams(RecyclerView.LayoutParams source) {
            super(source);
        }
    }

    private static class SmoothScrollToPosition implements Runnable {
        private final PagerGridLayoutManager mLayoutManager;
        private final int mPosition;
        private final RecyclerView mRecyclerView;

        SmoothScrollToPosition(int position, PagerGridLayoutManager layoutManager, RecyclerView recyclerView) {
            this.mPosition = position;
            this.mLayoutManager = layoutManager;
            this.mRecyclerView = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            PagerGridSmoothScroller pagerGridSmoothScroller = new PagerGridSmoothScroller(this.mRecyclerView, this.mLayoutManager);
            pagerGridSmoothScroller.setTargetPosition(this.mPosition);
            this.mLayoutManager.startSmoothScroll(pagerGridSmoothScroller);
        }
    }

    protected static class LayoutState {
        protected static final int LAYOUT_END = 1;
        protected static final int LAYOUT_START = -1;
        protected static final int SCROLLING_OFFSET_NAN = Integer.MIN_VALUE;
        protected int mAvailable;
        protected int mCurrentPosition;
        protected int mLastScrollDelta;
        protected int mLayoutDirection;
        protected final Rect mOffsetRect = new Rect();
        protected boolean mRecycle;
        protected int mScrollingOffset;
        protected int replenishDelta;

        protected LayoutState() {
        }

        protected void setOffsetRect(int left, int top, int right, int bottom) {
            this.mOffsetRect.set(left, top, right, bottom);
        }

        protected View next(RecyclerView.Recycler recycler) {
            return recycler.getViewForPosition(this.mCurrentPosition);
        }

        protected boolean hasMore(RecyclerView.State state) {
            int i = this.mCurrentPosition;
            return i >= 0 && i < state.getItemCount();
        }

        protected int getNextPosition(int currentPosition, int orientation, int rows, int columns, RecyclerView.State state) {
            int i;
            int i2;
            int i3 = rows * columns;
            if (orientation == 0 && (i = currentPosition % i3) != i3 - 1) {
                int i4 = currentPosition % columns;
                int i5 = i / columns;
                if (i5 != rows - 1 && ((i2 = currentPosition + columns) < state.getItemCount() || i4 == columns - 1)) {
                    return i2;
                }
                currentPosition -= i5 * columns;
            }
            return currentPosition + 1;
        }

        protected int getPrePosition(int currentPosition, int orientation, int rows, int columns, RecyclerView.State state) {
            int i;
            int i2 = rows * columns;
            if (orientation != 0 || (i = currentPosition % i2) == 0) {
                return currentPosition - 1;
            }
            return i / columns == 0 ? (currentPosition - 1) + ((rows - 1) * columns) : currentPosition - columns;
        }
    }

    protected static class LayoutChunkResult {
        protected int mConsumed;
        protected boolean mFinished;
        protected boolean mFocusable;
        protected boolean mIgnoreConsumed;

        protected void resetInternal() {
            this.mConsumed = 0;
            this.mFinished = false;
            this.mIgnoreConsumed = false;
            this.mFocusable = false;
        }

        protected LayoutChunkResult() {
        }
    }

    protected static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.launcher3.activity.view.PagerGridLayoutManager.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel source) {
                return new SavedState(source);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        protected int mColumns;
        protected int mCurrentPagerIndex;
        protected int mOrientation;
        protected boolean mReverseLayout;
        protected int mRows;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.mOrientation);
            dest.writeInt(this.mRows);
            dest.writeInt(this.mColumns);
            dest.writeInt(this.mCurrentPagerIndex);
        }

        public void readFromParcel(Parcel source) {
            this.mOrientation = source.readInt();
            this.mRows = source.readInt();
            this.mColumns = source.readInt();
            this.mCurrentPagerIndex = source.readInt();
        }

        public SavedState() {
            this.mCurrentPagerIndex = -1;
            this.mReverseLayout = false;
        }

        protected SavedState(Parcel in) {
            this.mCurrentPagerIndex = -1;
            this.mReverseLayout = false;
            this.mOrientation = in.readInt();
            this.mRows = in.readInt();
            this.mColumns = in.readInt();
            this.mCurrentPagerIndex = in.readInt();
        }

        public String toString() {
            return "SavedState{mOrientation=" + this.mOrientation + ", mRows=" + this.mRows + ", mColumns=" + this.mColumns + ", mCurrentPagerIndex=" + this.mCurrentPagerIndex + '}';
        }
    }
}
