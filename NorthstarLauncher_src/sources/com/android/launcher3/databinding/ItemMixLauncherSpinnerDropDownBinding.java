package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class ItemMixLauncherSpinnerDropDownBinding implements ViewBinding {
    private final TextView rootView;
    public final TextView tvMixLauncherItem;

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    private ItemMixLauncherSpinnerDropDownBinding(TextView rootView, TextView tvMixLauncherItem) {
        this.rootView = rootView;
        this.tvMixLauncherItem = tvMixLauncherItem;
    }

    public static ItemMixLauncherSpinnerDropDownBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemMixLauncherSpinnerDropDownBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_mix_launcher_spinner_drop_down, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemMixLauncherSpinnerDropDownBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        TextView textView = (TextView) rootView;
        return new ItemMixLauncherSpinnerDropDownBinding(textView, textView);
    }
}
