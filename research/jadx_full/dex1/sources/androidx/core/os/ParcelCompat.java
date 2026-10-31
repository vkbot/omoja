package androidx.core.os;

import ai.onnxruntime.a;
import android.os.BadParcelableException;
import android.os.Build$VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ParcelCompat {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ParcelCompat() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static <T> Object[] readArray(@NonNull Parcel parcel, @Nullable ClassLoader classLoader, @NonNull Class<T> cls) {
        return Build$VERSION.SDK_INT >= 34 ? ParcelCompat$Api33Impl.readArray(parcel, classLoader, cls) : parcel.readArray(classLoader);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static <T> ArrayList<T> readArrayList(@NonNull Parcel parcel, @Nullable ClassLoader classLoader, @NonNull Class<? extends T> cls) {
        return Build$VERSION.SDK_INT >= 34 ? ParcelCompat$Api33Impl.readArrayList(parcel, classLoader, cls) : parcel.readArrayList(classLoader);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean readBoolean(@NonNull Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static <K, V> HashMap<K, V> readHashMap(@NonNull Parcel parcel, @Nullable ClassLoader classLoader, @NonNull Class<? extends K> cls, @NonNull Class<? extends V> cls2) {
        return Build$VERSION.SDK_INT >= 34 ? ParcelCompat$Api33Impl.readHashMap(parcel, classLoader, cls, cls2) : parcel.readHashMap(classLoader);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> void readList(@NonNull Parcel parcel, @NonNull List<? super T> list, @Nullable ClassLoader classLoader, @NonNull Class<T> cls) {
        if (Build$VERSION.SDK_INT >= 34) {
            ParcelCompat$Api33Impl.readList(parcel, list, classLoader, cls);
        } else {
            parcel.readList(list, classLoader);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <K, V> void readMap(@NonNull Parcel parcel, @NonNull Map<? super K, ? super V> map, @Nullable ClassLoader classLoader, @NonNull Class<K> cls, @NonNull Class<V> cls2) {
        if (Build$VERSION.SDK_INT >= 34) {
            ParcelCompat$Api33Impl.readMap(parcel, map, classLoader, cls, cls2);
        } else {
            parcel.readMap(map, classLoader);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static <T extends Parcelable> T readParcelable(@NonNull Parcel parcel, @Nullable ClassLoader classLoader, @NonNull Class<T> cls) {
        if (Build$VERSION.SDK_INT >= 34) {
            return (T) ParcelCompat$Api33Impl.readParcelable(parcel, classLoader, cls);
        }
        T t = (T) parcel.readParcelable(classLoader);
        if (t == null || cls.isInstance(t)) {
            return t;
        }
        StringBuilder sb = new StringBuilder("Parcelable ");
        sb.append(t.getClass());
        String name = cls.getName();
        sb.append(" is not a subclass of required class ");
        sb.append(name);
        sb.append(" provided in the parameter");
        throw new BadParcelableException(sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v4, resolved type: android.os.Parcelable[] */
    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    @Deprecated
    public static <T> T[] readParcelableArray(@NonNull Parcel parcel, @Nullable ClassLoader classLoader, @NonNull Class<T> cls) {
        if (Build$VERSION.SDK_INT >= 34) {
            return (T[]) ParcelCompat$Api33Impl.readParcelableArray(parcel, classLoader, cls);
        }
        T[] tArr = (T[]) parcel.readParcelableArray(classLoader);
        if (cls.isAssignableFrom(Parcelable.class)) {
            return tArr;
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, tArr.length));
        for (int i9 = 0; i9 < tArr.length; i9++) {
            try {
                tArr2[i9] = cls.cast(tArr[i9]);
            } catch (ClassCastException unused) {
                StringBuilder sbQ = a.q(i9, "Parcelable at index ", " is not a subclass of required class ");
                sbQ.append(cls.getName());
                sbQ.append(" provided in the parameter");
                throw new BadParcelableException(sbQ.toString());
            }
        }
        return tArr2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static <T> Parcelable[] readParcelableArrayTyped(@NonNull Parcel parcel, @Nullable ClassLoader classLoader, @NonNull Class<T> cls) {
        return Build$VERSION.SDK_INT >= 34 ? (Parcelable[]) ParcelCompat$Api33Impl.readParcelableArray(parcel, classLoader, cls) : parcel.readParcelableArray(classLoader);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RequiresApi(ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_BIAS)
    public static <T> Parcelable$Creator<T> readParcelableCreator(@NonNull Parcel parcel, @Nullable ClassLoader classLoader, @NonNull Class<T> cls) {
        return Build$VERSION.SDK_INT >= 34 ? ParcelCompat$Api33Impl.readParcelableCreator(parcel, classLoader, cls) : (Parcelable$Creator<T>) ParcelCompat$Api30Impl.readParcelableCreator(parcel, classLoader);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @RequiresApi(api = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_HORIZONTAL_BIAS)
    public static <T> List<T> readParcelableList(@NonNull Parcel parcel, @NonNull List<T> list, @Nullable ClassLoader classLoader, @NonNull Class<T> cls) {
        return Build$VERSION.SDK_INT >= 34 ? ParcelCompat$Api33Impl.readParcelableList(parcel, list, classLoader, cls) : ParcelCompat$Api29Impl.readParcelableList(parcel, list, classLoader);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static <T extends Serializable> T readSerializable(@NonNull Parcel parcel, @Nullable ClassLoader classLoader, @NonNull Class<T> cls) {
        return Build$VERSION.SDK_INT >= 33 ? (T) ParcelCompat$Api33Impl.readSerializable(parcel, classLoader, cls) : (T) parcel.readSerializable();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public static <T> SparseArray<T> readSparseArray(@NonNull Parcel parcel, @Nullable ClassLoader classLoader, @NonNull Class<? extends T> cls) {
        return Build$VERSION.SDK_INT >= 34 ? ParcelCompat$Api33Impl.readSparseArray(parcel, classLoader, cls) : parcel.readSparseArray(classLoader);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void writeBoolean(@NonNull Parcel parcel, boolean z8) {
        parcel.writeInt(z8 ? 1 : 0);
    }
}
