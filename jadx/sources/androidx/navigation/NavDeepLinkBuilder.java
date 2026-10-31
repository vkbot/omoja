package androidx.navigation;

import ai.onnxruntime.AbstractC0074a;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.IdRes;
import androidx.annotation.NavigationRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.TaskStackBuilder;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0002-.B\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001e\u0010\u0013\u001a\u00020\u00002\b\b\u0001\u0010\u0014\u001a\u00020\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0007J\u001c\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00182\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0007J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u001cJ\b\u0010\u001d\u001a\u00020\u001eH\u0002J\u0014\u0010\u001f\u001a\u0004\u0018\u00010 2\b\b\u0001\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010!\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$J\u0018\u0010\"\u001a\u00020\u00002\u0010\u0010%\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\t0&J\u001e\u0010'\u001a\u00020\u00002\b\b\u0001\u0010\u0014\u001a\u00020\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0007J\u001c\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u00182\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0007J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0010J\u0010\u0010)\u001a\u00020\u00002\b\b\u0001\u0010+\u001a\u00020\u0015J\b\u0010,\u001a\u00020\u001eH\u0002R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, m3159d2 = {"Landroidx/navigation/NavDeepLinkBuilder;", "", "navController", "Landroidx/navigation/NavController;", "(Landroidx/navigation/NavController;)V", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "activity", "Landroid/app/Activity;", "destinations", "", "Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;", "globalArgs", "Landroid/os/Bundle;", "graph", "Landroidx/navigation/NavGraph;", "intent", "Landroid/content/Intent;", "addDestination", "destId", "", "args", "route", "", "createPendingIntent", "Landroid/app/PendingIntent;", "createTaskStackBuilder", "Landroidx/core/app/TaskStackBuilder;", "fillInIntent", "", "findDestination", "Landroidx/navigation/NavDestination;", "setArguments", "setComponentName", "componentName", "Landroid/content/ComponentName;", "activityClass", "Ljava/lang/Class;", "setDestination", "destRoute", "setGraph", "navGraph", "navGraphId", "verifyAllDestinations", "DeepLinkDestination", "PermissiveNavigatorProvider", "navigation-runtime_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavDeepLinkBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDeepLinkBuilder.kt\nandroidx/navigation/NavDeepLinkBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,398:1\n1#2:399\n*E\n"})
public final class NavDeepLinkBuilder {
    private final Activity activity;
    private final Context context;
    private final List<DeepLinkDestination> destinations;
    private Bundle globalArgs;
    private NavGraph graph;
    private final Intent intent;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, m3159d2 = {"Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;", "", "destinationId", "", "arguments", "Landroid/os/Bundle;", "(ILandroid/os/Bundle;)V", "getArguments", "()Landroid/os/Bundle;", "getDestinationId", "()I", "navigation-runtime_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class DeepLinkDestination {
        private final Bundle arguments;
        private final int destinationId;

        public DeepLinkDestination(int i10, Bundle bundle) {
            this.destinationId = i10;
            this.arguments = bundle;
        }

        public final Bundle getArguments() {
            return this.arguments;
        }

        public final int getDestinationId() {
            return this.destinationId;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J'\u0010\u0006\u001a\u0002H\u0007\"\u0010\b\u0000\u0010\u0007*\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u00042\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\nR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m3159d2 = {"Landroidx/navigation/NavDeepLinkBuilder$PermissiveNavigatorProvider;", "Landroidx/navigation/NavigatorProvider;", "()V", "mDestNavigator", "Landroidx/navigation/Navigator;", "Landroidx/navigation/NavDestination;", "getNavigator", ExifInterface.GPS_DIRECTION_TRUE, "name", "", "(Ljava/lang/String;)Landroidx/navigation/Navigator;", "navigation-runtime_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class PermissiveNavigatorProvider extends NavigatorProvider {
        private final Navigator<NavDestination> mDestNavigator = new Navigator<NavDestination>() { // from class: androidx.navigation.NavDeepLinkBuilder$PermissiveNavigatorProvider$mDestNavigator$1
            @Override // androidx.navigation.Navigator
            public NavDestination createDestination() {
                return new NavDestination("permissive");
            }

            @Override // androidx.navigation.Navigator
            public NavDestination navigate(NavDestination destination, Bundle args, NavOptions navOptions, Navigator.Extras navigatorExtras) {
                destination.getClass();
                throw new IllegalStateException("navigate is not supported");
            }

            @Override // androidx.navigation.Navigator
            public boolean popBackStack() {
                throw new IllegalStateException("popBackStack is not supported");
            }
        };

        public PermissiveNavigatorProvider() {
            addNavigator(new NavGraphNavigator(this));
        }

        @Override // androidx.navigation.NavigatorProvider
        public <T extends Navigator<? extends NavDestination>> T getNavigator(String name) {
            name.getClass();
            try {
                return (T) super.getNavigator(name);
            } catch (IllegalStateException unused) {
                Navigator<NavDestination> navigator = this.mDestNavigator;
                navigator.getClass();
                return navigator;
            }
        }
    }

    public NavDeepLinkBuilder(Context context) {
        Intent launchIntentForPackage;
        context.getClass();
        this.context = context;
        Activity activity = (Activity) SequencesKt.firstOrNull(SequencesKt.mapNotNull(SequencesKt.generateSequence(context, new Function1<Context, Context>() { // from class: androidx.navigation.NavDeepLinkBuilder$activity$1
            @Override // kotlin.jvm.functions.Function1
            public final Context invoke(Context context2) {
                context2.getClass();
                ContextWrapper contextWrapper = context2 instanceof ContextWrapper ? (ContextWrapper) context2 : null;
                if (contextWrapper != null) {
                    return contextWrapper.getBaseContext();
                }
                return null;
            }
        }), new Function1<Context, Activity>() { // from class: androidx.navigation.NavDeepLinkBuilder$activity$2
            @Override // kotlin.jvm.functions.Function1
            public final Activity invoke(Context context2) {
                context2.getClass();
                if (context2 instanceof Activity) {
                    return (Activity) context2;
                }
                return null;
            }
        }));
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

    public static /* synthetic */ NavDeepLinkBuilder addDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, int i10, Bundle bundle, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.addDestination(i10, bundle);
    }

    private final void fillInIntent() {
        ArrayList arrayList = new ArrayList();
        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
        NavDestination navDestination = null;
        for (DeepLinkDestination deepLinkDestination : this.destinations) {
            int destinationId = deepLinkDestination.getDestinationId();
            Bundle arguments = deepLinkDestination.getArguments();
            NavDestination navDestinationFindDestination = findDestination(destinationId);
            if (navDestinationFindDestination == null) {
                StringBuilder sbM173x = AbstractC0074a.m173x("Navigation destination ", NavDestination.INSTANCE.getDisplayName(this.context, destinationId), " cannot be found in the navigation graph ");
                sbM173x.append(this.graph);
                throw new IllegalArgumentException(sbM173x.toString());
            }
            for (int i10 : navDestinationFindDestination.buildDeepLinkIds(navDestination)) {
                arrayList.add(Integer.valueOf(i10));
                arrayList2.add(arguments);
            }
            navDestination = navDestinationFindDestination;
        }
        this.intent.putExtra(NavController.KEY_DEEP_LINK_IDS, CollectionsKt___CollectionsKt.toIntArray(arrayList));
        this.intent.putParcelableArrayListExtra(NavController.KEY_DEEP_LINK_ARGS, arrayList2);
    }

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

    public static /* synthetic */ NavDeepLinkBuilder setDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, int i10, Bundle bundle, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.setDestination(i10, bundle);
    }

    private final void verifyAllDestinations() {
        Iterator<DeepLinkDestination> it = this.destinations.iterator();
        while (it.hasNext()) {
            int destinationId = it.next().getDestinationId();
            if (findDestination(destinationId) == null) {
                StringBuilder sbM173x = AbstractC0074a.m173x("Navigation destination ", NavDestination.INSTANCE.getDisplayName(this.context, destinationId), " cannot be found in the navigation graph ");
                sbM173x.append(this.graph);
                throw new IllegalArgumentException(sbM173x.toString());
            }
        }
    }

    @JvmOverloads
    public final NavDeepLinkBuilder addDestination(String route, Bundle args) {
        route.getClass();
        this.destinations.add(new DeepLinkDestination(NavDestination.INSTANCE.createRoute(route).hashCode(), args));
        if (this.graph != null) {
            verifyAllDestinations();
        }
        return this;
    }

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
        for (DeepLinkDestination deepLinkDestination : this.destinations) {
            destinationId = (destinationId * 31) + deepLinkDestination.getDestinationId();
            Bundle arguments = deepLinkDestination.getArguments();
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

    public final TaskStackBuilder createTaskStackBuilder() {
        if (this.graph == null) {
            C1929i.m3030l("You must call setGraph() before constructing the deep link");
            return null;
        }
        if (this.destinations.isEmpty()) {
            C1929i.m3030l("You must call setDestination() or addDestination() before constructing the deep link");
            return null;
        }
        fillInIntent();
        TaskStackBuilder taskStackBuilderAddNextIntentWithParentStack = TaskStackBuilder.create(this.context).addNextIntentWithParentStack(new Intent(this.intent));
        taskStackBuilderAddNextIntentWithParentStack.getClass();
        int intentCount = taskStackBuilderAddNextIntentWithParentStack.getIntentCount();
        for (int i10 = 0; i10 < intentCount; i10++) {
            Intent intentEditIntentAt = taskStackBuilderAddNextIntentWithParentStack.editIntentAt(i10);
            if (intentEditIntentAt != null) {
                intentEditIntentAt.putExtra(NavController.KEY_DEEP_LINK_INTENT, this.intent);
            }
        }
        return taskStackBuilderAddNextIntentWithParentStack;
    }

    public final NavDeepLinkBuilder setArguments(Bundle args) {
        this.globalArgs = args;
        this.intent.putExtra(NavController.KEY_DEEP_LINK_EXTRAS, args);
        return this;
    }

    public final NavDeepLinkBuilder setComponentName(Class<? extends Activity> activityClass) {
        activityClass.getClass();
        return setComponentName(new ComponentName(this.context, activityClass));
    }

    @JvmOverloads
    public final NavDeepLinkBuilder setDestination(String destRoute, Bundle args) {
        destRoute.getClass();
        this.destinations.clear();
        this.destinations.add(new DeepLinkDestination(NavDestination.INSTANCE.createRoute(destRoute).hashCode(), args));
        if (this.graph != null) {
            verifyAllDestinations();
        }
        return this;
    }

    public final NavDeepLinkBuilder setGraph(@NavigationRes int navGraphId) {
        return setGraph(new NavInflater(this.context, new PermissiveNavigatorProvider()).inflate(navGraphId));
    }

    public static /* synthetic */ NavDeepLinkBuilder addDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, String str, Bundle bundle, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bundle = null;
        }
        return navDeepLinkBuilder.addDestination(str, bundle);
    }

    public static /* synthetic */ NavDeepLinkBuilder setDestination$default(NavDeepLinkBuilder navDeepLinkBuilder, String str, Bundle bundle, int i10, Object obj) {
        if ((i10 & 2) != 0) {
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
        this.destinations.add(new DeepLinkDestination(destId, args));
        if (this.graph != null) {
            verifyAllDestinations();
        }
        return this;
    }

    @JvmOverloads
    public final NavDeepLinkBuilder addDestination(@IdRes int i10) {
        return addDestination$default(this, i10, (Bundle) null, 2, (Object) null);
    }

    @JvmOverloads
    public final NavDeepLinkBuilder setDestination(String str) {
        str.getClass();
        return setDestination$default(this, str, (Bundle) null, 2, (Object) null);
    }

    @JvmOverloads
    public final NavDeepLinkBuilder setDestination(@IdRes int destId, Bundle args) {
        this.destinations.clear();
        this.destinations.add(new DeepLinkDestination(destId, args));
        if (this.graph != null) {
            verifyAllDestinations();
        }
        return this;
    }

    @JvmOverloads
    public final NavDeepLinkBuilder setDestination(@IdRes int i10) {
        return setDestination$default(this, i10, (Bundle) null, 2, (Object) null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDeepLinkBuilder(NavController navController) {
        this(navController.getContext());
        navController.getClass();
        this.graph = navController.getGraph();
    }
}
