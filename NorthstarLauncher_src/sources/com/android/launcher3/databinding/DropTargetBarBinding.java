package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.DeleteDropTarget;
import com.android.launcher3.DropTargetBar;
import com.android.launcher3.R;
import com.android.launcher3.SecondaryDropTarget;

/* JADX INFO: loaded from: classes.dex */
public final class DropTargetBarBinding implements ViewBinding {
    public final DeleteDropTarget deleteTargetText;
    private final DropTargetBar rootView;
    public final SecondaryDropTarget uninstallTargetText;

    @Override // androidx.viewbinding.ViewBinding
    public DropTargetBar getRoot() {
        return this.rootView;
    }

    private DropTargetBarBinding(DropTargetBar rootView, DeleteDropTarget deleteTargetText, SecondaryDropTarget uninstallTargetText) {
        this.rootView = rootView;
        this.deleteTargetText = deleteTargetText;
        this.uninstallTargetText = uninstallTargetText;
    }

    public static DropTargetBarBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static DropTargetBarBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.drop_target_bar, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DropTargetBarBinding bind(View rootView) {
        int i = R.id.delete_target_text;
        DeleteDropTarget deleteDropTarget = (DeleteDropTarget) ViewBindings.findChildViewById(rootView, R.id.delete_target_text);
        if (deleteDropTarget != null) {
            i = R.id.uninstall_target_text;
            SecondaryDropTarget secondaryDropTarget = (SecondaryDropTarget) ViewBindings.findChildViewById(rootView, R.id.uninstall_target_text);
            if (secondaryDropTarget != null) {
                return new DropTargetBarBinding((DropTargetBar) rootView, deleteDropTarget, secondaryDropTarget);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
