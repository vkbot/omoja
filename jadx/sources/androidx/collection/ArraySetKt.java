package androidx.collection;

import ai.onnxruntime.C0075b;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m3158d1 = {"\u0000>\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0015\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\b\u0000\u0010\u0004H\u0086\b\u001a+\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\b\u0000\u0010\u00042\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00040\u0006\"\u0002H\u0004¢\u0006\u0002\u0010\u0007\u001a)\u0010\b\u001a\u00020\t\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\n0\u0003H\u0080\b\u001a'\u0010\b\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\n0\u000eH\u0080\b\u001a&\u0010\u000f\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0010\u001a\u0002H\nH\u0080\b¢\u0006\u0002\u0010\u0011\u001a \u0010\u0012\u001a\u00020\t\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0013\u001a\u00020\u0001H\u0000\u001a \u0010\u0014\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0015\u001a\u00020\u0001H\u0000\u001a\u0019\u0010\u0016\u001a\u00020\t\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0080\b\u001a'\u0010\u0017\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\n0\u000eH\u0080\b\u001a&\u0010\u0018\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0010\u001a\u0002H\nH\u0080\b¢\u0006\u0002\u0010\u0011\u001a!\u0010\u0019\u001a\u00020\t\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u001a\u001a\u00020\u0001H\u0080\b\u001a#\u0010\u001b\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0080\b\u001a\u0019\u0010\u001e\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0080\b\u001a*\u0010\u001f\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\b\u0010 \u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0015\u001a\u00020\u0001H\u0000\u001a#\u0010!\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\b\u0010 \u001a\u0004\u0018\u00010\u001dH\u0080\b\u001a\u0018\u0010\"\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0000\u001a\u0019\u0010#\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0080\b\u001a)\u0010$\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\n0\u0003H\u0080\b\u001a'\u0010$\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\n0\u000eH\u0080\b\u001a&\u0010%\u001a\u0002H\n\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010&\u001a\u00020\u0001H\u0080\b¢\u0006\u0002\u0010'\u001a&\u0010(\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0010\u001a\u0002H\nH\u0080\b¢\u0006\u0002\u0010\u0011\u001a'\u0010)\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\n0\u000eH\u0080\b\u001a\u0019\u0010*\u001a\u00020+\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0080\b\u001a&\u0010,\u001a\u0002H\n\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010&\u001a\u00020\u0001H\u0080\b¢\u0006\u0002\u0010'\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000¨\u0006-"}, m3159d2 = {"ARRAY_SET_BASE_SIZE", "", "arraySetOf", "Landroidx/collection/ArraySet;", ExifInterface.GPS_DIRECTION_TRUE, "values", "", "([Ljava/lang/Object;)Landroidx/collection/ArraySet;", "addAllInternal", "", ExifInterface.LONGITUDE_EAST, "array", "", "elements", "", "addInternal", "element", "(Landroidx/collection/ArraySet;Ljava/lang/Object;)Z", "allocArrays", "size", "binarySearchInternal", "hash", "clearInternal", "containsAllInternal", "containsInternal", "ensureCapacityInternal", "minimumCapacity", "equalsInternal", "other", "", "hashCodeInternal", "indexOf", "key", "indexOfInternal", "indexOfNull", "isEmptyInternal", "removeAllInternal", "removeAtInternal", "index", "(Landroidx/collection/ArraySet;I)Ljava/lang/Object;", "removeInternal", "retainAllInternal", "toStringInternal", "", "valueAtInternal", "collection"}, m3160k = 2, m3161mv = {1, 8, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ArraySetKt {
    public static final int ARRAY_SET_BASE_SIZE = 4;

    public static final <E> void addAllInternal(ArraySet<E> arraySet, ArraySet<? extends E> arraySet2) {
        arraySet.getClass();
        arraySet2.getClass();
        int i10 = arraySet2.get_size$collection();
        arraySet.ensureCapacity(arraySet.get_size$collection() + i10);
        if (arraySet.get_size$collection() != 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                arraySet.add(arraySet2.valueAt(i11));
            }
        } else if (i10 > 0) {
            ArraysKt___ArraysJvmKt.copyInto$default(arraySet2.getHashes(), arraySet.getHashes(), 0, 0, i10, 6, (Object) null);
            ArraysKt___ArraysJvmKt.copyInto$default(arraySet2.getArray(), arraySet.getArray(), 0, 0, i10, 6, (Object) null);
            if (arraySet.get_size$collection() == 0) {
                arraySet.set_size$collection(i10);
            } else {
                C0075b.m176a();
            }
        }
    }

    public static final <E> boolean addInternal(ArraySet<E> arraySet, E e) {
        int i10;
        int iIndexOf;
        arraySet.getClass();
        int i11 = arraySet.get_size$collection();
        if (e == null) {
            iIndexOf = indexOfNull(arraySet);
            i10 = 0;
        } else {
            int iHashCode = e.hashCode();
            i10 = iHashCode;
            iIndexOf = indexOf(arraySet, e, iHashCode);
        }
        if (iIndexOf >= 0) {
            return false;
        }
        int i12 = ~iIndexOf;
        if (i11 >= arraySet.getHashes().length) {
            int i13 = 8;
            if (i11 >= 8) {
                i13 = (i11 >> 1) + i11;
            } else if (i11 < 4) {
                i13 = 4;
            }
            int[] hashes = arraySet.getHashes();
            Object[] array = arraySet.getArray();
            allocArrays(arraySet, i13);
            if (i11 != arraySet.get_size$collection()) {
                C0075b.m176a();
                return false;
            }
            if (arraySet.getHashes().length != 0) {
                ArraysKt___ArraysJvmKt.copyInto$default(hashes, arraySet.getHashes(), 0, 0, hashes.length, 6, (Object) null);
                ArraysKt___ArraysJvmKt.copyInto$default(array, arraySet.getArray(), 0, 0, array.length, 6, (Object) null);
            }
        }
        if (i12 < i11) {
            int i14 = i12 + 1;
            ArraysKt___ArraysJvmKt.copyInto(arraySet.getHashes(), arraySet.getHashes(), i14, i12, i11);
            ArraysKt___ArraysJvmKt.copyInto(arraySet.getArray(), arraySet.getArray(), i14, i12, i11);
        }
        if (i11 != arraySet.get_size$collection() || i12 >= arraySet.getHashes().length) {
            C0075b.m176a();
            return false;
        }
        arraySet.getHashes()[i12] = i10;
        arraySet.getArray()[i12] = e;
        arraySet.set_size$collection(arraySet.get_size$collection() + 1);
        return true;
    }

    public static final <E> void allocArrays(ArraySet<E> arraySet, int i10) {
        arraySet.getClass();
        arraySet.setHashes$collection(new int[i10]);
        arraySet.setArray$collection(new Object[i10]);
    }

    public static final <T> ArraySet<T> arraySetOf(T... tArr) {
        tArr.getClass();
        ArraySet<T> arraySet = new ArraySet<>(tArr.length);
        for (T t : tArr) {
            arraySet.add(t);
        }
        return arraySet;
    }

    public static final <E> int binarySearchInternal(ArraySet<E> arraySet, int i10) {
        arraySet.getClass();
        try {
            return ContainerHelpersKt.binarySearch(arraySet.getHashes(), arraySet.get_size$collection(), i10);
        } catch (IndexOutOfBoundsException unused) {
            C0075b.m176a();
            return 0;
        }
    }

    public static final <E> void clearInternal(ArraySet<E> arraySet) {
        arraySet.getClass();
        if (arraySet.get_size$collection() != 0) {
            arraySet.setHashes$collection(ContainerHelpersKt.EMPTY_INTS);
            arraySet.setArray$collection(ContainerHelpersKt.EMPTY_OBJECTS);
            arraySet.set_size$collection(0);
        }
        if (arraySet.get_size$collection() == 0) {
            return;
        }
        C0075b.m176a();
    }

    public static final <E> boolean containsAllInternal(ArraySet<E> arraySet, Collection<? extends E> collection) {
        arraySet.getClass();
        collection.getClass();
        Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            if (!arraySet.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static final <E> boolean containsInternal(ArraySet<E> arraySet, E e) {
        arraySet.getClass();
        return arraySet.indexOf(e) >= 0;
    }

    public static final <E> void ensureCapacityInternal(ArraySet<E> arraySet, int i10) {
        arraySet.getClass();
        int i11 = arraySet.get_size$collection();
        if (arraySet.getHashes().length < i10) {
            int[] hashes = arraySet.getHashes();
            Object[] array = arraySet.getArray();
            allocArrays(arraySet, i10);
            if (arraySet.get_size$collection() > 0) {
                ArraysKt___ArraysJvmKt.copyInto$default(hashes, arraySet.getHashes(), 0, 0, arraySet.get_size$collection(), 6, (Object) null);
                ArraysKt___ArraysJvmKt.copyInto$default(array, arraySet.getArray(), 0, 0, arraySet.get_size$collection(), 6, (Object) null);
            }
        }
        if (arraySet.get_size$collection() == i11) {
            return;
        }
        C0075b.m176a();
    }

    public static final <E> boolean equalsInternal(ArraySet<E> arraySet, Object obj) {
        arraySet.getClass();
        if (arraySet == obj) {
            return true;
        }
        if (!(obj instanceof Set) || arraySet.size() != ((Set) obj).size()) {
            return false;
        }
        try {
            int i10 = arraySet.get_size$collection();
            for (int i11 = 0; i11 < i10; i11++) {
                if (!((Set) obj).contains(arraySet.valueAt(i11))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static final <E> int hashCodeInternal(ArraySet<E> arraySet) {
        arraySet.getClass();
        int[] hashes = arraySet.getHashes();
        int i10 = arraySet.get_size$collection();
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += hashes[i12];
        }
        return i11;
    }

    public static final <E> int indexOf(ArraySet<E> arraySet, Object obj, int i10) {
        arraySet.getClass();
        int i11 = arraySet.get_size$collection();
        if (i11 == 0) {
            return -1;
        }
        int iBinarySearchInternal = binarySearchInternal(arraySet, i10);
        if (iBinarySearchInternal < 0 || Intrinsics.areEqual(obj, arraySet.getArray()[iBinarySearchInternal])) {
            return iBinarySearchInternal;
        }
        int i12 = iBinarySearchInternal + 1;
        while (i12 < i11 && arraySet.getHashes()[i12] == i10) {
            if (Intrinsics.areEqual(obj, arraySet.getArray()[i12])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iBinarySearchInternal - 1; i13 >= 0 && arraySet.getHashes()[i13] == i10; i13--) {
            if (Intrinsics.areEqual(obj, arraySet.getArray()[i13])) {
                return i13;
            }
        }
        return ~i12;
    }

    public static final <E> int indexOfInternal(ArraySet<E> arraySet, Object obj) {
        arraySet.getClass();
        return obj == null ? indexOfNull(arraySet) : indexOf(arraySet, obj, obj.hashCode());
    }

    public static final <E> int indexOfNull(ArraySet<E> arraySet) {
        arraySet.getClass();
        return indexOf(arraySet, null, 0);
    }

    public static final <E> boolean isEmptyInternal(ArraySet<E> arraySet) {
        arraySet.getClass();
        return arraySet.get_size$collection() <= 0;
    }

    public static final <E> boolean removeAllInternal(ArraySet<E> arraySet, ArraySet<? extends E> arraySet2) {
        arraySet.getClass();
        arraySet2.getClass();
        int i10 = arraySet2.get_size$collection();
        int i11 = arraySet.get_size$collection();
        for (int i12 = 0; i12 < i10; i12++) {
            arraySet.remove(arraySet2.valueAt(i12));
        }
        return i11 != arraySet.get_size$collection();
    }

    public static final <E> E removeAtInternal(ArraySet<E> arraySet, int i10) {
        arraySet.getClass();
        int i11 = arraySet.get_size$collection();
        E e = (E) arraySet.getArray()[i10];
        if (i11 <= 1) {
            arraySet.clear();
            return e;
        }
        int i12 = i11 - 1;
        if (arraySet.getHashes().length <= 8 || arraySet.get_size$collection() >= arraySet.getHashes().length / 3) {
            if (i10 < i12) {
                int i13 = i10 + 1;
                ArraysKt___ArraysJvmKt.copyInto(arraySet.getHashes(), arraySet.getHashes(), i10, i13, i11);
                ArraysKt___ArraysJvmKt.copyInto(arraySet.getArray(), arraySet.getArray(), i10, i13, i11);
            }
            arraySet.getArray()[i12] = null;
        } else {
            int i14 = arraySet.get_size$collection() > 8 ? arraySet.get_size$collection() + (arraySet.get_size$collection() >> 1) : 8;
            int[] hashes = arraySet.getHashes();
            Object[] array = arraySet.getArray();
            allocArrays(arraySet, i14);
            if (i10 > 0) {
                ArraysKt___ArraysJvmKt.copyInto$default(hashes, arraySet.getHashes(), 0, 0, i10, 6, (Object) null);
                ArraysKt___ArraysJvmKt.copyInto$default(array, arraySet.getArray(), 0, 0, i10, 6, (Object) null);
            }
            if (i10 < i12) {
                int i15 = i10 + 1;
                ArraysKt___ArraysJvmKt.copyInto(hashes, arraySet.getHashes(), i10, i15, i11);
                ArraysKt___ArraysJvmKt.copyInto(array, arraySet.getArray(), i10, i15, i11);
            }
        }
        if (i11 == arraySet.get_size$collection()) {
            arraySet.set_size$collection(i12);
            return e;
        }
        C0075b.m176a();
        return null;
    }

    public static final <E> boolean removeInternal(ArraySet<E> arraySet, E e) {
        arraySet.getClass();
        int iIndexOf = arraySet.indexOf(e);
        if (iIndexOf < 0) {
            return false;
        }
        arraySet.removeAt(iIndexOf);
        return true;
    }

    public static final <E> boolean retainAllInternal(ArraySet<E> arraySet, Collection<? extends E> collection) {
        arraySet.getClass();
        collection.getClass();
        boolean z9 = false;
        for (int i10 = arraySet.get_size$collection() - 1; -1 < i10; i10--) {
            if (!CollectionsKt.contains(collection, arraySet.getArray()[i10])) {
                arraySet.removeAt(i10);
                z9 = true;
            }
        }
        return z9;
    }

    public static final <E> String toStringInternal(ArraySet<E> arraySet) {
        arraySet.getClass();
        if (arraySet.isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(arraySet.get_size$collection() * 14);
        sb.append('{');
        int i10 = arraySet.get_size$collection();
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb.append(", ");
            }
            E eValueAt = arraySet.valueAt(i11);
            if (eValueAt != arraySet) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public static final <E> E valueAtInternal(ArraySet<E> arraySet, int i10) {
        arraySet.getClass();
        return (E) arraySet.getArray()[i10];
    }

    public static final <T> ArraySet<T> arraySetOf() {
        return new ArraySet<>(0, 1, null);
    }

    public static final <E> boolean removeAllInternal(ArraySet<E> arraySet, Collection<? extends E> collection) {
        arraySet.getClass();
        collection.getClass();
        Iterator<? extends E> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= arraySet.remove(it.next());
        }
        return zRemove;
    }

    public static final <E> boolean addAllInternal(ArraySet<E> arraySet, Collection<? extends E> collection) {
        arraySet.getClass();
        collection.getClass();
        arraySet.ensureCapacity(collection.size() + arraySet.get_size$collection());
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= arraySet.add(it.next());
        }
        return zAdd;
    }
}
