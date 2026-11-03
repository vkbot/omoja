package com.android.launcher3.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.CancellationSignal;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.R;
import com.android.launcher3.WidgetPreviewLoader;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.views.LiveWidgetContainer;

/* JADX INFO: loaded from: classes.dex */
public class WidgetCell extends LinearLayout implements View.OnLayoutChangeListener {
    private static final boolean DEBUG = false;
    protected static final int FADE_IN_DURATION_MS = 90;
    protected static final float PREVIEW_SCALE = 1.0f;
    private static final String TAG = "WidgetCell";
    protected static final float WIDTH_SCALE = 3.0f;
    protected CancellationSignal mActiveRequest;
    protected final BaseActivity mActivity;
    protected boolean mAnimatePreview;
    protected boolean mApplyBitmapDeferred;
    protected int mCellSize;
    protected Bitmap mDeferredBitmap;
    protected final DeviceProfile mDeviceProfile;
    protected WidgetItem mItem;
    protected LiveWidgetContainer mLiveWidgetContainer;
    protected final CheckLongPressHelper mLongPressHelper;
    protected int mPresetPreviewSize;
    protected TextView mWidgetDims;
    protected WidgetImageView mWidgetImage;
    protected TextView mWidgetName;
    protected WidgetPreviewLoader mWidgetPreviewLoader;

    public LiveWidgetContainer getLiveWidgetContainer() {
        return this.mLiveWidgetContainer;
    }

    public WidgetImageView getWidgetView() {
        return this.mWidgetImage;
    }

    public void setAnimatePreview(boolean shouldAnimate) {
        this.mAnimatePreview = shouldAnimate;
    }

    public WidgetCell(Context context) {
        this(context, null);
    }

    public WidgetCell(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WidgetCell(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mAnimatePreview = true;
        this.mApplyBitmapDeferred = false;
        BaseActivity baseActivityFromContext = BaseActivity.fromContext(context);
        this.mActivity = baseActivityFromContext;
        this.mDeviceProfile = baseActivityFromContext.getDeviceProfile();
        CheckLongPressHelper checkLongPressHelper = new CheckLongPressHelper(this);
        this.mLongPressHelper = checkLongPressHelper;
        checkLongPressHelper.setLongPressTimeoutFactor(1.0f);
        setContainerWidth();
        setWillNotDraw(false);
        setClipToPadding(false);
        setAccessibilityDelegate(baseActivityFromContext.getAccessibilityDelegate());
    }

    protected void setContainerWidth() {
        int i = (int) (this.mDeviceProfile.allAppsIconSizePx * 3.0f);
        this.mCellSize = i;
        this.mPresetPreviewSize = (int) (i * 1.0f);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mWidgetImage = (WidgetImageView) findViewById(R.id.widget_preview);
        this.mWidgetName = (TextView) findViewById(R.id.widget_name);
        this.mWidgetDims = (TextView) findViewById(R.id.widget_dims);
        this.mLiveWidgetContainer = (LiveWidgetContainer) findViewById(R.id.live_widget_container);
    }

    public void clear() {
        this.mWidgetImage.animate().cancel();
        this.mWidgetImage.setBitmap(null, null);
        this.mWidgetName.setText((CharSequence) null);
        this.mWidgetDims.setText((CharSequence) null);
        CancellationSignal cancellationSignal = this.mActiveRequest;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
            this.mActiveRequest = null;
        }
    }

    public void applyFromCellItem(WidgetItem item, WidgetPreviewLoader loader) {
        this.mItem = item;
        this.mWidgetName.setText(item.label);
        this.mWidgetDims.setText(getContext().getString(R.string.widget_dims_format, Integer.valueOf(this.mItem.spanX), Integer.valueOf(this.mItem.spanY)));
        this.mWidgetDims.setContentDescription(getContext().getString(R.string.widget_accessible_dims_format, Integer.valueOf(this.mItem.spanX), Integer.valueOf(this.mItem.spanY)));
        this.mWidgetPreviewLoader = loader;
        if (item.activityInfo != null) {
            setTag(new PendingAddShortcutInfo(item.activityInfo));
        } else if (item.appInfo != null) {
            setTag(new PendingAddShortcutInfo(item.appInfo));
        } else {
            setTag(new PendingAddWidgetInfo(item.widgetInfo));
        }
    }

    public void setApplyBitmapDeferred(boolean isDeferred) {
        Bitmap bitmap;
        if (this.mApplyBitmapDeferred != isDeferred) {
            this.mApplyBitmapDeferred = isDeferred;
            if (isDeferred || (bitmap = this.mDeferredBitmap) == null) {
                return;
            }
            applyPreview(bitmap);
            this.mDeferredBitmap = null;
        }
    }

    public void applyPreview(Bitmap bitmap) {
        if (this.mApplyBitmapDeferred) {
            this.mDeferredBitmap = bitmap;
            return;
        }
        if (bitmap != null) {
            this.mWidgetImage.setBitmap(bitmap, this.mWidgetPreviewLoader.getBadgeForUser(this.mItem.user, BaseIconFactory.getBadgeSizeForIconSize(this.mDeviceProfile.allAppsIconSizePx)));
            if (this.mAnimatePreview) {
                this.mWidgetImage.setAlpha(0.0f);
                this.mWidgetImage.animate().alpha(1.0f).setDuration(90L);
            } else {
                this.mWidgetImage.setAlpha(1.0f);
            }
        }
    }

    public void ensurePreview() {
        if (this.mActiveRequest != null) {
            return;
        }
        WidgetPreviewLoader widgetPreviewLoader = this.mWidgetPreviewLoader;
        WidgetItem widgetItem = this.mItem;
        int i = this.mPresetPreviewSize;
        this.mActiveRequest = widgetPreviewLoader.getPreview(widgetItem, i, i, this);
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        removeOnLayoutChangeListener(this);
        ensurePreview();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        super.onTouchEvent(ev);
        this.mLongPressHelper.onTouchEvent(ev);
        return true;
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    private String getTagToString() {
        return ((getTag() instanceof PendingAddWidgetInfo) || (getTag() instanceof PendingAddShortcutInfo)) ? getTag().toString() : "";
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams params) {
        int i = this.mCellSize;
        params.height = i;
        params.width = i;
        super.setLayoutParams(params);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return WidgetCell.class.getName();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.removeAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
    }
}
