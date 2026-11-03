package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.R;
import com.android.launcher3.shortcuts.DeepShortcutView;

/* JADX INFO: loaded from: classes.dex */
public final class SystemShortcutBinding implements ViewBinding {
    public final BubbleTextView bubbleText;
    public final View divider;
    public final View icon;
    private final DeepShortcutView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public DeepShortcutView getRoot() {
        return this.rootView;
    }

    private SystemShortcutBinding(DeepShortcutView rootView, BubbleTextView bubbleText, View divider, View icon) {
        this.rootView = rootView;
        this.bubbleText = bubbleText;
        this.divider = divider;
        this.icon = icon;
    }

    public static SystemShortcutBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static SystemShortcutBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.system_shortcut, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static SystemShortcutBinding bind(View rootView) {
        int i = R.id.bubble_text;
        BubbleTextView bubbleTextView = (BubbleTextView) ViewBindings.findChildViewById(rootView, R.id.bubble_text);
        if (bubbleTextView != null) {
            i = R.id.divider;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
            if (viewFindChildViewById != null) {
                i = R.id.icon;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.icon);
                if (viewFindChildViewById2 != null) {
                    return new SystemShortcutBinding((DeepShortcutView) rootView, bubbleTextView, viewFindChildViewById, viewFindChildViewById2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
