package androidx.slidingpanelayout.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.widget.Openable;
import androidx.customview.widget.ViewDragHelper;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.FoldingFeature$Orientation;
import androidx.window.layout.WindowInfoTracker;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SlidingPaneLayout extends ViewGroup implements Openable {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.slidingpanelayout.widget.SlidingPaneLayout";
    public static final int LOCK_MODE_LOCKED = 3;
    public static final int LOCK_MODE_LOCKED_CLOSED = 2;
    public static final int LOCK_MODE_LOCKED_OPEN = 1;
    public static final int LOCK_MODE_UNLOCKED = 0;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final String TAG = "SlidingPaneLayout";
    private static boolean sEdgeSizeUsingSystemGestureInsets;
    private boolean mCanSlide;
    private int mCoveredFadeColor;
    private boolean mDisplayListReflectionLoaded;
    final ViewDragHelper mDragHelper;
    private boolean mFirstLayout;
    FoldingFeature mFoldingFeature;
    private FoldingFeatureObserver mFoldingFeatureObserver;
    private Method mGetDisplayList;
    private float mInitialMotionX;
    private float mInitialMotionY;
    boolean mIsUnableToDrag;
    private int mLockMode;
    private FoldingFeatureObserver$OnFoldingFeatureChangeListener mOnFoldingFeatureChangeListener;

    @Nullable
    private SlidingPaneLayout$PanelSlideListener mPanelSlideListener;
    private final List<SlidingPaneLayout$PanelSlideListener> mPanelSlideListeners;
    private int mParallaxBy;
    private float mParallaxOffset;
    final ArrayList<SlidingPaneLayout$DisableLayerRunnable> mPostedRunnables;
    boolean mPreservedOpenState;
    private Field mRecreateDisplayList;
    private Drawable mShadowDrawableLeft;
    private Drawable mShadowDrawableRight;
    float mSlideOffset;
    int mSlideRange;
    View mSlideableView;
    private int mSliderFadeColor;
    private final Rect mTmpRect;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        sEdgeSizeUsingSystemGestureInsets = Build$VERSION.SDK_INT >= 29;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.mSliderFadeColor = 0;
        this.mSlideOffset = 1.0f;
        this.mPanelSlideListeners = new CopyOnWriteArrayList();
        this.mFirstLayout = true;
        this.mTmpRect = new Rect();
        this.mPostedRunnables = new ArrayList<>();
        this.mOnFoldingFeatureChangeListener = new SlidingPaneLayout$1(this);
        float f8 = context.getResources().getDisplayMetrics().density;
        setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate(this, new SlidingPaneLayout$AccessibilityDelegate(this));
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewDragHelper viewDragHelperCreate = ViewDragHelper.create(this, 0.5f, new SlidingPaneLayout$DragHelperCallback(this));
        this.mDragHelper = viewDragHelperCreate;
        viewDragHelperCreate.setMinVelocity(f8 * 400.0f);
        setFoldingFeatureObserver(new FoldingFeatureObserver(WindowInfoTracker.getOrCreate(context), ContextCompat.getMainExecutor(context)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean closePane(int i9) {
        if (!this.mCanSlide) {
            this.mPreservedOpenState = false;
        }
        if (!this.mFirstLayout && !smoothSlideTo(1.0f, i9)) {
            return false;
        }
        this.mPreservedOpenState = false;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private static Activity getActivityOrNull(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Rect getFoldBoundsInView(@NonNull FoldingFeature foldingFeature, View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i9 = iArr[0];
        Rect rect = new Rect(i9, iArr[1], view.getWidth() + i9, view.getWidth() + iArr[1]);
        Rect rect2 = new Rect(foldingFeature.getBounds());
        boolean zIntersect = rect2.intersect(rect);
        if ((rect2.width() == 0 && rect2.height() == 0) || !zIntersect) {
            return null;
        }
        rect2.offset(-iArr[0], -iArr[1]);
        return rect2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int getMinimumWidth(View view) {
        return view instanceof SlidingPaneLayout$TouchBlocker ? ViewCompat.getMinimumWidth(((SlidingPaneLayout$TouchBlocker) view).getChildAt(0)) : ViewCompat.getMinimumWidth(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Insets getSystemGestureInsets() {
        WindowInsetsCompat rootWindowInsets;
        if (!sEdgeSizeUsingSystemGestureInsets || (rootWindowInsets = ViewCompat.getRootWindowInsets(this)) == null) {
            return null;
        }
        return rootWindowInsets.getSystemGestureInsets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int measureChildHeight(@NonNull View view, int i9, int i10) {
        SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) view.getLayoutParams();
        return (((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).width != 0 || slidingPaneLayout$LayoutParams.weight <= 0.0f) ? View$MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), BasicMeasure.EXACTLY) : ViewGroup.getChildMeasureSpec(i9, i10, ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).height);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean openPane(int i9) {
        if (!this.mCanSlide) {
            this.mPreservedOpenState = true;
        }
        if (!this.mFirstLayout && !smoothSlideTo(0.0f, i9)) {
            return false;
        }
        this.mPreservedOpenState = true;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void parallaxOtherViews(float f8) {
        boolean zIsLayoutRtlSupport = isLayoutRtlSupport();
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt != this.mSlideableView) {
                float f9 = 1.0f - this.mParallaxOffset;
                int i10 = this.mParallaxBy;
                this.mParallaxOffset = f8;
                int i11 = ((int) (f9 * i10)) - ((int) ((1.0f - f8) * i10));
                if (zIsLayoutRtlSupport) {
                    i11 = -i11;
                }
                childAt.offsetLeftAndRight(i11);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setFoldingFeatureObserver(FoldingFeatureObserver foldingFeatureObserver) {
        this.mFoldingFeatureObserver = foldingFeatureObserver;
        foldingFeatureObserver.setOnFoldingFeatureChangeListener(this.mOnFoldingFeatureChangeListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ArrayList<Rect> splitViewPositions() {
        Rect foldBoundsInView;
        FoldingFeature foldingFeature = this.mFoldingFeature;
        if (foldingFeature == null || !foldingFeature.isSeparating() || this.mFoldingFeature.getBounds().left == 0 || this.mFoldingFeature.getBounds().top != 0 || (foldBoundsInView = getFoldBoundsInView(this.mFoldingFeature, this)) == null) {
            return null;
        }
        Rect rect = new Rect(getPaddingLeft(), getPaddingTop(), Math.max(getPaddingLeft(), foldBoundsInView.left), getHeight() - getPaddingBottom());
        int width = getWidth() - getPaddingRight();
        return new ArrayList<>(Arrays.asList(rect, new Rect(Math.min(width, foldBoundsInView.right), getPaddingTop(), width, getHeight() - getPaddingBottom())));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean viewIsOpaque(View view) {
        return view.isOpaque();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addPanelSlideListener(@NonNull SlidingPaneLayout$PanelSlideListener slidingPaneLayout$PanelSlideListener) {
        this.mPanelSlideListeners.add(slidingPaneLayout$PanelSlideListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i9, @Nullable ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (getChildCount() == 1) {
            super.addView(new SlidingPaneLayout$TouchBlocker(view), i9, viewGroup$LayoutParams);
        } else {
            super.addView(view, i9, viewGroup$LayoutParams);
        }
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
        if (!z8) {
            return false;
        }
        if (!isLayoutRtlSupport()) {
            i9 = -i9;
        }
        return view.canScrollHorizontally(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public boolean canSlide() {
        return this.mCanSlide;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return (viewGroup$LayoutParams instanceof SlidingPaneLayout$LayoutParams) && super.checkLayoutParams(viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.Openable
    public void close() {
        closePane();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void computeScroll() {
        if (this.mDragHelper.continueSettling(true)) {
            if (this.mCanSlide) {
                ViewCompat.postInvalidateOnAnimation(this);
            } else {
                this.mDragHelper.abort();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnPanelClosed(@NonNull View view) {
        Iterator<SlidingPaneLayout$PanelSlideListener> it = this.mPanelSlideListeners.iterator();
        while (it.hasNext()) {
            it.next().onPanelClosed(view);
        }
        sendAccessibilityEvent(32);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnPanelOpened(@NonNull View view) {
        Iterator<SlidingPaneLayout$PanelSlideListener> it = this.mPanelSlideListeners.iterator();
        while (it.hasNext()) {
            it.next().onPanelOpened(view);
        }
        sendAccessibilityEvent(32);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchOnPanelSlide(@NonNull View view) {
        Iterator<SlidingPaneLayout$PanelSlideListener> it = this.mPanelSlideListeners.iterator();
        while (it.hasNext()) {
            it.next().onPanelSlide(view, this.mSlideOffset);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i9;
        int right;
        super.draw(canvas);
        Drawable drawable = isLayoutRtlSupport() ? this.mShadowDrawableRight : this.mShadowDrawableLeft;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt == null || drawable == null) {
            return;
        }
        int top = childAt.getTop();
        int bottom = childAt.getBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (isLayoutRtlSupport()) {
            right = childAt.getRight();
            i9 = intrinsicWidth + right;
        } else {
            int left = childAt.getLeft();
            int i10 = left - intrinsicWidth;
            i9 = left;
            right = i10;
        }
        drawable.setBounds(right, top, i9, bottom);
        drawable.draw(canvas);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j9) {
        boolean zIsLayoutRtlSupport = isLayoutRtlSupport() ^ isOpen();
        ViewDragHelper viewDragHelper = this.mDragHelper;
        if (zIsLayoutRtlSupport) {
            viewDragHelper.setEdgeTrackingEnabled(1);
            Insets systemGestureInsets = getSystemGestureInsets();
            if (systemGestureInsets != null) {
                ViewDragHelper viewDragHelper2 = this.mDragHelper;
                viewDragHelper2.setEdgeSize(Math.max(viewDragHelper2.getDefaultEdgeSize(), systemGestureInsets.left));
            }
        } else {
            viewDragHelper.setEdgeTrackingEnabled(2);
            Insets systemGestureInsets2 = getSystemGestureInsets();
            if (systemGestureInsets2 != null) {
                ViewDragHelper viewDragHelper3 = this.mDragHelper;
                viewDragHelper3.setEdgeSize(Math.max(viewDragHelper3.getDefaultEdgeSize(), systemGestureInsets2.right));
            }
        }
        SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) view.getLayoutParams();
        int iSave = canvas.save();
        if (this.mCanSlide && !slidingPaneLayout$LayoutParams.slideable && this.mSlideableView != null) {
            canvas.getClipBounds(this.mTmpRect);
            boolean zIsLayoutRtlSupport2 = isLayoutRtlSupport();
            Rect rect = this.mTmpRect;
            if (zIsLayoutRtlSupport2) {
                rect.left = Math.max(rect.left, this.mSlideableView.getRight());
            } else {
                rect.right = Math.min(rect.right, this.mSlideableView.getLeft());
            }
            canvas.clipRect(this.mTmpRect);
        }
        boolean zDrawChild = super.drawChild(canvas, view, j9);
        canvas.restoreToCount(iSave);
        return zDrawChild;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return new SlidingPaneLayout$LayoutParams();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams ? new SlidingPaneLayout$LayoutParams((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams) : new SlidingPaneLayout$LayoutParams(viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    @Deprecated
    public int getCoveredFadeColor() {
        return this.mCoveredFadeColor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int getLockMode() {
        return this.mLockMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Px
    public int getParallaxDistance() {
        return this.mParallaxBy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ColorInt
    @Deprecated
    public int getSliderFadeColor() {
        return this.mSliderFadeColor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidateChildRegion(View view) {
        ViewCompat.setLayerPaint(view, ((SlidingPaneLayout$LayoutParams) view.getLayoutParams()).dimPaint);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isDimmed(View view) {
        if (view == null) {
            return false;
        }
        return this.mCanSlide && ((SlidingPaneLayout$LayoutParams) view.getLayoutParams()).dimWhenOffset && this.mSlideOffset > 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isLayoutRtlSupport() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.Openable
    public boolean isOpen() {
        return !this.mCanSlide || this.mSlideOffset == 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isSlideable() {
        return this.mCanSlide;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        Activity activityOrNull;
        super.onAttachedToWindow();
        this.mFirstLayout = true;
        if (this.mFoldingFeatureObserver == null || (activityOrNull = getActivityOrNull(getContext())) == null) {
            return;
        }
        this.mFoldingFeatureObserver.registerLayoutStateChangeCallback(activityOrNull);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
        FoldingFeatureObserver foldingFeatureObserver = this.mFoldingFeatureObserver;
        if (foldingFeatureObserver != null) {
            foldingFeatureObserver.unregisterLayoutStateChangeCallback();
        }
        int size = this.mPostedRunnables.size();
        int i9 = 0;
        while (true) {
            ArrayList<SlidingPaneLayout$DisableLayerRunnable> arrayList = this.mPostedRunnables;
            if (i9 >= size) {
                arrayList.clear();
                return;
            } else {
                arrayList.get(i9).run();
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z8;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.mCanSlide && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.mPreservedOpenState = this.mDragHelper.isViewUnder(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.mCanSlide || (this.mIsUnableToDrag && actionMasked != 0)) {
            this.mDragHelper.cancel();
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (actionMasked == 3 || actionMasked == 1) {
            this.mDragHelper.cancel();
            return false;
        }
        if (actionMasked == 0) {
            this.mIsUnableToDrag = false;
            float x8 = motionEvent.getX();
            float y8 = motionEvent.getY();
            this.mInitialMotionX = x8;
            this.mInitialMotionY = y8;
            if (this.mDragHelper.isViewUnder(this.mSlideableView, (int) x8, (int) y8) && isDimmed(this.mSlideableView)) {
                z8 = true;
            }
            return !this.mDragHelper.shouldInterceptTouchEvent(motionEvent) || z8;
        }
        if (actionMasked == 2) {
            float x9 = motionEvent.getX();
            float y9 = motionEvent.getY();
            float fAbs = Math.abs(x9 - this.mInitialMotionX);
            float fAbs2 = Math.abs(y9 - this.mInitialMotionY);
            if (fAbs > this.mDragHelper.getTouchSlop() && fAbs2 > fAbs) {
                this.mDragHelper.cancel();
                this.mIsUnableToDrag = true;
                return false;
            }
        }
        z8 = false;
        if (this.mDragHelper.shouldInterceptTouchEvent(motionEvent)) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:42:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d9  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        FoldingFeature foldingFeature;
        int iWidth;
        boolean zIsLayoutRtlSupport = isLayoutRtlSupport();
        int i18 = i11 - i9;
        int paddingRight = zIsLayoutRtlSupport ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = zIsLayoutRtlSupport ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.mFirstLayout) {
            this.mSlideOffset = (this.mCanSlide && this.mPreservedOpenState) ? 0.0f : 1.0f;
        }
        int i19 = paddingRight;
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt = getChildAt(i20);
            if (childAt.getVisibility() != 8) {
                SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (slidingPaneLayout$LayoutParams.slideable) {
                    int i21 = i18 - paddingLeft;
                    int iMin = (Math.min(paddingRight, i21) - i19) - (((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).leftMargin + ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).rightMargin);
                    this.mSlideRange = iMin;
                    int i22 = zIsLayoutRtlSupport ? ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).rightMargin : ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).leftMargin;
                    slidingPaneLayout$LayoutParams.dimWhenOffset = (measuredWidth / 2) + ((i19 + i22) + iMin) > i21;
                    int i23 = (int) (iMin * this.mSlideOffset);
                    i13 = i22 + i23 + i19;
                    this.mSlideOffset = i23 / iMin;
                } else {
                    if (!this.mCanSlide || (i14 = this.mParallaxBy) == 0) {
                        i13 = paddingRight;
                    } else {
                        i15 = (int) ((1.0f - this.mSlideOffset) * i14);
                        i13 = paddingRight;
                    }
                    if (zIsLayoutRtlSupport) {
                        i17 = (i18 - i13) + i15;
                        i16 = i17 - measuredWidth;
                    } else {
                        i16 = i13 - i15;
                        i17 = i16 + measuredWidth;
                    }
                    childAt.layout(i16, paddingTop, i17, childAt.getMeasuredHeight() + paddingTop);
                    foldingFeature = this.mFoldingFeature;
                    if (foldingFeature == null && foldingFeature.getOrientation() == FoldingFeature$Orientation.VERTICAL && this.mFoldingFeature.isSeparating()) {
                        iWidth = this.mFoldingFeature.getBounds().width();
                    } else {
                        iWidth = 0;
                    }
                    paddingRight = Math.abs(iWidth) + childAt.getWidth() + paddingRight;
                    i19 = i13;
                }
                i15 = 0;
                if (zIsLayoutRtlSupport) {
                    i17 = (i18 - i13) + i15;
                    i16 = i17 - measuredWidth;
                } else {
                    i16 = i13 - i15;
                    i17 = i16 + measuredWidth;
                }
                childAt.layout(i16, paddingTop, i17, childAt.getMeasuredHeight() + paddingTop);
                foldingFeature = this.mFoldingFeature;
                if (foldingFeature == null) {
                    iWidth = 0;
                } else {
                    iWidth = 0;
                }
                paddingRight = Math.abs(iWidth) + childAt.getWidth() + paddingRight;
                i19 = i13;
            }
        }
        if (this.mFirstLayout) {
            if (this.mCanSlide && this.mParallaxBy != 0) {
                parallaxOtherViews(this.mSlideOffset);
            }
            updateObscuredViewsVisibility(this.mSlideableView);
        }
        this.mFirstLayout = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onMeasure(int i9, int i10) {
        int paddingTop;
        int iMin;
        int i11;
        int iMax;
        int iMakeMeasureSpec;
        int i12;
        int mode = View$MeasureSpec.getMode(i9);
        int size = View$MeasureSpec.getSize(i9);
        int mode2 = View$MeasureSpec.getMode(i10);
        int size2 = View$MeasureSpec.getSize(i10);
        if (mode2 != Integer.MIN_VALUE) {
            iMin = mode2 != 1073741824 ? 0 : (size2 - getPaddingTop()) - getPaddingBottom();
            paddingTop = iMin;
        } else {
            paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            iMin = 0;
        }
        int iMax2 = Math.max((size - getPaddingLeft()) - getPaddingRight(), 0);
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e(TAG, "onMeasure: More than two child views are not supported.");
        }
        this.mSlideableView = null;
        int i13 = 0;
        boolean z8 = false;
        int i14 = iMax2;
        float f8 = 0.0f;
        while (true) {
            i11 = 8;
            if (i13 >= childCount) {
                break;
            }
            View childAt = getChildAt(i13);
            SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) childAt.getLayoutParams();
            int i15 = iMax2;
            if (childAt.getVisibility() == 8) {
                slidingPaneLayout$LayoutParams.dimWhenOffset = false;
            } else {
                float f9 = slidingPaneLayout$LayoutParams.weight;
                if (f9 > 0.0f) {
                    f8 += f9;
                    if (((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).width == 0) {
                    }
                    i13 = i12 + 1;
                    iMax2 = i15;
                }
                int iMax3 = Math.max(i15 - (((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).leftMargin + ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).rightMargin), 0);
                int i16 = ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).width;
                i12 = i13;
                childAt.measure(i16 == -2 ? View$MeasureSpec.makeMeasureSpec(iMax3, mode == 0 ? mode : Integer.MIN_VALUE) : i16 == -1 ? View$MeasureSpec.makeMeasureSpec(iMax3, mode) : View$MeasureSpec.makeMeasureSpec(i16, BasicMeasure.EXACTLY), ViewGroup.getChildMeasureSpec(i10, getPaddingBottom() + getPaddingTop(), ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).height));
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (measuredHeight > iMin) {
                    if (mode2 == Integer.MIN_VALUE) {
                        iMin = Math.min(measuredHeight, paddingTop);
                    } else if (mode2 == 0) {
                        iMin = measuredHeight;
                    }
                }
                i14 -= measuredWidth;
                if (i12 != 0) {
                    boolean z9 = i14 < 0;
                    slidingPaneLayout$LayoutParams.slideable = z9;
                    z8 |= z9;
                    if (z9) {
                        this.mSlideableView = childAt;
                    }
                }
                i13 = i12 + 1;
                iMax2 = i15;
            }
            i12 = i13;
            i13 = i12 + 1;
            iMax2 = i15;
        }
        int i17 = iMax2;
        if (z8 || f8 > 0.0f) {
            int i18 = 0;
            while (i18 < childCount) {
                View childAt2 = getChildAt(i18);
                if (childAt2.getVisibility() != i11) {
                    SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams2 = (SlidingPaneLayout$LayoutParams) childAt2.getLayoutParams();
                    int measuredWidth2 = (((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams2).width != 0 || slidingPaneLayout$LayoutParams2.weight <= 0.0f) ? childAt2.getMeasuredWidth() : 0;
                    if (z8) {
                        iMax = i17 - (((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams2).leftMargin + ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams2).rightMargin);
                        iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(iMax, BasicMeasure.EXACTLY);
                    } else if (slidingPaneLayout$LayoutParams2.weight > 0.0f) {
                        iMax = ((int) ((slidingPaneLayout$LayoutParams2.weight * Math.max(0, i14)) / f8)) + measuredWidth2;
                        iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(iMax, BasicMeasure.EXACTLY);
                    } else {
                        iMax = measuredWidth2;
                        iMakeMeasureSpec = 0;
                    }
                    int iMeasureChildHeight = measureChildHeight(childAt2, i10, getPaddingBottom() + getPaddingTop());
                    if (measuredWidth2 != iMax) {
                        childAt2.measure(iMakeMeasureSpec, iMeasureChildHeight);
                        int measuredHeight2 = childAt2.getMeasuredHeight();
                        if (measuredHeight2 > iMin) {
                            if (mode2 == Integer.MIN_VALUE) {
                                iMin = Math.min(measuredHeight2, paddingTop);
                            } else if (mode2 == 0) {
                                iMin = measuredHeight2;
                            }
                        }
                    }
                }
                i18++;
                i11 = 8;
            }
        }
        ArrayList<Rect> arrayListSplitViewPositions = splitViewPositions();
        if (arrayListSplitViewPositions != null && !z8) {
            for (int i19 = 0; i19 < childCount; i19++) {
                View childAt3 = getChildAt(i19);
                if (childAt3.getVisibility() != 8) {
                    Rect rect = arrayListSplitViewPositions.get(i19);
                    SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams3 = (SlidingPaneLayout$LayoutParams) childAt3.getLayoutParams();
                    int i20 = ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams3).leftMargin + ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams3).rightMargin;
                    int iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(childAt3.getMeasuredHeight(), BasicMeasure.EXACTLY);
                    childAt3.measure(View$MeasureSpec.makeMeasureSpec(rect.width(), Integer.MIN_VALUE), iMakeMeasureSpec2);
                    if ((childAt3.getMeasuredWidthAndState() & 16777216) == 1 || (getMinimumWidth(childAt3) != 0 && rect.width() < getMinimumWidth(childAt3))) {
                        childAt3.measure(View$MeasureSpec.makeMeasureSpec(i17 - i20, BasicMeasure.EXACTLY), iMakeMeasureSpec2);
                        if (i19 != 0) {
                            slidingPaneLayout$LayoutParams3.slideable = true;
                            this.mSlideableView = childAt3;
                            z8 = true;
                        }
                    } else {
                        childAt3.measure(View$MeasureSpec.makeMeasureSpec(rect.width(), BasicMeasure.EXACTLY), iMakeMeasureSpec2);
                    }
                }
            }
        }
        setMeasuredDimension(size, getPaddingBottom() + getPaddingTop() + iMin);
        this.mCanSlide = z8;
        if (this.mDragHelper.getViewDragState() == 0 || z8) {
            return;
        }
        this.mDragHelper.abort();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void onPanelDragged(int i9) {
        if (this.mSlideableView == null) {
            this.mSlideOffset = 0.0f;
            return;
        }
        boolean zIsLayoutRtlSupport = isLayoutRtlSupport();
        SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) this.mSlideableView.getLayoutParams();
        int width = this.mSlideableView.getWidth();
        if (zIsLayoutRtlSupport) {
            i9 = (getWidth() - i9) - width;
        }
        float paddingRight = (i9 - ((zIsLayoutRtlSupport ? getPaddingRight() : getPaddingLeft()) + (zIsLayoutRtlSupport ? ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).rightMargin : ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).leftMargin))) / this.mSlideRange;
        this.mSlideOffset = paddingRight;
        if (this.mParallaxBy != 0) {
            parallaxOtherViews(paddingRight);
        }
        dispatchOnPanelSlide(this.mSlideableView);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SlidingPaneLayout$SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SlidingPaneLayout$SavedState slidingPaneLayout$SavedState = (SlidingPaneLayout$SavedState) parcelable;
        super.onRestoreInstanceState(slidingPaneLayout$SavedState.getSuperState());
        if (slidingPaneLayout$SavedState.isOpen) {
            openPane();
        } else {
            closePane();
        }
        this.mPreservedOpenState = slidingPaneLayout$SavedState.isOpen;
        setLockMode(slidingPaneLayout$SavedState.mLockMode);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SlidingPaneLayout$SavedState slidingPaneLayout$SavedState = new SlidingPaneLayout$SavedState(super.onSaveInstanceState());
        slidingPaneLayout$SavedState.isOpen = isSlideable() ? isOpen() : this.mPreservedOpenState;
        slidingPaneLayout$SavedState.mLockMode = this.mLockMode;
        return slidingPaneLayout$SavedState;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        if (i9 != i11) {
            this.mFirstLayout = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mCanSlide) {
            return super.onTouchEvent(motionEvent);
        }
        this.mDragHelper.processTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x8 = motionEvent.getX();
            float y8 = motionEvent.getY();
            this.mInitialMotionX = x8;
            this.mInitialMotionY = y8;
            return true;
        }
        if (actionMasked == 1 && isDimmed(this.mSlideableView)) {
            float x9 = motionEvent.getX();
            float y9 = motionEvent.getY();
            float f8 = x9 - this.mInitialMotionX;
            float f9 = y9 - this.mInitialMotionY;
            int touchSlop = this.mDragHelper.getTouchSlop();
            if ((f9 * f9) + (f8 * f8) < touchSlop * touchSlop && this.mDragHelper.isViewUnder(this.mSlideableView, (int) x9, (int) y9)) {
                closePane(0);
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.customview.widget.Openable
    public void open() {
        openPane();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removePanelSlideListener(@NonNull SlidingPaneLayout$PanelSlideListener slidingPaneLayout$PanelSlideListener) {
        this.mPanelSlideListeners.remove(slidingPaneLayout$PanelSlideListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(@NonNull View view) {
        if (view.getParent() instanceof SlidingPaneLayout$TouchBlocker) {
            super.removeView((View) view.getParent());
        } else {
            super.removeView(view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.mCanSlide) {
            return;
        }
        this.mPreservedOpenState = view == this.mSlideableView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAllChildrenVisible() {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setCoveredFadeColor(@ColorInt int i9) {
        this.mCoveredFadeColor = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setLockMode(int i9) {
        this.mLockMode = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setPanelSlideListener(@Nullable SlidingPaneLayout$PanelSlideListener slidingPaneLayout$PanelSlideListener) {
        SlidingPaneLayout$PanelSlideListener slidingPaneLayout$PanelSlideListener2 = this.mPanelSlideListener;
        if (slidingPaneLayout$PanelSlideListener2 != null) {
            removePanelSlideListener(slidingPaneLayout$PanelSlideListener2);
        }
        if (slidingPaneLayout$PanelSlideListener != null) {
            addPanelSlideListener(slidingPaneLayout$PanelSlideListener);
        }
        this.mPanelSlideListener = slidingPaneLayout$PanelSlideListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setParallaxDistance(@Px int i9) {
        this.mParallaxBy = i9;
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShadowDrawableLeft(@Nullable Drawable drawable) {
        this.mShadowDrawableLeft = drawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShadowDrawableRight(@Nullable Drawable drawable) {
        this.mShadowDrawableRight = drawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setShadowResource(@DrawableRes int i9) {
        setShadowDrawableLeft(getResources().getDrawable(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShadowResourceLeft(int i9) {
        setShadowDrawableLeft(ContextCompat.getDrawable(getContext(), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShadowResourceRight(int i9) {
        setShadowDrawableRight(ContextCompat.getDrawable(getContext(), i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void setSliderFadeColor(@ColorInt int i9) {
        this.mSliderFadeColor = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void smoothSlideClosed() {
        closePane();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public void smoothSlideOpen() {
        openPane();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean smoothSlideTo(float f8, int i9) {
        int paddingLeft;
        if (!this.mCanSlide) {
            return false;
        }
        boolean zIsLayoutRtlSupport = isLayoutRtlSupport();
        SlidingPaneLayout$LayoutParams slidingPaneLayout$LayoutParams = (SlidingPaneLayout$LayoutParams) this.mSlideableView.getLayoutParams();
        if (zIsLayoutRtlSupport) {
            int paddingRight = getPaddingRight() + ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).rightMargin;
            paddingLeft = (int) (getWidth() - (((f8 * this.mSlideRange) + paddingRight) + this.mSlideableView.getWidth()));
        } else {
            paddingLeft = (int) ((f8 * this.mSlideRange) + getPaddingLeft() + ((ViewGroup$MarginLayoutParams) slidingPaneLayout$LayoutParams).leftMargin);
        }
        ViewDragHelper viewDragHelper = this.mDragHelper;
        View view = this.mSlideableView;
        if (!viewDragHelper.smoothSlideViewTo(view, paddingLeft, view.getTop())) {
            return false;
        }
        setAllChildrenVisible();
        ViewCompat.postInvalidateOnAnimation(this);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateObscuredViewsVisibility(View view) {
        int left;
        int right;
        int top;
        int bottom;
        View childAt;
        View view2 = view;
        boolean zIsLayoutRtlSupport = isLayoutRtlSupport();
        int width = zIsLayoutRtlSupport ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = zIsLayoutRtlSupport ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 == null || !viewIsOpaque(view2)) {
            left = 0;
            right = 0;
            top = 0;
            bottom = 0;
        } else {
            left = view2.getLeft();
            right = view2.getRight();
            top = view2.getTop();
            bottom = view2.getBottom();
        }
        int childCount = getChildCount();
        int i9 = 0;
        while (i9 < childCount && (childAt = getChildAt(i9)) != view2) {
            if (childAt.getVisibility() != 8) {
                childAt.setVisibility((Math.max(zIsLayoutRtlSupport ? paddingLeft : width, childAt.getLeft()) < left || Math.max(paddingTop, childAt.getTop()) < top || Math.min(zIsLayoutRtlSupport ? width : paddingLeft, childAt.getRight()) > right || Math.min(height, childAt.getBottom()) > bottom) ? 0 : 4);
            }
            i9++;
            view2 = view;
            zIsLayoutRtlSupport = zIsLayoutRtlSupport;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new SlidingPaneLayout$LayoutParams(getContext(), attributeSet);
    }

    public boolean openPane() {
        return openPane(0);
    }

    public boolean closePane() {
        return closePane(0);
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(@NonNull Context context) {
        this(context, null);
    }
}
