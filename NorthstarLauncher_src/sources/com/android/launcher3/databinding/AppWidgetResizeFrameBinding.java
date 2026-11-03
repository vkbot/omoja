package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.AppWidgetResizeFrame;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class AppWidgetResizeFrameBinding implements ViewBinding {
    private final AppWidgetResizeFrame rootView;

    @Override // androidx.viewbinding.ViewBinding
    public AppWidgetResizeFrame getRoot() {
        return this.rootView;
    }

    private AppWidgetResizeFrameBinding(AppWidgetResizeFrame rootView) {
        this.rootView = rootView;
    }

    public static AppWidgetResizeFrameBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static AppWidgetResizeFrameBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.app_widget_resize_frame, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static AppWidgetResizeFrameBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new AppWidgetResizeFrameBinding((AppWidgetResizeFrame) rootView);
    }
}
