package androidx.navigation;

import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0018\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u001f\u001a\u0006\u0012\u0002\b\u00030\u00042\b\u0010 \u001a\u0004\u0018\u00010\u001c2\b\u0010!\u001a\u0004\u0018\u00010\u001cH\u0017J\u0016\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00010\u00042\u0006\u0010#\u001a\u00020\u001cH\u0007J\u0018\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00010\u00042\b\u0010#\u001a\u0004\u0018\u00010\u0001H\u0007J'\u0010%\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\n\u0010&\u001a\u0006\u0012\u0002\b\u00030'2\u0006\u0010(\u001a\u00020\bH\u0000¢\u0006\u0002\b)R\u0018\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00120\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u001a\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u001d\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Landroidx/navigation/NavType$Companion;", "", "()V", "BoolArrayType", "Landroidx/navigation/NavType;", "", "BoolListType", "", "", "BoolType", "FloatArrayType", "", "FloatListType", "", "FloatType", "IntArrayType", "", "IntListType", "", "IntType", "LongArrayType", "", "LongListType", "", "LongType", "ReferenceType", "StringArrayType", "", "", "StringListType", "StringType", "fromArgType", "type", "packageName", "inferFromValue", "value", "inferFromValueType", "parseSerializableOrParcelableType", "clazz", "Ljava/lang/Class;", "isArray", "parseSerializableOrParcelableType$navigation_common_release", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class NavType$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ NavType$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public NavType<?> fromArgType(String type, String packageName) {
        NavType<Integer> navType = NavType.IntType;
        if (Intrinsics.areEqual(navType.getName(), type)) {
            return navType;
        }
        NavType navType2 = NavType.IntArrayType;
        if (Intrinsics.areEqual(navType2.getName(), type)) {
            return navType2;
        }
        NavType<List<Integer>> navType3 = NavType.IntListType;
        if (Intrinsics.areEqual(navType3.getName(), type)) {
            return navType3;
        }
        NavType<Long> navType4 = NavType.LongType;
        if (Intrinsics.areEqual(navType4.getName(), type)) {
            return navType4;
        }
        NavType navType5 = NavType.LongArrayType;
        if (Intrinsics.areEqual(navType5.getName(), type)) {
            return navType5;
        }
        NavType<List<Long>> navType6 = NavType.LongListType;
        if (Intrinsics.areEqual(navType6.getName(), type)) {
            return navType6;
        }
        NavType<Boolean> navType7 = NavType.BoolType;
        if (Intrinsics.areEqual(navType7.getName(), type)) {
            return navType7;
        }
        NavType navType8 = NavType.BoolArrayType;
        if (Intrinsics.areEqual(navType8.getName(), type)) {
            return navType8;
        }
        NavType<List<Boolean>> navType9 = NavType.BoolListType;
        if (Intrinsics.areEqual(navType9.getName(), type)) {
            return navType9;
        }
        NavType<String> navType10 = NavType.StringType;
        if (!Intrinsics.areEqual(navType10.getName(), type)) {
            NavType navType11 = NavType.StringArrayType;
            if (Intrinsics.areEqual(navType11.getName(), type)) {
                return navType11;
            }
            NavType<List<String>> navType12 = NavType.StringListType;
            if (Intrinsics.areEqual(navType12.getName(), type)) {
                return navType12;
            }
            NavType<Float> navType13 = NavType.FloatType;
            if (Intrinsics.areEqual(navType13.getName(), type)) {
                return navType13;
            }
            NavType navType14 = NavType.FloatArrayType;
            if (Intrinsics.areEqual(navType14.getName(), type)) {
                return navType14;
            }
            NavType<List<Float>> navType15 = NavType.FloatListType;
            if (Intrinsics.areEqual(navType15.getName(), type)) {
                return navType15;
            }
            NavType<Integer> navType16 = NavType.ReferenceType;
            if (Intrinsics.areEqual(navType16.getName(), type)) {
                return navType16;
            }
            if (type != null && type.length() != 0) {
                try {
                    String strConcat = (!StringsKt.M(type, ".") || packageName == null) ? type : packageName.concat(type);
                    boolean zR = StringsKt.r(type, "[]");
                    if (zR) {
                        strConcat = strConcat.substring(0, strConcat.length() - 2);
                    }
                    NavType<?> serializableOrParcelableType$navigation_common_release = parseSerializableOrParcelableType$navigation_common_release(Class.forName(strConcat), zR);
                    if (serializableOrParcelableType$navigation_common_release != null) {
                        return serializableOrParcelableType$navigation_common_release;
                    }
                    throw new IllegalArgumentException(strConcat.concat(" is not Serializable or Parcelable.").toString());
                } catch (ClassNotFoundException e) {
                    n0.b.w(e);
                    return null;
                }
            }
        }
        return navType10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public final NavType<Object> inferFromValue(String value) {
        value.getClass();
        try {
            try {
                try {
                    try {
                        NavType<Integer> navType = NavType.IntType;
                        navType.parseValue(value);
                        navType.getClass();
                        return navType;
                    } catch (IllegalArgumentException unused) {
                        NavType<Float> navType2 = NavType.FloatType;
                        navType2.parseValue(value);
                        navType2.getClass();
                        return navType2;
                    }
                } catch (IllegalArgumentException unused2) {
                    NavType<Boolean> navType3 = NavType.BoolType;
                    navType3.parseValue(value);
                    navType3.getClass();
                    return navType3;
                }
            } catch (IllegalArgumentException unused3) {
                NavType<Long> navType4 = NavType.LongType;
                navType4.parseValue(value);
                navType4.getClass();
                return navType4;
            }
        } catch (IllegalArgumentException unused4) {
            NavType<String> navType5 = NavType.StringType;
            navType5.getClass();
            return navType5;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP})
    public final NavType<Object> inferFromValueType(Object value) {
        if (value instanceof Integer) {
            NavType<Integer> navType = NavType.IntType;
            navType.getClass();
            return navType;
        }
        if (value instanceof int[]) {
            NavType<int[]> navType2 = NavType.IntArrayType;
            navType2.getClass();
            return navType2;
        }
        if (value instanceof Long) {
            NavType<Long> navType3 = NavType.LongType;
            navType3.getClass();
            return navType3;
        }
        if (value instanceof long[]) {
            NavType<long[]> navType4 = NavType.LongArrayType;
            navType4.getClass();
            return navType4;
        }
        if (value instanceof Float) {
            NavType<Float> navType5 = NavType.FloatType;
            navType5.getClass();
            return navType5;
        }
        if (value instanceof float[]) {
            NavType<float[]> navType6 = NavType.FloatArrayType;
            navType6.getClass();
            return navType6;
        }
        if (value instanceof Boolean) {
            NavType<Boolean> navType7 = NavType.BoolType;
            navType7.getClass();
            return navType7;
        }
        if (value instanceof boolean[]) {
            NavType<boolean[]> navType8 = NavType.BoolArrayType;
            navType8.getClass();
            return navType8;
        }
        if ((value instanceof String) || value == null) {
            NavType<String> navType9 = NavType.StringType;
            navType9.getClass();
            return navType9;
        }
        if ((value instanceof Object[]) && (((Object[]) value) instanceof String[])) {
            NavType<String[]> navType10 = NavType.StringArrayType;
            navType10.getClass();
            return navType10;
        }
        if (value.getClass().isArray()) {
            Class<?> componentType = value.getClass().getComponentType();
            componentType.getClass();
            if (Parcelable.class.isAssignableFrom(componentType)) {
                Class<?> componentType2 = value.getClass().getComponentType();
                componentType2.getClass();
                return new NavType$ParcelableArrayType(componentType2);
            }
        }
        if (value.getClass().isArray()) {
            Class<?> componentType3 = value.getClass().getComponentType();
            componentType3.getClass();
            if (Serializable.class.isAssignableFrom(componentType3)) {
                Class<?> componentType4 = value.getClass().getComponentType();
                componentType4.getClass();
                return new NavType$SerializableArrayType(componentType4);
            }
        }
        if (value instanceof Parcelable) {
            return new NavType$ParcelableType(value.getClass());
        }
        if (value instanceof Enum) {
            return new NavType$EnumType(value.getClass());
        }
        if (value instanceof Serializable) {
            return new NavType$SerializableType(value.getClass());
        }
        b.x(value.getClass().getName(), "Object of type ", " is not supported for navigation arguments.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavType<?> parseSerializableOrParcelableType$navigation_common_release(Class<?> clazz, boolean isArray) {
        clazz.getClass();
        if (Parcelable.class.isAssignableFrom(clazz)) {
            return isArray ? new NavType$ParcelableArrayType(clazz) : new NavType$ParcelableType(clazz);
        }
        if (Enum.class.isAssignableFrom(clazz) && !isArray) {
            return new NavType$EnumType(clazz);
        }
        if (Serializable.class.isAssignableFrom(clazz)) {
            return isArray ? new NavType$SerializableArrayType(clazz) : new NavType$SerializableType(clazz);
        }
        return null;
    }

    private NavType$Companion() {
    }
}
