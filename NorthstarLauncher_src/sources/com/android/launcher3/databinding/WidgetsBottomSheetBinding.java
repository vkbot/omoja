package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.widget.WidgetsBottomSheet;

/* JADX INFO: loaded from: classes.dex */
public final class WidgetsBottomSheetBinding implements ViewBinding {
    private final WidgetsBottomSheet rootView;
    public final TextView title;
    public final WidgetsScrollContainerBinding widgets;

    @Override // androidx.viewbinding.ViewBinding
    public WidgetsBottomSheet getRoot() {
        return this.rootView;
    }

    private WidgetsBottomSheetBinding(WidgetsBottomSheet rootView, TextView title, WidgetsScrollContainerBinding widgets) {
        this.rootView = rootView;
        this.title = title;
        this.widgets = widgets;
    }

    public static WidgetsBottomSheetBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static WidgetsBottomSheetBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.widgets_bottom_sheet, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static WidgetsBottomSheetBinding bind(View rootView) {
        int i = R.id.title;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
        if (textView != null) {
            i = R.id.widgets;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.widgets);
            if (viewFindChildViewById != null) {
                return new WidgetsBottomSheetBinding((WidgetsBottomSheet) rootView, textView, WidgetsScrollContainerBinding.bind(viewFindChildViewById));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
