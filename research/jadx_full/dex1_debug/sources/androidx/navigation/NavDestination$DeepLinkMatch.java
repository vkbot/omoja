package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0002\u0010\fJ\u0011\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0000H\u0096\u0002J\u0010\u0010\u0013\u001a\u00020\u00072\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/navigation/NavDestination$DeepLinkMatch;", "", "destination", "Landroidx/navigation/NavDestination;", "matchingArgs", "Landroid/os/Bundle;", "isExactDeepLink", "", "matchingPathSegments", "", "hasMatchingAction", "mimeTypeMatchLevel", "(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZIZI)V", "getDestination", "()Landroidx/navigation/NavDestination;", "getMatchingArgs", "()Landroid/os/Bundle;", "compareTo", "other", "hasMatchingArgs", "arguments", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nNavDestination.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDestination.kt\nandroidx/navigation/NavDestination$DeepLinkMatch\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,862:1\n1855#2,2:863\n*S KotlinDebug\n*F\n+ 1 NavDestination.kt\nandroidx/navigation/NavDestination$DeepLinkMatch\n*L\n128#1:863,2\n*E\n"})
public final class NavDestination$DeepLinkMatch implements Comparable<NavDestination$DeepLinkMatch> {
    private final NavDestination destination;
    private final boolean hasMatchingAction;
    private final boolean isExactDeepLink;
    private final Bundle matchingArgs;
    private final int matchingPathSegments;
    private final int mimeTypeMatchLevel;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NavDestination$DeepLinkMatch(NavDestination navDestination, Bundle bundle, boolean z8, int i9, boolean z9, int i10) {
        navDestination.getClass();
        this.destination = navDestination;
        this.matchingArgs = bundle;
        this.isExactDeepLink = z8;
        this.matchingPathSegments = i9;
        this.hasMatchingAction = z9;
        this.mimeTypeMatchLevel = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: compareTo, reason: avoid collision after fix types in other method */
    public int compareTo2(NavDestination$DeepLinkMatch other) {
        other.getClass();
        boolean z8 = this.isExactDeepLink;
        if (z8 && !other.isExactDeepLink) {
            return 1;
        }
        if (!z8 && other.isExactDeepLink) {
            return -1;
        }
        int i9 = this.matchingPathSegments - other.matchingPathSegments;
        if (i9 > 0) {
            return 1;
        }
        if (i9 < 0) {
            return -1;
        }
        Bundle bundle = this.matchingArgs;
        if (bundle != null && other.matchingArgs == null) {
            return 1;
        }
        if (bundle == null && other.matchingArgs != null) {
            return -1;
        }
        if (bundle != null) {
            int size = bundle.size();
            Bundle bundle2 = other.matchingArgs;
            bundle2.getClass();
            int size2 = size - bundle2.size();
            if (size2 > 0) {
                return 1;
            }
            if (size2 < 0) {
                return -1;
            }
        }
        boolean z9 = this.hasMatchingAction;
        if (z9 && !other.hasMatchingAction) {
            return 1;
        }
        if (z9 || !other.hasMatchingAction) {
            return this.mimeTypeMatchLevel - other.mimeTypeMatchLevel;
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavDestination getDestination() {
        return this.destination;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Bundle getMatchingArgs() {
        return this.matchingArgs;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean hasMatchingArgs(Bundle arguments) {
        Bundle bundle;
        Object obj;
        if (arguments == null || (bundle = this.matchingArgs) == null) {
            return false;
        }
        Set<String> setKeySet = bundle.keySet();
        setKeySet.getClass();
        for (String str : setKeySet) {
            if (!arguments.containsKey(str)) {
                return false;
            }
            NavArgument navArgument = (NavArgument) NavDestination.access$get_arguments$p(this.destination).get(str);
            Object obj2 = null;
            NavType<Object> type = navArgument != null ? navArgument.getType() : null;
            if (type != null) {
                Bundle bundle2 = this.matchingArgs;
                str.getClass();
                obj = type.get(bundle2, str);
            } else {
                obj = null;
            }
            if (type != null) {
                str.getClass();
                obj2 = type.get(arguments, str);
            }
            if (type != null && !type.valueEquals(obj, obj2)) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(NavDestination$DeepLinkMatch navDestination$DeepLinkMatch) {
        return compareTo2(navDestination$DeepLinkMatch);
    }
}
