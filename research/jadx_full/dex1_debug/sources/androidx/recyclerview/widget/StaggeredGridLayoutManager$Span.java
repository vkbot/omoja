package androidx.recyclerview.widget;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class StaggeredGridLayoutManager$Span {
    static final int INVALID_LINE = Integer.MIN_VALUE;
    final int mIndex;
    final /* synthetic */ StaggeredGridLayoutManager this$0;
    ArrayList<View> mViews = new ArrayList<>();
    int mCachedStart = Integer.MIN_VALUE;
    int mCachedEnd = Integer.MIN_VALUE;
    int mDeletedSize = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public StaggeredGridLayoutManager$Span(StaggeredGridLayoutManager staggeredGridLayoutManager, int i9) {
        this.this$0 = staggeredGridLayoutManager;
        this.mIndex = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void appendToSpan(View view) {
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(view);
        layoutParams.mSpan = this;
        this.mViews.add(view);
        this.mCachedEnd = Integer.MIN_VALUE;
        if (this.mViews.size() == 1) {
            this.mCachedStart = Integer.MIN_VALUE;
        }
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            this.mDeletedSize = this.this$0.mPrimaryOrientation.getDecoratedMeasurement(view) + this.mDeletedSize;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void cacheReferenceLineAndClear(boolean z8, int i9) {
        int endLine = z8 ? getEndLine(Integer.MIN_VALUE) : getStartLine(Integer.MIN_VALUE);
        clear();
        if (endLine == Integer.MIN_VALUE) {
            return;
        }
        if (!z8 || endLine >= this.this$0.mPrimaryOrientation.getEndAfterPadding()) {
            if (z8 || endLine <= this.this$0.mPrimaryOrientation.getStartAfterPadding()) {
                if (i9 != Integer.MIN_VALUE) {
                    endLine += i9;
                }
                this.mCachedEnd = endLine;
                this.mCachedStart = endLine;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void calculateCachedEnd() {
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem fullSpanItem;
        ArrayList<View> arrayList = this.mViews;
        View view = arrayList.get(arrayList.size() - 1);
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(view);
        this.mCachedEnd = this.this$0.mPrimaryOrientation.getDecoratedEnd(view);
        if (layoutParams.mFullSpan && (fullSpanItem = this.this$0.mLazySpanLookup.getFullSpanItem(layoutParams.getViewLayoutPosition())) != null && fullSpanItem.mGapDir == 1) {
            this.mCachedEnd += fullSpanItem.getGapForSpan(this.mIndex);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void calculateCachedStart() {
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem fullSpanItem;
        View view = this.mViews.get(0);
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(view);
        this.mCachedStart = this.this$0.mPrimaryOrientation.getDecoratedStart(view);
        if (layoutParams.mFullSpan && (fullSpanItem = this.this$0.mLazySpanLookup.getFullSpanItem(layoutParams.getViewLayoutPosition())) != null && fullSpanItem.mGapDir == -1) {
            this.mCachedStart -= fullSpanItem.getGapForSpan(this.mIndex);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        this.mViews.clear();
        invalidateCache();
        this.mDeletedSize = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findFirstCompletelyVisibleItemPosition() {
        boolean z8 = this.this$0.mReverseLayout;
        ArrayList<View> arrayList = this.mViews;
        return z8 ? findOneVisibleChild(arrayList.size() - 1, -1, true) : findOneVisibleChild(0, arrayList.size(), true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findFirstPartiallyVisibleItemPosition() {
        boolean z8 = this.this$0.mReverseLayout;
        ArrayList<View> arrayList = this.mViews;
        return z8 ? findOnePartiallyVisibleChild(arrayList.size() - 1, -1, true) : findOnePartiallyVisibleChild(0, arrayList.size(), true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findFirstVisibleItemPosition() {
        boolean z8 = this.this$0.mReverseLayout;
        ArrayList<View> arrayList = this.mViews;
        return z8 ? findOneVisibleChild(arrayList.size() - 1, -1, false) : findOneVisibleChild(0, arrayList.size(), false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findLastCompletelyVisibleItemPosition() {
        boolean z8 = this.this$0.mReverseLayout;
        ArrayList<View> arrayList = this.mViews;
        return z8 ? findOneVisibleChild(0, arrayList.size(), true) : findOneVisibleChild(arrayList.size() - 1, -1, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findLastPartiallyVisibleItemPosition() {
        boolean z8 = this.this$0.mReverseLayout;
        ArrayList<View> arrayList = this.mViews;
        return z8 ? findOnePartiallyVisibleChild(0, arrayList.size(), true) : findOnePartiallyVisibleChild(arrayList.size() - 1, -1, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findLastVisibleItemPosition() {
        boolean z8 = this.this$0.mReverseLayout;
        ArrayList<View> arrayList = this.mViews;
        return z8 ? findOneVisibleChild(0, arrayList.size(), false) : findOneVisibleChild(arrayList.size() - 1, -1, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findOnePartiallyOrCompletelyVisibleChild(int i9, int i10, boolean z8, boolean z9, boolean z10) {
        int startAfterPadding = this.this$0.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = this.this$0.mPrimaryOrientation.getEndAfterPadding();
        int i11 = i10 > i9 ? 1 : -1;
        while (i9 != i10) {
            View view = this.mViews.get(i9);
            int decoratedStart = this.this$0.mPrimaryOrientation.getDecoratedStart(view);
            int decoratedEnd = this.this$0.mPrimaryOrientation.getDecoratedEnd(view);
            boolean z11 = false;
            boolean z12 = !z10 ? decoratedStart >= endAfterPadding : decoratedStart > endAfterPadding;
            if (!z10 ? decoratedEnd > startAfterPadding : decoratedEnd >= startAfterPadding) {
                z11 = true;
            }
            if (z12 && z11) {
                if (z8 && z9) {
                    if (decoratedStart >= startAfterPadding && decoratedEnd <= endAfterPadding) {
                        return this.this$0.getPosition(view);
                    }
                } else {
                    if (z9) {
                        return this.this$0.getPosition(view);
                    }
                    if (decoratedStart < startAfterPadding || decoratedEnd > endAfterPadding) {
                        return this.this$0.getPosition(view);
                    }
                }
            }
            i9 += i11;
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findOnePartiallyVisibleChild(int i9, int i10, boolean z8) {
        return findOnePartiallyOrCompletelyVisibleChild(i9, i10, false, false, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int findOneVisibleChild(int i9, int i10, boolean z8) {
        return findOnePartiallyOrCompletelyVisibleChild(i9, i10, z8, true, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDeletedSize() {
        return this.mDeletedSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEndLine(int i9) {
        int i10 = this.mCachedEnd;
        if (i10 != Integer.MIN_VALUE) {
            return i10;
        }
        if (this.mViews.size() == 0) {
            return i9;
        }
        calculateCachedEnd();
        return this.mCachedEnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View getFocusableViewAfter(int i9, int i10) {
        ArrayList<View> arrayList = this.mViews;
        View view = null;
        if (i10 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = this.mViews.get(size);
                StaggeredGridLayoutManager staggeredGridLayoutManager = this.this$0;
                if (staggeredGridLayoutManager.mReverseLayout && staggeredGridLayoutManager.getPosition(view2) >= i9) {
                    break;
                }
                StaggeredGridLayoutManager staggeredGridLayoutManager2 = this.this$0;
                if ((!staggeredGridLayoutManager2.mReverseLayout && staggeredGridLayoutManager2.getPosition(view2) <= i9) || !view2.hasFocusable()) {
                    break;
                }
                size--;
                view = view2;
            }
            return view;
        }
        int size2 = arrayList.size();
        int i11 = 0;
        while (i11 < size2) {
            View view3 = this.mViews.get(i11);
            StaggeredGridLayoutManager staggeredGridLayoutManager3 = this.this$0;
            if (staggeredGridLayoutManager3.mReverseLayout && staggeredGridLayoutManager3.getPosition(view3) <= i9) {
                break;
            }
            StaggeredGridLayoutManager staggeredGridLayoutManager4 = this.this$0;
            if ((!staggeredGridLayoutManager4.mReverseLayout && staggeredGridLayoutManager4.getPosition(view3) >= i9) || !view3.hasFocusable()) {
                break;
            }
            i11++;
            view = view3;
        }
        return view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public StaggeredGridLayoutManager$LayoutParams getLayoutParams(View view) {
        return (StaggeredGridLayoutManager$LayoutParams) view.getLayoutParams();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getStartLine(int i9) {
        int i10 = this.mCachedStart;
        if (i10 != Integer.MIN_VALUE) {
            return i10;
        }
        if (this.mViews.size() == 0) {
            return i9;
        }
        calculateCachedStart();
        return this.mCachedStart;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidateCache() {
        this.mCachedStart = Integer.MIN_VALUE;
        this.mCachedEnd = Integer.MIN_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onOffset(int i9) {
        int i10 = this.mCachedStart;
        if (i10 != Integer.MIN_VALUE) {
            this.mCachedStart = i10 + i9;
        }
        int i11 = this.mCachedEnd;
        if (i11 != Integer.MIN_VALUE) {
            this.mCachedEnd = i11 + i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void popEnd() {
        int size = this.mViews.size();
        View viewRemove = this.mViews.remove(size - 1);
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(viewRemove);
        layoutParams.mSpan = null;
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            this.mDeletedSize -= this.this$0.mPrimaryOrientation.getDecoratedMeasurement(viewRemove);
        }
        if (size == 1) {
            this.mCachedStart = Integer.MIN_VALUE;
        }
        this.mCachedEnd = Integer.MIN_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void popStart() {
        View viewRemove = this.mViews.remove(0);
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(viewRemove);
        layoutParams.mSpan = null;
        if (this.mViews.size() == 0) {
            this.mCachedEnd = Integer.MIN_VALUE;
        }
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            this.mDeletedSize -= this.this$0.mPrimaryOrientation.getDecoratedMeasurement(viewRemove);
        }
        this.mCachedStart = Integer.MIN_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void prependToSpan(View view) {
        StaggeredGridLayoutManager$LayoutParams layoutParams = getLayoutParams(view);
        layoutParams.mSpan = this;
        this.mViews.add(0, view);
        this.mCachedStart = Integer.MIN_VALUE;
        if (this.mViews.size() == 1) {
            this.mCachedEnd = Integer.MIN_VALUE;
        }
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            this.mDeletedSize = this.this$0.mPrimaryOrientation.getDecoratedMeasurement(view) + this.mDeletedSize;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLine(int i9) {
        this.mCachedStart = i9;
        this.mCachedEnd = i9;
    }

    public int getEndLine() {
        int i9 = this.mCachedEnd;
        if (i9 != Integer.MIN_VALUE) {
            return i9;
        }
        calculateCachedEnd();
        return this.mCachedEnd;
    }

    public int getStartLine() {
        int i9 = this.mCachedStart;
        if (i9 != Integer.MIN_VALUE) {
            return i9;
        }
        calculateCachedStart();
        return this.mCachedStart;
    }
}
