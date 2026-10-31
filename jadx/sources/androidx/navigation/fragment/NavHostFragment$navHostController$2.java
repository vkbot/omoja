package androidx.navigation.fragment;

import android.content.Context;
import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.os.BundleKt;
import androidx.lifecycle.ViewModelStore;
import androidx.navigation.NavHostController;
import androidx.savedstate.SavedStateRegistry;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m3159d2 = {"<anonymous>", "Landroidx/navigation/NavHostController;", "invoke"}, m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class NavHostFragment$navHostController$2 extends Lambda implements Function0<NavHostController> {
    final /* synthetic */ NavHostFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostFragment$navHostController$2(NavHostFragment navHostFragment) {
        super(0);
        this.this$0 = navHostFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle invoke$lambda$5$lambda$2(NavHostController navHostController) {
        navHostController.getClass();
        Bundle bundleSaveState = navHostController.saveState();
        if (bundleSaveState != null) {
            return bundleSaveState;
        }
        Bundle bundle = Bundle.EMPTY;
        bundle.getClass();
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle invoke$lambda$5$lambda$4(NavHostFragment navHostFragment) {
        navHostFragment.getClass();
        if (navHostFragment.graphId != 0) {
            return BundleKt.bundleOf(TuplesKt.m3166to(NavHostFragment.KEY_GRAPH_ID, Integer.valueOf(navHostFragment.graphId)));
        }
        Bundle bundle = Bundle.EMPTY;
        bundle.getClass();
        return bundle;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final NavHostController invoke() {
        Context context = this.this$0.getContext();
        if (context == null) {
            C1929i.m3030l("NavController cannot be created before the fragment is attached");
            return null;
        }
        final NavHostController navHostController = new NavHostController(context);
        final NavHostFragment navHostFragment = this.this$0;
        navHostController.setLifecycleOwner(navHostFragment);
        ViewModelStore viewModelStore = navHostFragment.getViewModelStore();
        viewModelStore.getClass();
        navHostController.setViewModelStore(viewModelStore);
        navHostFragment.onCreateNavHostController(navHostController);
        Bundle bundleConsumeRestoredStateForKey = navHostFragment.getSavedStateRegistry().consumeRestoredStateForKey("android-support-nav:fragment:navControllerState");
        if (bundleConsumeRestoredStateForKey != null) {
            navHostController.restoreState(bundleConsumeRestoredStateForKey);
        }
        final int i10 = 0;
        navHostFragment.getSavedStateRegistry().registerSavedStateProvider("android-support-nav:fragment:navControllerState", new SavedStateRegistry.SavedStateProvider() { // from class: androidx.navigation.fragment.e
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle saveState() {
                switch (i10) {
                    case 0:
                        return NavHostFragment$navHostController$2.invoke$lambda$5$lambda$2((NavHostController) navHostController);
                    default:
                        return NavHostFragment$navHostController$2.invoke$lambda$5$lambda$4((NavHostFragment) navHostController);
                }
            }
        });
        Bundle bundleConsumeRestoredStateForKey2 = navHostFragment.getSavedStateRegistry().consumeRestoredStateForKey(NavHostFragment.KEY_GRAPH_ID);
        if (bundleConsumeRestoredStateForKey2 != null) {
            navHostFragment.graphId = bundleConsumeRestoredStateForKey2.getInt(NavHostFragment.KEY_GRAPH_ID);
        }
        final int i11 = 1;
        navHostFragment.getSavedStateRegistry().registerSavedStateProvider(NavHostFragment.KEY_GRAPH_ID, new SavedStateRegistry.SavedStateProvider() { // from class: androidx.navigation.fragment.e
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle saveState() {
                switch (i11) {
                    case 0:
                        return NavHostFragment$navHostController$2.invoke$lambda$5$lambda$2((NavHostController) navHostFragment);
                    default:
                        return NavHostFragment$navHostController$2.invoke$lambda$5$lambda$4((NavHostFragment) navHostFragment);
                }
            }
        });
        if (navHostFragment.graphId != 0) {
            navHostController.setGraph(navHostFragment.graphId);
            return navHostController;
        }
        Bundle arguments = navHostFragment.getArguments();
        int i12 = arguments != null ? arguments.getInt(NavHostFragment.KEY_GRAPH_ID) : 0;
        Bundle bundle = arguments != null ? arguments.getBundle(NavHostFragment.KEY_START_DESTINATION_ARGS) : null;
        if (i12 != 0) {
            navHostController.setGraph(i12, bundle);
        }
        return navHostController;
    }
}
