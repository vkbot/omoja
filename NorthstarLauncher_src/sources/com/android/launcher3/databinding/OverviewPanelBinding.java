package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class OverviewPanelBinding implements ViewBinding {
    private final Space rootView;

    @Override // androidx.viewbinding.ViewBinding
    public Space getRoot() {
        return this.rootView;
    }

    private OverviewPanelBinding(Space rootView) {
        this.rootView = rootView;
    }

    public static OverviewPanelBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static OverviewPanelBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.overview_panel, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static OverviewPanelBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new OverviewPanelBinding((Space) rootView);
    }
}
