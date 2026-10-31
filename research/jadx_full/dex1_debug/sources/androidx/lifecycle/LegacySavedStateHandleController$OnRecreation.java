package androidx.lifecycle;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistry$AutoRecreated;
import androidx.savedstate.SavedStateRegistryOwner;
import j1.i;
import java.util.Iterator;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Landroidx/lifecycle/LegacySavedStateHandleController$OnRecreation;", "Landroidx/savedstate/SavedStateRegistry$AutoRecreated;", "()V", "onRecreated", "", "owner", "Landroidx/savedstate/SavedStateRegistryOwner;", "lifecycle-viewmodel-savedstate_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class LegacySavedStateHandleController$OnRecreation implements SavedStateRegistry$AutoRecreated {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.savedstate.SavedStateRegistry$AutoRecreated
    public void onRecreated(SavedStateRegistryOwner owner) {
        owner.getClass();
        if (!(owner instanceof ViewModelStoreOwner)) {
            i.l("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner");
            return;
        }
        ViewModelStore viewModelStore = ((ViewModelStoreOwner) owner).getViewModelStore();
        SavedStateRegistry savedStateRegistry = owner.getSavedStateRegistry();
        Iterator<String> it = viewModelStore.keys().iterator();
        while (it.hasNext()) {
            ViewModel viewModel = viewModelStore.get(it.next());
            viewModel.getClass();
            LegacySavedStateHandleController.attachHandleIfNeeded(viewModel, savedStateRegistry, owner.getLifecycle());
        }
        if (viewModelStore.keys().isEmpty()) {
            return;
        }
        savedStateRegistry.runOnNextRecreation(LegacySavedStateHandleController$OnRecreation.class);
    }
}
