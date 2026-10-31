package androidx.recyclerview.widget;

import ai.onnxruntime.a;
import ai.onnxruntime.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$CollectionInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
import androidx.recyclerview.R$styleable;
import j1.i;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class RecyclerView$LayoutManager {
    boolean mAutoMeasure;
    ChildHelper mChildHelper;
    private int mHeight;
    private int mHeightMode;
    ViewBoundsCheck mHorizontalBoundCheck;
    private final ViewBoundsCheck$Callback mHorizontalBoundCheckCallback;
    boolean mIsAttachedToWindow;
    private boolean mItemPrefetchEnabled;
    private boolean mMeasurementCacheEnabled;
    int mPrefetchMaxCountObserved;
    boolean mPrefetchMaxObservedInInitialPrefetch;
    RecyclerView mRecyclerView;
    boolean mRequestedSimpleAnimations;

    @Nullable
    RecyclerView$SmoothScroller mSmoothScroller;
    ViewBoundsCheck mVerticalBoundCheck;
    private final ViewBoundsCheck$Callback mVerticalBoundCheckCallback;
    private int mWidth;
    private int mWidthMode;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$LayoutManager() {
        RecyclerView$LayoutManager$1 recyclerView$LayoutManager$1 = new RecyclerView$LayoutManager$1(this);
        this.mHorizontalBoundCheckCallback = recyclerView$LayoutManager$1;
        RecyclerView$LayoutManager$2 recyclerView$LayoutManager$2 = new RecyclerView$LayoutManager$2(this);
        this.mVerticalBoundCheckCallback = recyclerView$LayoutManager$2;
        this.mHorizontalBoundCheck = new ViewBoundsCheck(recyclerView$LayoutManager$1);
        this.mVerticalBoundCheck = new ViewBoundsCheck(recyclerView$LayoutManager$2);
        this.mRequestedSimpleAnimations = false;
        this.mIsAttachedToWindow = false;
        this.mAutoMeasure = false;
        this.mMeasurementCacheEnabled = true;
        this.mItemPrefetchEnabled = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addViewInt(View view, int i9, boolean z8) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (z8 || childViewHolderInt.isRemoved()) {
            this.mRecyclerView.mViewInfoStore.addToDisappearedInLayout(childViewHolderInt);
        } else {
            this.mRecyclerView.mViewInfoStore.removeFromDisappearedInLayout(childViewHolderInt);
        }
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            this.mChildHelper.attachViewToParent(view, i9, view.getLayoutParams(), false);
        } else {
            ViewParent parent = view.getParent();
            RecyclerView recyclerView = this.mRecyclerView;
            ChildHelper childHelper = this.mChildHelper;
            if (parent == recyclerView) {
                int iIndexOfChild = childHelper.indexOfChild(view);
                if (i9 == -1) {
                    i9 = this.mChildHelper.getChildCount();
                }
                if (iIndexOfChild == -1) {
                    StringBuilder sb = new StringBuilder("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                    sb.append(this.mRecyclerView.indexOfChild(view));
                    i.l(a.i(this.mRecyclerView, sb));
                    return;
                } else if (iIndexOfChild != i9) {
                    this.mRecyclerView.mLayout.moveView(iIndexOfChild, i9);
                }
            } else {
                childHelper.addView(view, i9, false);
                recyclerView$LayoutParams.mInsetsDirty = true;
                RecyclerView$SmoothScroller recyclerView$SmoothScroller = this.mSmoothScroller;
                if (recyclerView$SmoothScroller != null && recyclerView$SmoothScroller.isRunning()) {
                    this.mSmoothScroller.onChildAttachedToWindow(view);
                }
            }
        }
        if (recyclerView$LayoutParams.mPendingInvalidate) {
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "consuming pending invalidate on child " + recyclerView$LayoutParams.mViewHolder);
            }
            childViewHolderInt.itemView.invalidate();
            recyclerView$LayoutParams.mPendingInvalidate = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int chooseSize(int i9, int i10, int i11) {
        int mode = View$MeasureSpec.getMode(i9);
        int size = View$MeasureSpec.getSize(i9);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? Math.max(i10, i11) : size;
        }
        return Math.min(size, Math.max(i10, i11));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void detachViewInternal(int i9, @NonNull View view) {
        this.mChildHelper.detachViewFromParent(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    /* JADX WARN: Code duplicated, block: B:14:0x0022  */
    /* JADX WARN: Code duplicated, block: B:5:0x0010  */
    public static int getChildMeasureSpec(int i9, int i10, int i11, int i12, boolean z8) {
        int iMax = Math.max(0, i9 - i11);
        if (z8) {
            if (i12 >= 0) {
                i10 = 1073741824;
            } else if (i12 != -1 || (i10 != Integer.MIN_VALUE && (i10 == 0 || i10 != 1073741824))) {
                i10 = 0;
                i12 = 0;
            } else {
                i12 = iMax;
            }
        } else if (i12 >= 0) {
            i10 = 1073741824;
        } else if (i12 == -1) {
            i12 = iMax;
        } else if (i12 != -2) {
            i10 = 0;
            i12 = 0;
        } else if (i10 == Integer.MIN_VALUE || i10 == 1073741824) {
            i12 = iMax;
            i10 = Integer.MIN_VALUE;
        } else {
            i12 = iMax;
            i10 = 0;
        }
        return View$MeasureSpec.makeMeasureSpec(i12, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int[] getChildRectangleOnScreenScrollAmount(View view, Rect rect) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int iWidth = rect.width() + left;
        int iHeight = rect.height() + top;
        int i9 = left - paddingLeft;
        int iMin = Math.min(0, i9);
        int i10 = top - paddingTop;
        int iMin2 = Math.min(0, i10);
        int i11 = iWidth - width;
        int iMax = Math.max(0, i11);
        int iMax2 = Math.max(0, iHeight - height);
        if (getLayoutDirection() != 1) {
            if (iMin == 0) {
                iMin = Math.min(i9, iMax);
            }
            iMax = iMin;
        } else if (iMax == 0) {
            iMax = Math.max(iMin, i11);
        }
        if (iMin2 == 0) {
            iMin2 = Math.min(i10, iMax2);
        }
        return new int[]{iMax, iMin2};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static RecyclerView$LayoutManager$Properties getProperties(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9, int i10) {
        RecyclerView$LayoutManager$Properties recyclerView$LayoutManager$Properties = new RecyclerView$LayoutManager$Properties();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecyclerView, i9, i10);
        recyclerView$LayoutManager$Properties.orientation = typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_android_orientation, 1);
        recyclerView$LayoutManager$Properties.spanCount = typedArrayObtainStyledAttributes.getInt(R$styleable.RecyclerView_spanCount, 1);
        recyclerView$LayoutManager$Properties.reverseLayout = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RecyclerView_reverseLayout, false);
        recyclerView$LayoutManager$Properties.stackFromEnd = typedArrayObtainStyledAttributes.getBoolean(R$styleable.RecyclerView_stackFromEnd, false);
        typedArrayObtainStyledAttributes.recycle();
        return recyclerView$LayoutManager$Properties;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isFocusedChildVisibleAfterScrolling(RecyclerView recyclerView, int i9, int i10) {
        View focusedChild = recyclerView.getFocusedChild();
        if (focusedChild == null) {
            return false;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        Rect rect = this.mRecyclerView.mTempRect;
        getDecoratedBoundsWithMargins(focusedChild, rect);
        return rect.left - i9 < width && rect.right - i9 > paddingLeft && rect.top - i10 < height && rect.bottom - i10 > paddingTop;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isMeasurementUpToDate(int i9, int i10, int i11) {
        int mode = View$MeasureSpec.getMode(i10);
        int size = View$MeasureSpec.getSize(i10);
        if (i11 > 0 && i9 != i11) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i9;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i9;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void scrapOrRecycleView(RecyclerView$Recycler recyclerView$Recycler, int i9, View view) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt.shouldIgnore()) {
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "ignoring view " + childViewHolderInt);
                return;
            }
            return;
        }
        if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.mRecyclerView.mAdapter.hasStableIds()) {
            removeViewAt(i9);
            recyclerView$Recycler.recycleViewHolderInternal(childViewHolderInt);
        } else {
            detachViewAt(i9);
            recyclerView$Recycler.scrapView(view);
            this.mRecyclerView.mViewInfoStore.onViewDetached(childViewHolderInt);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addDisappearingView(View view) {
        addDisappearingView(view, -1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addView(View view) {
        addView(view, -1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void assertInLayoutOrScroll(String str) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.assertInLayoutOrScroll(str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void assertNotInLayoutOrScroll(String str) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.assertNotInLayoutOrScroll(str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void attachView(@NonNull View view, int i9, RecyclerView$LayoutParams recyclerView$LayoutParams) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        boolean zIsRemoved = childViewHolderInt.isRemoved();
        RecyclerView recyclerView = this.mRecyclerView;
        if (zIsRemoved) {
            recyclerView.mViewInfoStore.addToDisappearedInLayout(childViewHolderInt);
        } else {
            recyclerView.mViewInfoStore.removeFromDisappearedInLayout(childViewHolderInt);
        }
        this.mChildHelper.attachViewToParent(view, i9, recyclerView$LayoutParams, childViewHolderInt.isRemoved());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void calculateItemDecorationsForChild(@NonNull View view, @NonNull Rect rect) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.getItemDecorInsetsForChild(view));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canScrollHorizontally() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canScrollVertically() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean checkLayoutParams(RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return recyclerView$LayoutParams != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int computeHorizontalScrollExtent(@NonNull RecyclerView$State recyclerView$State) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int computeHorizontalScrollOffset(@NonNull RecyclerView$State recyclerView$State) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int computeHorizontalScrollRange(@NonNull RecyclerView$State recyclerView$State) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int computeVerticalScrollExtent(@NonNull RecyclerView$State recyclerView$State) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int computeVerticalScrollOffset(@NonNull RecyclerView$State recyclerView$State) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int computeVerticalScrollRange(@NonNull RecyclerView$State recyclerView$State) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void detachAndScrapAttachedViews(@NonNull RecyclerView$Recycler recyclerView$Recycler) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            scrapOrRecycleView(recyclerView$Recycler, childCount, getChildAt(childCount));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void detachAndScrapView(@NonNull View view, @NonNull RecyclerView$Recycler recyclerView$Recycler) {
        scrapOrRecycleView(recyclerView$Recycler, this.mChildHelper.indexOfChild(view), view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void detachAndScrapViewAt(int i9, @NonNull RecyclerView$Recycler recyclerView$Recycler) {
        scrapOrRecycleView(recyclerView$Recycler, i9, getChildAt(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void detachView(@NonNull View view) {
        int iIndexOfChild = this.mChildHelper.indexOfChild(view);
        if (iIndexOfChild >= 0) {
            detachViewInternal(iIndexOfChild, view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void detachViewAt(int i9) {
        detachViewInternal(i9, getChildAt(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchAttachedToWindow(RecyclerView recyclerView) {
        this.mIsAttachedToWindow = true;
        onAttachedToWindow(recyclerView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchDetachedFromWindow(RecyclerView recyclerView, RecyclerView$Recycler recyclerView$Recycler) {
        this.mIsAttachedToWindow = false;
        onDetachedFromWindow(recyclerView, recyclerView$Recycler);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void endAnimation(View view) {
        RecyclerView$ItemAnimator recyclerView$ItemAnimator = this.mRecyclerView.mItemAnimator;
        if (recyclerView$ItemAnimator != null) {
            recyclerView$ItemAnimator.endAnimation(RecyclerView.getChildViewHolderInt(view));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public View findContainingItemView(@NonNull View view) {
        View viewFindContainingItemView;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (viewFindContainingItemView = recyclerView.findContainingItemView(view)) == null || this.mChildHelper.isHidden(viewFindContainingItemView)) {
            return null;
        }
        return viewFindContainingItemView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public View findViewByPosition(int i9) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i9 && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.isPreLayout() || !childViewHolderInt.isRemoved())) {
                return childAt;
            }
        }
        return null;
    }

    public abstract RecyclerView$LayoutParams generateDefaultLayoutParams();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof RecyclerView$LayoutParams) {
            return new RecyclerView$LayoutParams((RecyclerView$LayoutParams) viewGroup$LayoutParams);
        }
        return viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams ? new RecyclerView$LayoutParams((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams) : new RecyclerView$LayoutParams(viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBaseline() {
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBottomDecorationHeight(@NonNull View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets.bottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public View getChildAt(int i9) {
        ChildHelper childHelper = this.mChildHelper;
        if (childHelper != null) {
            return childHelper.getChildAt(i9);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getChildCount() {
        ChildHelper childHelper = this.mChildHelper;
        if (childHelper != null) {
            return childHelper.getChildCount();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getClipToPadding() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null && recyclerView.mClipToPadding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getColumnCountForAccessibility(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || recyclerView.mAdapter == null || !canScrollHorizontally()) {
            return 1;
        }
        return this.mRecyclerView.mAdapter.getItemCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDecoratedBottom(@NonNull View view) {
        return getBottomDecorationHeight(view) + view.getBottom();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect rect) {
        RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDecoratedLeft(@NonNull View view) {
        return view.getLeft() - getLeftDecorationWidth(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDecoratedMeasuredHeight(@NonNull View view) {
        Rect rect = ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDecoratedMeasuredWidth(@NonNull View view) {
        Rect rect = ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDecoratedRight(@NonNull View view) {
        return getRightDecorationWidth(view) + view.getRight();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDecoratedTop(@NonNull View view) {
        return view.getTop() - getTopDecorationHeight(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public View getFocusedChild() {
        View focusedChild;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.mChildHelper.isHidden(focusedChild)) {
            return null;
        }
        return focusedChild;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getHeight() {
        return this.mHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHeightMode() {
        return this.mHeightMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getItemCount() {
        RecyclerView recyclerView = this.mRecyclerView;
        RecyclerView$Adapter adapter = recyclerView != null ? recyclerView.getAdapter() : null;
        if (adapter != null) {
            return adapter.getItemCount();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getItemViewType(@NonNull View view) {
        return RecyclerView.getChildViewHolderInt(view).getItemViewType();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLayoutDirection() {
        return this.mRecyclerView.getLayoutDirection();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLeftDecorationWidth(@NonNull View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets.left;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getMinimumHeight() {
        return ViewCompat.getMinimumHeight(this.mRecyclerView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getMinimumWidth() {
        return ViewCompat.getMinimumWidth(this.mRecyclerView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getPaddingBottom() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getPaddingEnd() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return ViewCompat.getPaddingEnd(recyclerView);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getPaddingLeft() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getPaddingRight() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getPaddingStart() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return ViewCompat.getPaddingStart(recyclerView);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getPaddingTop() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPosition(@NonNull View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).getViewLayoutPosition();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRightDecorationWidth(@NonNull View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets.right;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRowCountForAccessibility(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || recyclerView.mAdapter == null || !canScrollVertically()) {
            return 1;
        }
        return this.mRecyclerView.mAdapter.getItemCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSelectionModeForAccessibility(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTopDecorationHeight(@NonNull View view) {
        return ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets.top;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getTransformedBoundingBox(@NonNull View view, boolean z8, @NonNull Rect rect) {
        Matrix matrix;
        if (z8) {
            Rect rect2 = ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        } else {
            rect.set(0, 0, view.getWidth(), view.getHeight());
        }
        if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.mRecyclerView.mTempRectF;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getWidth() {
        return this.mWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getWidthMode() {
        return this.mWidthMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasFlexibleChildInBothOrientations() {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            ViewGroup$LayoutParams layoutParams = getChildAt(i9).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasFocus() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null && recyclerView.hasFocus();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ignoreView(@NonNull View view) {
        ViewParent parent = view.getParent();
        RecyclerView recyclerView = this.mRecyclerView;
        if (parent != recyclerView || recyclerView.indexOfChild(view) == -1) {
            i.k(a.i(this.mRecyclerView, new StringBuilder("View should be fully attached to be ignored")));
        } else {
            RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.addFlags(128);
            this.mRecyclerView.mViewInfoStore.removeViewHolder(childViewHolderInt);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAttachedToWindow() {
        return this.mIsAttachedToWindow;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAutoMeasureEnabled() {
        return this.mAutoMeasure;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isFocused() {
        RecyclerView recyclerView = this.mRecyclerView;
        return recyclerView != null && recyclerView.isFocused();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isItemPrefetchEnabled() {
        return this.mItemPrefetchEnabled;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isLayoutHierarchical(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isLayoutReversed() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isMeasurementCacheEnabled() {
        return this.mMeasurementCacheEnabled;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isSmoothScrolling() {
        RecyclerView$SmoothScroller recyclerView$SmoothScroller = this.mSmoothScroller;
        return recyclerView$SmoothScroller != null && recyclerView$SmoothScroller.isRunning();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isViewPartiallyVisible(@NonNull View view, boolean z8, boolean z9) {
        boolean z10 = this.mHorizontalBoundCheck.isViewWithinBoundFlags(view, 24579) && this.mVerticalBoundCheck.isViewWithinBoundFlags(view, 24579);
        return z8 ? z10 : !z10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void layoutDecorated(@NonNull View view, int i9, int i10, int i11, int i12) {
        Rect rect = ((RecyclerView$LayoutParams) view.getLayoutParams()).mDecorInsets;
        view.layout(i9 + rect.left, i10 + rect.top, i11 - rect.right, i12 - rect.bottom);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void layoutDecoratedWithMargins(@NonNull View view, int i9, int i10, int i11, int i12) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        Rect rect = recyclerView$LayoutParams.mDecorInsets;
        view.layout(i9 + rect.left + ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).leftMargin, i10 + rect.top + ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).topMargin, (i11 - rect.right) - ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).rightMargin, (i12 - rect.bottom) - ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).bottomMargin);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void measureChild(@NonNull View view, int i9, int i10) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
        int i11 = itemDecorInsetsForChild.left + itemDecorInsetsForChild.right + i9;
        int i12 = itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom + i10;
        int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft() + i11, ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).width, canScrollHorizontally());
        int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop() + i12, ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).height, canScrollVertically());
        if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, recyclerView$LayoutParams)) {
            view.measure(childMeasureSpec, childMeasureSpec2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void measureChildWithMargins(@NonNull View view, int i9, int i10) {
        RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams) view.getLayoutParams();
        Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
        int i11 = itemDecorInsetsForChild.left + itemDecorInsetsForChild.right + i9;
        int i12 = itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom + i10;
        int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft() + ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).leftMargin + ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).rightMargin + i11, ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).width, canScrollHorizontally());
        int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop() + ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).topMargin + ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).bottomMargin + i12, ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).height, canScrollVertically());
        if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, recyclerView$LayoutParams)) {
            view.measure(childMeasureSpec, childMeasureSpec2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void moveView(int i9, int i10) {
        View childAt = getChildAt(i9);
        if (childAt != null) {
            detachViewAt(i9);
            attachView(childAt, i10);
        } else {
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i9 + this.mRecyclerView.toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void offsetChildrenHorizontal(@Px int i9) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.offsetChildrenHorizontal(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void offsetChildrenVertical(@Px int i9) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.offsetChildrenVertical(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onAddFocusables(@NonNull RecyclerView recyclerView, @NonNull ArrayList<View> arrayList, int i9, int i10) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @CallSuper
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView$Recycler recyclerView$Recycler) {
        onDetachedFromWindow(recyclerView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public View onFocusSearchFailed(@NonNull View view, int i9, @NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onInitializeAccessibilityEvent(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, @NonNull AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z8 = true;
        if (!recyclerView.canScrollVertically(1) && !this.mRecyclerView.canScrollVertically(-1) && !this.mRecyclerView.canScrollHorizontally(-1) && !this.mRecyclerView.canScrollHorizontally(1)) {
            z8 = false;
        }
        accessibilityEvent.setScrollable(z8);
        RecyclerView$Adapter recyclerView$Adapter = this.mRecyclerView.mAdapter;
        if (recyclerView$Adapter != null) {
            accessibilityEvent.setItemCount(recyclerView$Adapter.getItemCount());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.mRecyclerView.canScrollVertically(-1) || this.mRecyclerView.canScrollHorizontally(-1)) {
            accessibilityNodeInfoCompat.addAction(8192);
            accessibilityNodeInfoCompat.setScrollable(true);
            accessibilityNodeInfoCompat.setGranularScrollingSupported(true);
        }
        if (this.mRecyclerView.canScrollVertically(1) || this.mRecyclerView.canScrollHorizontally(1)) {
            accessibilityNodeInfoCompat.addAction(4096);
            accessibilityNodeInfoCompat.setScrollable(true);
            accessibilityNodeInfoCompat.setGranularScrollingSupported(true);
        }
        accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat$CollectionInfoCompat.obtain(getRowCountForAccessibility(recyclerView$Recycler, recyclerView$State), getColumnCountForAccessibility(recyclerView$Recycler, recyclerView$State), isLayoutHierarchical(recyclerView$Recycler, recyclerView$State), getSelectionModeForAccessibility(recyclerView$Recycler, recyclerView$State)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onInitializeAccessibilityNodeInfoForItem(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, @NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat$CollectionItemInfoCompat.obtain(canScrollVertically() ? getPosition(view) : 0, 1, canScrollHorizontally() ? getPosition(view) : 0, 1, false, false));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public View onInterceptFocusSearch(@NonNull View view, int i9) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i9, int i10, @Nullable Object obj) {
        onItemsUpdated(recyclerView, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onLayoutChildren(RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onMeasure(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, int i9, int i10) {
        this.mRecyclerView.defaultOnMeasure(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean onRequestChildFocus(@NonNull RecyclerView recyclerView, @NonNull View view, @Nullable View view2) {
        return isSmoothScrolling() || recyclerView.isComputingLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Parcelable onSaveInstanceState() {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onSmoothScrollerStopped(RecyclerView$SmoothScroller recyclerView$SmoothScroller) {
        if (this.mSmoothScroller == recyclerView$SmoothScroller) {
            this.mSmoothScroller = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:21:0x0066 A[PHI: r11
  0x0066: PHI (r11v8 int) = (r11v5 int), (r11v19 int) binds: [B:27:0x0082, B:19:0x0058] A[DONT_GENERATE, DONT_INLINE]] */
    public boolean performAccessibilityAction(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, int i9, @Nullable Bundle bundle) {
        int paddingTop;
        int paddingLeft;
        float f8;
        if (this.mRecyclerView != null) {
            int height = getHeight();
            int width = getWidth();
            Rect rect = new Rect();
            if (this.mRecyclerView.getMatrix().isIdentity() && this.mRecyclerView.getGlobalVisibleRect(rect)) {
                height = rect.height();
                width = rect.width();
            }
            if (i9 == 4096) {
                paddingTop = this.mRecyclerView.canScrollVertically(1) ? (height - getPaddingTop()) - getPaddingBottom() : 0;
                if (this.mRecyclerView.canScrollHorizontally(1)) {
                    paddingLeft = (width - getPaddingLeft()) - getPaddingRight();
                } else {
                    paddingLeft = 0;
                }
            } else if (i9 != 8192) {
                paddingTop = 0;
                paddingLeft = 0;
            } else {
                paddingTop = this.mRecyclerView.canScrollVertically(-1) ? -((height - getPaddingTop()) - getPaddingBottom()) : 0;
                if (this.mRecyclerView.canScrollHorizontally(-1)) {
                    paddingLeft = -((width - getPaddingLeft()) - getPaddingRight());
                } else {
                    paddingLeft = 0;
                }
            }
            if (paddingTop != 0 || paddingLeft != 0) {
                if (bundle != null) {
                    f8 = bundle.getFloat(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT, 1.0f);
                    if (f8 < 0.0f) {
                        if (RecyclerView.sDebugAssertionsEnabled) {
                            b.i("attempting to use ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT with a negative value (", f8, ")");
                            return false;
                        }
                    }
                } else {
                    f8 = 1.0f;
                }
                if (Float.compare(f8, Float.POSITIVE_INFINITY) != 0) {
                    if (Float.compare(1.0f, f8) != 0 && Float.compare(0.0f, f8) != 0) {
                        paddingLeft = (int) (paddingLeft * f8);
                        paddingTop = (int) (paddingTop * f8);
                    }
                    this.mRecyclerView.smoothScrollBy(paddingLeft, paddingTop, null, Integer.MIN_VALUE, true);
                    return true;
                }
                RecyclerView recyclerView = this.mRecyclerView;
                RecyclerView$Adapter recyclerView$Adapter = recyclerView.mAdapter;
                if (recyclerView$Adapter != null) {
                    if (i9 == 4096) {
                        recyclerView.smoothScrollToPosition(recyclerView$Adapter.getItemCount() - 1);
                        return true;
                    }
                    if (i9 != 8192) {
                        return true;
                    }
                    recyclerView.smoothScrollToPosition(0);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean performAccessibilityActionForItem(@NonNull View view, int i9, @Nullable Bundle bundle) {
        RecyclerView recyclerView = this.mRecyclerView;
        return performAccessibilityActionForItem(recyclerView.mRecycler, recyclerView.mState, view, i9, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void postOnAnimation(Runnable runnable) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            ViewCompat.postOnAnimation(recyclerView, runnable);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeAllViews() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            this.mChildHelper.removeViewAt(childCount);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeAndRecycleAllViews(@NonNull RecyclerView$Recycler recyclerView$Recycler) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                removeAndRecycleViewAt(childCount, recyclerView$Recycler);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeAndRecycleScrapInt(RecyclerView$Recycler recyclerView$Recycler) {
        int scrapCount = recyclerView$Recycler.getScrapCount();
        for (int i9 = scrapCount - 1; i9 >= 0; i9--) {
            View scrapViewAt = recyclerView$Recycler.getScrapViewAt(i9);
            RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(scrapViewAt);
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.setIsRecyclable(false);
                if (childViewHolderInt.isTmpDetached()) {
                    this.mRecyclerView.removeDetachedView(scrapViewAt, false);
                }
                RecyclerView$ItemAnimator recyclerView$ItemAnimator = this.mRecyclerView.mItemAnimator;
                if (recyclerView$ItemAnimator != null) {
                    recyclerView$ItemAnimator.endAnimation(childViewHolderInt);
                }
                childViewHolderInt.setIsRecyclable(true);
                recyclerView$Recycler.quickRecycleScrapView(scrapViewAt);
            }
        }
        recyclerView$Recycler.clearScrap();
        if (scrapCount > 0) {
            this.mRecyclerView.invalidate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeAndRecycleView(@NonNull View view, @NonNull RecyclerView$Recycler recyclerView$Recycler) {
        removeView(view);
        recyclerView$Recycler.recycleView(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeAndRecycleViewAt(int i9, @NonNull RecyclerView$Recycler recyclerView$Recycler) {
        View childAt = getChildAt(i9);
        removeViewAt(i9);
        recyclerView$Recycler.recycleView(childAt);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean removeCallbacks(Runnable runnable) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.removeCallbacks(runnable);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeDetachedView(@NonNull View view) {
        this.mRecyclerView.removeDetachedView(view, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeView(View view) {
        this.mChildHelper.removeView(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeViewAt(int i9) {
        if (getChildAt(i9) != null) {
            this.mChildHelper.removeViewAt(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z8, boolean z9) {
        int[] childRectangleOnScreenScrollAmount = getChildRectangleOnScreenScrollAmount(view, rect);
        int i9 = childRectangleOnScreenScrollAmount[0];
        int i10 = childRectangleOnScreenScrollAmount[1];
        if ((z9 && !isFocusedChildVisibleAfterScrolling(recyclerView, i9, i10)) || (i9 == 0 && i10 == 0)) {
            return false;
        }
        if (z8) {
            recyclerView.scrollBy(i9, i10);
        } else {
            recyclerView.smoothScrollBy(i9, i10);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void requestLayout() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void requestSimpleAnimationsInNextLayout() {
        this.mRequestedSimpleAnimations = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int scrollHorizontallyBy(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void scrollToPosition(int i9) {
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.e("RecyclerView", "You MUST implement scrollToPosition. It will soon become abstract");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int scrollVerticallyBy(int i9, RecyclerView$Recycler recyclerView$Recycler, RecyclerView$State recyclerView$State) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setAutoMeasureEnabled(boolean z8) {
        this.mAutoMeasure = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
        setMeasureSpecs(View$MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), BasicMeasure.EXACTLY), View$MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), BasicMeasure.EXACTLY));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setItemPrefetchEnabled(boolean z8) {
        if (z8 != this.mItemPrefetchEnabled) {
            this.mItemPrefetchEnabled = z8;
            this.mPrefetchMaxCountObserved = 0;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.mRecycler.updateViewCacheSize();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMeasureSpecs(int i9, int i10) {
        this.mWidth = View$MeasureSpec.getSize(i9);
        int mode = View$MeasureSpec.getMode(i9);
        this.mWidthMode = mode;
        if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            this.mWidth = 0;
        }
        this.mHeight = View$MeasureSpec.getSize(i10);
        int mode2 = View$MeasureSpec.getMode(i10);
        this.mHeightMode = mode2;
        if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            return;
        }
        this.mHeight = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMeasuredDimension(Rect rect, int i9, int i10) {
        setMeasuredDimension(chooseSize(i9, getPaddingRight() + getPaddingLeft() + rect.width(), getMinimumWidth()), chooseSize(i10, getPaddingBottom() + getPaddingTop() + rect.height(), getMinimumHeight()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMeasuredDimensionFromChildren(int i9, int i10) {
        int childCount = getChildCount();
        if (childCount == 0) {
            this.mRecyclerView.defaultOnMeasure(i9, i10);
            return;
        }
        int i11 = Integer.MIN_VALUE;
        int i12 = Integer.MAX_VALUE;
        int i13 = Integer.MIN_VALUE;
        int i14 = Integer.MAX_VALUE;
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            Rect rect = this.mRecyclerView.mTempRect;
            getDecoratedBoundsWithMargins(childAt, rect);
            int i16 = rect.left;
            if (i16 < i14) {
                i14 = i16;
            }
            int i17 = rect.right;
            if (i17 > i11) {
                i11 = i17;
            }
            int i18 = rect.top;
            if (i18 < i12) {
                i12 = i18;
            }
            int i19 = rect.bottom;
            if (i19 > i13) {
                i13 = i19;
            }
        }
        this.mRecyclerView.mTempRect.set(i14, i12, i11, i13);
        setMeasuredDimension(this.mRecyclerView.mTempRect, i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMeasurementCacheEnabled(boolean z8) {
        this.mMeasurementCacheEnabled = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRecyclerView(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.mRecyclerView = null;
            this.mChildHelper = null;
            this.mWidth = 0;
            this.mHeight = 0;
        } else {
            this.mRecyclerView = recyclerView;
            this.mChildHelper = recyclerView.mChildHelper;
            this.mWidth = recyclerView.getWidth();
            this.mHeight = recyclerView.getHeight();
        }
        this.mWidthMode = BasicMeasure.EXACTLY;
        this.mHeightMode = BasicMeasure.EXACTLY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean shouldMeasureChild(View view, int i9, int i10, RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return (!view.isLayoutRequested() && this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getWidth(), i9, ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).width) && isMeasurementUpToDate(view.getHeight(), i10, ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).height)) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean shouldMeasureTwice() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean shouldReMeasureChild(View view, int i9, int i10, RecyclerView$LayoutParams recyclerView$LayoutParams) {
        return (this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getMeasuredWidth(), i9, ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).width) && isMeasurementUpToDate(view.getMeasuredHeight(), i10, ((ViewGroup$MarginLayoutParams) recyclerView$LayoutParams).height)) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView$State recyclerView$State, int i9) {
        Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void startSmoothScroll(RecyclerView$SmoothScroller recyclerView$SmoothScroller) {
        RecyclerView$SmoothScroller recyclerView$SmoothScroller2 = this.mSmoothScroller;
        if (recyclerView$SmoothScroller2 != null && recyclerView$SmoothScroller != recyclerView$SmoothScroller2 && recyclerView$SmoothScroller2.isRunning()) {
            this.mSmoothScroller.stop();
        }
        this.mSmoothScroller = recyclerView$SmoothScroller;
        recyclerView$SmoothScroller.start(this.mRecyclerView, this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void stopIgnoringView(@NonNull View view) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        childViewHolderInt.stopIgnoring();
        childViewHolderInt.resetInternal();
        childViewHolderInt.addFlags(4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void stopSmoothScroller() {
        RecyclerView$SmoothScroller recyclerView$SmoothScroller = this.mSmoothScroller;
        if (recyclerView$SmoothScroller != null) {
            recyclerView$SmoothScroller.stop();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean supportsPredictiveItemAnimations() {
        return false;
    }

    @Deprecated
    public void onDetachedFromWindow(RecyclerView recyclerView) {
    }

    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i9, int i10) {
    }

    public void addDisappearingView(View view, int i9) {
        addViewInt(view, i9, true);
    }

    public void addView(View view, int i9) {
        addViewInt(view, i9, false);
    }

    public boolean performAccessibilityActionForItem(@NonNull RecyclerView$Recycler recyclerView$Recycler, @NonNull RecyclerView$State recyclerView$State, @NonNull View view, int i9, @Nullable Bundle bundle) {
        return false;
    }

    public boolean onRequestChildFocus(@NonNull RecyclerView recyclerView, @NonNull RecyclerView$State recyclerView$State, @NonNull View view, @Nullable View view2) {
        return onRequestChildFocus(recyclerView, view, view2);
    }

    @CallSuper
    public void onAttachedToWindow(RecyclerView recyclerView) {
    }

    public void onItemsChanged(@NonNull RecyclerView recyclerView) {
    }

    public void onLayoutCompleted(RecyclerView$State recyclerView$State) {
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    public void onScrollStateChanged(int i9) {
    }

    public RecyclerView$LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new RecyclerView$LayoutParams(context, attributeSet);
    }

    public void attachView(@NonNull View view, int i9) {
        attachView(view, i9, (RecyclerView$LayoutParams) view.getLayoutParams());
    }

    public void attachView(@NonNull View view) {
        attachView(view, -1);
    }

    public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z8) {
        return requestChildRectangleOnScreen(recyclerView, view, rect, z8, false);
    }

    public void onInitializeAccessibilityNodeInfoForItem(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt == null || childViewHolderInt.isRemoved() || this.mChildHelper.isHidden(childViewHolderInt.itemView)) {
            return;
        }
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityNodeInfoForItem(recyclerView.mRecycler, recyclerView.mState, view, accessibilityNodeInfoCompat);
    }

    public void collectInitialPrefetchPositions(int i9, RecyclerView$LayoutManager$LayoutPrefetchRegistry recyclerView$LayoutManager$LayoutPrefetchRegistry) {
    }

    public void onAdapterChanged(@Nullable RecyclerView$Adapter recyclerView$Adapter, @Nullable RecyclerView$Adapter recyclerView$Adapter2) {
    }

    public void setMeasuredDimension(int i9, int i10) {
        RecyclerView.access$500(this.mRecyclerView, i9, i10);
    }

    /* JADX WARN: Code duplicated, block: B:5:0x000c A[PHI: r3
  0x000c: PHI (r3v5 int) = (r3v0 int), (r3v2 int), (r3v0 int) binds: [B:7:0x0010, B:11:0x0016, B:4:0x000a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:6:0x000e  */
    @Deprecated
    public static int getChildMeasureSpec(int i9, int i10, int i11, boolean z8) {
        int i12 = i9 - i10;
        int i13 = 0;
        int iMax = Math.max(0, i12);
        if (z8) {
            if (i11 >= 0) {
                i13 = 1073741824;
            } else {
                i11 = 0;
            }
        } else if (i11 >= 0) {
            i13 = 1073741824;
        } else if (i11 == -1) {
            i11 = iMax;
            i13 = 1073741824;
        } else if (i11 == -2) {
            i13 = Integer.MIN_VALUE;
            i11 = iMax;
        } else {
            i11 = 0;
        }
        return View$MeasureSpec.makeMeasureSpec(i11, i13);
    }

    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityEvent(recyclerView.mRecycler, recyclerView.mState, accessibilityEvent);
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityNodeInfo(recyclerView.mRecycler, recyclerView.mState, accessibilityNodeInfoCompat);
    }

    public void onItemsAdded(@NonNull RecyclerView recyclerView, int i9, int i10) {
    }

    public void onItemsRemoved(@NonNull RecyclerView recyclerView, int i9, int i10) {
    }

    public void collectAdjacentPrefetchPositions(int i9, int i10, RecyclerView$State recyclerView$State, RecyclerView$LayoutManager$LayoutPrefetchRegistry recyclerView$LayoutManager$LayoutPrefetchRegistry) {
    }

    public void onItemsMoved(@NonNull RecyclerView recyclerView, int i9, int i10, int i11) {
    }

    public boolean performAccessibilityAction(int i9, @Nullable Bundle bundle) {
        RecyclerView recyclerView = this.mRecyclerView;
        return performAccessibilityAction(recyclerView.mRecycler, recyclerView.mState, i9, bundle);
    }
}
