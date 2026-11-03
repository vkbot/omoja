package com.android.launcher3;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.android.launcher3.anim.AlphaUpdateListener;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class DropTargetBar extends FrameLayout implements DragController.DragListener, Insettable {
    protected static final int DEFAULT_DRAG_FADE_DURATION = 175;
    protected static final TimeInterpolator DEFAULT_INTERPOLATOR = Interpolators.ACCEL;
    private static final String TAG = "DropTargetBar";
    private ViewPropertyAnimator mCurrentAnimation;

    @ViewDebug.ExportedProperty(category = "launcher")
    protected boolean mDeferOnDragEnd;
    private ButtonDropTarget[] mDropTargets;
    private final Runnable mFadeAnimationEndRunnable;
    private boolean mIsVertical;

    @ViewDebug.ExportedProperty(category = "launcher")
    protected boolean mVisible;

    protected void deferOnDragEnd() {
        this.mDeferOnDragEnd = true;
    }

    public ButtonDropTarget[] getDropTargets() {
        return this.mDropTargets;
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect insets) {
    }

    /* JADX INFO: renamed from: lambda$new$0$com-android-launcher3-DropTargetBar, reason: not valid java name */
    /* synthetic */ void m20lambda$new$0$comandroidlauncher3DropTargetBar() {
        AlphaUpdateListener.updateVisibility(this);
    }

    public DropTargetBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mFadeAnimationEndRunnable = new Runnable() { // from class: com.android.launcher3.DropTargetBar$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m20lambda$new$0$comandroidlauncher3DropTargetBar();
            }
        };
        this.mVisible = false;
        this.mIsVertical = true;
    }

    public DropTargetBar(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mFadeAnimationEndRunnable = new Runnable() { // from class: com.android.launcher3.DropTargetBar$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m20lambda$new$0$comandroidlauncher3DropTargetBar();
            }
        };
        this.mVisible = false;
        this.mIsVertical = true;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mDropTargets = new ButtonDropTarget[getChildCount()];
        int i = 0;
        while (true) {
            ButtonDropTarget[] buttonDropTargetArr = this.mDropTargets;
            if (i < buttonDropTargetArr.length) {
                buttonDropTargetArr[i] = (ButtonDropTarget) getChildAt(i);
                this.mDropTargets[i].setDropTargetBar(this);
                i++;
            } else {
                setBackgroundResource(R.mipmap.bg_drop_target);
                return;
            }
        }
    }

    public void setup(DragController dragController) {
        dragController.addDragListener(this);
        int i = 0;
        while (true) {
            ButtonDropTarget[] buttonDropTargetArr = this.mDropTargets;
            if (i >= buttonDropTargetArr.length) {
                return;
            }
            dragController.addDragListener(buttonDropTargetArr[i]);
            dragController.addDropTarget(this.mDropTargets[i]);
            i++;
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        if (this.mIsVertical) {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, BasicMeasure.EXACTLY);
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2, Integer.MIN_VALUE);
            for (ButtonDropTarget buttonDropTarget : this.mDropTargets) {
                if (buttonDropTarget.getVisibility() != 8) {
                    buttonDropTarget.setTextVisible(false);
                    buttonDropTarget.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                }
            }
        } else {
            int visibleButtonsCount = size / getVisibleButtonsCount();
            boolean z = true;
            for (ButtonDropTarget buttonDropTarget2 : this.mDropTargets) {
                if (buttonDropTarget2.getVisibility() != 8) {
                    z = z && !buttonDropTarget2.isTextTruncated(visibleButtonsCount);
                }
            }
            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(visibleButtonsCount, Integer.MIN_VALUE);
            int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(size2, BasicMeasure.EXACTLY);
            for (ButtonDropTarget buttonDropTarget3 : this.mDropTargets) {
                if (buttonDropTarget3.getVisibility() != 8) {
                    buttonDropTarget3.setTextVisible(z);
                    buttonDropTarget3.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
                }
            }
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        if (this.mIsVertical) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.drop_target_vertical_gap);
            int i = dimensionPixelSize;
            for (ButtonDropTarget buttonDropTarget : this.mDropTargets) {
                if (buttonDropTarget.getVisibility() != 8) {
                    int measuredHeight = buttonDropTarget.getMeasuredHeight() + i;
                    buttonDropTarget.layout(0, i, buttonDropTarget.getMeasuredWidth(), measuredHeight);
                    i = measuredHeight + dimensionPixelSize;
                }
            }
            return;
        }
        int visibleButtonsCount = (right - left) / getVisibleButtonsCount();
        int i2 = visibleButtonsCount / 2;
        for (ButtonDropTarget buttonDropTarget2 : this.mDropTargets) {
            if (buttonDropTarget2.getVisibility() != 8) {
                int measuredWidth = buttonDropTarget2.getMeasuredWidth() / 2;
                buttonDropTarget2.layout(i2 - measuredWidth, 0, measuredWidth + i2, buttonDropTarget2.getMeasuredHeight());
                i2 += visibleButtonsCount;
            }
        }
    }

    private int getVisibleButtonsCount() {
        int i = 0;
        for (ButtonDropTarget buttonDropTarget : this.mDropTargets) {
            if (buttonDropTarget.getVisibility() != 8) {
                i++;
            }
        }
        return i;
    }

    public void animateToVisibility(boolean isVisible) {
        if (this.mVisible != isVisible) {
            this.mVisible = isVisible;
            ViewPropertyAnimator viewPropertyAnimator = this.mCurrentAnimation;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                this.mCurrentAnimation = null;
            }
            float f = this.mVisible ? 1.0f : 0.0f;
            if (Float.compare(getAlpha(), f) != 0) {
                setVisibility(0);
                this.mCurrentAnimation = animate().alpha(f).setInterpolator(DEFAULT_INTERPOLATOR).setDuration(175L).withEndAction(this.mFadeAnimationEndRunnable);
            }
        }
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions options) {
        MLog.d(TAG, "onDragStart() called with: dragObject = [" + dragObject + "], options = [" + options + "]");
        if (Launcher.getLauncher(getContext()).getStateManager().isInWidgetEditState()) {
            return;
        }
        animateToVisibility(true);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        if (Launcher.getLauncher(getContext()).getStateManager().isInWidgetEditState()) {
            return;
        }
        if (this.mDeferOnDragEnd) {
            this.mDeferOnDragEnd = false;
        } else {
            animateToVisibility(false);
        }
    }
}
