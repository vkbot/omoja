package androidx.navigation.serialization;

import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.NamedNavArgument;
import androidx.navigation.NamedNavArgumentKt;
import androidx.navigation.NavType;
import com.bumptech.glide.d;
import e9.b;
import g9.e;
import g9.j;
import j1.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KType;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000`\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\u001aE\u0010\b\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0004\b\b\u0010\t\u001a?\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0002H\u0007¢\u0006\u0004\b\f\u0010\r\u001a=\u0010\u0010\u001a\u00020\u0006\"\b\b\u0000\u0010\u0000*\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u00002\u001a\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00040\u0002H\u0007¢\u0006\u0004\b\u0010\u0010\u0011\u001a-\u0010\u0015\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016\u001a5\u0010\u0018\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u0004*\u00020\u00172\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0002H\u0002¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u001f\u0010\u001b\u001a\u00020\u001a\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0007¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u008e\u0001\u0010&\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u00022S\u0010#\u001aO\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(!\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0004¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00130\u001dH\u0003¢\u0006\u0004\b$\u0010%\u001a\u0090\u0001\u0010&\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u001a\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00040\u00022S\u0010#\u001aO\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(!\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0004¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00130\u001dH\u0003¢\u0006\u0004\b'\u0010%\u001a/\u0010+\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¢\u0006\u0004\b+\u0010,\u001a\u0013\u0010.\u001a\u00020-*\u00020\u0017H\u0000¢\u0006\u0004\b.\u0010/¨\u00060"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Le9/b;", "", "Lkotlin/reflect/KType;", "Landroidx/navigation/NavType;", "typeMap", "", "path", "generateRoutePattern", "(Le9/b;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;", "", "Landroidx/navigation/NamedNavArgument;", "generateNavArguments", "(Le9/b;Ljava/util/Map;)Ljava/util/List;", "", "route", "generateRouteWithArgs", "(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;", "Lkotlin/Function0;", "", "handler", "assertNotAbstractClass", "(Le9/b;Lkotlin/jvm/functions/Function0;)V", "Lg9/e;", "computeNavType", "(Lg9/e;Ljava/util/Map;)Landroidx/navigation/NavType;", "", "generateHashCode", "(Le9/b;)I", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "index", "argName", "navType", "operation", "forEachIndexedKType", "(Le9/b;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)V", "forEachIndexed", "forEachIndexedName", "fieldName", "fieldType", "className", "unknownNavTypeErrorMessage", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "", "isValueClass", "(Lg9/e;)Z", "navigation-common_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nRouteSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RouteSerializer.kt\nandroidx/navigation/serialization/RouteSerializerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1#2:226\n*E\n"})
public final class RouteSerializerKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ NavType access$computeNavType(e eVar, Map map) {
        return computeNavType(eVar, map);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ String access$unknownNavTypeErrorMessage(String str, String str2, String str3, String str4) {
        return unknownNavTypeErrorMessage(str, str2, str3, str4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final <T> void assertNotAbstractClass(b bVar, Function0<Unit> function0) {
        if (bVar instanceof e9.e) {
            function0.invoke();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final NavType<Object> computeNavType(e eVar, Map<KType, ? extends NavType<?>> map) {
        Object next;
        Iterator<T> it = map.keySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!NavTypeConverterKt.matchKType(eVar, (KType) next));
        KType kType = (KType) next;
        NavType<?> navType = kType != null ? map.get(kType) : null;
        if (navType == null) {
            navType = null;
        }
        if (navType == null) {
            navType = NavTypeConverterKt.getNavType(eVar);
        }
        if (Intrinsics.areEqual(navType, UNKNOWN.INSTANCE)) {
            return null;
        }
        navType.getClass();
        return navType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmName(name = "forEachIndexedKType")
    private static final <T> void forEachIndexedKType(b bVar, Map<KType, ? extends NavType<?>> map, Function3<? super Integer, ? super String, ? super NavType<Object>, Unit> function3) {
        int iD = bVar.a().d();
        for (int i9 = 0; i9 < iD; i9++) {
            String strE = bVar.a().e(i9);
            NavType<Object> navTypeComputeNavType = computeNavType(bVar.a().f(i9), map);
            if (navTypeComputeNavType == null) {
                i.k(unknownNavTypeErrorMessage(strE, bVar.a().f(i9).a(), bVar.a().a(), map.toString()));
                return;
            }
            function3.invoke(Integer.valueOf(i9), strE, navTypeComputeNavType);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void forEachIndexedKType$default(b bVar, Map map, Function3 function3, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        forEachIndexedKType(bVar, map, function3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmName(name = "forEachIndexedName")
    private static final <T> void forEachIndexedName(b bVar, Map<String, ? extends NavType<Object>> map, Function3<? super Integer, ? super String, ? super NavType<Object>, Unit> function3) {
        int iD = bVar.a().d();
        for (int i9 = 0; i9 < iD; i9++) {
            String strE = bVar.a().e(i9);
            NavType<Object> navType = map.get(strE);
            if (navType == null) {
                throw new IllegalStateException(("Cannot locate NavType for argument [" + strE + ']').toString());
            }
            function3.invoke(Integer.valueOf(i9), strE, navType);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static final <T> int generateHashCode(b bVar) {
        bVar.getClass();
        int iHashCode = bVar.a().a().hashCode();
        int iD = bVar.a().d();
        for (int i9 = 0; i9 < iD; i9++) {
            iHashCode = (iHashCode * 31) + bVar.a().e(i9).hashCode();
        }
        return iHashCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static final <T> List<NamedNavArgument> generateNavArguments(b bVar, Map<KType, ? extends NavType<?>> map) {
        bVar.getClass();
        map.getClass();
        assertNotAbstractClass(bVar, new RouteSerializerKt$generateNavArguments$1(bVar));
        int iD = bVar.a().d();
        ArrayList arrayList = new ArrayList(iD);
        for (int i9 = 0; i9 < iD; i9++) {
            String strE = bVar.a().e(i9);
            arrayList.add(NamedNavArgumentKt.navArgument(strE, new RouteSerializerKt$generateNavArguments$2$1(bVar, i9, map, strE)));
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ List generateNavArguments$default(b bVar, Map map, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        return generateNavArguments(bVar, map);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <T> String generateRoutePattern(b bVar, Map<KType, ? extends NavType<?>> map, String str) {
        bVar.getClass();
        map.getClass();
        assertNotAbstractClass(bVar, new RouteSerializerKt$generateRoutePattern$1(bVar));
        RouteBuilder routeBuilder = str != null ? new RouteBuilder(str, bVar) : new RouteBuilder(bVar);
        forEachIndexedKType(bVar, map, new RouteSerializerKt$generateRoutePattern$2(routeBuilder));
        return routeBuilder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String generateRoutePattern$default(b bVar, Map map, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i9 & 2) != 0) {
            str = null;
        }
        return generateRoutePattern(bVar, map, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public static final <T> String generateRouteWithArgs(T t, Map<String, ? extends NavType<Object>> map) {
        t.getClass();
        map.getClass();
        b bVarS = d.s(Reflection.getOrCreateKotlinClass(t.getClass()));
        Map<String, List<String>> mapEncodeToArgMap = new RouteEncoder(bVarS, map).encodeToArgMap(t);
        RouteBuilder routeBuilder = new RouteBuilder(bVarS);
        forEachIndexedName(bVarS, map, new RouteSerializerKt$generateRouteWithArgs$1(mapEncodeToArgMap, routeBuilder));
        return routeBuilder.build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final boolean isValueClass(e eVar) {
        eVar.getClass();
        return Intrinsics.areEqual(eVar.getKind(), j.d) && eVar.isInline() && eVar.d() == 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final String unknownNavTypeErrorMessage(String str, String str2, String str3, String str4) {
        return "Route " + str3 + " could not find any NavType for argument " + str + " of type " + str2 + " - typeMap received was " + str4;
    }
}
