package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.views.LiveWidgetContainer;
import com.android.launcher3.views.ShakeRelativeLayout;
import com.android.launcher3.widget.Table2x1WidgetCell;
import com.android.launcher3.widget.WidgetImageView;

/* JADX INFO: loaded from: classes.dex */
public final class ItemTableWidgetCell2x1Binding implements ViewBinding {
    public final ImageView ivWidgetAddBadge;
    public final LiveWidgetContainer liveWidgetContainer;
    private final ShakeRelativeLayout rootView;
    public final Table2x1WidgetCell widgetCell;
    public final TextView widgetName;
    public final WidgetImageView widgetPreview;

    @Override // androidx.viewbinding.ViewBinding
    public ShakeRelativeLayout getRoot() {
        return this.rootView;
    }

    private ItemTableWidgetCell2x1Binding(ShakeRelativeLayout rootView, ImageView ivWidgetAddBadge, LiveWidgetContainer liveWidgetContainer, Table2x1WidgetCell widgetCell, TextView widgetName, WidgetImageView widgetPreview) {
        this.rootView = rootView;
        this.ivWidgetAddBadge = ivWidgetAddBadge;
        this.liveWidgetContainer = liveWidgetContainer;
        this.widgetCell = widgetCell;
        this.widgetName = widgetName;
        this.widgetPreview = widgetPreview;
    }

    public static ItemTableWidgetCell2x1Binding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemTableWidgetCell2x1Binding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_table_widget_cell_2x1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemTableWidgetCell2x1Binding bind(View rootView) {
        int i = R.id.iv_widget_add_badge;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_widget_add_badge);
        if (imageView != null) {
            i = R.id.live_widget_container;
            LiveWidgetContainer liveWidgetContainer = (LiveWidgetContainer) ViewBindings.findChildViewById(rootView, R.id.live_widget_container);
            if (liveWidgetContainer != null) {
                i = R.id.widget_cell;
                Table2x1WidgetCell table2x1WidgetCell = (Table2x1WidgetCell) ViewBindings.findChildViewById(rootView, R.id.widget_cell);
                if (table2x1WidgetCell != null) {
                    i = R.id.widget_name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.widget_name);
                    if (textView != null) {
                        i = R.id.widget_preview;
                        WidgetImageView widgetImageView = (WidgetImageView) ViewBindings.findChildViewById(rootView, R.id.widget_preview);
                        if (widgetImageView != null) {
                            return new ItemTableWidgetCell2x1Binding((ShakeRelativeLayout) rootView, imageView, liveWidgetContainer, table2x1WidgetCell, textView, widgetImageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
