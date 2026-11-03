package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class AllAppsEmptySearchBinding implements ViewBinding {
    public final TextView emptyText;
    private final TextView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    private AllAppsEmptySearchBinding(TextView rootView, TextView emptyText) {
        this.rootView = rootView;
        this.emptyText = emptyText;
    }

    public static AllAppsEmptySearchBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static AllAppsEmptySearchBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.all_apps_empty_search, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static AllAppsEmptySearchBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        TextView textView = (TextView) rootView;
        return new AllAppsEmptySearchBinding(textView, textView);
    }
}
