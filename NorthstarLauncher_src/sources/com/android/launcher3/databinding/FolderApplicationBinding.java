package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class FolderApplicationBinding implements ViewBinding {
    private final BubbleTextView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public BubbleTextView getRoot() {
        return this.rootView;
    }

    private FolderApplicationBinding(BubbleTextView rootView) {
        this.rootView = rootView;
    }

    public static FolderApplicationBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FolderApplicationBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.folder_application, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FolderApplicationBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new FolderApplicationBinding((BubbleTextView) rootView);
    }
}
