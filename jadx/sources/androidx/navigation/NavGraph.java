package androidx.navigation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.common.C0676R;
import androidx.navigation.serialization.RouteSerializerKt;
import com.bumptech.glide.AbstractC1031d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MagicApiIntrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import p055e9.InterfaceC1506b;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010)\n\u0002\b\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0016\u0018\u0000 `2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00010\u0002:\u0001`B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ1\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J1\u0010\u0019\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0018\u001a\u00020\u0017H\u0017¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u001d\u0010\"\u001a\u00020\u000b2\u000e\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010 ¢\u0006\u0004\b\"\u0010#J!\u0010\"\u001a\u00020\u000b2\u0012\u0010!\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010$\"\u00020\u0001¢\u0006\u0004\b\"\u0010%J\u0019\u0010(\u001a\u0004\u0018\u00010\u00012\b\b\u0001\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)J9\u0010+\u001a\u0004\u0018\u00010\u00012\b\b\u0001\u0010'\u001a\u00020&2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0011\u001a\u00020\u00102\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b+\u0010,J\u0019\u0010(\u001a\u0004\u0018\u00010\u00012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b(\u0010-J\u001a\u0010(\u001a\u0004\u0018\u00010\u0001\"\u0006\b\u0000\u0010.\u0018\u0001H\u0086\b¢\u0006\u0004\b(\u0010/J\u001f\u0010(\u001a\u0004\u0018\u00010\u0001\"\u0004\b\u0000\u0010.2\b\u0010\u000f\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b(\u00100J!\u0010(\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\u0010H\u0007¢\u0006\u0004\b(\u00102J\u0016\u00104\u001a\b\u0012\u0004\u0012\u00020\u000103H\u0086\u0002¢\u0006\u0004\b4\u00105J\u0015\u00107\u001a\u00020\u000b2\u0006\u00106\u001a\u00020\u0000¢\u0006\u0004\b7\u00108J\u0015\u00109\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u0001¢\u0006\u0004\b9\u0010\u001fJ\r\u0010:\u001a\u00020\u000b¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020&H\u0007¢\u0006\u0004\b<\u0010=J\u0015\u0010?\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020&¢\u0006\u0004\b?\u0010@J\u0015\u0010?\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020\u000e¢\u0006\u0004\b?\u0010BJ\u001c\u0010?\u001a\u00020\u000b\"\n\b\u0000\u0010.\u0018\u0001*\u00020CH\u0086\b¢\u0006\u0004\b?\u0010;J\u001f\u0010?\u001a\u00020\u000b\"\b\b\u0000\u0010.*\u00020C2\u0006\u0010A\u001a\u00028\u0000¢\u0006\u0004\b?\u0010DJ7\u0010?\u001a\u00020\u000b\"\u0004\b\u0000\u0010.2\f\u0010F\u001a\b\u0012\u0004\u0012\u00028\u00000E2\u0012\u0010H\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000e0GH\u0007¢\u0006\u0004\b?\u0010IJ\u000f\u0010J\u001a\u00020\u000eH\u0016¢\u0006\u0004\bJ\u0010KJ\u001a\u0010L\u001a\u00020\u00102\b\u00106\u001a\u0004\u0018\u00010CH\u0096\u0002¢\u0006\u0004\bL\u0010MJ\u000f\u0010N\u001a\u00020&H\u0016¢\u0006\u0004\bN\u0010=R\u001d\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00010O8G¢\u0006\f\n\u0004\b!\u0010P\u001a\u0004\bQ\u0010RR\u0016\u0010>\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010SR\u0018\u0010T\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR.\u0010V\u001a\u0004\u0018\u00010\u000e2\b\u0010A\u001a\u0004\u0018\u00010\u000e8\u0006@BX\u0086\u000e¢\u0006\u0012\n\u0004\bV\u0010U\u001a\u0004\bW\u0010K\"\u0004\bX\u0010BR\u0014\u0010Z\u001a\u00020\u000e8WX\u0096\u0004¢\u0006\u0006\u001a\u0004\bY\u0010KR$\u0010]\u001a\u00020&2\u0006\u0010>\u001a\u00020&8G@BX\u0086\u000e¢\u0006\f\u001a\u0004\b[\u0010=\"\u0004\b\\\u0010@R\u0011\u0010_\u001a\u00020\u000e8G¢\u0006\u0006\u001a\u0004\b^\u0010K¨\u0006a"}, m3159d2 = {"Landroidx/navigation/NavGraph;", "Landroidx/navigation/NavDestination;", "", "Landroidx/navigation/Navigator;", "navGraphNavigator", "<init>", "(Landroidx/navigation/Navigator;)V", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "onInflate", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "route", "", "searchChildren", "searchParent", "lastVisited", "Landroidx/navigation/NavDestination$DeepLinkMatch;", "matchRouteComprehensive", "(Ljava/lang/String;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;", "Landroidx/navigation/NavDeepLinkRequest;", "navDeepLinkRequest", "matchDeepLinkComprehensive", "(Landroidx/navigation/NavDeepLinkRequest;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;", "matchDeepLink", "(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;", "node", "addDestination", "(Landroidx/navigation/NavDestination;)V", "", "nodes", "addDestinations", "(Ljava/util/Collection;)V", "", "([Landroidx/navigation/NavDestination;)V", "", "resId", "findNode", "(I)Landroidx/navigation/NavDestination;", "matchingDest", "findNodeComprehensive", "(ILandroidx/navigation/NavDestination;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;", "(Ljava/lang/String;)Landroidx/navigation/NavDestination;", ExifInterface.GPS_DIRECTION_TRUE, "()Landroidx/navigation/NavDestination;", "(Ljava/lang/Object;)Landroidx/navigation/NavDestination;", "searchParents", "(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;", "", "iterator", "()Ljava/util/Iterator;", "other", "addAll", "(Landroidx/navigation/NavGraph;)V", "remove", "clear", "()V", "getStartDestination", "()I", "startDestId", "setStartDestination", "(I)V", "startDestRoute", "(Ljava/lang/String;)V", "", "(Ljava/lang/Object;)V", "Le9/b;", "serializer", "Lkotlin/Function1;", "parseRoute", "(Le9/b;Lkotlin/jvm/functions/Function1;)V", "toString", "()Ljava/lang/String;", "equals", "(Ljava/lang/Object;)Z", "hashCode", "Landroidx/collection/SparseArrayCompat;", "Landroidx/collection/SparseArrayCompat;", "getNodes", "()Landroidx/collection/SparseArrayCompat;", "I", "startDestIdName", "Ljava/lang/String;", "startDestinationRoute", "getStartDestinationRoute", "setStartDestinationRoute", "getDisplayName", "displayName", "getStartDestinationId", "setStartDestinationId", "startDestinationId", "getStartDestDisplayName", "startDestDisplayName", "Companion", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraph.kt\nandroidx/navigation/NavGraph\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 6 SparseArray.kt\nandroidx/collection/SparseArrayKt\n*L\n1#1,677:1\n232#2,3:678\n1603#3,9:681\n1855#3:690\n1856#3:692\n1612#3:693\n1603#3,9:694\n1855#3:703\n1856#3:705\n1612#3:706\n1#4:691\n1#4:704\n1#4:707\n179#5,2:708\n1224#5,2:711\n22#6:710\n62#6,4:713\n*S KotlinDebug\n*F\n+ 1 NavGraph.kt\nandroidx/navigation/NavGraph\n*L\n61#1:678,3\n84#1:681,9\n84#1:690\n84#1:692\n84#1:693\n129#1:694,9\n129#1:703\n129#1:705\n129#1:706\n84#1:691\n129#1:704\n322#1:708,2\n561#1:711,2\n559#1:710\n566#1:713,4\n*E\n"})
public class NavGraph extends NavDestination implements Iterable<NavDestination>, KMappedMarker {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final SparseArrayCompat<NavDestination> nodes;
    private int startDestId;
    private String startDestIdName;
    private String startDestinationRoute;

    /* JADX INFO: renamed from: androidx.navigation.NavGraph$iterator$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000#\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\t\u0010\u0007\u001a\u00020\u0006H\u0096\u0002J\t\u0010\b\u001a\u00020\u0002H\u0096\u0002J\b\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m3159d2 = {"androidx/navigation/NavGraph$iterator$1", "", "Landroidx/navigation/NavDestination;", "index", "", "wentToNext", "", "hasNext", "next", "remove", "", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nNavGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraph.kt\nandroidx/navigation/NavGraph$iterator$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,677:1\n1#2:678\n*E\n"})
    public static final class C06531 implements Iterator<NavDestination>, KMutableIterator {
        private int index = -1;
        private boolean wentToNext;

        public C06531() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index + 1 < NavGraph.this.getNodes().size();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public NavDestination next() {
            if (!hasNext()) {
                C2467b.m3834x();
                return null;
            }
            this.wentToNext = true;
            SparseArrayCompat<NavDestination> nodes = NavGraph.this.getNodes();
            int i10 = this.index + 1;
            this.index = i10;
            return nodes.valueAt(i10);
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.wentToNext) {
                C1929i.m3030l("You must call next() before you can remove an element");
                return;
            }
            SparseArrayCompat<NavDestination> nodes = NavGraph.this.getNodes();
            nodes.valueAt(this.index).setParent(null);
            nodes.removeAt(this.index);
            this.index--;
            this.wentToNext = false;
        }
    }

    /* JADX INFO: renamed from: androidx.navigation.NavGraph$setStartDestination$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m3159d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "", "startDestination", "Landroidx/navigation/NavDestination;", "invoke"}, m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = 176)
    public static final class C06541 extends Lambda implements Function1<NavDestination, String> {
        public static final C06541 INSTANCE = new C06541();

        public C06541() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final String invoke(NavDestination navDestination) {
            navDestination.getClass();
            String route = navDestination.getRoute();
            route.getClass();
            return route;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraph(Navigator<? extends NavGraph> navigator) {
        super(navigator);
        navigator.getClass();
        this.nodes = new SparseArrayCompat<>(0, 1, null);
    }

    public static /* synthetic */ NavDestination findNodeComprehensive$default(NavGraph navGraph, int i10, NavDestination navDestination, boolean z9, NavDestination navDestination2, int i11, Object obj) {
        if (obj != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: findNodeComprehensive");
            return null;
        }
        if ((i11 & 8) != 0) {
            navDestination2 = null;
        }
        return navGraph.findNodeComprehensive(i10, navDestination, z9, navDestination2);
    }

    @JvmStatic
    public static final NavDestination findStartDestination(NavGraph navGraph) {
        return INSTANCE.findStartDestination(navGraph);
    }

    private final void setStartDestinationId(int i10) {
        if (i10 != getId()) {
            if (this.startDestinationRoute != null) {
                setStartDestinationRoute(null);
            }
            this.startDestId = i10;
            this.startDestIdName = null;
            return;
        }
        throw new IllegalArgumentException(("Start destination " + i10 + " cannot use the same id as the graph " + this).toString());
    }

    private final void setStartDestinationRoute(String str) {
        int iHashCode;
        if (str == null) {
            iHashCode = 0;
        } else if (Intrinsics.areEqual(str, getRoute())) {
            C0674b.m841h("Start destination ", str, " cannot use the same route as the graph ", this);
            return;
        } else {
            if (StringsKt.isBlank(str)) {
                C1929i.m3029k("Cannot have an empty start destination route");
                return;
            }
            iHashCode = NavDestination.INSTANCE.createRoute(str).hashCode();
        }
        this.startDestId = iHashCode;
        this.startDestinationRoute = str;
    }

    public final void addAll(NavGraph other) {
        other.getClass();
        Iterator<NavDestination> it = other.iterator();
        while (it.hasNext()) {
            NavDestination next = it.next();
            it.remove();
            addDestination(next);
        }
    }

    public final void addDestination(NavDestination node) {
        node.getClass();
        int id = node.getId();
        String route = node.getRoute();
        if (id == 0 && route == null) {
            C1929i.m3029k("Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML.");
            return;
        }
        if (getRoute() != null && Intrinsics.areEqual(route, getRoute())) {
            C0674b.m841h("Destination ", node, " cannot have the same route as graph ", this);
            return;
        }
        if (id == getId()) {
            C0674b.m841h("Destination ", node, " cannot have the same id as graph ", this);
            return;
        }
        NavDestination navDestination = this.nodes.get(id);
        if (navDestination == node) {
            return;
        }
        if (node.getParent() != null) {
            C1929i.m3030l("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.");
            return;
        }
        if (navDestination != null) {
            navDestination.setParent(null);
        }
        node.setParent(this);
        this.nodes.put(node.getId(), node);
    }

    public final void addDestinations(Collection<? extends NavDestination> nodes) {
        nodes.getClass();
        for (NavDestination navDestination : nodes) {
            if (navDestination != null) {
                addDestination(navDestination);
            }
        }
    }

    public final void clear() {
        Iterator<NavDestination> it = iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    @Override // androidx.navigation.NavDestination
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other != null && (other instanceof NavGraph) && super.equals(other)) {
            NavGraph navGraph = (NavGraph) other;
            if (this.nodes.size() == navGraph.nodes.size() && getStartDestId() == navGraph.getStartDestId()) {
                for (NavDestination navDestination : SequencesKt.asSequence(SparseArrayKt.valueIterator(this.nodes))) {
                    if (!Intrinsics.areEqual(navDestination, navGraph.nodes.get(navDestination.getId()))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final NavDestination findNode(String route, boolean searchParents) {
        Object next;
        NavDestination navDestination;
        route.getClass();
        Iterator it = SequencesKt.asSequence(SparseArrayKt.valueIterator(this.nodes)).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            navDestination = (NavDestination) next;
            if (StringsKt__StringsJVMKt.equals$default(navDestination.getRoute(), route, false, 2, null)) {
                break;
            }
        } while (navDestination.matchRoute(route) == null);
        NavDestination navDestination2 = (NavDestination) next;
        if (navDestination2 != null) {
            return navDestination2;
        }
        if (!searchParents || getParent() == null) {
            return null;
        }
        NavGraph parent = getParent();
        parent.getClass();
        return parent.findNode(route);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final NavDestination findNodeComprehensive(@IdRes int resId, NavDestination lastVisited, boolean searchChildren, NavDestination matchingDest) {
        NavDestination navDestination = this.nodes.get(resId);
        if (matchingDest != null) {
            if (Intrinsics.areEqual(navDestination, matchingDest) && Intrinsics.areEqual(navDestination.getParent(), matchingDest.getParent())) {
                return navDestination;
            }
            navDestination = null;
        } else if (navDestination != null) {
            return navDestination;
        }
        if (searchChildren) {
            Iterator it = SequencesKt.asSequence(SparseArrayKt.valueIterator(this.nodes)).iterator();
            while (true) {
                if (!it.hasNext()) {
                    navDestination = null;
                    break;
                }
                NavDestination navDestination2 = (NavDestination) it.next();
                NavDestination navDestinationFindNodeComprehensive = (!(navDestination2 instanceof NavGraph) || Intrinsics.areEqual(navDestination2, lastVisited)) ? null : ((NavGraph) navDestination2).findNodeComprehensive(resId, this, true, matchingDest);
                if (navDestinationFindNodeComprehensive != null) {
                    navDestination = navDestinationFindNodeComprehensive;
                    break;
                }
            }
        }
        if (navDestination != null) {
            return navDestination;
        }
        if (getParent() == null || Intrinsics.areEqual(getParent(), lastVisited)) {
            return null;
        }
        NavGraph parent = getParent();
        parent.getClass();
        return parent.findNodeComprehensive(resId, this, searchChildren, matchingDest);
    }

    @Override // androidx.navigation.NavDestination
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public String getDisplayName() {
        return getId() != 0 ? super.getDisplayName() : "the root navigation";
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final SparseArrayCompat<NavDestination> getNodes() {
        return this.nodes;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final String getStartDestDisplayName() {
        if (this.startDestIdName == null) {
            String strValueOf = this.startDestinationRoute;
            if (strValueOf == null) {
                strValueOf = String.valueOf(this.startDestId);
            }
            this.startDestIdName = strValueOf;
        }
        String str = this.startDestIdName;
        str.getClass();
        return str;
    }

    @Deprecated(message = "Use getStartDestinationId instead.", replaceWith = @ReplaceWith(expression = "startDestinationId", imports = {}))
    @IdRes
    public final int getStartDestination() {
        return getStartDestId();
    }

    @IdRes
    /* JADX INFO: renamed from: getStartDestinationId, reason: from getter */
    public final int getStartDestId() {
        return this.startDestId;
    }

    public final String getStartDestinationRoute() {
        return this.startDestinationRoute;
    }

    @Override // androidx.navigation.NavDestination
    public int hashCode() {
        int startDestId = getStartDestId();
        SparseArrayCompat<NavDestination> sparseArrayCompat = this.nodes;
        int size = sparseArrayCompat.size();
        for (int i10 = 0; i10 < size; i10++) {
            startDestId = (((startDestId * 31) + sparseArrayCompat.keyAt(i10)) * 31) + sparseArrayCompat.valueAt(i10).hashCode();
        }
        return startDestId;
    }

    @Override // java.lang.Iterable
    public final Iterator<NavDestination> iterator() {
        return new C06531();
    }

    @Override // androidx.navigation.NavDestination
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public NavDestination.DeepLinkMatch matchDeepLink(NavDeepLinkRequest navDeepLinkRequest) {
        navDeepLinkRequest.getClass();
        return matchDeepLinkComprehensive(navDeepLinkRequest, true, false, this);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final NavDestination.DeepLinkMatch matchDeepLinkComprehensive(NavDeepLinkRequest navDeepLinkRequest, boolean searchChildren, boolean searchParent, NavDestination lastVisited) {
        NavDestination.DeepLinkMatch deepLinkMatch;
        navDeepLinkRequest.getClass();
        lastVisited.getClass();
        NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLink = super.matchDeepLink(navDeepLinkRequest);
        NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLinkComprehensive = null;
        if (searchChildren) {
            ArrayList arrayList = new ArrayList();
            for (NavDestination navDestination : this) {
                NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLink2 = !Intrinsics.areEqual(navDestination, lastVisited) ? navDestination.matchDeepLink(navDeepLinkRequest) : null;
                if (deepLinkMatchMatchDeepLink2 != null) {
                    arrayList.add(deepLinkMatchMatchDeepLink2);
                }
            }
            deepLinkMatch = (NavDestination.DeepLinkMatch) CollectionsKt___CollectionsKt.maxOrNull((Iterable) arrayList);
        } else {
            deepLinkMatch = null;
        }
        NavGraph parent = getParent();
        if (parent != null && searchParent && !Intrinsics.areEqual(parent, lastVisited)) {
            deepLinkMatchMatchDeepLinkComprehensive = parent.matchDeepLinkComprehensive(navDeepLinkRequest, searchChildren, true, this);
        }
        return (NavDestination.DeepLinkMatch) CollectionsKt___CollectionsKt.maxOrNull((Iterable) CollectionsKt.listOfNotNull((Object[]) new NavDestination.DeepLinkMatch[]{deepLinkMatchMatchDeepLink, deepLinkMatch, deepLinkMatchMatchDeepLinkComprehensive}));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final NavDestination.DeepLinkMatch matchRouteComprehensive(String route, boolean searchChildren, boolean searchParent, NavDestination lastVisited) {
        NavDestination.DeepLinkMatch deepLinkMatch;
        route.getClass();
        lastVisited.getClass();
        NavDestination.DeepLinkMatch deepLinkMatchMatchRoute = matchRoute(route);
        NavDestination.DeepLinkMatch deepLinkMatchMatchRouteComprehensive = null;
        if (searchChildren) {
            ArrayList arrayList = new ArrayList();
            for (NavDestination navDestination : this) {
                NavDestination.DeepLinkMatch deepLinkMatchMatchRouteComprehensive2 = Intrinsics.areEqual(navDestination, lastVisited) ? null : navDestination instanceof NavGraph ? ((NavGraph) navDestination).matchRouteComprehensive(route, true, false, this) : navDestination.matchRoute(route);
                if (deepLinkMatchMatchRouteComprehensive2 != null) {
                    arrayList.add(deepLinkMatchMatchRouteComprehensive2);
                }
            }
            deepLinkMatch = (NavDestination.DeepLinkMatch) CollectionsKt___CollectionsKt.maxOrNull((Iterable) arrayList);
        } else {
            deepLinkMatch = null;
        }
        NavGraph parent = getParent();
        if (parent != null && searchParent && !Intrinsics.areEqual(parent, lastVisited)) {
            deepLinkMatchMatchRouteComprehensive = parent.matchRouteComprehensive(route, searchChildren, true, this);
        }
        return (NavDestination.DeepLinkMatch) CollectionsKt___CollectionsKt.maxOrNull((Iterable) CollectionsKt.listOfNotNull((Object[]) new NavDestination.DeepLinkMatch[]{deepLinkMatchMatchRoute, deepLinkMatch, deepLinkMatchMatchRouteComprehensive}));
    }

    @Override // androidx.navigation.NavDestination
    public void onInflate(Context context, AttributeSet attrs) {
        context.getClass();
        attrs.getClass();
        super.onInflate(context, attrs);
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attrs, C0676R.styleable.NavGraphNavigator);
        typedArrayObtainAttributes.getClass();
        setStartDestinationId(typedArrayObtainAttributes.getResourceId(C0676R.styleable.NavGraphNavigator_startDestination, 0));
        this.startDestIdName = NavDestination.INSTANCE.getDisplayName(context, this.startDestId);
        Unit unit = Unit.INSTANCE;
        typedArrayObtainAttributes.recycle();
    }

    public final void remove(NavDestination node) {
        node.getClass();
        int iIndexOfKey = this.nodes.indexOfKey(node.getId());
        if (iIndexOfKey >= 0) {
            this.nodes.valueAt(iIndexOfKey).setParent(null);
            this.nodes.removeAt(iIndexOfKey);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final <T> void setStartDestination(InterfaceC1506b serializer, Function1<? super NavDestination, String> parseRoute) {
        serializer.getClass();
        parseRoute.getClass();
        int iGenerateHashCode = RouteSerializerKt.generateHashCode(serializer);
        NavDestination navDestinationFindNode = findNode(iGenerateHashCode);
        if (navDestinationFindNode == null) {
            C0674b.m839f(serializer.mo2581a().mo2717a(), "Cannot find startDestination ", " from NavGraph. Ensure the starting NavDestination was added with route from KClass.");
        } else {
            setStartDestinationRoute(parseRoute.invoke(navDestinationFindNode));
            this.startDestId = iGenerateHashCode;
        }
    }

    @Override // androidx.navigation.NavDestination
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        NavDestination navDestinationFindNode = findNode(this.startDestinationRoute);
        if (navDestinationFindNode == null) {
            navDestinationFindNode = findNode(getStartDestId());
        }
        sb.append(" startDestination=");
        if (navDestinationFindNode == null) {
            String str = this.startDestinationRoute;
            if (str != null) {
                sb.append(str);
            } else {
                String str2 = this.startDestIdName;
                if (str2 != null) {
                    sb.append(str2);
                } else {
                    sb.append("0x" + Integer.toHexString(this.startDestId));
                }
            }
        } else {
            sb.append("{");
            sb.append(navDestinationFindNode.toString());
            sb.append("}");
        }
        return sb.toString();
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\u00020\u0006H\u0007J\f\u0010\u0007\u001a\u00020\u0005*\u00020\u0006H\u0007¨\u0006\b"}, m3159d2 = {"Landroidx/navigation/NavGraph$Companion;", "", "()V", "childHierarchy", "Lkotlin/sequences/Sequence;", "Landroidx/navigation/NavDestination;", "Landroidx/navigation/NavGraph;", "findStartDestination", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final Sequence<NavDestination> childHierarchy(NavGraph navGraph) {
            navGraph.getClass();
            return SequencesKt.generateSequence(navGraph, new Function1<NavDestination, NavDestination>() { // from class: androidx.navigation.NavGraph$Companion$childHierarchy$1
                @Override // kotlin.jvm.functions.Function1
                public final NavDestination invoke(NavDestination navDestination) {
                    navDestination.getClass();
                    if (!(navDestination instanceof NavGraph)) {
                        return null;
                    }
                    NavGraph navGraph2 = (NavGraph) navDestination;
                    return navGraph2.findNode(navGraph2.getStartDestId());
                }
            });
        }

        @JvmStatic
        public final NavDestination findStartDestination(NavGraph navGraph) {
            navGraph.getClass();
            return (NavDestination) SequencesKt.last(childHierarchy(navGraph));
        }

        private Companion() {
        }
    }

    public final void addDestinations(NavDestination... nodes) {
        nodes.getClass();
        for (NavDestination navDestination : nodes) {
            addDestination(navDestination);
        }
    }

    public final void setStartDestination(String startDestRoute) {
        startDestRoute.getClass();
        setStartDestinationRoute(startDestRoute);
    }

    public final <T> void setStartDestination() {
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        throw null;
    }

    public final <T> void setStartDestination(final T startDestRoute) {
        startDestRoute.getClass();
        setStartDestination(AbstractC1031d.m1289s(Reflection.getOrCreateKotlinClass(startDestRoute.getClass())), new Function1<NavDestination, String>() { // from class: androidx.navigation.NavGraph.setStartDestination.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final String invoke(NavDestination navDestination) {
                navDestination.getClass();
                Map<String, NavArgument> arguments = navDestination.getArguments();
                LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(arguments.size()));
                Iterator<T> it = arguments.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    linkedHashMap.put(entry.getKey(), ((NavArgument) entry.getValue()).getType());
                }
                return RouteSerializerKt.generateRouteWithArgs(startDestRoute, linkedHashMap);
            }
        });
    }

    public final void setStartDestination(int startDestId) {
        setStartDestinationId(startDestId);
    }

    public final NavDestination findNode(String route) {
        if (route == null || StringsKt.isBlank(route)) {
            return null;
        }
        return findNode(route, true);
    }

    public final <T> NavDestination findNode() {
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        throw null;
    }

    public final <T> NavDestination findNode(T route) {
        if (route != null) {
            return findNode(RouteSerializerKt.generateHashCode(AbstractC1031d.m1289s(Reflection.getOrCreateKotlinClass(route.getClass()))));
        }
        return null;
    }

    public final NavDestination findNode(@IdRes int resId) {
        return findNodeComprehensive$default(this, resId, this, false, null, 8, null);
    }
}
