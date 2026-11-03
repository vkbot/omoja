package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.activity.view.MixLauncherSpinner;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentTabT1gcBinding implements ViewBinding {
    public final RelativeLayout llSelector;
    private final RelativeLayout rootView;
    public final TextView tvTabApps;
    public final MixLauncherSpinner tvTabMixLauncher;

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    private FragmentTabT1gcBinding(RelativeLayout rootView, RelativeLayout llSelector, TextView tvTabApps, MixLauncherSpinner tvTabMixLauncher) {
        this.rootView = rootView;
        this.llSelector = llSelector;
        this.tvTabApps = tvTabApps;
        this.tvTabMixLauncher = tvTabMixLauncher;
    }

    public static FragmentTabT1gcBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentTabT1gcBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_tab_t1gc, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentTabT1gcBinding bind(View rootView) {
        RelativeLayout relativeLayout = (RelativeLayout) rootView;
        int i = R.id.tv_tab_apps;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_tab_apps);
        if (textView != null) {
            i = R.id.tv_tab_mix_launcher;
            MixLauncherSpinner mixLauncherSpinner = (MixLauncherSpinner) ViewBindings.findChildViewById(rootView, R.id.tv_tab_mix_launcher);
            if (mixLauncherSpinner != null) {
                return new FragmentTabT1gcBinding(relativeLayout, relativeLayout, textView, mixLauncherSpinner);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
