package com.android.launcher3.views;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.BaseRecyclerView;
import com.android.launcher3.Utilities;
import com.android.launcher3.graphics.FastScrollThumbDrawable;
import com.android.launcher3.util.Themes;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerViewFastScroller extends View {
    private static final int MAX_TRACK_ALPHA = 30;
    private static final int SCROLL_BAR_VIS_DURATION = 150;
    private static final int SCROLL_DELTA_THRESHOLD_DP = 4;
    private final boolean mCanThumbDetach;
    private final ViewConfiguration mConfig;
    private final float mDeltaThreshold;
    private int mDownX;
    private int mDownY;
    private int mDy;
    private boolean mIgnoreDragGesture;
    private boolean mIsDragging;
    private boolean mIsThumbDetached;
    private float mLastTouchY;
    private int mLastY;
    private final int mMaxWidth;
    private final int mMinWidth;
    private RecyclerView.OnScrollListener mOnScrollListener;
    private String mPopupSectionName;
    private TextView mPopupView;
    private boolean mPopupVisible;
    protected BaseRecyclerView mRv;
    private final RectF mThumbBounds;
    private final Point mThumbDrawOffset;
    protected final int mThumbHeight;
    protected int mThumbOffsetY;
    private final int mThumbPadding;
    private final Paint mThumbPaint;
    protected int mTouchOffsetY;
    private final Paint mTrackPaint;
    private int mWidth;
    private ObjectAnimator mWidthAnimator;
    private static final Rect sTempRect = new Rect();
    private static final Property<RecyclerViewFastScroller, Integer> TRACK_WIDTH = new Property<RecyclerViewFastScroller, Integer>(Integer.class, "width") { // from class: com.android.launcher3.views.RecyclerViewFastScroller.1
        @Override // android.util.Property
        public Integer get(RecyclerViewFastScroller scrollBar) {
            return Integer.valueOf(scrollBar.mWidth);
        }

        @Override // android.util.Property
        public void set(RecyclerViewFastScroller scrollBar, Integer value) {
            scrollBar.setTrackWidth(value.intValue());
        }
    };
    private static final List<Rect> SYSTEM_GESTURE_EXCLUSION_RECT = Collections.singletonList(new Rect());

    private float getScrollThumbRadius() {
        int i = this.mWidth;
        int i2 = this.mThumbPadding;
        return i + i2 + i2;
    }

    public int getThumbHeight() {
        return this.mThumbHeight;
    }

    public int getThumbOffsetY() {
        return this.mThumbOffsetY;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public boolean isDraggingThumb() {
        return this.mIsDragging;
    }

    public boolean isThumbDetached() {
        return this.mIsThumbDetached;
    }

    public void reattachThumbToScroll() {
        this.mIsThumbDetached = false;
    }

    public RecyclerViewFastScroller(Context context) {
        this(context, null);
    }

    public RecyclerViewFastScroller(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public RecyclerViewFastScroller(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mDy = 0;
        this.mThumbBounds = new RectF();
        this.mThumbDrawOffset = new Point();
        Paint paint = new Paint();
        this.mTrackPaint = paint;
        paint.setColor(Themes.getAttrColor(context, R.attr.textColorPrimary));
        paint.setAlpha(30);
        Paint paint2 = new Paint();
        this.mThumbPaint = paint2;
        paint2.setAntiAlias(true);
        paint2.setColor(Themes.getColorAccent(context));
        paint2.setStyle(Paint.Style.FILL);
        Resources resources = getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(com.android.launcher3.R.dimen.fastscroll_track_min_width);
        this.mMinWidth = dimensionPixelSize;
        this.mWidth = dimensionPixelSize;
        this.mMaxWidth = resources.getDimensionPixelSize(com.android.launcher3.R.dimen.fastscroll_track_max_width);
        this.mThumbPadding = resources.getDimensionPixelSize(com.android.launcher3.R.dimen.fastscroll_thumb_padding);
        this.mThumbHeight = resources.getDimensionPixelSize(com.android.launcher3.R.dimen.fastscroll_thumb_height);
        this.mConfig = ViewConfiguration.get(context);
        this.mDeltaThreshold = resources.getDisplayMetrics().density * 4.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, com.android.launcher3.R.styleable.RecyclerViewFastScroller, defStyleAttr, 0);
        this.mCanThumbDetach = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setRecyclerView(BaseRecyclerView rv, TextView popupView) {
        RecyclerView.OnScrollListener onScrollListener;
        BaseRecyclerView baseRecyclerView = this.mRv;
        if (baseRecyclerView != null && (onScrollListener = this.mOnScrollListener) != null) {
            baseRecyclerView.removeOnScrollListener(onScrollListener);
        }
        this.mRv = rv;
        RecyclerView.OnScrollListener onScrollListener2 = new RecyclerView.OnScrollListener() { // from class: com.android.launcher3.views.RecyclerViewFastScroller.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                RecyclerViewFastScroller.this.mDy = dy;
                RecyclerViewFastScroller.this.mRv.onUpdateScrollbar(dy);
            }
        };
        this.mOnScrollListener = onScrollListener2;
        rv.addOnScrollListener(onScrollListener2);
        this.mPopupView = popupView;
        popupView.setBackground(new FastScrollThumbDrawable(this.mThumbPaint, Utilities.isRtl(getResources())));
    }

    public void setThumbOffsetY(int y) {
        if (this.mThumbOffsetY == y) {
            return;
        }
        updatePopupY(y);
        this.mThumbOffsetY = y;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTrackWidth(int width) {
        if (this.mWidth == width) {
            return;
        }
        this.mWidth = width;
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0072  */
    /* JADX WARN: Code duplicated, block: B:30:0x0082  */
    public boolean handleTouchEvent(MotionEvent ev, Point offset) {
        int x = ((int) ev.getX()) - offset.x;
        int y = ((int) ev.getY()) - offset.y;
        int action = ev.getAction();
        if (action != 0) {
            if (action == 1) {
                this.mRv.onFastScrollCompleted();
                this.mTouchOffsetY = 0;
                this.mLastTouchY = 0.0f;
                this.mIgnoreDragGesture = false;
                if (this.mIsDragging) {
                    this.mIsDragging = false;
                    animatePopupVisibility(false);
                    showActiveScrollbar(false);
                }
            } else if (action == 2) {
                this.mLastY = y;
                boolean z = this.mIgnoreDragGesture | (Math.abs(y - this.mDownY) > this.mConfig.getScaledPagingTouchSlop());
                this.mIgnoreDragGesture = z;
                if (!this.mIsDragging && !z && this.mRv.supportsFastScrolling() && isNearThumb(this.mDownX, this.mLastY) && Math.abs(y - this.mDownY) > this.mConfig.getScaledTouchSlop()) {
                    calcTouchOffsetAndPrepToFastScroll(this.mDownY, this.mLastY);
                }
                if (this.mIsDragging) {
                    updateFastScrollSectionNameAndThumbOffset(y);
                }
            } else if (action == 3) {
                this.mRv.onFastScrollCompleted();
                this.mTouchOffsetY = 0;
                this.mLastTouchY = 0.0f;
                this.mIgnoreDragGesture = false;
                if (this.mIsDragging) {
                    this.mIsDragging = false;
                    animatePopupVisibility(false);
                    showActiveScrollbar(false);
                }
            }
        } else {
            this.mDownX = x;
            this.mLastY = y;
            this.mDownY = y;
            if (Math.abs(this.mDy) < this.mDeltaThreshold && this.mRv.getScrollState() != 0) {
                this.mRv.stopScroll();
            }
            if (isNearThumb(x, y)) {
                this.mTouchOffsetY = this.mDownY - this.mThumbOffsetY;
            } else if (this.mRv.supportsFastScrolling() && isNearScrollBar(this.mDownX)) {
                calcTouchOffsetAndPrepToFastScroll(this.mDownY, this.mLastY);
                updateFastScrollSectionNameAndThumbOffset(y);
            }
        }
        return this.mIsDragging;
    }

    private void calcTouchOffsetAndPrepToFastScroll(int downY, int lastY) {
        this.mIsDragging = true;
        if (this.mCanThumbDetach) {
            this.mIsThumbDetached = true;
        }
        this.mTouchOffsetY += lastY - downY;
        animatePopupVisibility(true);
        showActiveScrollbar(true);
    }

    private void updateFastScrollSectionNameAndThumbOffset(int y) {
        int scrollbarTrackHeight = this.mRv.getScrollbarTrackHeight() - this.mThumbHeight;
        float fMax = Math.max(0, Math.min(scrollbarTrackHeight, y - this.mTouchOffsetY));
        String strScrollToPositionAtProgress = this.mRv.scrollToPositionAtProgress(fMax / scrollbarTrackHeight);
        if (!strScrollToPositionAtProgress.equals(this.mPopupSectionName)) {
            this.mPopupSectionName = strScrollToPositionAtProgress;
            this.mPopupView.setText(strScrollToPositionAtProgress);
        }
        animatePopupVisibility(!strScrollToPositionAtProgress.isEmpty());
        this.mLastTouchY = fMax;
        setThumbOffsetY((int) fMax);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mThumbOffsetY < 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(getWidth() / 2, this.mRv.getScrollBarTop());
        this.mThumbDrawOffset.set(getWidth() / 2, this.mRv.getScrollBarTop());
        float f = this.mWidth / 2;
        float scrollbarTrackHeight = this.mRv.getScrollbarTrackHeight();
        int i = this.mWidth;
        canvas.drawRoundRect(-f, 0.0f, f, scrollbarTrackHeight, i, i, this.mTrackPaint);
        canvas.translate(0.0f, this.mThumbOffsetY);
        this.mThumbDrawOffset.y += this.mThumbOffsetY;
        float f2 = f + this.mThumbPadding;
        float scrollThumbRadius = getScrollThumbRadius();
        this.mThumbBounds.set(-f2, 0.0f, f2, this.mThumbHeight);
        canvas.drawRoundRect(this.mThumbBounds, scrollThumbRadius, scrollThumbRadius, this.mThumbPaint);
        if (Utilities.ATLEAST_Q) {
            RectF rectF = this.mThumbBounds;
            List<Rect> list = SYSTEM_GESTURE_EXCLUSION_RECT;
            rectF.roundOut(list.get(0));
            list.get(0).offset(this.mThumbDrawOffset.x, this.mThumbDrawOffset.y);
            setSystemGestureExclusionRects(list);
        }
        canvas.restoreToCount(iSave);
    }

    private void showActiveScrollbar(boolean isScrolling) {
        ObjectAnimator objectAnimator = this.mWidthAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        Property<RecyclerViewFastScroller, Integer> property = TRACK_WIDTH;
        int[] iArr = new int[1];
        iArr[0] = isScrolling ? this.mMaxWidth : this.mMinWidth;
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(this, property, iArr);
        this.mWidthAnimator = objectAnimatorOfInt;
        objectAnimatorOfInt.setDuration(150L);
        this.mWidthAnimator.start();
    }

    private boolean isNearThumb(int x, int y) {
        int i = y - this.mThumbOffsetY;
        return x >= 0 && x < getWidth() && i >= 0 && i <= this.mThumbHeight;
    }

    public boolean shouldBlockIntercept(int x, int y) {
        return isNearThumb(x, y);
    }

    public boolean isNearScrollBar(int x) {
        return x >= (getWidth() - this.mMaxWidth) / 2 && x <= (getWidth() + this.mMaxWidth) / 2;
    }

    private void animatePopupVisibility(boolean visible) {
        if (this.mPopupVisible != visible) {
            this.mPopupVisible = visible;
            this.mPopupView.animate().cancel();
            this.mPopupView.animate().alpha(visible ? 1.0f : 0.0f).setDuration(visible ? 200L : 150L).start();
        }
    }

    private void updatePopupY(int lastTouchY) {
        if (this.mPopupVisible) {
            int height = this.mPopupView.getHeight();
            this.mPopupView.setTranslationY(Utilities.boundToRange(((this.mRv.getScrollBarTop() + lastTouchY) + (getScrollThumbRadius() / 2.0f)) - (height / 2.0f), 0.0f, ((getTop() + this.mRv.getScrollBarTop()) + this.mRv.getScrollbarTrackHeight()) - height));
        }
    }

    public boolean isHitInParent(float x, float y, Point outOffset) {
        if (this.mThumbOffsetY < 0) {
            return false;
        }
        Rect rect = sTempRect;
        getHitRect(rect);
        rect.top += this.mRv.getScrollBarTop();
        if (outOffset != null) {
            outOffset.set(rect.left, rect.top);
        }
        return rect.contains((int) x, (int) y);
    }
}
