package androidx.navigation;

import androidx.annotation.IdRes;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0000\u001a`\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00062\u001d\b\u0002\u0010\u0007\u001a\u0017\u0012\u0004\u0012\u00020\t\u0012\r\u0012\u000b\u0012\u0002\b\u00030\n¢\u0006\u0002\b\u000b0\b2\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\u0086\bø\u0001\u0000\u001a=\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0003\u0010\u0011\u001a\u00020\u00122\b\b\u0001\u0010\u0003\u001a\u00020\u00122\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\u0087\bø\u0001\u0000\u001a=\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00132\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00132\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\u0086\bø\u0001\u0000\u001ad\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00062\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00062\u001d\b\u0002\u0010\u0007\u001a\u0017\u0012\u0004\u0012\u00020\t\u0012\r\u0012\u000b\u0012\u0002\b\u00030\n¢\u0006\u0002\b\u000b0\b2\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0014"}, d2 = {"createGraph", "Landroidx/navigation/NavGraph;", "Landroidx/navigation/NavHost;", "startDestination", "", "route", "Lkotlin/reflect/KClass;", "typeMap", "", "Lkotlin/reflect/KType;", "Landroidx/navigation/NavType;", "Lkotlin/jvm/JvmSuppressWildcards;", "builder", "Lkotlin/Function1;", "Landroidx/navigation/NavGraphBuilder;", "", "Lkotlin/ExtensionFunctionType;", "id", "", "", "navigation-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavHost.kt\nandroidx/navigation/NavHostKt\n+ 2 NavController.kt\nandroidx/navigation/NavControllerKt\n+ 3 NavGraphBuilder.kt\nandroidx/navigation/NavGraphBuilderKt\n*L\n1#1,105:1\n2879#2:106\n2892#2:108\n2909#2:110\n2926#2:112\n45#3:107\n59#3:109\n77#3:111\n95#3:113\n*S KotlinDebug\n*F\n+ 1 NavHost.kt\nandroidx/navigation/NavHostKt\n*L\n63#1:106\n70#1:108\n87#1:110\n104#1:112\n63#1:107\n70#1:109\n87#1:111\n104#1:113\n*E\n"})
public final class NavHostKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final NavGraph createGraph(NavHost navHost, KClass<?> kClass, KClass<?> kClass2, Map<KType, NavType<?>> map, Function1<? super NavGraphBuilder, Unit> function1) {
        navHost.getClass();
        kClass.getClass();
        map.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().get_navigatorProvider(), kClass, kClass2, map);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ NavGraph createGraph$default(NavHost navHost, KClass kClass, KClass kClass2, Map map, Function1 function1, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            kClass2 = null;
        }
        if ((i9 & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        navHost.getClass();
        kClass.getClass();
        map.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().get_navigatorProvider(), (KClass<?>) kClass, (KClass<?>) kClass2, (Map<KType, NavType<?>>) map);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final NavGraph createGraph(NavHost navHost, String str, String str2, Function1<? super NavGraphBuilder, Unit> function1) {
        navHost.getClass();
        str.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().get_navigatorProvider(), str, str2);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    @Deprecated(message = "Use routes to create your NavGraph instead", replaceWith = @ReplaceWith(expression = "createGraph(startDestination = startDestination.toString(), route = id.toString()) { builder.invoke() }", imports = {}))
    public static final NavGraph createGraph(NavHost navHost, @IdRes int i9, @IdRes int i10, Function1<? super NavGraphBuilder, Unit> function1) {
        navHost.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().get_navigatorProvider(), i9, i10);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final NavGraph createGraph(NavHost navHost, Object obj, KClass<?> kClass, Map<KType, NavType<?>> map, Function1<? super NavGraphBuilder, Unit> function1) {
        navHost.getClass();
        obj.getClass();
        map.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().get_navigatorProvider(), obj, kClass, map);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph createGraph$default(NavHost navHost, String str, String str2, Function1 function1, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            str2 = null;
        }
        navHost.getClass();
        str.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().get_navigatorProvider(), str, str2);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph createGraph$default(NavHost navHost, int i9, int i10, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = 0;
        }
        navHost.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().get_navigatorProvider(), i9, i10);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static /* synthetic */ NavGraph createGraph$default(NavHost navHost, Object obj, KClass kClass, Map map, Function1 function1, int i9, Object obj2) {
        if ((i9 & 2) != 0) {
            kClass = null;
        }
        if ((i9 & 4) != 0) {
            map = MapsKt.emptyMap();
        }
        navHost.getClass();
        obj.getClass();
        map.getClass();
        function1.getClass();
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHost.getNavController().get_navigatorProvider(), obj, (KClass<?>) kClass, (Map<KType, NavType<?>>) map);
        function1.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }
}
