package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.CellLayout;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class FolderPageBinding implements ViewBinding {
    private final CellLayout rootView;

    @Override // androidx.viewbinding.ViewBinding
    public CellLayout getRoot() {
        return this.rootView;
    }

    private FolderPageBinding(CellLayout rootView) {
        this.rootView = rootView;
    }

    public static FolderPageBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FolderPageBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.folder_page, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FolderPageBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new FolderPageBinding((CellLayout) rootView);
    }
}
