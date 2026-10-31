package androidx.navigation;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\b\b\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Landroidx/navigation/NavBackStackEntry;", "D", "Landroidx/navigation/NavDestination;", "backStackEntry", "invoke"}, k = 3, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class Navigator$navigate$1 extends Lambda implements Function1<NavBackStackEntry, NavBackStackEntry> {
    final /* synthetic */ NavOptions $navOptions;
    final /* synthetic */ Navigator$Extras $navigatorExtras;
    final /* synthetic */ Navigator<D> this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Navigator$navigate$1(Navigator<D> navigator, NavOptions navOptions, Navigator$Extras navigator$Extras) {
        super(1);
        this.this$0 = navigator;
        this.$navOptions = navOptions;
        this.$navigatorExtras = navigator$Extras;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final NavBackStackEntry invoke2(NavBackStackEntry navBackStackEntry) {
        NavDestination navDestinationNavigate;
        navBackStackEntry.getClass();
        NavDestination destination = navBackStackEntry.getDestination();
        if (destination == null) {
            destination = null;
        }
        if (destination == null || (navDestinationNavigate = this.this$0.navigate(destination, navBackStackEntry.getArguments(), this.$navOptions, this.$navigatorExtras)) == null) {
            return null;
        }
        return Intrinsics.areEqual(navDestinationNavigate, destination) ? navBackStackEntry : this.this$0.getState().createBackStackEntry(navDestinationNavigate, navDestinationNavigate.addInDefaultArgs(navBackStackEntry.getArguments()));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ NavBackStackEntry invoke(NavBackStackEntry navBackStackEntry) {
        return invoke2(navBackStackEntry);
    }
}
