package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class AppwidgetErrorBinding implements ViewBinding {
    private final TextView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    private AppwidgetErrorBinding(TextView rootView) {
        this.rootView = rootView;
    }

    public static AppwidgetErrorBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static AppwidgetErrorBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.appwidget_error, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static AppwidgetErrorBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new AppwidgetErrorBinding((TextView) rootView);
    }
}
