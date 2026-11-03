package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.activity.AppListRecyclerView;
import com.android.launcher3.activity.view.AppListIndicator;
import com.android.launcher3.views.AllAppsRootView;
import com.android.launcher3.views.dragableviews.OverScrollHLayout;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentAppListBinding implements ViewBinding {
    public final AllAppsRootView allAppsRootView;
    public final AppListIndicator appIndicator;
    public final AppListRecyclerView appList;
    public final OverScrollHLayout appListContainer;
    private final AllAppsRootView rootView;
    public final View viewLeft;
    public final View viewRight;

    @Override // androidx.viewbinding.ViewBinding
    public AllAppsRootView getRoot() {
        return this.rootView;
    }

    private FragmentAppListBinding(AllAppsRootView rootView, AllAppsRootView allAppsRootView, AppListIndicator appIndicator, AppListRecyclerView appList, OverScrollHLayout appListContainer, View viewLeft, View viewRight) {
        this.rootView = rootView;
        this.allAppsRootView = allAppsRootView;
        this.appIndicator = appIndicator;
        this.appList = appList;
        this.appListContainer = appListContainer;
        this.viewLeft = viewLeft;
        this.viewRight = viewRight;
    }

    public static FragmentAppListBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentAppListBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_app_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentAppListBinding bind(View rootView) {
        AllAppsRootView allAppsRootView = (AllAppsRootView) rootView;
        int i = R.id.app_indicator;
        AppListIndicator appListIndicator = (AppListIndicator) ViewBindings.findChildViewById(rootView, R.id.app_indicator);
        if (appListIndicator != null) {
            i = R.id.app_list;
            AppListRecyclerView appListRecyclerView = (AppListRecyclerView) ViewBindings.findChildViewById(rootView, R.id.app_list);
            if (appListRecyclerView != null) {
                i = R.id.app_list_container;
                OverScrollHLayout overScrollHLayout = (OverScrollHLayout) ViewBindings.findChildViewById(rootView, R.id.app_list_container);
                if (overScrollHLayout != null) {
                    i = R.id.view_left;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.view_left);
                    if (viewFindChildViewById != null) {
                        i = R.id.view_right;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.view_right);
                        if (viewFindChildViewById2 != null) {
                            return new FragmentAppListBinding(allAppsRootView, allAppsRootView, appListIndicator, appListRecyclerView, overScrollHLayout, viewFindChildViewById, viewFindChildViewById2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
