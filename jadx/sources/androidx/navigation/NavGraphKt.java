package androidx.navigation;

import androidx.annotation.IdRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MagicApiIntrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u00002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a$\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u0086\u0002¢\u0006\u0002\u0010\u0006\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0086\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\tH\u0086\u0002\u001a'\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\nH\u0086\n\u001a$\u0010\u000b\u001a\u00020\f\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u0086\n¢\u0006\u0002\u0010\r\u001a\u0017\u0010\u000b\u001a\u00020\f*\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\bH\u0086\n\u001a\u0015\u0010\u000b\u001a\u00020\f*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\tH\u0086\n\u001a'\u0010\u000b\u001a\u00020\f\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\nH\u0086\n\u001a\u0015\u0010\u000e\u001a\u00020\u000f*\u00020\u00042\u0006\u0010\u0010\u001a\u00020\fH\u0086\n\u001a\u0015\u0010\u0011\u001a\u00020\u000f*\u00020\u00042\u0006\u0010\u0010\u001a\u00020\fH\u0086\n\u001a\u0015\u0010\u0011\u001a\u00020\u000f*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0086\n¨\u0006\u0013"}, m3159d2 = {"contains", "", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroidx/navigation/NavGraph;", "route", "(Landroidx/navigation/NavGraph;Ljava/lang/Object;)Z", "id", "", "", "Lkotlin/reflect/KClass;", "get", "Landroidx/navigation/NavDestination;", "(Landroidx/navigation/NavGraph;Ljava/lang/Object;)Landroidx/navigation/NavDestination;", "minusAssign", "", "node", "plusAssign", "other", "navigation-common_release"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraph.kt\nandroidx/navigation/NavGraphKt\n+ 2 NavGraph.kt\nandroidx/navigation/NavGraph\n*L\n1#1,677:1\n306#2:678\n306#2:679\n*S KotlinDebug\n*F\n+ 1 NavGraph.kt\nandroidx/navigation/NavGraphKt\n*L\n621#1:678\n642#1:679\n*E\n"})
public final class NavGraphKt {
    public static final <T> boolean contains(NavGraph navGraph, KClass<T> kClass) {
        navGraph.getClass();
        kClass.getClass();
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        throw null;
    }

    public static final NavDestination get(NavGraph navGraph, @IdRes int i10) {
        navGraph.getClass();
        NavDestination navDestinationFindNode = navGraph.findNode(i10);
        if (navDestinationFindNode != null) {
            return navDestinationFindNode;
        }
        throw new IllegalArgumentException("No destination for " + i10 + " was found in " + navGraph);
    }

    public static final void minusAssign(NavGraph navGraph, NavDestination navDestination) {
        navGraph.getClass();
        navDestination.getClass();
        navGraph.remove(navDestination);
    }

    public static final void plusAssign(NavGraph navGraph, NavDestination navDestination) {
        navGraph.getClass();
        navDestination.getClass();
        navGraph.addDestination(navDestination);
    }

    public static final void plusAssign(NavGraph navGraph, NavGraph navGraph2) {
        navGraph.getClass();
        navGraph2.getClass();
        navGraph.addAll(navGraph2);
    }

    public static final boolean contains(NavGraph navGraph, String str) {
        navGraph.getClass();
        str.getClass();
        return navGraph.findNode(str) != null;
    }

    public static final <T> boolean contains(NavGraph navGraph, T t) {
        navGraph.getClass();
        t.getClass();
        return navGraph.findNode(t) != null;
    }

    public static final boolean contains(NavGraph navGraph, @IdRes int i10) {
        navGraph.getClass();
        return navGraph.findNode(i10) != null;
    }

    public static final NavDestination get(NavGraph navGraph, String str) {
        navGraph.getClass();
        str.getClass();
        NavDestination navDestinationFindNode = navGraph.findNode(str);
        if (navDestinationFindNode != null) {
            return navDestinationFindNode;
        }
        C0674b.m855v("No destination for ", str, " was found in ", navGraph);
        return null;
    }

    public static final <T> NavDestination get(NavGraph navGraph, T t) {
        navGraph.getClass();
        t.getClass();
        NavDestination navDestinationFindNode = navGraph.findNode(t);
        if (navDestinationFindNode != null) {
            return navDestinationFindNode;
        }
        C0674b.m855v("No destination for ", t, " was found in ", navGraph);
        return null;
    }

    public static final <T> NavDestination get(NavGraph navGraph, KClass<T> kClass) {
        navGraph.getClass();
        kClass.getClass();
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        MagicApiIntrinsics.voidMagicApiCall("kotlinx.serialization.serializer.simple");
        throw null;
    }
}
