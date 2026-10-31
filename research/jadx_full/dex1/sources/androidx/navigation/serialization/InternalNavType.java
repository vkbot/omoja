package androidx.navigation.serialization;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.navigation.NavType;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0013\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001:\u0003$%&B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0019\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0007R\u001f\u0010\u000b\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0007R\u0019\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0007R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0007R\u0019\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0007R\u0019\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0007R\u0019\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0007R\u0017\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0007R!\u0010\u001f\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0018\u00010 0\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0007R!\u0010\"\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0018\u00010\f0\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0007¨\u0006'"}, d2 = {"Landroidx/navigation/serialization/InternalNavType;", "", "()V", "BoolNullableType", "Landroidx/navigation/NavType;", "", "getBoolNullableType", "()Landroidx/navigation/NavType;", "DoubleArrayType", "", "getDoubleArrayType", "DoubleListType", "", "", "getDoubleListType", "DoubleNullableType", "getDoubleNullableType", "DoubleType", "getDoubleType", "FloatNullableType", "", "getFloatNullableType", "IntNullableType", "", "getIntNullableType", "LongNullableType", "", "getLongNullableType", "StringNonNullableType", "", "getStringNonNullableType", "StringNullableArrayType", "", "getStringNullableArrayType", "StringNullableListType", "getStringNullableListType", "EnumListType", "EnumNullableType", "SerializableNullableType", "navigation-common_release"}, k = 1, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class InternalNavType {
    public static final InternalNavType INSTANCE = new InternalNavType();
    private static final NavType<Integer> IntNullableType = new InternalNavType$IntNullableType$1();
    private static final NavType<Boolean> BoolNullableType = new InternalNavType$BoolNullableType$1();
    private static final NavType<Double> DoubleType = new InternalNavType$DoubleType$1();
    private static final NavType<Double> DoubleNullableType = new InternalNavType$DoubleNullableType$1();
    private static final NavType<Float> FloatNullableType = new InternalNavType$FloatNullableType$1();
    private static final NavType<Long> LongNullableType = new InternalNavType$LongNullableType$1();
    private static final NavType<String> StringNonNullableType = new InternalNavType$StringNonNullableType$1();
    private static final NavType<String[]> StringNullableArrayType = new InternalNavType$StringNullableArrayType$1();
    private static final NavType<List<String>> StringNullableListType = new InternalNavType$StringNullableListType$1();
    private static final NavType<double[]> DoubleArrayType = new InternalNavType$DoubleArrayType$1();
    private static final NavType<List<Double>> DoubleListType = new InternalNavType$DoubleListType$1();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private InternalNavType() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavType<Boolean> getBoolNullableType() {
        return BoolNullableType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavType<double[]> getDoubleArrayType() {
        return DoubleArrayType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavType<List<Double>> getDoubleListType() {
        return DoubleListType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavType<Double> getDoubleNullableType() {
        return DoubleNullableType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavType<Double> getDoubleType() {
        return DoubleType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavType<Float> getFloatNullableType() {
        return FloatNullableType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavType<Integer> getIntNullableType() {
        return IntNullableType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavType<Long> getLongNullableType() {
        return LongNullableType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavType<String> getStringNonNullableType() {
        return StringNonNullableType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavType<String[]> getStringNullableArrayType() {
        return StringNullableArrayType;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavType<List<String>> getStringNullableListType() {
        return StringNullableListType;
    }
}
