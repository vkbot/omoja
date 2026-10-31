package androidx.collection;

import ai.onnxruntime.b;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0015\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\b\u0000\u0010\u0004H\u0086\b\u001a+\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\b\u0000\u0010\u00042\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00040\u0006\"\u0002H\u0004¢\u0006\u0002\u0010\u0007\u001a)\u0010\b\u001a\u00020\t\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\n0\u0003H\u0080\b\u001a'\u0010\b\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\n0\u000eH\u0080\b\u001a&\u0010\u000f\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0010\u001a\u0002H\nH\u0080\b¢\u0006\u0002\u0010\u0011\u001a \u0010\u0012\u001a\u00020\t\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0013\u001a\u00020\u0001H\u0000\u001a \u0010\u0014\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0015\u001a\u00020\u0001H\u0000\u001a\u0019\u0010\u0016\u001a\u00020\t\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0080\b\u001a'\u0010\u0017\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\n0\u000eH\u0080\b\u001a&\u0010\u0018\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0010\u001a\u0002H\nH\u0080\b¢\u0006\u0002\u0010\u0011\u001a!\u0010\u0019\u001a\u00020\t\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u001a\u001a\u00020\u0001H\u0080\b\u001a#\u0010\u001b\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0080\b\u001a\u0019\u0010\u001e\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0080\b\u001a*\u0010\u001f\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\b\u0010 \u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0015\u001a\u00020\u0001H\u0000\u001a#\u0010!\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\b\u0010 \u001a\u0004\u0018\u00010\u001dH\u0080\b\u001a\u0018\u0010\"\u001a\u00020\u0001\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0000\u001a\u0019\u0010#\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0080\b\u001a)\u0010$\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\n0\u0003H\u0080\b\u001a'\u0010$\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\n0\u000eH\u0080\b\u001a&\u0010%\u001a\u0002H\n\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010&\u001a\u00020\u0001H\u0080\b¢\u0006\u0002\u0010'\u001a&\u0010(\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010\u0010\u001a\u0002H\nH\u0080\b¢\u0006\u0002\u0010\u0011\u001a'\u0010)\u001a\u00020\f\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\n0\u000eH\u0080\b\u001a\u0019\u0010*\u001a\u00020+\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u0003H\u0080\b\u001a&\u0010,\u001a\u0002H\n\"\u0004\b\u0000\u0010\n*\b\u0012\u0004\u0012\u0002H\n0\u00032\u0006\u0010&\u001a\u00020\u0001H\u0080\b¢\u0006\u0002\u0010'\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"ARRAY_SET_BASE_SIZE", "", "arraySetOf", "Landroidx/collection/ArraySet;", ExifInterface.GPS_DIRECTION_TRUE, "values", "", "([Ljava/lang/Object;)Landroidx/collection/ArraySet;", "addAllInternal", "", ExifInterface.LONGITUDE_EAST, "array", "", "elements", "", "addInternal", "element", "(Landroidx/collection/ArraySet;Ljava/lang/Object;)Z", "allocArrays", "size", "binarySearchInternal", "hash", "clearInternal", "containsAllInternal", "containsInternal", "ensureCapacityInternal", "minimumCapacity", "equalsInternal", "other", "", "hashCodeInternal", "indexOf", "key", "indexOfInternal", "indexOfNull", "isEmptyInternal", "removeAllInternal", "removeAtInternal", "index", "(Landroidx/collection/ArraySet;I)Ljava/lang/Object;", "removeInternal", "retainAllInternal", "toStringInternal", "", "valueAtInternal", "collection"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ArraySetKt {
    public static final int ARRAY_SET_BASE_SIZE = 4;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> void addAllInternal(ArraySet<E> arraySet, ArraySet<? extends E> arraySet2) {
        arraySet.getClass();
        arraySet2.getClass();
        int i9 = arraySet2.get_size$collection();
        arraySet.ensureCapacity(arraySet.get_size$collection() + i9);
        if (arraySet.get_size$collection() != 0) {
            for (int i10 = 0; i10 < i9; i10++) {
                arraySet.add(arraySet2.valueAt(i10));
            }
        } else if (i9 > 0) {
            ArraysKt.q(arraySet2.getHashes(), arraySet.getHashes(), 0, i9, 6);
            ArraysKt.s(arraySet2.getArray(), arraySet.getArray(), 0, i9, 6);
            if (arraySet.get_size$collection() == 0) {
                arraySet.set_size$collection(i9);
            } else {
                b.a();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> boolean addInternal(ArraySet<E> arraySet, E e) {
        int i9;
        int iIndexOf;
        arraySet.getClass();
        int i10 = arraySet.get_size$collection();
        if (e == null) {
            iIndexOf = indexOfNull(arraySet);
            i9 = 0;
        } else {
            int iHashCode = e.hashCode();
            i9 = iHashCode;
            iIndexOf = indexOf(arraySet, e, iHashCode);
        }
        if (iIndexOf >= 0) {
            return false;
        }
        int i11 = ~iIndexOf;
        if (i10 >= arraySet.getHashes().length) {
            int i12 = 8;
            if (i10 >= 8) {
                i12 = (i10 >> 1) + i10;
            } else if (i10 < 4) {
                i12 = 4;
            }
            int[] hashes = arraySet.getHashes();
            Object[] array = arraySet.getArray();
            allocArrays(arraySet, i12);
            if (i10 != arraySet.get_size$collection()) {
                b.a();
                return false;
            }
            if (arraySet.getHashes().length != 0) {
                ArraysKt.q(hashes, arraySet.getHashes(), 0, hashes.length, 6);
                ArraysKt.s(array, arraySet.getArray(), 0, array.length, 6);
            }
        }
        if (i11 < i10) {
            int i13 = i11 + 1;
            ArraysKt.k(arraySet.getHashes(), arraySet.getHashes(), i13, i11, i10);
            ArraysKt.m(arraySet.getArray(), arraySet.getArray(), i13, i11, i10);
        }
        if (i10 != arraySet.get_size$collection() || i11 >= arraySet.getHashes().length) {
            b.a();
            return false;
        }
        arraySet.getHashes()[i11] = i9;
        arraySet.getArray()[i11] = e;
        arraySet.set_size$collection(arraySet.get_size$collection() + 1);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> void allocArrays(ArraySet<E> arraySet, int i9) {
        arraySet.getClass();
        arraySet.setHashes$collection(new int[i9]);
        arraySet.setArray$collection(new Object[i9]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <T> ArraySet<T> arraySetOf(T... tArr) {
        tArr.getClass();
        ArraySet<T> arraySet = new ArraySet<>(tArr.length);
        for (T t : tArr) {
            arraySet.add(t);
        }
        return arraySet;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> int binarySearchInternal(ArraySet<E> arraySet, int i9) {
        arraySet.getClass();
        try {
            return ContainerHelpersKt.binarySearch(arraySet.getHashes(), arraySet.get_size$collection(), i9);
        } catch (IndexOutOfBoundsException unused) {
            b.a();
            return 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
        b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> boolean containsInternal(ArraySet<E> arraySet, E e) {
        arraySet.getClass();
        return arraySet.indexOf(e) >= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> void ensureCapacityInternal(ArraySet<E> arraySet, int i9) {
        arraySet.getClass();
        int i10 = arraySet.get_size$collection();
        if (arraySet.getHashes().length < i9) {
            int[] hashes = arraySet.getHashes();
            Object[] array = arraySet.getArray();
            allocArrays(arraySet, i9);
            if (arraySet.get_size$collection() > 0) {
                ArraysKt.q(hashes, arraySet.getHashes(), 0, arraySet.get_size$collection(), 6);
                ArraysKt.s(array, arraySet.getArray(), 0, arraySet.get_size$collection(), 6);
            }
        }
        if (arraySet.get_size$collection() == i10) {
            return;
        }
        b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> boolean equalsInternal(ArraySet<E> arraySet, Object obj) {
        arraySet.getClass();
        if (arraySet == obj) {
            return true;
        }
        if (!(obj instanceof Set) || arraySet.size() != ((Set) obj).size()) {
            return false;
        }
        try {
            int i9 = arraySet.get_size$collection();
            for (int i10 = 0; i10 < i9; i10++) {
                if (!((Set) obj).contains(arraySet.valueAt(i10))) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> int hashCodeInternal(ArraySet<E> arraySet) {
        arraySet.getClass();
        int[] hashes = arraySet.getHashes();
        int i9 = arraySet.get_size$collection();
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            i10 += hashes[i11];
        }
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> int indexOf(ArraySet<E> arraySet, Object obj, int i9) {
        arraySet.getClass();
        int i10 = arraySet.get_size$collection();
        if (i10 == 0) {
            return -1;
        }
        int iBinarySearchInternal = binarySearchInternal(arraySet, i9);
        if (iBinarySearchInternal < 0 || Intrinsics.areEqual(obj, arraySet.getArray()[iBinarySearchInternal])) {
            return iBinarySearchInternal;
        }
        int i11 = iBinarySearchInternal + 1;
        while (i11 < i10 && arraySet.getHashes()[i11] == i9) {
            if (Intrinsics.areEqual(obj, arraySet.getArray()[i11])) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iBinarySearchInternal - 1; i12 >= 0 && arraySet.getHashes()[i12] == i9; i12--) {
            if (Intrinsics.areEqual(obj, arraySet.getArray()[i12])) {
                return i12;
            }
        }
        return ~i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> int indexOfInternal(ArraySet<E> arraySet, Object obj) {
        arraySet.getClass();
        return obj == null ? indexOfNull(arraySet) : indexOf(arraySet, obj, obj.hashCode());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> int indexOfNull(ArraySet<E> arraySet) {
        arraySet.getClass();
        return indexOf(arraySet, null, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> boolean isEmptyInternal(ArraySet<E> arraySet) {
        arraySet.getClass();
        return arraySet.get_size$collection() <= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> boolean removeAllInternal(ArraySet<E> arraySet, ArraySet<? extends E> arraySet2) {
        arraySet.getClass();
        arraySet2.getClass();
        int i9 = arraySet2.get_size$collection();
        int i10 = arraySet.get_size$collection();
        for (int i11 = 0; i11 < i9; i11++) {
            arraySet.remove(arraySet2.valueAt(i11));
        }
        return i10 != arraySet.get_size$collection();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> E removeAtInternal(ArraySet<E> arraySet, int i9) {
        arraySet.getClass();
        int i10 = arraySet.get_size$collection();
        E e = (E) arraySet.getArray()[i9];
        if (i10 <= 1) {
            arraySet.clear();
            return e;
        }
        int i11 = i10 - 1;
        if (arraySet.getHashes().length <= 8 || arraySet.get_size$collection() >= arraySet.getHashes().length / 3) {
            if (i9 < i11) {
                int i12 = i9 + 1;
                ArraysKt.k(arraySet.getHashes(), arraySet.getHashes(), i9, i12, i10);
                ArraysKt.m(arraySet.getArray(), arraySet.getArray(), i9, i12, i10);
            }
            arraySet.getArray()[i11] = null;
        } else {
            int i13 = arraySet.get_size$collection() > 8 ? arraySet.get_size$collection() + (arraySet.get_size$collection() >> 1) : 8;
            int[] hashes = arraySet.getHashes();
            Object[] array = arraySet.getArray();
            allocArrays(arraySet, i13);
            if (i9 > 0) {
                ArraysKt.q(hashes, arraySet.getHashes(), 0, i9, 6);
                ArraysKt.s(array, arraySet.getArray(), 0, i9, 6);
            }
            if (i9 < i11) {
                int i14 = i9 + 1;
                ArraysKt.k(hashes, arraySet.getHashes(), i9, i14, i10);
                ArraysKt.m(array, arraySet.getArray(), i9, i14, i10);
            }
        }
        if (i10 == arraySet.get_size$collection()) {
            arraySet.set_size$collection(i11);
            return e;
        }
        b.a();
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> boolean removeInternal(ArraySet<E> arraySet, E e) {
        arraySet.getClass();
        int iIndexOf = arraySet.indexOf(e);
        if (iIndexOf < 0) {
            return false;
        }
        arraySet.removeAt(iIndexOf);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> boolean retainAllInternal(ArraySet<E> arraySet, Collection<? extends E> collection) {
        arraySet.getClass();
        collection.getClass();
        boolean z8 = false;
        for (int i9 = arraySet.get_size$collection() - 1; -1 < i9; i9--) {
            if (!CollectionsKt.contains(collection, arraySet.getArray()[i9])) {
                arraySet.removeAt(i9);
                z8 = true;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> String toStringInternal(ArraySet<E> arraySet) {
        arraySet.getClass();
        if (arraySet.isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(arraySet.get_size$collection() * 14);
        sb.append('{');
        int i9 = arraySet.get_size$collection();
        for (int i10 = 0; i10 < i9; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            E eValueAt = arraySet.valueAt(i10);
            if (eValueAt != arraySet) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> E valueAtInternal(ArraySet<E> arraySet, int i9) {
        arraySet.getClass();
        return (E) arraySet.getArray()[i9];
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
