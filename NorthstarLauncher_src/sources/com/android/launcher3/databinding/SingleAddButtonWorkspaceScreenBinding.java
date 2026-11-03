package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.CellLayout;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class SingleAddButtonWorkspaceScreenBinding implements ViewBinding {
    private final CellLayout rootView;

    @Override // androidx.viewbinding.ViewBinding
    public CellLayout getRoot() {
        return this.rootView;
    }

    private SingleAddButtonWorkspaceScreenBinding(CellLayout rootView) {
        this.rootView = rootView;
    }

    public static SingleAddButtonWorkspaceScreenBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static SingleAddButtonWorkspaceScreenBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.single_add_button_workspace_screen, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static SingleAddButtonWorkspaceScreenBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new SingleAddButtonWorkspaceScreenBinding((CellLayout) rootView);
    }
}
