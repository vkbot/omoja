package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class AllAppsIconBinding implements ViewBinding {
    public final BubbleTextView icon;
    private final BubbleTextView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public BubbleTextView getRoot() {
        return this.rootView;
    }

    private AllAppsIconBinding(BubbleTextView rootView, BubbleTextView icon) {
        this.rootView = rootView;
        this.icon = icon;
    }

    public static AllAppsIconBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static AllAppsIconBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.all_apps_icon, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static AllAppsIconBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        BubbleTextView bubbleTextView = (BubbleTextView) rootView;
        return new AllAppsIconBinding(bubbleTextView, bubbleTextView);
    }
}
