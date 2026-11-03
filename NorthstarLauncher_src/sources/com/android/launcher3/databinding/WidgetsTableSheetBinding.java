package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.widget.WidgetsTableSheet;

/* JADX INFO: loaded from: classes.dex */
public final class WidgetsTableSheetBinding implements ViewBinding {
    public final Button btnWidgetFinish;
    public final LinearLayout container;
    public final TextView ibWidget1x1;
    public final TextView ibWidget2x1;
    public final RelativeLayout llSelector;
    private final WidgetsTableSheet rootView;
    public final WidgetContainer1x1Binding rvWidgets1x1;
    public final WidgetContainer2x1Binding rvWidgets2x1;
    public final WidgetsTableSheet widgetsTableSheet;

    @Override // androidx.viewbinding.ViewBinding
    public WidgetsTableSheet getRoot() {
        return this.rootView;
    }

    private WidgetsTableSheetBinding(WidgetsTableSheet rootView, Button btnWidgetFinish, LinearLayout container, TextView ibWidget1x1, TextView ibWidget2x1, RelativeLayout llSelector, WidgetContainer1x1Binding rvWidgets1x1, WidgetContainer2x1Binding rvWidgets2x1, WidgetsTableSheet widgetsTableSheet) {
        this.rootView = rootView;
        this.btnWidgetFinish = btnWidgetFinish;
        this.container = container;
        this.ibWidget1x1 = ibWidget1x1;
        this.ibWidget2x1 = ibWidget2x1;
        this.llSelector = llSelector;
        this.rvWidgets1x1 = rvWidgets1x1;
        this.rvWidgets2x1 = rvWidgets2x1;
        this.widgetsTableSheet = widgetsTableSheet;
    }

    public static WidgetsTableSheetBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static WidgetsTableSheetBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.widgets_table_sheet, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static WidgetsTableSheetBinding bind(View rootView) {
        int i = R.id.btn_widget_finish;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_widget_finish);
        if (button != null) {
            i = R.id.container;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.container);
            if (linearLayout != null) {
                i = R.id.ib_widget_1x1;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.ib_widget_1x1);
                if (textView != null) {
                    i = R.id.ib_widget_2x1;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.ib_widget_2x1);
                    if (textView2 != null) {
                        i = R.id.ll_selector;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.ll_selector);
                        if (relativeLayout != null) {
                            i = R.id.rv_widgets_1x1;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.rv_widgets_1x1);
                            if (viewFindChildViewById != null) {
                                WidgetContainer1x1Binding widgetContainer1x1BindingBind = WidgetContainer1x1Binding.bind(viewFindChildViewById);
                                i = R.id.rv_widgets_2x1;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.rv_widgets_2x1);
                                if (viewFindChildViewById2 != null) {
                                    WidgetsTableSheet widgetsTableSheet = (WidgetsTableSheet) rootView;
                                    return new WidgetsTableSheetBinding(widgetsTableSheet, button, linearLayout, textView, textView2, relativeLayout, widgetContainer1x1BindingBind, WidgetContainer2x1Binding.bind(viewFindChildViewById2), widgetsTableSheet);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
