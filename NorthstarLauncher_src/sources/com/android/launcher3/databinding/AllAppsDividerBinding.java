package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class AllAppsDividerBinding implements ViewBinding {
    private final ImageView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public ImageView getRoot() {
        return this.rootView;
    }

    private AllAppsDividerBinding(ImageView rootView) {
        this.rootView = rootView;
    }

    public static AllAppsDividerBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static AllAppsDividerBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.all_apps_divider, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static AllAppsDividerBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new AllAppsDividerBinding((ImageView) rootView);
    }
}
