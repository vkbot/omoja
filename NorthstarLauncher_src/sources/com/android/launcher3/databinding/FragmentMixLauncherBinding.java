package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.mega.carlink.view.CarLinkAppListView;
import com.mega.hicar.view.HiCarAppListView;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentMixLauncherBinding implements ViewBinding {
    public final CarLinkAppListView carlinkAppList;
    public final HiCarAppListView hicarAppList;
    private final FrameLayout rootView;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private FragmentMixLauncherBinding(FrameLayout rootView, CarLinkAppListView carlinkAppList, HiCarAppListView hicarAppList) {
        this.rootView = rootView;
        this.carlinkAppList = carlinkAppList;
        this.hicarAppList = hicarAppList;
    }

    public static FragmentMixLauncherBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentMixLauncherBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_mix_launcher, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentMixLauncherBinding bind(View rootView) {
        int i = R.id.carlink_app_list;
        CarLinkAppListView carLinkAppListView = (CarLinkAppListView) ViewBindings.findChildViewById(rootView, R.id.carlink_app_list);
        if (carLinkAppListView != null) {
            i = R.id.hicar_app_list;
            HiCarAppListView hiCarAppListView = (HiCarAppListView) ViewBindings.findChildViewById(rootView, R.id.hicar_app_list);
            if (hiCarAppListView != null) {
                return new FragmentMixLauncherBinding((FrameLayout) rootView, carLinkAppListView, hiCarAppListView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
