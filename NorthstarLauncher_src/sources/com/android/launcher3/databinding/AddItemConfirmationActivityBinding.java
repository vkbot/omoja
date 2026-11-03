package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.dragndrop.LivePreviewWidgetCell;

/* JADX INFO: loaded from: classes.dex */
public final class AddItemConfirmationActivityBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final LivePreviewWidgetCell widgetCell;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private AddItemConfirmationActivityBinding(LinearLayout rootView, LivePreviewWidgetCell widgetCell) {
        this.rootView = rootView;
        this.widgetCell = widgetCell;
    }

    public static AddItemConfirmationActivityBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static AddItemConfirmationActivityBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.add_item_confirmation_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static AddItemConfirmationActivityBinding bind(View rootView) {
        LivePreviewWidgetCell livePreviewWidgetCell = (LivePreviewWidgetCell) ViewBindings.findChildViewById(rootView, R.id.widget_cell);
        if (livePreviewWidgetCell != null) {
            return new AddItemConfirmationActivityBinding((LinearLayout) rootView, livePreviewWidgetCell);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.widget_cell)));
    }
}
