package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.views.ShakeRelativeLayout;
import com.android.launcher3.widget.TableWidgetCell;
import com.android.launcher3.widget.WidgetImageView;

/* JADX INFO: loaded from: classes.dex */
public final class ItemTableWidgetCell1x1Binding implements ViewBinding {
    public final ImageView ivWidgetAddBadge;
    private final ShakeRelativeLayout rootView;
    public final TableWidgetCell widgetCell;
    public final TextView widgetName;
    public final WidgetImageView widgetPreview;

    @Override // androidx.viewbinding.ViewBinding
    public ShakeRelativeLayout getRoot() {
        return this.rootView;
    }

    private ItemTableWidgetCell1x1Binding(ShakeRelativeLayout rootView, ImageView ivWidgetAddBadge, TableWidgetCell widgetCell, TextView widgetName, WidgetImageView widgetPreview) {
        this.rootView = rootView;
        this.ivWidgetAddBadge = ivWidgetAddBadge;
        this.widgetCell = widgetCell;
        this.widgetName = widgetName;
        this.widgetPreview = widgetPreview;
    }

    public static ItemTableWidgetCell1x1Binding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemTableWidgetCell1x1Binding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_table_widget_cell_1x1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemTableWidgetCell1x1Binding bind(View rootView) {
        int i = R.id.iv_widget_add_badge;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_widget_add_badge);
        if (imageView != null) {
            i = R.id.widget_cell;
            TableWidgetCell tableWidgetCell = (TableWidgetCell) ViewBindings.findChildViewById(rootView, R.id.widget_cell);
            if (tableWidgetCell != null) {
                i = R.id.widget_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.widget_name);
                if (textView != null) {
                    i = R.id.widget_preview;
                    WidgetImageView widgetImageView = (WidgetImageView) ViewBindings.findChildViewById(rootView, R.id.widget_preview);
                    if (widgetImageView != null) {
                        return new ItemTableWidgetCell1x1Binding((ShakeRelativeLayout) rootView, imageView, tableWidgetCell, textView, widgetImageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
