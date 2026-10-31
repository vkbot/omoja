package androidx.viewpager2.adapter;

import androidx.annotation.OptIn;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle$State;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentStateAdapter$FragmentEventDispatcher {
    private List<FragmentStateAdapter$FragmentTransactionCallback> mCallbacks = new CopyOnWriteArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener> dispatchMaxLifecyclePreUpdated(Fragment fragment, Lifecycle$State lifecycle$State) {
        ArrayList arrayList = new ArrayList();
        Iterator<FragmentStateAdapter$FragmentTransactionCallback> it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().onFragmentMaxLifecyclePreUpdated(fragment, lifecycle$State));
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchPostEvents(List<FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener> list) {
        Iterator<FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener> it = list.iterator();
        while (it.hasNext()) {
            it.next().onPost();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener> dispatchPreAdded(Fragment fragment) {
        ArrayList arrayList = new ArrayList();
        Iterator<FragmentStateAdapter$FragmentTransactionCallback> it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().onFragmentPreAdded(fragment));
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener> dispatchPreRemoved(Fragment fragment) {
        ArrayList arrayList = new ArrayList();
        Iterator<FragmentStateAdapter$FragmentTransactionCallback> it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().onFragmentPreRemoved(fragment));
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @OptIn(markerClass = {FragmentStateAdapter$ExperimentalFragmentStateAdapterApi.class})
    public List<FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener> dispatchPreSavedInstanceState(Fragment fragment) {
        ArrayList arrayList = new ArrayList();
        Iterator<FragmentStateAdapter$FragmentTransactionCallback> it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().onFragmentPreSavedInstanceState(fragment));
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void registerCallback(FragmentStateAdapter$FragmentTransactionCallback fragmentStateAdapter$FragmentTransactionCallback) {
        this.mCallbacks.add(fragmentStateAdapter$FragmentTransactionCallback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unregisterCallback(FragmentStateAdapter$FragmentTransactionCallback fragmentStateAdapter$FragmentTransactionCallback) {
        this.mCallbacks.remove(fragmentStateAdapter$FragmentTransactionCallback);
    }
}
