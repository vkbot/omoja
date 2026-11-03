package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;
import com.android.launcher3.widget.WidgetContainerRecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class WidgetContainer2x1Binding implements ViewBinding {
    private final WidgetContainerRecyclerView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public WidgetContainerRecyclerView getRoot() {
        return this.rootView;
    }

    private WidgetContainer2x1Binding(WidgetContainerRecyclerView rootView) {
        this.rootView = rootView;
    }

    public static WidgetContainer2x1Binding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static WidgetContainer2x1Binding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.widget_container_2x1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static WidgetContainer2x1Binding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new WidgetContainer2x1Binding((WidgetContainerRecyclerView) rootView);
    }
}
