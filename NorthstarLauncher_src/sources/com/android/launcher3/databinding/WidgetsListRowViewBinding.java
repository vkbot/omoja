package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class WidgetsListRowViewBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final BubbleTextView section;
    public final LinearLayout widgetsCellListContainer;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private WidgetsListRowViewBinding(LinearLayout rootView, BubbleTextView section, LinearLayout widgetsCellListContainer) {
        this.rootView = rootView;
        this.section = section;
        this.widgetsCellListContainer = widgetsCellListContainer;
    }

    public static WidgetsListRowViewBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static WidgetsListRowViewBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.widgets_list_row_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static WidgetsListRowViewBinding bind(View rootView) {
        BubbleTextView bubbleTextView = (BubbleTextView) ViewBindings.findChildViewById(rootView, R.id.section);
        if (bubbleTextView != null) {
            LinearLayout linearLayout = (LinearLayout) rootView;
            return new WidgetsListRowViewBinding(linearLayout, bubbleTextView, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.section)));
    }
}
