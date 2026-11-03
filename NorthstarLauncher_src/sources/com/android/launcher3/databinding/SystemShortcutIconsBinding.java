package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Space;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class SystemShortcutIconsBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final Space separator;
    public final LinearLayout systemShortcutIcons;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private SystemShortcutIconsBinding(LinearLayout rootView, Space separator, LinearLayout systemShortcutIcons) {
        this.rootView = rootView;
        this.separator = separator;
        this.systemShortcutIcons = systemShortcutIcons;
    }

    public static SystemShortcutIconsBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static SystemShortcutIconsBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.system_shortcut_icons, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static SystemShortcutIconsBinding bind(View rootView) {
        Space space = (Space) ViewBindings.findChildViewById(rootView, R.id.separator);
        if (space != null) {
            LinearLayout linearLayout = (LinearLayout) rootView;
            return new SystemShortcutIconsBinding(linearLayout, space, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(R.id.separator)));
    }
}
