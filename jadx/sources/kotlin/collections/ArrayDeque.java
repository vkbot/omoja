package kotlin.collections;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@SinceKotlin(version = "1.4")
@Metadata(m3158d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \\*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\\B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006B\t\b\u0016¢\u0006\u0004\b\u0005\u0010\u0007B\u0017\b\u0016\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\t¢\u0006\u0004\b\u0005\u0010\nJ\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0004H\u0002J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0016\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u0004H\u0083\b¢\u0006\u0002\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0004H\u0002J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0004H\u0002J\u0011\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0004H\u0083\bJ\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0004H\u0002J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0004H\u0002J\b\u0010!\u001a\u00020\"H\u0016J\u000b\u0010#\u001a\u00028\u0000¢\u0006\u0002\u0010$J\r\u0010%\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010$J\u000b\u0010&\u001a\u00028\u0000¢\u0006\u0002\u0010$J\r\u0010'\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010$J\u0013\u0010(\u001a\u00020\u00152\u0006\u0010)\u001a\u00028\u0000¢\u0006\u0002\u0010*J\u0013\u0010+\u001a\u00020\u00152\u0006\u0010)\u001a\u00028\u0000¢\u0006\u0002\u0010*J\u000b\u0010,\u001a\u00028\u0000¢\u0006\u0002\u0010$J\r\u0010-\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010$J\u000b\u0010.\u001a\u00028\u0000¢\u0006\u0002\u0010$J\r\u0010/\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010$J\u0015\u00100\u001a\u00020\"2\u0006\u0010)\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00101J\u001d\u00100\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010)\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00102J\u001e\u00103\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0002J\u0016\u00104\u001a\u00020\"2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0016J\u001e\u00104\u001a\u00020\"2\u0006\u0010\u001d\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0016J\u0016\u00105\u001a\u00028\u00002\u0006\u0010\u001d\u001a\u00020\u0004H\u0096\u0002¢\u0006\u0002\u0010\u001bJ\u001e\u00106\u001a\u00028\u00002\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010)\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u00107J\u0016\u00108\u001a\u00020\"2\u0006\u0010)\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u00101J\u0015\u00109\u001a\u00020\u00042\u0006\u0010)\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010:J\u0015\u0010;\u001a\u00020\u00042\u0006\u0010)\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010:J\u0015\u0010<\u001a\u00020\"2\u0006\u0010)\u001a\u00028\u0000H\u0016¢\u0006\u0002\u00101J\u0015\u0010=\u001a\u00028\u00002\u0006\u0010\u001d\u001a\u00020\u0004H\u0016¢\u0006\u0002\u0010\u001bJ\u0016\u0010>\u001a\u00020\"2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0016J\u0016\u0010?\u001a\u00020\"2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0016J\u001d\u0010@\u001a\u00020\"2\u0012\u0010A\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\"0BH\u0082\bJ\b\u0010C\u001a\u00020\u0015H\u0016J'\u0010D\u001a\b\u0012\u0004\u0012\u0002HE0\r\"\u0004\b\u0001\u0010E2\f\u0010F\u001a\b\u0012\u0004\u0012\u0002HE0\rH\u0016¢\u0006\u0002\u0010GJ\u0015\u0010D\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rH\u0016¢\u0006\u0002\u0010HJ\u0018\u0010I\u001a\u00020\u00152\u0006\u0010J\u001a\u00020\u00042\u0006\u0010K\u001a\u00020\u0004H\u0014J\u0018\u0010L\u001a\u00020\u00152\u0006\u0010J\u001a\u00020\u00042\u0006\u0010K\u001a\u00020\u0004H\u0002J\u0018\u0010M\u001a\u00020\u00152\u0006\u0010J\u001a\u00020\u00042\u0006\u0010K\u001a\u00020\u0004H\u0002J\u0018\u0010N\u001a\u00020\u00152\u0006\u0010O\u001a\u00020\u00042\u0006\u0010P\u001a\u00020\u0004H\u0002J\b\u0010Q\u001a\u00020\u0015H\u0002J)\u0010R\u001a\b\u0012\u0004\u0012\u0002HE0\r\"\u0004\b\u0001\u0010E2\f\u0010F\u001a\b\u0012\u0004\u0012\u0002HE0\rH\u0000¢\u0006\u0004\bS\u0010GJ\u0017\u0010R\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rH\u0000¢\u0006\u0004\bS\u0010HJ\u001d\u0010T\u001a\u00020\u00152\u0006\u0010J\u001a\u00020\u00042\u0006\u0010K\u001a\u00020\u0004H\u0000¢\u0006\u0002\bUJM\u0010V\u001a\u00020\u00152>\u0010W\u001a:\u0012\u0013\u0012\u00110\u0004¢\u0006\f\bY\u0012\b\bZ\u0012\u0004\b\b(\u000b\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r¢\u0006\f\bY\u0012\b\bZ\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00150XH\u0000¢\u0006\u0002\b[R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\rX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u001e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006]"}, m3159d2 = {"Lkotlin/collections/ArrayDeque;", ExifInterface.LONGITUDE_EAST, "Lkotlin/collections/AbstractMutableList;", "initialCapacity", "", "<init>", "(I)V", "()V", "elements", "", "(Ljava/util/Collection;)V", "head", "elementData", "", "", "[Ljava/lang/Object;", "value", "size", "getSize", "()I", "ensureCapacity", "", "minCapacity", "copyElements", "newCapacity", "internalGet", "internalIndex", "(I)Ljava/lang/Object;", "positiveMod", "index", "negativeMod", "incremented", "decremented", "isEmpty", "", "first", "()Ljava/lang/Object;", "firstOrNull", "last", "lastOrNull", "addFirst", "element", "(Ljava/lang/Object;)V", "addLast", "removeFirst", "removeFirstOrNull", "removeLast", "removeLastOrNull", "add", "(Ljava/lang/Object;)Z", "(ILjava/lang/Object;)V", "copyCollectionElements", "addAll", "get", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "contains", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "remove", "removeAt", "removeAll", "retainAll", "filterInPlace", "predicate", "Lkotlin/Function1;", "clear", "toArray", ExifInterface.GPS_DIRECTION_TRUE, "array", "([Ljava/lang/Object;)[Ljava/lang/Object;", "()[Ljava/lang/Object;", "removeRange", "fromIndex", "toIndex", "removeRangeShiftPreceding", "removeRangeShiftSucceeding", "nullifyNonEmpty", "internalFromIndex", "internalToIndex", "registerModification", "testToArray", "testToArray$kotlin_stdlib", "testRemoveRange", "testRemoveRange$kotlin_stdlib", "internalStructure", "structure", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "internalStructure$kotlin_stdlib", "Companion", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
@SourceDebugExtension({"SMAP\nArrayDeque.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,660:1\n476#1,53:665\n476#1,53:718\n37#2:661\n36#2,3:662\n*S KotlinDebug\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n*L\n471#1:665,53\n473#1:718,53\n46#1:661\n46#1:662,3\n*E\n"})
public final class ArrayDeque<E> extends AbstractMutableList<E> {
    private static final int defaultMinCapacity = 10;
    private Object[] elementData;
    private int head;
    private int size;
    private static final Object[] emptyElementData = new Object[0];

    public ArrayDeque(int i10) {
        Object[] objArr;
        if (i10 == 0) {
            objArr = emptyElementData;
        } else {
            if (i10 <= 0) {
                C1929i.m3029k(AbstractC0074a.m154e(i10, "Illegal Capacity: "));
                throw null;
            }
            objArr = new Object[i10];
        }
        this.elementData = objArr;
    }

    private final void copyCollectionElements(int internalIndex, Collection<? extends E> elements) {
        Iterator<? extends E> it = elements.iterator();
        int length = this.elementData.length;
        while (internalIndex < length && it.hasNext()) {
            this.elementData[internalIndex] = it.next();
            internalIndex++;
        }
        int i10 = this.head;
        for (int i11 = 0; i11 < i10 && it.hasNext(); i11++) {
            this.elementData[i11] = it.next();
        }
        this.size = elements.size() + size();
    }

    private final void copyElements(int newCapacity) {
        Object[] objArr = new Object[newCapacity];
        Object[] objArr2 = this.elementData;
        ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr, 0, this.head, objArr2.length);
        Object[] objArr3 = this.elementData;
        int length = objArr3.length;
        int i10 = this.head;
        ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr, length - i10, 0, i10);
        this.head = 0;
        this.elementData = objArr;
    }

    private final int decremented(int index) {
        return index == 0 ? ArraysKt___ArraysKt.getLastIndex(this.elementData) : index - 1;
    }

    private final void ensureCapacity(int minCapacity) {
        if (minCapacity < 0) {
            C1929i.m3030l("Deque is too big.");
            return;
        }
        Object[] objArr = this.elementData;
        if (minCapacity <= objArr.length) {
            return;
        }
        if (objArr == emptyElementData) {
            this.elementData = new Object[RangesKt.coerceAtLeast(minCapacity, 10)];
        } else {
            copyElements(AbstractList.INSTANCE.newCapacity$kotlin_stdlib(objArr.length, minCapacity));
        }
    }

    private final boolean filterInPlace(Function1<? super E, Boolean> predicate) {
        int iPositiveMod;
        Object[] objArr;
        boolean z9 = false;
        z9 = false;
        z9 = false;
        if (!isEmpty() && this.elementData.length != 0) {
            int iPositiveMod2 = positiveMod(size() + this.head);
            int i10 = this.head;
            if (i10 < iPositiveMod2) {
                iPositiveMod = i10;
                while (true) {
                    objArr = this.elementData;
                    if (i10 >= iPositiveMod2) {
                        break;
                    }
                    Object obj = objArr[i10];
                    if (predicate.invoke(obj).booleanValue()) {
                        this.elementData[iPositiveMod] = obj;
                        iPositiveMod++;
                    } else {
                        z9 = true;
                    }
                    i10++;
                }
                ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, iPositiveMod, iPositiveMod2);
            } else {
                int length = this.elementData.length;
                boolean z10 = false;
                int i11 = i10;
                while (i10 < length) {
                    Object[] objArr2 = this.elementData;
                    Object obj2 = objArr2[i10];
                    objArr2[i10] = null;
                    if (predicate.invoke(obj2).booleanValue()) {
                        this.elementData[i11] = obj2;
                        i11++;
                    } else {
                        z10 = true;
                    }
                    i10++;
                }
                iPositiveMod = positiveMod(i11);
                for (int i12 = 0; i12 < iPositiveMod2; i12++) {
                    Object[] objArr3 = this.elementData;
                    Object obj3 = objArr3[i12];
                    objArr3[i12] = null;
                    if (predicate.invoke(obj3).booleanValue()) {
                        this.elementData[iPositiveMod] = obj3;
                        iPositiveMod = incremented(iPositiveMod);
                    } else {
                        z10 = true;
                    }
                }
                z9 = z10;
            }
            if (z9) {
                registerModification();
                this.size = negativeMod(iPositiveMod - this.head);
            }
        }
        return z9;
    }

    private final int incremented(int index) {
        if (index == ArraysKt___ArraysKt.getLastIndex(this.elementData)) {
            return 0;
        }
        return index + 1;
    }

    @InlineOnly
    private final E internalGet(int internalIndex) {
        return (E) this.elementData[internalIndex];
    }

    @InlineOnly
    private final int internalIndex(int index) {
        return positiveMod(this.head + index);
    }

    private final int negativeMod(int index) {
        return index < 0 ? index + this.elementData.length : index;
    }

    private final void nullifyNonEmpty(int internalFromIndex, int internalToIndex) {
        Object[] objArr = this.elementData;
        if (internalFromIndex < internalToIndex) {
            ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, internalFromIndex, internalToIndex);
        } else {
            ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, internalFromIndex, objArr.length);
            ArraysKt___ArraysJvmKt.fill(this.elementData, (Object) null, 0, internalToIndex);
        }
    }

    private final int positiveMod(int index) {
        Object[] objArr = this.elementData;
        return index >= objArr.length ? index - objArr.length : index;
    }

    private final void registerModification() {
        ((java.util.AbstractList) this).modCount++;
    }

    private final void removeRangeShiftPreceding(int fromIndex, int toIndex) {
        int iPositiveMod = positiveMod(this.head + (fromIndex - 1));
        int iPositiveMod2 = positiveMod(this.head + (toIndex - 1));
        while (fromIndex > 0) {
            int i10 = iPositiveMod + 1;
            int iMin = Math.min(fromIndex, Math.min(i10, iPositiveMod2 + 1));
            Object[] objArr = this.elementData;
            int i11 = iPositiveMod2 - iMin;
            int i12 = iPositiveMod - iMin;
            ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i11 + 1, i12 + 1, i10);
            iPositiveMod = negativeMod(i12);
            iPositiveMod2 = negativeMod(i11);
            fromIndex -= iMin;
        }
    }

    private final void removeRangeShiftSucceeding(int fromIndex, int toIndex) {
        int iPositiveMod = positiveMod(this.head + toIndex);
        int iPositiveMod2 = positiveMod(this.head + fromIndex);
        int size = size();
        while (true) {
            size -= toIndex;
            if (size <= 0) {
                return;
            }
            Object[] objArr = this.elementData;
            toIndex = Math.min(size, Math.min(objArr.length - iPositiveMod, objArr.length - iPositiveMod2));
            Object[] objArr2 = this.elementData;
            int i10 = iPositiveMod + toIndex;
            ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, iPositiveMod2, iPositiveMod, i10);
            iPositiveMod = positiveMod(i10);
            iPositiveMod2 = positiveMod(iPositiveMod2 + toIndex);
        }
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public void add(int index, E element) {
        AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, size());
        if (index == size()) {
            addLast(element);
            return;
        }
        if (index == 0) {
            addFirst(element);
            return;
        }
        registerModification();
        ensureCapacity(size() + 1);
        int iPositiveMod = positiveMod(this.head + index);
        if (index < ((size() + 1) >> 1)) {
            int iDecremented = decremented(iPositiveMod);
            int iDecremented2 = decremented(this.head);
            int i10 = this.head;
            Object[] objArr = this.elementData;
            if (iDecremented >= i10) {
                objArr[iDecremented2] = objArr[i10];
                ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i10, i10 + 1, iDecremented + 1);
            } else {
                ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i10 - 1, i10, objArr.length);
                Object[] objArr2 = this.elementData;
                objArr2[objArr2.length - 1] = objArr2[0];
                ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, 0, 1, iDecremented + 1);
            }
            this.elementData[iDecremented] = element;
            this.head = iDecremented2;
        } else {
            int iPositiveMod2 = positiveMod(size() + this.head);
            Object[] objArr3 = this.elementData;
            if (iPositiveMod < iPositiveMod2) {
                ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, iPositiveMod + 1, iPositiveMod, iPositiveMod2);
            } else {
                ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, 1, 0, iPositiveMod2);
                Object[] objArr4 = this.elementData;
                objArr4[0] = objArr4[objArr4.length - 1];
                ArraysKt___ArraysJvmKt.copyInto(objArr4, objArr4, iPositiveMod + 1, iPositiveMod, objArr4.length - 1);
            }
            this.elementData[iPositiveMod] = element;
        }
        this.size = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, Collection<? extends E> elements) {
        elements.getClass();
        AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (index == size()) {
            return addAll(elements);
        }
        registerModification();
        ensureCapacity(elements.size() + size());
        int iPositiveMod = positiveMod(size() + this.head);
        int iPositiveMod2 = positiveMod(this.head + index);
        int size = elements.size();
        if (index < ((size() + 1) >> 1)) {
            int i10 = this.head;
            int length = i10 - size;
            if (iPositiveMod2 >= i10) {
                Object[] objArr = this.elementData;
                if (length >= 0) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, length, i10, iPositiveMod2);
                } else {
                    length += objArr.length;
                    int i11 = iPositiveMod2 - i10;
                    int length2 = objArr.length - length;
                    if (length2 >= i11) {
                        ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, length, i10, iPositiveMod2);
                    } else {
                        ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, length, i10, i10 + length2);
                        Object[] objArr2 = this.elementData;
                        ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, 0, this.head + length2, iPositiveMod2);
                    }
                }
            } else {
                Object[] objArr3 = this.elementData;
                ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, length, i10, objArr3.length);
                Object[] objArr4 = this.elementData;
                if (size >= iPositiveMod2) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr4, objArr4, objArr4.length - size, 0, iPositiveMod2);
                } else {
                    ArraysKt___ArraysJvmKt.copyInto(objArr4, objArr4, objArr4.length - size, 0, size);
                    Object[] objArr5 = this.elementData;
                    ArraysKt___ArraysJvmKt.copyInto(objArr5, objArr5, 0, size, iPositiveMod2);
                }
            }
            this.head = length;
            copyCollectionElements(negativeMod(iPositiveMod2 - size), elements);
        } else {
            int i12 = iPositiveMod2 + size;
            Object[] objArr6 = this.elementData;
            if (iPositiveMod2 < iPositiveMod) {
                int i13 = size + iPositiveMod;
                if (i13 <= objArr6.length) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, i12, iPositiveMod2, iPositiveMod);
                } else if (i12 >= objArr6.length) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, i12 - objArr6.length, iPositiveMod2, iPositiveMod);
                } else {
                    int length3 = iPositiveMod - (i13 - objArr6.length);
                    ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, 0, length3, iPositiveMod);
                    Object[] objArr7 = this.elementData;
                    ArraysKt___ArraysJvmKt.copyInto(objArr7, objArr7, i12, iPositiveMod2, length3);
                }
            } else {
                ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, size, 0, iPositiveMod);
                Object[] objArr8 = this.elementData;
                if (i12 >= objArr8.length) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr8, objArr8, i12 - objArr8.length, iPositiveMod2, objArr8.length);
                } else {
                    ArraysKt___ArraysJvmKt.copyInto(objArr8, objArr8, 0, objArr8.length - size, objArr8.length);
                    Object[] objArr9 = this.elementData;
                    ArraysKt___ArraysJvmKt.copyInto(objArr9, objArr9, i12, iPositiveMod2, objArr9.length - size);
                }
            }
            copyCollectionElements(iPositiveMod2, elements);
        }
        return true;
    }

    public final void addFirst(E element) {
        registerModification();
        ensureCapacity(size() + 1);
        int iDecremented = decremented(this.head);
        this.head = iDecremented;
        this.elementData[iDecremented] = element;
        this.size = size() + 1;
    }

    public final void addLast(E element) {
        registerModification();
        ensureCapacity(size() + 1);
        this.elementData[positiveMod(size() + this.head)] = element;
        this.size = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (!isEmpty()) {
            registerModification();
            nullifyNonEmpty(this.head, positiveMod(size() + this.head));
        }
        this.head = 0;
        this.size = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object element) {
        return indexOf(element) != -1;
    }

    public final E first() {
        if (!isEmpty()) {
            return (E) this.elementData[this.head];
        }
        C1929i.m3025g("ArrayDeque is empty.");
        return null;
    }

    public final E firstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.elementData[this.head];
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int index) {
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, size());
        return (E) this.elementData[positiveMod(this.head + index)];
    }

    @Override // kotlin.collections.AbstractMutableList
    public int getSize() {
        return this.size;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        int i10;
        int iPositiveMod = positiveMod(size() + this.head);
        int length = this.head;
        if (length < iPositiveMod) {
            while (length < iPositiveMod) {
                if (Intrinsics.areEqual(element, this.elementData[length])) {
                    i10 = this.head;
                } else {
                    length++;
                }
            }
            return -1;
        }
        if (length < iPositiveMod) {
            return -1;
        }
        int length2 = this.elementData.length;
        while (length < length2) {
            if (Intrinsics.areEqual(element, this.elementData[length])) {
                i10 = this.head;
            } else {
                length++;
            }
        }
        for (int i11 = 0; i11 < iPositiveMod; i11++) {
            if (Intrinsics.areEqual(element, this.elementData[i11])) {
                length = i11 + this.elementData.length;
                i10 = this.head;
            }
        }
        return -1;
        return length - i10;
    }

    public final void internalStructure$kotlin_stdlib(Function2<? super Integer, ? super Object[], Unit> structure) {
        int i10;
        structure.getClass();
        structure.invoke(Integer.valueOf((isEmpty() || (i10 = this.head) < positiveMod(size() + this.head)) ? this.head : i10 - this.elementData.length), toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return size() == 0;
    }

    public final E last() {
        if (!isEmpty()) {
            return (E) this.elementData[positiveMod(this.head + CollectionsKt__CollectionsKt.getLastIndex(this))];
        }
        C1929i.m3025g("ArrayDeque is empty.");
        return null;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object element) {
        Object[] objArr;
        int lastIndex;
        int i10;
        int iPositiveMod = positiveMod(size() + this.head);
        int i11 = this.head;
        if (i11 < iPositiveMod) {
            lastIndex = iPositiveMod - 1;
            if (i11 <= lastIndex) {
                while (!Intrinsics.areEqual(element, this.elementData[lastIndex])) {
                    if (lastIndex != i11) {
                        lastIndex--;
                    }
                }
                i10 = this.head;
                return lastIndex - i10;
            }
            return -1;
        }
        if (i11 > iPositiveMod) {
            do {
                iPositiveMod--;
                objArr = this.elementData;
                if (-1 >= iPositiveMod) {
                    lastIndex = ArraysKt___ArraysKt.getLastIndex(objArr);
                    int i12 = this.head;
                    if (i12 <= lastIndex) {
                        while (!Intrinsics.areEqual(element, this.elementData[lastIndex])) {
                            if (lastIndex != i12) {
                                lastIndex--;
                            }
                        }
                        i10 = this.head;
                    }
                }
                return lastIndex - i10;
            } while (!Intrinsics.areEqual(element, objArr[iPositiveMod]));
            lastIndex = iPositiveMod + this.elementData.length;
            i10 = this.head;
            return lastIndex - i10;
        }
        return -1;
    }

    public final E lastOrNull() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.elementData[positiveMod(this.head + CollectionsKt__CollectionsKt.getLastIndex(this))];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object element) {
        int iIndexOf = indexOf(element);
        if (iIndexOf == -1) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> elements) {
        int iPositiveMod;
        Object[] objArr;
        elements.getClass();
        boolean z9 = false;
        z9 = false;
        z9 = false;
        if (!isEmpty() && this.elementData.length != 0) {
            int iPositiveMod2 = positiveMod(size() + this.head);
            int i10 = this.head;
            if (i10 < iPositiveMod2) {
                iPositiveMod = i10;
                while (true) {
                    objArr = this.elementData;
                    if (i10 >= iPositiveMod2) {
                        break;
                    }
                    Object obj = objArr[i10];
                    if (elements.contains(obj)) {
                        z9 = true;
                    } else {
                        this.elementData[iPositiveMod] = obj;
                        iPositiveMod++;
                    }
                    i10++;
                }
                ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, iPositiveMod, iPositiveMod2);
            } else {
                int length = this.elementData.length;
                boolean z10 = false;
                int i11 = i10;
                while (i10 < length) {
                    Object[] objArr2 = this.elementData;
                    Object obj2 = objArr2[i10];
                    objArr2[i10] = null;
                    if (elements.contains(obj2)) {
                        z10 = true;
                    } else {
                        this.elementData[i11] = obj2;
                        i11++;
                    }
                    i10++;
                }
                iPositiveMod = positiveMod(i11);
                for (int i12 = 0; i12 < iPositiveMod2; i12++) {
                    Object[] objArr3 = this.elementData;
                    Object obj3 = objArr3[i12];
                    objArr3[i12] = null;
                    if (elements.contains(obj3)) {
                        z10 = true;
                    } else {
                        this.elementData[iPositiveMod] = obj3;
                        iPositiveMod = incremented(iPositiveMod);
                    }
                }
                z9 = z10;
            }
            if (z9) {
                registerModification();
                this.size = negativeMod(iPositiveMod - this.head);
            }
        }
        return z9;
    }

    @Override // kotlin.collections.AbstractMutableList
    public E removeAt(int index) {
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, size());
        if (index == CollectionsKt__CollectionsKt.getLastIndex(this)) {
            return removeLast();
        }
        if (index == 0) {
            return removeFirst();
        }
        registerModification();
        int iPositiveMod = positiveMod(this.head + index);
        E e = (E) this.elementData[iPositiveMod];
        int size = size() >> 1;
        int i10 = this.head;
        if (index < size) {
            Object[] objArr = this.elementData;
            if (iPositiveMod >= i10) {
                ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i10 + 1, i10, iPositiveMod);
            } else {
                ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, 1, 0, iPositiveMod);
                Object[] objArr2 = this.elementData;
                objArr2[0] = objArr2[objArr2.length - 1];
                int i11 = this.head;
                ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, i11 + 1, i11, objArr2.length - 1);
            }
            Object[] objArr3 = this.elementData;
            int i12 = this.head;
            objArr3[i12] = null;
            this.head = incremented(i12);
        } else {
            int iPositiveMod2 = positiveMod(i10 + CollectionsKt__CollectionsKt.getLastIndex(this));
            Object[] objArr4 = this.elementData;
            if (iPositiveMod <= iPositiveMod2) {
                ArraysKt___ArraysJvmKt.copyInto(objArr4, objArr4, iPositiveMod, iPositiveMod + 1, iPositiveMod2 + 1);
            } else {
                ArraysKt___ArraysJvmKt.copyInto(objArr4, objArr4, iPositiveMod, iPositiveMod + 1, objArr4.length);
                Object[] objArr5 = this.elementData;
                objArr5[objArr5.length - 1] = objArr5[0];
                ArraysKt___ArraysJvmKt.copyInto(objArr5, objArr5, 0, 1, iPositiveMod2 + 1);
            }
            this.elementData[iPositiveMod2] = null;
        }
        this.size = size() - 1;
        return e;
    }

    public final E removeFirst() {
        if (isEmpty()) {
            C1929i.m3025g("ArrayDeque is empty.");
            return null;
        }
        registerModification();
        Object[] objArr = this.elementData;
        int i10 = this.head;
        E e = (E) objArr[i10];
        objArr[i10] = null;
        this.head = incremented(i10);
        this.size = size() - 1;
        return e;
    }

    public final E removeFirstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    public final E removeLast() {
        if (isEmpty()) {
            C1929i.m3025g("ArrayDeque is empty.");
            return null;
        }
        registerModification();
        int iPositiveMod = positiveMod(this.head + CollectionsKt__CollectionsKt.getLastIndex(this));
        Object[] objArr = this.elementData;
        E e = (E) objArr[iPositiveMod];
        objArr[iPositiveMod] = null;
        this.size = size() - 1;
        return e;
    }

    public final E removeLastOrNull() {
        if (isEmpty()) {
            return null;
        }
        return removeLast();
    }

    @Override // java.util.AbstractList
    public void removeRange(int fromIndex, int toIndex) {
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(fromIndex, toIndex, size());
        int i10 = toIndex - fromIndex;
        if (i10 == 0) {
            return;
        }
        if (i10 == size()) {
            clear();
            return;
        }
        if (i10 == 1) {
            removeAt(fromIndex);
            return;
        }
        registerModification();
        if (fromIndex < size() - toIndex) {
            removeRangeShiftPreceding(fromIndex, toIndex);
            int iPositiveMod = positiveMod(this.head + i10);
            nullifyNonEmpty(this.head, iPositiveMod);
            this.head = iPositiveMod;
        } else {
            removeRangeShiftSucceeding(fromIndex, toIndex);
            int iPositiveMod2 = positiveMod(size() + this.head);
            nullifyNonEmpty(negativeMod(iPositiveMod2 - i10), iPositiveMod2);
        }
        this.size = size() - i10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<?> elements) {
        int iPositiveMod;
        Object[] objArr;
        elements.getClass();
        boolean z9 = false;
        z9 = false;
        z9 = false;
        if (!isEmpty() && this.elementData.length != 0) {
            int iPositiveMod2 = positiveMod(size() + this.head);
            int i10 = this.head;
            if (i10 < iPositiveMod2) {
                iPositiveMod = i10;
                while (true) {
                    objArr = this.elementData;
                    if (i10 >= iPositiveMod2) {
                        break;
                    }
                    Object obj = objArr[i10];
                    if (elements.contains(obj)) {
                        this.elementData[iPositiveMod] = obj;
                        iPositiveMod++;
                    } else {
                        z9 = true;
                    }
                    i10++;
                }
                ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, iPositiveMod, iPositiveMod2);
            } else {
                int length = this.elementData.length;
                boolean z10 = false;
                int i11 = i10;
                while (i10 < length) {
                    Object[] objArr2 = this.elementData;
                    Object obj2 = objArr2[i10];
                    objArr2[i10] = null;
                    if (elements.contains(obj2)) {
                        this.elementData[i11] = obj2;
                        i11++;
                    } else {
                        z10 = true;
                    }
                    i10++;
                }
                iPositiveMod = positiveMod(i11);
                for (int i12 = 0; i12 < iPositiveMod2; i12++) {
                    Object[] objArr3 = this.elementData;
                    Object obj3 = objArr3[i12];
                    objArr3[i12] = null;
                    if (elements.contains(obj3)) {
                        this.elementData[iPositiveMod] = obj3;
                        iPositiveMod = incremented(iPositiveMod);
                    } else {
                        z10 = true;
                    }
                }
                z9 = z10;
            }
            if (z9) {
                registerModification();
                this.size = negativeMod(iPositiveMod - this.head);
            }
        }
        return z9;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public E set(int index, E element) {
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, size());
        int iPositiveMod = positiveMod(this.head + index);
        Object[] objArr = this.elementData;
        E e = (E) objArr[iPositiveMod];
        objArr[iPositiveMod] = element;
        return e;
    }

    public final void testRemoveRange$kotlin_stdlib(int fromIndex, int toIndex) {
        removeRange(fromIndex, toIndex);
    }

    public final <T> T[] testToArray$kotlin_stdlib(T[] array) {
        array.getClass();
        return (T[]) toArray(array);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] array) {
        array.getClass();
        if (array.length < size()) {
            array = (T[]) ArraysKt__ArraysJVMKt.arrayOfNulls(array, size());
        }
        T[] tArr = array;
        int iPositiveMod = positiveMod(size() + this.head);
        int i10 = this.head;
        if (i10 < iPositiveMod) {
            ArraysKt___ArraysJvmKt.copyInto$default(this.elementData, tArr, 0, i10, iPositiveMod, 2, (Object) null);
        } else if (!isEmpty()) {
            Object[] objArr = this.elementData;
            ArraysKt___ArraysJvmKt.copyInto(objArr, tArr, 0, this.head, objArr.length);
            Object[] objArr2 = this.elementData;
            ArraysKt___ArraysJvmKt.copyInto(objArr2, tArr, objArr2.length - this.head, 0, iPositiveMod);
        }
        return (T[]) CollectionsKt__CollectionsJVMKt.terminateCollectionToArray(size(), tArr);
    }

    public final Object[] testToArray$kotlin_stdlib() {
        return toArray();
    }

    public ArrayDeque() {
        this.elementData = emptyElementData;
    }

    public ArrayDeque(Collection<? extends E> collection) {
        collection.getClass();
        Object[] array = collection.toArray(new Object[0]);
        this.elementData = array;
        this.size = array.length;
        if (array.length == 0) {
            this.elementData = emptyElementData;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E element) {
        addLast(element);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> elements) {
        elements.getClass();
        if (elements.isEmpty()) {
            return false;
        }
        registerModification();
        ensureCapacity(elements.size() + size());
        copyCollectionElements(positiveMod(size() + this.head), elements);
        return true;
    }
}
