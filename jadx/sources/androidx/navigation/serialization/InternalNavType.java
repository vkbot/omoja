package androidx.navigation.serialization;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0075b;
import android.net.Uri;
import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.commons.p161io.FilenameUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0013\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001:\u0003$%&B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0019\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0007R\u001f\u0010\u000b\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0007R\u0019\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0007R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0007R\u0019\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0007R\u0019\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0007R\u0019\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0007R\u0017\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0007R!\u0010\u001f\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0018\u00010 0\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0007R!\u0010\"\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0018\u00010\f0\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0007¨\u0006'"}, m3159d2 = {"Landroidx/navigation/serialization/InternalNavType;", "", "()V", "BoolNullableType", "Landroidx/navigation/NavType;", "", "getBoolNullableType", "()Landroidx/navigation/NavType;", "DoubleArrayType", "", "getDoubleArrayType", "DoubleListType", "", "", "getDoubleListType", "DoubleNullableType", "getDoubleNullableType", "DoubleType", "getDoubleType", "FloatNullableType", "", "getFloatNullableType", "IntNullableType", "", "getIntNullableType", "LongNullableType", "", "getLongNullableType", "StringNonNullableType", "", "getStringNonNullableType", "StringNullableArrayType", "", "getStringNullableArrayType", "StringNullableListType", "getStringNullableListType", "EnumListType", "EnumNullableType", "SerializableNullableType", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class InternalNavType {
    public static final InternalNavType INSTANCE = new InternalNavType();
    private static final NavType<Integer> IntNullableType = new NavType<Integer>() { // from class: androidx.navigation.serialization.InternalNavType$IntNullableType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Integer get(Bundle bundle, String key) {
            Object objM153d = AbstractC0074a.m153d(bundle, key, key);
            if (objM153d instanceof Integer) {
                return (Integer) objM153d;
            }
            return null;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "integer_nullable";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Integer parseValue(String value) {
            value.getClass();
            if (Intrinsics.areEqual(value, "null")) {
                return null;
            }
            return NavType.IntType.parseValue(value);
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, Integer value) {
            bundle.getClass();
            key.getClass();
            if (value == null) {
                bundle.putSerializable(key, null);
            } else {
                NavType.IntType.put(bundle, key, value);
            }
        }
    };
    private static final NavType<Boolean> BoolNullableType = new NavType<Boolean>() { // from class: androidx.navigation.serialization.InternalNavType$BoolNullableType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Boolean get(Bundle bundle, String key) {
            Object objM153d = AbstractC0074a.m153d(bundle, key, key);
            if (objM153d instanceof Boolean) {
                return (Boolean) objM153d;
            }
            return null;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "boolean_nullable";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Boolean parseValue(String value) {
            value.getClass();
            if (Intrinsics.areEqual(value, "null")) {
                return null;
            }
            return NavType.BoolType.parseValue(value);
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, Boolean value) {
            bundle.getClass();
            key.getClass();
            if (value == null) {
                bundle.putSerializable(key, null);
            } else {
                NavType.BoolType.put(bundle, key, value);
            }
        }
    };
    private static final NavType<Double> DoubleType = new NavType<Double>() { // from class: androidx.navigation.serialization.InternalNavType$DoubleType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Double get(Bundle bundle, String key) {
            bundle.getClass();
            key.getClass();
            Object obj = bundle.get(key);
            obj.getClass();
            return (Double) obj;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "double";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Double parseValue(String value) {
            value.getClass();
            return Double.valueOf(Double.parseDouble(value));
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Double d) {
            put(bundle, str, d.doubleValue());
        }

        public void put(Bundle bundle, String key, double value) {
            bundle.getClass();
            key.getClass();
            bundle.putDouble(key, value);
        }
    };
    private static final NavType<Double> DoubleNullableType = new NavType<Double>() { // from class: androidx.navigation.serialization.InternalNavType$DoubleNullableType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Double get(Bundle bundle, String key) {
            Object objM153d = AbstractC0074a.m153d(bundle, key, key);
            if (objM153d instanceof Double) {
                return (Double) objM153d;
            }
            return null;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "double_nullable";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Double parseValue(String value) {
            value.getClass();
            if (Intrinsics.areEqual(value, "null")) {
                return null;
            }
            return InternalNavType.INSTANCE.getDoubleType().parseValue(value);
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, Double value) {
            bundle.getClass();
            key.getClass();
            if (value == null) {
                bundle.putSerializable(key, null);
            } else {
                InternalNavType.INSTANCE.getDoubleType().put(bundle, key, value);
            }
        }
    };
    private static final NavType<Float> FloatNullableType = new NavType<Float>() { // from class: androidx.navigation.serialization.InternalNavType$FloatNullableType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Float get(Bundle bundle, String key) {
            Object objM153d = AbstractC0074a.m153d(bundle, key, key);
            if (objM153d instanceof Float) {
                return (Float) objM153d;
            }
            return null;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "float_nullable";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Float parseValue(String value) {
            value.getClass();
            if (Intrinsics.areEqual(value, "null")) {
                return null;
            }
            return NavType.FloatType.parseValue(value);
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, Float value) {
            bundle.getClass();
            key.getClass();
            if (value == null) {
                bundle.putSerializable(key, null);
            } else {
                NavType.FloatType.put(bundle, key, value);
            }
        }
    };
    private static final NavType<Long> LongNullableType = new NavType<Long>() { // from class: androidx.navigation.serialization.InternalNavType$LongNullableType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Long get(Bundle bundle, String key) {
            Object objM153d = AbstractC0074a.m153d(bundle, key, key);
            if (objM153d instanceof Long) {
                return (Long) objM153d;
            }
            return null;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "long_nullable";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Long parseValue(String value) {
            value.getClass();
            if (Intrinsics.areEqual(value, "null")) {
                return null;
            }
            return NavType.LongType.parseValue(value);
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, Long value) {
            bundle.getClass();
            key.getClass();
            if (value == null) {
                bundle.putSerializable(key, null);
            } else {
                NavType.LongType.put(bundle, key, value);
            }
        }
    };
    private static final NavType<String> StringNonNullableType = new NavType<String>() { // from class: androidx.navigation.serialization.InternalNavType$StringNonNullableType$1
        @Override // androidx.navigation.NavType
        public String get(Bundle bundle, String key) {
            bundle.getClass();
            key.getClass();
            String string = bundle.getString(key);
            return string == null ? "null" : string;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "string_non_nullable";
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, String value) {
            bundle.getClass();
            key.getClass();
            value.getClass();
            bundle.putString(key, value);
        }

        @Override // androidx.navigation.NavType
        public String serializeAsValue(String value) {
            value.getClass();
            String strEncode = Uri.encode(value);
            strEncode.getClass();
            return strEncode;
        }

        @Override // androidx.navigation.NavType
        public String parseValue(String value) {
            value.getClass();
            return value;
        }
    };
    private static final NavType<String[]> StringNullableArrayType = new CollectionNavType<String[]>() { // from class: androidx.navigation.serialization.InternalNavType$StringNullableArrayType$1
        @Override // androidx.navigation.NavType
        public String[] get(Bundle bundle, String key) {
            return (String[]) AbstractC0074a.m153d(bundle, key, key);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "string_nullable[]";
        }

        @Override // androidx.navigation.NavType
        public String[] parseValue(String value, String[] previousValue) {
            String[] strArr;
            value.getClass();
            return (previousValue == null || (strArr = (String[]) ArraysKt.plus((Object[]) previousValue, (Object[]) parseValue(value))) == null) ? parseValue(value) : strArr;
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, String[] value) {
            bundle.getClass();
            key.getClass();
            bundle.putStringArray(key, value);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<String> serializeAsValues(String[] value) {
            if (value == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(value.length);
            for (String str : value) {
                arrayList.add(Uri.encode(str));
            }
            return arrayList;
        }

        @Override // androidx.navigation.CollectionNavType
        public String[] emptyCollection() {
            return new String[0];
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(String[] value, String[] other) {
            return ArraysKt.contentDeepEquals(value, other);
        }

        @Override // androidx.navigation.NavType
        public String[] parseValue(String value) {
            value.getClass();
            return new String[]{NavType.StringType.parseValue(value)};
        }
    };
    private static final NavType<List<String>> StringNullableListType = new CollectionNavType<List<? extends String>>() { // from class: androidx.navigation.serialization.InternalNavType$StringNullableListType$1
        @Override // androidx.navigation.NavType
        public List<String> get(Bundle bundle, String key) {
            String[] strArr = (String[]) AbstractC0074a.m153d(bundle, key, key);
            if (strArr != null) {
                return ArraysKt.toList(strArr);
            }
            return null;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "List<String?>";
        }

        @Override // androidx.navigation.NavType
        public List<String> parseValue(String value, List<String> previousValue) {
            List<String> listPlus;
            value.getClass();
            return (previousValue == null || (listPlus = CollectionsKt.plus((Collection) previousValue, (Iterable) parseValue(value))) == null) ? parseValue(value) : listPlus;
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, List<String> value) {
            bundle.getClass();
            key.getClass();
            bundle.putStringArray(key, value != null ? (String[]) value.toArray(new String[0]) : null);
        }

        /* JADX INFO: renamed from: serializeAsValues, reason: avoid collision after fix types in other method */
        public List<String> serializeAsValues2(List<String> value) {
            if (value == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(value, 10));
            Iterator<T> it = value.iterator();
            while (it.hasNext()) {
                arrayList.add(Uri.encode((String) it.next()));
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(List<String> value, List<String> other) {
            return ArraysKt.contentDeepEquals(value != null ? (String[]) value.toArray(new String[0]) : null, other != null ? (String[]) other.toArray(new String[0]) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<? extends String> emptyCollection() {
            return CollectionsKt.emptyList();
        }

        @Override // androidx.navigation.NavType
        public List<String> parseValue(String value) {
            value.getClass();
            return CollectionsKt.listOf(NavType.StringType.parseValue(value));
        }

        @Override // androidx.navigation.CollectionNavType
        public /* bridge */ /* synthetic */ List serializeAsValues(List<? extends String> list) {
            return serializeAsValues2((List<String>) list);
        }
    };
    private static final NavType<double[]> DoubleArrayType = new CollectionNavType<double[]>() { // from class: androidx.navigation.serialization.InternalNavType$DoubleArrayType$1
        @Override // androidx.navigation.NavType
        public double[] get(Bundle bundle, String key) {
            return (double[]) AbstractC0074a.m153d(bundle, key, key);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "double[]";
        }

        @Override // androidx.navigation.NavType
        public double[] parseValue(String value) {
            value.getClass();
            return new double[]{InternalNavType.INSTANCE.getDoubleType().parseValue(value).doubleValue()};
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, double[] value) {
            bundle.getClass();
            key.getClass();
            bundle.putDoubleArray(key, value);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<String> serializeAsValues(double[] value) {
            List<Double> list;
            if (value == null || (list = ArraysKt.toList(value)) == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(((Number) it.next()).doubleValue()));
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(double[] value, double[] other) {
            return ArraysKt.contentDeepEquals(value != null ? ArraysKt.toTypedArray(value) : null, other != null ? ArraysKt.toTypedArray(other) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public double[] emptyCollection() {
            return new double[0];
        }

        @Override // androidx.navigation.NavType
        public double[] parseValue(String value, double[] previousValue) {
            double[] dArrPlus;
            value.getClass();
            return (previousValue == null || (dArrPlus = ArraysKt.plus(previousValue, parseValue(value))) == null) ? parseValue(value) : dArrPlus;
        }
    };
    private static final NavType<List<Double>> DoubleListType = new CollectionNavType<List<? extends Double>>() { // from class: androidx.navigation.serialization.InternalNavType$DoubleListType$1
        @Override // androidx.navigation.NavType
        public List<Double> get(Bundle bundle, String key) {
            Object objM153d = AbstractC0074a.m153d(bundle, key, key);
            double[] dArr = objM153d instanceof double[] ? (double[]) objM153d : null;
            if (dArr != null) {
                return ArraysKt.toList(dArr);
            }
            return null;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "List<Double>";
        }

        @Override // androidx.navigation.NavType
        public List<Double> parseValue(String value, List<Double> previousValue) {
            List<Double> listPlus;
            value.getClass();
            return (previousValue == null || (listPlus = CollectionsKt.plus((Collection) previousValue, (Iterable) parseValue(value))) == null) ? parseValue(value) : listPlus;
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, List<Double> value) {
            bundle.getClass();
            key.getClass();
            bundle.putDoubleArray(key, value != null ? CollectionsKt___CollectionsKt.toDoubleArray(value) : null);
        }

        /* JADX INFO: renamed from: serializeAsValues, reason: avoid collision after fix types in other method */
        public List<String> serializeAsValues2(List<Double> value) {
            if (value == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(value, 10));
            Iterator<T> it = value.iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(((Number) it.next()).doubleValue()));
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(List<Double> value, List<Double> other) {
            return ArraysKt.contentDeepEquals(value != null ? (Double[]) value.toArray(new Double[0]) : null, other != null ? (Double[]) other.toArray(new Double[0]) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<? extends Double> emptyCollection() {
            return CollectionsKt.emptyList();
        }

        @Override // androidx.navigation.NavType
        public List<Double> parseValue(String value) {
            value.getClass();
            return CollectionsKt.listOf(InternalNavType.INSTANCE.getDoubleType().parseValue(value));
        }

        @Override // androidx.navigation.CollectionNavType
        public /* bridge */ /* synthetic */ List serializeAsValues(List<? extends Double> list) {
            return serializeAsValues2((List<Double>) list);
        }
    };

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0002\b\u0003\u0018\u00010\u00022\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0003B\u0015\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005¢\u0006\u0002\u0010\u0006J\u0017\u0010\u000b\u001a\u0004\u0018\u00018\u00002\u0006\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0002\u0010\rR\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m3159d2 = {"Landroidx/navigation/serialization/InternalNavType$EnumNullableType;", "D", "", "Landroidx/navigation/serialization/InternalNavType$SerializableNullableType;", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "name", "", "getName", "()Ljava/lang/String;", "parseValue", "value", "(Ljava/lang/String;)Ljava/lang/Enum;", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nNavTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavTypeConverter.kt\nandroidx/navigation/serialization/InternalNavType$EnumNullableType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,577:1\n1#2:578\n1282#3,2:579\n*S KotlinDebug\n*F\n+ 1 NavTypeConverter.kt\nandroidx/navigation/serialization/InternalNavType$EnumNullableType\n*L\n527#1:579,2\n*E\n"})
    public static final class EnumNullableType<D extends Enum<?>> extends SerializableNullableType<D> {
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnumNullableType(Class<D> cls) {
            super(cls);
            cls.getClass();
            if (cls.isEnum()) {
                this.type = cls;
            } else {
                C0075b.m180e(cls, " is not an Enum type.");
                throw null;
            }
        }

        @Override // androidx.navigation.serialization.InternalNavType.SerializableNullableType, androidx.navigation.NavType
        public String getName() {
            return this.type.getName();
        }

        @Override // androidx.navigation.serialization.InternalNavType.SerializableNullableType, androidx.navigation.NavType
        public D parseValue(String value) {
            value.getClass();
            D d = null;
            if (Intrinsics.areEqual(value, "null")) {
                return null;
            }
            D[] enumConstants = this.type.getEnumConstants();
            enumConstants.getClass();
            for (D d10 : enumConstants) {
                D d11 = d10;
                d11.getClass();
                if (StringsKt__StringsJVMKt.equals(d11.name(), value, true)) {
                    d = d10;
                    break;
                }
            }
            D d12 = d;
            if (d12 != null) {
                return d12;
            }
            StringBuilder sbM173x = AbstractC0074a.m173x("Enum value ", value, " not found for type ");
            sbM173x.append(this.type.getName());
            sbM173x.append(FilenameUtils.EXTENSION_SEPARATOR);
            throw new IllegalArgumentException(sbM173x.toString());
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000*\n\b\u0000\u0010\u0001*\u0004\u0018\u00010\u00022\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0003B\u0015\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J \u0010\u000f\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\bH\u0096\u0002¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0017\u0010\u0016\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0017\u001a\u00020\bH\u0016¢\u0006\u0002\u0010\u0018J'\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\u001bR\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, m3159d2 = {"Landroidx/navigation/serialization/InternalNavType$SerializableNullableType;", "D", "Ljava/io/Serializable;", "Landroidx/navigation/NavType;", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "name", "", "getName", "()Ljava/lang/String;", "equals", "", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;", "hashCode", "", "parseValue", "value", "(Ljava/lang/String;)Ljava/io/Serializable;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static class SerializableNullableType<D extends Serializable> extends NavType<D> {
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableNullableType(Class<D> cls) {
            super(true);
            cls.getClass();
            this.type = cls;
            if (Serializable.class.isAssignableFrom(cls)) {
                return;
            }
            C0075b.m180e(cls, " does not implement Serializable.");
            throw null;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other instanceof SerializableNullableType) {
                return Intrinsics.areEqual(this.type, ((SerializableNullableType) other).type);
            }
            return false;
        }

        @Override // androidx.navigation.NavType
        public D get(Bundle bundle, String key) {
            Object objM153d = AbstractC0074a.m153d(bundle, key, key);
            if (objM153d instanceof Serializable) {
                return (D) objM153d;
            }
            return null;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return this.type.getName();
        }

        public int hashCode() {
            return this.type.hashCode();
        }

        @Override // androidx.navigation.NavType
        public D parseValue(String value) {
            value.getClass();
            throw new UnsupportedOperationException("Serializables don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, D value) {
            bundle.getClass();
            key.getClass();
            bundle.putSerializable(key, this.type.cast(value));
        }
    }

    private InternalNavType() {
    }

    public final NavType<Boolean> getBoolNullableType() {
        return BoolNullableType;
    }

    public final NavType<double[]> getDoubleArrayType() {
        return DoubleArrayType;
    }

    public final NavType<List<Double>> getDoubleListType() {
        return DoubleListType;
    }

    public final NavType<Double> getDoubleNullableType() {
        return DoubleNullableType;
    }

    public final NavType<Double> getDoubleType() {
        return DoubleType;
    }

    public final NavType<Float> getFloatNullableType() {
        return FloatNullableType;
    }

    public final NavType<Integer> getIntNullableType() {
        return IntNullableType;
    }

    public final NavType<Long> getLongNullableType() {
        return LongNullableType;
    }

    public final NavType<String> getStringNonNullableType() {
        return StringNonNullableType;
    }

    public final NavType<String[]> getStringNullableArrayType() {
        return StringNullableArrayType;
    }

    public final NavType<List<String>> getStringNullableListType() {
        return StringNullableListType;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000*\f\b\u0000\u0010\u0001*\u0006\u0012\u0002\b\u00030\u00022\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u0002H\u0001\u0018\u00010\u00040\u0003B\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0016J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J!\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000bH\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u001a\u001a\u00020\u000bH\u0016J(\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00042\u0006\u0010\u001a\u001a\u00020\u000b2\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004H\u0016J(\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000b2\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004H\u0016J\u001e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004H\u0016J(\u0010\u001f\u001a\u00020\u00102\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00042\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004H\u0016R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006 "}, m3159d2 = {"Landroidx/navigation/serialization/InternalNavType$EnumListType;", "D", "", "Landroidx/navigation/CollectionNavType;", "", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "enumNavType", "Landroidx/navigation/NavType$EnumType;", "name", "", "getName", "()Ljava/lang/String;", "emptyCollection", "equals", "", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "hashCode", "", "parseValue", "value", "previousValue", "put", "", "serializeAsValues", "valueEquals", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nNavTypeConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavTypeConverter.kt\nandroidx/navigation/serialization/InternalNavType$EnumListType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,577:1\n1#2:578\n1549#3:579\n1620#3,3:580\n*S KotlinDebug\n*F\n+ 1 NavTypeConverter.kt\nandroidx/navigation/serialization/InternalNavType$EnumListType\n*L\n496#1:579\n496#1:580,3\n*E\n"})
    public static final class EnumListType<D extends Enum<?>> extends CollectionNavType<List<? extends D>> {
        private final NavType.EnumType<D> enumNavType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnumListType(Class<D> cls) {
            super(true);
            cls.getClass();
            this.enumNavType = new NavType.EnumType<>(cls);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other instanceof EnumListType) {
                return Intrinsics.areEqual(this.enumNavType, ((EnumListType) other).enumNavType);
            }
            return false;
        }

        @Override // androidx.navigation.NavType
        public List<D> get(Bundle bundle, String key) {
            Object objM153d = AbstractC0074a.m153d(bundle, key, key);
            if (objM153d instanceof List) {
                return (List) objM153d;
            }
            return null;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "List<" + this.enumNavType.getName() + "}>";
        }

        public int hashCode() {
            return this.enumNavType.hashCode();
        }

        @Override // androidx.navigation.NavType
        public List<D> parseValue(String value, List<? extends D> previousValue) {
            List<D> listPlus;
            value.getClass();
            return (previousValue == null || (listPlus = CollectionsKt.plus((Collection) previousValue, (Iterable) parseValue(value))) == null) ? parseValue(value) : listPlus;
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, List<? extends D> value) {
            bundle.getClass();
            key.getClass();
            bundle.putSerializable(key, value != null ? new ArrayList(value) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<String> serializeAsValues(List<? extends D> value) {
            if (value == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(value, 10));
            Iterator<T> it = value.iterator();
            while (it.hasNext()) {
                arrayList.add(((Enum) it.next()).toString());
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(List<? extends D> value, List<? extends D> other) {
            return Intrinsics.areEqual(value != null ? new ArrayList(value) : null, other != null ? new ArrayList(other) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<D> emptyCollection() {
            return CollectionsKt.emptyList();
        }

        @Override // androidx.navigation.NavType
        public List<D> parseValue(String value) {
            value.getClass();
            return CollectionsKt.listOf(this.enumNavType.parseValue(value));
        }
    }
}
