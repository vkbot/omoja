package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class AppwidgetNotReadyBinding implements ViewBinding {
    private final View rootView;

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return this.rootView;
    }

    private AppwidgetNotReadyBinding(View rootView) {
        this.rootView = rootView;
    }

    public static AppwidgetNotReadyBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static AppwidgetNotReadyBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.appwidget_not_ready, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static AppwidgetNotReadyBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new AppwidgetNotReadyBinding(rootView);
    }
}
