package com.android.launcher3.dragndrop;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DropTargetBar;
import com.android.launcher3.Launcher;
import com.android.launcher3.R;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.views.BaseDragLayer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class DragLayer extends BaseDragLayer<Launcher> {
    private static final int ALPHA_CHANNEL_COUNT = 3;
    public static final int ALPHA_INDEX_LAUNCHER_LOAD = 1;
    public static final int ALPHA_INDEX_OVERLAY = 0;
    public static final int ALPHA_INDEX_TRANSITIONS = 2;
    public static final int ANIMATION_END_DISAPPEAR = 0;
    public static final int ANIMATION_END_REMAIN_VISIBLE = 2;
    private static final String TAG = "DragLayer";
    View mAnchorView;
    int mAnchorViewInitialScrollX;
    private int mChildCountOnLastUpdate;
    private DragController mDragController;
    private ValueAnimator mDropAnim;
    DragView mDropView;
    private boolean mHoverPointClosesFolder;
    private View mMoveTarget;
    private int mTopViewIndex;

    public View getAnimatedView() {
        return this.mDropView;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent ev) {
        return false;
    }

    public DragLayer(Context context, AttributeSet attrs) {
        super(context, attrs, 3);
        this.mDropAnim = null;
        this.mDropView = null;
        this.mAnchorViewInitialScrollX = 0;
        this.mAnchorView = null;
        this.mHoverPointClosesFolder = false;
        this.mChildCountOnLastUpdate = -1;
        setMotionEventSplittingEnabled(false);
        setChildrenDrawingOrderEnabled(true);
    }

    public void setup(DragController dragController, Workspace workspace) {
        this.mDragController = dragController;
        this.mMoveTarget = workspace;
        recreateControllers();
    }

    @Override // com.android.launcher3.views.BaseDragLayer
    public void recreateControllers() {
        this.mControllers = ((Launcher) this.mActivity).createTouchControllers();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        return this.mDragController.dispatchKeyEvent(event) || super.dispatchKeyEvent(event);
    }

    private boolean isEventOverAccessibleDropTargetBar(MotionEvent ev) {
        return ((Launcher) this.mActivity).getDropTargetBar() != null && isInAccessibleDrag() && isEventOverView(((Launcher) this.mActivity).getDropTargetBar(), ev);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent ev) {
        if (this.mActivity != 0 && ((Launcher) this.mActivity).getWorkspace() != null) {
            AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this.mActivity);
            if ((topOpenView instanceof Folder) && ((AccessibilityManager) getContext().getSystemService("accessibility")).isTouchExplorationEnabled()) {
                Folder folder = (Folder) topOpenView;
                int action = ev.getAction();
                if (action == 7) {
                    boolean z = isEventOverView(topOpenView, ev) || isEventOverAccessibleDropTargetBar(ev);
                    if (!z && !this.mHoverPointClosesFolder) {
                        sendTapOutsideFolderAccessibilityEvent(folder.isEditingName());
                        this.mHoverPointClosesFolder = true;
                        return true;
                    }
                    if (!z) {
                        return true;
                    }
                    this.mHoverPointClosesFolder = false;
                } else if (action == 9) {
                    if (!isEventOverView(topOpenView, ev) && !isEventOverAccessibleDropTargetBar(ev)) {
                        sendTapOutsideFolderAccessibilityEvent(folder.isEditingName());
                        this.mHoverPointClosesFolder = true;
                        return true;
                    }
                    this.mHoverPointClosesFolder = false;
                }
            }
        }
        return false;
    }

    private void sendTapOutsideFolderAccessibilityEvent(boolean isEditingName) {
        AccessibilityManagerCompat.sendCustomAccessibilityEvent(this, 8, getContext().getString(isEditingName ? R.string.folder_tap_to_rename : R.string.folder_tap_to_close));
    }

    private boolean isInAccessibleDrag() {
        return ((Launcher) this.mActivity).getAccessibilityDelegate().isInAccessibleDrag();
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup
    public boolean onRequestSendAccessibilityEvent(View child, AccessibilityEvent event) {
        if (isInAccessibleDrag() && (child instanceof DropTargetBar)) {
            return true;
        }
        return super.onRequestSendAccessibilityEvent(child, event);
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup, android.view.View
    public void addChildrenForAccessibility(ArrayList<View> childrenForAccessibility) {
        AbstractFloatingView topOpenViewWithType = AbstractFloatingView.getTopOpenViewWithType(this.mActivity, AbstractFloatingView.TYPE_ACCESSIBLE);
        if (topOpenViewWithType != null) {
            addAccessibleChildToList(topOpenViewWithType, childrenForAccessibility);
            if (!isInAccessibleDrag() || ((Launcher) this.mActivity).getDropTargetBar() == null) {
                return;
            }
            addAccessibleChildToList(((Launcher) this.mActivity).getDropTargetBar(), childrenForAccessibility);
            return;
        }
        super.addChildrenForAccessibility(childrenForAccessibility);
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View focused, int direction) {
        return super.dispatchUnhandledMove(focused, direction) || this.mMoveTarget.dispatchUnhandledMove(focused, direction);
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent ev) {
        ev.offsetLocation(getTranslationX(), 0.0f);
        try {
            return super.dispatchTouchEvent(ev);
        } finally {
            ev.offsetLocation(-getTranslationX(), 0.0f);
        }
    }

    public void animateViewIntoPosition(DragView dragView, final int[] pos, float alpha, float scaleX, float scaleY, int animationEndStyle, Runnable onFinishRunnable, int duration) {
        Rect rect = new Rect();
        getViewRectRelativeToSelf(dragView, rect);
        animateViewIntoPosition(dragView, rect.left, rect.top, pos[0], pos[1], alpha, 1.0f, 1.0f, scaleX, scaleY, onFinishRunnable, animationEndStyle, duration, null);
    }

    public void animateViewIntoPosition(DragView dragView, final View child, View anchorView) {
        animateViewIntoPosition(dragView, child, -1, anchorView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void animateViewIntoPosition(DragView dragView, final View child, int duration, View anchorView) {
        int blurSizeOutline;
        float f;
        if (!(child.getParent() instanceof ShortcutAndWidgetContainer)) {
            dragView.remove();
            return;
        }
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = (ShortcutAndWidgetContainer) child.getParent();
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) child.getLayoutParams();
        shortcutAndWidgetContainer.measureChild(child);
        shortcutAndWidgetContainer.layoutChild(child);
        Rect rect = new Rect();
        getViewRectRelativeToSelf(dragView, rect);
        int i = rect.left;
        int i2 = rect.top;
        float scaleX = child.getScaleX();
        float f2 = 1.0f - scaleX;
        float[] fArr = {layoutParams.x + ((child.getMeasuredWidth() * f2) / 2.0f), layoutParams.y + ((child.getMeasuredHeight() * f2) / 2.0f)};
        float descendantCoordRelativeToSelf = getDescendantCoordRelativeToSelf((View) child.getParent(), fArr) * scaleX;
        int iRound = Math.round(fArr[0]);
        int iRound2 = Math.round(fArr[1]);
        if (child instanceof DraggableView) {
            Rect rect2 = new Rect();
            ((DraggableView) child).getWorkspaceVisualDragBounds(rect2);
            float fWidth = ((rect2.width() * 1.0f) / (dragView.getMeasuredWidth() - dragView.getBlurSizeOutline())) * descendantCoordRelativeToSelf;
            float f3 = 1.0f - fWidth;
            float measuredWidth = (dragView.getMeasuredWidth() * f3) / 2.0f;
            float measuredHeight = (dragView.getMeasuredHeight() * f3) / 2.0f;
            iRound = (int) (iRound + (((rect2.left * descendantCoordRelativeToSelf) - ((dragView.getBlurSizeOutline() * fWidth) / 2.0f)) - measuredWidth));
            f = fWidth;
            blurSizeOutline = (int) (iRound2 + (((descendantCoordRelativeToSelf * rect2.top) - ((dragView.getBlurSizeOutline() * fWidth) / 2.0f)) - measuredHeight));
        } else {
            blurSizeOutline = iRound2;
            f = descendantCoordRelativeToSelf;
        }
        child.setVisibility(4);
        animateViewIntoPosition(dragView, i, i2, iRound, blurSizeOutline, 1.0f, 1.0f, 1.0f, f, f, new Runnable() { // from class: com.android.launcher3.dragndrop.DragLayer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                child.setVisibility(0);
            }
        }, 0, duration, anchorView);
    }

    public void animateViewIntoPosition(final DragView view, final int fromX, final int fromY, final int toX, final int toY, float finalAlpha, float initScaleX, float initScaleY, float finalScaleX, float finalScaleY, Runnable onCompleteRunnable, int animationEndStyle, int duration, View anchorView) {
        animateView(view, new Rect(fromX, fromY, view.getMeasuredWidth() + fromX, view.getMeasuredHeight() + fromY), new Rect(toX, toY, view.getMeasuredWidth() + toX, view.getMeasuredHeight() + toY), finalAlpha, initScaleX, initScaleY, finalScaleX, finalScaleY, duration, null, null, onCompleteRunnable, animationEndStyle, anchorView);
    }

    public void animateView(final DragView view, final Rect from, final Rect to, final float finalAlpha, final float initScaleX, final float initScaleY, final float finalScaleX, final float finalScaleY, int duration, final Interpolator motionInterpolator, final Interpolator alphaInterpolator, final Runnable onCompleteRunnable, final int animationEndStyle, View anchorView) {
        int iMax;
        float fHypot = (float) Math.hypot(to.left - from.left, to.top - from.top);
        Resources resources = getResources();
        float integer = resources.getInteger(R.integer.config_dropAnimMaxDist);
        if (duration < 0) {
            int integer2 = resources.getInteger(R.integer.config_dropAnimMaxDuration);
            if (fHypot < integer) {
                integer2 = (int) (integer2 * Interpolators.DEACCEL_1_5.getInterpolation(fHypot / integer));
            }
            iMax = Math.max(integer2, resources.getInteger(R.integer.config_dropAnimMinDuration));
        } else {
            iMax = duration;
        }
        Interpolator interpolator = (alphaInterpolator == null || motionInterpolator == null) ? Interpolators.DEACCEL_1_5 : null;
        final float alpha = view.getAlpha();
        final float scaleX = view.getScaleX();
        animateView(view, new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.dragndrop.DragLayer.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                float fFloatValue = ((Float) animation.getAnimatedValue()).floatValue();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                Interpolator interpolator2 = alphaInterpolator;
                float interpolation = interpolator2 == null ? fFloatValue : interpolator2.getInterpolation(fFloatValue);
                Interpolator interpolator3 = motionInterpolator;
                float interpolation2 = interpolator3 == null ? fFloatValue : interpolator3.getInterpolation(fFloatValue);
                float f = initScaleX;
                float f2 = scaleX;
                float f3 = f * f2;
                float f4 = initScaleY * f2;
                float f5 = 1.0f - fFloatValue;
                float f6 = (finalScaleX * fFloatValue) + (f3 * f5);
                float f7 = (finalScaleY * fFloatValue) + (f5 * f4);
                float f8 = (finalAlpha * interpolation) + (alpha * (1.0f - interpolation));
                float f9 = from.left + (((f3 - 1.0f) * measuredWidth) / 2.0f);
                float f10 = from.top + (((f4 - 1.0f) * measuredHeight) / 2.0f);
                int iRound = (int) (f9 + Math.round((to.left - f9) * interpolation2));
                int iRound2 = (int) (f10 + Math.round((to.top - f10) * interpolation2));
                int scrollX = (iRound - DragLayer.this.mDropView.getScrollX()) + (DragLayer.this.mAnchorView == null ? 0 : (int) (DragLayer.this.mAnchorView.getScaleX() * (DragLayer.this.mAnchorViewInitialScrollX - DragLayer.this.mAnchorView.getScrollX())));
                int scrollY = iRound2 - DragLayer.this.mDropView.getScrollY();
                DragLayer.this.mDropView.setTranslationX(scrollX);
                DragLayer.this.mDropView.setTranslationY(scrollY);
                DragLayer.this.mDropView.setScaleX(f6);
                DragLayer.this.mDropView.setScaleY(f7);
                DragLayer.this.mDropView.setAlpha(f8);
            }
        }, iMax, interpolator, onCompleteRunnable, animationEndStyle, anchorView);
    }

    public void animateView(final DragView view, ValueAnimator.AnimatorUpdateListener updateCb, int duration, TimeInterpolator interpolator, final Runnable onCompleteRunnable, final int animationEndStyle, View anchorView) {
        ValueAnimator valueAnimator = this.mDropAnim;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.mDropView = view;
        view.cancelAnimation();
        this.mDropView.requestLayout();
        if (anchorView != null) {
            this.mAnchorViewInitialScrollX = anchorView.getScrollX();
        }
        this.mAnchorView = anchorView;
        ValueAnimator valueAnimator2 = new ValueAnimator();
        this.mDropAnim = valueAnimator2;
        valueAnimator2.setInterpolator(interpolator);
        this.mDropAnim.setDuration(duration);
        this.mDropAnim.setFloatValues(0.0f, 1.0f);
        this.mDropAnim.addUpdateListener(updateCb);
        this.mDropAnim.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.dragndrop.DragLayer.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                Runnable runnable = onCompleteRunnable;
                if (runnable != null) {
                    runnable.run();
                }
                if (animationEndStyle == 0) {
                    DragLayer.this.clearAnimatedView();
                }
                DragLayer.this.mDropAnim = null;
            }
        });
        this.mDropAnim.start();
    }

    public void clearAnimatedView() {
        ValueAnimator valueAnimator = this.mDropAnim;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.mDropAnim = null;
        DragView dragView = this.mDropView;
        if (dragView != null) {
            this.mDragController.onDeferredEndDrag(dragView);
        }
        this.mDropView = null;
        invalidate();
    }

    @Override // com.android.launcher3.InsettableFrameLayout, android.view.ViewGroup
    public void onViewAdded(View child) {
        super.onViewAdded(child);
        updateChildIndices();
        ((Launcher) this.mActivity).onDragLayerHierarchyChanged();
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup
    public void onViewRemoved(View child) {
        super.onViewRemoved(child);
        updateChildIndices();
        ((Launcher) this.mActivity).onDragLayerHierarchyChanged();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void bringChildToFront(View child) {
        super.bringChildToFront(child);
        updateChildIndices();
    }

    private void updateChildIndices() {
        this.mTopViewIndex = -1;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (getChildAt(i) instanceof DragView) {
                this.mTopViewIndex = i;
            }
        }
        this.mChildCountOnLastUpdate = childCount;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int childCount, int i) {
        if (this.mChildCountOnLastUpdate != childCount) {
            updateChildIndices();
        }
        int i2 = this.mTopViewIndex;
        if (i2 == -1) {
            return i;
        }
        if (i == childCount - 1) {
            return i2;
        }
        return i < i2 ? i : i + 1;
    }
}
