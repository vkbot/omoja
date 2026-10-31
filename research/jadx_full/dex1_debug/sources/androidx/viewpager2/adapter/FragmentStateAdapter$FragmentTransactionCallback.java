package androidx.viewpager2.adapter;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle$State;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class FragmentStateAdapter$FragmentTransactionCallback {

    @NonNull
    private static final FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener NO_OP = new FragmentStateAdapter$FragmentTransactionCallback$1();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener onFragmentMaxLifecyclePreUpdated(@NonNull Fragment fragment, @NonNull Lifecycle$State lifecycle$State) {
        return NO_OP;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener onFragmentPreAdded(@NonNull Fragment fragment) {
        return NO_OP;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener onFragmentPreRemoved(@NonNull Fragment fragment) {
        return NO_OP;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @FragmentStateAdapter$ExperimentalFragmentStateAdapterApi
    public FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener onFragmentPreSavedInstanceState(@NonNull Fragment fragment) {
        return NO_OP;
    }
}
