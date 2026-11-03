package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.views.DoubleShadowBubbleTextView;

/* JADX INFO: loaded from: classes.dex */
public final class FolderIconBinding implements ViewBinding {
    public final DoubleShadowBubbleTextView folderIconName;
    private final FolderIcon rootView;

    @Override // androidx.viewbinding.ViewBinding
    public FolderIcon getRoot() {
        return this.rootView;
    }

    private FolderIconBinding(FolderIcon rootView, DoubleShadowBubbleTextView folderIconName) {
        this.rootView = rootView;
        this.folderIconName = folderIconName;
    }

    public static FolderIconBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FolderIconBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.folder_icon, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FolderIconBinding bind(View rootView) {
        DoubleShadowBubbleTextView doubleShadowBubbleTextView = (DoubleShadowBubbleTextView) ViewBindings.findChildViewById(rootView, R.id.folder_icon_name);
        if (doubleShadowBubbleTextView != null) {
            return new FolderIconBinding((FolderIcon) rootView, doubleShadowBubbleTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.folder_icon_name)));
    }
}
