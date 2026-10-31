package androidx.viewpager.widget;

import ai.onnxruntime.b;
import android.R$attr;
import android.content.Context;
import android.content.res.Resources$NotFoundException;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.annotation.CallSuper;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import j1.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewPager extends ViewGroup {
    private static final int CLOSE_ENOUGH = 2;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_GUTTER_SIZE = 16;
    private static final int DEFAULT_OFFSCREEN_PAGES = 1;
    private static final int DRAW_ORDER_DEFAULT = 0;
    private static final int DRAW_ORDER_FORWARD = 1;
    private static final int DRAW_ORDER_REVERSE = 2;
    private static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    private static final int MIN_DISTANCE_FOR_FLING = 25;
    private static final int MIN_FLING_VELOCITY = 400;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private static final String TAG = "ViewPager";
    private static final boolean USE_CACHE = false;
    private int mActivePointerId;
    PagerAdapter mAdapter;
    private List<ViewPager$OnAdapterChangeListener> mAdapterChangeListeners;
    private int mBottomPageBounds;
    private boolean mCalledSuper;
    private int mChildHeightMeasureSpec;
    private int mChildWidthMeasureSpec;
    private int mCloseEnough;
    int mCurItem;
    private int mDecorChildCount;
    private int mDefaultGutterSize;
    private int mDrawingOrder;
    private ArrayList<View> mDrawingOrderedChildren;
    private final Runnable mEndScrollRunnable;
    private int mExpectedAdapterCount;
    private long mFakeDragBeginTime;
    private boolean mFakeDragging;
    private boolean mFirstLayout;
    private float mFirstOffset;
    private int mFlingDistance;
    private int mGutterSize;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private ViewPager$OnPageChangeListener mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsScrollStarted;
    private boolean mIsUnableToDrag;
    private final ArrayList<ViewPager$ItemInfo> mItems;
    private float mLastMotionX;
    private float mLastMotionY;
    private float mLastOffset;
    private EdgeEffect mLeftEdge;
    private Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private boolean mNeedCalculatePageOffsets;
    private ViewPager$PagerObserver mObserver;
    private int mOffscreenPageLimit;
    private ViewPager$OnPageChangeListener mOnPageChangeListener;
    private List<ViewPager$OnPageChangeListener> mOnPageChangeListeners;
    private int mPageMargin;
    private ViewPager$PageTransformer mPageTransformer;
    private int mPageTransformerLayerType;
    private boolean mPopulatePending;
    private Parcelable mRestoredAdapterState;
    private ClassLoader mRestoredClassLoader;
    private int mRestoredCurItem;
    private EdgeEffect mRightEdge;
    private int mScrollState;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private final ViewPager$ItemInfo mTempItem;
    private final Rect mTempRect;
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    static final int[] LAYOUT_ATTRS = {R$attr.layout_gravity};
    private static final Comparator<ViewPager$ItemInfo> COMPARATOR = new ViewPager$1();
    private static final Interpolator sInterpolator = new ViewPager$2();
    private static final ViewPager$ViewPositionComparator sPositionComparator = new ViewPager$ViewPositionComparator();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager(@NonNull Context context) {
        super(context);
        this.mItems = new ArrayList<>();
        this.mTempItem = new ViewPager$ItemInfo();
        this.mTempRect = new Rect();
        this.mRestoredCurItem = -1;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = Float.MAX_VALUE;
        this.mOffscreenPageLimit = 1;
        this.mActivePointerId = -1;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = false;
        this.mEndScrollRunnable = new ViewPager$3(this);
        this.mScrollState = 0;
        initViewPager();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:16:0x0039 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:27:0x0078 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:31:0x0086 */
    private void calculatePageOffsets(ViewPager$ItemInfo viewPager$ItemInfo, int i9, ViewPager$ItemInfo viewPager$ItemInfo2) {
        int i10;
        int i11;
        ViewPager$ItemInfo viewPager$ItemInfo3;
        ViewPager$ItemInfo viewPager$ItemInfo4;
        int count = this.mAdapter.getCount();
        int clientWidth = getClientWidth();
        float f8 = clientWidth > 0 ? this.mPageMargin / clientWidth : 0.0f;
        if (viewPager$ItemInfo2 != null) {
            int i12 = viewPager$ItemInfo2.position;
            int i13 = viewPager$ItemInfo.position;
            if (i12 < i13) {
                float pageWidth = viewPager$ItemInfo2.offset + viewPager$ItemInfo2.widthFactor + f8;
                int i14 = i12 + 1;
                int i15 = 0;
                while (i14 <= viewPager$ItemInfo.position && i15 < this.mItems.size()) {
                    ViewPager$ItemInfo viewPager$ItemInfo5 = this.mItems.get(i15);
                    while (true) {
                        viewPager$ItemInfo4 = viewPager$ItemInfo5;
                        if (i14 <= viewPager$ItemInfo4.position || i15 >= this.mItems.size() - 1) {
                            break;
                        }
                        i15++;
                        viewPager$ItemInfo5 = this.mItems.get(i15);
                    }
                    while (i14 < viewPager$ItemInfo4.position) {
                        pageWidth += this.mAdapter.getPageWidth(i14) + f8;
                        i14++;
                    }
                    viewPager$ItemInfo4.offset = pageWidth;
                    pageWidth += viewPager$ItemInfo4.widthFactor + f8;
                    i14++;
                }
            } else if (i12 > i13) {
                int size = this.mItems.size() - 1;
                float pageWidth2 = viewPager$ItemInfo2.offset;
                while (true) {
                    i12--;
                    if (i12 < viewPager$ItemInfo.position || size < 0) {
                        break;
                    }
                    ViewPager$ItemInfo viewPager$ItemInfo6 = this.mItems.get(size);
                    while (true) {
                        viewPager$ItemInfo3 = viewPager$ItemInfo6;
                        if (i12 >= viewPager$ItemInfo3.position || size <= 0) {
                            break;
                        }
                        size--;
                        viewPager$ItemInfo6 = this.mItems.get(size);
                    }
                    while (i12 > viewPager$ItemInfo3.position) {
                        pageWidth2 -= this.mAdapter.getPageWidth(i12) + f8;
                        i12--;
                    }
                    pageWidth2 -= viewPager$ItemInfo3.widthFactor + f8;
                    viewPager$ItemInfo3.offset = pageWidth2;
                }
            }
        }
        int size2 = this.mItems.size();
        float pageWidth3 = viewPager$ItemInfo.offset;
        int i16 = viewPager$ItemInfo.position;
        int i17 = i16 - 1;
        this.mFirstOffset = i16 == 0 ? pageWidth3 : -3.4028235E38f;
        int i18 = count - 1;
        this.mLastOffset = i16 == i18 ? (viewPager$ItemInfo.widthFactor + pageWidth3) - 1.0f : Float.MAX_VALUE;
        int i19 = i9 - 1;
        while (i19 >= 0) {
            ViewPager$ItemInfo viewPager$ItemInfo7 = this.mItems.get(i19);
            while (true) {
                i11 = viewPager$ItemInfo7.position;
                if (i17 <= i11) {
                    break;
                }
                pageWidth3 -= this.mAdapter.getPageWidth(i17) + f8;
                i17--;
            }
            pageWidth3 -= viewPager$ItemInfo7.widthFactor + f8;
            viewPager$ItemInfo7.offset = pageWidth3;
            if (i11 == 0) {
                this.mFirstOffset = pageWidth3;
            }
            i19--;
            i17--;
        }
        float pageWidth4 = viewPager$ItemInfo.offset + viewPager$ItemInfo.widthFactor + f8;
        int i20 = viewPager$ItemInfo.position + 1;
        int i21 = i9 + 1;
        while (i21 < size2) {
            ViewPager$ItemInfo viewPager$ItemInfo8 = this.mItems.get(i21);
            while (true) {
                i10 = viewPager$ItemInfo8.position;
                if (i20 >= i10) {
                    break;
                }
                pageWidth4 += this.mAdapter.getPageWidth(i20) + f8;
                i20++;
            }
            if (i10 == i18) {
                this.mLastOffset = (viewPager$ItemInfo8.widthFactor + pageWidth4) - 1.0f;
            }
            viewPager$ItemInfo8.offset = pageWidth4;
            pageWidth4 += viewPager$ItemInfo8.widthFactor + f8;
            i21++;
            i20++;
        }
        this.mNeedCalculatePageOffsets = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void completeScroll(boolean z8) {
        boolean z9 = this.mScrollState == 2;
        if (z9) {
            setScrollingCacheEnabled(false);
            if (!this.mScroller.isFinished()) {
                this.mScroller.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.mScroller.getCurrX();
                int currY = this.mScroller.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        pageScrolled(currX);
                    }
                }
            }
        }
        this.mPopulatePending = false;
        for (int i9 = 0; i9 < this.mItems.size(); i9++) {
            ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(i9);
            if (viewPager$ItemInfo.scrolling) {
                viewPager$ItemInfo.scrolling = false;
                z9 = true;
            }
        }
        if (z9) {
            Runnable runnable = this.mEndScrollRunnable;
            if (z8) {
                ViewCompat.postOnAnimation(this, runnable);
            } else {
                runnable.run();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int determineTargetPage(int i9, float f8, int i10, int i11) {
        if (Math.abs(i11) <= this.mFlingDistance || Math.abs(i10) <= this.mMinimumVelocity) {
            i9 += (int) (f8 + (i9 >= this.mCurItem ? 0.4f : 0.6f));
        } else if (i10 <= 0) {
            i9++;
        }
        if (this.mItems.size() <= 0) {
            return i9;
        }
        ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(0);
        ArrayList<ViewPager$ItemInfo> arrayList = this.mItems;
        return Math.max(viewPager$ItemInfo.position, Math.min(i9, arrayList.get(arrayList.size() - 1).position));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void dispatchOnPageScrolled(int i9, float f8, int i10) {
        ViewPager$OnPageChangeListener viewPager$OnPageChangeListener = this.mOnPageChangeListener;
        if (viewPager$OnPageChangeListener != null) {
            viewPager$OnPageChangeListener.onPageScrolled(i9, f8, i10);
        }
        List<ViewPager$OnPageChangeListener> list = this.mOnPageChangeListeners;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                ViewPager$OnPageChangeListener viewPager$OnPageChangeListener2 = this.mOnPageChangeListeners.get(i11);
                if (viewPager$OnPageChangeListener2 != null) {
                    viewPager$OnPageChangeListener2.onPageScrolled(i9, f8, i10);
                }
            }
        }
        ViewPager$OnPageChangeListener viewPager$OnPageChangeListener3 = this.mInternalPageChangeListener;
        if (viewPager$OnPageChangeListener3 != null) {
            viewPager$OnPageChangeListener3.onPageScrolled(i9, f8, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void dispatchOnPageSelected(int i9) {
        ViewPager$OnPageChangeListener viewPager$OnPageChangeListener = this.mOnPageChangeListener;
        if (viewPager$OnPageChangeListener != null) {
            viewPager$OnPageChangeListener.onPageSelected(i9);
        }
        List<ViewPager$OnPageChangeListener> list = this.mOnPageChangeListeners;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ViewPager$OnPageChangeListener viewPager$OnPageChangeListener2 = this.mOnPageChangeListeners.get(i10);
                if (viewPager$OnPageChangeListener2 != null) {
                    viewPager$OnPageChangeListener2.onPageSelected(i9);
                }
            }
        }
        ViewPager$OnPageChangeListener viewPager$OnPageChangeListener3 = this.mInternalPageChangeListener;
        if (viewPager$OnPageChangeListener3 != null) {
            viewPager$OnPageChangeListener3.onPageSelected(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void dispatchOnScrollStateChanged(int i9) {
        ViewPager$OnPageChangeListener viewPager$OnPageChangeListener = this.mOnPageChangeListener;
        if (viewPager$OnPageChangeListener != null) {
            viewPager$OnPageChangeListener.onPageScrollStateChanged(i9);
        }
        List<ViewPager$OnPageChangeListener> list = this.mOnPageChangeListeners;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ViewPager$OnPageChangeListener viewPager$OnPageChangeListener2 = this.mOnPageChangeListeners.get(i10);
                if (viewPager$OnPageChangeListener2 != null) {
                    viewPager$OnPageChangeListener2.onPageScrollStateChanged(i9);
                }
            }
        }
        ViewPager$OnPageChangeListener viewPager$OnPageChangeListener3 = this.mInternalPageChangeListener;
        if (viewPager$OnPageChangeListener3 != null) {
            viewPager$OnPageChangeListener3.onPageScrollStateChanged(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void enableLayers(boolean z8) {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            getChildAt(i9).setLayerType(z8 ? this.mPageTransformerLayerType : 0, null);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void endDrag() {
        this.mIsBeingDragged = false;
        this.mIsUnableToDrag = false;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Rect getChildRectInPagerCoordinates(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ViewPager$ItemInfo infoForCurrentScrollPosition() {
        int i9;
        int clientWidth = getClientWidth();
        float f8 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f9 = clientWidth > 0 ? this.mPageMargin / clientWidth : 0.0f;
        int i10 = 0;
        boolean z8 = true;
        ViewPager$ItemInfo viewPager$ItemInfo = null;
        int i11 = -1;
        float f10 = 0.0f;
        while (i10 < this.mItems.size()) {
            ViewPager$ItemInfo viewPager$ItemInfo2 = this.mItems.get(i10);
            if (!z8 && viewPager$ItemInfo2.position != (i9 = i11 + 1)) {
                viewPager$ItemInfo2 = this.mTempItem;
                viewPager$ItemInfo2.offset = f8 + f10 + f9;
                viewPager$ItemInfo2.position = i9;
                viewPager$ItemInfo2.widthFactor = this.mAdapter.getPageWidth(i9);
                i10--;
            }
            ViewPager$ItemInfo viewPager$ItemInfo3 = viewPager$ItemInfo2;
            f8 = viewPager$ItemInfo3.offset;
            float f11 = viewPager$ItemInfo3.widthFactor + f8 + f9;
            if (!z8 && scrollX < f8) {
                break;
            }
            if (scrollX < f11 || i10 == this.mItems.size() - 1) {
                return viewPager$ItemInfo3;
            }
            int i12 = viewPager$ItemInfo3.position;
            float f12 = viewPager$ItemInfo3.widthFactor;
            i10++;
            i11 = i12;
            f10 = f12;
            viewPager$ItemInfo = viewPager$ItemInfo3;
            z8 = false;
        }
        return viewPager$ItemInfo;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isDecorView(@NonNull View view) {
        return view.getClass().getAnnotation(ViewPager$DecorView.class) != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isGutterDrag(float f8, float f9) {
        if (f8 >= this.mGutterSize || f9 <= 0.0f) {
            return f8 > ((float) (getWidth() - this.mGutterSize)) && f9 < 0.0f;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
            int i9 = actionIndex == 0 ? 1 : 0;
            this.mLastMotionX = motionEvent.getX(i9);
            this.mActivePointerId = motionEvent.getPointerId(i9);
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean pageScrolled(int i9) {
        if (this.mItems.size() == 0) {
            if (this.mFirstLayout) {
                return false;
            }
            this.mCalledSuper = false;
            onPageScrolled(0, 0.0f, 0);
            if (this.mCalledSuper) {
                return false;
            }
            i.l("onPageScrolled did not call superclass implementation");
            return false;
        }
        ViewPager$ItemInfo viewPager$ItemInfoInfoForCurrentScrollPosition = infoForCurrentScrollPosition();
        int clientWidth = getClientWidth();
        int i10 = this.mPageMargin;
        int i11 = clientWidth + i10;
        float f8 = clientWidth;
        int i12 = viewPager$ItemInfoInfoForCurrentScrollPosition.position;
        float f9 = ((i9 / f8) - viewPager$ItemInfoInfoForCurrentScrollPosition.offset) / (viewPager$ItemInfoInfoForCurrentScrollPosition.widthFactor + (i10 / f8));
        this.mCalledSuper = false;
        onPageScrolled(i12, f9, (int) (i11 * f9));
        if (this.mCalledSuper) {
            return true;
        }
        i.l("onPageScrolled did not call superclass implementation");
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean performDrag(float f8) {
        boolean z8;
        boolean z9;
        float f9 = this.mLastMotionX - f8;
        this.mLastMotionX = f8;
        float scrollX = getScrollX() + f9;
        float clientWidth = getClientWidth();
        float f10 = this.mFirstOffset * clientWidth;
        float f11 = this.mLastOffset * clientWidth;
        boolean z10 = false;
        ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(0);
        ArrayList<ViewPager$ItemInfo> arrayList = this.mItems;
        ViewPager$ItemInfo viewPager$ItemInfo2 = arrayList.get(arrayList.size() - 1);
        if (viewPager$ItemInfo.position != 0) {
            f10 = viewPager$ItemInfo.offset * clientWidth;
            z8 = false;
        } else {
            z8 = true;
        }
        if (viewPager$ItemInfo2.position != this.mAdapter.getCount() - 1) {
            f11 = viewPager$ItemInfo2.offset * clientWidth;
            z9 = false;
        } else {
            z9 = true;
        }
        if (scrollX < f10) {
            if (z8) {
                this.mLeftEdge.onPull(Math.abs(f10 - scrollX) / clientWidth);
                z10 = true;
            }
            scrollX = f10;
        } else if (scrollX > f11) {
            if (z9) {
                this.mRightEdge.onPull(Math.abs(scrollX - f11) / clientWidth);
                z10 = true;
            }
            scrollX = f11;
        }
        int i9 = (int) scrollX;
        this.mLastMotionX = (scrollX - i9) + this.mLastMotionX;
        scrollTo(i9, getScrollY());
        pageScrolled(i9);
        return z10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void recomputeScrollPosition(int i9, int i10, int i11, int i12) {
        if (i10 > 0 && !this.mItems.isEmpty()) {
            if (!this.mScroller.isFinished()) {
                this.mScroller.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i10 - getPaddingLeft()) - getPaddingRight()) + i12)) * (((i9 - getPaddingLeft()) - getPaddingRight()) + i11)), getScrollY());
                return;
            }
        }
        ViewPager$ItemInfo viewPager$ItemInfoInfoForPosition = infoForPosition(this.mCurItem);
        int iMin = (int) ((viewPager$ItemInfoInfoForPosition != null ? Math.min(viewPager$ItemInfoInfoForPosition.offset, this.mLastOffset) : 0.0f) * ((i9 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            completeScroll(false);
            scrollTo(iMin, getScrollY());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void removeNonDecorViews() {
        int i9 = 0;
        while (i9 < getChildCount()) {
            if (!((ViewPager$LayoutParams) getChildAt(i9).getLayoutParams()).isDecor) {
                removeViewAt(i9);
                i9--;
            }
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void requestParentDisallowInterceptTouchEvent(boolean z8) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean resetTouch() {
        this.mActivePointerId = -1;
        endDrag();
        this.mLeftEdge.onRelease();
        this.mRightEdge.onRelease();
        return this.mLeftEdge.isFinished() || this.mRightEdge.isFinished();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void scrollToItem(int i9, boolean z8, int i10, boolean z9) {
        int iMax;
        ViewPager$ItemInfo viewPager$ItemInfoInfoForPosition = infoForPosition(i9);
        if (viewPager$ItemInfoInfoForPosition != null) {
            iMax = (int) (Math.max(this.mFirstOffset, Math.min(viewPager$ItemInfoInfoForPosition.offset, this.mLastOffset)) * getClientWidth());
        } else {
            iMax = 0;
        }
        if (z8) {
            smoothScrollTo(iMax, 0, i10);
            if (z9) {
                dispatchOnPageSelected(i9);
                return;
            }
            return;
        }
        if (z9) {
            dispatchOnPageSelected(i9);
        }
        completeScroll(false);
        scrollTo(iMax, 0);
        pageScrolled(iMax);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setScrollingCacheEnabled(boolean z8) {
        if (this.mScrollingCacheEnabled != z8) {
            this.mScrollingCacheEnabled = z8;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void sortChildDrawingOrder() {
        if (this.mDrawingOrder != 0) {
            ArrayList<View> arrayList = this.mDrawingOrderedChildren;
            if (arrayList == null) {
                this.mDrawingOrderedChildren = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                this.mDrawingOrderedChildren.add(getChildAt(i9));
            }
            Collections.sort(this.mDrawingOrderedChildren, sPositionComparator);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i9, int i10) {
        ViewPager$ItemInfo viewPager$ItemInfoInfoForChild;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i11 = 0; i11 < getChildCount(); i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() == 0 && (viewPager$ItemInfoInfoForChild = infoForChild(childAt)) != null && viewPager$ItemInfoInfoForChild.position == this.mCurItem) {
                    childAt.addFocusables(arrayList, i9, i10);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i10 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager$ItemInfo addNewItem(int i9, int i10) {
        ViewPager$ItemInfo viewPager$ItemInfo = new ViewPager$ItemInfo();
        viewPager$ItemInfo.position = i9;
        viewPager$ItemInfo.object = this.mAdapter.instantiateItem((ViewGroup) this, i9);
        viewPager$ItemInfo.widthFactor = this.mAdapter.getPageWidth(i9);
        if (i10 < 0 || i10 >= this.mItems.size()) {
            this.mItems.add(viewPager$ItemInfo);
            return viewPager$ItemInfo;
        }
        this.mItems.add(i10, viewPager$ItemInfo);
        return viewPager$ItemInfo;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addOnAdapterChangeListener(@NonNull ViewPager$OnAdapterChangeListener viewPager$OnAdapterChangeListener) {
        if (this.mAdapterChangeListeners == null) {
            this.mAdapterChangeListeners = new ArrayList();
        }
        this.mAdapterChangeListeners.add(viewPager$OnAdapterChangeListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addOnPageChangeListener(@NonNull ViewPager$OnPageChangeListener viewPager$OnPageChangeListener) {
        if (this.mOnPageChangeListeners == null) {
            this.mOnPageChangeListeners = new ArrayList();
        }
        this.mOnPageChangeListeners.add(viewPager$OnPageChangeListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        ViewPager$ItemInfo viewPager$ItemInfoInfoForChild;
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 0 && (viewPager$ItemInfoInfoForChild = infoForChild(childAt)) != null && viewPager$ItemInfoInfoForChild.position == this.mCurItem) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public void addView(View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (!checkLayoutParams(viewGroup$LayoutParams)) {
            viewGroup$LayoutParams = generateLayoutParams(viewGroup$LayoutParams);
        }
        ViewPager$LayoutParams viewPager$LayoutParams = (ViewPager$LayoutParams) viewGroup$LayoutParams;
        boolean zIsDecorView = viewPager$LayoutParams.isDecor | isDecorView(view);
        viewPager$LayoutParams.isDecor = zIsDecorView;
        if (!this.mInLayout) {
            super.addView(view, i9, viewGroup$LayoutParams);
        } else if (zIsDecorView) {
            i.l("Cannot add pager decor view during layout");
        } else {
            viewPager$LayoutParams.needsMeasure = true;
            addViewInLayout(view, i9, viewGroup$LayoutParams);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:40:0x00b4  */
    public boolean arrowScroll(int i9) {
        boolean zPageLeft;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
            break;
        }
        if (viewFindFocus != null) {
            ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(viewFindFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        sb.append(" => ");
                        sb.append(parent2.getClass().getSimpleName());
                    }
                    Log.e(TAG, "arrowScroll tried to find focus based on non-child current focused view ".concat(sb.toString()));
                    viewFindFocus = null;
                    break;
                }
                if (parent == this) {
                    break;
                }
                parent = parent.getParent();
            }
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i9);
        if (viewFindNextFocus == null || viewFindNextFocus == viewFindFocus) {
            if (i9 == 17 || i9 == 1) {
                zPageLeft = pageLeft();
            } else if (i9 == 66 || i9 == 2) {
                zPageLeft = pageRight();
            } else {
                zPageLeft = false;
            }
        } else if (i9 == 17) {
            zPageLeft = (viewFindFocus == null || getChildRectInPagerCoordinates(this.mTempRect, viewFindNextFocus).left < getChildRectInPagerCoordinates(this.mTempRect, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : pageLeft();
        } else if (i9 == 66) {
            zPageLeft = (viewFindFocus == null || getChildRectInPagerCoordinates(this.mTempRect, viewFindNextFocus).left > getChildRectInPagerCoordinates(this.mTempRect, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : pageRight();
        } else {
            zPageLeft = false;
        }
        if (zPageLeft) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i9));
        }
        return zPageLeft;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean beginFakeDrag() {
        if (this.mIsBeingDragged) {
            return false;
        }
        this.mFakeDragging = true;
        setScrollState(1);
        this.mLastMotionX = 0.0f;
        this.mInitialMotionX = 0.0f;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, 0.0f, 0.0f, 0);
        this.mVelocityTracker.addMovement(motionEventObtain);
        motionEventObtain.recycle();
        this.mFakeDragBeginTime = jUptimeMillis;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canScroll(View view, boolean z8, int i9, int i10, int i11) {
        int i12;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i13 = i10 + scrollX;
                if (i13 >= childAt.getLeft() && i13 < childAt.getRight() && (i12 = i11 + scrollY) >= childAt.getTop() && i12 < childAt.getBottom() && canScroll(childAt, true, i9, i13 - childAt.getLeft(), i12 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z8 && view.canScrollHorizontally(-i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public boolean canScrollHorizontally(int i9) {
        if (this.mAdapter == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i9 < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.mFirstOffset));
        }
        return i9 > 0 && scrollX < ((int) (((float) clientWidth) * this.mLastOffset));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return (viewGroup$LayoutParams instanceof ViewPager$LayoutParams) && super.checkLayoutParams(viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clearOnPageChangeListeners() {
        List<ViewPager$OnPageChangeListener> list = this.mOnPageChangeListeners;
        if (list != null) {
            list.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void computeScroll() {
        this.mIsScrollStarted = true;
        if (this.mScroller.isFinished() || !this.mScroller.computeScrollOffset()) {
            completeScroll(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.mScroller.getCurrX();
        int currY = this.mScroller.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!pageScrolled(currX)) {
                this.mScroller.abortAnimation();
                scrollTo(0, currY);
            }
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dataSetChanged() {
        int count = this.mAdapter.getCount();
        this.mExpectedAdapterCount = count;
        boolean z8 = this.mItems.size() < (this.mOffscreenPageLimit * 2) + 1 && this.mItems.size() < count;
        int iMax = this.mCurItem;
        int i9 = 0;
        boolean z9 = false;
        while (i9 < this.mItems.size()) {
            ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(i9);
            int itemPosition = this.mAdapter.getItemPosition(viewPager$ItemInfo.object);
            if (itemPosition != -1) {
                if (itemPosition == -2) {
                    this.mItems.remove(i9);
                    i9--;
                    if (!z9) {
                        this.mAdapter.startUpdate((ViewGroup) this);
                        z9 = true;
                    }
                    this.mAdapter.destroyItem((ViewGroup) this, viewPager$ItemInfo.position, viewPager$ItemInfo.object);
                    int i10 = this.mCurItem;
                    if (i10 == viewPager$ItemInfo.position) {
                        iMax = Math.max(0, Math.min(i10, count - 1));
                    }
                } else {
                    int i11 = viewPager$ItemInfo.position;
                    if (i11 != itemPosition) {
                        if (i11 == this.mCurItem) {
                            iMax = itemPosition;
                        }
                        viewPager$ItemInfo.position = itemPosition;
                    }
                }
                z8 = true;
            }
            i9++;
        }
        if (z9) {
            this.mAdapter.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.mItems, COMPARATOR);
        if (z8) {
            int childCount = getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                ViewPager$LayoutParams viewPager$LayoutParams = (ViewPager$LayoutParams) getChildAt(i12).getLayoutParams();
                if (!viewPager$LayoutParams.isDecor) {
                    viewPager$LayoutParams.widthFactor = 0.0f;
                }
            }
            setCurrentItemInternal(iMax, false, true);
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        ViewPager$ItemInfo viewPager$ItemInfoInfoForChild;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 0 && (viewPager$ItemInfoInfoForChild = infoForChild(childAt)) != null && viewPager$ItemInfoInfoForChild.position == this.mCurItem && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float distanceInfluenceForSnapDuration(float f8) {
        return (float) Math.sin((f8 - 0.5f) * 0.47123894f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void draw(Canvas canvas) {
        PagerAdapter pagerAdapter;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (pagerAdapter = this.mAdapter) != null && pagerAdapter.getCount() > 1)) {
            if (!this.mLeftEdge.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.mFirstOffset * width);
                this.mLeftEdge.setSize(height, width);
                zDraw = this.mLeftEdge.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.mRightEdge.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.mLastOffset + 1.0f)) * width2);
                this.mRightEdge.setSize(height2, width2);
                zDraw |= this.mRightEdge.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.mLeftEdge.finish();
            this.mRightEdge.finish();
        }
        if (zDraw) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mMarginDrawable;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void endFakeDrag() {
        if (!this.mFakeDragging) {
            i.l("No fake drag in progress. Call beginFakeDrag first.");
            return;
        }
        if (this.mAdapter != null) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
            int xVelocity = (int) velocityTracker.getXVelocity(this.mActivePointerId);
            this.mPopulatePending = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            ViewPager$ItemInfo viewPager$ItemInfoInfoForCurrentScrollPosition = infoForCurrentScrollPosition();
            setCurrentItemInternal(determineTargetPage(viewPager$ItemInfoInfoForCurrentScrollPosition.position, ((scrollX / clientWidth) - viewPager$ItemInfoInfoForCurrentScrollPosition.offset) / viewPager$ItemInfoInfoForCurrentScrollPosition.widthFactor, xVelocity, (int) (this.mLastMotionX - this.mInitialMotionX)), true, true, xVelocity);
        }
        endDrag();
        this.mFakeDragging = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean executeKeyEvent(@NonNull KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 21) {
            return keyEvent.hasModifiers(2) ? pageLeft() : arrowScroll(17);
        }
        if (keyCode == 22) {
            return keyEvent.hasModifiers(2) ? pageRight() : arrowScroll(66);
        }
        if (keyCode != 61) {
            return false;
        }
        if (keyEvent.hasNoModifiers()) {
            return arrowScroll(2);
        }
        if (keyEvent.hasModifiers(1)) {
            return arrowScroll(1);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fakeDragBy(float f8) {
        if (!this.mFakeDragging) {
            i.l("No fake drag in progress. Call beginFakeDrag first.");
            return;
        }
        if (this.mAdapter == null) {
            return;
        }
        this.mLastMotionX += f8;
        float scrollX = getScrollX() - f8;
        float clientWidth = getClientWidth();
        float f9 = this.mFirstOffset * clientWidth;
        float f10 = this.mLastOffset * clientWidth;
        ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(0);
        ArrayList<ViewPager$ItemInfo> arrayList = this.mItems;
        ViewPager$ItemInfo viewPager$ItemInfo2 = arrayList.get(arrayList.size() - 1);
        if (viewPager$ItemInfo.position != 0) {
            f9 = viewPager$ItemInfo.offset * clientWidth;
        }
        if (viewPager$ItemInfo2.position != this.mAdapter.getCount() - 1) {
            f10 = viewPager$ItemInfo2.offset * clientWidth;
        }
        if (scrollX < f9) {
            scrollX = f9;
        } else if (scrollX > f10) {
            scrollX = f10;
        }
        int i9 = (int) scrollX;
        this.mLastMotionX = (scrollX - i9) + this.mLastMotionX;
        scrollTo(i9, getScrollY());
        pageScrolled(i9);
        MotionEvent motionEventObtain = MotionEvent.obtain(this.mFakeDragBeginTime, SystemClock.uptimeMillis(), 2, this.mLastMotionX, 0.0f, 0);
        this.mVelocityTracker.addMovement(motionEventObtain);
        motionEventObtain.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return new ViewPager$LayoutParams();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewPager$LayoutParams(getContext(), attributeSet);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public PagerAdapter getAdapter() {
        return this.mAdapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i9, int i10) {
        if (this.mDrawingOrder == 2) {
            i10 = (i9 - 1) - i10;
        }
        return ((ViewPager$LayoutParams) this.mDrawingOrderedChildren.get(i10).getLayoutParams()).childIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCurrentItem() {
        return this.mCurItem;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getOffscreenPageLimit() {
        return this.mOffscreenPageLimit;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPageMargin() {
        return this.mPageMargin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager$ItemInfo infoForAnyChild(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent == this) {
                return infoForChild(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager$ItemInfo infoForChild(View view) {
        for (int i9 = 0; i9 < this.mItems.size(); i9++) {
            ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(i9);
            if (this.mAdapter.isViewFromObject(view, viewPager$ItemInfo.object)) {
                return viewPager$ItemInfo;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager$ItemInfo infoForPosition(int i9) {
        for (int i10 = 0; i10 < this.mItems.size(); i10++) {
            ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(i10);
            if (viewPager$ItemInfo.position == i9) {
                return viewPager$ItemInfo;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void initViewPager() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.mScroller = new Scroller(context, sInterpolator);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f8 = context.getResources().getDisplayMetrics().density;
        this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        this.mMinimumVelocity = (int) (400.0f * f8);
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mLeftEdge = new EdgeEffect(context);
        this.mRightEdge = new EdgeEffect(context);
        this.mFlingDistance = (int) (25.0f * f8);
        this.mCloseEnough = (int) (2.0f * f8);
        this.mDefaultGutterSize = (int) (f8 * 16.0f);
        ViewCompat.setAccessibilityDelegate(this, new ViewPager$MyAccessibilityDelegate(this));
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
        ViewCompat.setOnApplyWindowInsetsListener(this, new ViewPager$4(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isFakeDragging() {
        return this.mFakeDragging;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.mEndScrollRunnable);
        Scroller scroller = this.mScroller;
        if (scroller != null && !scroller.isFinished()) {
            this.mScroller.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i9;
        float f8;
        super.onDraw(canvas);
        if (this.mPageMargin <= 0 || this.mMarginDrawable == null || this.mItems.size() <= 0 || this.mAdapter == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f9 = width;
        float f10 = this.mPageMargin / f9;
        int i10 = 0;
        ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(0);
        float f11 = viewPager$ItemInfo.offset;
        int size = this.mItems.size();
        int i11 = viewPager$ItemInfo.position;
        int i12 = this.mItems.get(size - 1).position;
        while (i11 < i12) {
            while (true) {
                i9 = viewPager$ItemInfo.position;
                if (i11 <= i9 || i10 >= size) {
                    break;
                }
                i10++;
                viewPager$ItemInfo = this.mItems.get(i10);
            }
            if (i11 == i9) {
                float f12 = viewPager$ItemInfo.offset;
                float f13 = viewPager$ItemInfo.widthFactor;
                f8 = (f12 + f13) * f9;
                f11 = f12 + f13 + f10;
            } else {
                float pageWidth = this.mAdapter.getPageWidth(i11);
                f8 = (f11 + pageWidth) * f9;
                f11 = pageWidth + f10 + f11;
            }
            if (this.mPageMargin + f8 > scrollX) {
                this.mMarginDrawable.setBounds(Math.round(f8), this.mTopPageBounds, Math.round(this.mPageMargin + f8), this.mBottomPageBounds);
                this.mMarginDrawable.draw(canvas);
            }
            if (f8 > scrollX + width) {
                return;
            }
            i11++;
            scrollX = scrollX;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            resetTouch();
            return false;
        }
        if (action != 0) {
            if (this.mIsBeingDragged) {
                return true;
            }
            if (this.mIsUnableToDrag) {
                return false;
            }
        }
        if (action == 0) {
            float x8 = motionEvent.getX();
            this.mInitialMotionX = x8;
            this.mLastMotionX = x8;
            float y8 = motionEvent.getY();
            this.mInitialMotionY = y8;
            this.mLastMotionY = y8;
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mIsUnableToDrag = false;
            this.mIsScrollStarted = true;
            this.mScroller.computeScrollOffset();
            if (this.mScrollState != 2 || Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) <= this.mCloseEnough) {
                completeScroll(false);
                this.mIsBeingDragged = false;
            } else {
                this.mScroller.abortAnimation();
                this.mPopulatePending = false;
                populate();
                this.mIsBeingDragged = true;
                requestParentDisallowInterceptTouchEvent(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i9 = this.mActivePointerId;
            if (i9 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i9);
                float x9 = motionEvent.getX(iFindPointerIndex);
                float f8 = x9 - this.mLastMotionX;
                float fAbs = Math.abs(f8);
                float y9 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y9 - this.mInitialMotionY);
                if (f8 != 0.0f && !isGutterDrag(this.mLastMotionX, f8) && canScroll(this, false, (int) f8, (int) x9, (int) y9)) {
                    this.mLastMotionX = x9;
                    this.mLastMotionY = y9;
                    this.mIsUnableToDrag = true;
                    return false;
                }
                int i10 = this.mTouchSlop;
                if (fAbs > i10 && fAbs * 0.5f > fAbs2) {
                    this.mIsBeingDragged = true;
                    requestParentDisallowInterceptTouchEvent(true);
                    setScrollState(1);
                    float f9 = this.mInitialMotionX;
                    float f10 = this.mTouchSlop;
                    this.mLastMotionX = f8 > 0.0f ? f9 + f10 : f9 - f10;
                    this.mLastMotionY = y9;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > i10) {
                    this.mIsUnableToDrag = true;
                }
                if (this.mIsBeingDragged && performDrag(x9)) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
            }
        } else if (action == 6) {
            onSecondaryPointerUp(motionEvent);
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        return this.mIsBeingDragged;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:22:0x0072  */
    /* JADX WARN: Code duplicated, block: B:24:0x0076  */
    /* JADX WARN: Code duplicated, block: B:26:0x007a  */
    /* JADX WARN: Code duplicated, block: B:27:0x007c  */
    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        boolean z9;
        ViewPager$ItemInfo viewPager$ItemInfoInfoForChild;
        int iMax;
        int measuredWidth;
        int iMax2;
        int measuredHeight;
        int childCount = getChildCount();
        int i13 = i11 - i9;
        int i14 = i12 - i10;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() != 8) {
                ViewPager$LayoutParams viewPager$LayoutParams = (ViewPager$LayoutParams) childAt.getLayoutParams();
                if (viewPager$LayoutParams.isDecor) {
                    int i17 = viewPager$LayoutParams.gravity;
                    int i18 = i17 & 7;
                    int i19 = i17 & 112;
                    if (i18 != 1) {
                        if (i18 == 3) {
                            measuredWidth = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i18 != 5) {
                            measuredWidth = paddingLeft;
                        } else {
                            iMax = (i13 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i19 != 16) {
                            if (i19 != 48) {
                                measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i19 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                iMax2 = (i14 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i20 = paddingLeft + scrollX;
                            childAt.layout(i20, paddingTop, childAt.getMeasuredWidth() + i20, childAt.getMeasuredHeight() + paddingTop);
                            i15++;
                            paddingTop = measuredHeight;
                            paddingLeft = measuredWidth;
                        } else {
                            iMax2 = Math.max((i14 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i21 = iMax2;
                        measuredHeight = paddingTop;
                        paddingTop = i21;
                        int i22 = paddingLeft + scrollX;
                        childAt.layout(i22, paddingTop, childAt.getMeasuredWidth() + i22, childAt.getMeasuredHeight() + paddingTop);
                        i15++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax = Math.max((i13 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i23 = iMax;
                    measuredWidth = paddingLeft;
                    paddingLeft = i23;
                    if (i19 != 16) {
                        if (i19 != 48) {
                            measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                        } else if (i19 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            iMax2 = (i14 - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                        }
                        int i24 = paddingLeft + scrollX;
                        childAt.layout(i24, paddingTop, childAt.getMeasuredWidth() + i24, childAt.getMeasuredHeight() + paddingTop);
                        i15++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax2 = Math.max((i14 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    }
                    int i25 = iMax2;
                    measuredHeight = paddingTop;
                    paddingTop = i25;
                    int i26 = paddingLeft + scrollX;
                    childAt.layout(i26, paddingTop, childAt.getMeasuredWidth() + i26, childAt.getMeasuredHeight() + paddingTop);
                    i15++;
                    paddingTop = measuredHeight;
                    paddingLeft = measuredWidth;
                }
            }
        }
        int i27 = (i13 - paddingLeft) - paddingRight;
        for (int i28 = 0; i28 < childCount; i28++) {
            View childAt2 = getChildAt(i28);
            if (childAt2.getVisibility() != 8) {
                ViewPager$LayoutParams viewPager$LayoutParams2 = (ViewPager$LayoutParams) childAt2.getLayoutParams();
                if (!viewPager$LayoutParams2.isDecor && (viewPager$ItemInfoInfoForChild = infoForChild(childAt2)) != null) {
                    float f8 = i27;
                    int i29 = ((int) (viewPager$ItemInfoInfoForChild.offset * f8)) + paddingLeft;
                    if (viewPager$LayoutParams2.needsMeasure) {
                        viewPager$LayoutParams2.needsMeasure = false;
                        childAt2.measure(View$MeasureSpec.makeMeasureSpec((int) (f8 * viewPager$LayoutParams2.widthFactor), BasicMeasure.EXACTLY), View$MeasureSpec.makeMeasureSpec((i14 - paddingTop) - paddingBottom, BasicMeasure.EXACTLY));
                    }
                    childAt2.layout(i29, paddingTop, childAt2.getMeasuredWidth() + i29, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.mTopPageBounds = paddingTop;
        this.mBottomPageBounds = i14 - paddingBottom;
        this.mDecorChildCount = i15;
        if (this.mFirstLayout) {
            z9 = false;
            scrollToItem(this.mCurItem, false, 0, false);
        } else {
            z9 = false;
        }
        this.mFirstLayout = z9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onMeasure(int i9, int i10) {
        ViewPager$LayoutParams viewPager$LayoutParams;
        ViewPager$LayoutParams viewPager$LayoutParams2;
        int i11;
        setMeasuredDimension(View.getDefaultSize(0, i9), View.getDefaultSize(0, i10));
        int measuredWidth = getMeasuredWidth();
        this.mGutterSize = Math.min(measuredWidth / 10, this.mDefaultGutterSize);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i12 = 0;
        while (true) {
            boolean z8 = true;
            int i13 = BasicMeasure.EXACTLY;
            if (i12 >= childCount) {
                break;
            }
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8 && (viewPager$LayoutParams2 = (ViewPager$LayoutParams) childAt.getLayoutParams()) != null && viewPager$LayoutParams2.isDecor) {
                int i14 = viewPager$LayoutParams2.gravity;
                int i15 = i14 & 7;
                int i16 = i14 & 112;
                boolean z9 = i16 == 48 || i16 == 80;
                if (i15 != 3 && i15 != 5) {
                    z8 = false;
                }
                int i17 = Integer.MIN_VALUE;
                if (z9) {
                    i11 = Integer.MIN_VALUE;
                    i17 = 1073741824;
                } else {
                    i11 = z8 ? 1073741824 : Integer.MIN_VALUE;
                }
                int i18 = ((ViewGroup$LayoutParams) viewPager$LayoutParams2).width;
                if (i18 != -2) {
                    if (i18 == -1) {
                        i18 = paddingLeft;
                    }
                    i17 = 1073741824;
                } else {
                    i18 = paddingLeft;
                }
                int i19 = ((ViewGroup$LayoutParams) viewPager$LayoutParams2).height;
                if (i19 == -2) {
                    i19 = measuredHeight;
                    i13 = i11;
                } else if (i19 == -1) {
                    i19 = measuredHeight;
                }
                childAt.measure(View$MeasureSpec.makeMeasureSpec(i18, i17), View$MeasureSpec.makeMeasureSpec(i19, i13));
                if (z9) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z8) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i12++;
        }
        this.mChildWidthMeasureSpec = View$MeasureSpec.makeMeasureSpec(paddingLeft, BasicMeasure.EXACTLY);
        this.mChildHeightMeasureSpec = View$MeasureSpec.makeMeasureSpec(measuredHeight, BasicMeasure.EXACTLY);
        this.mInLayout = true;
        populate();
        this.mInLayout = false;
        int childCount2 = getChildCount();
        for (int i20 = 0; i20 < childCount2; i20++) {
            View childAt2 = getChildAt(i20);
            if (childAt2.getVisibility() != 8 && ((viewPager$LayoutParams = (ViewPager$LayoutParams) childAt2.getLayoutParams()) == null || !viewPager$LayoutParams.isDecor)) {
                childAt2.measure(View$MeasureSpec.makeMeasureSpec((int) (paddingLeft * viewPager$LayoutParams.widthFactor), BasicMeasure.EXACTLY), this.mChildHeightMeasureSpec);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:22:0x0065  */
    @CallSuper
    public void onPageScrolled(int i9, float f8, int i10) {
        int iMax;
        int width;
        int left;
        if (this.mDecorChildCount > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                ViewPager$LayoutParams viewPager$LayoutParams = (ViewPager$LayoutParams) childAt.getLayoutParams();
                if (viewPager$LayoutParams.isDecor) {
                    int i12 = viewPager$LayoutParams.gravity & 7;
                    if (i12 != 1) {
                        if (i12 == 3) {
                            width = childAt.getWidth() + paddingLeft;
                        } else if (i12 != 5) {
                            width = paddingLeft;
                        } else {
                            iMax = (width2 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = width;
                    } else {
                        iMax = Math.max((width2 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i13 = iMax;
                    width = paddingLeft;
                    paddingLeft = i13;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                    paddingLeft = width;
                }
            }
        }
        dispatchOnPageScrolled(i9, f8, i10);
        if (this.mPageTransformer != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i14 = 0; i14 < childCount2; i14++) {
                View childAt2 = getChildAt(i14);
                if (!((ViewPager$LayoutParams) childAt2.getLayoutParams()).isDecor) {
                    this.mPageTransformer.transformPage(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.mCalledSuper = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i9, Rect rect) {
        int i10;
        int i11;
        int i12;
        ViewPager$ItemInfo viewPager$ItemInfoInfoForChild;
        int childCount = getChildCount();
        if ((i9 & 2) != 0) {
            i11 = childCount;
            i10 = 0;
            i12 = 1;
        } else {
            i10 = childCount - 1;
            i11 = -1;
            i12 = -1;
        }
        while (i10 != i11) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (viewPager$ItemInfoInfoForChild = infoForChild(childAt)) != null && viewPager$ItemInfoInfoForChild.position == this.mCurItem && childAt.requestFocus(i9, rect)) {
                return true;
            }
            i10 += i12;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ViewPager$SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ViewPager$SavedState viewPager$SavedState = (ViewPager$SavedState) parcelable;
        super.onRestoreInstanceState(viewPager$SavedState.getSuperState());
        PagerAdapter pagerAdapter = this.mAdapter;
        if (pagerAdapter != null) {
            pagerAdapter.restoreState(viewPager$SavedState.adapterState, viewPager$SavedState.loader);
            setCurrentItemInternal(viewPager$SavedState.position, false, true);
        } else {
            this.mRestoredCurItem = viewPager$SavedState.position;
            this.mRestoredAdapterState = viewPager$SavedState.adapterState;
            this.mRestoredClassLoader = viewPager$SavedState.loader;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        ViewPager$SavedState viewPager$SavedState = new ViewPager$SavedState(super.onSaveInstanceState());
        viewPager$SavedState.position = this.mCurItem;
        PagerAdapter pagerAdapter = this.mAdapter;
        if (pagerAdapter != null) {
            viewPager$SavedState.adapterState = pagerAdapter.saveState();
        }
        return viewPager$SavedState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        if (i9 != i11) {
            int i13 = this.mPageMargin;
            recomputeScrollPosition(i9, i11, i13, i13);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:53:0x00da  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        PagerAdapter pagerAdapter;
        if (this.mFakeDragging) {
            return true;
        }
        boolean zResetTouch = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (pagerAdapter = this.mAdapter) == null || pagerAdapter.getCount() == 0) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.mScroller.abortAnimation();
            this.mPopulatePending = false;
            populate();
            float x8 = motionEvent.getX();
            this.mInitialMotionX = x8;
            this.mLastMotionX = x8;
            float y8 = motionEvent.getY();
            this.mInitialMotionY = y8;
            this.mLastMotionY = y8;
            this.mActivePointerId = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        this.mLastMotionX = motionEvent.getX(actionIndex);
                        this.mActivePointerId = motionEvent.getPointerId(actionIndex);
                    } else if (action == 6) {
                        onSecondaryPointerUp(motionEvent);
                        this.mLastMotionX = motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId));
                    }
                } else if (this.mIsBeingDragged) {
                    scrollToItem(this.mCurItem, true, 0, false);
                    zResetTouch = resetTouch();
                }
            } else if (!this.mIsBeingDragged) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                if (iFindPointerIndex == -1) {
                    zResetTouch = resetTouch();
                } else {
                    float x9 = motionEvent.getX(iFindPointerIndex);
                    float fAbs = Math.abs(x9 - this.mLastMotionX);
                    float y9 = motionEvent.getY(iFindPointerIndex);
                    float fAbs2 = Math.abs(y9 - this.mLastMotionY);
                    if (fAbs > this.mTouchSlop && fAbs > fAbs2) {
                        this.mIsBeingDragged = true;
                        requestParentDisallowInterceptTouchEvent(true);
                        float f8 = this.mInitialMotionX;
                        float f9 = x9 - f8;
                        int i9 = this.mTouchSlop;
                        this.mLastMotionX = f9 > 0.0f ? f8 + i9 : f8 - i9;
                        this.mLastMotionY = y9;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (this.mIsBeingDragged) {
                        zResetTouch = performDrag(motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)));
                    }
                }
            } else if (this.mIsBeingDragged) {
                zResetTouch = performDrag(motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)));
            }
        } else if (this.mIsBeingDragged) {
            VelocityTracker velocityTracker = this.mVelocityTracker;
            velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
            int xVelocity = (int) velocityTracker.getXVelocity(this.mActivePointerId);
            this.mPopulatePending = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            ViewPager$ItemInfo viewPager$ItemInfoInfoForCurrentScrollPosition = infoForCurrentScrollPosition();
            float f10 = clientWidth;
            setCurrentItemInternal(determineTargetPage(viewPager$ItemInfoInfoForCurrentScrollPosition.position, ((scrollX / f10) - viewPager$ItemInfoInfoForCurrentScrollPosition.offset) / (viewPager$ItemInfoInfoForCurrentScrollPosition.widthFactor + (this.mPageMargin / f10)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId)) - this.mInitialMotionX)), true, true, xVelocity);
            zResetTouch = resetTouch();
        }
        if (zResetTouch) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean pageLeft() {
        int i9 = this.mCurItem;
        if (i9 <= 0) {
            return false;
        }
        setCurrentItem(i9 - 1, true);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean pageRight() {
        PagerAdapter pagerAdapter = this.mAdapter;
        if (pagerAdapter == null || this.mCurItem >= pagerAdapter.getCount() - 1) {
            return false;
        }
        setCurrentItem(this.mCurItem + 1, true);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:55:0x00cc A[PHI: r7 r10 r14
  0x00cc: PHI (r7v6 int) = (r7v5 int), (r7v4 int), (r7v9 int) binds: [B:64:0x00f0, B:61:0x00da, B:53:0x00c1] A[DONT_GENERATE, DONT_INLINE]
  0x00cc: PHI (r10v9 int) = (r10v1 int), (r10v8 int), (r10v12 int) binds: [B:64:0x00f0, B:61:0x00da, B:53:0x00c1] A[DONT_GENERATE, DONT_INLINE]
  0x00cc: PHI (r14v6 float) = (r14v4 float), (r14v5 float), (r14v3 float) binds: [B:64:0x00f0, B:61:0x00da, B:53:0x00c1] A[DONT_GENERATE, DONT_INLINE]] */
    public void populate(int i9) {
        ViewPager$ItemInfo viewPager$ItemInfoInfoForPosition;
        String hexString;
        ViewPager$ItemInfo viewPager$ItemInfoAddNewItem;
        ViewPager$ItemInfo viewPager$ItemInfoInfoForChild;
        ViewPager$ItemInfo viewPager$ItemInfo;
        int i10 = this.mCurItem;
        if (i10 != i9) {
            viewPager$ItemInfoInfoForPosition = infoForPosition(i10);
            this.mCurItem = i9;
        } else {
            viewPager$ItemInfoInfoForPosition = null;
        }
        if (this.mAdapter == null) {
            sortChildDrawingOrder();
            return;
        }
        if (this.mPopulatePending) {
            sortChildDrawingOrder();
            return;
        }
        if (getWindowToken() == null) {
            return;
        }
        this.mAdapter.startUpdate((ViewGroup) this);
        int i11 = this.mOffscreenPageLimit;
        int iMax = Math.max(0, this.mCurItem - i11);
        int count = this.mAdapter.getCount();
        int iMin = Math.min(count - 1, this.mCurItem + i11);
        if (count != this.mExpectedAdapterCount) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources$NotFoundException unused) {
                hexString = Integer.toHexString(getId());
            }
            StringBuilder sb = new StringBuilder("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: ");
            sb.append(this.mExpectedAdapterCount);
            sb.append(", found: ");
            sb.append(count);
            sb.append(" Pager id: ");
            sb.append(hexString);
            sb.append(" Pager class: ");
            sb.append(getClass());
            b.p(sb, " Problematic adapter: ", this.mAdapter.getClass());
            return;
        }
        int i12 = 0;
        while (true) {
            if (i12 < this.mItems.size()) {
                viewPager$ItemInfoAddNewItem = this.mItems.get(i12);
                int i13 = viewPager$ItemInfoAddNewItem.position;
                int i14 = this.mCurItem;
                if (i13 >= i14) {
                    if (i13 != i14) {
                        break;
                    } else {
                        break;
                    }
                }
                i12++;
            }
            viewPager$ItemInfoAddNewItem = null;
            break;
        }
        if (viewPager$ItemInfoAddNewItem == null && count > 0) {
            viewPager$ItemInfoAddNewItem = addNewItem(this.mCurItem, i12);
        }
        if (viewPager$ItemInfoAddNewItem != null) {
            int i15 = i12 - 1;
            ViewPager$ItemInfo viewPager$ItemInfo2 = i15 >= 0 ? this.mItems.get(i15) : null;
            int clientWidth = getClientWidth();
            float paddingLeft = clientWidth <= 0 ? 0.0f : (getPaddingLeft() / clientWidth) + (2.0f - viewPager$ItemInfoAddNewItem.widthFactor);
            float f8 = 0.0f;
            for (int i16 = this.mCurItem - 1; i16 >= 0; i16--) {
                if (f8 < paddingLeft || i16 >= iMax) {
                    if (viewPager$ItemInfo2 == null || i16 != viewPager$ItemInfo2.position) {
                        f8 += addNewItem(i16, i15 + 1).widthFactor;
                        i12++;
                        if (i15 >= 0) {
                            viewPager$ItemInfo = this.mItems.get(i15);
                        } else {
                            viewPager$ItemInfo = null;
                        }
                    } else {
                        f8 += viewPager$ItemInfo2.widthFactor;
                        i15--;
                        if (i15 >= 0) {
                            viewPager$ItemInfo = this.mItems.get(i15);
                        } else {
                            viewPager$ItemInfo = null;
                        }
                    }
                    viewPager$ItemInfo2 = viewPager$ItemInfo;
                } else {
                    if (viewPager$ItemInfo2 == null) {
                        break;
                    }
                    if (i16 == viewPager$ItemInfo2.position && !viewPager$ItemInfo2.scrolling) {
                        this.mItems.remove(i15);
                        this.mAdapter.destroyItem((ViewGroup) this, i16, viewPager$ItemInfo2.object);
                        i15--;
                        i12--;
                        if (i15 >= 0) {
                            viewPager$ItemInfo = this.mItems.get(i15);
                        } else {
                            viewPager$ItemInfo = null;
                        }
                        viewPager$ItemInfo2 = viewPager$ItemInfo;
                    }
                }
            }
            float f9 = viewPager$ItemInfoAddNewItem.widthFactor;
            int i17 = i12 + 1;
            if (f9 < 2.0f) {
                ViewPager$ItemInfo viewPager$ItemInfo3 = i17 < this.mItems.size() ? this.mItems.get(i17) : null;
                float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                int i18 = this.mCurItem;
                while (true) {
                    i18++;
                    if (i18 >= count) {
                        break;
                    }
                    if (f9 >= paddingRight && i18 > iMin) {
                        if (viewPager$ItemInfo3 == null) {
                            break;
                        }
                        if (i18 == viewPager$ItemInfo3.position && !viewPager$ItemInfo3.scrolling) {
                            this.mItems.remove(i17);
                            this.mAdapter.destroyItem((ViewGroup) this, i18, viewPager$ItemInfo3.object);
                            if (i17 < this.mItems.size()) {
                                viewPager$ItemInfo3 = this.mItems.get(i17);
                            }
                        }
                    } else if (viewPager$ItemInfo3 == null || i18 != viewPager$ItemInfo3.position) {
                        ViewPager$ItemInfo viewPager$ItemInfoAddNewItem2 = addNewItem(i18, i17);
                        i17++;
                        f9 += viewPager$ItemInfoAddNewItem2.widthFactor;
                        viewPager$ItemInfo3 = i17 < this.mItems.size() ? this.mItems.get(i17) : null;
                    } else {
                        f9 += viewPager$ItemInfo3.widthFactor;
                        i17++;
                        if (i17 < this.mItems.size()) {
                            viewPager$ItemInfo3 = this.mItems.get(i17);
                        }
                    }
                }
            }
            calculatePageOffsets(viewPager$ItemInfoAddNewItem, i12, viewPager$ItemInfoInfoForPosition);
            this.mAdapter.setPrimaryItem((ViewGroup) this, this.mCurItem, viewPager$ItemInfoAddNewItem.object);
        }
        this.mAdapter.finishUpdate((ViewGroup) this);
        int childCount = getChildCount();
        for (int i19 = 0; i19 < childCount; i19++) {
            View childAt = getChildAt(i19);
            ViewPager$LayoutParams viewPager$LayoutParams = (ViewPager$LayoutParams) childAt.getLayoutParams();
            viewPager$LayoutParams.childIndex = i19;
            if (!viewPager$LayoutParams.isDecor && viewPager$LayoutParams.widthFactor == 0.0f && (viewPager$ItemInfoInfoForChild = infoForChild(childAt)) != null) {
                viewPager$LayoutParams.widthFactor = viewPager$ItemInfoInfoForChild.widthFactor;
                viewPager$LayoutParams.position = viewPager$ItemInfoInfoForChild.position;
            }
        }
        sortChildDrawingOrder();
        if (hasFocus()) {
            View viewFindFocus = findFocus();
            ViewPager$ItemInfo viewPager$ItemInfoInfoForAnyChild = viewFindFocus != null ? infoForAnyChild(viewFindFocus) : null;
            if (viewPager$ItemInfoInfoForAnyChild == null || viewPager$ItemInfoInfoForAnyChild.position != this.mCurItem) {
                for (int i20 = 0; i20 < getChildCount(); i20++) {
                    View childAt2 = getChildAt(i20);
                    ViewPager$ItemInfo viewPager$ItemInfoInfoForChild2 = infoForChild(childAt2);
                    if (viewPager$ItemInfoInfoForChild2 != null && viewPager$ItemInfoInfoForChild2.position == this.mCurItem && childAt2.requestFocus(2)) {
                        return;
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeOnAdapterChangeListener(@NonNull ViewPager$OnAdapterChangeListener viewPager$OnAdapterChangeListener) {
        List<ViewPager$OnAdapterChangeListener> list = this.mAdapterChangeListeners;
        if (list != null) {
            list.remove(viewPager$OnAdapterChangeListener);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeOnPageChangeListener(@NonNull ViewPager$OnPageChangeListener viewPager$OnPageChangeListener) {
        List<ViewPager$OnPageChangeListener> list = this.mOnPageChangeListeners;
        if (list != null) {
            list.remove(viewPager$OnPageChangeListener);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.mInLayout) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAdapter(@Nullable PagerAdapter pagerAdapter) {
        PagerAdapter pagerAdapter2 = this.mAdapter;
        if (pagerAdapter2 != null) {
            pagerAdapter2.setViewPagerObserver(null);
            this.mAdapter.startUpdate((ViewGroup) this);
            for (int i9 = 0; i9 < this.mItems.size(); i9++) {
                ViewPager$ItemInfo viewPager$ItemInfo = this.mItems.get(i9);
                this.mAdapter.destroyItem((ViewGroup) this, viewPager$ItemInfo.position, viewPager$ItemInfo.object);
            }
            this.mAdapter.finishUpdate((ViewGroup) this);
            this.mItems.clear();
            removeNonDecorViews();
            this.mCurItem = 0;
            scrollTo(0, 0);
        }
        PagerAdapter pagerAdapter3 = this.mAdapter;
        this.mAdapter = pagerAdapter;
        this.mExpectedAdapterCount = 0;
        if (pagerAdapter != null) {
            if (this.mObserver == null) {
                this.mObserver = new ViewPager$PagerObserver(this);
            }
            this.mAdapter.setViewPagerObserver(this.mObserver);
            this.mPopulatePending = false;
            boolean z8 = this.mFirstLayout;
            this.mFirstLayout = true;
            this.mExpectedAdapterCount = this.mAdapter.getCount();
            if (this.mRestoredCurItem >= 0) {
                this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
                setCurrentItemInternal(this.mRestoredCurItem, false, true);
                this.mRestoredCurItem = -1;
                this.mRestoredAdapterState = null;
                this.mRestoredClassLoader = null;
            } else if (z8) {
                requestLayout();
            } else {
                populate();
            }
        }
        List<ViewPager$OnAdapterChangeListener> list = this.mAdapterChangeListeners;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.mAdapterChangeListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mAdapterChangeListeners.get(i10).onAdapterChanged(this, pagerAdapter3, pagerAdapter);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCurrentItem(int i9) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i9, !this.mFirstLayout, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCurrentItemInternal(int i9, boolean z8, boolean z9, int i10) {
        PagerAdapter pagerAdapter = this.mAdapter;
        if (pagerAdapter == null || pagerAdapter.getCount() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z9 && this.mCurItem == i9 && this.mItems.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i9 < 0) {
            i9 = 0;
        } else if (i9 >= this.mAdapter.getCount()) {
            i9 = this.mAdapter.getCount() - 1;
        }
        int i11 = this.mOffscreenPageLimit;
        int i12 = this.mCurItem;
        if (i9 > i12 + i11 || i9 < i12 - i11) {
            for (int i13 = 0; i13 < this.mItems.size(); i13++) {
                this.mItems.get(i13).scrolling = true;
            }
        }
        boolean z10 = this.mCurItem != i9;
        if (!this.mFirstLayout) {
            populate(i9);
            scrollToItem(i9, z8, i10, z10);
        } else {
            this.mCurItem = i9;
            if (z10) {
                dispatchOnPageSelected(i9);
            }
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager$OnPageChangeListener setInternalPageChangeListener(ViewPager$OnPageChangeListener viewPager$OnPageChangeListener) {
        ViewPager$OnPageChangeListener viewPager$OnPageChangeListener2 = this.mInternalPageChangeListener;
        this.mInternalPageChangeListener = viewPager$OnPageChangeListener;
        return viewPager$OnPageChangeListener2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOffscreenPageLimit(int i9) {
        if (i9 < 1) {
            Log.w(TAG, "Requested offscreen page limit " + i9 + " too small; defaulting to 1");
            i9 = 1;
        }
        if (i9 != this.mOffscreenPageLimit) {
            this.mOffscreenPageLimit = i9;
            populate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setOnPageChangeListener(ViewPager$OnPageChangeListener viewPager$OnPageChangeListener) {
        this.mOnPageChangeListener = viewPager$OnPageChangeListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPageMargin(int i9) {
        int i10 = this.mPageMargin;
        this.mPageMargin = i9;
        int width = getWidth();
        recomputeScrollPosition(width, width, i9, i10);
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPageMarginDrawable(@Nullable Drawable drawable) {
        this.mMarginDrawable = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPageTransformer(boolean z8, @Nullable ViewPager$PageTransformer viewPager$PageTransformer, int i9) {
        boolean z9 = viewPager$PageTransformer != null;
        boolean z10 = z9 != (this.mPageTransformer != null);
        this.mPageTransformer = viewPager$PageTransformer;
        setChildrenDrawingOrderEnabled(z9);
        if (z9) {
            this.mDrawingOrder = z8 ? 2 : 1;
            this.mPageTransformerLayerType = i9;
        } else {
            this.mDrawingOrder = 0;
        }
        if (z10) {
            populate();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setScrollState(int i9) {
        if (this.mScrollState == i9) {
            return;
        }
        this.mScrollState = i9;
        if (this.mPageTransformer != null) {
            enableLayers(i9 != 0);
        }
        dispatchOnScrollStateChanged(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void smoothScrollTo(int i9, int i10, int i11) {
        int scrollX;
        int iAbs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.mScroller;
        if (scroller == null || scroller.isFinished()) {
            scrollX = getScrollX();
        } else {
            boolean z8 = this.mIsScrollStarted;
            Scroller scroller2 = this.mScroller;
            scrollX = z8 ? scroller2.getCurrX() : scroller2.getStartX();
            this.mScroller.abortAnimation();
            setScrollingCacheEnabled(false);
        }
        int i12 = scrollX;
        int scrollY = getScrollY();
        int i13 = i9 - i12;
        int i14 = i10 - scrollY;
        if (i13 == 0 && i14 == 0) {
            completeScroll(false);
            populate();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i15 = clientWidth / 2;
        float f8 = clientWidth;
        float f9 = i15;
        float fDistanceInfluenceForSnapDuration = (distanceInfluenceForSnapDuration(Math.min(1.0f, (Math.abs(i13) * 1.0f) / f8)) * f9) + f9;
        int iAbs2 = Math.abs(i11);
        if (iAbs2 > 0) {
            iAbs = Math.round(Math.abs(fDistanceInfluenceForSnapDuration / iAbs2) * 1000.0f) * 4;
        } else {
            iAbs = (int) (((Math.abs(i13) / ((this.mAdapter.getPageWidth(this.mCurItem) * f8) + this.mPageMargin)) + 1.0f) * 100.0f);
        }
        int iMin = Math.min(iAbs, 600);
        this.mIsScrollStarted = false;
        this.mScroller.startScroll(i12, scrollY, i13, i14, iMin);
        ViewCompat.postInvalidateOnAnimation(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mMarginDrawable;
    }

    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return generateDefaultLayoutParams();
    }

    public void setCurrentItem(int i9, boolean z8) {
        this.mPopulatePending = false;
        setCurrentItemInternal(i9, z8, false);
    }

    public void setPageMarginDrawable(@DrawableRes int i9) {
        setPageMarginDrawable(ContextCompat.getDrawable(getContext(), i9));
    }

    public void setPageTransformer(boolean z8, @Nullable ViewPager$PageTransformer viewPager$PageTransformer) {
        setPageTransformer(z8, viewPager$PageTransformer, 2);
    }

    public ViewPager(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mItems = new ArrayList<>();
        this.mTempItem = new ViewPager$ItemInfo();
        this.mTempRect = new Rect();
        this.mRestoredCurItem = -1;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
        this.mFirstOffset = -3.4028235E38f;
        this.mLastOffset = Float.MAX_VALUE;
        this.mOffscreenPageLimit = 1;
        this.mActivePointerId = -1;
        this.mFirstLayout = true;
        this.mNeedCalculatePageOffsets = false;
        this.mEndScrollRunnable = new ViewPager$3(this);
        this.mScrollState = 0;
        initViewPager();
    }

    public void setCurrentItemInternal(int i9, boolean z8, boolean z9) {
        setCurrentItemInternal(i9, z8, z9, 0);
    }

    public void smoothScrollTo(int i9, int i10) {
        smoothScrollTo(i9, i10, 0);
    }

    public void populate() {
        populate(this.mCurItem);
    }
}
