package androidx.navigation;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0075b;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.AnyRes;
import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.HttpUrl;
import org.apache.commons.p161io.FilenameUtils;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u000e\b&\u0018\u0000 !*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0006!\"#$%&B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J \u0010\u000b\u001a\u0004\u0018\u00018\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\bH¦\u0002¢\u0006\u0002\u0010\u000fJ%\u0010\u0010\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\bH\u0007¢\u0006\u0002\u0010\u0012J/\u0010\u0010\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0013\u001a\u00028\u0000H\u0007¢\u0006\u0002\u0010\u0014J\u0015\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\bH&¢\u0006\u0002\u0010\u0016J\u001d\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0017J%\u0010\u0018\u001a\u00020\u00192\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001cJ\b\u0010\u001d\u001a\u00020\bH\u0016J\u001d\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010 R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006'"}, m3159d2 = {"Landroidx/navigation/NavType;", ExifInterface.GPS_DIRECTION_TRUE, "", "isNullableAllowed", "", "(Z)V", "()Z", "name", "", "getName", "()Ljava/lang/String;", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;", "parseAndPut", "value", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;", "previousValue", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "parseValue", "(Ljava/lang/String;)Ljava/lang/Object;", "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V", "serializeAsValue", "(Ljava/lang/Object;)Ljava/lang/String;", "toString", "valueEquals", "other", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "Companion", "EnumType", "ParcelableArrayType", "ParcelableType", "SerializableArrayType", "SerializableType", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public abstract class NavType<T> {
    private final boolean isNullableAllowed;
    private final String name = "nav_type";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @JvmField
    public static final NavType<Integer> IntType = new NavType<Integer>() { // from class: androidx.navigation.NavType$Companion$IntType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Integer get(Bundle bundle, String key) {
            bundle.getClass();
            key.getClass();
            Object obj = bundle.get(key);
            obj.getClass();
            return (Integer) obj;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return TypedValues.Custom.S_INT;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Integer parseValue(String value) {
            value.getClass();
            return Integer.valueOf(StringsKt__StringsJVMKt.startsWith$default(value, "0x", false, 2, null) ? Integer.parseInt(value.substring(2), CharsKt.checkRadix(16)) : Integer.parseInt(value));
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Integer num) {
            put(bundle, str, num.intValue());
        }

        public void put(Bundle bundle, String key, int value) {
            bundle.getClass();
            key.getClass();
            bundle.putInt(key, value);
        }
    };

    @JvmField
    public static final NavType<Integer> ReferenceType = new NavType<Integer>() { // from class: androidx.navigation.NavType$Companion$ReferenceType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        @AnyRes
        public Integer get(Bundle bundle, String key) {
            bundle.getClass();
            key.getClass();
            Object obj = bundle.get(key);
            obj.getClass();
            return (Integer) obj;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return TypedValues.Custom.S_REFERENCE;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Integer parseValue(String value) {
            value.getClass();
            return Integer.valueOf(StringsKt__StringsJVMKt.startsWith$default(value, "0x", false, 2, null) ? Integer.parseInt(value.substring(2), CharsKt.checkRadix(16)) : Integer.parseInt(value));
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Integer num) {
            put(bundle, str, num.intValue());
        }

        public void put(Bundle bundle, String key, @AnyRes int value) {
            bundle.getClass();
            key.getClass();
            bundle.putInt(key, value);
        }
    };

    @JvmField
    public static final NavType<int[]> IntArrayType = new CollectionNavType<int[]>() { // from class: androidx.navigation.NavType$Companion$IntArrayType$1
        @Override // androidx.navigation.NavType
        public int[] get(Bundle bundle, String key) {
            return (int[]) AbstractC0074a.m153d(bundle, key, key);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "integer[]";
        }

        @Override // androidx.navigation.NavType
        public int[] parseValue(String value, int[] previousValue) {
            int[] iArrPlus;
            value.getClass();
            return (previousValue == null || (iArrPlus = ArraysKt.plus(previousValue, parseValue(value))) == null) ? parseValue(value) : iArrPlus;
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, int[] value) {
            bundle.getClass();
            key.getClass();
            bundle.putIntArray(key, value);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<String> serializeAsValues(int[] value) {
            List<Integer> list;
            if (value == null || (list = ArraysKt.toList(value)) == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(((Number) it.next()).intValue()));
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(int[] value, int[] other) {
            return ArraysKt.contentDeepEquals(value != null ? ArraysKt.toTypedArray(value) : null, other != null ? ArraysKt.toTypedArray(other) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public int[] emptyCollection() {
            return new int[0];
        }

        @Override // androidx.navigation.NavType
        public int[] parseValue(String value) {
            value.getClass();
            return new int[]{NavType.IntType.parseValue(value).intValue()};
        }
    };

    @JvmField
    public static final NavType<List<Integer>> IntListType = new CollectionNavType<List<? extends Integer>>() { // from class: androidx.navigation.NavType$Companion$IntListType$1
        @Override // androidx.navigation.NavType
        public List<Integer> get(Bundle bundle, String key) {
            int[] iArr = (int[]) AbstractC0074a.m153d(bundle, key, key);
            if (iArr != null) {
                return ArraysKt.toList(iArr);
            }
            return null;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "List<Int>";
        }

        @Override // androidx.navigation.NavType
        public List<Integer> parseValue(String value, List<Integer> previousValue) {
            List<Integer> listPlus;
            value.getClass();
            return (previousValue == null || (listPlus = CollectionsKt.plus((Collection) previousValue, (Iterable) parseValue(value))) == null) ? parseValue(value) : listPlus;
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, List<Integer> value) {
            bundle.getClass();
            key.getClass();
            bundle.putIntArray(key, value != null ? CollectionsKt___CollectionsKt.toIntArray(value) : null);
        }

        /* JADX INFO: renamed from: serializeAsValues, reason: avoid collision after fix types in other method */
        public List<String> serializeAsValues2(List<Integer> value) {
            if (value == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(value, 10));
            Iterator<T> it = value.iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(((Number) it.next()).intValue()));
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(List<Integer> value, List<Integer> other) {
            return ArraysKt.contentDeepEquals(value != null ? (Integer[]) value.toArray(new Integer[0]) : null, other != null ? (Integer[]) other.toArray(new Integer[0]) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<? extends Integer> emptyCollection() {
            return CollectionsKt.emptyList();
        }

        @Override // androidx.navigation.NavType
        public List<Integer> parseValue(String value) {
            value.getClass();
            return CollectionsKt.listOf(NavType.IntType.parseValue(value));
        }

        @Override // androidx.navigation.CollectionNavType
        public /* bridge */ /* synthetic */ List serializeAsValues(List<? extends Integer> list) {
            return serializeAsValues2((List<Integer>) list);
        }
    };

    @JvmField
    public static final NavType<Long> LongType = new NavType<Long>() { // from class: androidx.navigation.NavType$Companion$LongType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Long get(Bundle bundle, String key) {
            bundle.getClass();
            key.getClass();
            Object obj = bundle.get(key);
            obj.getClass();
            return (Long) obj;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "long";
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Long parseValue(String value) {
            value.getClass();
            String strSubstring = StringsKt__StringsJVMKt.endsWith$default(value, "L", false, 2, null) ? value.substring(0, value.length() - 1) : value;
            return Long.valueOf(StringsKt__StringsJVMKt.startsWith$default(value, "0x", false, 2, null) ? Long.parseLong(strSubstring.substring(2), CharsKt.checkRadix(16)) : Long.parseLong(strSubstring));
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Long l10) {
            put(bundle, str, l10.longValue());
        }

        public void put(Bundle bundle, String key, long value) {
            bundle.getClass();
            key.getClass();
            bundle.putLong(key, value);
        }
    };

    @JvmField
    public static final NavType<long[]> LongArrayType = new CollectionNavType<long[]>() { // from class: androidx.navigation.NavType$Companion$LongArrayType$1
        @Override // androidx.navigation.NavType
        public long[] get(Bundle bundle, String key) {
            return (long[]) AbstractC0074a.m153d(bundle, key, key);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "long[]";
        }

        @Override // androidx.navigation.NavType
        public long[] parseValue(String value) {
            value.getClass();
            return new long[]{NavType.LongType.parseValue(value).longValue()};
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, long[] value) {
            bundle.getClass();
            key.getClass();
            bundle.putLongArray(key, value);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<String> serializeAsValues(long[] value) {
            List<Long> list;
            if (value == null || (list = ArraysKt.toList(value)) == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(((Number) it.next()).longValue()));
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(long[] value, long[] other) {
            return ArraysKt.contentDeepEquals(value != null ? ArraysKt.toTypedArray(value) : null, other != null ? ArraysKt.toTypedArray(other) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public long[] emptyCollection() {
            return new long[0];
        }

        @Override // androidx.navigation.NavType
        public long[] parseValue(String value, long[] previousValue) {
            long[] jArrPlus;
            value.getClass();
            return (previousValue == null || (jArrPlus = ArraysKt.plus(previousValue, parseValue(value))) == null) ? parseValue(value) : jArrPlus;
        }
    };

    @JvmField
    public static final NavType<List<Long>> LongListType = new CollectionNavType<List<? extends Long>>() { // from class: androidx.navigation.NavType$Companion$LongListType$1
        @Override // androidx.navigation.NavType
        public List<Long> get(Bundle bundle, String key) {
            long[] jArr = (long[]) AbstractC0074a.m153d(bundle, key, key);
            if (jArr != null) {
                return ArraysKt.toList(jArr);
            }
            return null;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "List<Long>";
        }

        @Override // androidx.navigation.NavType
        public List<Long> parseValue(String value, List<Long> previousValue) {
            List<Long> listPlus;
            value.getClass();
            return (previousValue == null || (listPlus = CollectionsKt.plus((Collection) previousValue, (Iterable) parseValue(value))) == null) ? parseValue(value) : listPlus;
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, List<Long> value) {
            bundle.getClass();
            key.getClass();
            bundle.putLongArray(key, value != null ? CollectionsKt___CollectionsKt.toLongArray(value) : null);
        }

        /* JADX INFO: renamed from: serializeAsValues, reason: avoid collision after fix types in other method */
        public List<String> serializeAsValues2(List<Long> value) {
            if (value == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(value, 10));
            Iterator<T> it = value.iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(((Number) it.next()).longValue()));
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(List<Long> value, List<Long> other) {
            return ArraysKt.contentDeepEquals(value != null ? (Long[]) value.toArray(new Long[0]) : null, other != null ? (Long[]) other.toArray(new Long[0]) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<? extends Long> emptyCollection() {
            return CollectionsKt.emptyList();
        }

        @Override // androidx.navigation.NavType
        public List<Long> parseValue(String value) {
            value.getClass();
            return CollectionsKt.listOf(NavType.LongType.parseValue(value));
        }

        @Override // androidx.navigation.CollectionNavType
        public /* bridge */ /* synthetic */ List serializeAsValues(List<? extends Long> list) {
            return serializeAsValues2((List<Long>) list);
        }
    };

    @JvmField
    public static final NavType<Float> FloatType = new NavType<Float>() { // from class: androidx.navigation.NavType$Companion$FloatType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Float get(Bundle bundle, String key) {
            bundle.getClass();
            key.getClass();
            Object obj = bundle.get(key);
            obj.getClass();
            return (Float) obj;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return TypedValues.Custom.S_FLOAT;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Float parseValue(String value) {
            value.getClass();
            return Float.valueOf(Float.parseFloat(value));
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Float f8) {
            put(bundle, str, f8.floatValue());
        }

        public void put(Bundle bundle, String key, float value) {
            bundle.getClass();
            key.getClass();
            bundle.putFloat(key, value);
        }
    };

    @JvmField
    public static final NavType<float[]> FloatArrayType = new CollectionNavType<float[]>() { // from class: androidx.navigation.NavType$Companion$FloatArrayType$1
        @Override // androidx.navigation.NavType
        public float[] get(Bundle bundle, String key) {
            return (float[]) AbstractC0074a.m153d(bundle, key, key);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "float[]";
        }

        @Override // androidx.navigation.NavType
        public float[] parseValue(String value) {
            value.getClass();
            return new float[]{NavType.FloatType.parseValue(value).floatValue()};
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, float[] value) {
            bundle.getClass();
            key.getClass();
            bundle.putFloatArray(key, value);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<String> serializeAsValues(float[] value) {
            List<Float> list;
            if (value == null || (list = ArraysKt.toList(value)) == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(((Number) it.next()).floatValue()));
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(float[] value, float[] other) {
            return ArraysKt.contentDeepEquals(value != null ? ArraysKt.toTypedArray(value) : null, other != null ? ArraysKt.toTypedArray(other) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public float[] emptyCollection() {
            return new float[0];
        }

        @Override // androidx.navigation.NavType
        public float[] parseValue(String value, float[] previousValue) {
            float[] fArrPlus;
            value.getClass();
            return (previousValue == null || (fArrPlus = ArraysKt.plus(previousValue, parseValue(value))) == null) ? parseValue(value) : fArrPlus;
        }
    };

    @JvmField
    public static final NavType<List<Float>> FloatListType = new CollectionNavType<List<? extends Float>>() { // from class: androidx.navigation.NavType$Companion$FloatListType$1
        @Override // androidx.navigation.NavType
        public List<Float> get(Bundle bundle, String key) {
            float[] fArr = (float[]) AbstractC0074a.m153d(bundle, key, key);
            if (fArr != null) {
                return ArraysKt.toList(fArr);
            }
            return null;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "List<Float>";
        }

        @Override // androidx.navigation.NavType
        public List<Float> parseValue(String value, List<Float> previousValue) {
            List<Float> listPlus;
            value.getClass();
            return (previousValue == null || (listPlus = CollectionsKt.plus((Collection) previousValue, (Iterable) parseValue(value))) == null) ? parseValue(value) : listPlus;
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, List<Float> value) {
            bundle.getClass();
            key.getClass();
            bundle.putFloatArray(key, value != null ? CollectionsKt___CollectionsKt.toFloatArray(value) : null);
        }

        /* JADX INFO: renamed from: serializeAsValues, reason: avoid collision after fix types in other method */
        public List<String> serializeAsValues2(List<Float> value) {
            if (value == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(value, 10));
            Iterator<T> it = value.iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(((Number) it.next()).floatValue()));
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(List<Float> value, List<Float> other) {
            return ArraysKt.contentDeepEquals(value != null ? (Float[]) value.toArray(new Float[0]) : null, other != null ? (Float[]) other.toArray(new Float[0]) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<? extends Float> emptyCollection() {
            return CollectionsKt.emptyList();
        }

        @Override // androidx.navigation.NavType
        public List<Float> parseValue(String value) {
            value.getClass();
            return CollectionsKt.listOf(NavType.FloatType.parseValue(value));
        }

        @Override // androidx.navigation.CollectionNavType
        public /* bridge */ /* synthetic */ List serializeAsValues(List<? extends Float> list) {
            return serializeAsValues2((List<Float>) list);
        }
    };

    @JvmField
    public static final NavType<Boolean> BoolType = new NavType<Boolean>() { // from class: androidx.navigation.NavType$Companion$BoolType$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Boolean get(Bundle bundle, String key) {
            return (Boolean) AbstractC0074a.m153d(bundle, key, key);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return TypedValues.Custom.S_BOOLEAN;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.navigation.NavType
        public Boolean parseValue(String value) {
            boolean z9;
            value.getClass();
            if (Intrinsics.areEqual(value, "true")) {
                z9 = true;
            } else {
                if (!Intrinsics.areEqual(value, "false")) {
                    C1929i.m3029k("A boolean NavType only accepts \"true\" or \"false\" values.");
                    return null;
                }
                z9 = false;
            }
            return Boolean.valueOf(z9);
        }

        @Override // androidx.navigation.NavType
        public /* bridge */ /* synthetic */ void put(Bundle bundle, String str, Boolean bool) {
            put(bundle, str, bool.booleanValue());
        }

        public void put(Bundle bundle, String key, boolean value) {
            bundle.getClass();
            key.getClass();
            bundle.putBoolean(key, value);
        }
    };

    @JvmField
    public static final NavType<boolean[]> BoolArrayType = new CollectionNavType<boolean[]>() { // from class: androidx.navigation.NavType$Companion$BoolArrayType$1
        @Override // androidx.navigation.NavType
        public boolean[] get(Bundle bundle, String key) {
            return (boolean[]) AbstractC0074a.m153d(bundle, key, key);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "boolean[]";
        }

        @Override // androidx.navigation.NavType
        public boolean[] parseValue(String value) {
            value.getClass();
            return new boolean[]{NavType.BoolType.parseValue(value).booleanValue()};
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, boolean[] value) {
            bundle.getClass();
            key.getClass();
            bundle.putBooleanArray(key, value);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<String> serializeAsValues(boolean[] value) {
            List<Boolean> list;
            if (value == null || (list = ArraysKt.toList(value)) == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(((Boolean) it.next()).booleanValue()));
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(boolean[] value, boolean[] other) {
            return ArraysKt.contentDeepEquals(value != null ? ArraysKt.toTypedArray(value) : null, other != null ? ArraysKt.toTypedArray(other) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public boolean[] emptyCollection() {
            return new boolean[0];
        }

        @Override // androidx.navigation.NavType
        public boolean[] parseValue(String value, boolean[] previousValue) {
            boolean[] zArrPlus;
            value.getClass();
            return (previousValue == null || (zArrPlus = ArraysKt.plus(previousValue, parseValue(value))) == null) ? parseValue(value) : zArrPlus;
        }
    };

    @JvmField
    public static final NavType<List<Boolean>> BoolListType = new CollectionNavType<List<? extends Boolean>>() { // from class: androidx.navigation.NavType$Companion$BoolListType$1
        @Override // androidx.navigation.NavType
        public List<Boolean> get(Bundle bundle, String key) {
            boolean[] zArr = (boolean[]) AbstractC0074a.m153d(bundle, key, key);
            if (zArr != null) {
                return ArraysKt.toList(zArr);
            }
            return null;
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "List<Boolean>";
        }

        @Override // androidx.navigation.NavType
        public List<Boolean> parseValue(String value, List<Boolean> previousValue) {
            List<Boolean> listPlus;
            value.getClass();
            return (previousValue == null || (listPlus = CollectionsKt.plus((Collection) previousValue, (Iterable) parseValue(value))) == null) ? parseValue(value) : listPlus;
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, List<Boolean> value) {
            bundle.getClass();
            key.getClass();
            bundle.putBooleanArray(key, value != null ? CollectionsKt___CollectionsKt.toBooleanArray(value) : null);
        }

        /* JADX INFO: renamed from: serializeAsValues, reason: avoid collision after fix types in other method */
        public List<String> serializeAsValues2(List<Boolean> value) {
            if (value == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(value, 10));
            Iterator<T> it = value.iterator();
            while (it.hasNext()) {
                arrayList.add(String.valueOf(((Boolean) it.next()).booleanValue()));
            }
            return arrayList;
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(List<Boolean> value, List<Boolean> other) {
            return ArraysKt.contentDeepEquals(value != null ? (Boolean[]) value.toArray(new Boolean[0]) : null, other != null ? (Boolean[]) other.toArray(new Boolean[0]) : null);
        }

        @Override // androidx.navigation.CollectionNavType
        public List<? extends Boolean> emptyCollection() {
            return CollectionsKt.emptyList();
        }

        @Override // androidx.navigation.NavType
        public List<Boolean> parseValue(String value) {
            value.getClass();
            return CollectionsKt.listOf(NavType.BoolType.parseValue(value));
        }

        @Override // androidx.navigation.CollectionNavType
        public /* bridge */ /* synthetic */ List serializeAsValues(List<? extends Boolean> list) {
            return serializeAsValues2((List<Boolean>) list);
        }
    };

    @JvmField
    public static final NavType<String> StringType = new NavType<String>() { // from class: androidx.navigation.NavType$Companion$StringType$1
        @Override // androidx.navigation.NavType
        public String get(Bundle bundle, String key) {
            return (String) AbstractC0074a.m153d(bundle, key, key);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return TypedValues.Custom.S_STRING;
        }

        @Override // androidx.navigation.NavType
        public String parseValue(String value) {
            value.getClass();
            if (Intrinsics.areEqual(value, "null")) {
                return null;
            }
            return value;
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, String value) {
            bundle.getClass();
            key.getClass();
            bundle.putString(key, value);
        }

        @Override // androidx.navigation.NavType
        public String serializeAsValue(String value) {
            String strEncode = value != null ? Uri.encode(value) : null;
            return strEncode == null ? "null" : strEncode;
        }
    };

    @JvmField
    public static final NavType<String[]> StringArrayType = new CollectionNavType<String[]>() { // from class: androidx.navigation.NavType$Companion$StringArrayType$1
        @Override // androidx.navigation.NavType
        public String[] get(Bundle bundle, String key) {
            return (String[]) AbstractC0074a.m153d(bundle, key, key);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return "string[]";
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
            return new String[]{value};
        }
    };

    @JvmField
    public static final NavType<List<String>> StringListType = new CollectionNavType<List<? extends String>>() { // from class: androidx.navigation.NavType$Companion$StringListType$1
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
            return "List<String>";
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
            return CollectionsKt.listOf(value);
        }

        @Override // androidx.navigation.CollectionNavType
        public /* bridge */ /* synthetic */ List serializeAsValues(List<? extends String> list) {
            return serializeAsValues2((List<String>) list);
        }
    };

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000*\f\b\u0001\u0010\u0001*\u0006\u0012\u0002\b\u00030\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0015\u0010\u000b\u001a\u00028\u00012\u0006\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0002\u0010\rR\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m3159d2 = {"Landroidx/navigation/NavType$EnumType;", "D", "", "Landroidx/navigation/NavType$SerializableType;", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "name", "", "getName", "()Ljava/lang/String;", "parseValue", "value", "(Ljava/lang/String;)Ljava/lang/Enum;", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nNavType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavType.kt\nandroidx/navigation/NavType$EnumType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1212:1\n1#2:1213\n1282#3,2:1214\n*S KotlinDebug\n*F\n+ 1 NavType.kt\nandroidx/navigation/NavType$EnumType\n*L\n1135#1:1214,2\n*E\n"})
    public static final class EnumType<D extends Enum<?>> extends SerializableType<D> {
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnumType(Class<D> cls) {
            super(false, cls);
            cls.getClass();
            if (cls.isEnum()) {
                this.type = cls;
            } else {
                C0075b.m180e(cls, " is not an Enum type.");
                throw null;
            }
        }

        @Override // androidx.navigation.NavType.SerializableType, androidx.navigation.NavType
        public String getName() {
            return this.type.getName();
        }

        @Override // androidx.navigation.NavType.SerializableType, androidx.navigation.NavType
        public D parseValue(String value) {
            D d;
            value.getClass();
            D[] enumConstants = this.type.getEnumConstants();
            enumConstants.getClass();
            int length = enumConstants.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    d = null;
                    break;
                }
                d = enumConstants[i10];
                if (StringsKt__StringsJVMKt.equals(d.name(), value, true)) {
                    break;
                }
                i10++;
            }
            D d10 = d;
            if (d10 != null) {
                return d10;
            }
            StringBuilder sbM173x = AbstractC0074a.m173x("Enum value ", value, " not found for type ");
            sbM173x.append(this.type.getName());
            sbM173x.append(FilenameUtils.EXTENSION_SEPARATOR);
            throw new IllegalArgumentException(sbM173x.toString());
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0002\u0010\u0005J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J \u0010\u000e\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0007H\u0096\u0002¢\u0006\u0002\u0010\u0012J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0015\u0010\u0015\u001a\u00028\u00012\u0006\u0010\u0016\u001a\u00020\u0007H\u0016¢\u0006\u0002\u0010\u0017J%\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001aR\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, m3159d2 = {"Landroidx/navigation/NavType$ParcelableType;", "D", "Landroidx/navigation/NavType;", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "name", "", "getName", "()Ljava/lang/String;", "equals", "", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;", "hashCode", "", "parseValue", "value", "(Ljava/lang/String;)Ljava/lang/Object;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class ParcelableType<D> extends NavType<D> {
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParcelableType(Class<D> cls) {
            super(true);
            cls.getClass();
            if (Parcelable.class.isAssignableFrom(cls) || Serializable.class.isAssignableFrom(cls)) {
                this.type = cls;
            } else {
                C0075b.m180e(cls, " does not implement Parcelable or Serializable.");
                throw null;
            }
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other == null || !Intrinsics.areEqual(ParcelableType.class, other.getClass())) {
                return false;
            }
            return Intrinsics.areEqual(this.type, ((ParcelableType) other).type);
        }

        @Override // androidx.navigation.NavType
        public D get(Bundle bundle, String key) {
            return (D) AbstractC0074a.m153d(bundle, key, key);
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
            throw new UnsupportedOperationException("Parcelables don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, D value) {
            bundle.getClass();
            key.getClass();
            this.type.cast(value);
            if (value == null || (value instanceof Parcelable)) {
                bundle.putParcelable(key, (Parcelable) value);
            } else if (value instanceof Serializable) {
                bundle.putSerializable(key, (Serializable) value);
            }
        }
    }

    public NavType(boolean z9) {
        this.isNullableAllowed = z9;
    }

    @JvmStatic
    public static NavType<?> fromArgType(String str, String str2) {
        return INSTANCE.fromArgType(str, str2);
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final NavType<Object> inferFromValue(String str) {
        return INSTANCE.inferFromValue(str);
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final NavType<Object> inferFromValueType(Object obj) {
        return INSTANCE.inferFromValueType(obj);
    }

    public abstract T get(Bundle bundle, String key);

    public String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: isNullableAllowed, reason: from getter */
    public boolean getIsNullableAllowed() {
        return this.isNullableAllowed;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final T parseAndPut(Bundle bundle, String key, String value, T previousValue) {
        bundle.getClass();
        key.getClass();
        if (!bundle.containsKey(key)) {
            C1929i.m3029k("There is no previous value in this bundle.");
            return null;
        }
        if (value == null) {
            return previousValue;
        }
        T value2 = parseValue(value, previousValue);
        put(bundle, key, value2);
        return value2;
    }

    public abstract T parseValue(String value);

    public T parseValue(String value, T previousValue) {
        value.getClass();
        return parseValue(value);
    }

    public abstract void put(Bundle bundle, String key, T value);

    public String serializeAsValue(T value) {
        return String.valueOf(value);
    }

    public String toString() {
        return getName();
    }

    public boolean valueEquals(T value, T other) {
        return Intrinsics.areEqual(value, other);
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0018\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u001f\u001a\u0006\u0012\u0002\b\u00030\u00042\b\u0010 \u001a\u0004\u0018\u00010\u001c2\b\u0010!\u001a\u0004\u0018\u00010\u001cH\u0017J\u0016\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00010\u00042\u0006\u0010#\u001a\u00020\u001cH\u0007J\u0018\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00010\u00042\b\u0010#\u001a\u0004\u0018\u00010\u0001H\u0007J'\u0010%\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\n\u0010&\u001a\u0006\u0012\u0002\b\u00030'2\u0006\u0010(\u001a\u00020\bH\u0000¢\u0006\u0002\b)R\u0018\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00120\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u001a\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u001d\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u00070\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, m3159d2 = {"Landroidx/navigation/NavType$Companion;", "", "()V", "BoolArrayType", "Landroidx/navigation/NavType;", "", "BoolListType", "", "", "BoolType", "FloatArrayType", "", "FloatListType", "", "FloatType", "IntArrayType", "", "IntListType", "", "IntType", "LongArrayType", "", "LongListType", "", "LongType", "ReferenceType", "StringArrayType", "", "", "StringListType", "StringType", "fromArgType", "type", "packageName", "inferFromValue", "value", "inferFromValueType", "parseSerializableOrParcelableType", "clazz", "Ljava/lang/Class;", "isArray", "parseSerializableOrParcelableType$navigation_common_release", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

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
                        String strConcat = (!StringsKt__StringsJVMKt.startsWith$default(type, ".", false, 2, null) || packageName == null) ? type : packageName.concat(type);
                        boolean zEndsWith$default = StringsKt__StringsJVMKt.endsWith$default(type, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, false, 2, null);
                        if (zEndsWith$default) {
                            strConcat = strConcat.substring(0, strConcat.length() - 2);
                        }
                        NavType<?> serializableOrParcelableType$navigation_common_release = parseSerializableOrParcelableType$navigation_common_release(Class.forName(strConcat), zEndsWith$default);
                        if (serializableOrParcelableType$navigation_common_release != null) {
                            return serializableOrParcelableType$navigation_common_release;
                        }
                        throw new IllegalArgumentException(strConcat.concat(" is not Serializable or Parcelable.").toString());
                    } catch (ClassNotFoundException e) {
                        C2467b.m3833w(e);
                        return null;
                    }
                }
            }
            return navType10;
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
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
                            NavType<String> navType2 = NavType.StringType;
                            navType2.getClass();
                            return navType2;
                        }
                    } catch (IllegalArgumentException unused2) {
                        NavType<Long> navType3 = NavType.LongType;
                        navType3.parseValue(value);
                        navType3.getClass();
                        return navType3;
                    }
                } catch (IllegalArgumentException unused3) {
                    NavType<Boolean> navType4 = NavType.BoolType;
                    navType4.parseValue(value);
                    navType4.getClass();
                    return navType4;
                }
            } catch (IllegalArgumentException unused4) {
                NavType<Float> navType5 = NavType.FloatType;
                navType5.parseValue(value);
                navType5.getClass();
                return navType5;
            }
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
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
                    return new ParcelableArrayType(componentType2);
                }
            }
            if (value.getClass().isArray()) {
                Class<?> componentType3 = value.getClass().getComponentType();
                componentType3.getClass();
                if (Serializable.class.isAssignableFrom(componentType3)) {
                    Class<?> componentType4 = value.getClass().getComponentType();
                    componentType4.getClass();
                    return new SerializableArrayType(componentType4);
                }
            }
            if (value instanceof Parcelable) {
                return new ParcelableType(value.getClass());
            }
            if (value instanceof Enum) {
                return new EnumType(value.getClass());
            }
            if (value instanceof Serializable) {
                return new SerializableType(value.getClass());
            }
            C0674b.m857x(value.getClass().getName(), "Object of type ", " is not supported for navigation arguments.");
            return null;
        }

        public final NavType<?> parseSerializableOrParcelableType$navigation_common_release(Class<?> clazz, boolean isArray) {
            clazz.getClass();
            if (Parcelable.class.isAssignableFrom(clazz)) {
                return isArray ? new ParcelableArrayType(clazz) : new ParcelableType(clazz);
            }
            if (Enum.class.isAssignableFrom(clazz) && !isArray) {
                return new EnumType(clazz);
            }
            if (Serializable.class.isAssignableFrom(clazz)) {
                return isArray ? new SerializableArrayType(clazz) : new SerializableType(clazz);
            }
            return null;
        }

        private Companion() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u0002H\u0001\u0018\u00010\u00040\u0003B\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J&\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nH\u0096\u0002¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u001b\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0019\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u001aJ-\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\n2\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0004H\u0016¢\u0006\u0002\u0010\u001dJ-\u0010\u001e\u001a\u00020\u000e2\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00042\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0004H\u0016¢\u0006\u0002\u0010\u001fR\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006 "}, m3159d2 = {"Landroidx/navigation/NavType$ParcelableArrayType;", "D", "Landroid/os/Parcelable;", "Landroidx/navigation/NavType;", "", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "arrayType", "name", "", "getName", "()Ljava/lang/String;", "equals", "", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Parcelable;", "hashCode", "", "parseValue", "value", "(Ljava/lang/String;)[Landroid/os/Parcelable;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;[Landroid/os/Parcelable;)V", "valueEquals", "([Landroid/os/Parcelable;[Landroid/os/Parcelable;)Z", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class ParcelableArrayType<D extends Parcelable> extends NavType<D[]> {
        private final Class<D[]> arrayType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ParcelableArrayType(Class<D> cls) {
            super(true);
            cls.getClass();
            if (!Parcelable.class.isAssignableFrom(cls)) {
                C0075b.m180e(cls, " does not implement Parcelable.");
                throw null;
            }
            try {
                this.arrayType = (Class<D[]>) Class.forName("[L" + cls.getName() + ';');
            } catch (ClassNotFoundException e) {
                C2467b.m3833w(e);
                throw null;
            }
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other == null || !Intrinsics.areEqual(ParcelableArrayType.class, other.getClass())) {
                return false;
            }
            return Intrinsics.areEqual(this.arrayType, ((ParcelableArrayType) other).arrayType);
        }

        @Override // androidx.navigation.NavType
        public D[] get(Bundle bundle, String key) {
            return (D[]) ((Parcelable[]) AbstractC0074a.m153d(bundle, key, key));
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return this.arrayType.getName();
        }

        public int hashCode() {
            return this.arrayType.hashCode();
        }

        @Override // androidx.navigation.NavType
        public D[] parseValue(String value) {
            value.getClass();
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, D[] value) {
            bundle.getClass();
            key.getClass();
            this.arrayType.cast(value);
            bundle.putParcelableArray(key, value);
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(D[] value, D[] other) {
            return ArraysKt.contentDeepEquals(value, other);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u0002H\u0001\u0018\u00010\u00040\u0003B\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J&\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nH\u0096\u0002¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u001b\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0019\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u001aJ-\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\n2\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0004H\u0016¢\u0006\u0002\u0010\u001dJ-\u0010\u001e\u001a\u00020\u000e2\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00042\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0004H\u0016¢\u0006\u0002\u0010\u001fR\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006 "}, m3159d2 = {"Landroidx/navigation/NavType$SerializableArrayType;", "D", "Ljava/io/Serializable;", "Landroidx/navigation/NavType;", "", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "arrayType", "name", "", "getName", "()Ljava/lang/String;", "equals", "", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/io/Serializable;", "hashCode", "", "parseValue", "value", "(Ljava/lang/String;)[Ljava/io/Serializable;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;[Ljava/io/Serializable;)V", "valueEquals", "([Ljava/io/Serializable;[Ljava/io/Serializable;)Z", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    public static final class SerializableArrayType<D extends Serializable> extends NavType<D[]> {
        private final Class<D[]> arrayType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableArrayType(Class<D> cls) {
            super(true);
            cls.getClass();
            if (!Serializable.class.isAssignableFrom(cls)) {
                C0075b.m180e(cls, " does not implement Serializable.");
                throw null;
            }
            try {
                this.arrayType = (Class<D[]>) Class.forName("[L" + cls.getName() + ';');
            } catch (ClassNotFoundException e) {
                C2467b.m3833w(e);
                throw null;
            }
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other == null || !Intrinsics.areEqual(SerializableArrayType.class, other.getClass())) {
                return false;
            }
            return Intrinsics.areEqual(this.arrayType, ((SerializableArrayType) other).arrayType);
        }

        @Override // androidx.navigation.NavType
        public D[] get(Bundle bundle, String key) {
            return (D[]) ((Serializable[]) AbstractC0074a.m153d(bundle, key, key));
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return this.arrayType.getName();
        }

        public int hashCode() {
            return this.arrayType.hashCode();
        }

        @Override // androidx.navigation.NavType
        public D[] parseValue(String value) {
            value.getClass();
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.navigation.NavType
        public void put(Bundle bundle, String key, D[] value) {
            bundle.getClass();
            key.getClass();
            this.arrayType.cast(value);
            bundle.putSerializable(key, value);
        }

        @Override // androidx.navigation.NavType
        public boolean valueEquals(D[] value, D[] other) {
            return ArraysKt.contentDeepEquals(value, other);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final T parseAndPut(Bundle bundle, String key, String value) {
        bundle.getClass();
        key.getClass();
        value.getClass();
        T value2 = parseValue(value);
        put(bundle, key, value2);
        return value2;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Metadata(m3158d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0015\b\u0016\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\u0006B\u001d\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0002\u0010\tJ\u0013\u0010\u000e\u001a\u00020\b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J \u0010\u0011\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000bH\u0096\u0002¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0015\u0010\u0018\u001a\u00028\u00012\u0006\u0010\u0019\u001a\u00020\u000bH\u0016¢\u0006\u0002\u0010\u001aJ%\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u001dR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, m3159d2 = {"Landroidx/navigation/NavType$SerializableType;", "D", "Ljava/io/Serializable;", "Landroidx/navigation/NavType;", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "nullableAllowed", "", "(ZLjava/lang/Class;)V", "name", "", "getName", "()Ljava/lang/String;", "equals", "other", "", "get", "bundle", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;", "hashCode", "", "parseValue", "value", "(Ljava/lang/String;)Ljava/io/Serializable;", "put", "", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V", "navigation-common_release"}, m3160k = 1, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
    @SourceDebugExtension({"SMAP\nNavType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavType.kt\nandroidx/navigation/NavType$SerializableType\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1212:1\n1#2:1213\n*E\n"})
    public static class SerializableType<D extends Serializable> extends NavType<D> {
        private final Class<D> type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableType(Class<D> cls) {
            super(true);
            cls.getClass();
            if (!Serializable.class.isAssignableFrom(cls)) {
                C0075b.m180e(cls, " does not implement Serializable.");
                throw null;
            }
            if (cls.isEnum()) {
                C0075b.m180e(cls, " is an Enum. You should use EnumType instead.");
                throw null;
            }
            this.type = cls;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other instanceof SerializableType) {
                return Intrinsics.areEqual(this.type, ((SerializableType) other).type);
            }
            return false;
        }

        @Override // androidx.navigation.NavType
        public D get(Bundle bundle, String key) {
            return (D) AbstractC0074a.m153d(bundle, key, key);
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
            value.getClass();
            this.type.cast(value);
            bundle.putSerializable(key, value);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SerializableType(boolean z9, Class<D> cls) {
            super(z9);
            cls.getClass();
            if (Serializable.class.isAssignableFrom(cls)) {
                this.type = cls;
            } else {
                C0075b.m180e(cls, " does not implement Serializable.");
                throw null;
            }
        }
    }
}
