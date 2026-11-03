package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Hotseat;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class LauncherPreviewLayoutBinding implements ViewBinding {
    public final Hotseat hotseat;
    private final InsettableFrameLayout rootView;
    public final CellLayout workspace;

    @Override // androidx.viewbinding.ViewBinding
    public InsettableFrameLayout getRoot() {
        return this.rootView;
    }

    private LauncherPreviewLayoutBinding(InsettableFrameLayout rootView, Hotseat hotseat, CellLayout workspace) {
        this.rootView = rootView;
        this.hotseat = hotseat;
        this.workspace = workspace;
    }

    public static LauncherPreviewLayoutBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static LauncherPreviewLayoutBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.launcher_preview_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LauncherPreviewLayoutBinding bind(View rootView) {
        int i = R.id.hotseat;
        Hotseat hotseat = (Hotseat) ViewBindings.findChildViewById(rootView, R.id.hotseat);
        if (hotseat != null) {
            i = R.id.workspace;
            CellLayout cellLayout = (CellLayout) ViewBindings.findChildViewById(rootView, R.id.workspace);
            if (cellLayout != null) {
                return new LauncherPreviewLayoutBinding((InsettableFrameLayout) rootView, hotseat, cellLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
