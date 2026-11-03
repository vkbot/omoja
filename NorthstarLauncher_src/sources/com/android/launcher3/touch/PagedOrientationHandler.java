package com.android.launcher3.touch;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
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
import com.android.launcher3.PagedView;
import com.android.launcher3.util.OverScroller;

/* JADX INFO: loaded from: classes.dex */
public interface PagedOrientationHandler {
    public static final PagedOrientationHandler PORTRAIT = new PortraitPagedViewHandler();
    public static final Int2DAction<View> VIEW_SCROLL_BY = new Int2DAction() { // from class: com.android.launcher3.touch.PagedOrientationHandler$$ExternalSyntheticLambda0
        @Override // com.android.launcher3.touch.PagedOrientationHandler.Int2DAction
        public final void call(Object obj, int i, int i2) {
            ((View) obj).scrollBy(i, i2);
        }
    };
    public static final Int2DAction<View> VIEW_SCROLL_TO = new Int2DAction() { // from class: com.android.launcher3.touch.PagedOrientationHandler$$ExternalSyntheticLambda1
        @Override // com.android.launcher3.touch.PagedOrientationHandler.Int2DAction
        public final void call(Object obj, int i, int i2) {
            ((View) obj).scrollTo(i, i2);
        }
    };
    public static final Float2DAction<Canvas> CANVAS_TRANSLATE = new Float2DAction() { // from class: com.android.launcher3.touch.PagedOrientationHandler$$ExternalSyntheticLambda2
        @Override // com.android.launcher3.touch.PagedOrientationHandler.Float2DAction
        public final void call(Object obj, float f, float f2) {
            ((Canvas) obj).translate(f, f2);
        }
    };
    public static final Float2DAction<Matrix> MATRIX_POST_TRANSLATE = new Float2DAction() { // from class: com.android.launcher3.touch.PagedOrientationHandler$$ExternalSyntheticLambda3
        @Override // com.android.launcher3.touch.PagedOrientationHandler.Float2DAction
        public final void call(Object obj, float f, float f2) {
            ((Matrix) obj).postTranslate(f, f2);
        }
    };

    public static class CurveProperties {
        public int halfPageSize;
        public int halfScreenSize;
        public int screenCenter;
        public int scroll;
    }

    public interface Float2DAction<T> {
        void call(T target, float x, float y);
    }

    public interface Int2DAction<T> {
        void call(T target, int x, int y);
    }

    void adjustFloatingIconStartVelocity(PointF velocity);

    void delegateScrollBy(PagedView pagedView, int unboundedScroll, int x, int y);

    void delegateScrollTo(PagedView pagedView, int primaryScroll);

    void delegateScrollTo(PagedView pagedView, int secondaryScroll, int primaryScroll);

    int getCenterForPage(View view, Rect insets);

    ChildBounds getChildBounds(View child, int childStart, int pageCenter, boolean layoutChild);

    int getChildStart(View view);

    float getChildStartWithTranslation(View view);

    int getClearAllScrollOffset(View view, boolean isRtl);

    void getCurveProperties(PagedView view, Rect insets, CurveProperties out);

    float getDegreesRotated();

    int getDistanceToBottomOfRect(DeviceProfile dp, Rect rect);

    int getMeasuredSize(View view);

    SingleAxisSwipeDetector.Direction getOppositeSwipeDirection();

    float getPrimaryDirection(MotionEvent event, int pointerIndex);

    float getPrimaryScale(View view);

    int getPrimaryScroll(View view);

    float getPrimarySize(RectF rect);

    int getPrimaryTranslationDirectionFactor();

    int getPrimaryValue(int x, int y);

    float getPrimaryVelocity(VelocityTracker velocityTracker, int pointerId);

    FloatProperty<View> getPrimaryViewTranslate();

    boolean getRecentsRtlSetting(Resources resources);

    int getRotation();

    int getScrollOffsetEnd(View view, Rect insets);

    int getScrollOffsetStart(View view, Rect insets);

    int getSecondaryDimension(View view);

    int getSecondaryTranslationDirectionFactor();

    int getSecondaryValue(int x, int y);

    FloatProperty<View> getSecondaryViewTranslate();

    int getTaskDragDisplacementFactor(boolean isRtl);

    int getTaskMenuLayoutOrientation(boolean canRecentsActivityRotate, LinearLayout taskMenuLayout);

    int getTaskMenuWidth(View view);

    float getTaskMenuX(float x, View thumbnailView);

    float getTaskMenuY(float y, View thumbnailView);

    boolean isGoingUp(float displacement, boolean isRtl);

    boolean isLayoutNaturalToLauncher();

    void scrollerStartScroll(OverScroller scroller, int newPosition);

    <T> void set(T target, Float2DAction<T> action, float param);

    <T> void set(T target, Int2DAction<T> action, int param);

    void setLayoutParamsForTaskMenuOptionItem(LinearLayout.LayoutParams lp);

    void setMaxScroll(AccessibilityEvent event, int maxScroll);

    void setPrimaryAndResetSecondaryTranslate(View view, float translation);

    <T> void setSecondary(T target, Float2DAction<T> action, float param);

    public static class ChildBounds {
        public final int childPrimaryEnd;
        public final int childSecondaryEnd;
        public final int primaryDimension;
        public final int secondaryDimension;

        ChildBounds(int primaryDimension, int secondaryDimension, int childPrimaryEnd, int childSecondaryEnd) {
            this.primaryDimension = primaryDimension;
            this.secondaryDimension = secondaryDimension;
            this.childPrimaryEnd = childPrimaryEnd;
            this.childSecondaryEnd = childSecondaryEnd;
        }
    }
}
