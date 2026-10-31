package androidx.navigation.serialization;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.navigation.C0674b;
import androidx.navigation.NavType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KType;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import p055e9.InterfaceC1506b;
import p076g9.C1631c;
import p076g9.InterfaceC1633e;
import p099j1.C1929i;
import p107j9.AbstractC2012c;
import p107j9.C2010a;
import p155o4.AbstractC2587b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\u0017\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0013\u0010\u0005\u001a\u00020\u0004*\u00020\u0000H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0017\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007*\u00020\u0000H\u0002¢\u0006\u0004\b\b\u0010\t\u001a\u001b\u0010\r\u001a\u00020\f*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nH\u0000¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, m3159d2 = {"Lg9/e;", "Landroidx/navigation/NavType;", "getNavType", "(Lg9/e;)Landroidx/navigation/NavType;", "Landroidx/navigation/serialization/InternalType;", "toInternalType", "(Lg9/e;)Landroidx/navigation/serialization/InternalType;", "Ljava/lang/Class;", "getClass", "(Lg9/e;)Ljava/lang/Class;", "Lkotlin/reflect/KType;", "kType", "", "matchKType", "(Lg9/e;Lkotlin/reflect/KType;)Z", "navigation-common_release"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class NavTypeConverterKt {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3160k = 3, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[InternalType.values().length];
            try {
                iArr[InternalType.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InternalType.BOOL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[InternalType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[InternalType.LONG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[InternalType.STRING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[InternalType.STRING_NULLABLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[InternalType.ENUM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[InternalType.INT_NULLABLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[InternalType.BOOL_NULLABLE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[InternalType.DOUBLE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[InternalType.DOUBLE_NULLABLE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[InternalType.FLOAT_NULLABLE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[InternalType.LONG_NULLABLE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[InternalType.INT_ARRAY.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[InternalType.BOOL_ARRAY.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[InternalType.DOUBLE_ARRAY.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[InternalType.FLOAT_ARRAY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[InternalType.LONG_ARRAY.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[InternalType.ARRAY.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[InternalType.LIST.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[InternalType.ENUM_NULLABLE.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final Class<?> getClass(InterfaceC1633e interfaceC1633e) {
        String strReplace$default = StringsKt__StringsJVMKt.replace$default(interfaceC1633e.mo2717a(), "?", "", false, 4, (Object) null);
        try {
            return Class.forName(strReplace$default);
        } catch (ClassNotFoundException unused) {
            if (StringsKt__StringsKt.contains$default(strReplace$default, (CharSequence) ".", false, 2, (Object) null)) {
                return Class.forName(new Regex("(\\.+)(?!.*\\.)").replace(strReplace$default, "\\$"));
            }
            C0674b.m857x(interfaceC1633e.mo2717a(), "Cannot find class with name \"", "\". Ensure that the serialName for this argument is the default fully qualified name");
            return null;
        }
    }

    public static final NavType<?> getNavType(InterfaceC1633e interfaceC1633e) {
        interfaceC1633e.getClass();
        InternalType internalType = toInternalType(interfaceC1633e);
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
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
                NavType<?> serializableOrParcelableType$navigation_common_release = NavType.INSTANCE.parseSerializableOrParcelableType$navigation_common_release(getClass(interfaceC1633e), false);
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
                return toInternalType(interfaceC1633e.mo2721f(0)) == InternalType.STRING ? NavType.StringArrayType : UNKNOWN.INSTANCE;
            case 20:
                switch (iArr[toInternalType(interfaceC1633e.mo2721f(0)).ordinal()]) {
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
                        Class<?> cls = getClass(interfaceC1633e.mo2721f(0));
                        cls.getClass();
                        return new InternalNavType.EnumListType(cls);
                    default:
                        return UNKNOWN.INSTANCE;
                }
            case 21:
                Class<?> cls2 = getClass(interfaceC1633e);
                if (!Enum.class.isAssignableFrom(cls2)) {
                    return UNKNOWN.INSTANCE;
                }
                cls2.getClass();
                return new InternalNavType.EnumNullableType(cls2);
            default:
                return UNKNOWN.INSTANCE;
        }
    }

    public static final boolean matchKType(InterfaceC1633e interfaceC1633e, KType kType) {
        interfaceC1633e.getClass();
        kType.getClass();
        if (interfaceC1633e.mo2718c() != kType.isMarkedNullable()) {
            return false;
        }
        C2010a c2010a = AbstractC2012c.f5496a;
        c2010a.getClass();
        InterfaceC1506b interfaceC1506bM4031A = AbstractC2587b.m4031A(c2010a, kType, false);
        if (interfaceC1506bM4031A != null) {
            return Intrinsics.areEqual(interfaceC1633e, interfaceC1506bM4031A.mo2581a());
        }
        C1929i.m3030l("Custom serializers declared directly on a class field via @Serializable(with = ...) is currently not supported by safe args for both custom types and third-party types. Please use @Serializable or @Serializable(with = ...) on the class or object declaration.");
        return false;
    }

    private static final InternalType toInternalType(InterfaceC1633e interfaceC1633e) {
        String strReplace$default = StringsKt__StringsJVMKt.replace$default(interfaceC1633e.mo2717a(), "?", "", false, 4, (Object) null);
        if (Intrinsics.areEqual(interfaceC1633e.getKind(), C1631c.f4141f)) {
            return interfaceC1633e.mo2718c() ? InternalType.ENUM_NULLABLE : InternalType.ENUM;
        }
        if (Intrinsics.areEqual(strReplace$default, "kotlin.Int")) {
            return interfaceC1633e.mo2718c() ? InternalType.INT_NULLABLE : InternalType.INT;
        }
        if (Intrinsics.areEqual(strReplace$default, "kotlin.Boolean")) {
            return interfaceC1633e.mo2718c() ? InternalType.BOOL_NULLABLE : InternalType.BOOL;
        }
        if (Intrinsics.areEqual(strReplace$default, "kotlin.Double")) {
            return interfaceC1633e.mo2718c() ? InternalType.DOUBLE_NULLABLE : InternalType.DOUBLE;
        }
        if (Intrinsics.areEqual(strReplace$default, "kotlin.Double")) {
            return InternalType.DOUBLE;
        }
        if (Intrinsics.areEqual(strReplace$default, "kotlin.Float")) {
            return interfaceC1633e.mo2718c() ? InternalType.FLOAT_NULLABLE : InternalType.FLOAT;
        }
        if (Intrinsics.areEqual(strReplace$default, "kotlin.Long")) {
            return interfaceC1633e.mo2718c() ? InternalType.LONG_NULLABLE : InternalType.LONG;
        }
        if (Intrinsics.areEqual(strReplace$default, "kotlin.String")) {
            return interfaceC1633e.mo2718c() ? InternalType.STRING_NULLABLE : InternalType.STRING;
        }
        if (Intrinsics.areEqual(strReplace$default, "kotlin.IntArray")) {
            return InternalType.INT_ARRAY;
        }
        if (Intrinsics.areEqual(strReplace$default, "kotlin.DoubleArray")) {
            return InternalType.DOUBLE_ARRAY;
        }
        if (Intrinsics.areEqual(strReplace$default, "kotlin.BooleanArray")) {
            return InternalType.BOOL_ARRAY;
        }
        if (Intrinsics.areEqual(strReplace$default, "kotlin.FloatArray")) {
            return InternalType.FLOAT_ARRAY;
        }
        if (Intrinsics.areEqual(strReplace$default, "kotlin.LongArray")) {
            return InternalType.LONG_ARRAY;
        }
        if (Intrinsics.areEqual(strReplace$default, "kotlin.Array")) {
            return InternalType.ARRAY;
        }
        return StringsKt__StringsJVMKt.startsWith$default(strReplace$default, "kotlin.collections.ArrayList", false, 2, null) ? InternalType.LIST : InternalType.UNKNOWN;
    }
}
