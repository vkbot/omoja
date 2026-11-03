package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.widget.WidgetImageView;

/* JADX INFO: loaded from: classes.dex */
public final class WidgetCellContentBinding implements ViewBinding {
    private final View rootView;
    public final TextView widgetDims;
    public final TextView widgetName;
    public final WidgetImageView widgetPreview;

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return this.rootView;
    }

    private WidgetCellContentBinding(View rootView, TextView widgetDims, TextView widgetName, WidgetImageView widgetPreview) {
        this.rootView = rootView;
        this.widgetDims = widgetDims;
        this.widgetName = widgetName;
        this.widgetPreview = widgetPreview;
    }

    public static WidgetCellContentBinding inflate(LayoutInflater inflater, ViewGroup parent) {
        if (parent == null) {
            throw new NullPointerException("parent");
        }
        inflater.inflate(R.layout.widget_cell_content, parent);
        return bind(parent);
    }

    public static WidgetCellContentBinding bind(View rootView) {
        int i = R.id.widget_dims;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.widget_dims);
        if (textView != null) {
            i = R.id.widget_name;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.widget_name);
            if (textView2 != null) {
                i = R.id.widget_preview;
                WidgetImageView widgetImageView = (WidgetImageView) ViewBindings.findChildViewById(rootView, R.id.widget_preview);
                if (widgetImageView != null) {
                    return new WidgetCellContentBinding(rootView, textView, textView2, widgetImageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
