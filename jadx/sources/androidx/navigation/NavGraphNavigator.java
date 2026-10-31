package androidx.navigation;

import ai.onnxruntime.AbstractC0074a;
import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import p099j1.C1929i;
import p142n0.C2467b;
import p253y8.InterfaceC3683t;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Navigator.Name(NotificationCompat.CATEGORY_NAVIGATION)
@Metadata(m3158d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J+\u0010\u000e\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J1\u0010\u000e\u001a\u00020\r2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u00122\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u0014R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0015R\u001d\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00120\u00168F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, m3159d2 = {"Landroidx/navigation/NavGraphNavigator;", "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavGraph;", "Landroidx/navigation/NavigatorProvider;", "navigatorProvider", "<init>", "(Landroidx/navigation/NavigatorProvider;)V", "Landroidx/navigation/NavBackStackEntry;", "entry", "Landroidx/navigation/NavOptions;", "navOptions", "Landroidx/navigation/Navigator$Extras;", "navigatorExtras", "", "navigate", "(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V", "createDestination", "()Landroidx/navigation/NavGraph;", "", "entries", "(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V", "Landroidx/navigation/NavigatorProvider;", "Ly8/t;", "getBackStack", "()Ly8/t;", "backStack", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavGraphNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraphNavigator.kt\nandroidx/navigation/NavGraphNavigator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n1#2:129\n*E\n"})
public class NavGraphNavigator extends Navigator<NavGraph> {
    private final NavigatorProvider navigatorProvider;

    public NavGraphNavigator(NavigatorProvider navigatorProvider) {
        navigatorProvider.getClass();
        this.navigatorProvider = navigatorProvider;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [T, android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r5v1, types: [T, android.os.Bundle] */
    private final void navigate(NavBackStackEntry entry, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        NavDestination destination = entry.getDestination();
        destination.getClass();
        NavGraph navGraph = (NavGraph) destination;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = entry.getArguments();
        int startDestId = navGraph.getStartDestId();
        String startDestinationRoute = navGraph.getStartDestinationRoute();
        if (startDestId == 0 && startDestinationRoute == null) {
            C2467b.m3836z(navGraph.getDisplayName(), "no start destination defined via app:startDestination for ");
            return;
        }
        NavDestination navDestinationFindNode = startDestinationRoute != null ? navGraph.findNode(startDestinationRoute, false) : navGraph.getNodes().get(startDestId);
        if (navDestinationFindNode == null) {
            C1929i.m3029k(AbstractC0074a.m162m("navigation destination ", navGraph.getStartDestDisplayName(), " is not a direct child of this NavGraph"));
            return;
        }
        if (startDestinationRoute != null) {
            if (!Intrinsics.areEqual(startDestinationRoute, navDestinationFindNode.getRoute())) {
                NavDestination.DeepLinkMatch deepLinkMatchMatchRoute = navDestinationFindNode.matchRoute(startDestinationRoute);
                Bundle matchingArgs = deepLinkMatchMatchRoute != null ? deepLinkMatchMatchRoute.getMatchingArgs() : null;
                if (matchingArgs != null && !matchingArgs.isEmpty()) {
                    ?? bundle = new Bundle();
                    bundle.putAll(matchingArgs);
                    T t = objectRef.element;
                    if (((Bundle) t) != null) {
                        bundle.putAll((Bundle) t);
                    }
                    objectRef.element = bundle;
                }
            }
            if (!navDestinationFindNode.getArguments().isEmpty()) {
                List<String> listMissingRequiredArguments = NavArgumentKt.missingRequiredArguments(navDestinationFindNode.getArguments(), new Function1<String, Boolean>() { // from class: androidx.navigation.NavGraphNavigator$navigate$missingRequiredArgs$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Boolean invoke(String str) {
                        str.getClass();
                        Bundle bundle2 = objectRef.element;
                        boolean z9 = true;
                        if (bundle2 != null && bundle2.containsKey(str)) {
                            z9 = false;
                        }
                        return Boolean.valueOf(z9);
                    }
                });
                if (!listMissingRequiredArguments.isEmpty()) {
                    C2467b.m3831u("Cannot navigate to startDestination ", navDestinationFindNode, ". Missing required arguments [", listMissingRequiredArguments, 93);
                    return;
                }
            }
        }
        this.navigatorProvider.getNavigator(navDestinationFindNode.getNavigatorName()).navigate(CollectionsKt.listOf(getState().createBackStackEntry(navDestinationFindNode, navDestinationFindNode.addInDefaultArgs((Bundle) objectRef.element))), navOptions, navigatorExtras);
    }

    @Override // androidx.navigation.Navigator
    public NavGraph createDestination() {
        return new NavGraph(this);
    }

    public final InterfaceC3683t getBackStack() {
        return getState().getBackStack();
    }

    @Override // androidx.navigation.Navigator
    public void navigate(List<NavBackStackEntry> entries, NavOptions navOptions, Navigator.Extras navigatorExtras) {
        entries.getClass();
        Iterator<NavBackStackEntry> it = entries.iterator();
        while (it.hasNext()) {
            navigate(it.next(), navOptions, navigatorExtras);
        }
    }
}
