package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.activity.AppListRootView;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityApplistBinding implements ViewBinding {
    public final AppListRootView appBg;
    public final FrameLayout mixLauncherContainer;
    private final AppListRootView rootView;
    public final FrameLayout systemAppsContainer;
    public final FrameLayout tabContainer;

    @Override // androidx.viewbinding.ViewBinding
    public AppListRootView getRoot() {
        return this.rootView;
    }

    private ActivityApplistBinding(AppListRootView rootView, AppListRootView appBg, FrameLayout mixLauncherContainer, FrameLayout systemAppsContainer, FrameLayout tabContainer) {
        this.rootView = rootView;
        this.appBg = appBg;
        this.mixLauncherContainer = mixLauncherContainer;
        this.systemAppsContainer = systemAppsContainer;
        this.tabContainer = tabContainer;
    }

    public static ActivityApplistBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ActivityApplistBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_applist, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityApplistBinding bind(View rootView) {
        AppListRootView appListRootView = (AppListRootView) rootView;
        int i = R.id.mix_launcher_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.mix_launcher_container);
        if (frameLayout != null) {
            i = R.id.system_apps_container;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.system_apps_container);
            if (frameLayout2 != null) {
                i = R.id.tab_container;
                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.tab_container);
                if (frameLayout3 != null) {
                    return new ActivityApplistBinding(appListRootView, appListRootView, frameLayout, frameLayout2, frameLayout3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
