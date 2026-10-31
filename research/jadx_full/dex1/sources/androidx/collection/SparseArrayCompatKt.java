package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u001b\n\u0002\u0010\u000e\n\u0002\b\u0005\u001a.\u0010\u0002\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\t\u001a\u0019\u0010\n\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u0080\b\u001a!\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0080\b\u001a&\u0010\r\u001a\u00020\f\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\b\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\u000e\u001a'\u0010\u000f\u001a\u0004\u0018\u0001H\u0004\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000¢\u0006\u0002\u0010\u0010\u001a-\u0010\u000f\u001a\u0002H\u0004\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u0002H\u0004H\u0000¢\u0006\u0002\u0010\u0012\u001a!\u0010\u0013\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0080\b\u001a&\u0010\u0014\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\b\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\u0015\u001a\u0019\u0010\u0016\u001a\u00020\f\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u0080\b\u001a!\u0010\u0017\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0018\u001a\u00020\u0007H\u0080\b\u001a.\u0010\u0019\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\t\u001a)\u0010\u001a\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u000e\u0010\u001b\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00040\u0005H\u0080\b\u001a0\u0010\u001c\u001a\u0004\u0018\u0001H\u0004\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\u0012\u001a \u0010\u001d\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a+\u0010\u001d\u001a\u00020\f\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0080\b\u001a!\u0010\u001e\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0018\u001a\u00020\u0007H\u0080\b\u001a)\u0010\u001f\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0080\b\u001a0\u0010!\u001a\u0004\u0018\u0001H\u0004\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\u0012\u001a6\u0010!\u001a\u00020\f\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\"\u001a\u0002H\u00042\u0006\u0010#\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010$\u001a.\u0010%\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\b\u001a\u0002H\u0004H\u0080\b¢\u0006\u0002\u0010\t\u001a\u0019\u0010&\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u0080\b\u001a\u0019\u0010'\u001a\u00020(\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u0080\b\u001a&\u0010)\u001a\u0002H\u0004\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0018\u001a\u00020\u0007H\u0080\b¢\u0006\u0002\u0010\u0010\u001a\u0018\u0010*\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u0002\u001a:\u0010+\u001a\u0002H,\"\u0004\b\u0000\u0010\u0004\"\n\b\u0001\u0010,*\u0004\u0018\u0001H\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u0002H,H\u0082\b¢\u0006\u0002\u0010\u0012\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"DELETED", "", "commonAppend", "", ExifInterface.LONGITUDE_EAST, "Landroidx/collection/SparseArrayCompat;", "key", "", "value", "(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)V", "commonClear", "commonContainsKey", "", "commonContainsValue", "(Landroidx/collection/SparseArrayCompat;Ljava/lang/Object;)Z", "commonGet", "(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;", "defaultValue", "(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)Ljava/lang/Object;", "commonIndexOfKey", "commonIndexOfValue", "(Landroidx/collection/SparseArrayCompat;Ljava/lang/Object;)I", "commonIsEmpty", "commonKeyAt", "index", "commonPut", "commonPutAll", "other", "commonPutIfAbsent", "commonRemove", "commonRemoveAt", "commonRemoveAtRange", "size", "commonReplace", "oldValue", "newValue", "(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;Ljava/lang/Object;)Z", "commonSetValueAt", "commonSize", "commonToString", "", "commonValueAt", "gc", "internalGet", ExifInterface.GPS_DIRECTION_TRUE, "collection"}, k = 2, mv = {1, 8, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nSparseArrayCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SparseArrayCompat.kt\nandroidx/collection/SparseArrayCompatKt\n*L\n1#1,535:1\n244#1,6:536\n244#1,6:542\n353#1,40:548\n353#1,40:588\n459#1,9:628\n*S KotlinDebug\n*F\n+ 1 SparseArrayCompat.kt\nandroidx/collection/SparseArrayCompatKt\n*L\n255#1:536,6\n260#1:542,6\n397#1:548,40\n405#1:588,40\n477#1:628,9\n*E\n"})
public final class SparseArrayCompatKt {
    private static final Object DELETED = new Object();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ void access$gc(SparseArrayCompat sparseArrayCompat) {
        gc(sparseArrayCompat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Object access$getDELETED$p() {
        return DELETED;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> void commonAppend(SparseArrayCompat<E> sparseArrayCompat, int i9, E e) {
        sparseArrayCompat.getClass();
        int i10 = sparseArrayCompat.size;
        if (i10 != 0 && i9 <= sparseArrayCompat.keys[i10 - 1]) {
            sparseArrayCompat.put(i9, e);
            return;
        }
        if (sparseArrayCompat.garbage && i10 >= sparseArrayCompat.keys.length) {
            access$gc(sparseArrayCompat);
        }
        int i11 = sparseArrayCompat.size;
        if (i11 >= sparseArrayCompat.keys.length) {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i11 + 1);
            sparseArrayCompat.keys = Arrays.copyOf(sparseArrayCompat.keys, iIdealIntArraySize);
            sparseArrayCompat.values = Arrays.copyOf(sparseArrayCompat.values, iIdealIntArraySize);
        }
        sparseArrayCompat.keys[i11] = i9;
        sparseArrayCompat.values[i11] = e;
        sparseArrayCompat.size = i11 + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> void commonClear(SparseArrayCompat<E> sparseArrayCompat) {
        sparseArrayCompat.getClass();
        int i9 = sparseArrayCompat.size;
        Object[] objArr = sparseArrayCompat.values;
        for (int i10 = 0; i10 < i9; i10++) {
            objArr[i10] = null;
        }
        sparseArrayCompat.size = 0;
        sparseArrayCompat.garbage = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> boolean commonContainsKey(SparseArrayCompat<E> sparseArrayCompat, int i9) {
        sparseArrayCompat.getClass();
        return sparseArrayCompat.indexOfKey(i9) >= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:13:0x001d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x001f A[RETURN] */
    public static final <E> boolean commonContainsValue(SparseArrayCompat<E> sparseArrayCompat, E e) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.garbage) {
            access$gc(sparseArrayCompat);
        }
        int i9 = sparseArrayCompat.size;
        int i10 = 0;
        while (i10 < i9) {
            if (sparseArrayCompat.values[i10] == e) {
                if (i10 >= 0) {
                    return true;
                }
                return false;
            }
            i10++;
        }
        i10 = -1;
        if (i10 >= 0) {
            return true;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> E commonGet(SparseArrayCompat<E> sparseArrayCompat, int i9) {
        E e;
        sparseArrayCompat.getClass();
        int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i9);
        if (iBinarySearch < 0 || (e = (E) sparseArrayCompat.values[iBinarySearch]) == DELETED) {
            return null;
        }
        return e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> int commonIndexOfKey(SparseArrayCompat<E> sparseArrayCompat, int i9) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.garbage) {
            access$gc(sparseArrayCompat);
        }
        return ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> int commonIndexOfValue(SparseArrayCompat<E> sparseArrayCompat, E e) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.garbage) {
            access$gc(sparseArrayCompat);
        }
        int i9 = sparseArrayCompat.size;
        for (int i10 = 0; i10 < i9; i10++) {
            if (sparseArrayCompat.values[i10] == e) {
                return i10;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> boolean commonIsEmpty(SparseArrayCompat<E> sparseArrayCompat) {
        sparseArrayCompat.getClass();
        return sparseArrayCompat.size() == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> int commonKeyAt(SparseArrayCompat<E> sparseArrayCompat, int i9) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.garbage) {
            access$gc(sparseArrayCompat);
        }
        return sparseArrayCompat.keys[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> void commonPut(SparseArrayCompat<E> sparseArrayCompat, int i9, E e) {
        sparseArrayCompat.getClass();
        int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i9);
        if (iBinarySearch >= 0) {
            sparseArrayCompat.values[iBinarySearch] = e;
            return;
        }
        int i10 = ~iBinarySearch;
        if (i10 < sparseArrayCompat.size && sparseArrayCompat.values[i10] == access$getDELETED$p()) {
            sparseArrayCompat.keys[i10] = i9;
            sparseArrayCompat.values[i10] = e;
            return;
        }
        if (sparseArrayCompat.garbage && sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
            access$gc(sparseArrayCompat);
            i10 = ~ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i9);
        }
        int i11 = sparseArrayCompat.size;
        if (i11 >= sparseArrayCompat.keys.length) {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i11 + 1);
            sparseArrayCompat.keys = Arrays.copyOf(sparseArrayCompat.keys, iIdealIntArraySize);
            sparseArrayCompat.values = Arrays.copyOf(sparseArrayCompat.values, iIdealIntArraySize);
        }
        int i12 = sparseArrayCompat.size;
        if (i12 - i10 != 0) {
            int[] iArr = sparseArrayCompat.keys;
            int i13 = i10 + 1;
            ArraysKt.k(iArr, iArr, i13, i10, i12);
            Object[] objArr = sparseArrayCompat.values;
            ArraysKt.m(objArr, objArr, i13, i10, sparseArrayCompat.size);
        }
        sparseArrayCompat.keys[i10] = i9;
        sparseArrayCompat.values[i10] = e;
        sparseArrayCompat.size++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> void commonPutAll(SparseArrayCompat<E> sparseArrayCompat, SparseArrayCompat<? extends E> sparseArrayCompat2) {
        sparseArrayCompat.getClass();
        sparseArrayCompat2.getClass();
        int size = sparseArrayCompat2.size();
        for (int i9 = 0; i9 < size; i9++) {
            int iKeyAt = sparseArrayCompat2.keyAt(i9);
            E eValueAt = sparseArrayCompat2.valueAt(i9);
            int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, iKeyAt);
            if (iBinarySearch >= 0) {
                sparseArrayCompat.values[iBinarySearch] = eValueAt;
            } else {
                int i10 = ~iBinarySearch;
                if (i10 >= sparseArrayCompat.size || sparseArrayCompat.values[i10] != access$getDELETED$p()) {
                    if (sparseArrayCompat.garbage && sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
                        access$gc(sparseArrayCompat);
                        i10 = ~ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, iKeyAt);
                    }
                    int i11 = sparseArrayCompat.size;
                    if (i11 >= sparseArrayCompat.keys.length) {
                        int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i11 + 1);
                        sparseArrayCompat.keys = Arrays.copyOf(sparseArrayCompat.keys, iIdealIntArraySize);
                        sparseArrayCompat.values = Arrays.copyOf(sparseArrayCompat.values, iIdealIntArraySize);
                    }
                    int i12 = sparseArrayCompat.size;
                    if (i12 - i10 != 0) {
                        int[] iArr = sparseArrayCompat.keys;
                        int i13 = i10 + 1;
                        ArraysKt.k(iArr, iArr, i13, i10, i12);
                        Object[] objArr = sparseArrayCompat.values;
                        ArraysKt.m(objArr, objArr, i13, i10, sparseArrayCompat.size);
                    }
                    sparseArrayCompat.keys[i10] = iKeyAt;
                    sparseArrayCompat.values[i10] = eValueAt;
                    sparseArrayCompat.size++;
                } else {
                    sparseArrayCompat.keys[i10] = iKeyAt;
                    sparseArrayCompat.values[i10] = eValueAt;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> E commonPutIfAbsent(SparseArrayCompat<E> sparseArrayCompat, int i9, E e) {
        sparseArrayCompat.getClass();
        E e6 = (E) commonGet(sparseArrayCompat, i9);
        if (e6 == null) {
            int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i9);
            if (iBinarySearch >= 0) {
                sparseArrayCompat.values[iBinarySearch] = e;
                return e6;
            }
            int i10 = ~iBinarySearch;
            if (i10 < sparseArrayCompat.size && sparseArrayCompat.values[i10] == access$getDELETED$p()) {
                sparseArrayCompat.keys[i10] = i9;
                sparseArrayCompat.values[i10] = e;
                return e6;
            }
            if (sparseArrayCompat.garbage && sparseArrayCompat.size >= sparseArrayCompat.keys.length) {
                access$gc(sparseArrayCompat);
                i10 = ~ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i9);
            }
            int i11 = sparseArrayCompat.size;
            if (i11 >= sparseArrayCompat.keys.length) {
                int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i11 + 1);
                sparseArrayCompat.keys = Arrays.copyOf(sparseArrayCompat.keys, iIdealIntArraySize);
                sparseArrayCompat.values = Arrays.copyOf(sparseArrayCompat.values, iIdealIntArraySize);
            }
            int i12 = sparseArrayCompat.size;
            if (i12 - i10 != 0) {
                int[] iArr = sparseArrayCompat.keys;
                int i13 = i10 + 1;
                ArraysKt.k(iArr, iArr, i13, i10, i12);
                Object[] objArr = sparseArrayCompat.values;
                ArraysKt.m(objArr, objArr, i13, i10, sparseArrayCompat.size);
            }
            sparseArrayCompat.keys[i10] = i9;
            sparseArrayCompat.values[i10] = e;
            sparseArrayCompat.size++;
        }
        return e6;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> void commonRemove(SparseArrayCompat<E> sparseArrayCompat, int i9) {
        sparseArrayCompat.getClass();
        int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i9);
        if (iBinarySearch >= 0) {
            Object[] objArr = sparseArrayCompat.values;
            Object obj = objArr[iBinarySearch];
            Object obj2 = DELETED;
            if (obj != obj2) {
                objArr[iBinarySearch] = obj2;
                sparseArrayCompat.garbage = true;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> void commonRemoveAt(SparseArrayCompat<E> sparseArrayCompat, int i9) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.values[i9] != access$getDELETED$p()) {
            sparseArrayCompat.values[i9] = access$getDELETED$p();
            sparseArrayCompat.garbage = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> void commonRemoveAtRange(SparseArrayCompat<E> sparseArrayCompat, int i9, int i10) {
        sparseArrayCompat.getClass();
        int iMin = Math.min(i10, i9 + i10);
        while (i9 < iMin) {
            sparseArrayCompat.removeAt(i9);
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> boolean commonReplace(SparseArrayCompat<E> sparseArrayCompat, int i9, E e, E e6) {
        sparseArrayCompat.getClass();
        int iIndexOfKey = sparseArrayCompat.indexOfKey(i9);
        if (iIndexOfKey < 0 || !Intrinsics.areEqual(sparseArrayCompat.values[iIndexOfKey], e)) {
            return false;
        }
        sparseArrayCompat.values[iIndexOfKey] = e6;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> void commonSetValueAt(SparseArrayCompat<E> sparseArrayCompat, int i9, E e) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.garbage) {
            access$gc(sparseArrayCompat);
        }
        sparseArrayCompat.values[i9] = e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> int commonSize(SparseArrayCompat<E> sparseArrayCompat) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.garbage) {
            access$gc(sparseArrayCompat);
        }
        return sparseArrayCompat.size;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> String commonToString(SparseArrayCompat<E> sparseArrayCompat) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(sparseArrayCompat.size * 28);
        sb.append('{');
        int i9 = sparseArrayCompat.size;
        for (int i10 = 0; i10 < i9; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            sb.append(sparseArrayCompat.keyAt(i10));
            sb.append('=');
            E eValueAt = sparseArrayCompat.valueAt(i10);
            if (eValueAt != sparseArrayCompat) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final <E> E commonValueAt(SparseArrayCompat<E> sparseArrayCompat, int i9) {
        sparseArrayCompat.getClass();
        if (sparseArrayCompat.garbage) {
            access$gc(sparseArrayCompat);
        }
        return (E) sparseArrayCompat.values[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final <E> void gc(SparseArrayCompat<E> sparseArrayCompat) {
        int i9 = sparseArrayCompat.size;
        int[] iArr = sparseArrayCompat.keys;
        Object[] objArr = sparseArrayCompat.values;
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            Object obj = objArr[i11];
            if (obj != DELETED) {
                if (i11 != i10) {
                    iArr[i10] = iArr[i11];
                    objArr[i10] = obj;
                    objArr[i11] = null;
                }
                i10++;
            }
        }
        sparseArrayCompat.garbage = false;
        sparseArrayCompat.size = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static final <E, T extends E> T internalGet(SparseArrayCompat<E> sparseArrayCompat, int i9, T t) {
        T t3;
        int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i9);
        return (iBinarySearch < 0 || (t3 = (T) sparseArrayCompat.values[iBinarySearch]) == DELETED) ? t : t3;
    }

    public static final <E> E commonGet(SparseArrayCompat<E> sparseArrayCompat, int i9, E e) {
        E e6;
        sparseArrayCompat.getClass();
        int iBinarySearch = ContainerHelpersKt.binarySearch(sparseArrayCompat.keys, sparseArrayCompat.size, i9);
        return (iBinarySearch < 0 || (e6 = (E) sparseArrayCompat.values[iBinarySearch]) == DELETED) ? e : e6;
    }

    public static final <E> boolean commonRemove(SparseArrayCompat<E> sparseArrayCompat, int i9, Object obj) {
        sparseArrayCompat.getClass();
        int iIndexOfKey = sparseArrayCompat.indexOfKey(i9);
        if (iIndexOfKey < 0 || !Intrinsics.areEqual(obj, sparseArrayCompat.valueAt(iIndexOfKey))) {
            return false;
        }
        sparseArrayCompat.removeAt(iIndexOfKey);
        return true;
    }

    public static final <E> E commonReplace(SparseArrayCompat<E> sparseArrayCompat, int i9, E e) {
        sparseArrayCompat.getClass();
        int iIndexOfKey = sparseArrayCompat.indexOfKey(i9);
        if (iIndexOfKey < 0) {
            return null;
        }
        Object[] objArr = sparseArrayCompat.values;
        E e6 = (E) objArr[iIndexOfKey];
        objArr[iIndexOfKey] = e;
        return e6;
    }
}
