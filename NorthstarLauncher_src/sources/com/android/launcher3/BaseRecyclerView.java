package com.android.launcher3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.RecyclerViewFastScroller;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseRecyclerView extends RecyclerView {
    protected RecyclerViewFastScroller mScrollbar;

    protected abstract int getAvailableScrollHeight();

    public abstract int getCurrentScrollY();

    public RecyclerViewFastScroller getScrollbar() {
        return this.mScrollbar;
    }

    public void onFastScrollCompleted() {
    }

    public abstract void onUpdateScrollbar(int dy);

    public abstract String scrollToPositionAtProgress(float touchFraction);

    public boolean supportsFastScrolling() {
        return true;
    }

    public BaseRecyclerView(Context context) {
        this(context, null);
    }

    public BaseRecyclerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BaseRecyclerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        bindFastScrollbar();
    }

    public void bindFastScrollbar() {
        ViewGroup viewGroup = (ViewGroup) getParent().getParent();
        RecyclerViewFastScroller recyclerViewFastScroller = (RecyclerViewFastScroller) viewGroup.findViewById(R.id.fast_scroller);
        this.mScrollbar = recyclerViewFastScroller;
        recyclerViewFastScroller.setRecyclerView(this, (TextView) viewGroup.findViewById(R.id.fast_scroller_popup));
        onUpdateScrollbar(0);
    }

    public int getScrollBarTop() {
        return getPaddingTop();
    }

    public int getScrollbarTrackHeight() {
        return (this.mScrollbar.getHeight() - getScrollBarTop()) - getPaddingBottom();
    }

    protected int getAvailableScrollBarHeight() {
        return getScrollbarTrackHeight() - this.mScrollbar.getThumbHeight();
    }

    protected void synchronizeScrollBarThumbOffsetToViewScroll(int scrollY, int availableScrollHeight) {
        if (availableScrollHeight <= 0) {
            this.mScrollbar.setThumbOffsetY(-1);
        } else {
            this.mScrollbar.setThumbOffsetY((int) ((scrollY / availableScrollHeight) * getAvailableScrollBarHeight()));
        }
    }

    public boolean shouldContainerScroll(MotionEvent ev, View eventSource) {
        float[] fArr = {ev.getX(), ev.getY()};
        Utilities.mapCoordInSelfToDescendant(this.mScrollbar, eventSource, fArr);
        if (this.mScrollbar.shouldBlockIntercept((int) fArr[0], (int) fArr[1])) {
            return false;
        }
        if (getCurrentScrollY() == 0) {
            return true;
        }
        return getAdapter() == null || getAdapter().getItemCount() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int state) {
        super.onScrollStateChanged(state);
        if (state == 0) {
            AccessibilityManagerCompat.sendScrollFinishedEventToTest(getContext());
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        if (isLayoutSuppressed()) {
            info.setScrollable(false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutFrozen(boolean frozen) {
        boolean z = frozen != isLayoutSuppressed();
        super.setLayoutFrozen(frozen);
        if (z) {
            ActivityContext.lookupContext(getContext()).getDragLayer().sendAccessibilityEvent(2048);
        }
    }
}
