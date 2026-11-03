package com.android.launcher3.widget;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherApplication;
import com.android.launcher3.R;
import com.android.launcher3.WidgetPreviewLoader;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.util.BitmapSaveUtils;
import com.android.launcher3.util.LinkManagerKt;
import com.mega.launcher.model.AppIcon;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Function;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class TableWidgetCell extends WidgetCell implements View.OnLayoutChangeListener, IconCache.ItemInfoUpdateReceiver {
    private static final boolean DEBUG = false;
    private static final String TAG = "TableWidgetCell";

    public TableWidgetCell(Context context) {
        this(context, null);
    }

    public TableWidgetCell(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public TableWidgetCell(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // com.android.launcher3.widget.WidgetCell
    protected void setContainerWidth() {
        this.mCellSize = (int) (this.mDeviceProfile.allAppsIconSizePx * 3.0f);
        this.mPresetPreviewSize = (int) (this.mCellSize * 1.0f);
    }

    @Override // com.android.launcher3.widget.WidgetCell
    public void clear() {
        this.mWidgetImage.animate().cancel();
        this.mWidgetImage.setBitmap(null, null);
        this.mWidgetName.setText((CharSequence) null);
        if (this.mActiveRequest != null) {
            this.mActiveRequest.cancel();
            this.mActiveRequest = null;
        }
    }

    @Override // com.android.launcher3.widget.WidgetCell
    public void applyFromCellItem(WidgetItem item, WidgetPreviewLoader loader) {
        this.mItem = item;
        if (this.mItem.appInfo != null) {
            this.mWidgetName.setText(this.mItem.appInfo.title);
        } else {
            this.mWidgetName.setText(this.mItem.label);
        }
        this.mWidgetPreviewLoader = loader;
        if (item.activityInfo != null) {
            setTag(new PendingAddShortcutInfo(item.activityInfo));
        } else if (item.appInfo != null) {
            setTag(new PendingAddShortcutInfo(item.appInfo));
        } else {
            setTag(new PendingAddWidgetInfo(item.widgetInfo));
        }
    }

    @Override // com.android.launcher3.widget.WidgetCell
    public void setApplyBitmapDeferred(boolean isDeferred) {
        if (this.mApplyBitmapDeferred != isDeferred) {
            this.mApplyBitmapDeferred = isDeferred;
            if (this.mApplyBitmapDeferred || this.mDeferredBitmap == null) {
                return;
            }
            applyPreview(this.mDeferredBitmap);
            this.mDeferredBitmap = null;
        }
    }

    @Override // com.android.launcher3.widget.WidgetCell
    public void setAnimatePreview(boolean shouldAnimate) {
        this.mAnimatePreview = shouldAnimate;
    }

    @Override // com.android.launcher3.widget.WidgetCell
    public void applyPreview(Bitmap bitmap) {
        String packageName = getPackageName();
        if (Objects.equals(packageName, "com.mega.androidauto")) {
            boolean zIsAndroidAutoConnected = LinkManagerKt.getLinkManager(LauncherApplication.get()).isAndroidAutoConnected();
            MLog.d(TAG, "applyPreview: " + packageName + " connected=" + zIsAndroidAutoConnected);
            bitmap = BitmapSaveUtils.drawableToBitmap(AppIcon.getInstance().getAndroidAutoIcon(getContext(), zIsAndroidAutoConnected));
        }
        if (Objects.equals(packageName, "com.mega.carplay")) {
            boolean zIsCarPlayConnected = LinkManagerKt.getLinkManager(LauncherApplication.get()).isCarPlayConnected();
            MLog.d(TAG, "applyPreview: " + packageName + " connected=" + zIsCarPlayConnected);
            bitmap = BitmapSaveUtils.drawableToBitmap(AppIcon.getInstance().getCarPlayIcon(getContext(), zIsCarPlayConnected));
        }
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

    @Override // com.android.launcher3.widget.WidgetCell
    public void ensurePreview() {
        if (this.mActiveRequest == null || isLinkPackageName()) {
            if (this.mWidgetImage.getWidth() == 0) {
                this.mPresetPreviewSize = getResources().getDimensionPixelSize(R.dimen.widget_icon_width_1x1);
            } else {
                this.mPresetPreviewSize = this.mWidgetImage.getWidth();
            }
            if (this.mItem.appInfo != null && this.mItem.appInfo.bitmap.icon.getHeight() <= 1 && !isLinkPackageName()) {
                MLog.d(TAG, "ensurePreview: mItem.appInfo = " + ((Object) this.mItem.appInfo.title));
                LauncherAppState.getInstance(getContext()).getIconCache().updateIconInBackground(this, this.mItem.appInfo);
            } else {
                this.mActiveRequest = this.mWidgetPreviewLoader.getPreview(this.mItem, this.mPresetPreviewSize, this.mPresetPreviewSize, this);
            }
        }
    }

    @Override // com.android.launcher3.widget.WidgetCell, android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams params) {
        super.setLayoutParams(params);
    }

    @Override // com.android.launcher3.widget.WidgetCell, android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return TableWidgetCell.class.getName();
    }

    @Override // com.android.launcher3.icons.IconCache.ItemInfoUpdateReceiver
    public void reapplyItemInfo(ItemInfoWithIcon info) {
        applyPreview(info.bitmap.icon);
    }

    private boolean isLinkPackageName() {
        String packageName = getPackageName();
        return Objects.equals(packageName, "com.mega.carplay") || Objects.equals(packageName, "com.mega.androidauto");
    }

    private String getPackageName() {
        return (String) Optional.ofNullable(this.mItem).map(new Function() { // from class: com.android.launcher3.widget.TableWidgetCell$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((WidgetItem) obj).appInfo;
            }
        }).map(new Function() { // from class: com.android.launcher3.widget.TableWidgetCell$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((AppInfo) obj).getTargetComponent();
            }
        }).map(new Function() { // from class: com.android.launcher3.widget.TableWidgetCell$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ComponentName) obj).getPackageName();
            }
        }).orElse(null);
    }
}
