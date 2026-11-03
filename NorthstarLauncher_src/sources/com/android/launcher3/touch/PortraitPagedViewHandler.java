package com.android.launcher3.touch;

import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.FloatProperty;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.PagedView;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.OverScroller;

/* JADX INFO: loaded from: classes.dex */
public class PortraitPagedViewHandler implements PagedOrientationHandler {
    private static final String TAG = "PortraitPagedViewHandler";

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void adjustFloatingIconStartVelocity(PointF velocity) {
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getDegreesRotated() {
        return 0.0f;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getPrimaryTranslationDirectionFactor() {
        return 1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getPrimaryValue(int x, int y) {
        return x;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getRotation() {
        return 0;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getSecondaryTranslationDirectionFactor() {
        return -1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getSecondaryValue(int x, int y) {
        return y;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getTaskDragDisplacementFactor(boolean isRtl) {
        return 1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getTaskMenuX(float x, View thumbnailView) {
        return x;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getTaskMenuY(float y, View thumbnailView) {
        return y;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public boolean isGoingUp(float displacement, boolean isRtl) {
        return displacement < 0.0f;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public boolean isLayoutNaturalToLauncher() {
        return true;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void setLayoutParamsForTaskMenuOptionItem(LinearLayout.LayoutParams lp) {
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void delegateScrollTo(PagedView pagedView, int secondaryScroll, int primaryScroll) {
        pagedView.superScrollTo(primaryScroll, secondaryScroll);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void delegateScrollBy(PagedView pagedView, int unboundedScroll, int x, int y) {
        pagedView.scrollTo(unboundedScroll + x, pagedView.getScrollY() + y);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void scrollerStartScroll(OverScroller scroller, int newPosition) {
        scroller.startScroll(newPosition - scroller.getCurrPos(), scroller.getCurrPos());
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void getCurveProperties(PagedView view, Rect insets, PagedOrientationHandler.CurveProperties out) {
        out.scroll = view.getScrollX();
        out.halfPageSize = view.getNormalChildWidth() / 2;
        out.halfScreenSize = view.getMeasuredWidth() / 2;
        out.screenCenter = insets.left + view.getPaddingLeft() + out.scroll + out.halfPageSize;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void delegateScrollTo(PagedView pagedView, int primaryScroll) {
        pagedView.superScrollTo(primaryScroll, pagedView.getScrollY());
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public <T> void set(T target, PagedOrientationHandler.Int2DAction<T> action, int param) {
        action.call(target, param, 0);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public <T> void set(T target, PagedOrientationHandler.Float2DAction<T> action, float param) {
        action.call(target, param, 0.0f);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public <T> void setSecondary(T target, PagedOrientationHandler.Float2DAction<T> action, float param) {
        action.call(target, 0.0f, param);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getPrimaryDirection(MotionEvent event, int pointerIndex) {
        return event.getX(pointerIndex);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getPrimaryVelocity(VelocityTracker velocityTracker, int pointerId) {
        return velocityTracker.getXVelocity(pointerId);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getMeasuredSize(View view) {
        return view.getMeasuredWidth();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getPrimarySize(RectF rect) {
        return rect.width();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getClearAllScrollOffset(View view, boolean isRtl) {
        return (isRtl ? view.getPaddingRight() : -view.getPaddingLeft()) / 2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getSecondaryDimension(View view) {
        return view.getHeight();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public FloatProperty<View> getPrimaryViewTranslate() {
        return LauncherAnimUtils.VIEW_TRANSLATE_X;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public FloatProperty<View> getSecondaryViewTranslate() {
        return LauncherAnimUtils.VIEW_TRANSLATE_Y;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void setPrimaryAndResetSecondaryTranslate(View view, float translation) {
        view.setTranslationX(translation);
        view.setTranslationY(0.0f);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getPrimaryScroll(View view) {
        return view.getScrollX();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getPrimaryScale(View view) {
        return view.getScaleX();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void setMaxScroll(AccessibilityEvent event, int maxScroll) {
        event.setMaxScrollX(maxScroll);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public boolean getRecentsRtlSetting(Resources resources) {
        return !Utilities.isRtl(resources);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getChildStart(View view) {
        return view.getLeft();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getChildStartWithTranslation(View view) {
        return view.getLeft() + view.getTranslationX();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getCenterForPage(View view, Rect insets) {
        return view.getMeasuredHeight() / 2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getScrollOffsetStart(View view, Rect insets) {
        return insets.left + view.getPaddingLeft();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getScrollOffsetEnd(View view, Rect insets) {
        return (view.getWidth() - view.getPaddingRight()) - insets.right;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public SingleAxisSwipeDetector.Direction getOppositeSwipeDirection() {
        return SingleAxisSwipeDetector.VERTICAL;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getTaskMenuWidth(View view) {
        return view.getMeasuredWidth();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getTaskMenuLayoutOrientation(boolean canRecentsActivityRotate, LinearLayout taskMenuLayout) {
        if (canRecentsActivityRotate) {
            return taskMenuLayout.getOrientation();
        }
        return 1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public PagedOrientationHandler.ChildBounds getChildBounds(View child, int childStart, int pageCenter, boolean layoutChild) {
        int measuredWidth = child.getMeasuredWidth();
        int i = childStart + measuredWidth;
        int measuredHeight = child.getMeasuredHeight();
        int i2 = pageCenter - (measuredHeight / 2);
        if (layoutChild) {
            child.layout(childStart, i2, i, i2 + measuredHeight);
        }
        return new PagedOrientationHandler.ChildBounds(measuredWidth, measuredHeight, i, i2);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getDistanceToBottomOfRect(DeviceProfile dp, Rect rect) {
        return dp.heightPx - rect.bottom;
    }
}
