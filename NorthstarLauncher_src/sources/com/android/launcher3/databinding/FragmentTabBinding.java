package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentTabBinding implements ViewBinding {
    public final RelativeLayout llSelector;
    private final RelativeLayout rootView;
    public final TextView tvTabApps;
    public final TextView tvTabHicarApps;

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    private FragmentTabBinding(RelativeLayout rootView, RelativeLayout llSelector, TextView tvTabApps, TextView tvTabHicarApps) {
        this.rootView = rootView;
        this.llSelector = llSelector;
        this.tvTabApps = tvTabApps;
        this.tvTabHicarApps = tvTabHicarApps;
    }

    public static FragmentTabBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentTabBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_tab, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentTabBinding bind(View rootView) {
        RelativeLayout relativeLayout = (RelativeLayout) rootView;
        int i = R.id.tv_tab_apps;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_tab_apps);
        if (textView != null) {
            i = R.id.tv_tab_hicar_apps;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_tab_hicar_apps);
            if (textView2 != null) {
                return new FragmentTabBinding(relativeLayout, relativeLayout, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
