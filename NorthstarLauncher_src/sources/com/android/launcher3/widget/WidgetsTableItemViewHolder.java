package com.android.launcher3.widget;

import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.R;
import com.android.launcher3.views.ShakeRelativeLayout;

/* JADX INFO: loaded from: classes.dex */
public class WidgetsTableItemViewHolder extends RecyclerView.ViewHolder {
    public ViewGroup liveWidgetContainer;
    public ShakeRelativeLayout shakeHolder;
    public ImageView widgetAddBadge;
    public WidgetCell widgetCell;
    TextView widgetName;
    WidgetImageView widgetPreview;

    public WidgetsTableItemViewHolder(ViewGroup v) {
        super(v);
        this.shakeHolder = (ShakeRelativeLayout) v;
        this.widgetCell = (WidgetCell) v.findViewById(R.id.widget_cell);
        this.widgetAddBadge = (ImageView) v.findViewById(R.id.iv_widget_add_badge);
        this.widgetName = (TextView) v.findViewById(R.id.widget_name);
        this.widgetPreview = (WidgetImageView) v.findViewById(R.id.widget_preview);
        this.widgetName.setAccessibilityDelegate(null);
        this.liveWidgetContainer = (ViewGroup) v.findViewById(R.id.live_widget_container);
    }
}
