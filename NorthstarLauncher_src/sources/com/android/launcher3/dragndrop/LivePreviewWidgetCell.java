package com.android.launcher3.dragndrop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RemoteViews;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.icons.BitmapRenderer;
import com.android.launcher3.widget.WidgetCell;

/* JADX INFO: loaded from: classes.dex */
public class LivePreviewWidgetCell extends WidgetCell {
    private RemoteViews mPreview;

    public void setPreview(RemoteViews view) {
        this.mPreview = view;
    }

    public LivePreviewWidgetCell(Context context) {
        this(context, null);
    }

    public LivePreviewWidgetCell(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public LivePreviewWidgetCell(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // com.android.launcher3.widget.WidgetCell
    public void ensurePreview() {
        Bitmap bitmapGenerateFromRemoteViews;
        if (this.mPreview != null && this.mActiveRequest == null && (bitmapGenerateFromRemoteViews = generateFromRemoteViews(this.mActivity, this.mPreview, this.mItem.widgetInfo, this.mPresetPreviewSize, new int[1])) != null) {
            applyPreview(bitmapGenerateFromRemoteViews);
        } else {
            super.ensurePreview();
        }
    }

    public static Bitmap generateFromRemoteViews(BaseActivity activity, RemoteViews views, LauncherAppWidgetProviderInfo info, int previewSize, int[] preScaledWidthOut) {
        final float f;
        DeviceProfile deviceProfile = activity.getDeviceProfile();
        int i = deviceProfile.cellWidthPx * info.spanX;
        int i2 = deviceProfile.cellHeightPx * info.spanY;
        try {
            final View viewApply = views.apply(activity, new FrameLayout(activity));
            viewApply.measure(View.MeasureSpec.makeMeasureSpec(i, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(i2, BasicMeasure.EXACTLY));
            int measuredWidth = viewApply.getMeasuredWidth();
            int measuredHeight = viewApply.getMeasuredHeight();
            viewApply.layout(0, 0, measuredWidth, measuredHeight);
            preScaledWidthOut[0] = measuredWidth;
            if (measuredWidth > previewSize) {
                f = previewSize / measuredWidth;
                measuredHeight = (int) (measuredHeight * f);
            } else {
                f = 1.0f;
                previewSize = measuredWidth;
            }
            return BitmapRenderer.createSoftwareBitmap(previewSize, measuredHeight, new BitmapRenderer() { // from class: com.android.launcher3.dragndrop.LivePreviewWidgetCell$$ExternalSyntheticLambda0
                @Override // com.android.launcher3.icons.BitmapRenderer
                public final void draw(Canvas canvas) {
                    LivePreviewWidgetCell.lambda$generateFromRemoteViews$0(f, viewApply, canvas);
                }
            });
        } catch (Exception unused) {
            return null;
        }
    }

    static /* synthetic */ void lambda$generateFromRemoteViews$0(float f, View view, Canvas canvas) {
        canvas.scale(f, f);
        view.draw(canvas);
    }
}
