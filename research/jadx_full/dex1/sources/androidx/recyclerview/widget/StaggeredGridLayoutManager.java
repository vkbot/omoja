package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
import j1.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView$LayoutManager implements RecyclerView$SmoothScroller$ScrollVectorProvider {
    static final boolean DEBUG = false;

    @Deprecated
    public static final int GAP_HANDLING_LAZY = 1;
    public static final int GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS = 2;
    public static final int GAP_HANDLING_NONE = 0;
    public static final int HORIZONTAL = 0;
    static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "StaggeredGridLManager";
    public static final int VERTICAL = 1;
    private int mFullSizeSpec;
    private boolean mLastLayoutFromEnd;
    private boolean mLastLayoutRTL;

    @NonNull
    private final LayoutState mLayoutState;
    private int mOrientation;
    private StaggeredGridLayoutManager$SavedState mPendingSavedState;
    private int[] mPrefetchDistances;

    @NonNull
    OrientationHelper mPrimaryOrientation;
    private BitSet mRemainingSpans;

    @NonNull
    OrientationHelper mSecondaryOrientation;
    private int mSizePerSpan;
    StaggeredGridLayoutManager$Span[] mSpans;
    private int mSpanCount = -1;
    boolean mReverseLayout = false;
    boolean mShouldReverseLayout = false;
    int mPendingScrollPosition = -1;
    int mPendingScrollPositionOffset = Integer.MIN_VALUE;
    StaggeredGridLayoutManager$LazySpanLookup mLazySpanLookup = new StaggeredGridLayoutManager$LazySpanLookup();
    private int mGapStrategy = 2;
    private final Rect mTmpRect = new Rect();
    private final StaggeredGridLayoutManager$AnchorInfo mAnchorInfo = new StaggeredGridLayoutManager$AnchorInfo(this);
    private boolean mLaidOutInvalidFullSpan = false;
    private boolean mSmoothScrollbarEnabled = true;
    private final Runnable mCheckForGapsRunnable = new StaggeredGridLayoutManager$1(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i9, int i10) {
        RecyclerView$LayoutManager$Properties properties = RecyclerView$LayoutManager.getProperties(context, attributeSet, i9, i10);
        setOrientation(properties.orientation);
        setSpanCount(properties.spanCount);
        setReverseLayout(properties.reverseLayout);
        this.mLayoutState = new LayoutState();
        createOrientationHelpers();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void appendViewToAllSpans(View view) {
        for (int i9 = this.mSpanCount - 1; i9 >= 0; i9--) {
            this.mSpans[i9].appendToSpan(view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void applyPendingSavedState(StaggeredGridLayoutManager$AnchorInfo staggeredGridLayoutManager$AnchorInfo) {
        StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState = this.mPendingSavedState;
        int i9 = staggeredGridLayoutManager$SavedState.mSpanOffsetsSize;
        if (i9 > 0) {
            if (i9 == this.mSpanCount) {
                for (int i10 = 0; i10 < this.mSpanCount; i10++) {
                    this.mSpans[i10].clear();
                    StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState2 = this.mPendingSavedState;
                    int endAfterPadding = staggeredGridLayoutManager$SavedState2.mSpanOffsets[i10];
                    if (endAfterPadding != Integer.MIN_VALUE) {
                        boolean z8 = staggeredGridLayoutManager$SavedState2.mAnchorLayoutFromEnd;
                        OrientationHelper orientationHelper = this.mPrimaryOrientation;
                        endAfterPadding += z8 ? orientationHelper.getEndAfterPadding() : orientationHelper.getStartAfterPadding();
                    }
                    this.mSpans[i10].setLine(endAfterPadding);
                }
            } else {
                staggeredGridLayoutManager$SavedState.invalidateSpanInfo();
                StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState3 = this.mPendingSavedState;
                staggeredGridLayoutManager$SavedState3.mAnchorPosition = staggeredGridLayoutManager$SavedState3.mVisibleAnchorPosition;
            }
        }
        StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState4 = this.mPendingSavedState;
        this.mLastLayoutRTL = staggeredGridLayoutManager$SavedState4.mLastLayoutRTL;
        setReverseLayout(staggeredGridLayoutManager$SavedState4.mReverseLayout);
        resolveShouldLayoutReverse();
        StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState5 = this.mPendingSavedState;
        int i11 = staggeredGridLayoutManager$SavedState5.mAnchorPosition;
        if (i11 != -1) {
            this.mPendingScrollPosition = i11;
            staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd = staggeredGridLayoutManager$SavedState5.mAnchorLayoutFromEnd;
        } else {
            staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
        }
        if (staggeredGridLayoutManager$SavedState5.mSpanLookupSize > 1) {
            StaggeredGridLayoutManager$LazySpanLookup staggeredGridLayoutManager$LazySpanLookup = this.mLazySpanLookup;
            staggeredGridLayoutManager$LazySpanLookup.mData = staggeredGridLayoutManager$SavedState5.mSpanLookup;
            staggeredGridLayoutManager$LazySpanLookup.mFullSpanItems = staggeredGridLayoutManager$SavedState5.mFullSpanItems;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void attachViewToSpans(View view, StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams, LayoutState layoutState) {
        if (layoutState.mLayoutDirection == 1) {
            if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                appendViewToAllSpans(view);
                return;
            } else {
                staggeredGridLayoutManager$LayoutParams.mSpan.appendToSpan(view);
                return;
            }
        }
        if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
            prependViewToAllSpans(view);
        } else {
            staggeredGridLayoutManager$LayoutParams.mSpan.prependToSpan(view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int calculateScrollDirectionForPosition(int i9) {
        if (getChildCount() == 0) {
            return this.mShouldReverseLayout ? 1 : -1;
        }
        return (i9 < getFirstChildPosition()) != this.mShouldReverseLayout ? -1 : 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean checkSpanForGap(StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span) {
        boolean z8;
        if (!this.mShouldReverseLayout) {
            if (staggeredGridLayoutManager$Span.getStartLine() > this.mPrimaryOrientation.getStartAfterPadding()) {
                z8 = staggeredGridLayoutManager$Span.getLayoutParams(staggeredGridLayoutManager$Span.mViews.get(0)).mFullSpan;
                return !z8;
            }
            return false;
        }
        if (staggeredGridLayoutManager$Span.getEndLine() < this.mPrimaryOrientation.getEndAfterPadding()) {
            ArrayList<View> arrayList = staggeredGridLayoutManager$Span.mViews;
            z8 = staggeredGridLayoutManager$Span.getLayoutParams(arrayList.get(arrayList.size() - 1)).mFullSpan;
            return !z8;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int computeScrollExtent(RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.computeScrollExtent(recyclerView$State, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleItemClosestToEnd(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int computeScrollOffset(RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.computeScrollOffset(recyclerView$State, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleItemClosestToEnd(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int computeScrollRange(RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.computeScrollRange(recyclerView$State, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleItemClosestToEnd(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int convertFocusDirectionToLayoutDirection(int i9) {
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
    private StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem createFullSpanItemFromEnd(int i9) {
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem();
        staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapPerSpan = new int[this.mSpanCount];
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapPerSpan[i10] = i9 - this.mSpans[i10].getEndLine(i9);
        }
        return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem createFullSpanItemFromStart(int i9) {
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem();
        staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapPerSpan = new int[this.mSpanCount];
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapPerSpan[i10] = this.mSpans[i10].getStartLine(i9) - i9;
        }
        return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void createOrientationHelpers() {
        this.mPrimaryOrientation = OrientationHelper.createOrientationHelper(this, this.mOrientation);
        this.mSecondaryOrientation = OrientationHelper.createOrientationHelper(this, 1 - this.mOrientation);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.recyclerview.widget.RecyclerView$LayoutManager, androidx.recyclerview.widget.StaggeredGridLayoutManager] */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.recyclerview.widget.StaggeredGridLayoutManager] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v5 */
    private int fill(RecyclerView$Recycler recyclerView$Recycler, LayoutState layoutState, RecyclerView$State recyclerView$State) {
        int i9;
        int maxEnd;
        StaggeredGridLayoutManager$Span nextSpan;
        int minStart;
        int decoratedMeasurement;
        int startAfterPadding;
        int decoratedMeasurement2;
        ?? r1;
        StaggeredGridLayoutManager staggeredGridLayoutManager = this;
        ?? r9 = 0;
        staggeredGridLayoutManager.mRemainingSpans.set(0, staggeredGridLayoutManager.mSpanCount, true);
        if (staggeredGridLayoutManager.mLayoutState.mInfinite) {
            i9 = layoutState.mLayoutDirection == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            i9 = layoutState.mLayoutDirection == 1 ? layoutState.mEndLine + layoutState.mAvailable : layoutState.mStartLine - layoutState.mAvailable;
        }
        int i10 = i9;
        staggeredGridLayoutManager.updateAllRemainingSpans(layoutState.mLayoutDirection, i10);
        boolean z8 = staggeredGridLayoutManager.mShouldReverseLayout;
        OrientationHelper orientationHelper = staggeredGridLayoutManager.mPrimaryOrientation;
        int endAfterPadding = z8 ? orientationHelper.getEndAfterPadding() : orientationHelper.getStartAfterPadding();
        boolean z9 = false;
        ?? r10 = staggeredGridLayoutManager;
        while (layoutState.hasMore(recyclerView$State) && (r10.mLayoutState.mInfinite || !r10.mRemainingSpans.isEmpty())) {
            View next = layoutState.next(recyclerView$Recycler);
            StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) next.getLayoutParams();
            int viewLayoutPosition = staggeredGridLayoutManager$LayoutParams.getViewLayoutPosition();
            int span = r10.mLazySpanLookup.getSpan(viewLayoutPosition);
            ?? r11 = span == -1 ? 1 : r9;
            if (r11 != 0) {
                nextSpan = staggeredGridLayoutManager$LayoutParams.mFullSpan ? r10.mSpans[r9] : r10.getNextSpan(layoutState);
                r10.mLazySpanLookup.setSpan(viewLayoutPosition, nextSpan);
            } else {
                nextSpan = r10.mSpans[span];
            }
            StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span = nextSpan;
            staggeredGridLayoutManager$LayoutParams.mSpan = staggeredGridLayoutManager$Span;
            if (layoutState.mLayoutDirection == 1) {
                r10.addView(next);
            } else {
                r10.addView(next, r9);
            }
            r10.measureChildWithDecorationsAndMargin(next, staggeredGridLayoutManager$LayoutParams, r9);
            int i11 = layoutState.mLayoutDirection;
            boolean z10 = staggeredGridLayoutManager$LayoutParams.mFullSpan;
            if (i11 == 1) {
                decoratedMeasurement = z10 ? r10.getMaxEnd(endAfterPadding) : staggeredGridLayoutManager$Span.getEndLine(endAfterPadding);
                minStart = r10.mPrimaryOrientation.getDecoratedMeasurement(next) + decoratedMeasurement;
                if (r11 != 0 && staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromEnd = r10.createFullSpanItemFromEnd(decoratedMeasurement);
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromEnd.mGapDir = -1;
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromEnd.mPosition = viewLayoutPosition;
                    r10.mLazySpanLookup.addFullSpanItem(staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromEnd);
                }
            } else {
                minStart = z10 ? r10.getMinStart(endAfterPadding) : staggeredGridLayoutManager$Span.getStartLine(endAfterPadding);
                decoratedMeasurement = minStart - r10.mPrimaryOrientation.getDecoratedMeasurement(next);
                if (r11 != 0 && staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                    StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromStart = r10.createFullSpanItemFromStart(minStart);
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromStart.mGapDir = 1;
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromStart.mPosition = viewLayoutPosition;
                    r10.mLazySpanLookup.addFullSpanItem(staggeredGridLayoutManager$LazySpanLookup$FullSpanItemCreateFullSpanItemFromStart);
                }
            }
            if (staggeredGridLayoutManager$LayoutParams.mFullSpan && layoutState.mItemDirection == -1) {
                if (r11 != 0) {
                    r10.mLaidOutInvalidFullSpan = true;
                } else {
                    if (!(layoutState.mLayoutDirection == 1 ? r10.areAllEndsEqual() : r10.areAllStartsEqual())) {
                        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem fullSpanItem = r10.mLazySpanLookup.getFullSpanItem(viewLayoutPosition);
                        if (fullSpanItem != null) {
                            fullSpanItem.mHasUnwantedGapAfter = true;
                        }
                        r10.mLaidOutInvalidFullSpan = true;
                    }
                }
            }
            r10.attachViewToSpans(next, staggeredGridLayoutManager$LayoutParams, layoutState);
            if (r10.isLayoutRTL() && r10.mOrientation == 1) {
                boolean z11 = staggeredGridLayoutManager$LayoutParams.mFullSpan;
                OrientationHelper orientationHelper2 = r10.mSecondaryOrientation;
                decoratedMeasurement2 = z11 ? orientationHelper2.getEndAfterPadding() : orientationHelper2.getEndAfterPadding() - (((r10.mSpanCount - 1) - staggeredGridLayoutManager$Span.mIndex) * r10.mSizePerSpan);
                startAfterPadding = decoratedMeasurement2 - r10.mSecondaryOrientation.getDecoratedMeasurement(next);
            } else {
                if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                    startAfterPadding = r10.mSecondaryOrientation.getStartAfterPadding();
                } else {
                    startAfterPadding = r10.mSecondaryOrientation.getStartAfterPadding() + (staggeredGridLayoutManager$Span.mIndex * r10.mSizePerSpan);
                }
                decoratedMeasurement2 = r10.mSecondaryOrientation.getDecoratedMeasurement(next) + startAfterPadding;
            }
            int i12 = decoratedMeasurement2;
            int i13 = startAfterPadding;
            if (r10.mOrientation == 1) {
                r10.layoutDecoratedWithMargins(next, i13, decoratedMeasurement, i12, minStart);
                r1 = this;
            } else {
                r10.layoutDecoratedWithMargins(next, decoratedMeasurement, i13, minStart, i12);
                r1 = r10;
            }
            boolean z12 = staggeredGridLayoutManager$LayoutParams.mFullSpan;
            LayoutState layoutState2 = r1.mLayoutState;
            if (z12) {
                r1.updateAllRemainingSpans(layoutState2.mLayoutDirection, i10);
            } else {
                r1.updateRemainingSpans(staggeredGridLayoutManager$Span, layoutState2.mLayoutDirection, i10);
            }
            r1.recycle(recyclerView$Recycler, r1.mLayoutState);
            if (r1.mLayoutState.mStopInFocusable && next.hasFocusable()) {
                boolean z13 = staggeredGridLayoutManager$LayoutParams.mFullSpan;
                BitSet bitSet = r1.mRemainingSpans;
                if (z13) {
                    bitSet.clear();
                } else {
                    bitSet.set(staggeredGridLayoutManager$Span.mIndex, false);
                }
            }
            z9 = true;
            r9 = 0;
            r10 = r1;
        }
        if (!z9) {
            r10.recycle(recyclerView$Recycler, r10.mLayoutState);
        }
        int i14 = r10.mLayoutState.mLayoutDirection;
        OrientationHelper orientationHelper3 = r10.mPrimaryOrientation;
        if (i14 == -1) {
            maxEnd = r10.mPrimaryOrientation.getStartAfterPadding() - r10.getMinStart(orientationHelper3.getStartAfterPadding());
        } else {
            maxEnd = r10.getMaxEnd(orientationHelper3.getEndAfterPadding()) - r10.mPrimaryOrientation.getEndAfterPadding();
        }
        if (maxEnd > 0) {
            return Math.min(layoutState.mAvailable, maxEnd);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int findFirstReferenceChildPosition(int i9) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            int position = getPosition(getChildAt(i10));
            if (position >= 0 && position < i9) {
                return position;
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int findLastReferenceChildPosition(int i9) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < i9) {
                return position;
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void fixEndGap(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, boolean z8) {
        int endAfterPadding;
        int maxEnd = getMaxEnd(Integer.MIN_VALUE);
        if (maxEnd != Integer.MIN_VALUE && (endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding() - maxEnd) > 0) {
            int i9 = endAfterPadding - (-scrollBy(-endAfterPadding, recyclerView$Recycler, recyclerView$State));
            if (!z8 || i9 <= 0) {
                return;
            }
            this.mPrimaryOrientation.offsetChildren(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void fixStartGap(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, boolean z8) {
        int startAfterPadding;
        int minStart = getMinStart(Integer.MAX_VALUE);
        if (minStart != Integer.MAX_VALUE && (startAfterPadding = minStart - this.mPrimaryOrientation.getStartAfterPadding()) > 0) {
            int iScrollBy = startAfterPadding - scrollBy(startAfterPadding, recyclerView$Recycler, recyclerView$State);
            if (!z8 || iScrollBy <= 0) {
                return;
            }
            this.mPrimaryOrientation.offsetChildren(-iScrollBy);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getMaxEnd(int i9) {
        int endLine = this.mSpans[0].getEndLine(i9);
        for (int i10 = 1; i10 < this.mSpanCount; i10++) {
            int endLine2 = this.mSpans[i10].getEndLine(i9);
            if (endLine2 > endLine) {
                endLine = endLine2;
            }
        }
        return endLine;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getMaxStart(int i9) {
        int startLine = this.mSpans[0].getStartLine(i9);
        for (int i10 = 1; i10 < this.mSpanCount; i10++) {
            int startLine2 = this.mSpans[i10].getStartLine(i9);
            if (startLine2 > startLine) {
                startLine = startLine2;
            }
        }
        return startLine;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getMinEnd(int i9) {
        int endLine = this.mSpans[0].getEndLine(i9);
        for (int i10 = 1; i10 < this.mSpanCount; i10++) {
            int endLine2 = this.mSpans[i10].getEndLine(i9);
            if (endLine2 < endLine) {
                endLine = endLine2;
            }
        }
        return endLine;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getMinStart(int i9) {
        int startLine = this.mSpans[0].getStartLine(i9);
        for (int i10 = 1; i10 < this.mSpanCount; i10++) {
            int startLine2 = this.mSpans[i10].getStartLine(i9);
            if (startLine2 < startLine) {
                startLine = startLine2;
            }
        }
        return startLine;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private StaggeredGridLayoutManager$Span getNextSpan(LayoutState layoutState) {
        int i9;
        int i10;
        int i11;
        boolean zPreferLastSpan = preferLastSpan(layoutState.mLayoutDirection);
        int i12 = this.mSpanCount;
        if (zPreferLastSpan) {
            i10 = i12 - 1;
            i11 = -1;
            i9 = -1;
        } else {
            i9 = i12;
            i10 = 0;
            i11 = 1;
        }
        int i13 = layoutState.mLayoutDirection;
        OrientationHelper orientationHelper = this.mPrimaryOrientation;
        StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span = null;
        if (i13 == 1) {
            int startAfterPadding = orientationHelper.getStartAfterPadding();
            int i14 = Integer.MAX_VALUE;
            while (i10 != i9) {
                StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span2 = this.mSpans[i10];
                int endLine = staggeredGridLayoutManager$Span2.getEndLine(startAfterPadding);
                if (endLine < i14) {
                    staggeredGridLayoutManager$Span = staggeredGridLayoutManager$Span2;
                    i14 = endLine;
                }
                i10 += i11;
            }
            return staggeredGridLayoutManager$Span;
        }
        int endAfterPadding = orientationHelper.getEndAfterPadding();
        int i15 = Integer.MIN_VALUE;
        while (i10 != i9) {
            StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span3 = this.mSpans[i10];
            int startLine = staggeredGridLayoutManager$Span3.getStartLine(endAfterPadding);
            if (startLine > i15) {
                staggeredGridLayoutManager$Span = staggeredGridLayoutManager$Span3;
                i15 = startLine;
            }
            i10 += i11;
        }
        return staggeredGridLayoutManager$Span;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:15:0x0026  */
    /* JADX WARN: Code duplicated, block: B:17:0x0029 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x002c  */
    /* JADX WARN: Code duplicated, block: B:20:0x0037  */
    /* JADX WARN: Code duplicated, block: B:21:0x003d  */
    /* JADX WARN: Code duplicated, block: B:24:0x0045  */
    /* JADX WARN: Code duplicated, block: B:26:0x0049  */
    /* JADX WARN: Code duplicated, block: B:27:0x004e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0054  */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    private void handleUpdate(int i9, int i10, int i11) {
        int i12;
        int i13;
        int lastChildPosition;
        int lastChildPosition2 = this.mShouldReverseLayout ? getLastChildPosition() : getFirstChildPosition();
        if (i11 == 8) {
            if (i9 < i10) {
                i12 = i10 + 1;
            } else {
                i12 = i9 + 1;
                i13 = i10;
            }
            this.mLazySpanLookup.invalidateAfter(i13);
            if (i11 != 1) {
                this.mLazySpanLookup.offsetForAddition(i9, i10);
            } else if (i11 != 2) {
                this.mLazySpanLookup.offsetForRemoval(i9, i10);
            } else if (i11 == 8) {
                this.mLazySpanLookup.offsetForRemoval(i9, 1);
                this.mLazySpanLookup.offsetForAddition(i10, 1);
            }
            if (i12 <= lastChildPosition2) {
                return;
            }
            if (this.mShouldReverseLayout) {
                lastChildPosition = getFirstChildPosition();
            } else {
                lastChildPosition = getLastChildPosition();
            }
            if (i13 <= lastChildPosition) {
                requestLayout();
            }
        }
        i12 = i9 + i10;
        i13 = i9;
        this.mLazySpanLookup.invalidateAfter(i13);
        if (i11 != 1) {
            this.mLazySpanLookup.offsetForAddition(i9, i10);
        } else if (i11 != 2) {
            this.mLazySpanLookup.offsetForRemoval(i9, i10);
        } else if (i11 == 8) {
            this.mLazySpanLookup.offsetForRemoval(i9, 1);
            this.mLazySpanLookup.offsetForAddition(i10, 1);
        }
        if (i12 <= lastChildPosition2) {
            return;
        }
        if (this.mShouldReverseLayout) {
            lastChildPosition = getFirstChildPosition();
        } else {
            lastChildPosition = getLastChildPosition();
        }
        if (i13 <= lastChildPosition) {
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void measureChildWithDecorationsAndMargin(View view, StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams, boolean z8) {
        boolean z9 = staggeredGridLayoutManager$LayoutParams.mFullSpan;
        int i9 = this.mOrientation;
        if (z9) {
            if (i9 != 1) {
                measureChildWithDecorationsAndMargin(view, RecyclerView$LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft(), ((ViewGroup$MarginLayoutParams) staggeredGridLayoutManager$LayoutParams).width, true), this.mFullSizeSpec, z8);
                return;
            }
            measureChildWithDecorationsAndMargin(view, this.mFullSizeSpec, RecyclerView$LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop(), ((ViewGroup$MarginLayoutParams) staggeredGridLayoutManager$LayoutParams).height, true), z8);
            return;
        }
        if (i9 != 1) {
            measureChildWithDecorationsAndMargin(view, RecyclerView$LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft(), ((ViewGroup$MarginLayoutParams) staggeredGridLayoutManager$LayoutParams).width, true), RecyclerView$LayoutManager.getChildMeasureSpec(this.mSizePerSpan, getHeightMode(), 0, ((ViewGroup$MarginLayoutParams) staggeredGridLayoutManager$LayoutParams).height, false), z8);
            return;
        }
        measureChildWithDecorationsAndMargin(view, RecyclerView$LayoutManager.getChildMeasureSpec(this.mSizePerSpan, getWidthMode(), 0, ((ViewGroup$MarginLayoutParams) staggeredGridLayoutManager$LayoutParams).width, false), RecyclerView$LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop(), ((ViewGroup$MarginLayoutParams) staggeredGridLayoutManager$LayoutParams).height, true), z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:86:0x0155  */
    private void onLayoutChildren(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State, boolean z8) {
        boolean z9;
        StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState;
        StaggeredGridLayoutManager$AnchorInfo staggeredGridLayoutManager$AnchorInfo = this.mAnchorInfo;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && recyclerView$State.getItemCount() == 0) {
            removeAndRecycleAllViews(recyclerView$Recycler);
            staggeredGridLayoutManager$AnchorInfo.reset();
            return;
        }
        boolean z10 = (staggeredGridLayoutManager$AnchorInfo.mValid && this.mPendingScrollPosition == -1 && this.mPendingSavedState == null) ? false : true;
        if (z10) {
            staggeredGridLayoutManager$AnchorInfo.reset();
            if (this.mPendingSavedState != null) {
                applyPendingSavedState(staggeredGridLayoutManager$AnchorInfo);
            } else {
                resolveShouldLayoutReverse();
                staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
            }
            updateAnchorInfoForLayout(recyclerView$State, staggeredGridLayoutManager$AnchorInfo);
            staggeredGridLayoutManager$AnchorInfo.mValid = true;
        }
        if (this.mPendingSavedState == null && this.mPendingScrollPosition == -1 && (staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd != this.mLastLayoutFromEnd || isLayoutRTL() != this.mLastLayoutRTL)) {
            this.mLazySpanLookup.clear();
            staggeredGridLayoutManager$AnchorInfo.mInvalidateOffsets = true;
        }
        if (getChildCount() > 0 && ((staggeredGridLayoutManager$SavedState = this.mPendingSavedState) == null || staggeredGridLayoutManager$SavedState.mSpanOffsetsSize < 1)) {
            if (staggeredGridLayoutManager$AnchorInfo.mInvalidateOffsets) {
                for (int i9 = 0; i9 < this.mSpanCount; i9++) {
                    this.mSpans[i9].clear();
                    int i10 = staggeredGridLayoutManager$AnchorInfo.mOffset;
                    if (i10 != Integer.MIN_VALUE) {
                        this.mSpans[i9].setLine(i10);
                    }
                }
            } else if (z10 || this.mAnchorInfo.mSpanReferenceLines == null) {
                for (int i11 = 0; i11 < this.mSpanCount; i11++) {
                    this.mSpans[i11].cacheReferenceLineAndClear(this.mShouldReverseLayout, staggeredGridLayoutManager$AnchorInfo.mOffset);
                }
                this.mAnchorInfo.saveSpanReferenceLines(this.mSpans);
            } else {
                for (int i12 = 0; i12 < this.mSpanCount; i12++) {
                    StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span = this.mSpans[i12];
                    staggeredGridLayoutManager$Span.clear();
                    staggeredGridLayoutManager$Span.setLine(this.mAnchorInfo.mSpanReferenceLines[i12]);
                }
            }
        }
        detachAndScrapAttachedViews(recyclerView$Recycler);
        this.mLayoutState.mRecycle = false;
        this.mLaidOutInvalidFullSpan = false;
        updateMeasureSpecs(this.mSecondaryOrientation.getTotalSpace());
        updateLayoutState(staggeredGridLayoutManager$AnchorInfo.mPosition, recyclerView$State);
        if (staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd) {
            setLayoutStateDirection(-1);
            fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State);
            setLayoutStateDirection(1);
            LayoutState layoutState = this.mLayoutState;
            layoutState.mCurrentPosition = staggeredGridLayoutManager$AnchorInfo.mPosition + layoutState.mItemDirection;
            fill(recyclerView$Recycler, layoutState, recyclerView$State);
        } else {
            setLayoutStateDirection(1);
            fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State);
            setLayoutStateDirection(-1);
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mCurrentPosition = staggeredGridLayoutManager$AnchorInfo.mPosition + layoutState2.mItemDirection;
            fill(recyclerView$Recycler, layoutState2, recyclerView$State);
        }
        repositionToWrapContentIfNecessary();
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout) {
                fixEndGap(recyclerView$Recycler, recyclerView$State, true);
                fixStartGap(recyclerView$Recycler, recyclerView$State, false);
            } else {
                fixStartGap(recyclerView$Recycler, recyclerView$State, true);
                fixEndGap(recyclerView$Recycler, recyclerView$State, false);
            }
        }
        if (z8 && !recyclerView$State.isPreLayout() && this.mGapStrategy != 0 && getChildCount() > 0 && (this.mLaidOutInvalidFullSpan || hasGapsToFix() != null)) {
            removeCallbacks(this.mCheckForGapsRunnable);
            z9 = checkForGaps();
        }
        if (recyclerView$State.isPreLayout()) {
            this.mAnchorInfo.reset();
        }
        this.mLastLayoutFromEnd = staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd;
        this.mLastLayoutRTL = isLayoutRTL();
        if (z9) {
            this.mAnchorInfo.reset();
            onLayoutChildren(recyclerView$Recycler, recyclerView$State, false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean preferLastSpan(int i9) {
        if (this.mOrientation == 0) {
            return (i9 == -1) != this.mShouldReverseLayout;
        }
        return ((i9 == -1) == this.mShouldReverseLayout) == isLayoutRTL();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void prependViewToAllSpans(View view) {
        for (int i9 = this.mSpanCount - 1; i9 >= 0; i9--) {
            this.mSpans[i9].prependToSpan(view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void recycle(RecyclerView$Recycler recyclerView$Recycler, LayoutState layoutState) {
        if (!layoutState.mRecycle || layoutState.mInfinite) {
            return;
        }
        int i9 = layoutState.mAvailable;
        int i10 = layoutState.mLayoutDirection;
        if (i9 == 0) {
            if (i10 == -1) {
                recycleFromEnd(recyclerView$Recycler, layoutState.mEndLine);
                return;
            } else {
                recycleFromStart(recyclerView$Recycler, layoutState.mStartLine);
                return;
            }
        }
        if (i10 != -1) {
            int minEnd = getMinEnd(layoutState.mEndLine) - layoutState.mEndLine;
            int iMin = layoutState.mStartLine;
            if (minEnd >= 0) {
                iMin += Math.min(minEnd, layoutState.mAvailable);
            }
            recycleFromStart(recyclerView$Recycler, iMin);
            return;
        }
        int i11 = layoutState.mStartLine;
        int maxStart = i11 - getMaxStart(i11);
        int iMin2 = layoutState.mEndLine;
        if (maxStart >= 0) {
            iMin2 -= Math.min(maxStart, layoutState.mAvailable);
        }
        recycleFromEnd(recyclerView$Recycler, iMin2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void recycleFromEnd(RecyclerView$Recycler recyclerView$Recycler, int i9) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.mPrimaryOrientation.getDecoratedStart(childAt) < i9 || this.mPrimaryOrientation.getTransformedStartWithDecoration(childAt) < i9) {
                return;
            }
            StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) childAt.getLayoutParams();
            if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                for (int i10 = 0; i10 < this.mSpanCount; i10++) {
                    if (this.mSpans[i10].mViews.size() == 1) {
                        return;
                    }
                }
                for (int i11 = 0; i11 < this.mSpanCount; i11++) {
                    this.mSpans[i11].popEnd();
                }
            } else if (staggeredGridLayoutManager$LayoutParams.mSpan.mViews.size() == 1) {
                return;
            } else {
                staggeredGridLayoutManager$LayoutParams.mSpan.popEnd();
            }
            removeAndRecycleView(childAt, recyclerView$Recycler);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void recycleFromStart(RecyclerView$Recycler recyclerView$Recycler, int i9) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.mPrimaryOrientation.getDecoratedEnd(childAt) > i9 || this.mPrimaryOrientation.getTransformedEndWithDecoration(childAt) > i9) {
                return;
            }
            StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) childAt.getLayoutParams();
            if (staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                for (int i10 = 0; i10 < this.mSpanCount; i10++) {
                    if (this.mSpans[i10].mViews.size() == 1) {
                        return;
                    }
                }
                for (int i11 = 0; i11 < this.mSpanCount; i11++) {
                    this.mSpans[i11].popStart();
                }
            } else if (staggeredGridLayoutManager$LayoutParams.mSpan.mViews.size() == 1) {
                return;
            } else {
                staggeredGridLayoutManager$LayoutParams.mSpan.popStart();
            }
            removeAndRecycleView(childAt, recyclerView$Recycler);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void repositionToWrapContentIfNecessary() {
        if (this.mSecondaryOrientation.getMode() == 1073741824) {
            return;
        }
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            float decoratedMeasurement = this.mSecondaryOrientation.getDecoratedMeasurement(childAt);
            if (decoratedMeasurement >= fMax) {
                if (((StaggeredGridLayoutManager$LayoutParams) childAt.getLayoutParams()).isFullSpan()) {
                    decoratedMeasurement = (decoratedMeasurement * 1.0f) / this.mSpanCount;
                }
                fMax = Math.max(fMax, decoratedMeasurement);
            }
        }
        int i10 = this.mSizePerSpan;
        int iRound = Math.round(fMax * this.mSpanCount);
        if (this.mSecondaryOrientation.getMode() == Integer.MIN_VALUE) {
            iRound = Math.min(iRound, this.mSecondaryOrientation.getTotalSpace());
        }
        updateMeasureSpecs(iRound);
        if (this.mSizePerSpan == i10) {
            return;
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt2 = getChildAt(i11);
            StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) childAt2.getLayoutParams();
            if (!staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                if (isLayoutRTL() && this.mOrientation == 1) {
                    int i12 = this.mSpanCount;
                    int i13 = staggeredGridLayoutManager$LayoutParams.mSpan.mIndex;
                    childAt2.offsetLeftAndRight(((-((i12 - 1) - i13)) * this.mSizePerSpan) - ((-((i12 - 1) - i13)) * i10));
                } else {
                    int i14 = staggeredGridLayoutManager$LayoutParams.mSpan.mIndex;
                    int i15 = this.mSizePerSpan * i14;
                    int i16 = i14 * i10;
                    if (this.mOrientation == 1) {
                        childAt2.offsetLeftAndRight(i15 - i16);
                    } else {
                        childAt2.offsetTopAndBottom(i15 - i16);
                    }
                }
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
    private void setLayoutStateDirection(int i9) {
        LayoutState layoutState = this.mLayoutState;
        layoutState.mLayoutDirection = i9;
        layoutState.mItemDirection = this.mShouldReverseLayout != (i9 == -1) ? -1 : 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateAllRemainingSpans(int i9, int i10) {
        for (int i11 = 0; i11 < this.mSpanCount; i11++) {
            if (!this.mSpans[i11].mViews.isEmpty()) {
                updateRemainingSpans(this.mSpans[i11], i9, i10);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean updateAnchorFromChildren(RecyclerView$State recyclerView$State, StaggeredGridLayoutManager$AnchorInfo staggeredGridLayoutManager$AnchorInfo) {
        staggeredGridLayoutManager$AnchorInfo.mPosition = this.mLastLayoutFromEnd ? findLastReferenceChildPosition(recyclerView$State.getItemCount()) : findFirstReferenceChildPosition(recyclerView$State.getItemCount());
        staggeredGridLayoutManager$AnchorInfo.mOffset = Integer.MIN_VALUE;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateLayoutState(int i9, RecyclerView$State recyclerView$State) {
        int totalSpace;
        int totalSpace2;
        int targetScrollPosition;
        LayoutState layoutState = this.mLayoutState;
        boolean z8 = false;
        layoutState.mAvailable = 0;
        layoutState.mCurrentPosition = i9;
        if (!isSmoothScrolling() || (targetScrollPosition = recyclerView$State.getTargetScrollPosition()) == -1) {
            totalSpace = 0;
            totalSpace2 = 0;
        } else {
            boolean z9 = this.mShouldReverseLayout;
            boolean z10 = targetScrollPosition < i9;
            OrientationHelper orientationHelper = this.mPrimaryOrientation;
            if (z9 == z10) {
                totalSpace = orientationHelper.getTotalSpace();
                totalSpace2 = 0;
            } else {
                totalSpace2 = orientationHelper.getTotalSpace();
                totalSpace = 0;
            }
        }
        boolean clipToPadding = getClipToPadding();
        LayoutState layoutState2 = this.mLayoutState;
        if (clipToPadding) {
            layoutState2.mStartLine = this.mPrimaryOrientation.getStartAfterPadding() - totalSpace2;
            this.mLayoutState.mEndLine = this.mPrimaryOrientation.getEndAfterPadding() + totalSpace;
        } else {
            layoutState2.mEndLine = this.mPrimaryOrientation.getEnd() + totalSpace;
            this.mLayoutState.mStartLine = -totalSpace2;
        }
        LayoutState layoutState3 = this.mLayoutState;
        layoutState3.mStopInFocusable = false;
        layoutState3.mRecycle = true;
        if (this.mPrimaryOrientation.getMode() == 0 && this.mPrimaryOrientation.getEnd() == 0) {
            z8 = true;
        }
        layoutState3.mInfinite = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateRemainingSpans(StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span, int i9, int i10) {
        int deletedSize = staggeredGridLayoutManager$Span.getDeletedSize();
        if (i9 == -1) {
            if (staggeredGridLayoutManager$Span.getStartLine() + deletedSize <= i10) {
                this.mRemainingSpans.set(staggeredGridLayoutManager$Span.mIndex, false);
            }
        } else if (staggeredGridLayoutManager$Span.getEndLine() - deletedSize >= i10) {
            this.mRemainingSpans.set(staggeredGridLayoutManager$Span.mIndex, false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int updateSpecWithExtra(int i9, int i10, int i11) {
        int mode;
        return (!(i10 == 0 && i11 == 0) && ((mode = View$MeasureSpec.getMode(i9)) == Integer.MIN_VALUE || mode == 1073741824)) ? View$MeasureSpec.makeMeasureSpec(Math.max(0, (View$MeasureSpec.getSize(i9) - i10) - i11), mode) : i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean areAllEndsEqual() {
        int endLine = this.mSpans[0].getEndLine(Integer.MIN_VALUE);
        for (int i9 = 1; i9 < this.mSpanCount; i9++) {
            if (this.mSpans[i9].getEndLine(Integer.MIN_VALUE) != endLine) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean areAllStartsEqual() {
        int startLine = this.mSpans[0].getStartLine(Integer.MIN_VALUE);
        for (int i9 = 1; i9 < this.mSpanCount; i9++) {
            if (this.mSpans[i9].getStartLine(Integer.MIN_VALUE) != startLine) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
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
    public boolean checkForGaps() {
        int firstChildPosition;
        int lastChildPosition;
        if (getChildCount() == 0 || this.mGapStrategy == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.mShouldReverseLayout) {
            firstChildPosition = getLastChildPosition();
            lastChildPosition = getFirstChildPosition();
        } else {
            firstChildPosition = getFirstChildPosition();
            lastChildPosition = getLastChildPosition();
        }
        if (firstChildPosition == 0 && hasGapsToFix() != null) {
            this.mLazySpanLookup.clear();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
        if (!this.mLaidOutInvalidFullSpan) {
            return false;
        }
        int i9 = this.mShouldReverseLayout ? -1 : 1;
        int i10 = lastChildPosition + 1;
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem firstFullSpanItemInRange = this.mLazySpanLookup.getFirstFullSpanItemInRange(firstChildPosition, i10, i9, true);
        if (firstFullSpanItemInRange == null) {
            this.mLaidOutInvalidFullSpan = false;
            this.mLazySpanLookup.forceInvalidateAfter(i10);
            return false;
        }
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem firstFullSpanItemInRange2 = this.mLazySpanLookup.getFirstFullSpanItemInRange(firstChildPosition, firstFullSpanItemInRange.mPosition, i9 * (-1), true);
        StaggeredGridLayoutManager$LazySpanLookup staggeredGridLayoutManager$LazySpanLookup = this.mLazySpanLookup;
        if (firstFullSpanItemInRange2 == null) {
            staggeredGridLayoutManager$LazySpanLookup.forceInvalidateAfter(firstFullSpanItemInRange.mPosition);
        } else {
            staggeredGridLayoutManager$LazySpanLookup.forceInvalidateAfter(firstFullSpanItemInRange2.mPosition + 1);
        }
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public boolean checkLayoutParams(RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return recyclerView$LayoutParams instanceof StaggeredGridLayoutManager$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public void collectAdjacentPrefetchPositions(int i9, int i10, RecyclerView$State recyclerView$State, RecyclerView$LayoutManager$LayoutPrefetchRegistry recyclerView$LayoutManager$LayoutPrefetchRegistry) {
        int endLine;
        int startLine;
        if (this.mOrientation != 0) {
            i9 = i10;
        }
        if (getChildCount() == 0 || i9 == 0) {
            return;
        }
        prepareLayoutStateForDelta(i9, recyclerView$State);
        int[] iArr = this.mPrefetchDistances;
        if (iArr == null || iArr.length < this.mSpanCount) {
            this.mPrefetchDistances = new int[this.mSpanCount];
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.mSpanCount; i12++) {
            LayoutState layoutState = this.mLayoutState;
            if (layoutState.mItemDirection == -1) {
                endLine = layoutState.mStartLine;
                startLine = this.mSpans[i12].getStartLine(endLine);
            } else {
                endLine = this.mSpans[i12].getEndLine(layoutState.mEndLine);
                startLine = this.mLayoutState.mEndLine;
            }
            int i13 = endLine - startLine;
            if (i13 >= 0) {
                this.mPrefetchDistances[i11] = i13;
                i11++;
            }
        }
        Arrays.sort(this.mPrefetchDistances, 0, i11);
        for (int i14 = 0; i14 < i11 && this.mLayoutState.hasMore(recyclerView$State); i14++) {
            recyclerView$LayoutManager$LayoutPrefetchRegistry.addPosition(this.mLayoutState.mCurrentPosition, this.mPrefetchDistances[i14]);
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mCurrentPosition += layoutState2.mItemDirection;
        }
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
        int iCalculateScrollDirectionForPosition = calculateScrollDirectionForPosition(i9);
        PointF pointF = new PointF();
        if (iCalculateScrollDirectionForPosition == 0) {
            return null;
        }
        if (this.mOrientation == 0) {
            pointF.x = iCalculateScrollDirectionForPosition;
            pointF.y = 0.0f;
            return pointF;
        }
        pointF.x = 0.0f;
        pointF.y = iCalculateScrollDirectionForPosition;
        return pointF;
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
    public int[] findFirstCompletelyVisibleItemPositions(int[] iArr) {
        int i9 = this.mSpanCount;
        if (iArr == null) {
            iArr = new int[i9];
        } else if (iArr.length < i9) {
            b.o("Provided int[]'s size must be more than or equal to span count. Expected:", this.mSpanCount, iArr.length, ", array size:");
            return null;
        }
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            iArr[i10] = this.mSpans[i10].findFirstCompletelyVisibleItemPosition();
        }
        return iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View findFirstVisibleItemClosestToEnd(boolean z8) {
        int startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(childAt);
            int decoratedEnd = this.mPrimaryOrientation.getDecoratedEnd(childAt);
            if (decoratedEnd > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedEnd <= endAfterPadding || !z8) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View findFirstVisibleItemClosestToStart(boolean z8) {
        int startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
        int childCount = getChildCount();
        View view = null;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(childAt);
            if (this.mPrimaryOrientation.getDecoratedEnd(childAt) > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedStart >= startAfterPadding || !z8) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findFirstVisibleItemPositionInt() {
        View viewFindFirstVisibleItemClosestToEnd = this.mShouldReverseLayout ? findFirstVisibleItemClosestToEnd(true) : findFirstVisibleItemClosestToStart(true);
        if (viewFindFirstVisibleItemClosestToEnd == null) {
            return -1;
        }
        return getPosition(viewFindFirstVisibleItemClosestToEnd);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] findFirstVisibleItemPositions(int[] iArr) {
        int i9 = this.mSpanCount;
        if (iArr == null) {
            iArr = new int[i9];
        } else if (iArr.length < i9) {
            b.o("Provided int[]'s size must be more than or equal to span count. Expected:", this.mSpanCount, iArr.length, ", array size:");
            return null;
        }
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            iArr[i10] = this.mSpans[i10].findFirstVisibleItemPosition();
        }
        return iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] findLastCompletelyVisibleItemPositions(int[] iArr) {
        int i9 = this.mSpanCount;
        if (iArr == null) {
            iArr = new int[i9];
        } else if (iArr.length < i9) {
            b.o("Provided int[]'s size must be more than or equal to span count. Expected:", this.mSpanCount, iArr.length, ", array size:");
            return null;
        }
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            iArr[i10] = this.mSpans[i10].findLastCompletelyVisibleItemPosition();
        }
        return iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int[] findLastVisibleItemPositions(int[] iArr) {
        int i9 = this.mSpanCount;
        if (iArr == null) {
            iArr = new int[i9];
        } else if (iArr.length < i9) {
            b.o("Provided int[]'s size must be more than or equal to span count. Expected:", this.mSpanCount, iArr.length, ", array size:");
            return null;
        }
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            iArr[i10] = this.mSpans[i10].findLastVisibleItemPosition();
        }
        return iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public RecyclerView$LayoutParams generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new StaggeredGridLayoutManager$LayoutParams(-2, -1) : new StaggeredGridLayoutManager$LayoutParams(-1, -2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public RecyclerView$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams ? new StaggeredGridLayoutManager$LayoutParams((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams) : new StaggeredGridLayoutManager$LayoutParams(viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int getColumnCountForAccessibility(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State) {
        if (this.mOrientation == 1) {
            return Math.min(this.mSpanCount, recyclerView$State.getItemCount());
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getFirstChildPosition() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getGapStrategy() {
        return this.mGapStrategy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLastChildPosition() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getOrientation() {
        return this.mOrientation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int getRowCountForAccessibility(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State) {
        if (this.mOrientation == 0) {
            return Math.min(this.mSpanCount, recyclerView$State.getItemCount());
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSpanCount() {
        return this.mSpanCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:28:0x0065  */
    /* JADX WARN: Code duplicated, block: B:31:0x0072 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x0075  */
    /* JADX WARN: Code duplicated, block: B:36:0x0082 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x0084  */
    /* JADX WARN: Code duplicated, block: B:39:0x0095  */
    /* JADX WARN: Code duplicated, block: B:40:0x0097  */
    /* JADX WARN: Code duplicated, block: B:42:0x009a  */
    /* JADX WARN: Code duplicated, block: B:43:0x009c  */
    /* JADX WARN: Code duplicated, block: B:51:0x009f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x009f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x009f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x00a0 A[SYNTHETIC] */
    public View hasGapsToFix() {
        int i9;
        View childAt;
        boolean z8;
        OrientationHelper orientationHelper;
        int decoratedStart;
        int decoratedStart2;
        boolean z9;
        boolean z10;
        int decoratedEnd;
        int decoratedEnd2;
        int childCount = getChildCount();
        int i10 = childCount - 1;
        BitSet bitSet = new BitSet(this.mSpanCount);
        bitSet.set(0, this.mSpanCount, true);
        byte b9 = (this.mOrientation == 1 && isLayoutRTL()) ? (byte) 1 : (byte) -1;
        if (this.mShouldReverseLayout) {
            childCount = -1;
        } else {
            i10 = 0;
        }
        int i11 = i10 < childCount ? 1 : -1;
        while (i10 != childCount) {
            View childAt2 = getChildAt(i10);
            StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) childAt2.getLayoutParams();
            if (!bitSet.get(staggeredGridLayoutManager$LayoutParams.mSpan.mIndex)) {
                if (!staggeredGridLayoutManager$LayoutParams.mFullSpan && (i9 = i10 + i11) != childCount) {
                    childAt = getChildAt(i9);
                    z8 = this.mShouldReverseLayout;
                    orientationHelper = this.mPrimaryOrientation;
                    if (z8) {
                        decoratedEnd = orientationHelper.getDecoratedEnd(childAt2);
                        decoratedEnd2 = this.mPrimaryOrientation.getDecoratedEnd(childAt);
                        if (decoratedEnd >= decoratedEnd2) {
                            if (decoratedEnd == decoratedEnd2) {
                                if (staggeredGridLayoutManager$LayoutParams.mSpan.mIndex - ((StaggeredGridLayoutManager$LayoutParams) childAt.getLayoutParams()).mSpan.mIndex < 0) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                if (b9 < 0) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                if (z9 != z10) {
                                }
                            } else {
                                continue;
                            }
                        }
                    } else {
                        decoratedStart = orientationHelper.getDecoratedStart(childAt2);
                        decoratedStart2 = this.mPrimaryOrientation.getDecoratedStart(childAt);
                        if (decoratedStart <= decoratedStart2) {
                            if (decoratedStart == decoratedStart2) {
                                if (staggeredGridLayoutManager$LayoutParams.mSpan.mIndex - ((StaggeredGridLayoutManager$LayoutParams) childAt.getLayoutParams()).mSpan.mIndex < 0) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                if (b9 < 0) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                if (z9 != z10) {
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                }
                i10 += i11;
            } else if (!checkSpanForGap(staggeredGridLayoutManager$LayoutParams.mSpan)) {
                bitSet.clear(staggeredGridLayoutManager$LayoutParams.mSpan.mIndex);
                if (!staggeredGridLayoutManager$LayoutParams.mFullSpan) {
                    childAt = getChildAt(i9);
                    z8 = this.mShouldReverseLayout;
                    orientationHelper = this.mPrimaryOrientation;
                    if (z8) {
                        decoratedEnd = orientationHelper.getDecoratedEnd(childAt2);
                        decoratedEnd2 = this.mPrimaryOrientation.getDecoratedEnd(childAt);
                        if (decoratedEnd >= decoratedEnd2) {
                            if (decoratedEnd == decoratedEnd2) {
                                if (staggeredGridLayoutManager$LayoutParams.mSpan.mIndex - ((StaggeredGridLayoutManager$LayoutParams) childAt.getLayoutParams()).mSpan.mIndex < 0) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                if (b9 < 0) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                if (z9 != z10) {
                                }
                            } else {
                                continue;
                            }
                        }
                    } else {
                        decoratedStart = orientationHelper.getDecoratedStart(childAt2);
                        decoratedStart2 = this.mPrimaryOrientation.getDecoratedStart(childAt);
                        if (decoratedStart <= decoratedStart2) {
                            if (decoratedStart == decoratedStart2) {
                                if (staggeredGridLayoutManager$LayoutParams.mSpan.mIndex - ((StaggeredGridLayoutManager$LayoutParams) childAt.getLayoutParams()).mSpan.mIndex < 0) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                if (b9 < 0) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                if (z9 != z10) {
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                }
                i10 += i11;
            }
            return childAt2;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidateSpanAssignments() {
        this.mLazySpanLookup.clear();
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public boolean isAutoMeasureEnabled() {
        return this.mGapStrategy != 0;
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
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void offsetChildrenHorizontal(int i9) {
        super.offsetChildrenHorizontal(i9);
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            this.mSpans[i10].onOffset(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void offsetChildrenVertical(int i9) {
        super.offsetChildrenVertical(i9);
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            this.mSpans[i10].onOffset(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onAdapterChanged(@Nullable RecyclerView$Adapter recyclerView$Adapter, @Nullable RecyclerView$Adapter recyclerView$Adapter2) {
        this.mLazySpanLookup.clear();
        for (int i9 = 0; i9 < this.mSpanCount; i9++) {
            this.mSpans[i9].clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView$Recycler recyclerView$Recycler) {
        super.onDetachedFromWindow(recyclerView, recyclerView$Recycler);
        removeCallbacks(this.mCheckForGapsRunnable);
        for (int i9 = 0; i9 < this.mSpanCount; i9++) {
            this.mSpans[i9].clear();
        }
        recyclerView.requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    @Nullable
    public View onFocusSearchFailed(View view, int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        View viewFindContainingItemView;
        View focusableViewAfter;
        if (getChildCount() == 0 || (viewFindContainingItemView = findContainingItemView(view)) == null) {
            return null;
        }
        resolveShouldLayoutReverse();
        int iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i9);
        if (iConvertFocusDirectionToLayoutDirection == Integer.MIN_VALUE) {
            return null;
        }
        StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) viewFindContainingItemView.getLayoutParams();
        boolean z8 = staggeredGridLayoutManager$LayoutParams.mFullSpan;
        StaggeredGridLayoutManager$Span staggeredGridLayoutManager$Span = staggeredGridLayoutManager$LayoutParams.mSpan;
        int lastChildPosition = iConvertFocusDirectionToLayoutDirection == 1 ? getLastChildPosition() : getFirstChildPosition();
        updateLayoutState(lastChildPosition, recyclerView$State);
        setLayoutStateDirection(iConvertFocusDirectionToLayoutDirection);
        LayoutState layoutState = this.mLayoutState;
        layoutState.mCurrentPosition = layoutState.mItemDirection + lastChildPosition;
        layoutState.mAvailable = (int) (this.mPrimaryOrientation.getTotalSpace() * MAX_SCROLL_FACTOR);
        LayoutState layoutState2 = this.mLayoutState;
        layoutState2.mStopInFocusable = true;
        layoutState2.mRecycle = false;
        fill(recyclerView$Recycler, layoutState2, recyclerView$State);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        if (!z8 && (focusableViewAfter = staggeredGridLayoutManager$Span.getFocusableViewAfter(lastChildPosition, iConvertFocusDirectionToLayoutDirection)) != null && focusableViewAfter != viewFindContainingItemView) {
            return focusableViewAfter;
        }
        if (preferLastSpan(iConvertFocusDirectionToLayoutDirection)) {
            for (int i10 = this.mSpanCount - 1; i10 >= 0; i10--) {
                View focusableViewAfter2 = this.mSpans[i10].getFocusableViewAfter(lastChildPosition, iConvertFocusDirectionToLayoutDirection);
                if (focusableViewAfter2 != null && focusableViewAfter2 != viewFindContainingItemView) {
                    return focusableViewAfter2;
                }
            }
        } else {
            for (int i11 = 0; i11 < this.mSpanCount; i11++) {
                View focusableViewAfter3 = this.mSpans[i11].getFocusableViewAfter(lastChildPosition, iConvertFocusDirectionToLayoutDirection);
                if (focusableViewAfter3 != null && focusableViewAfter3 != viewFindContainingItemView) {
                    return focusableViewAfter3;
                }
            }
        }
        boolean z9 = (this.mReverseLayout ^ true) == (iConvertFocusDirectionToLayoutDirection == -1);
        if (!z8) {
            View viewFindViewByPosition = findViewByPosition(z9 ? staggeredGridLayoutManager$Span.findFirstPartiallyVisibleItemPosition() : staggeredGridLayoutManager$Span.findLastPartiallyVisibleItemPosition());
            if (viewFindViewByPosition != null && viewFindViewByPosition != viewFindContainingItemView) {
                return viewFindViewByPosition;
            }
        }
        if (preferLastSpan(iConvertFocusDirectionToLayoutDirection)) {
            for (int i12 = this.mSpanCount - 1; i12 >= 0; i12--) {
                if (i12 != staggeredGridLayoutManager$Span.mIndex) {
                    StaggeredGridLayoutManager$Span[] staggeredGridLayoutManager$SpanArr = this.mSpans;
                    View viewFindViewByPosition2 = findViewByPosition(z9 ? staggeredGridLayoutManager$SpanArr[i12].findFirstPartiallyVisibleItemPosition() : staggeredGridLayoutManager$SpanArr[i12].findLastPartiallyVisibleItemPosition());
                    if (viewFindViewByPosition2 != null && viewFindViewByPosition2 != viewFindContainingItemView) {
                        return viewFindViewByPosition2;
                    }
                }
            }
        } else {
            for (int i13 = 0; i13 < this.mSpanCount; i13++) {
                StaggeredGridLayoutManager$Span[] staggeredGridLayoutManager$SpanArr2 = this.mSpans;
                View viewFindViewByPosition3 = findViewByPosition(z9 ? staggeredGridLayoutManager$SpanArr2[i13].findFirstPartiallyVisibleItemPosition() : staggeredGridLayoutManager$SpanArr2[i13].findLastPartiallyVisibleItemPosition());
                if (viewFindViewByPosition3 != null && viewFindViewByPosition3 != viewFindContainingItemView) {
                    return viewFindViewByPosition3;
                }
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View viewFindFirstVisibleItemClosestToStart = findFirstVisibleItemClosestToStart(false);
            View viewFindFirstVisibleItemClosestToEnd = findFirstVisibleItemClosestToEnd(false);
            if (viewFindFirstVisibleItemClosestToStart == null || viewFindFirstVisibleItemClosestToEnd == null) {
                return;
            }
            int position = getPosition(viewFindFirstVisibleItemClosestToStart);
            int position2 = getPosition(viewFindFirstVisibleItemClosestToEnd);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(recyclerView$Recycler, recyclerView$State, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName("androidx.recyclerview.widget.StaggeredGridLayoutManager");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onInitializeAccessibilityNodeInfoForItem(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, @NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof StaggeredGridLayoutManager$LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
            return;
        }
        StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) layoutParams;
        if (this.mOrientation == 0) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat$CollectionItemInfoCompat.obtain(staggeredGridLayoutManager$LayoutParams.getSpanIndex(), staggeredGridLayoutManager$LayoutParams.mFullSpan ? this.mSpanCount : 1, -1, -1, false, false));
        } else {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat$CollectionItemInfoCompat.obtain(-1, -1, staggeredGridLayoutManager$LayoutParams.getSpanIndex(), staggeredGridLayoutManager$LayoutParams.mFullSpan ? this.mSpanCount : 1, false, false));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i9, int i10) {
        handleUpdate(i9, i10, 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mLazySpanLookup.clear();
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i9, int i10, int i11) {
        handleUpdate(i9, i10, 8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i9, int i10) {
        handleUpdate(i9, i10, 2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i9, int i10, Object obj) {
        handleUpdate(i9, i10, 4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onLayoutCompleted(RecyclerView$State recyclerView$State) {
        super.onLayoutCompleted(recyclerView$State);
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo.reset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof StaggeredGridLayoutManager$SavedState) {
            StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState = (StaggeredGridLayoutManager$SavedState) parcelable;
            this.mPendingSavedState = staggeredGridLayoutManager$SavedState;
            if (this.mPendingScrollPosition != -1) {
                staggeredGridLayoutManager$SavedState.invalidateAnchorPositionInfo();
                this.mPendingSavedState.invalidateSpanInfo();
            }
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public Parcelable onSaveInstanceState() {
        int startLine;
        int startAfterPadding;
        int[] iArr;
        if (this.mPendingSavedState != null) {
            return new StaggeredGridLayoutManager$SavedState(this.mPendingSavedState);
        }
        StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState = new StaggeredGridLayoutManager$SavedState();
        staggeredGridLayoutManager$SavedState.mReverseLayout = this.mReverseLayout;
        staggeredGridLayoutManager$SavedState.mAnchorLayoutFromEnd = this.mLastLayoutFromEnd;
        staggeredGridLayoutManager$SavedState.mLastLayoutRTL = this.mLastLayoutRTL;
        StaggeredGridLayoutManager$LazySpanLookup staggeredGridLayoutManager$LazySpanLookup = this.mLazySpanLookup;
        if (staggeredGridLayoutManager$LazySpanLookup == null || (iArr = staggeredGridLayoutManager$LazySpanLookup.mData) == null) {
            staggeredGridLayoutManager$SavedState.mSpanLookupSize = 0;
        } else {
            staggeredGridLayoutManager$SavedState.mSpanLookup = iArr;
            staggeredGridLayoutManager$SavedState.mSpanLookupSize = iArr.length;
            staggeredGridLayoutManager$SavedState.mFullSpanItems = staggeredGridLayoutManager$LazySpanLookup.mFullSpanItems;
        }
        if (getChildCount() <= 0) {
            staggeredGridLayoutManager$SavedState.mAnchorPosition = -1;
            staggeredGridLayoutManager$SavedState.mVisibleAnchorPosition = -1;
            staggeredGridLayoutManager$SavedState.mSpanOffsetsSize = 0;
            return staggeredGridLayoutManager$SavedState;
        }
        staggeredGridLayoutManager$SavedState.mAnchorPosition = this.mLastLayoutFromEnd ? getLastChildPosition() : getFirstChildPosition();
        staggeredGridLayoutManager$SavedState.mVisibleAnchorPosition = findFirstVisibleItemPositionInt();
        int i9 = this.mSpanCount;
        staggeredGridLayoutManager$SavedState.mSpanOffsetsSize = i9;
        staggeredGridLayoutManager$SavedState.mSpanOffsets = new int[i9];
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            boolean z8 = this.mLastLayoutFromEnd;
            StaggeredGridLayoutManager$Span[] staggeredGridLayoutManager$SpanArr = this.mSpans;
            if (z8) {
                startLine = staggeredGridLayoutManager$SpanArr[i10].getEndLine(Integer.MIN_VALUE);
                if (startLine != Integer.MIN_VALUE) {
                    startAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
                    startLine -= startAfterPadding;
                }
            } else {
                startLine = staggeredGridLayoutManager$SpanArr[i10].getStartLine(Integer.MIN_VALUE);
                if (startLine != Integer.MIN_VALUE) {
                    startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
                    startLine -= startAfterPadding;
                }
            }
            staggeredGridLayoutManager$SavedState.mSpanOffsets[i10] = startLine;
        }
        return staggeredGridLayoutManager$SavedState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onScrollStateChanged(int i9) {
        if (i9 == 0) {
            checkForGaps();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void prepareLayoutStateForDelta(int i9, RecyclerView$State recyclerView$State) {
        int firstChildPosition;
        int i10;
        if (i9 > 0) {
            firstChildPosition = getLastChildPosition();
            i10 = 1;
        } else {
            firstChildPosition = getFirstChildPosition();
            i10 = -1;
        }
        this.mLayoutState.mRecycle = true;
        updateLayoutState(firstChildPosition, recyclerView$State);
        setLayoutStateDirection(i10);
        LayoutState layoutState = this.mLayoutState;
        layoutState.mCurrentPosition = firstChildPosition + layoutState.mItemDirection;
        layoutState.mAvailable = Math.abs(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int scrollBy(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        if (getChildCount() == 0 || i9 == 0) {
            return 0;
        }
        prepareLayoutStateForDelta(i9, recyclerView$State);
        int iFill = fill(recyclerView$Recycler, this.mLayoutState, recyclerView$State);
        if (this.mLayoutState.mAvailable >= iFill) {
            i9 = i9 < 0 ? -iFill : iFill;
        }
        this.mPrimaryOrientation.offsetChildren(-i9);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        LayoutState layoutState = this.mLayoutState;
        layoutState.mAvailable = 0;
        recycle(recyclerView$Recycler, layoutState);
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int scrollHorizontallyBy(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return scrollBy(i9, recyclerView$Recycler, recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void scrollToPosition(int i9) {
        StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState = this.mPendingSavedState;
        if (staggeredGridLayoutManager$SavedState != null && staggeredGridLayoutManager$SavedState.mAnchorPosition != i9) {
            staggeredGridLayoutManager$SavedState.invalidateAnchorPositionInfo();
        }
        this.mPendingScrollPosition = i9;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void scrollToPositionWithOffset(int i9, int i10) {
        StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState = this.mPendingSavedState;
        if (staggeredGridLayoutManager$SavedState != null) {
            staggeredGridLayoutManager$SavedState.invalidateAnchorPositionInfo();
        }
        this.mPendingScrollPosition = i9;
        this.mPendingScrollPositionOffset = i10;
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public int scrollVerticallyBy(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return scrollBy(i9, recyclerView$Recycler, recyclerView$State);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setGapStrategy(int i9) {
        assertNotInLayoutOrScroll(null);
        if (i9 == this.mGapStrategy) {
            return;
        }
        if (i9 != 0 && i9 != 2) {
            i.k("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
        } else {
            this.mGapStrategy = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void setMeasuredDimension(Rect rect, int i9, int i10) {
        int iChooseSize;
        int iChooseSize2;
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.mOrientation == 1) {
            iChooseSize2 = RecyclerView$LayoutManager.chooseSize(i10, rect.height() + paddingBottom, getMinimumHeight());
            iChooseSize = RecyclerView$LayoutManager.chooseSize(i9, (this.mSizePerSpan * this.mSpanCount) + paddingRight, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView$LayoutManager.chooseSize(i9, rect.width() + paddingRight, getMinimumWidth());
            iChooseSize2 = RecyclerView$LayoutManager.chooseSize(i10, (this.mSizePerSpan * this.mSpanCount) + paddingBottom, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOrientation(int i9) {
        if (i9 != 0 && i9 != 1) {
            i.k("invalid orientation.");
            return;
        }
        assertNotInLayoutOrScroll(null);
        if (i9 == this.mOrientation) {
            return;
        }
        this.mOrientation = i9;
        OrientationHelper orientationHelper = this.mPrimaryOrientation;
        this.mPrimaryOrientation = this.mSecondaryOrientation;
        this.mSecondaryOrientation = orientationHelper;
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setReverseLayout(boolean z8) {
        assertNotInLayoutOrScroll(null);
        StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState = this.mPendingSavedState;
        if (staggeredGridLayoutManager$SavedState != null && staggeredGridLayoutManager$SavedState.mReverseLayout != z8) {
            staggeredGridLayoutManager$SavedState.mReverseLayout = z8;
        }
        this.mReverseLayout = z8;
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpanCount(int i9) {
        assertNotInLayoutOrScroll(null);
        if (i9 != this.mSpanCount) {
            invalidateSpanAssignments();
            this.mSpanCount = i9;
            this.mRemainingSpans = new BitSet(this.mSpanCount);
            this.mSpans = new StaggeredGridLayoutManager$Span[this.mSpanCount];
            for (int i10 = 0; i10 < this.mSpanCount; i10++) {
                this.mSpans[i10] = new StaggeredGridLayoutManager$Span(this, i10);
            }
            requestLayout();
        }
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
        return this.mPendingSavedState == null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean updateAnchorFromPendingData(RecyclerView$State recyclerView$State, StaggeredGridLayoutManager$AnchorInfo staggeredGridLayoutManager$AnchorInfo) {
        int i9;
        if (!recyclerView$State.isPreLayout() && (i9 = this.mPendingScrollPosition) != -1) {
            if (i9 >= 0 && i9 < recyclerView$State.getItemCount()) {
                StaggeredGridLayoutManager$SavedState staggeredGridLayoutManager$SavedState = this.mPendingSavedState;
                if (staggeredGridLayoutManager$SavedState == null || staggeredGridLayoutManager$SavedState.mAnchorPosition == -1 || staggeredGridLayoutManager$SavedState.mSpanOffsetsSize < 1) {
                    View viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition);
                    if (viewFindViewByPosition != null) {
                        staggeredGridLayoutManager$AnchorInfo.mPosition = this.mShouldReverseLayout ? getLastChildPosition() : getFirstChildPosition();
                        if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
                            boolean z8 = staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd;
                            OrientationHelper orientationHelper = this.mPrimaryOrientation;
                            if (z8) {
                                staggeredGridLayoutManager$AnchorInfo.mOffset = (orientationHelper.getEndAfterPadding() - this.mPendingScrollPositionOffset) - this.mPrimaryOrientation.getDecoratedEnd(viewFindViewByPosition);
                            } else {
                                staggeredGridLayoutManager$AnchorInfo.mOffset = (orientationHelper.getStartAfterPadding() + this.mPendingScrollPositionOffset) - this.mPrimaryOrientation.getDecoratedStart(viewFindViewByPosition);
                            }
                            return true;
                        }
                        if (this.mPrimaryOrientation.getDecoratedMeasurement(viewFindViewByPosition) > this.mPrimaryOrientation.getTotalSpace()) {
                            boolean z9 = staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd;
                            OrientationHelper orientationHelper2 = this.mPrimaryOrientation;
                            staggeredGridLayoutManager$AnchorInfo.mOffset = z9 ? orientationHelper2.getEndAfterPadding() : orientationHelper2.getStartAfterPadding();
                            return true;
                        }
                        int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(viewFindViewByPosition) - this.mPrimaryOrientation.getStartAfterPadding();
                        if (decoratedStart < 0) {
                            staggeredGridLayoutManager$AnchorInfo.mOffset = -decoratedStart;
                            return true;
                        }
                        int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding() - this.mPrimaryOrientation.getDecoratedEnd(viewFindViewByPosition);
                        if (endAfterPadding < 0) {
                            staggeredGridLayoutManager$AnchorInfo.mOffset = endAfterPadding;
                            return true;
                        }
                        staggeredGridLayoutManager$AnchorInfo.mOffset = Integer.MIN_VALUE;
                    } else {
                        int i10 = this.mPendingScrollPosition;
                        staggeredGridLayoutManager$AnchorInfo.mPosition = i10;
                        int i11 = this.mPendingScrollPositionOffset;
                        if (i11 == Integer.MIN_VALUE) {
                            staggeredGridLayoutManager$AnchorInfo.mLayoutFromEnd = calculateScrollDirectionForPosition(i10) == 1;
                            staggeredGridLayoutManager$AnchorInfo.assignCoordinateFromPadding();
                        } else {
                            staggeredGridLayoutManager$AnchorInfo.assignCoordinateFromPadding(i11);
                        }
                        staggeredGridLayoutManager$AnchorInfo.mInvalidateOffsets = true;
                    }
                } else {
                    staggeredGridLayoutManager$AnchorInfo.mOffset = Integer.MIN_VALUE;
                    staggeredGridLayoutManager$AnchorInfo.mPosition = this.mPendingScrollPosition;
                }
                return true;
            }
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateAnchorInfoForLayout(RecyclerView$State recyclerView$State, StaggeredGridLayoutManager$AnchorInfo staggeredGridLayoutManager$AnchorInfo) {
        if (updateAnchorFromPendingData(recyclerView$State, staggeredGridLayoutManager$AnchorInfo) || updateAnchorFromChildren(recyclerView$State, staggeredGridLayoutManager$AnchorInfo)) {
            return;
        }
        staggeredGridLayoutManager$AnchorInfo.assignCoordinateFromPadding();
        staggeredGridLayoutManager$AnchorInfo.mPosition = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateMeasureSpecs(int i9) {
        this.mSizePerSpan = i9 / this.mSpanCount;
        this.mFullSizeSpec = View$MeasureSpec.makeMeasureSpec(i9, this.mSecondaryOrientation.getMode());
    }

    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public RecyclerView$LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new StaggeredGridLayoutManager$LayoutParams(context, attributeSet);
    }

    public StaggeredGridLayoutManager(int i9, int i10) {
        this.mOrientation = i10;
        setSpanCount(i9);
        this.mLayoutState = new LayoutState();
        createOrientationHelpers();
    }

    private void measureChildWithDecorationsAndMargin(View view, int i9, int i10, boolean z8) {
        boolean zShouldMeasureChild;
        calculateItemDecorationsForChild(view, this.mTmpRect);
        StaggeredGridLayoutManager$LayoutParams staggeredGridLayoutManager$LayoutParams = (StaggeredGridLayoutManager$LayoutParams) view.getLayoutParams();
        int i11 = ((ViewGroup$MarginLayoutParams) staggeredGridLayoutManager$LayoutParams).leftMargin;
        Rect rect = this.mTmpRect;
        int iUpdateSpecWithExtra = updateSpecWithExtra(i9, i11 + rect.left, ((ViewGroup$MarginLayoutParams) staggeredGridLayoutManager$LayoutParams).rightMargin + rect.right);
        int i12 = ((ViewGroup$MarginLayoutParams) staggeredGridLayoutManager$LayoutParams).topMargin;
        Rect rect2 = this.mTmpRect;
        int iUpdateSpecWithExtra2 = updateSpecWithExtra(i10, i12 + rect2.top, ((ViewGroup$MarginLayoutParams) staggeredGridLayoutManager$LayoutParams).bottomMargin + rect2.bottom);
        if (z8) {
            zShouldMeasureChild = shouldReMeasureChild(view, iUpdateSpecWithExtra, iUpdateSpecWithExtra2, staggeredGridLayoutManager$LayoutParams);
        } else {
            zShouldMeasureChild = shouldMeasureChild(view, iUpdateSpecWithExtra, iUpdateSpecWithExtra2, staggeredGridLayoutManager$LayoutParams);
        }
        if (zShouldMeasureChild) {
            view.measure(iUpdateSpecWithExtra, iUpdateSpecWithExtra2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView$LayoutManager
    public void onLayoutChildren(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        onLayoutChildren(recyclerView$Recycler, recyclerView$State, true);
    }
}
