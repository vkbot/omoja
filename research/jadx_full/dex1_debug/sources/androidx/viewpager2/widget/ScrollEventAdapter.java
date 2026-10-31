package androidx.viewpager2.widget;

import ai.onnxruntime.a;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView$OnScrollListener;
import j1.i;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
final class ScrollEventAdapter extends RecyclerView$OnScrollListener {
    private static final int NO_POSITION = -1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_IN_PROGRESS_FAKE_DRAG = 4;
    private static final int STATE_IN_PROGRESS_IMMEDIATE_SCROLL = 3;
    private static final int STATE_IN_PROGRESS_MANUAL_DRAG = 1;
    private static final int STATE_IN_PROGRESS_SMOOTH_SCROLL = 2;
    private int mAdapterState;
    private ViewPager2$OnPageChangeCallback mCallback;
    private boolean mDataSetChangeHappened;
    private boolean mDispatchSelected;
    private int mDragStartPosition;
    private boolean mFakeDragging;

    @NonNull
    private final LinearLayoutManager mLayoutManager;

    @NonNull
    private final RecyclerView mRecyclerView;
    private boolean mScrollHappened;
    private int mScrollState;
    private ScrollEventAdapter$ScrollEventValues mScrollValues;
    private int mTarget;

    @NonNull
    private final ViewPager2 mViewPager;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ScrollEventAdapter(@NonNull ViewPager2 viewPager2) {
        this.mViewPager = viewPager2;
        RecyclerView recyclerView = viewPager2.mRecyclerView;
        this.mRecyclerView = recyclerView;
        this.mLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.mScrollValues = new ScrollEventAdapter$ScrollEventValues();
        resetState();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void dispatchScrolled(int i9, float f8, int i10) {
        ViewPager2$OnPageChangeCallback viewPager2$OnPageChangeCallback = this.mCallback;
        if (viewPager2$OnPageChangeCallback != null) {
            viewPager2$OnPageChangeCallback.onPageScrolled(i9, f8, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void dispatchSelected(int i9) {
        ViewPager2$OnPageChangeCallback viewPager2$OnPageChangeCallback = this.mCallback;
        if (viewPager2$OnPageChangeCallback != null) {
            viewPager2$OnPageChangeCallback.onPageSelected(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void dispatchStateChanged(int i9) {
        if ((this.mAdapterState == 3 && this.mScrollState == 0) || this.mScrollState == i9) {
            return;
        }
        this.mScrollState = i9;
        ViewPager2$OnPageChangeCallback viewPager2$OnPageChangeCallback = this.mCallback;
        if (viewPager2$OnPageChangeCallback != null) {
            viewPager2$OnPageChangeCallback.onPageScrollStateChanged(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getPosition() {
        return this.mLayoutManager.findFirstVisibleItemPosition();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isInAnyDraggingState() {
        int i9 = this.mAdapterState;
        return i9 == 1 || i9 == 4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void resetState() {
        this.mAdapterState = 0;
        this.mScrollState = 0;
        this.mScrollValues.reset();
        this.mDragStartPosition = -1;
        this.mTarget = -1;
        this.mDispatchSelected = false;
        this.mScrollHappened = false;
        this.mFakeDragging = false;
        this.mDataSetChangeHappened = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void startDrag(boolean z8) {
        this.mFakeDragging = z8;
        this.mAdapterState = z8 ? 4 : 1;
        int i9 = this.mTarget;
        if (i9 != -1) {
            this.mDragStartPosition = i9;
            this.mTarget = -1;
        } else if (this.mDragStartPosition == -1) {
            this.mDragStartPosition = getPosition();
        }
        dispatchStateChanged(1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateScrollEventValues() {
        int top;
        ScrollEventAdapter$ScrollEventValues scrollEventAdapter$ScrollEventValues = this.mScrollValues;
        int iFindFirstVisibleItemPosition = this.mLayoutManager.findFirstVisibleItemPosition();
        scrollEventAdapter$ScrollEventValues.mPosition = iFindFirstVisibleItemPosition;
        if (iFindFirstVisibleItemPosition == -1) {
            scrollEventAdapter$ScrollEventValues.reset();
            return;
        }
        View viewFindViewByPosition = this.mLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
        if (viewFindViewByPosition == null) {
            scrollEventAdapter$ScrollEventValues.reset();
            return;
        }
        int leftDecorationWidth = this.mLayoutManager.getLeftDecorationWidth(viewFindViewByPosition);
        int rightDecorationWidth = this.mLayoutManager.getRightDecorationWidth(viewFindViewByPosition);
        int topDecorationHeight = this.mLayoutManager.getTopDecorationHeight(viewFindViewByPosition);
        int bottomDecorationHeight = this.mLayoutManager.getBottomDecorationHeight(viewFindViewByPosition);
        ViewGroup$LayoutParams layoutParams = viewFindViewByPosition.getLayoutParams();
        if (layoutParams instanceof ViewGroup$MarginLayoutParams) {
            ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams) layoutParams;
            leftDecorationWidth += viewGroup$MarginLayoutParams.leftMargin;
            rightDecorationWidth += viewGroup$MarginLayoutParams.rightMargin;
            topDecorationHeight += viewGroup$MarginLayoutParams.topMargin;
            bottomDecorationHeight += viewGroup$MarginLayoutParams.bottomMargin;
        }
        int height = viewFindViewByPosition.getHeight() + topDecorationHeight + bottomDecorationHeight;
        int width = viewFindViewByPosition.getWidth() + leftDecorationWidth + rightDecorationWidth;
        if (this.mLayoutManager.getOrientation() == 0) {
            top = (viewFindViewByPosition.getLeft() - leftDecorationWidth) - this.mRecyclerView.getPaddingLeft();
            if (this.mViewPager.isRtl()) {
                top = -top;
            }
            height = width;
        } else {
            top = (viewFindViewByPosition.getTop() - topDecorationHeight) - this.mRecyclerView.getPaddingTop();
        }
        int i9 = -top;
        scrollEventAdapter$ScrollEventValues.mOffsetPx = i9;
        if (i9 >= 0) {
            scrollEventAdapter$ScrollEventValues.mOffset = height == 0 ? 0.0f : i9 / height;
        } else if (new AnimateLayoutChangeDetector(this.mLayoutManager).mayHaveInterferingAnimations()) {
            i.l("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        } else {
            Locale locale = Locale.US;
            i.l(a.e(scrollEventAdapter$ScrollEventValues.mOffsetPx, "Page can only be offset by a positive amount, not by "));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getRelativeScrollPosition() {
        updateScrollEventValues();
        ScrollEventAdapter$ScrollEventValues scrollEventAdapter$ScrollEventValues = this.mScrollValues;
        return ((double) scrollEventAdapter$ScrollEventValues.mPosition) + ((double) scrollEventAdapter$ScrollEventValues.mOffset);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getScrollState() {
        return this.mScrollState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isDragging() {
        return this.mScrollState == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isIdle() {
        return this.mScrollState == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyBeginFakeDrag() {
        this.mAdapterState = 4;
        startDrag(true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyDataSetChangeHappened() {
        this.mDataSetChangeHappened = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyEndFakeDrag() {
        if (!isDragging() || this.mFakeDragging) {
            this.mFakeDragging = false;
            updateScrollEventValues();
            ScrollEventAdapter$ScrollEventValues scrollEventAdapter$ScrollEventValues = this.mScrollValues;
            if (scrollEventAdapter$ScrollEventValues.mOffsetPx != 0) {
                dispatchStateChanged(2);
                return;
            }
            int i9 = scrollEventAdapter$ScrollEventValues.mPosition;
            if (i9 != this.mDragStartPosition) {
                dispatchSelected(i9);
            }
            dispatchStateChanged(0);
            resetState();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void notifyProgrammaticScroll(int i9, boolean z8) {
        this.mAdapterState = z8 ? 2 : 3;
        this.mFakeDragging = false;
        boolean z9 = this.mTarget != i9;
        this.mTarget = i9;
        dispatchStateChanged(2);
        if (z9) {
            dispatchSelected(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$OnScrollListener
    public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
        if (!(this.mAdapterState == 1 && this.mScrollState == 1) && i9 == 1) {
            startDrag(false);
            return;
        }
        if (isInAnyDraggingState() && i9 == 2) {
            if (this.mScrollHappened) {
                dispatchStateChanged(2);
                this.mDispatchSelected = true;
                return;
            }
            return;
        }
        if (isInAnyDraggingState() && i9 == 0) {
            updateScrollEventValues();
            boolean z8 = this.mScrollHappened;
            ScrollEventAdapter$ScrollEventValues scrollEventAdapter$ScrollEventValues = this.mScrollValues;
            if (!z8) {
                int i10 = scrollEventAdapter$ScrollEventValues.mPosition;
                if (i10 != -1) {
                    dispatchScrolled(i10, 0.0f, 0);
                }
            } else if (scrollEventAdapter$ScrollEventValues.mOffsetPx == 0) {
                int i11 = this.mDragStartPosition;
                int i12 = scrollEventAdapter$ScrollEventValues.mPosition;
                if (i11 != i12) {
                    dispatchSelected(i12);
                }
            }
            dispatchStateChanged(0);
            resetState();
        }
        if (this.mAdapterState == 2 && i9 == 0 && this.mDataSetChangeHappened) {
            updateScrollEventValues();
            ScrollEventAdapter$ScrollEventValues scrollEventAdapter$ScrollEventValues2 = this.mScrollValues;
            if (scrollEventAdapter$ScrollEventValues2.mOffsetPx == 0) {
                int i13 = this.mTarget;
                int i14 = scrollEventAdapter$ScrollEventValues2.mPosition;
                if (i13 != i14) {
                    if (i14 == -1) {
                        i14 = 0;
                    }
                    dispatchSelected(i14);
                }
                dispatchStateChanged(0);
                resetState();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:12:0x001f  */
    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    @Override // androidx.recyclerview.widget.RecyclerView$OnScrollListener
    public void onScrolled(@NonNull RecyclerView recyclerView, int i9, int i10) {
        ScrollEventAdapter$ScrollEventValues scrollEventAdapter$ScrollEventValues;
        int i11;
        this.mScrollHappened = true;
        updateScrollEventValues();
        if (this.mDispatchSelected) {
            this.mDispatchSelected = false;
            if (i10 > 0) {
                scrollEventAdapter$ScrollEventValues = this.mScrollValues;
                if (scrollEventAdapter$ScrollEventValues.mOffsetPx != 0) {
                    i11 = scrollEventAdapter$ScrollEventValues.mPosition + 1;
                } else {
                    i11 = this.mScrollValues.mPosition;
                }
            } else {
                if (i10 == 0) {
                    if ((i9 < 0) == this.mViewPager.isRtl()) {
                        scrollEventAdapter$ScrollEventValues = this.mScrollValues;
                        if (scrollEventAdapter$ScrollEventValues.mOffsetPx != 0) {
                            i11 = scrollEventAdapter$ScrollEventValues.mPosition + 1;
                        }
                    }
                }
                i11 = this.mScrollValues.mPosition;
            }
            this.mTarget = i11;
            if (this.mDragStartPosition != i11) {
                dispatchSelected(i11);
            }
        } else if (this.mAdapterState == 0) {
            int i12 = this.mScrollValues.mPosition;
            if (i12 == -1) {
                i12 = 0;
            }
            dispatchSelected(i12);
        }
        ScrollEventAdapter$ScrollEventValues scrollEventAdapter$ScrollEventValues2 = this.mScrollValues;
        int i13 = scrollEventAdapter$ScrollEventValues2.mPosition;
        if (i13 == -1) {
            i13 = 0;
        }
        dispatchScrolled(i13, scrollEventAdapter$ScrollEventValues2.mOffset, scrollEventAdapter$ScrollEventValues2.mOffsetPx);
        ScrollEventAdapter$ScrollEventValues scrollEventAdapter$ScrollEventValues3 = this.mScrollValues;
        int i14 = scrollEventAdapter$ScrollEventValues3.mPosition;
        int i15 = this.mTarget;
        if ((i14 == i15 || i15 == -1) && scrollEventAdapter$ScrollEventValues3.mOffsetPx == 0 && this.mScrollState != 1) {
            dispatchStateChanged(0);
            resetState();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOnPageChangeCallback(ViewPager2$OnPageChangeCallback viewPager2$OnPageChangeCallback) {
        this.mCallback = viewPager2$OnPageChangeCallback;
    }
}
