package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class AllAppsSearchMarketBinding implements ViewBinding {
    private final TextView rootView;
    public final TextView searchMarketText;

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    private AllAppsSearchMarketBinding(TextView rootView, TextView searchMarketText) {
        this.rootView = rootView;
        this.searchMarketText = searchMarketText;
    }

    public static AllAppsSearchMarketBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static AllAppsSearchMarketBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.all_apps_search_market, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static AllAppsSearchMarketBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        TextView textView = (TextView) rootView;
        return new AllAppsSearchMarketBinding(textView, textView);
    }
}
