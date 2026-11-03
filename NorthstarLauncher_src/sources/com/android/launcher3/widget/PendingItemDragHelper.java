package com.android.launcher3.widget;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.widget.RemoteViews;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DragSource;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.R;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.dragndrop.LivePreviewWidgetCell;
import com.android.launcher3.graphics.DragPreviewProvider;
import com.android.launcher3.icons.LauncherIcons;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class PendingItemDragHelper extends DragPreviewProvider {
    private static final float MAX_WIDGET_SCALE = 1.25f;
    private static final String TAG = "PendingItemDragHelper";
    private final PendingAddItemInfo mAddInfo;
    private int[] mEstimatedCellSize;
    private RemoteViews mPreview;

    public void setPreview(RemoteViews preview) {
        this.mPreview = preview;
    }

    public PendingItemDragHelper(View view) {
        super(view);
        this.mAddInfo = (PendingAddItemInfo) view.getTag();
    }

    public void startDrag(Rect previewBounds, int previewBitmapWidth, int previewViewWidth, Point screenPos, DragSource source, DragOptions options) {
        startDrag(previewBounds, previewBitmapWidth, previewViewWidth, screenPos, source, options, null);
    }

    public void startDrag(Rect previewBounds, int previewBitmapWidth, int previewViewWidth, Point screenPos, DragSource source, DragOptions options, Bitmap preview) {
        Bitmap bitmapCreateScaledBitmapWithoutShadow;
        Point point;
        float f;
        DraggableView draggableViewOfType;
        Rect rect;
        Bitmap bitmap;
        Bitmap bitmapGenerateFromRemoteViews;
        boolean z;
        int i;
        int width = previewBitmapWidth;
        MLog.d(TAG, "startDrag: previewBounds=" + previewBounds + " previewBitmapWidth=" + width + " previewViewWidth=" + previewViewWidth + " screenPos=" + screenPos + " source=" + source + " options=" + options);
        Launcher launcher = Launcher.getLauncher(this.mView.getContext());
        LauncherAppState launcherAppState = LauncherAppState.getInstance(launcher);
        int[] iArrEstimateItemSize = launcher.getWorkspace().estimateItemSize(this.mAddInfo);
        this.mEstimatedCellSize = iArrEstimateItemSize;
        PendingAddItemInfo pendingAddItemInfo = this.mAddInfo;
        if (pendingAddItemInfo instanceof PendingAddWidgetInfo) {
            PendingAddWidgetInfo pendingAddWidgetInfo = (PendingAddWidgetInfo) pendingAddItemInfo;
            int iMin = Math.min((int) (width * MAX_WIDGET_SCALE), iArrEstimateItemSize[0]);
            int[] iArr = new int[1];
            RemoteViews remoteViews = this.mPreview;
            if (remoteViews != null) {
                bitmapGenerateFromRemoteViews = LivePreviewWidgetCell.generateFromRemoteViews(launcher, remoteViews, pendingAddWidgetInfo.info, iMin, iArr);
                z = true;
            } else {
                bitmapGenerateFromRemoteViews = preview;
                z = false;
            }
            if (bitmapGenerateFromRemoteViews == null) {
                bitmapGenerateFromRemoteViews = (Bitmap) launcherAppState.getWidgetCache().generateWidgetPreview(launcher, pendingAddWidgetInfo.info, iMin, null, iArr).first;
                z = true;
            }
            if (z && (i = iArr[0]) < width) {
                int i2 = (width - i) / 2;
                if (width > previewViewWidth) {
                    i2 = (i2 * previewViewWidth) / width;
                }
                previewBounds.left += i2;
                previewBounds.right -= i2;
            }
            float fWidth = previewBounds.width() / bitmapGenerateFromRemoteViews.getWidth();
            launcher.getDragController().addDragListener(new WidgetHostViewLoader(launcher, this.mView));
            f = fWidth;
            draggableViewOfType = DraggableView.ofType(1);
            rect = null;
            bitmap = bitmapGenerateFromRemoteViews;
            point = null;
        } else {
            PendingAddShortcutInfo pendingAddShortcutInfo = (PendingAddShortcutInfo) pendingAddItemInfo;
            if (preview == null) {
                LauncherIcons launcherIconsObtain = LauncherIcons.obtain(launcher);
                if (pendingAddShortcutInfo.activityInfo != null) {
                    bitmapCreateScaledBitmapWithoutShadow = launcherIconsObtain.createScaledBitmapWithoutShadow(pendingAddShortcutInfo.activityInfo.getFullResIcon(launcherAppState.getIconCache()), 0);
                } else {
                    bitmapCreateScaledBitmapWithoutShadow = pendingAddShortcutInfo.appInfo != null ? pendingAddShortcutInfo.appInfo.bitmap.icon : preview;
                }
                if (bitmapCreateScaledBitmapWithoutShadow != null) {
                    width = bitmapCreateScaledBitmapWithoutShadow.getWidth();
                }
                launcherIconsObtain.recycle();
            } else {
                bitmapCreateScaledBitmapWithoutShadow = preview;
            }
            float f2 = (previewViewWidth * 1.0f) / width;
            Point point2 = new Point(this.previewPadding / 2, this.previewPadding / 2);
            DeviceProfile deviceProfile = launcher.getDeviceProfile();
            int i3 = deviceProfile.iconSizePx;
            int dimensionPixelSize = launcher.getResources().getDimensionPixelSize(R.dimen.widget_preview_shortcut_padding);
            previewBounds.left += dimensionPixelSize;
            previewBounds.top += dimensionPixelSize;
            Rect rect2 = new Rect();
            rect2.left = (this.mEstimatedCellSize[0] - i3) / 2;
            rect2.right = rect2.left + i3;
            rect2.top = (((this.mEstimatedCellSize[1] - i3) - deviceProfile.iconTextSizePx) - deviceProfile.iconDrawablePaddingPx) / 2;
            rect2.bottom = rect2.top + i3;
            point = point2;
            f = f2;
            draggableViewOfType = DraggableView.ofType(0);
            rect = rect2;
            bitmap = bitmapCreateScaledBitmapWithoutShadow;
        }
        launcher.getWorkspace().prepareDragWithProvider(this);
        launcher.getDragController().startDrag(bitmap, draggableViewOfType, screenPos.x + previewBounds.left + ((int) (((bitmap.getWidth() * f) - bitmap.getWidth()) / 2.0f)), screenPos.y + previewBounds.top + ((int) (((bitmap.getHeight() * f) - bitmap.getHeight()) / 2.0f)), source, this.mAddInfo, point, rect, f, f, options);
    }

    @Override // com.android.launcher3.graphics.DragPreviewProvider
    protected Bitmap convertPreviewToAlphaBitmap(Bitmap preview) {
        int[] iArr;
        if ((this.mAddInfo instanceof PendingAddShortcutInfo) || (iArr = this.mEstimatedCellSize) == null) {
            return super.convertPreviewToAlphaBitmap(preview);
        }
        int i = iArr[0];
        int i2 = iArr[1];
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ALPHA_8);
        Rect rect = new Rect(0, 0, preview.getWidth(), preview.getHeight());
        float fMin = Math.min((i - this.blurSizeOutline) / preview.getWidth(), (i2 - this.blurSizeOutline) / preview.getHeight());
        int width = (int) (preview.getWidth() * fMin);
        int height = (int) (fMin * preview.getHeight());
        Rect rect2 = new Rect(0, 0, width, height);
        rect2.offset((i - width) / 2, (i2 - height) / 2);
        new Canvas(bitmapCreateBitmap).drawBitmap(preview, rect, rect2, new Paint(2));
        return bitmapCreateBitmap;
    }
}
