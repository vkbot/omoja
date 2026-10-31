package androidx.navigation.serialization;

import ai.onnxruntime.AbstractC0074a;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.navigation.NamedNavArgument;
import androidx.navigation.NamedNavArgumentKt;
import androidx.navigation.NavArgumentBuilder;
import androidx.navigation.NavType;
import com.bumptech.glide.AbstractC1031d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import p016b1.AbstractC0880u;
import p055e9.C1509e;
import p055e9.InterfaceC1506b;
import p076g9.C1638j;
import p076g9.InterfaceC1633e;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000`\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\u001aE\u0010\b\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0004\b\b\u0010\t\u001a?\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0002H\u0007¢\u0006\u0004\b\f\u0010\r\u001a=\u0010\u0010\u001a\u00020\u0006\"\b\b\u0000\u0010\u0000*\u00020\u000e2\u0006\u0010\u000f\u001a\u00028\u00002\u001a\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00040\u0002H\u0007¢\u0006\u0004\b\u0010\u0010\u0011\u001a-\u0010\u0015\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016\u001a5\u0010\u0018\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\u0004*\u00020\u00172\u0016\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u0002H\u0002¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u001f\u0010\u001b\u001a\u00020\u001a\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0007¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u008e\u0001\u0010&\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00040\u00022S\u0010#\u001aO\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(!\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0004¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00130\u001dH\u0003¢\u0006\u0004\b$\u0010%\u001a\u0090\u0001\u0010&\u001a\u00020\u0013\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u001a\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00040\u00022S\u0010#\u001aO\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(!\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0004¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00130\u001dH\u0003¢\u0006\u0004\b'\u0010%\u001a/\u0010+\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¢\u0006\u0004\b+\u0010,\u001a\u0013\u0010.\u001a\u00020-*\u00020\u0017H\u0000¢\u0006\u0004\b.\u0010/¨\u00060"}, m3159d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Le9/b;", "", "Lkotlin/reflect/KType;", "Landroidx/navigation/NavType;", "typeMap", "", "path", "generateRoutePattern", "(Le9/b;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;", "", "Landroidx/navigation/NamedNavArgument;", "generateNavArguments", "(Le9/b;Ljava/util/Map;)Ljava/util/List;", "", "route", "generateRouteWithArgs", "(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;", "Lkotlin/Function0;", "", "handler", "assertNotAbstractClass", "(Le9/b;Lkotlin/jvm/functions/Function0;)V", "Lg9/e;", "computeNavType", "(Lg9/e;Ljava/util/Map;)Landroidx/navigation/NavType;", "", "generateHashCode", "(Le9/b;)I", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "index", "argName", "navType", "operation", "forEachIndexedKType", "(Le9/b;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)V", "forEachIndexed", "forEachIndexedName", "fieldName", "fieldType", "className", "unknownNavTypeErrorMessage", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "", "isValueClass", "(Lg9/e;)Z", "navigation-common_release"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nRouteSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RouteSerializer.kt\nandroidx/navigation/serialization/RouteSerializerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1#2:226\n*E\n"})
public final class RouteSerializerKt {
    private static final <T> void assertNotAbstractClass(InterfaceC1506b interfaceC1506b, Function0<Unit> function0) {
        if (interfaceC1506b instanceof C1509e) {
            function0.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NavType<Object> computeNavType(InterfaceC1633e interfaceC1633e, Map<KType, ? extends NavType<?>> map) {
        Object next;
        Iterator<T> it = map.keySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!NavTypeConverterKt.matchKType(interfaceC1633e, (KType) next));
        KType kType = (KType) next;
        NavType<?> navType = kType != null ? map.get(kType) : null;
        if (navType == null) {
            navType = null;
        }
        if (navType == null) {
            navType = NavTypeConverterKt.getNavType(interfaceC1633e);
        }
        if (Intrinsics.areEqual(navType, UNKNOWN.INSTANCE)) {
            return null;
        }
        navType.getClass();
        return navType;
    }

    @JvmName(name = "forEachIndexedKType")
    private static final <T> void forEachIndexedKType(InterfaceC1506b interfaceC1506b, Map<KType, ? extends NavType<?>> map, Function3<? super Integer, ? super String, ? super NavType<Object>, Unit> function3) {
        int iMo2719d = interfaceC1506b.mo2581a().mo2719d();
        for (int i10 = 0; i10 < iMo2719d; i10++) {
            String strMo2720e = interfaceC1506b.mo2581a().mo2720e(i10);
            NavType<Object> navTypeComputeNavType = computeNavType(interfaceC1506b.mo2581a().mo2721f(i10), map);
            if (navTypeComputeNavType == null) {
                C1929i.m3029k(unknownNavTypeErrorMessage(strMo2720e, interfaceC1506b.mo2581a().mo2721f(i10).mo2717a(), interfaceC1506b.mo2581a().mo2717a(), map.toString()));
                return;
            }
            function3.invoke(Integer.valueOf(i10), strMo2720e, navTypeComputeNavType);
        }
    }

    public static /* synthetic */ void forEachIndexedKType$default(InterfaceC1506b interfaceC1506b, Map map, Function3 function3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        forEachIndexedKType(interfaceC1506b, map, function3);
    }

    @JvmName(name = "forEachIndexedName")
    private static final <T> void forEachIndexedName(InterfaceC1506b interfaceC1506b, Map<String, ? extends NavType<Object>> map, Function3<? super Integer, ? super String, ? super NavType<Object>, Unit> function3) {
        int iMo2719d = interfaceC1506b.mo2581a().mo2719d();
        for (int i10 = 0; i10 < iMo2719d; i10++) {
            String strMo2720e = interfaceC1506b.mo2581a().mo2720e(i10);
            NavType<Object> navType = map.get(strMo2720e);
            if (navType == null) {
                throw new IllegalStateException(("Cannot locate NavType for argument [" + strMo2720e + ']').toString());
            }
            function3.invoke(Integer.valueOf(i10), strMo2720e, navType);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final <T> int generateHashCode(InterfaceC1506b interfaceC1506b) {
        interfaceC1506b.getClass();
        int iHashCode = interfaceC1506b.mo2581a().mo2717a().hashCode();
        int iMo2719d = interfaceC1506b.mo2581a().mo2719d();
        for (int i10 = 0; i10 < iMo2719d; i10++) {
            iHashCode = (iHashCode * 31) + interfaceC1506b.mo2581a().mo2720e(i10).hashCode();
        }
        return iHashCode;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final <T> List<NamedNavArgument> generateNavArguments(final InterfaceC1506b interfaceC1506b, final Map<KType, ? extends NavType<?>> map) {
        interfaceC1506b.getClass();
        map.getClass();
        assertNotAbstractClass(interfaceC1506b, new Function0<Unit>() { // from class: androidx.navigation.serialization.RouteSerializerKt.generateNavArguments.1
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                throw new IllegalArgumentException("Cannot generate NavArguments for polymorphic serializer " + interfaceC1506b + ". Arguments can only be generated from concrete classes or objects.");
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        });
        int iMo2719d = interfaceC1506b.mo2581a().mo2719d();
        ArrayList arrayList = new ArrayList(iMo2719d);
        for (final int i10 = 0; i10 < iMo2719d; i10++) {
            final String strMo2720e = interfaceC1506b.mo2581a().mo2720e(i10);
            arrayList.add(NamedNavArgumentKt.navArgument(strMo2720e, new Function1<NavArgumentBuilder, Unit>() { // from class: androidx.navigation.serialization.RouteSerializerKt$generateNavArguments$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(NavArgumentBuilder navArgumentBuilder) {
                    navArgumentBuilder.getClass();
                    InterfaceC1633e interfaceC1633eMo2721f = interfaceC1506b.mo2581a().mo2721f(i10);
                    boolean zMo2718c = interfaceC1633eMo2721f.mo2718c();
                    NavType<?> navTypeComputeNavType = RouteSerializerKt.computeNavType(interfaceC1633eMo2721f, map);
                    if (navTypeComputeNavType == null) {
                        C1929i.m3029k(RouteSerializerKt.unknownNavTypeErrorMessage(strMo2720e, interfaceC1633eMo2721f.mo2717a(), interfaceC1506b.mo2581a().mo2717a(), map.toString()));
                        return;
                    }
                    navArgumentBuilder.setType(navTypeComputeNavType);
                    navArgumentBuilder.setNullable(zMo2718c);
                    if (interfaceC1506b.mo2581a().mo2722g(i10)) {
                        navArgumentBuilder.setUnknownDefaultValuePresent$navigation_common_release(true);
                    }
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(NavArgumentBuilder navArgumentBuilder) {
                    invoke2(navArgumentBuilder);
                    return Unit.INSTANCE;
                }
            }));
        }
        return arrayList;
    }

    public static /* synthetic */ List generateNavArguments$default(InterfaceC1506b interfaceC1506b, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        return generateNavArguments(interfaceC1506b, map);
    }

    public static final <T> String generateRoutePattern(final InterfaceC1506b interfaceC1506b, Map<KType, ? extends NavType<?>> map, String str) {
        interfaceC1506b.getClass();
        map.getClass();
        assertNotAbstractClass(interfaceC1506b, new Function0<Unit>() { // from class: androidx.navigation.serialization.RouteSerializerKt.generateRoutePattern.1
            {
                super(0);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                StringBuilder sb = new StringBuilder("Cannot generate route pattern from polymorphic class ");
                KClass kClassM1002i = AbstractC0880u.m1002i(interfaceC1506b.mo2581a());
                throw new IllegalArgumentException(AbstractC0074a.m165p(sb, kClassM1002i != null ? kClassM1002i.getSimpleName() : null, ". Routes can only be generated from concrete classes or objects."));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }
        });
        final RouteBuilder routeBuilder = str != null ? new RouteBuilder(str, interfaceC1506b) : new RouteBuilder(interfaceC1506b);
        forEachIndexedKType(interfaceC1506b, map, new Function3<Integer, String, NavType<Object>, Unit>() { // from class: androidx.navigation.serialization.RouteSerializerKt.generateRoutePattern.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str2, NavType<Object> navType) {
                invoke(num.intValue(), str2, navType);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            public final void invoke(int i10, String str2, NavType<Object> navType) {
                str2.getClass();
                navType.getClass();
                routeBuilder.appendPattern(i10, str2, navType);
            }
        });
        return routeBuilder.build();
    }

    public static /* synthetic */ String generateRoutePattern$default(InterfaceC1506b interfaceC1506b, Map map, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            map = MapsKt.emptyMap();
        }
        if ((i10 & 2) != 0) {
            str = null;
        }
        return generateRoutePattern(interfaceC1506b, map, str);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final <T> String generateRouteWithArgs(T t, Map<String, ? extends NavType<Object>> map) {
        t.getClass();
        map.getClass();
        InterfaceC1506b interfaceC1506bM1289s = AbstractC1031d.m1289s(Reflection.getOrCreateKotlinClass(t.getClass()));
        final Map<String, List<String>> mapEncodeToArgMap = new RouteEncoder(interfaceC1506bM1289s, map).encodeToArgMap(t);
        final RouteBuilder routeBuilder = new RouteBuilder(interfaceC1506bM1289s);
        forEachIndexedName(interfaceC1506bM1289s, map, new Function3<Integer, String, NavType<Object>, Unit>() { // from class: androidx.navigation.serialization.RouteSerializerKt.generateRouteWithArgs.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(3);
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            public final void invoke(int i10, String str, NavType<Object> navType) {
                str.getClass();
                navType.getClass();
                List<String> list = mapEncodeToArgMap.get(str);
                list.getClass();
                routeBuilder.appendArg(i10, str, navType, list);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, NavType<Object> navType) {
                invoke(num.intValue(), str, navType);
                return Unit.INSTANCE;
            }
        });
        return routeBuilder.build();
    }

    public static final boolean isValueClass(InterfaceC1633e interfaceC1633e) {
        interfaceC1633e.getClass();
        return Intrinsics.areEqual(interfaceC1633e.getKind(), C1638j.f4167d) && interfaceC1633e.isInline() && interfaceC1633e.mo2719d() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String unknownNavTypeErrorMessage(String str, String str2, String str3, String str4) {
        return "Route " + str3 + " could not find any NavType for argument " + str + " of type " + str2 + " - typeMap received was " + str4;
    }
}
