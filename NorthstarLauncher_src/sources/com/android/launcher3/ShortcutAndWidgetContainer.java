package com.android.launcher3;

import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class ShortcutAndWidgetContainer extends ViewGroup {
    static final String TAG = "ShortcutAndWidgetContainer";
    private ActivityContext mActivity;
    private int mCellHeight;
    private int mCellWidth;
    private final int mContainerType;
    private boolean mInvertIfRtl;
    private GridOccupancy mOccupied;
    private final int[] mTmpCellXY;
    private final WallpaperManager mWallpaperManager;

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int index) {
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
    }

    public void setCellDimensions(int cellWidth, int cellHeight, GridOccupancy occupied) {
        this.mCellWidth = cellWidth;
        this.mCellHeight = cellHeight;
        this.mOccupied = occupied;
    }

    public void setInvertIfRtl(boolean invert) {
        this.mInvertIfRtl = invert;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ShortcutAndWidgetContainer(Context context, int containerType) {
        super(context);
        this.mTmpCellXY = new int[2];
        this.mInvertIfRtl = false;
        this.mActivity = ActivityContext.lookupContext(context);
        this.mWallpaperManager = WallpaperManager.getInstance(context);
        this.mContainerType = containerType;
    }

    public View getChildAt(int x, int y) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) childAt.getLayoutParams();
            if (layoutParams.cellX <= x && x < layoutParams.cellX + layoutParams.cellHSpan && layoutParams.cellY <= y && y < layoutParams.cellY + layoutParams.cellVSpan) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int childCount = getChildCount();
        View.MeasureSpec.getSize(widthMeasureSpec);
        setMeasuredDimension(this.mCellWidth * this.mOccupied.mCurrentCountX, View.MeasureSpec.getSize(heightMeasureSpec));
        MLog.d(TAG, "onMeasure: count = " + childCount + ", getMeasuredWidth = " + getMeasuredWidth());
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt);
            }
        }
    }

    public void setupLp(View child) {
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) child.getLayoutParams();
        if (child instanceof LauncherAppWidgetHostView) {
            DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
            layoutParams.setup(this.mCellWidth, this.mCellHeight, invertLayoutHorizontally(), this.mOccupied.mCurrentCountX, deviceProfile.appWidgetScale.x, deviceProfile.appWidgetScale.y);
        } else {
            layoutParams.setup(this.mCellWidth, this.mCellHeight, invertLayoutHorizontally(), this.mOccupied.mCurrentCountX);
        }
    }

    public int getCellContentHeight() {
        return Math.min(getMeasuredHeight(), this.mActivity.getDeviceProfile().getCellHeight(this.mContainerType));
    }

    public void measureChild(View child) {
        int i;
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) child.getLayoutParams();
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        if (child instanceof LauncherAppWidgetHostView) {
            layoutParams.setup(this.mCellWidth, this.mCellHeight, invertLayoutHorizontally(), this.mOccupied.mCurrentCountX, deviceProfile.appWidgetScale.x, deviceProfile.appWidgetScale.y);
        } else {
            layoutParams.setup(this.mCellWidth, this.mCellHeight, invertLayoutHorizontally(), this.mOccupied.mCurrentCountX);
            int iMax = (int) Math.max(0.0f, (layoutParams.height - getCellContentHeight()) / 2.0f);
            if (this.mContainerType == 0) {
                i = deviceProfile.workspaceCellPaddingXPx;
            } else {
                i = (int) (deviceProfile.edgeMarginPx / 2.0f);
            }
            child.setPadding(i, iMax, i, 0);
        }
        child.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(layoutParams.height, BasicMeasure.EXACTLY));
    }

    public boolean invertLayoutHorizontally() {
        return this.mInvertIfRtl && Utilities.isRtl(getResources());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                layoutChild(childAt);
            }
        }
    }

    public void layoutChild(View child) {
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) child.getLayoutParams();
        if (child instanceof LauncherAppWidgetHostView) {
            LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView) child;
            DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
            float f = deviceProfile.appWidgetScale.x;
            float f2 = deviceProfile.appWidgetScale.y;
            launcherAppWidgetHostView.setScaleToFit(Math.min(f, f2));
            launcherAppWidgetHostView.setTranslationForCentering((-(layoutParams.width - (layoutParams.width * f))) / 2.0f, (-(layoutParams.height - (layoutParams.height * f2))) / 2.0f);
        }
        int i = layoutParams.x;
        int i2 = layoutParams.y;
        child.layout(i, i2, layoutParams.width + i, layoutParams.height + i2);
        if (layoutParams.dropped) {
            layoutParams.dropped = false;
            int[] iArr = this.mTmpCellXY;
            getLocationOnScreen(iArr);
            this.mWallpaperManager.sendWallpaperCommand(getWindowToken(), "android.home.drop", iArr[0] + i + (layoutParams.width / 2), iArr[1] + i2 + (layoutParams.height / 2), 0, null);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (ev.getAction() == 0 && getAlpha() == 0.0f) {
            return true;
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View child, View focused) {
        super.requestChildFocus(child, focused);
        if (child != null) {
            Rect rect = new Rect();
            child.getDrawingRect(rect);
            requestRectangleOnScreen(rect);
        }
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).cancelLongPress();
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        this.mOccupied.mCurrentCountX = 0;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        this.mOccupied.mCurrentCountX = 0;
    }

    @Override // android.view.ViewGroup
    public void removeViews(int start, int count) {
        super.removeViews(start, count);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int start, int count) {
        super.removeViewsInLayout(start, count);
    }
}
