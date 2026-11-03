package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.views.RecyclerViewFastScroller;

/* JADX INFO: loaded from: classes.dex */
public final class AllAppsFastScrollerBinding implements ViewBinding {
    public final RecyclerViewFastScroller fastScroller;
    public final TextView fastScrollerPopup;
    private final View rootView;

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return this.rootView;
    }

    private AllAppsFastScrollerBinding(View rootView, RecyclerViewFastScroller fastScroller, TextView fastScrollerPopup) {
        this.rootView = rootView;
        this.fastScroller = fastScroller;
        this.fastScrollerPopup = fastScrollerPopup;
    }

    public static AllAppsFastScrollerBinding inflate(LayoutInflater inflater, ViewGroup parent) {
        if (parent == null) {
            throw new NullPointerException("parent");
        }
        inflater.inflate(R.layout.all_apps_fast_scroller, parent);
        return bind(parent);
    }

    public static AllAppsFastScrollerBinding bind(View rootView) {
        int i = R.id.fast_scroller;
        RecyclerViewFastScroller recyclerViewFastScroller = (RecyclerViewFastScroller) ViewBindings.findChildViewById(rootView, R.id.fast_scroller);
        if (recyclerViewFastScroller != null) {
            i = R.id.fast_scroller_popup;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.fast_scroller_popup);
            if (textView != null) {
                return new AllAppsFastScrollerBinding(rootView, recyclerViewFastScroller, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
