package androidx.navigation;

import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.NavDestination;
import androidx.navigation.serialization.RouteSerializerKt;
import com.bumptech.glide.AbstractC1031d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import p055e9.InterfaceC1506b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@NavDestinationDsl
@Metadata(m3158d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018\u0000*\n\b\u0000\u0010\u0001 \u0001*\u00020\u00022\u00020\u0003B!\b\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB!\b\u0016\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bBB\b\u0016\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0005\u0012\f\u0010\t\u001a\b\u0012\u0002\b\u0003\u0018\u00010\f\u0012\u001b\u0010\r\u001a\u0017\u0012\u0004\u0012\u00020\u000f\u0012\r\u0012\u000b\u0012\u0002\b\u00030\u0010¢\u0006\u0002\b\u00110\u000e¢\u0006\u0002\u0010\u0012B+\b\u0000\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u0013J)\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00072\u0017\u0010+\u001a\u0013\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020)0,¢\u0006\u0002\b.H\u0007J\u0016\u0010/\u001a\u00020)2\u0006\u00100\u001a\u00020\n2\u0006\u0010/\u001a\u00020\u0018J'\u0010/\u001a\u00020)2\u0006\u00100\u001a\u00020\n2\u0017\u00101\u001a\u0013\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020)0,¢\u0006\u0002\b.J\r\u00103\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00104J\u000e\u00105\u001a\u00020)2\u0006\u00106\u001a\u00020\u001bJ\u001f\u00105\u001a\u00020)2\u0017\u00106\u001a\u0013\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020)0,¢\u0006\u0002\b.J\u000e\u00105\u001a\u00020)2\u0006\u00108\u001a\u00020\nJ\"\u00105\u001a\u00020)\"\n\b\u0001\u00109\u0018\u0001*\u00020\u00032\u0006\u0010:\u001a\u00020\nH\u0087\b¢\u0006\u0002\b;J;\u00105\u001a\u00020)\"\n\b\u0001\u00109\u0018\u0001*\u00020\u00032\u0006\u0010:\u001a\u00020\n2\u0019\b\b\u00106\u001a\u0013\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020)0,¢\u0006\u0002\b.H\u0086\bø\u0001\u0000JA\u00105\u001a\u00020)\"\b\b\u0001\u00109*\u00020\u00032\u0006\u0010:\u001a\u00020\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H90\f2\u0017\u00106\u001a\u0013\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020)0,¢\u0006\u0002\b.H\u0007J\r\u0010<\u001a\u00028\u0000H\u0014¢\u0006\u0002\u00104R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00180\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0005X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00100\u000eX\u0082.¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006="}, m3159d2 = {"Landroidx/navigation/NavDestinationBuilder;", "D", "Landroidx/navigation/NavDestination;", "", "navigator", "Landroidx/navigation/Navigator;", "id", "", "(Landroidx/navigation/Navigator;I)V", "route", "", "(Landroidx/navigation/Navigator;Ljava/lang/String;)V", "Lkotlin/reflect/KClass;", "typeMap", "", "Lkotlin/reflect/KType;", "Landroidx/navigation/NavType;", "Lkotlin/jvm/JvmSuppressWildcards;", "(Landroidx/navigation/Navigator;Lkotlin/reflect/KClass;Ljava/util/Map;)V", "(Landroidx/navigation/Navigator;ILjava/lang/String;)V", "actions", "", "Landroidx/navigation/NavAction;", "arguments", "Landroidx/navigation/NavArgument;", "deepLinks", "", "Landroidx/navigation/NavDeepLink;", "getId", "()I", "label", "", "getLabel", "()Ljava/lang/CharSequence;", "setLabel", "(Ljava/lang/CharSequence;)V", "getNavigator", "()Landroidx/navigation/Navigator;", "getRoute", "()Ljava/lang/String;", "action", "", "actionId", "actionBuilder", "Lkotlin/Function1;", "Landroidx/navigation/NavActionBuilder;", "Lkotlin/ExtensionFunctionType;", "argument", "name", "argumentBuilder", "Landroidx/navigation/NavArgumentBuilder;", "build", "()Landroidx/navigation/NavDestination;", "deepLink", "navDeepLink", "Landroidx/navigation/NavDeepLinkDslBuilder;", "uriPattern", ExifInterface.GPS_DIRECTION_TRUE, "basePath", "deepLinkSafeArgs", "instantiateDestination", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavDestinationBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavDestinationBuilder.kt\nandroidx/navigation/NavDestinationBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,398:1\n1855#2,2:399\n1855#2,2:401\n1855#2,2:405\n215#3,2:403\n215#3,2:407\n*S KotlinDebug\n*F\n+ 1 NavDestinationBuilder.kt\nandroidx/navigation/NavDestinationBuilder\n*L\n95#1:399,2\n238#1:401,2\n295#1:405,2\n294#1:403,2\n296#1:407,2\n*E\n"})
public class NavDestinationBuilder<D extends NavDestination> {
    private Map<Integer, NavAction> actions;
    private Map<String, NavArgument> arguments;
    private List<NavDeepLink> deepLinks;
    private final int id;
    private CharSequence label;
    private final Navigator<? extends D> navigator;
    private final String route;
    private Map<KType, ? extends NavType<?>> typeMap;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDestinationBuilder(Navigator<? extends D> navigator, KClass<?> kClass, Map<KType, NavType<?>> map) {
        this(navigator, kClass != null ? RouteSerializerKt.generateHashCode(AbstractC1031d.m1289s(kClass)) : -1, kClass != null ? RouteSerializerKt.generateRoutePattern$default(AbstractC1031d.m1289s(kClass), map, null, 2, null) : null);
        navigator.getClass();
        map.getClass();
        if (kClass != null) {
            for (NamedNavArgument namedNavArgument : RouteSerializerKt.generateNavArguments(AbstractC1031d.m1289s(kClass), map)) {
                this.arguments.put(namedNavArgument.getName(), namedNavArgument.getArgument());
            }
        }
        this.typeMap = map;
    }

    @Deprecated(message = "Building NavDestinations using IDs with the Kotlin DSL has been deprecated in favor of using routes. When using routes there is no need for actions.")
    public final void action(int actionId, Function1<? super NavActionBuilder, Unit> actionBuilder) {
        actionBuilder.getClass();
        Map<Integer, NavAction> map = this.actions;
        Integer numValueOf = Integer.valueOf(actionId);
        NavActionBuilder navActionBuilder = new NavActionBuilder();
        actionBuilder.invoke(navActionBuilder);
        map.put(numValueOf, navActionBuilder.build$navigation_common_release());
    }

    public final void argument(String name, Function1<? super NavArgumentBuilder, Unit> argumentBuilder) {
        name.getClass();
        argumentBuilder.getClass();
        Map<String, NavArgument> map = this.arguments;
        NavArgumentBuilder navArgumentBuilder = new NavArgumentBuilder();
        argumentBuilder.invoke(navArgumentBuilder);
        map.put(name, navArgumentBuilder.build());
    }

    public D build() {
        D d = (D) instantiateDestination();
        d.setLabel(this.label);
        for (Map.Entry<String, NavArgument> entry : this.arguments.entrySet()) {
            d.addArgument(entry.getKey(), entry.getValue());
        }
        Iterator<T> it = this.deepLinks.iterator();
        while (it.hasNext()) {
            d.addDeepLink((NavDeepLink) it.next());
        }
        for (Map.Entry<Integer, NavAction> entry2 : this.actions.entrySet()) {
            d.putAction(entry2.getKey().intValue(), entry2.getValue());
        }
        String str = this.route;
        if (str != null) {
            d.setRoute(str);
        }
        int i10 = this.id;
        if (i10 != -1) {
            d.setId(i10);
        }
        return d;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final <T> void deepLink(String basePath, KClass<T> route, Function1<? super NavDeepLinkDslBuilder, Unit> navDeepLink) {
        basePath.getClass();
        route.getClass();
        navDeepLink.getClass();
        if (this.typeMap == null) {
            C0674b.m839f(route, "Cannot add deeplink from KClass [", "]. Use the NavDestinationBuilder constructor that takes a KClass with the same arguments.");
            return;
        }
        InterfaceC1506b interfaceC1506bM1289s = AbstractC1031d.m1289s(route);
        Map<KType, ? extends NavType<?>> map = this.typeMap;
        Map<KType, ? extends NavType<?>> map2 = null;
        if (map == null) {
            Intrinsics.throwUninitializedPropertyAccessException("typeMap");
            map = null;
        }
        for (NamedNavArgument namedNavArgument : RouteSerializerKt.generateNavArguments(interfaceC1506bM1289s, map)) {
            NavArgument navArgument = this.arguments.get(namedNavArgument.getName());
            if (navArgument == null || !Intrinsics.areEqual(navArgument.getType(), namedNavArgument.getArgument().getType())) {
                StringBuilder sb = new StringBuilder("Cannot add deeplink from KClass [");
                sb.append(route);
                String name = namedNavArgument.getName();
                sb.append("]. DeepLink contains unknown argument [");
                sb.append(name);
                sb.append("]. Ensure deeplink arguments matches the destination's route from KClass");
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
        Map<KType, ? extends NavType<?>> map3 = this.typeMap;
        if (map3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("typeMap");
        } else {
            map2 = map3;
        }
        deepLink(NavDeepLinkDslBuilderKt.navDeepLink(basePath, route, map2, navDeepLink));
    }

    @JvmName(name = "deepLinkSafeArgs")
    public final /* synthetic */ <T> void deepLinkSafeArgs(String basePath) {
        basePath.getClass();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        deepLink(basePath, Reflection.getOrCreateKotlinClass(Object.class), new Function1<NavDeepLinkDslBuilder, Unit>() { // from class: androidx.navigation.NavDestinationBuilder.deepLink.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NavDeepLinkDslBuilder navDeepLinkDslBuilder) {
                invoke2(navDeepLinkDslBuilder);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(NavDeepLinkDslBuilder navDeepLinkDslBuilder) {
                navDeepLinkDslBuilder.getClass();
            }
        });
    }

    public final int getId() {
        return this.id;
    }

    public final CharSequence getLabel() {
        return this.label;
    }

    public final Navigator<? extends D> getNavigator() {
        return this.navigator;
    }

    public final String getRoute() {
        return this.route;
    }

    public D instantiateDestination() {
        return (D) this.navigator.createDestination();
    }

    public final void setLabel(CharSequence charSequence) {
        this.label = charSequence;
    }

    public final void argument(String name, NavArgument argument) {
        name.getClass();
        argument.getClass();
        this.arguments.put(name, argument);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated(message = "Use routes to build your NavDestination instead", replaceWith = @ReplaceWith(expression = "NavDestinationBuilder(navigator, route = id.toString())", imports = {}))
    public NavDestinationBuilder(Navigator<? extends D> navigator, @IdRes int i10) {
        this(navigator, i10, (String) null);
        navigator.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NavDestinationBuilder(Navigator<? extends D> navigator, String str) {
        this(navigator, -1, str);
        navigator.getClass();
    }

    public NavDestinationBuilder(Navigator<? extends D> navigator, @IdRes int i10, String str) {
        navigator.getClass();
        this.navigator = navigator;
        this.id = i10;
        this.route = str;
        this.arguments = new LinkedHashMap();
        this.deepLinks = new ArrayList();
        this.actions = new LinkedHashMap();
    }

    public final void deepLink(Function1<? super NavDeepLinkDslBuilder, Unit> navDeepLink) {
        navDeepLink.getClass();
        List<NavDeepLink> list = this.deepLinks;
        NavDeepLinkDslBuilder navDeepLinkDslBuilder = new NavDeepLinkDslBuilder();
        navDeepLink.invoke(navDeepLinkDslBuilder);
        list.add(navDeepLinkDslBuilder.build$navigation_common_release());
    }

    public final /* synthetic */ <T> void deepLink(String basePath, Function1<? super NavDeepLinkDslBuilder, Unit> navDeepLink) {
        basePath.getClass();
        navDeepLink.getClass();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        deepLink(basePath, Reflection.getOrCreateKotlinClass(Object.class), navDeepLink);
    }

    public final void deepLink(String uriPattern) {
        uriPattern.getClass();
        this.deepLinks.add(new NavDeepLink(uriPattern));
    }

    public final void deepLink(NavDeepLink navDeepLink) {
        navDeepLink.getClass();
        this.deepLinks.add(navDeepLink);
    }
}
