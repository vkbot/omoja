package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class WidgetsScrollContainerBinding implements ViewBinding {
    private final HorizontalScrollView rootView;
    public final LinearLayout widgetsCellList;
    public final HorizontalScrollView widgetsScrollContainer;

    @Override // androidx.viewbinding.ViewBinding
    public HorizontalScrollView getRoot() {
        return this.rootView;
    }

    private WidgetsScrollContainerBinding(HorizontalScrollView rootView, LinearLayout widgetsCellList, HorizontalScrollView widgetsScrollContainer) {
        this.rootView = rootView;
        this.widgetsCellList = widgetsCellList;
        this.widgetsScrollContainer = widgetsScrollContainer;
    }

    public static WidgetsScrollContainerBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static WidgetsScrollContainerBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.widgets_scroll_container, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static WidgetsScrollContainerBinding bind(View rootView) {
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.widgets_cell_list);
        if (linearLayout != null) {
            HorizontalScrollView horizontalScrollView = (HorizontalScrollView) rootView;
            return new WidgetsScrollContainerBinding(horizontalScrollView, linearLayout, horizontalScrollView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.widgets_cell_list)));
    }
}
