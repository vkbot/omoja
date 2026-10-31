package androidx.navigation.serialization;

import ai.onnxruntime.a;
import ai.onnxruntime.b;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.io.Serializable;
import java.lang.Enum;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0002\b\u0003\u0018\u00010\u00022\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0003B\u0015\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005¢\u0006\u0002\u0010\u0006J\u0017\u0010\u000b\u001a\u0004\u0018\u00018\u00002\u0006\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0002\u0010\rR\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/navigation/serialization/InternalNavType$EnumNullableType;", "D", "", "Landroidx/navigation/serialization/InternalNavType$SerializableNullableType;", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "name", "", "getName", "()Ljava/lang/String;", "parseValue", "value", "(Ljava/lang/String;)Ljava/lang/Enum;", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavTypeConverter.kt\nandroidx/navigation/serialization/InternalNavType$EnumNullableType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,577:1\n1#2:578\n1282#3,2:579\n*S KotlinDebug\n*F\n+ 1 NavTypeConverter.kt\nandroidx/navigation/serialization/InternalNavType$EnumNullableType\n*L\n527#1:579,2\n*E\n"})
public final class InternalNavType$EnumNullableType<D extends Enum<?>> extends InternalNavType$SerializableNullableType<D> {
    private final Class<D> type;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InternalNavType$EnumNullableType(Class<D> cls) {
        super(cls);
        cls.getClass();
        if (cls.isEnum()) {
            this.type = cls;
        } else {
            b.e(cls, " is not an Enum type.");
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.serialization.InternalNavType$SerializableNullableType, androidx.navigation.NavType
    public String getName() {
        return this.type.getName();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.serialization.InternalNavType$SerializableNullableType, androidx.navigation.NavType
    public D parseValue(String value) {
        value.getClass();
        D d = null;
        if (Intrinsics.areEqual(value, "null")) {
            return null;
        }
        D[] enumConstants = this.type.getEnumConstants();
        enumConstants.getClass();
        for (D d9 : enumConstants) {
            D d10 = d9;
            d10.getClass();
            if (StringsKt.s(d10.name(), value)) {
                d = d9;
                break;
            }
        }
        D d11 = d;
        if (d11 != null) {
            return d11;
        }
        StringBuilder sbX = a.x("Enum value ", value, " not found for type ");
        sbX.append(this.type.getName());
        sbX.append('.');
        throw new IllegalArgumentException(sbX.toString());
    }

    @Override // androidx.navigation.serialization.InternalNavType$SerializableNullableType, androidx.navigation.NavType
    public /* bridge */ /* synthetic */ Object parseValue(String str) {
        return parseValue(str);
    }

    @Override // androidx.navigation.serialization.InternalNavType$SerializableNullableType, androidx.navigation.NavType
    public /* bridge */ /* synthetic */ Serializable parseValue(String str) {
        return parseValue(str);
    }
}
