package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Switch;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class SwitchPreferenceWithSettingsBinding implements ViewBinding {
    public final View divider;
    private final LinearLayout rootView;
    public final ImageView settings;
    public final Switch switchWidget;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private SwitchPreferenceWithSettingsBinding(LinearLayout rootView, View divider, ImageView settings, Switch switchWidget) {
        this.rootView = rootView;
        this.divider = divider;
        this.settings = settings;
        this.switchWidget = switchWidget;
    }

    public static SwitchPreferenceWithSettingsBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static SwitchPreferenceWithSettingsBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.switch_preference_with_settings, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static SwitchPreferenceWithSettingsBinding bind(View rootView) {
        int i = R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
        if (viewFindChildViewById != null) {
            i = R.id.settings;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.settings);
            if (imageView != null) {
                i = 16908352;
                Switch r3 = (Switch) ViewBindings.findChildViewById(rootView, 16908352);
                if (r3 != null) {
                    return new SwitchPreferenceWithSettingsBinding((LinearLayout) rootView, viewFindChildViewById, imageView, r3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
