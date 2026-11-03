package com.android.launcher3.activity;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import com.android.launcher3.LauncherSettings;
import com.android.launcher3.activity.model.AppListViewModel;
import com.android.launcher3.databinding.FragmentMixLauncherBinding;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import mega.log.MLog;

/* JADX INFO: compiled from: MixLauncherFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0018\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0019H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u001c"}, d2 = {"Lcom/android/launcher3/activity/MixLauncherFragment;", "Landroidx/fragment/app/Fragment;", "()V", "binding", "Lcom/android/launcher3/databinding/FragmentMixLauncherBinding;", "viewModel", "Lcom/android/launcher3/activity/model/AppListViewModel;", "getViewModel", "()Lcom/android/launcher3/activity/model/AppListViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", LauncherSettings.Favorites.CONTAINER, "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "", "onViewCreated", "view", "updateSelected", "tabPosition", "", "mixLauncherPosition", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MixLauncherFragment extends Fragment {
    private static final String TAG = "MixLauncherFragment";
    private FragmentMixLauncherBinding binding;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public MixLauncherFragment() {
        final MixLauncherFragment mixLauncherFragment = this;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(mixLauncherFragment, Reflection.getOrCreateKotlinClass(AppListViewModel.class), new Function0<ViewModelStore>() { // from class: com.android.launcher3.activity.MixLauncherFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                FragmentActivity fragmentActivityRequireActivity = mixLauncherFragment.requireActivity();
                Intrinsics.checkExpressionValueIsNotNull(fragmentActivityRequireActivity, "requireActivity()");
                ViewModelStore viewModelStore = fragmentActivityRequireActivity.getViewModelStore();
                Intrinsics.checkExpressionValueIsNotNull(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.android.launcher3.activity.MixLauncherFragment$special$$inlined$activityViewModels$default$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                FragmentActivity fragmentActivityRequireActivity = mixLauncherFragment.requireActivity();
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

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentMixLauncherBinding fragmentMixLauncherBindingInflate = FragmentMixLauncherBinding.inflate(getLayoutInflater());
        this.binding = fragmentMixLauncherBindingInflate;
        return fragmentMixLauncherBindingInflate != null ? fragmentMixLauncherBindingInflate.getRoot() : null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        LiveData<Integer> tabPosition = getViewModel().getTabPosition();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        final Function1<Integer, Unit> function1 = new Function1<Integer, Unit>() { // from class: com.android.launcher3.activity.MixLauncherFragment.onViewCreated.1
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
                MixLauncherFragment mixLauncherFragment = MixLauncherFragment.this;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                mixLauncherFragment.updateSelected(it.intValue(), MixLauncherFragment.this.getViewModel().getMixLauncherPositionValue());
            }
        };
        tabPosition.observe(viewLifecycleOwner, new Observer() { // from class: com.android.launcher3.activity.MixLauncherFragment$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MixLauncherFragment.onViewCreated$lambda$0(function1, obj);
            }
        });
        LiveData<Integer> mixLauncherPosition = getViewModel().getMixLauncherPosition();
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        final Function1<Integer, Unit> function2 = new Function1<Integer, Unit>() { // from class: com.android.launcher3.activity.MixLauncherFragment.onViewCreated.2
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
                MixLauncherFragment mixLauncherFragment = MixLauncherFragment.this;
                int tabPositionValue = mixLauncherFragment.getViewModel().getTabPositionValue();
                Intrinsics.checkNotNullExpressionValue(it, "it");
                mixLauncherFragment.updateSelected(tabPositionValue, it.intValue());
            }
        };
        mixLauncherPosition.observe(viewLifecycleOwner2, new Observer() { // from class: com.android.launcher3.activity.MixLauncherFragment$$ExternalSyntheticLambda1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MixLauncherFragment.onViewCreated$lambda$1(function2, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateSelected(int tabPosition, int mixLauncherPosition) {
        MLog.d(TAG, "updateSelected: " + tabPosition + ' ' + mixLauncherPosition);
        FragmentMixLauncherBinding fragmentMixLauncherBinding = this.binding;
        if (fragmentMixLauncherBinding != null) {
            if (tabPosition != 1) {
                fragmentMixLauncherBinding.hicarAppList.setVisibility(8);
                fragmentMixLauncherBinding.carlinkAppList.setVisibility(8);
            } else if (mixLauncherPosition == 0) {
                fragmentMixLauncherBinding.carlinkAppList.setVisibility(0);
                fragmentMixLauncherBinding.hicarAppList.setVisibility(8);
            } else {
                if (mixLauncherPosition != 1) {
                    return;
                }
                fragmentMixLauncherBinding.hicarAppList.setVisibility(0);
                fragmentMixLauncherBinding.carlinkAppList.setVisibility(8);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding = null;
    }
}
