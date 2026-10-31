package androidx.navigation.fragment;

import android.util.Log;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/LifecycleEventObserver;", "entry", "Landroidx/navigation/NavBackStackEntry;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class FragmentNavigator$fragmentViewObserver$1 extends Lambda implements Function1<NavBackStackEntry, LifecycleEventObserver> {
    final /* synthetic */ FragmentNavigator this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentNavigator$fragmentViewObserver$1(FragmentNavigator fragmentNavigator) {
        super(1);
        this.this$0 = fragmentNavigator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void a(FragmentNavigator fragmentNavigator, NavBackStackEntry navBackStackEntry, LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        invoke$lambda$0(fragmentNavigator, navBackStackEntry, lifecycleOwner, lifecycle$Event);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final void invoke$lambda$0(FragmentNavigator fragmentNavigator, NavBackStackEntry navBackStackEntry, LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        fragmentNavigator.getClass();
        navBackStackEntry.getClass();
        lifecycleOwner.getClass();
        lifecycle$Event.getClass();
        if (lifecycle$Event == Lifecycle$Event.ON_RESUME && ((List) FragmentNavigator.access$getState(fragmentNavigator).getBackStack().getValue()).contains(navBackStackEntry)) {
            if (FragmentNavigator.access$isLoggingEnabled(fragmentNavigator, 2)) {
                Log.v("FragmentNavigator", "Marking transition complete for entry " + navBackStackEntry + " due to fragment " + lifecycleOwner + " view lifecycle reaching RESUMED");
            }
            FragmentNavigator.access$getState(fragmentNavigator).markTransitionComplete(navBackStackEntry);
        }
        if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
            if (FragmentNavigator.access$isLoggingEnabled(fragmentNavigator, 2)) {
                Log.v("FragmentNavigator", "Marking transition complete for entry " + navBackStackEntry + " due to fragment " + lifecycleOwner + " view lifecycle reaching DESTROYED");
            }
            FragmentNavigator.access$getState(fragmentNavigator).markTransitionComplete(navBackStackEntry);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final LifecycleEventObserver invoke2(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        return new d(this.this$0, navBackStackEntry);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ LifecycleEventObserver invoke(NavBackStackEntry navBackStackEntry) {
        return invoke2(navBackStackEntry);
    }
}
