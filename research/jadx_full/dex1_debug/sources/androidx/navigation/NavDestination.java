package androidx.navigation;

import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000¦\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\r\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\b\u0016\u0018\u0000 `2\u00020\u0001:\u0003_`aB\u0017\b\u0016\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0003¢\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0016\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\nJ\u000e\u00106\u001a\u0002032\u0006\u00107\u001a\u00020\u0014J\u000e\u00106\u001a\u0002032\u0006\u00108\u001a\u00020\u0006J\u0014\u00109\u001a\u0004\u0018\u00010:2\b\u0010;\u001a\u0004\u0018\u00010:H\u0007J\u0014\u0010<\u001a\u00020=2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u0000H\u0007J\u0013\u0010?\u001a\u00020@2\b\u0010A\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u001a\u0010B\u001a\u0004\u0018\u00010\u00062\u0006\u0010C\u001a\u00020D2\b\u0010E\u001a\u0004\u0018\u00010:J\u0012\u0010F\u001a\u0004\u0018\u00010\r2\b\b\u0001\u0010\u0018\u001a\u00020\u0019J\u0010\u0010G\u001a\u00020@2\u0006\u0010H\u001a\u00020IH\u0016J\u0010\u0010G\u001a\u00020@2\u0006\u0010J\u001a\u00020KH\u0016J.\u0010L\u001a\u00020@2\u0006\u0010H\u001a\u00020\u00142\b\u0010M\u001a\u0004\u0018\u00010I2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u000fH\u0002J\u001a\u0010N\u001a\u00020@2\u0006\u0010-\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010:H\u0007J\b\u0010O\u001a\u00020\u0019H\u0016J\u0012\u0010P\u001a\u0004\u0018\u00010Q2\u0006\u0010R\u001a\u00020KH\u0017J\u0012\u0010S\u001a\u0004\u0018\u00010Q2\u0006\u0010-\u001a\u00020\u0006H\u0007J\u0018\u0010T\u001a\u0002032\u0006\u0010C\u001a\u00020D2\u0006\u0010U\u001a\u00020VH\u0017J\u0018\u0010W\u001a\u0002032\b\b\u0001\u0010X\u001a\u00020\u00192\u0006\u0010Y\u001a\u00020\rJ\u001a\u0010W\u001a\u0002032\b\b\u0001\u0010X\u001a\u00020\u00192\b\b\u0001\u0010Z\u001a\u00020\u0019J\u0010\u0010[\u001a\u0002032\b\b\u0001\u0010X\u001a\u00020\u0019J\u000e\u0010\\\u001a\u0002032\u0006\u00104\u001a\u00020\u0006J\b\u0010]\u001a\u00020@H\u0017J\b\u0010^\u001a\u00020\u0006H\u0016R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u00068WX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R(\u0010\u0018\u001a\u00020\u00192\b\b\u0001\u0010\u0018\u001a\u00020\u00198G@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0017R(\u0010(\u001a\u0004\u0018\u00010'2\b\u0010&\u001a\u0004\u0018\u00010'@GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R(\u0010-\u001a\u0004\u0018\u00010\u00062\b\u0010-\u001a\u0004\u0018\u00010\u0006@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0017\"\u0004\b/\u0010\u0007R\u0016\u00100\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u000101X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006b"}, d2 = {"Landroidx/navigation/NavDestination;", "", "navigator", "Landroidx/navigation/Navigator;", "(Landroidx/navigation/Navigator;)V", "navigatorName", "", "(Ljava/lang/String;)V", "_arguments", "", "Landroidx/navigation/NavArgument;", "actions", "Landroidx/collection/SparseArrayCompat;", "Landroidx/navigation/NavAction;", "arguments", "", "getArguments", "()Ljava/util/Map;", "deepLinks", "", "Landroidx/navigation/NavDeepLink;", "displayName", "getDisplayName", "()Ljava/lang/String;", "id", "", "getId", "()I", "setId", "(I)V", "idName", "label", "", "getLabel", "()Ljava/lang/CharSequence;", "setLabel", "(Ljava/lang/CharSequence;)V", "getNavigatorName", "<set-?>", "Landroidx/navigation/NavGraph;", "parent", "getParent", "()Landroidx/navigation/NavGraph;", "setParent", "(Landroidx/navigation/NavGraph;)V", "route", "getRoute", "setRoute", "routeDeepLink", "Lkotlin/Lazy;", "addArgument", "", "argumentName", "argument", "addDeepLink", "navDeepLink", "uriPattern", "addInDefaultArgs", "Landroid/os/Bundle;", "args", "buildDeepLinkIds", "", "previousDestination", "equals", "", "other", "fillInLabel", "context", "Landroid/content/Context;", "bundle", "getAction", "hasDeepLink", "deepLink", "Landroid/net/Uri;", "deepLinkRequest", "Landroidx/navigation/NavDeepLinkRequest;", "hasRequiredArguments", "uri", "hasRoute", "hashCode", "matchDeepLink", "Landroidx/navigation/NavDestination$DeepLinkMatch;", "navDeepLinkRequest", "matchRoute", "onInflate", "attrs", "Landroid/util/AttributeSet;", "putAction", "actionId", "action", "destId", "removeAction", "removeArgument", "supportsActions", "toString", "ClassType", "Companion", "DeepLinkMatch", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavDestination.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDestination.kt\nandroidx/navigation/NavDestination\n+ 2 TypedArray.kt\nandroidx/core/content/res/TypedArrayKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Uri.kt\nandroidx/core/net/UriKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 7 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,862:1\n232#2,3:863\n1#3:866\n29#4:867\n1549#5:868\n1620#5,3:869\n1855#5,2:876\n1855#5,2:879\n1855#5,2:882\n1224#6,2:872\n1224#6,2:874\n32#7:878\n33#7:881\n*S KotlinDebug\n*F\n+ 1 NavDestination.kt\nandroidx/navigation/NavDestination\n*L\n188#1:863,3\n380#1:867\n482#1:868\n482#1:869,3\n725#1:876,2\n733#1:879,2\n737#1:882,2\n706#1:872,2\n710#1:874,2\n730#1:878\n730#1:881\n*E\n"})
public class NavDestination {
    public static final NavDestination$Companion Companion = new NavDestination$Companion(null);
    private static final Map<String, Class<?>> classes = new LinkedHashMap();
    private Map<String, NavArgument> _arguments;
    private final SparseArrayCompat<NavAction> actions;
    private final List<NavDeepLink> deepLinks;
    private int id;
    private String idName;
    private CharSequence label;
    private final String navigatorName;
    private NavGraph parent;
    private String route;
    private Lazy<NavDeepLink> routeDeepLink;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NavDestination(String str) {
        str.getClass();
        this.navigatorName = str;
        this.deepLinks = new ArrayList();
        this.actions = new SparseArrayCompat<>(0, 1, null);
        this._arguments = new LinkedHashMap();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Map access$getClasses$cp() {
        return classes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Map access$get_arguments$p(NavDestination navDestination) {
        return navDestination._arguments;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int[] buildDeepLinkIds$default(NavDestination navDestination, NavDestination navDestination2, int i9, Object obj) {
        if (obj != null) {
            b.g("Super calls with default arguments not supported in this target, function: buildDeepLinkIds");
            return null;
        }
        if ((i9 & 1) != 0) {
            navDestination2 = null;
        }
        return navDestination.buildDeepLinkIds(navDestination2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final Sequence<NavDestination> getHierarchy(NavDestination navDestination) {
        return Companion.getHierarchy(navDestination);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean hasRequiredArguments(NavDeepLink deepLink, Uri uri, Map<String, NavArgument> arguments) {
        return NavArgumentKt.missingRequiredArguments(arguments, new NavDestination$hasRequiredArguments$missingRequiredArguments$1(deepLink.getMatchingPathAndQueryArgs$navigation_common_release(uri, arguments))).isEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public static final <C> Class<? extends C> parseClassFromName(Context context, String str, Class<? extends C> cls) {
        return Companion.parseClassFromName(context, str, cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static final <C> Class<? extends C> parseClassFromNameInternal(Context context, String str, Class<? extends C> cls) {
        return Companion.parseClassFromNameInternal(context, str, cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void addArgument(String argumentName, NavArgument argument) {
        argumentName.getClass();
        argument.getClass();
        this._arguments.put(argumentName, argument);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void addDeepLink(NavDeepLink navDeepLink) {
        navDeepLink.getClass();
        List<String> listMissingRequiredArguments = NavArgumentKt.missingRequiredArguments(this._arguments, new NavDestination$addDeepLink$missingRequiredArguments$1(navDeepLink));
        if (listMissingRequiredArguments.isEmpty()) {
            this.deepLinks.add(navDeepLink);
        } else {
            b.j("Deep link ", navDeepLink.getUriPattern(), " can't be used to open destination ", this, ".\nFollowing required arguments are missing: ", listMissingRequiredArguments);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public final Bundle addInDefaultArgs(Bundle args) {
        if (args == null && this._arguments.isEmpty()) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (Map$Entry<String, NavArgument> map$Entry : this._arguments.entrySet()) {
            map$Entry.getValue().putDefaultValue(map$Entry.getKey(), bundle);
        }
        if (args != null) {
            bundle.putAll(args);
            for (Map$Entry<String, NavArgument> map$Entry2 : this._arguments.entrySet()) {
                String key = map$Entry2.getKey();
                NavArgument value = map$Entry2.getValue();
                if (!value.getIsDefaultValueUnknown() && !value.verify(key, bundle)) {
                    b.l(ai.onnxruntime.a.x("Wrong argument type for '", key, "' in argument bundle. "), value.getType().getName(), " expected.");
                    return null;
                }
            }
        }
        return bundle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:11:0x0021  */
    /* JADX WARN: Code duplicated, block: B:14:0x002b  */
    @JvmOverloads
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public final int[] buildDeepLinkIds(NavDestination previousDestination) {
        ArrayDeque arrayDeque = new ArrayDeque();
        NavDestination navDestination = this;
        while (true) {
            NavGraph navGraph = navDestination.parent;
            if ((previousDestination != null ? previousDestination.parent : null) != null) {
                NavGraph navGraph2 = previousDestination.parent;
                navGraph2.getClass();
                if (navGraph2.findNode(navDestination.id) != navDestination) {
                    if (navGraph != null || navGraph.getStartDestId() != navDestination.id) {
                        arrayDeque.addFirst(navDestination);
                    }
                    if (!Intrinsics.areEqual(navGraph, previousDestination) || navGraph == null) {
                        break;
                    }
                    navDestination = navGraph;
                } else {
                    arrayDeque.addFirst(navDestination);
                    break;
                }
            } else {
                if (navGraph != null) {
                    arrayDeque.addFirst(navDestination);
                } else {
                    arrayDeque.addFirst(navDestination);
                }
                if (!Intrinsics.areEqual(navGraph, previousDestination)) {
                    break;
                }
                navDestination = navGraph;
            }
        }
        List list = CollectionsKt.toList(arrayDeque);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((NavDestination) it.next()).id));
        }
        return CollectionsKt.y(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object other) {
        boolean z8;
        boolean z9;
        if (this == other) {
            return true;
        }
        if (other != null && (other instanceof NavDestination)) {
            NavDestination navDestination = (NavDestination) other;
            boolean zAreEqual = Intrinsics.areEqual(this.deepLinks, navDestination.deepLinks);
            if (this.actions.size() != navDestination.actions.size()) {
                z8 = false;
                break;
            }
            Iterator it = SequencesKt.asSequence(SparseArrayKt.keyIterator(this.actions)).iterator();
            while (true) {
                if (!it.hasNext()) {
                    z8 = true;
                    break;
                }
                int iIntValue = ((Number) it.next()).intValue();
                if (!Intrinsics.areEqual(this.actions.get(iIntValue), navDestination.actions.get(iIntValue))) {
                    z8 = false;
                    break;
                }
            }
            if (this._arguments.size() != navDestination._arguments.size()) {
                z9 = false;
                break;
            }
            Iterator it2 = MapsKt.asSequence(this._arguments).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z9 = true;
                    break;
                }
                Map$Entry map$Entry = (Map$Entry) it2.next();
                if (!navDestination._arguments.containsKey(map$Entry.getKey()) || !Intrinsics.areEqual(navDestination._arguments.get(map$Entry.getKey()), map$Entry.getValue())) {
                    z9 = false;
                    break;
                }
            }
            if (this.id == navDestination.id && Intrinsics.areEqual(this.route, navDestination.route) && zAreEqual && z8 && z9) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String fillInLabel(Context context, Bundle bundle) {
        NavArgument navArgument;
        context.getClass();
        CharSequence charSequence = this.label;
        if (charSequence == null) {
            return null;
        }
        Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(charSequence);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            if (bundle == null || !bundle.containsKey(strGroup)) {
                throw new IllegalArgumentException("Could not find \"" + strGroup + "\" in " + bundle + " to fill label \"" + ((Object) charSequence) + '\"');
            }
            matcher.appendReplacement(stringBuffer, "");
            NavType<Object> type = (strGroup == null || (navArgument = this._arguments.get(strGroup)) == null) ? null : navArgument.getType();
            NavType<Integer> navType = NavType.ReferenceType;
            if (Intrinsics.areEqual(type, navType)) {
                strGroup.getClass();
                Integer num = navType.get(bundle, strGroup);
                num.getClass();
                String string = context.getString(num.intValue());
                string.getClass();
                stringBuffer.append(string);
            } else {
                type.getClass();
                strGroup.getClass();
                stringBuffer.append(String.valueOf(type.get(bundle, strGroup)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavAction getAction(@IdRes int id) {
        NavAction navAction = this.actions.getIsEmpty() ? null : this.actions.get(id);
        if (navAction != null) {
            return navAction;
        }
        NavGraph navGraph = this.parent;
        if (navGraph != null) {
            return navGraph.getAction(id);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Map<String, NavArgument> getArguments() {
        return MapsKt.toMap(this._arguments);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public String getDisplayName() {
        String str = this.idName;
        return str == null ? String.valueOf(this.id) : str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IdRes
    public final int getId() {
        return this.id;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final CharSequence getLabel() {
        return this.label;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getNavigatorName() {
        return this.navigatorName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavGraph getParent() {
        return this.parent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String getRoute() {
        return this.route;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasDeepLink(Uri deepLink) {
        deepLink.getClass();
        return hasDeepLink(new NavDeepLinkRequest(deepLink, null, null));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public final boolean hasRoute(String route, Bundle arguments) {
        route.getClass();
        if (Intrinsics.areEqual(this.route, route)) {
            return true;
        }
        NavDestination$DeepLinkMatch navDestination$DeepLinkMatchMatchRoute = matchRoute(route);
        if (Intrinsics.areEqual(this, navDestination$DeepLinkMatchMatchRoute != null ? navDestination$DeepLinkMatchMatchRoute.getDestination() : null)) {
            return navDestination$DeepLinkMatchMatchRoute.hasMatchingArgs(arguments);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        Set<String> setKeySet;
        int i9 = this.id * 31;
        String str = this.route;
        int iHashCode = i9 + (str != null ? str.hashCode() : 0);
        for (NavDeepLink navDeepLink : this.deepLinks) {
            int i10 = iHashCode * 31;
            String uriPattern = navDeepLink.getUriPattern();
            int iHashCode2 = (i10 + (uriPattern != null ? uriPattern.hashCode() : 0)) * 31;
            String action = navDeepLink.getAction();
            int iHashCode3 = (iHashCode2 + (action != null ? action.hashCode() : 0)) * 31;
            String mimeType = navDeepLink.getMimeType();
            iHashCode = iHashCode3 + (mimeType != null ? mimeType.hashCode() : 0);
        }
        Iterator itValueIterator = SparseArrayKt.valueIterator(this.actions);
        while (itValueIterator.hasNext()) {
            NavAction navAction = (NavAction) itValueIterator.next();
            int destinationId = (navAction.getDestinationId() + (iHashCode * 31)) * 31;
            NavOptions navOptions = navAction.getNavOptions();
            int iHashCode4 = destinationId + (navOptions != null ? navOptions.hashCode() : 0);
            Bundle defaultArguments = navAction.getDefaultArguments();
            if (defaultArguments != null && (setKeySet = defaultArguments.keySet()) != null) {
                for (String str2 : setKeySet) {
                    int i11 = iHashCode4 * 31;
                    Bundle defaultArguments2 = navAction.getDefaultArguments();
                    defaultArguments2.getClass();
                    Object obj = defaultArguments2.get(str2);
                    iHashCode4 = i11 + (obj != null ? obj.hashCode() : 0);
                }
            }
            iHashCode = iHashCode4;
        }
        for (String str3 : this._arguments.keySet()) {
            int iHashCode5 = (str3.hashCode() + (iHashCode * 31)) * 31;
            NavArgument navArgument = this._arguments.get(str3);
            iHashCode = (navArgument != null ? navArgument.hashCode() : 0) + iHashCode5;
        }
        return iHashCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public NavDestination$DeepLinkMatch matchDeepLink(NavDeepLinkRequest navDeepLinkRequest) {
        navDeepLinkRequest.getClass();
        if (this.deepLinks.isEmpty()) {
            return null;
        }
        NavDestination$DeepLinkMatch navDestination$DeepLinkMatch = null;
        for (NavDeepLink navDeepLink : this.deepLinks) {
            Uri uri = navDeepLinkRequest.getUri();
            Bundle matchingArguments = uri != null ? navDeepLink.getMatchingArguments(uri, this._arguments) : null;
            int iCalculateMatchingPathSegments$navigation_common_release = navDeepLink.calculateMatchingPathSegments$navigation_common_release(uri);
            String action = navDeepLinkRequest.getAction();
            boolean z8 = action != null && Intrinsics.areEqual(action, navDeepLink.getAction());
            String mimeType = navDeepLinkRequest.getMimeType();
            int mimeTypeMatchRating = mimeType != null ? navDeepLink.getMimeTypeMatchRating(mimeType) : -1;
            if (matchingArguments == null) {
                if (z8 || mimeTypeMatchRating > -1) {
                    if (hasRequiredArguments(navDeepLink, uri, this._arguments)) {
                    }
                }
            }
            NavDestination$DeepLinkMatch navDestination$DeepLinkMatch2 = new NavDestination$DeepLinkMatch(this, matchingArguments, navDeepLink.getIsExactDeepLink(), iCalculateMatchingPathSegments$navigation_common_release, z8, mimeTypeMatchRating);
            if (navDestination$DeepLinkMatch == null || navDestination$DeepLinkMatch2.compareTo2(navDestination$DeepLinkMatch) > 0) {
                navDestination$DeepLinkMatch = navDestination$DeepLinkMatch2;
            }
        }
        return navDestination$DeepLinkMatch;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public final NavDestination$DeepLinkMatch matchRoute(String route) {
        NavDeepLink value;
        route.getClass();
        Lazy<NavDeepLink> lazy = this.routeDeepLink;
        if (lazy == null || (value = lazy.getValue()) == null) {
            return null;
        }
        Uri uri = Uri.parse(Companion.createRoute(route));
        uri.getClass();
        Bundle matchingArguments = value.getMatchingArguments(uri, this._arguments);
        if (matchingArguments == null) {
            return null;
        }
        return new NavDestination$DeepLinkMatch(this, matchingArguments, value.getIsExactDeepLink(), value.calculateMatchingPathSegments$navigation_common_release(uri), false, -1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @CallSuper
    public void onInflate(Context context, AttributeSet attrs) {
        context.getClass();
        attrs.getClass();
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attrs, androidx.navigation.common.R$styleable.Navigator);
        typedArrayObtainAttributes.getClass();
        setRoute(typedArrayObtainAttributes.getString(androidx.navigation.common.R$styleable.Navigator_route));
        if (typedArrayObtainAttributes.hasValue(androidx.navigation.common.R$styleable.Navigator_android_id)) {
            setId(typedArrayObtainAttributes.getResourceId(androidx.navigation.common.R$styleable.Navigator_android_id, 0));
            this.idName = Companion.getDisplayName(context, this.id);
        }
        this.label = typedArrayObtainAttributes.getText(androidx.navigation.common.R$styleable.Navigator_android_label);
        Unit unit = Unit.INSTANCE;
        typedArrayObtainAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void putAction(@IdRes int actionId, NavAction action) {
        action.getClass();
        if (supportsActions()) {
            if (actionId != 0) {
                this.actions.put(actionId, action);
                return;
            } else {
                i.k("Cannot have an action with actionId 0");
                return;
            }
        }
        throw new UnsupportedOperationException("Cannot add action " + actionId + " to " + this + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void removeAction(@IdRes int actionId) {
        this.actions.remove(actionId);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void removeArgument(String argumentName) {
        argumentName.getClass();
        this._arguments.remove(argumentName);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setId(@IdRes int i9) {
        this.id = i9;
        this.idName = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setLabel(CharSequence charSequence) {
        this.label = charSequence;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public final void setParent(NavGraph navGraph) {
        this.parent = navGraph;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void setRoute(String str) {
        if (str == null) {
            setId(0);
        } else {
            if (StringsKt.isBlank(str)) {
                i.k("Cannot have an empty route");
                return;
            }
            String strCreateRoute = Companion.createRoute(str);
            List<String> listMissingRequiredArguments = NavArgumentKt.missingRequiredArguments(this._arguments, new NavDestination$route$missingRequiredArguments$1(new NavDeepLink$Builder().setUriPattern(strCreateRoute).build()));
            if (!listMissingRequiredArguments.isEmpty()) {
                b.j("Cannot set route \"", str, "\" for destination ", this, ". Following required arguments are missing: ", listMissingRequiredArguments);
                return;
            } else {
                this.routeDeepLink = LazyKt.lazy(new NavDestination$route$3(strCreateRoute));
                setId(strCreateRoute.hashCode());
            }
        }
        this.route = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public boolean supportsActions() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(");
        String str = this.idName;
        if (str == null) {
            sb.append("0x");
            sb.append(Integer.toHexString(this.id));
        } else {
            sb.append(str);
        }
        sb.append(")");
        String str2 = this.route;
        if (str2 != null && !StringsKt.isBlank(str2)) {
            sb.append(" route=");
            sb.append(this.route);
        }
        if (this.label != null) {
            sb.append(" label=");
            sb.append(this.label);
        }
        return sb.toString();
    }

    @JvmStatic
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static final String getDisplayName(Context context, int i9) {
        return Companion.getDisplayName(context, i9);
    }

    public boolean hasDeepLink(NavDeepLinkRequest deepLinkRequest) {
        deepLinkRequest.getClass();
        return matchDeepLink(deepLinkRequest) != null;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: androidx.navigation.NavigatorProvider$Companion */
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NavDestination(Navigator<? extends NavDestination> navigator) {
        this(NavigatorProvider.Companion.getNameForNavigator$navigation_common_release(navigator.getClass()));
        navigator.getClass();
    }

    @JvmStatic
    public static final <T> boolean hasRoute(NavDestination navDestination, KClass<T> kClass) {
        return Companion.hasRoute(navDestination, kClass);
    }

    public final void addDeepLink(String uriPattern) {
        uriPattern.getClass();
        addDeepLink(new NavDeepLink$Builder().setUriPattern(uriPattern).build());
    }

    public final void putAction(@IdRes int actionId, @IdRes int destId) {
        putAction(actionId, new NavAction(destId, null, null, 6, null));
    }

    @JvmOverloads
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public final int[] buildDeepLinkIds() {
        return buildDeepLinkIds$default(this, null, 1, null);
    }
}
