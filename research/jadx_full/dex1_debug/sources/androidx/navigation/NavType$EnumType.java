package androidx.navigation;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.io.Serializable;
import java.lang.Enum;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000*\f\b\u0001\u0010\u0001*\u0006\u0012\u0002\b\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0015\u0010\u000b\u001a\u00028\u00012\u0006\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0002\u0010\rR\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/navigation/NavType$EnumType;", "D", "", "Landroidx/navigation/NavType$SerializableType;", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "name", "", "getName", "()Ljava/lang/String;", "parseValue", "value", "(Ljava/lang/String;)Ljava/lang/Enum;", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nNavType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavType.kt\nandroidx/navigation/NavType$EnumType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1212:1\n1#2:1213\n1282#3,2:1214\n*S KotlinDebug\n*F\n+ 1 NavType.kt\nandroidx/navigation/NavType$EnumType\n*L\n1135#1:1214,2\n*E\n"})
public final class NavType$EnumType<D extends Enum<?>> extends NavType$SerializableType<D> {
    private final Class<D> type;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavType$EnumType(Class<D> cls) {
        super(false, cls);
        cls.getClass();
        if (cls.isEnum()) {
            this.type = cls;
        } else {
            ai.onnxruntime.b.e(cls, " is not an Enum type.");
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavType$SerializableType, androidx.navigation.NavType
    public String getName() {
        return this.type.getName();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.navigation.NavType$SerializableType, androidx.navigation.NavType
    public D parseValue(String value) {
        D d;
        value.getClass();
        D[] enumConstants = this.type.getEnumConstants();
        enumConstants.getClass();
        int length = enumConstants.length;
        int i9 = 0;
        while (true) {
            if (i9 >= length) {
                d = null;
                break;
            }
            d = enumConstants[i9];
            if (StringsKt.s(d.name(), value)) {
                break;
            }
            i9++;
        }
        D d9 = d;
        if (d9 != null) {
            return d9;
        }
        StringBuilder sbX = ai.onnxruntime.a.x("Enum value ", value, " not found for type ");
        sbX.append(this.type.getName());
        sbX.append('.');
        throw new IllegalArgumentException(sbX.toString());
    }

    @Override // androidx.navigation.NavType$SerializableType, androidx.navigation.NavType
    public /* bridge */ /* synthetic */ Object parseValue(String str) {
        return parseValue(str);
    }

    @Override // androidx.navigation.NavType$SerializableType, androidx.navigation.NavType
    public /* bridge */ /* synthetic */ Serializable parseValue(String str) {
        return parseValue(str);
    }
}
