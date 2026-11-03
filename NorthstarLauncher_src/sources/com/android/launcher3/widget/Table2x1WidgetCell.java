package com.android.launcher3.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public class Table2x1WidgetCell extends TableWidgetCell {
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        return true;
    }

    public Table2x1WidgetCell(Context context) {
        super(context);
    }

    public Table2x1WidgetCell(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public Table2x1WidgetCell(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override // com.android.launcher3.widget.TableWidgetCell, com.android.launcher3.widget.WidgetCell
    public void ensurePreview() {
        if (this.mActiveRequest != null) {
            return;
        }
        if (this.mWidgetImage.getWidth() == 0) {
            this.mPresetPreviewSize = getResources().getDimensionPixelSize(R.dimen.widget_icon_width_2x1);
        } else {
            this.mPresetPreviewSize = this.mWidgetImage.getWidth();
        }
        this.mActiveRequest = this.mWidgetPreviewLoader.getPreview(this.mItem, this.mPresetPreviewSize, this.mPresetPreviewSize, this);
    }
}
