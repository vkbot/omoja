package androidx.navigation;

import androidx.annotation.IdRes;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\\\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00032\u001d\b\u0002\u0010\u0006\u001a\u0017\u0012\u0004\u0012\u00020\b\u0012\r\u0012\u000b\u0012\u0002\b\u00030\t¢\u0006\u0002\b\n0\u00072\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000\u001a=\u0010\u0000\u001a\u00020\u0001*\u00020\u00042\b\b\u0001\u0010\u000e\u001a\u00020\u000f2\b\b\u0001\u0010\u0005\u001a\u00020\u000f2\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0002\b\rH\u0087\bø\u0001\u0000\u001a9\u0010\u0000\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000\u001a`\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00122\u001d\b\u0002\u0010\u0006\u001a\u0017\u0012\u0004\u0012\u00020\b\u0012\r\u0012\u000b\u0012\u0002\b\u00030\t¢\u0006\u0002\b\n0\u00072\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000\u001a`\u0010\u0000\u001a\u00020\u0013*\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00032\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00122\u001d\b\u0002\u0010\u0006\u001a\u0017\u0012\u0004\u0012\u00020\b\u0012\r\u0012\u000b\u0012\u0002\b\u00030\t¢\u0006\u0002\b\n0\u00072\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000\u001a=\u0010\u0000\u001a\u00020\u0013*\u00020\u00142\b\b\u0003\u0010\u000e\u001a\u00020\u000f2\b\b\u0001\u0010\u0005\u001a\u00020\u000f2\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0002\b\rH\u0087\bø\u0001\u0000\u001a=\u0010\u0000\u001a\u00020\u0013*\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000\u001ad\u0010\u0000\u001a\u00020\u0013*\u00020\u00142\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00122\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00122\u001d\b\u0002\u0010\u0006\u001a\u0017\u0012\u0004\u0012\u00020\b\u0012\r\u0012\u000b\u0012\u0002\b\u00030\t¢\u0006\u0002\b\n0\u00072\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\f¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0015"}, d2 = {NotificationCompat.CATEGORY_NAVIGATION, "", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroidx/navigation/NavGraphBuilder;", "startDestination", "typeMap", "", "Lkotlin/reflect/KType;", "Landroidx/navigation/NavType;", "Lkotlin/jvm/JvmSuppressWildcards;", "builder", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "id", "", "", "route", "Lkotlin/reflect/KClass;", "Landroidx/navigation/NavGraph;", "Landroidx/navigation/NavigatorProvider;", "navigation-common_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class NavGraphBuilderKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ <T> void navigation(NavGraphBuilder navGraphBuilder, KClass<?> kClass, Map<KType, NavType<?>> map, Function1<? super NavGraphBuilder, Unit> function1) {
        navGraphBuilder.getClass();
        kClass.getClass();
        map.getClass();
        function1.getClass();
        NavigatorProvider provider = navGraphBuilder.getProvider();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        NavGraphBuilder navGraphBuilder2 = new NavGraphBuilder(provider, kClass, (KClass<?>) Reflection.getOrCreateKotlinClass(Object.class), map);
        function1.invoke(navGraphBuilder2);
        navGraphBuilder.destination(navGraphBuilder2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void navigation$default(NavGraphBuilder navGraphBuilder, KClass kClass, Map map, Function1 function1, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        navGraphBuilder.getClass();
        kClass.getClass();
        map.getClass();
        function1.getClass();
        NavigatorProvider provider = navGraphBuilder.getProvider();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        NavGraphBuilder navGraphBuilder2 = new NavGraphBuilder(provider, (KClass<?>) kClass, (KClass<?>) Reflection.getOrCreateKotlinClass(Object.class), (Map<KType, NavType<?>>) map);
        function1.invoke(navGraphBuilder2);
        navGraphBuilder.destination(navGraphBuilder2);
    }

    public static final NavGraph navigation(NavigatorProvider navigatorProvider, String str, String str2, Function1<? super NavGraphBuilder, Unit> function1) {
        navigatorProvider.getClass();
        str.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, str, str2);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final NavGraph navigation(NavigatorProvider navigatorProvider, KClass<?> kClass, KClass<?> kClass2, Map<KType, NavType<?>> map, Function1<? super NavGraphBuilder, Unit> function1) {
        navigatorProvider.getClass();
        kClass.getClass();
        map.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, kClass, kClass2, map);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final NavGraph navigation(NavigatorProvider navigatorProvider, Object obj, KClass<?> kClass, Map<KType, NavType<?>> map, Function1<? super NavGraphBuilder, Unit> function1) {
        navigatorProvider.getClass();
        obj.getClass();
        map.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, obj, kClass, map);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    @Deprecated(message = "Use routes to build your nested NavGraph instead", replaceWith = @ReplaceWith(expression = "navigation(startDestination = startDestination.toString(), route = id.toString()) { builder.invoke() }", imports = {}))
    public static final void navigation(NavGraphBuilder navGraphBuilder, @IdRes int i9, @IdRes int i10, Function1<? super NavGraphBuilder, Unit> function1) {
        navGraphBuilder.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder2 = new NavGraphBuilder(navGraphBuilder.getProvider(), i9, i10);
        function1.invoke(navGraphBuilder2);
        navGraphBuilder.destination(navGraphBuilder2);
    }

    public static final void navigation(NavGraphBuilder navGraphBuilder, String str, String str2, Function1<? super NavGraphBuilder, Unit> function1) {
        navGraphBuilder.getClass();
        str.getClass();
        str2.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder2 = new NavGraphBuilder(navGraphBuilder.getProvider(), str, str2);
        function1.invoke(navGraphBuilder2);
        navGraphBuilder.destination(navGraphBuilder2);
    }

    @Deprecated(message = "Use routes to build your NavGraph instead", replaceWith = @ReplaceWith(expression = "navigation(startDestination = startDestination.toString(), route = id.toString()) { builder.invoke() }", imports = {}))
    public static final NavGraph navigation(NavigatorProvider navigatorProvider, @IdRes int i9, @IdRes int i10, Function1<? super NavGraphBuilder, Unit> function1) {
        navigatorProvider.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, i9, i10);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final /* synthetic */ <T> void navigation(NavGraphBuilder navGraphBuilder, Object obj, Map<KType, NavType<?>> map, Function1<? super NavGraphBuilder, Unit> function1) {
        navGraphBuilder.getClass();
        obj.getClass();
        map.getClass();
        function1.getClass();
        NavigatorProvider provider = navGraphBuilder.getProvider();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        NavGraphBuilder navGraphBuilder2 = new NavGraphBuilder(provider, obj, (KClass<?>) Reflection.getOrCreateKotlinClass(Object.class), map);
        function1.invoke(navGraphBuilder2);
        navGraphBuilder.destination(navGraphBuilder2);
    }

    public static /* synthetic */ NavGraph navigation$default(NavigatorProvider navigatorProvider, String str, String str2, Function1 function1, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            str2 = null;
        }
        navigatorProvider.getClass();
        str.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, str, str2);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph navigation$default(NavigatorProvider navigatorProvider, KClass kClass, KClass kClass2, Map map, Function1 function1, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            kClass2 = null;
        }
        if ((i9 & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        navigatorProvider.getClass();
        kClass.getClass();
        map.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, (KClass<?>) kClass, (KClass<?>) kClass2, (Map<KType, NavType<?>>) map);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph navigation$default(NavigatorProvider navigatorProvider, Object obj, KClass kClass, Map map, Function1 function1, int i9, Object obj2) {
        if ((i9 & 2) != 0) {
            kClass = null;
        }
        if ((i9 & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        navigatorProvider.getClass();
        obj.getClass();
        map.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, obj, (KClass<?>) kClass, (Map<KType, NavType<?>>) map);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph navigation$default(NavigatorProvider navigatorProvider, int i9, int i10, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = 0;
        }
        navigatorProvider.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigatorProvider, i9, i10);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ void navigation$default(NavGraphBuilder navGraphBuilder, Object obj, Map map, Function1 function1, int i9, Object obj2) {
        if ((i9 & 2) != 0) {
            map = MapsKt.emptyMap();
        }
        navGraphBuilder.getClass();
        obj.getClass();
        map.getClass();
        function1.getClass();
        NavigatorProvider provider = navGraphBuilder.getProvider();
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        NavGraphBuilder navGraphBuilder2 = new NavGraphBuilder(provider, obj, (KClass<?>) Reflection.getOrCreateKotlinClass(Object.class), (Map<KType, NavType<?>>) map);
        function1.invoke(navGraphBuilder2);
        navGraphBuilder.destination(navGraphBuilder2);
    }
}
