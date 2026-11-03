package com.android.launcher3.activity;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
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
import com.android.launcher3.activity.view.MixLauncherSpinner;
import com.android.launcher3.databinding.FragmentTabT1gcBinding;
import com.android.launcher3.util.LinkManagerKt;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import mega.log.MLog;

/* JADX INFO: compiled from: TabT1gcFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 %2\u00020\u0001:\u0001%B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J&\u0010\u0014\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u000eH\u0016J\u001a\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u00102\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0017J\u000e\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020!H\u0002J\u0018\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020!2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010$\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020!H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006&"}, d2 = {"Lcom/android/launcher3/activity/TabT1gcFragment;", "Landroidx/fragment/app/Fragment;", "()V", "binding", "Lcom/android/launcher3/databinding/FragmentTabT1gcBinding;", "tabClickListener", "Landroid/view/View$OnClickListener;", "viewModel", "Lcom/android/launcher3/activity/model/AppListViewModel;", "getViewModel", "()Lcom/android/launcher3/activity/model/AppListViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onClickCarLink", "", "v", "Landroid/view/View;", "reason", "", "onClickHiCar", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", LauncherSettings.Favorites.CONTAINER, "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onViewCreated", "view", "resetSelection", "updateMixLauncherText", "mixLauncherPosition", "", "updateSelected", "tabPosition", "updateTextColor", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class TabT1gcFragment extends Fragment {
    private static final int POS_CAR_LINK = 0;
    private static final int POS_HICAR = 1;
    private static final int TAB_APPS = 0;
    private static final int TAB_MIX_LAUNCHER = 1;
    private static final String TAG = "TabT1gcFragment";
    private FragmentTabT1gcBinding binding;
    private final View.OnClickListener tabClickListener = new View.OnClickListener() { // from class: com.android.launcher3.activity.TabT1gcFragment$$ExternalSyntheticLambda0
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            TabT1gcFragment.tabClickListener$lambda$1(this.f$0, view);
        }
    };

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public TabT1gcFragment() {
        final TabT1gcFragment tabT1gcFragment = this;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(tabT1gcFragment, Reflection.getOrCreateKotlinClass(AppListViewModel.class), new Function0<ViewModelStore>() { // from class: com.android.launcher3.activity.TabT1gcFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                FragmentActivity fragmentActivityRequireActivity = tabT1gcFragment.requireActivity();
                Intrinsics.checkExpressionValueIsNotNull(fragmentActivityRequireActivity, "requireActivity()");
                ViewModelStore viewModelStore = fragmentActivityRequireActivity.getViewModelStore();
                Intrinsics.checkExpressionValueIsNotNull(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.android.launcher3.activity.TabT1gcFragment$special$$inlined$activityViewModels$default$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                FragmentActivity fragmentActivityRequireActivity = tabT1gcFragment.requireActivity();
                Intrinsics.checkExpressionValueIsNotNull(fragmentActivityRequireActivity, "requireActivity()");
                ViewModelProvider.Factory defaultViewModelProviderFactory = fragmentActivityRequireActivity.getDefaultViewModelProviderFactory();
                Intrinsics.checkExpressionValueIsNotNull(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AppListViewModel getViewModel() {
        return (AppListViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void tabClickListener$lambda$1(TabT1gcFragment this$0, View v) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentTabT1gcBinding fragmentTabT1gcBinding = this$0.binding;
        if (fragmentTabT1gcBinding != null) {
            if (v == fragmentTabT1gcBinding.tvTabApps) {
                if (this$0.getViewModel().getTabPositionValue() != 0) {
                    this$0.getViewModel().changeTab(0, "tabClick_T1GC");
                }
            } else {
                if (v != fragmentTabT1gcBinding.tvTabMixLauncher || this$0.getViewModel().getTabPositionValue() == 1) {
                    return;
                }
                int mixLauncherPositionValue = this$0.getViewModel().getMixLauncherPositionValue();
                if (mixLauncherPositionValue == 0) {
                    Intrinsics.checkNotNullExpressionValue(v, "v");
                    this$0.onClickCarLink(v, "Tab-T1GC-Click");
                } else {
                    if (mixLauncherPositionValue != 1) {
                        return;
                    }
                    Intrinsics.checkNotNullExpressionValue(v, "v");
                    this$0.onClickHiCar(v, "Tab-T1GC-Click");
                }
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentTabT1gcBinding fragmentTabT1gcBindingInflate = FragmentTabT1gcBinding.inflate(getLayoutInflater(), container, false);
        this.binding = fragmentTabT1gcBindingInflate;
        return fragmentTabT1gcBindingInflate != null ? fragmentTabT1gcBindingInflate.getRoot() : null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(final View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        final FragmentTabT1gcBinding fragmentTabT1gcBinding = this.binding;
        if (fragmentTabT1gcBinding != null) {
            updateTextColor(getViewModel().getTabPositionValue());
            fragmentTabT1gcBinding.tvTabApps.setOnClickListener(this.tabClickListener);
            fragmentTabT1gcBinding.tvTabMixLauncher.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.launcher3.activity.TabT1gcFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return TabT1gcFragment.onViewCreated$lambda$4$lambda$2(this.f$0, fragmentTabT1gcBinding, view2, motionEvent);
                }
            });
            fragmentTabT1gcBinding.tvTabMixLauncher.setOnDropDownItemClickListener(new MixLauncherSpinner.OnDropDownItemClickListener() { // from class: com.android.launcher3.activity.TabT1gcFragment$$ExternalSyntheticLambda2
                @Override // com.android.launcher3.activity.view.MixLauncherSpinner.OnDropDownItemClickListener
                public final void onItemClicked(int i) {
                    TabT1gcFragment.onViewCreated$lambda$4$lambda$3(this.f$0, view, i);
                }
            });
        }
        LiveData<Integer> tabPosition = getViewModel().getTabPosition();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        final Function1<Integer, Unit> function1 = new Function1<Integer, Unit>() { // from class: com.android.launcher3.activity.TabT1gcFragment.onViewCreated.2
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
                TabT1gcFragment tabT1gcFragment = TabT1gcFragment.this;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                tabT1gcFragment.updateSelected(it.intValue(), TabT1gcFragment.this.getViewModel().getMixLauncherPositionValue());
            }
        };
        tabPosition.observe(viewLifecycleOwner, new Observer() { // from class: com.android.launcher3.activity.TabT1gcFragment$$ExternalSyntheticLambda3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                TabT1gcFragment.onViewCreated$lambda$5(function1, obj);
            }
        });
        LiveData<Integer> mixLauncherPosition = getViewModel().getMixLauncherPosition();
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        final Function1<Integer, Unit> function2 = new Function1<Integer, Unit>() { // from class: com.android.launcher3.activity.TabT1gcFragment.onViewCreated.3
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
                MixLauncherSpinner mixLauncherSpinner;
                TabT1gcFragment tabT1gcFragment = TabT1gcFragment.this;
                int tabPositionValue = tabT1gcFragment.getViewModel().getTabPositionValue();
                Intrinsics.checkNotNullExpressionValue(it, "it");
                tabT1gcFragment.updateSelected(tabPositionValue, it.intValue());
                FragmentTabT1gcBinding fragmentTabT1gcBinding2 = TabT1gcFragment.this.binding;
                if (fragmentTabT1gcBinding2 == null || (mixLauncherSpinner = fragmentTabT1gcBinding2.tvTabMixLauncher) == null) {
                    return;
                }
                mixLauncherSpinner.setPosition(it.intValue());
            }
        };
        mixLauncherPosition.observe(viewLifecycleOwner2, new Observer() { // from class: com.android.launcher3.activity.TabT1gcFragment$$ExternalSyntheticLambda4
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                TabT1gcFragment.onViewCreated$lambda$6(function2, obj);
            }
        });
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext()");
        LiveData<Boolean> carLinkState = LinkManagerKt.getLinkManager(contextRequireContext).getCarLinkState();
        LifecycleOwner viewLifecycleOwner3 = getViewLifecycleOwner();
        final Function1<Boolean, Unit> function3 = new Function1<Boolean, Unit>() { // from class: com.android.launcher3.activity.TabT1gcFragment.onViewCreated.4
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke2(bool);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Boolean it) {
                MixLauncherSpinner mixLauncherSpinner;
                FragmentTabT1gcBinding fragmentTabT1gcBinding2 = TabT1gcFragment.this.binding;
                if (fragmentTabT1gcBinding2 == null || (mixLauncherSpinner = fragmentTabT1gcBinding2.tvTabMixLauncher) == null) {
                    return;
                }
                Intrinsics.checkNotNullExpressionValue(it, "it");
                mixLauncherSpinner.updateName(it.booleanValue());
            }
        };
        carLinkState.observe(viewLifecycleOwner3, new Observer() { // from class: com.android.launcher3.activity.TabT1gcFragment$$ExternalSyntheticLambda5
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                TabT1gcFragment.onViewCreated$lambda$7(function3, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onViewCreated$lambda$4$lambda$2(TabT1gcFragment this$0, FragmentTabT1gcBinding this_apply, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        if (this$0.getViewModel().getTabPositionValue() == 1) {
            return false;
        }
        if (motionEvent.getAction() == 1) {
            this_apply.tvTabMixLauncher.playSoundEffect(0);
            this$0.tabClickListener.onClick(view);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$4$lambda$3(TabT1gcFragment this$0, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(view, "$view");
        MLog.d(TAG, "onItemClicked: position=" + i);
        if (this$0.getViewModel().getMixLauncherPositionValue() == i) {
            return;
        }
        if (i == 0) {
            this$0.onClickCarLink(view, "item_selected");
        } else {
            if (i != 1) {
                return;
            }
            this$0.onClickHiCar(view, "item_selected");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$5(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$6(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$7(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateSelected(int tabPosition, int mixLauncherPosition) {
        MLog.d(TAG, "updateSelected: " + tabPosition + ' ' + mixLauncherPosition);
        updateTextColor(tabPosition);
        updateMixLauncherText(mixLauncherPosition);
    }

    private final void updateMixLauncherText(int mixLauncherPosition) {
        FragmentTabT1gcBinding fragmentTabT1gcBinding = this.binding;
        if (fragmentTabT1gcBinding != null) {
            if (mixLauncherPosition == 0 || mixLauncherPosition == 1) {
                fragmentTabT1gcBinding.tvTabMixLauncher.setSelection(mixLauncherPosition);
            }
        }
    }

    private final void updateTextColor(int tabPosition) {
        int color;
        int color2;
        FragmentTabT1gcBinding fragmentTabT1gcBinding = this.binding;
        if (fragmentTabT1gcBinding != null) {
            TextView textView = fragmentTabT1gcBinding.tvTabApps;
            if (tabPosition == 0) {
                color = getResources().getColor(R.color.widget_table_title_selected);
            } else {
                color = getResources().getColor(R.color.widget_table_title_unselected);
            }
            textView.setTextColor(color);
            MixLauncherSpinner mixLauncherSpinner = fragmentTabT1gcBinding.tvTabMixLauncher;
            if (tabPosition == 1) {
                color2 = getResources().getColor(R.color.widget_table_title_selected);
            } else {
                color2 = getResources().getColor(R.color.widget_table_title_unselected);
            }
            mixLauncherSpinner.setTextColor(color2);
        }
    }

    public final void resetSelection(String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        MLog.d(TAG, "resetSelection: " + reason);
        FragmentTabT1gcBinding fragmentTabT1gcBinding = this.binding;
        if (fragmentTabT1gcBinding == null || fragmentTabT1gcBinding.tvTabMixLauncher.getSelectedItemPosition() == getViewModel().getMixLauncherPositionValue()) {
            return;
        }
        fragmentTabT1gcBinding.tvTabMixLauncher.setSelection(getViewModel().getMixLauncherPositionValue());
    }

    private final void onClickHiCar(View v, String reason) {
        FragmentActivity activity = getActivity();
        AppListActivity appListActivity = activity instanceof AppListActivity ? (AppListActivity) activity : null;
        if (appListActivity != null) {
            appListActivity.onClickHiCar(v, reason);
        }
    }

    private final void onClickCarLink(View v, String reason) {
        FragmentActivity activity = getActivity();
        AppListActivity appListActivity = activity instanceof AppListActivity ? (AppListActivity) activity : null;
        if (appListActivity != null) {
            appListActivity.onClickCarLink(v, reason);
        }
    }
}
