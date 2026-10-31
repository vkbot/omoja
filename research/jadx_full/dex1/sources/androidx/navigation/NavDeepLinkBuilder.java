package androidx.navigation;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.IdRes;
import androidx.annotation.NavigationRes;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.app.TaskStackBuilder;
import j1.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0002-.B\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001e\u0010\u0013\u001a\u00020\u00002\b\b\u0001\u0010\u0014\u001a\u00020\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0007J\u001c\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00182\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0007J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u001cJ\b\u0010\u001d\u001a\u00020\u001eH\u0002J\u0014\u0010\u001f\u001a\u0004\u0018\u00010 2\b\b\u0001\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010!\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$J\u0018\u0010\"\u001a\u00020\u00002\u0010\u0010%\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\t0&J\u001e\u0010'\u001a\u00020\u00002\b\b\u0001\u0010\u0014\u001a\u00020\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0007J\u001c\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u00182\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0007J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0010J\u0010\u0010)\u001a\u00020\u00002\b\b\u0001\u0010+\u001a\u00020\u0015J\b\u0010,\u001a\u00020\u001eH\u0002R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Landroidx/navigation/NavDeepLinkBuilder;", "", "navController", "Landroidx/navigation/NavController;", "(Landroidx/navigation/NavController;)V", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "activity", "Landroid/app/Activity;", "destinations", "", "Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;", "globalArgs", "Landroid/os/Bundle;", "graph", "Landroidx/navigation/NavGraph;", "intent", "Landroid/content/Intent;", "addDestination", "destId", "", "args", "route", "", "createPendingIntent", "Landroid/app/PendingIntent;", "createTaskStackBuilder", "Landroidx/core/app/TaskStackBuilder;", "fillInIntent", "", "findDestination", "Landroidx/navigation/NavDestination;", "setArguments", "setComponentName", "componentName", "Landroid/content/ComponentName;", "activityClass", "Ljava/lang/Class;", "setDestination", "destRoute", "setGraph", "navGraph", "navGraphId", "verifyAllDestinations", "DeepLinkDestination", "PermissiveNavigatorProvider", "navigation-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavDeepLinkBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDeepLinkBuilder.kt\nandroidx/navigation/NavDeepLinkBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,398:1\n1#2:399\n*E\n"})
public final class NavDeepLinkBuilder {
    private final Activity activity;
    private final Context context;
    private final List<NavDeepLinkBuilder$DeepLinkDestination> destinations;
    private Bundle globalArgs;
    private NavGraph graph;
    private final Intent intent;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NavDeepLinkBuilder(Context context) {
        Intent launchIntentForPackage;
        context.getClass();
        this.context = context;
        Activity activity = (Activity) SequencesKt.firstOrNull(SequencesKt.mapNotNull(SequencesKt.generateSequence(context, NavDeepLinkBuilder$activity$1.INSTANCE), NavDeepLinkBuilder$activity$2.INSTANCE));
        this.activity = activity;
        if (activity != null) {
            launchIntentForPackage = new Intent(context, activity.getClass());
        } else {
            launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            if (launchIntentForPackage == null) {
                launchIntentForPackage = new Intent();
            }
        }
        launchIntentForPackage.addFlags(268468224);
        this.intent = launchIntentForPackage;
        this.destinations = new ArrayList();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ NavDeepLinkBuilder addDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, int i9, Bundle bundle, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.addDestination(i9, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void fillInIntent() {
        ArrayList arrayList = new ArrayList();
        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
        NavDestination navDestination = null;
        for (NavDeepLinkBuilder$DeepLinkDestination navDeepLinkBuilder$DeepLinkDestination : this.destinations) {
            int destinationId = navDeepLinkBuilder$DeepLinkDestination.getDestinationId();
            Bundle arguments = navDeepLinkBuilder$DeepLinkDestination.getArguments();
            NavDestination navDestinationFindDestination = findDestination(destinationId);
            if (navDestinationFindDestination == null) {
                StringBuilder sbX = ai.onnxruntime.a.x("Navigation destination ", NavDestination.Companion.getDisplayName(this.context, destinationId), " cannot be found in the navigation graph ");
                sbX.append(this.graph);
                throw new IllegalArgumentException(sbX.toString());
            }
            for (int i9 : navDestinationFindDestination.buildDeepLinkIds(navDestination)) {
                arrayList.add(Integer.valueOf(i9));
                arrayList2.add(arguments);
            }
            navDestination = navDestinationFindDestination;
        }
        this.intent.putExtra(NavController.KEY_DEEP_LINK_IDS, CollectionsKt.y(arrayList));
        this.intent.putParcelableArrayListExtra(NavController.KEY_DEEP_LINK_ARGS, arrayList2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final NavDestination findDestination(@IdRes int destId) {
        ArrayDeque arrayDeque = new ArrayDeque();
        NavGraph navGraph = this.graph;
        navGraph.getClass();
        arrayDeque.add(navGraph);
        while (!arrayDeque.isEmpty()) {
            NavDestination navDestination = (NavDestination) arrayDeque.removeFirst();
            if (navDestination.getId() == destId) {
                return navDestination;
            }
            if (navDestination instanceof NavGraph) {
                Iterator<NavDestination> it = ((NavGraph) navDestination).iterator();
                while (it.hasNext()) {
                    arrayDeque.add(it.next());
                }
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ NavDeepLinkBuilder setDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, int i9, Bundle bundle, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.setDestination(i9, bundle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void verifyAllDestinations() {
        Iterator<NavDeepLinkBuilder$DeepLinkDestination> it = this.destinations.iterator();
        while (it.hasNext()) {
            int destinationId = it.next().getDestinationId();
            if (findDestination(destinationId) == null) {
                StringBuilder sbX = ai.onnxruntime.a.x("Navigation destination ", NavDestination.Companion.getDisplayName(this.context, destinationId), " cannot be found in the navigation graph ");
                sbX.append(this.graph);
                throw new IllegalArgumentException(sbX.toString());
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public final NavDeepLinkBuilder addDestination(String route, Bundle args) {
        route.getClass();
        this.destinations.add(new NavDeepLinkBuilder$DeepLinkDestination(NavDestination.Companion.createRoute(route).hashCode(), args));
        if (this.graph != null) {
            verifyAllDestinations();
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final PendingIntent createPendingIntent() {
        int destinationId;
        Bundle bundle = this.globalArgs;
        if (bundle != null) {
            Iterator<String> it = bundle.keySet().iterator();
            destinationId = 0;
            while (it.hasNext()) {
                Object obj = bundle.get(it.next());
                destinationId = (destinationId * 31) + (obj != null ? obj.hashCode() : 0);
            }
        } else {
            destinationId = 0;
        }
        for (NavDeepLinkBuilder$DeepLinkDestination navDeepLinkBuilder$DeepLinkDestination : this.destinations) {
            destinationId = (destinationId * 31) + navDeepLinkBuilder$DeepLinkDestination.getDestinationId();
            Bundle arguments = navDeepLinkBuilder$DeepLinkDestination.getArguments();
            if (arguments != null) {
                Iterator<String> it2 = arguments.keySet().iterator();
                while (it2.hasNext()) {
                    Object obj2 = arguments.get(it2.next());
                    destinationId = (destinationId * 31) + (obj2 != null ? obj2.hashCode() : 0);
                }
            }
        }
        PendingIntent pendingIntent = createTaskStackBuilder().getPendingIntent(destinationId, 201326592);
        pendingIntent.getClass();
        return pendingIntent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final TaskStackBuilder createTaskStackBuilder() {
        if (this.graph == null) {
            i.l("You must call setGraph() before constructing the deep link");
            return null;
        }
        if (this.destinations.isEmpty()) {
            i.l("You must call setDestination() or addDestination() before constructing the deep link");
            return null;
        }
        fillInIntent();
        TaskStackBuilder taskStackBuilderAddNextIntentWithParentStack = TaskStackBuilder.create(this.context).addNextIntentWithParentStack(new Intent(this.intent));
        taskStackBuilderAddNextIntentWithParentStack.getClass();
        int intentCount = taskStackBuilderAddNextIntentWithParentStack.getIntentCount();
        for (int i9 = 0; i9 < intentCount; i9++) {
            Intent intentEditIntentAt = taskStackBuilderAddNextIntentWithParentStack.editIntentAt(i9);
            if (intentEditIntentAt != null) {
                intentEditIntentAt.putExtra(NavController.KEY_DEEP_LINK_INTENT, this.intent);
            }
        }
        return taskStackBuilderAddNextIntentWithParentStack;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavDeepLinkBuilder setArguments(Bundle args) {
        this.globalArgs = args;
        this.intent.putExtra(NavController.KEY_DEEP_LINK_EXTRAS, args);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavDeepLinkBuilder setComponentName(Class<? extends Activity> activityClass) {
        activityClass.getClass();
        return setComponentName(new ComponentName(this.context, activityClass));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmOverloads
    public final NavDeepLinkBuilder setDestination(String destRoute, Bundle args) {
        destRoute.getClass();
        this.destinations.clear();
        this.destinations.add(new NavDeepLinkBuilder$DeepLinkDestination(NavDestination.Companion.createRoute(destRoute).hashCode(), args));
        if (this.graph != null) {
            verifyAllDestinations();
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavDeepLinkBuilder setGraph(@NavigationRes int navGraphId) {
        return setGraph(new NavInflater(this.context, new NavDeepLinkBuilder$PermissiveNavigatorProvider()).inflate(navGraphId));
    }

    public static /* synthetic */ NavDeepLinkBuilder addDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, String str, Bundle bundle, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.addDestination(str, bundle);
    }

    public static /* synthetic */ NavDeepLinkBuilder setDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, String str, Bundle bundle, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.setDestination(str, bundle);
    }

    public final NavDeepLinkBuilder setComponentName(ComponentName componentName) {
        componentName.getClass();
        this.intent.setComponent(componentName);
        return this;
    }

    public final NavDeepLinkBuilder setGraph(NavGraph navGraph) {
        navGraph.getClass();
        this.graph = navGraph;
        verifyAllDestinations();
        return this;
    }

    @JvmOverloads
    public final NavDeepLinkBuilder addDestination(String str) {
        str.getClass();
        return addDestination$default(this, str, (Bundle) null, 2, (Object) null);
    }

    @JvmOverloads
    public final NavDeepLinkBuilder addDestination(@IdRes int destId, Bundle args) {
        this.destinations.add(new NavDeepLinkBuilder$DeepLinkDestination(destId, args));
        if (this.graph != null) {
            verifyAllDestinations();
        }
        return this;
    }

    @JvmOverloads
    public final NavDeepLinkBuilder addDestination(@IdRes int i9) {
        return addDestination$default(this, i9, (Bundle) null, 2, (Object) null);
    }

    @JvmOverloads
    public final NavDeepLinkBuilder setDestination(String str) {
        str.getClass();
        return setDestination$default(this, str, (Bundle) null, 2, (Object) null);
    }

    @JvmOverloads
    public final NavDeepLinkBuilder setDestination(@IdRes int destId, Bundle args) {
        this.destinations.clear();
        this.destinations.add(new NavDeepLinkBuilder$DeepLinkDestination(destId, args));
        if (this.graph != null) {
            verifyAllDestinations();
        }
        return this;
    }

    @JvmOverloads
    public final NavDeepLinkBuilder setDestination(@IdRes int i9) {
        return setDestination$default(this, i9, (Bundle) null, 2, (Object) null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDeepLinkBuilder(NavController navController) {
        this(navController.getContext());
        navController.getClass();
        this.graph = navController.getGraph();
    }
}
