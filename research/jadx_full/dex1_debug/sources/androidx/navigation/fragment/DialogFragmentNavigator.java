package androidx.navigation.fragment;

import android.content.Context;
import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.navigation.Navigator$Extras;
import androidx.navigation.Navigator$Name;
import androidx.navigation.NavigatorState;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.TypeIntrinsics;
import y8.t;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Navigator$Name("dialog")
@Metadata(d1 = {"\u0000{\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001/\b\u0007\u0018\u0000 92\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00029:B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ1\u0010\u0013\u001a\u00020\u000f2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b\u0013\u0010\"J\u0017\u0010$\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000bH\u0016¢\u0006\u0004\b$\u0010\u0014J\u0017\u0010'\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010)R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010*R\u001a\u0010-\u001a\b\u0012\u0004\u0012\u00020,0+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00100\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R \u00103\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u0015028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R \u00108\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u001c058@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b6\u00107¨\u0006;"}, d2 = {"Landroidx/navigation/fragment/DialogFragmentNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;", "Landroid/content/Context;", "context", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "<init>", "(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V", "", "popUpToIndex", "Landroidx/navigation/NavBackStackEntry;", "popUpTo", "", "savedState", "", "popWithTransition", "(ILandroidx/navigation/NavBackStackEntry;Z)V", "entry", "navigate", "(Landroidx/navigation/NavBackStackEntry;)V", "Landroidx/fragment/app/DialogFragment;", "createDialogFragment", "(Landroidx/navigation/NavBackStackEntry;)Landroidx/fragment/app/DialogFragment;", "popBackStack", "(Landroidx/navigation/NavBackStackEntry;Z)V", "createDestination", "()Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;", "", "entries", "Landroidx/navigation/NavOptions;", "navOptions", "Landroidx/navigation/Navigator$Extras;", "navigatorExtras", "(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V", "backStackEntry", "onLaunchSingleTop", "Landroidx/navigation/NavigatorState;", "state", "onAttach", "(Landroidx/navigation/NavigatorState;)V", "Landroid/content/Context;", "Landroidx/fragment/app/FragmentManager;", "", "", "restoredTagsAwaitingAttach", "Ljava/util/Set;", "androidx/navigation/fragment/DialogFragmentNavigator$observer$1", "observer", "Landroidx/navigation/fragment/DialogFragmentNavigator$observer$1;", "", "transitioningFragments", "Ljava/util/Map;", "Ly8/t;", "getBackStack$navigation_fragment_release", "()Ly8/t;", "backStack", "Companion", "Destination", "navigation-fragment_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class DialogFragmentNavigator extends Navigator<DialogFragmentNavigator$Destination> {
    private static final DialogFragmentNavigator$Companion Companion = new DialogFragmentNavigator$Companion(null);
    private static final String TAG = "DialogFragmentNavigator";
    private final Context context;
    private final FragmentManager fragmentManager;
    private final DialogFragmentNavigator$observer$1 observer;
    private final Set<String> restoredTagsAwaitingAttach;
    private final Map<String, DialogFragment> transitioningFragments;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DialogFragmentNavigator(Context context, FragmentManager fragmentManager) {
        context.getClass();
        fragmentManager.getClass();
        this.context = context;
        this.fragmentManager = fragmentManager;
        this.restoredTagsAwaitingAttach = new LinkedHashSet();
        this.observer = new DialogFragmentNavigator$observer$1(this);
        this.transitioningFragments = new LinkedHashMap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(DialogFragmentNavigator dialogFragmentNavigator, FragmentManager fragmentManager, Fragment fragment) {
        onAttach$lambda$1(dialogFragmentNavigator, fragmentManager, fragment);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ NavigatorState access$getState(DialogFragmentNavigator dialogFragmentNavigator) {
        return dialogFragmentNavigator.getState();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$popWithTransition(DialogFragmentNavigator dialogFragmentNavigator, int i9, NavBackStackEntry navBackStackEntry, boolean z8) {
        dialogFragmentNavigator.popWithTransition(i9, navBackStackEntry, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final DialogFragment createDialogFragment(NavBackStackEntry entry) {
        NavDestination destination = entry.getDestination();
        destination.getClass();
        DialogFragmentNavigator$Destination dialogFragmentNavigator$Destination = (DialogFragmentNavigator$Destination) destination;
        String className = dialogFragmentNavigator$Destination.getClassName();
        if (className.charAt(0) == '.') {
            className = this.context.getPackageName() + className;
        }
        Fragment fragmentInstantiate = this.fragmentManager.getFragmentFactory().instantiate(this.context.getClassLoader(), className);
        fragmentInstantiate.getClass();
        if (!DialogFragment.class.isAssignableFrom(fragmentInstantiate.getClass())) {
            ai.onnxruntime.b.v(dialogFragmentNavigator$Destination.getClassName(), "Dialog destination ", " is not an instance of DialogFragment");
            return null;
        }
        DialogFragment dialogFragment = (DialogFragment) fragmentInstantiate;
        dialogFragment.setArguments(entry.getArguments());
        dialogFragment.getLifecycle().addObserver(this.observer);
        this.transitioningFragments.put(entry.getId(), dialogFragment);
        return dialogFragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void navigate(NavBackStackEntry entry) {
        createDialogFragment(entry).show(this.fragmentManager, entry.getId());
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) CollectionsKt.lastOrNull((List) getState().getBackStack().getValue());
        boolean zContains = CollectionsKt.contains((Iterable) getState().getTransitionsInProgress().getValue(), navBackStackEntry);
        getState().pushWithTransition(entry);
        if (navBackStackEntry == null || zContains) {
            return;
        }
        getState().markTransitionComplete(navBackStackEntry);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void onAttach$lambda$1(DialogFragmentNavigator dialogFragmentNavigator, FragmentManager fragmentManager, Fragment fragment) {
        dialogFragmentNavigator.getClass();
        fragmentManager.getClass();
        fragment.getClass();
        Set<String> set = dialogFragmentNavigator.restoredTagsAwaitingAttach;
        if (TypeIntrinsics.asMutableCollection(set).remove(fragment.getTag())) {
            fragment.getLifecycle().addObserver(dialogFragmentNavigator.observer);
        }
        Map<String, DialogFragment> map = dialogFragmentNavigator.transitioningFragments;
        TypeIntrinsics.asMutableMap(map).remove(fragment.getTag());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void popWithTransition(int popUpToIndex, NavBackStackEntry popUpTo, boolean savedState) {
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) CollectionsKt.getOrNull((List) getState().getBackStack().getValue(), popUpToIndex - 1);
        boolean zContains = CollectionsKt.contains((Iterable) getState().getTransitionsInProgress().getValue(), navBackStackEntry);
        getState().popWithTransition(popUpTo, savedState);
        if (navBackStackEntry == null || zContains) {
            return;
        }
        getState().markTransitionComplete(navBackStackEntry);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.Navigator
    public DialogFragmentNavigator$Destination createDestination() {
        return new DialogFragmentNavigator$Destination(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final t getBackStack$navigation_fragment_release() {
        return getState().getBackStack();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.Navigator
    public void onAttach(NavigatorState state) {
        Lifecycle lifecycle;
        state.getClass();
        super.onAttach(state);
        for (NavBackStackEntry navBackStackEntry : (List) state.getBackStack().getValue()) {
            DialogFragment dialogFragment = (DialogFragment) this.fragmentManager.findFragmentByTag(navBackStackEntry.getId());
            if (dialogFragment == null || (lifecycle = dialogFragment.getLifecycle()) == null) {
                this.restoredTagsAwaitingAttach.add(navBackStackEntry.getId());
            } else {
                lifecycle.addObserver(this.observer);
            }
        }
        this.fragmentManager.addFragmentOnAttachListener(new a(this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.Navigator
    public void onLaunchSingleTop(NavBackStackEntry backStackEntry) {
        backStackEntry.getClass();
        if (this.fragmentManager.isStateSaved()) {
            Log.i(TAG, "Ignoring onLaunchSingleTop() call: FragmentManager has already saved its state");
            return;
        }
        DialogFragment dialogFragment = this.transitioningFragments.get(backStackEntry.getId());
        if (dialogFragment == null) {
            Fragment fragmentFindFragmentByTag = this.fragmentManager.findFragmentByTag(backStackEntry.getId());
            dialogFragment = fragmentFindFragmentByTag instanceof DialogFragment ? (DialogFragment) fragmentFindFragmentByTag : null;
        }
        if (dialogFragment != null) {
            dialogFragment.getLifecycle().removeObserver(this.observer);
            dialogFragment.dismiss();
        }
        createDialogFragment(backStackEntry).show(this.fragmentManager, backStackEntry.getId());
        getState().onLaunchSingleTopWithTransition(backStackEntry);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.Navigator
    public void popBackStack(NavBackStackEntry popUpTo, boolean savedState) {
        popUpTo.getClass();
        if (this.fragmentManager.isStateSaved()) {
            Log.i(TAG, "Ignoring popBackStack() call: FragmentManager has already saved its state");
            return;
        }
        List list = (List) getState().getBackStack().getValue();
        int iIndexOf = list.indexOf(popUpTo);
        Iterator it = CollectionsKt.reversed(list.subList(iIndexOf, list.size())).iterator();
        while (it.hasNext()) {
            Fragment fragmentFindFragmentByTag = this.fragmentManager.findFragmentByTag(((NavBackStackEntry) it.next()).getId());
            if (fragmentFindFragmentByTag != null) {
                ((DialogFragment) fragmentFindFragmentByTag).dismiss();
            }
        }
        popWithTransition(iIndexOf, popUpTo, savedState);
    }

    @Override // androidx.navigation.Navigator
    public /* bridge */ /* synthetic */ NavDestination createDestination() {
        return createDestination();
    }

    @Override // androidx.navigation.Navigator
    public void navigate(List<NavBackStackEntry> entries, NavOptions navOptions, Navigator$Extras navigatorExtras) {
        entries.getClass();
        if (this.fragmentManager.isStateSaved()) {
            Log.i(TAG, "Ignoring navigate() call: FragmentManager has already saved its state");
            return;
        }
        Iterator<NavBackStackEntry> it = entries.iterator();
        while (it.hasNext()) {
            navigate(it.next());
        }
    }
}
