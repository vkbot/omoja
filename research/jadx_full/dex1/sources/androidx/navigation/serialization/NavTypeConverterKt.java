package androidx.navigation.serialization;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.navigation.NavType;
import androidx.navigation.b;
import g9.e;
import j1.i;
import j9.a;
import j9.c;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KType;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\u0017\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0013\u0010\u0005\u001a\u00020\u0004*\u00020\u0000H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0017\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007*\u00020\u0000H\u0002¢\u0006\u0004\b\b\u0010\t\u001a\u001b\u0010\r\u001a\u00020\f*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nH\u0000¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lg9/e;", "Landroidx/navigation/NavType;", "getNavType", "(Lg9/e;)Landroidx/navigation/NavType;", "Landroidx/navigation/serialization/InternalType;", "toInternalType", "(Lg9/e;)Landroidx/navigation/serialization/InternalType;", "Ljava/lang/Class;", "getClass", "(Lg9/e;)Ljava/lang/Class;", "Lkotlin/reflect/KType;", "kType", "", "matchKType", "(Lg9/e;Lkotlin/reflect/KType;)Z", "navigation-common_release"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class NavTypeConverterKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final Class<?> getClass(e eVar) {
        String strG = StringsKt.G(eVar.a(), "?", "");
        try {
            return Class.forName(strG);
        } catch (ClassNotFoundException unused) {
            if (StringsKt.o(strG, ".")) {
                return Class.forName(new Regex("(\\.+)(?!.*\\.)").replace(strG, "\\$"));
            }
            b.x(eVar.a(), "Cannot find class with name \"", "\". Ensure that the serialName for this argument is the default fully qualified name");
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Type inference failed for r3v23. Raw type applied. Possible types: androidx.navigation.NavType<int[]>, androidx.navigation.NavType<?> */
    /* JADX DEBUG: Type inference failed for r3v24. Raw type applied. Possible types: androidx.navigation.NavType<boolean[]>, androidx.navigation.NavType<?> */
    /* JADX DEBUG: Type inference failed for r3v26. Raw type applied. Possible types: androidx.navigation.NavType<double[]>, androidx.navigation.NavType<?> */
    /* JADX DEBUG: Type inference failed for r3v27. Raw type applied. Possible types: androidx.navigation.NavType<float[]>, androidx.navigation.NavType<?> */
    /* JADX DEBUG: Type inference failed for r3v28. Raw type applied. Possible types: androidx.navigation.NavType<long[]>, androidx.navigation.NavType<?> */
    /* JADX DEBUG: Type inference failed for r3v32. Raw type applied. Possible types: androidx.navigation.NavType<java.lang.String[]>, androidx.navigation.NavType<?> */
    public static final NavType<?> getNavType(e eVar) {
        eVar.getClass();
        InternalType internalType = toInternalType(eVar);
        int[] iArr = NavTypeConverterKt$WhenMappings.$EnumSwitchMapping$0;
        switch (iArr[internalType.ordinal()]) {
            case 1:
                return NavType.IntType;
            case 2:
                return NavType.BoolType;
            case 3:
                return NavType.FloatType;
            case 4:
                return NavType.LongType;
            case 5:
                return InternalNavType.INSTANCE.getStringNonNullableType();
            case 6:
                return NavType.StringType;
            case 7:
                NavType<?> serializableOrParcelableType$navigation_common_release = NavType.Companion.parseSerializableOrParcelableType$navigation_common_release(getClass(eVar), false);
                return serializableOrParcelableType$navigation_common_release == null ? UNKNOWN.INSTANCE : serializableOrParcelableType$navigation_common_release;
            case 8:
                return InternalNavType.INSTANCE.getIntNullableType();
            case 9:
                return InternalNavType.INSTANCE.getBoolNullableType();
            case 10:
                return InternalNavType.INSTANCE.getDoubleType();
            case 11:
                return InternalNavType.INSTANCE.getDoubleNullableType();
            case 12:
                return InternalNavType.INSTANCE.getFloatNullableType();
            case 13:
                return InternalNavType.INSTANCE.getLongNullableType();
            case 14:
                return NavType.IntArrayType;
            case 15:
                return NavType.BoolArrayType;
            case 16:
                return InternalNavType.INSTANCE.getDoubleArrayType();
            case 17:
                return NavType.FloatArrayType;
            case 18:
                return NavType.LongArrayType;
            case 19:
                return toInternalType(eVar.f(0)) == InternalType.STRING ? NavType.StringArrayType : UNKNOWN.INSTANCE;
            case 20:
                switch (iArr[toInternalType(eVar.f(0)).ordinal()]) {
                    case 1:
                        return NavType.IntListType;
                    case 2:
                        return NavType.BoolListType;
                    case 3:
                        return NavType.FloatListType;
                    case 4:
                        return NavType.LongListType;
                    case 5:
                        return NavType.StringListType;
                    case 6:
                        return InternalNavType.INSTANCE.getStringNullableListType();
                    case 7:
                        Class<?> cls = getClass(eVar.f(0));
                        cls.getClass();
                        return new InternalNavType$EnumListType(cls);
                    default:
                        return UNKNOWN.INSTANCE;
                }
            case 21:
                Class<?> cls2 = getClass(eVar);
                if (!Enum.class.isAssignableFrom(cls2)) {
                    return UNKNOWN.INSTANCE;
                }
                cls2.getClass();
                return new InternalNavType$EnumNullableType(cls2);
            default:
                return UNKNOWN.INSTANCE;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final boolean matchKType(e eVar, KType kType) {
        eVar.getClass();
        kType.getClass();
        if (eVar.c() != kType.isMarkedNullable()) {
            return false;
        }
        a aVar = c.a;
        aVar.getClass();
        e9.b bVarA = o4.b.A(aVar, kType, false);
        if (bVarA != null) {
            return Intrinsics.areEqual(eVar, bVarA.a());
        }
        i.l("Custom serializers declared directly on a class field via @Serializable(with = ...) is currently not supported by safe args for both custom types and third-party types. Please use @Serializable or @Serializable(with = ...) on the class or object declaration.");
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final InternalType toInternalType(e eVar) {
        String strG = StringsKt.G(eVar.a(), "?", "");
        if (Intrinsics.areEqual(eVar.getKind(), g9.c.f)) {
            return eVar.c() ? InternalType.ENUM_NULLABLE : InternalType.ENUM;
        }
        if (Intrinsics.areEqual(strG, "kotlin.Int")) {
            return eVar.c() ? InternalType.INT_NULLABLE : InternalType.INT;
        }
        if (Intrinsics.areEqual(strG, "kotlin.Boolean")) {
            return eVar.c() ? InternalType.BOOL_NULLABLE : InternalType.BOOL;
        }
        if (Intrinsics.areEqual(strG, "kotlin.Double")) {
            return eVar.c() ? InternalType.DOUBLE_NULLABLE : InternalType.DOUBLE;
        }
        if (Intrinsics.areEqual(strG, "kotlin.Double")) {
            return InternalType.DOUBLE;
        }
        if (Intrinsics.areEqual(strG, "kotlin.Float")) {
            return eVar.c() ? InternalType.FLOAT_NULLABLE : InternalType.FLOAT;
        }
        if (Intrinsics.areEqual(strG, "kotlin.Long")) {
            return eVar.c() ? InternalType.LONG_NULLABLE : InternalType.LONG;
        }
        if (Intrinsics.areEqual(strG, "kotlin.String")) {
            return eVar.c() ? InternalType.STRING_NULLABLE : InternalType.STRING;
        }
        if (Intrinsics.areEqual(strG, "kotlin.IntArray")) {
            return InternalType.INT_ARRAY;
        }
        if (Intrinsics.areEqual(strG, "kotlin.DoubleArray")) {
            return InternalType.DOUBLE_ARRAY;
        }
        if (Intrinsics.areEqual(strG, "kotlin.BooleanArray")) {
            return InternalType.BOOL_ARRAY;
        }
        if (Intrinsics.areEqual(strG, "kotlin.FloatArray")) {
            return InternalType.FLOAT_ARRAY;
        }
        if (Intrinsics.areEqual(strG, "kotlin.LongArray")) {
            return InternalType.LONG_ARRAY;
        }
        if (Intrinsics.areEqual(strG, "kotlin.Array")) {
            return InternalType.ARRAY;
        }
        return StringsKt.M(strG, "kotlin.collections.ArrayList") ? InternalType.LIST : InternalType.UNKNOWN;
    }
}
