package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.shortcuts.DeepShortcutTextView;
import com.android.launcher3.shortcuts.DeepShortcutView;

/* JADX INFO: loaded from: classes.dex */
public final class DeepShortcutBinding implements ViewBinding {
    public final DeepShortcutTextView bubbleText;
    public final View divider;
    public final View icon;
    private final DeepShortcutView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public DeepShortcutView getRoot() {
        return this.rootView;
    }

    private DeepShortcutBinding(DeepShortcutView rootView, DeepShortcutTextView bubbleText, View divider, View icon) {
        this.rootView = rootView;
        this.bubbleText = bubbleText;
        this.divider = divider;
        this.icon = icon;
    }

    public static DeepShortcutBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static DeepShortcutBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.deep_shortcut, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DeepShortcutBinding bind(View rootView) {
        int i = R.id.bubble_text;
        DeepShortcutTextView deepShortcutTextView = (DeepShortcutTextView) ViewBindings.findChildViewById(rootView, R.id.bubble_text);
        if (deepShortcutTextView != null) {
            i = R.id.divider;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
            if (viewFindChildViewById != null) {
                i = R.id.icon;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.icon);
                if (viewFindChildViewById2 != null) {
                    return new DeepShortcutBinding((DeepShortcutView) rootView, deepShortcutTextView, viewFindChildViewById, viewFindChildViewById2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
