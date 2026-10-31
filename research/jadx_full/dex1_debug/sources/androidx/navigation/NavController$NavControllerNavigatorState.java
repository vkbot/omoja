package androidx.navigation;

import android.os.Bundle;
import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.lifecycle.Lifecycle$State;
import j1.i;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u000bH\u0016J\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u000bH\u0016J\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0019\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0019"}, d2 = {"Landroidx/navigation/NavController$NavControllerNavigatorState;", "Landroidx/navigation/NavigatorState;", "navigator", "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavDestination;", "(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V", "getNavigator", "()Landroidx/navigation/Navigator;", "addInternal", "", "backStackEntry", "Landroidx/navigation/NavBackStackEntry;", "createBackStackEntry", "destination", "arguments", "Landroid/os/Bundle;", "markTransitionComplete", "entry", "pop", "popUpTo", "saveState", "", "popWithTransition", "prepareForTransition", "push", "navigation-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavController.kt\nandroidx/navigation/NavController$NavControllerNavigatorState\n+ 2 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2927:1\n146#2:2928\n146#2:2929\n2624#3,3:2930\n*S KotlinDebug\n*F\n+ 1 NavController.kt\nandroidx/navigation/NavController$NavControllerNavigatorState\n*L\n297#1:2928\n330#1:2929\n360#1:2930,3\n*E\n"})
public final class NavController$NavControllerNavigatorState extends NavigatorState {
    private final Navigator<? extends NavDestination> navigator;
    final /* synthetic */ NavController this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NavController$NavControllerNavigatorState(NavController navController, Navigator<? extends NavDestination> navigator) {
        navigator.getClass();
        this.this$0 = navController;
        this.navigator = navigator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$pop$s261051546(NavController$NavControllerNavigatorState navController$NavControllerNavigatorState, NavBackStackEntry navBackStackEntry, boolean z8) {
        super.pop(navBackStackEntry, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void addInternal(NavBackStackEntry backStackEntry) {
        backStackEntry.getClass();
        super.push(backStackEntry);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavigatorState
    public NavBackStackEntry createBackStackEntry(NavDestination destination, Bundle arguments) {
        destination.getClass();
        return NavBackStackEntry$Companion.create$default(NavBackStackEntry.Companion, this.this$0.getContext(), destination, arguments, this.this$0.getHostLifecycleState$navigation_runtime_release(), NavController.access$getViewModel$p(this.this$0), null, null, 96, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Navigator<? extends NavDestination> getNavigator() {
        return this.navigator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavigatorState
    public void markTransitionComplete(NavBackStackEntry entry) {
        NavControllerViewModel navControllerViewModelAccess$getViewModel$p;
        entry.getClass();
        boolean zAreEqual = Intrinsics.areEqual(NavController.access$getEntrySavedState$p(this.this$0).get(entry), Boolean.TRUE);
        super.markTransitionComplete(entry);
        NavController.access$getEntrySavedState$p(this.this$0).remove(entry);
        if (NavController.access$getBackQueue$p(this.this$0).contains(entry)) {
            if (getIsNavigating()) {
                return;
            }
            this.this$0.updateBackStackLifecycle$navigation_runtime_release();
            NavController.access$get_currentBackStack$p(this.this$0).f(CollectionsKt.toMutableList((Collection) NavController.access$getBackQueue$p(this.this$0)));
            NavController.access$get_visibleEntries$p(this.this$0).f(this.this$0.populateVisibleEntries$navigation_runtime_release());
            return;
        }
        this.this$0.unlinkChildFromParent$navigation_runtime_release(entry);
        if (entry.getLifecycle().getState().isAtLeast(Lifecycle$State.CREATED)) {
            entry.setMaxLifecycle(Lifecycle$State.DESTROYED);
        }
        ArrayDeque arrayDequeAccess$getBackQueue$p = NavController.access$getBackQueue$p(this.this$0);
        if (arrayDequeAccess$getBackQueue$p == null || !arrayDequeAccess$getBackQueue$p.isEmpty()) {
            Iterator<E> it = arrayDequeAccess$getBackQueue$p.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(((NavBackStackEntry) it.next()).getId(), entry.getId())) {
                }
            }
            if (!zAreEqual && (navControllerViewModelAccess$getViewModel$p = NavController.access$getViewModel$p(this.this$0)) != null) {
                navControllerViewModelAccess$getViewModel$p.clear(entry.getId());
            }
        } else if (!zAreEqual) {
            navControllerViewModelAccess$getViewModel$p.clear(entry.getId());
        }
        this.this$0.updateBackStackLifecycle$navigation_runtime_release();
        NavController.access$get_visibleEntries$p(this.this$0).f(this.this$0.populateVisibleEntries$navigation_runtime_release());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavigatorState
    public void pop(NavBackStackEntry popUpTo, boolean saveState) {
        popUpTo.getClass();
        Navigator navigator = NavController.access$get_navigatorProvider$p(this.this$0).getNavigator(popUpTo.getDestination().getNavigatorName());
        NavController.access$getEntrySavedState$p(this.this$0).put(popUpTo, Boolean.valueOf(saveState));
        boolean zAreEqual = Intrinsics.areEqual(navigator, this.navigator);
        NavController navController = this.this$0;
        if (!zAreEqual) {
            Object obj = NavController.access$getNavigatorState$p(navController).get(navigator);
            obj.getClass();
            ((NavController$NavControllerNavigatorState) obj).pop(popUpTo, saveState);
        } else {
            Function1 function1Access$getPopFromBackStackHandler$p = NavController.access$getPopFromBackStackHandler$p(navController);
            if (function1Access$getPopFromBackStackHandler$p == null) {
                this.this$0.popBackStackFromNavigator$navigation_runtime_release(popUpTo, new NavController$NavControllerNavigatorState$pop$1(this, popUpTo, saveState));
            } else {
                function1Access$getPopFromBackStackHandler$p.invoke(popUpTo);
                super.pop(popUpTo, saveState);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavigatorState
    public void popWithTransition(NavBackStackEntry popUpTo, boolean saveState) {
        popUpTo.getClass();
        super.popWithTransition(popUpTo, saveState);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavigatorState
    public void prepareForTransition(NavBackStackEntry entry) {
        entry.getClass();
        super.prepareForTransition(entry);
        if (NavController.access$getBackQueue$p(this.this$0).contains(entry)) {
            entry.setMaxLifecycle(Lifecycle$State.STARTED);
        } else {
            i.l("Cannot transition entry that is not in the back stack");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavigatorState
    public void push(NavBackStackEntry backStackEntry) {
        backStackEntry.getClass();
        Navigator navigator = NavController.access$get_navigatorProvider$p(this.this$0).getNavigator(backStackEntry.getDestination().getNavigatorName());
        boolean zAreEqual = Intrinsics.areEqual(navigator, this.navigator);
        NavController navController = this.this$0;
        if (!zAreEqual) {
            Object obj = NavController.access$getNavigatorState$p(navController).get(navigator);
            if (obj != null) {
                ((NavController$NavControllerNavigatorState) obj).push(backStackEntry);
                return;
            } else {
                b.f(backStackEntry.getDestination().getNavigatorName(), "NavigatorBackStack for ", " should already be created");
                return;
            }
        }
        Function1 function1Access$getAddToBackStackHandler$p = NavController.access$getAddToBackStackHandler$p(navController);
        if (function1Access$getAddToBackStackHandler$p != null) {
            function1Access$getAddToBackStackHandler$p.invoke(backStackEntry);
            addInternal(backStackEntry);
        } else {
            Log.i("NavController", "Ignoring add of destination " + backStackEntry.getDestination() + " outside of the call to navigate(). ");
        }
    }
}
