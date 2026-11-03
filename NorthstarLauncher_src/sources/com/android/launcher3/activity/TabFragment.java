package com.android.launcher3.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.R;
import com.android.launcher3.activity.model.AppListViewModel;
import com.android.launcher3.databinding.FragmentTabBinding;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: TabFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J&\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u000eH\u0016J\u001a\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00102\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0017J\u0010\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u001f"}, d2 = {"Lcom/android/launcher3/activity/TabFragment;", "Landroidx/fragment/app/Fragment;", "()V", "binding", "Lcom/android/launcher3/databinding/FragmentTabBinding;", "tabClickListener", "Landroid/view/View$OnClickListener;", "viewModel", "Lcom/android/launcher3/activity/model/AppListViewModel;", "getViewModel", "()Lcom/android/launcher3/activity/model/AppListViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onClickHiCar", "", "v", "Landroid/view/View;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", LauncherSettings.Favorites.CONTAINER, "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onViewCreated", "view", "updateTabColor", "tabPosition", "", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class TabFragment extends Fragment {
    private static final int TAB_APPS = 0;
    private static final int TAB_MIX_LAUNCHER = 1;
    private static final String TAG = "TabT1gcFragment";
    private FragmentTabBinding binding;
    private final View.OnClickListener tabClickListener = new View.OnClickListener() { // from class: com.android.launcher3.activity.TabFragment$$ExternalSyntheticLambda1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            TabFragment.tabClickListener$lambda$1(this.f$0, view);
        }
    };

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public TabFragment() {
        final TabFragment tabFragment = this;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(tabFragment, Reflection.getOrCreateKotlinClass(AppListViewModel.class), new Function0<ViewModelStore>() { // from class: com.android.launcher3.activity.TabFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                FragmentActivity fragmentActivityRequireActivity = tabFragment.requireActivity();
                Intrinsics.checkExpressionValueIsNotNull(fragmentActivityRequireActivity, "requireActivity()");
                ViewModelStore viewModelStore = fragmentActivityRequireActivity.getViewModelStore();
                Intrinsics.checkExpressionValueIsNotNull(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.android.launcher3.activity.TabFragment$special$$inlined$activityViewModels$default$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                FragmentActivity fragmentActivityRequireActivity = tabFragment.requireActivity();
                Intrinsics.checkExpressionValueIsNotNull(fragmentActivityRequireActivity, "requireActivity()");
                ViewModelProvider.Factory defaultViewModelProviderFactory = fragmentActivityRequireActivity.getDefaultViewModelProviderFactory();
                Intrinsics.checkExpressionValueIsNotNull(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
    }

    private final AppListViewModel getViewModel() {
        return (AppListViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void tabClickListener$lambda$1(TabFragment this$0, View v) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentTabBinding fragmentTabBinding = this$0.binding;
        if (fragmentTabBinding != null) {
            if (v == fragmentTabBinding.tvTabApps) {
                if (this$0.getViewModel().getTabPositionValue() != 0) {
                    this$0.getViewModel().changeTab(0, "tabClick_Tab");
                }
            } else {
                if (v != fragmentTabBinding.tvTabHicarApps || this$0.getViewModel().getTabPositionValue() == 1) {
                    return;
                }
                Intrinsics.checkNotNullExpressionValue(v, "v");
                this$0.onClickHiCar(v);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentTabBinding fragmentTabBindingInflate = FragmentTabBinding.inflate(getLayoutInflater(), container, false);
        this.binding = fragmentTabBindingInflate;
        return fragmentTabBindingInflate != null ? fragmentTabBindingInflate.getRoot() : null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        FragmentTabBinding fragmentTabBinding = this.binding;
        if (fragmentTabBinding != null) {
            updateTabColor(getViewModel().getTabPositionValue());
            fragmentTabBinding.tvTabApps.setOnClickListener(this.tabClickListener);
            fragmentTabBinding.tvTabHicarApps.setOnClickListener(this.tabClickListener);
        }
        LiveData<Integer> tabPosition = getViewModel().getTabPosition();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        final Function1<Integer, Unit> function1 = new Function1<Integer, Unit>() { // from class: com.android.launcher3.activity.TabFragment.onViewCreated.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke2(num);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Integer it) {
                TabFragment tabFragment = TabFragment.this;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                tabFragment.updateTabColor(it.intValue());
            }
        };
        tabPosition.observe(viewLifecycleOwner, new Observer() { // from class: com.android.launcher3.activity.TabFragment$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                TabFragment.onViewCreated$lambda$3(function1, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateTabColor(int tabPosition) {
        int color;
        int color2;
        FragmentTabBinding fragmentTabBinding = this.binding;
        if (fragmentTabBinding != null) {
            TextView textView = fragmentTabBinding.tvTabApps;
            if (tabPosition == 0) {
                color = getResources().getColor(R.color.widget_table_title_selected);
            } else {
                color = getResources().getColor(R.color.widget_table_title_unselected);
            }
            textView.setTextColor(color);
            TextView textView2 = fragmentTabBinding.tvTabHicarApps;
            if (tabPosition == 1) {
                color2 = getResources().getColor(R.color.widget_table_title_selected);
            } else {
                color2 = getResources().getColor(R.color.widget_table_title_unselected);
            }
            textView2.setTextColor(color2);
        }
    }

    private final void onClickHiCar(View v) {
        FragmentActivity activity = getActivity();
        AppListActivity appListActivity = activity instanceof AppListActivity ? (AppListActivity) activity : null;
        if (appListActivity != null) {
            appListActivity.onClickHiCar(v, "Tab_Click");
        }
    }
}
