package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;
import com.android.launcher3.views.FloatingIconView;

/* JADX INFO: loaded from: classes.dex */
public final class FloatingIconViewBinding implements ViewBinding {
    private final FloatingIconView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public FloatingIconView getRoot() {
        return this.rootView;
    }

    private FloatingIconViewBinding(FloatingIconView rootView) {
        this.rootView = rootView;
    }

    public static FloatingIconViewBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FloatingIconViewBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.floating_icon_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FloatingIconViewBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new FloatingIconViewBinding((FloatingIconView) rootView);
    }
}
