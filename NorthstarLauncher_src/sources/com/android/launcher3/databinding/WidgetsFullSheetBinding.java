package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.views.RecyclerViewFastScroller;
import com.android.launcher3.views.TopRoundedCornerView;
import com.android.launcher3.widget.WidgetsFullSheet;
import com.android.launcher3.widget.WidgetsRecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class WidgetsFullSheetBinding implements ViewBinding {
    public final TopRoundedCornerView container;
    public final RecyclerViewFastScroller fastScroller;
    public final TextView fastScrollerPopup;
    private final WidgetsFullSheet rootView;
    public final WidgetsRecyclerView widgetsListView;

    @Override // androidx.viewbinding.ViewBinding
    public WidgetsFullSheet getRoot() {
        return this.rootView;
    }

    private WidgetsFullSheetBinding(WidgetsFullSheet rootView, TopRoundedCornerView container, RecyclerViewFastScroller fastScroller, TextView fastScrollerPopup, WidgetsRecyclerView widgetsListView) {
        this.rootView = rootView;
        this.container = container;
        this.fastScroller = fastScroller;
        this.fastScrollerPopup = fastScrollerPopup;
        this.widgetsListView = widgetsListView;
    }

    public static WidgetsFullSheetBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static WidgetsFullSheetBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.widgets_full_sheet, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static WidgetsFullSheetBinding bind(View rootView) {
        int i = R.id.container;
        TopRoundedCornerView topRoundedCornerView = (TopRoundedCornerView) ViewBindings.findChildViewById(rootView, R.id.container);
        if (topRoundedCornerView != null) {
            i = R.id.fast_scroller;
            RecyclerViewFastScroller recyclerViewFastScroller = (RecyclerViewFastScroller) ViewBindings.findChildViewById(rootView, R.id.fast_scroller);
            if (recyclerViewFastScroller != null) {
                i = R.id.fast_scroller_popup;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.fast_scroller_popup);
                if (textView != null) {
                    i = R.id.widgets_list_view;
                    WidgetsRecyclerView widgetsRecyclerView = (WidgetsRecyclerView) ViewBindings.findChildViewById(rootView, R.id.widgets_list_view);
                    if (widgetsRecyclerView != null) {
                        return new WidgetsFullSheetBinding((WidgetsFullSheet) rootView, topRoundedCornerView, recyclerViewFastScroller, textView, widgetsRecyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
