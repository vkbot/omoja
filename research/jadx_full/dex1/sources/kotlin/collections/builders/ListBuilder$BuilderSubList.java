package kotlin.collections.builders;

import ai.onnxruntime.b;
import androidx.constraintlayout.core.motion.utils.TypedValues$CycleType;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import androidx.exifinterface.media.ExifInterface;
import java.io.InvalidObjectException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010)\n\u0000\n\u0002\u0010+\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\b\u0011\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\f\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u00042\b\u0012\u0004\u0012\u0002H\u00010\u00052\u00060\u0006j\u0002`\u0007:\u0001TBC\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0000\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\u0016\u0010\u001e\u001a\u00028\u00012\u0006\u0010\u001f\u001a\u00020\u000bH\u0096\u0002¢\u0006\u0002\u0010 J\u001e\u0010!\u001a\u00028\u00012\u0006\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00028\u0001H\u0096\u0002¢\u0006\u0002\u0010#J\u0015\u0010$\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010%J\u0015\u0010&\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010%J\u000f\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00010(H\u0096\u0002J\u000e\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00010*H\u0016J\u0016\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00010*2\u0006\u0010\u001f\u001a\u00020\u000bH\u0016J\u0015\u0010+\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010,J\u001d\u0010+\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010-J\u0016\u0010.\u001a\u00020\u001d2\f\u0010/\u001a\b\u0012\u0004\u0012\u00028\u000100H\u0016J\u001e\u0010.\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u000b2\f\u0010/\u001a\b\u0012\u0004\u0012\u00028\u000100H\u0016J\b\u00101\u001a\u00020\u0016H\u0016J\u0015\u00102\u001a\u00028\u00012\u0006\u0010\u001f\u001a\u00020\u000bH\u0016¢\u0006\u0002\u0010 J\u0015\u00103\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010,J\u0016\u00104\u001a\u00020\u001d2\f\u0010/\u001a\b\u0012\u0004\u0012\u00028\u000100H\u0016J\u0016\u00105\u001a\u00020\u001d2\f\u0010/\u001a\b\u0012\u0004\u0012\u00028\u000100H\u0016J\u001e\u00106\u001a\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u00107\u001a\u00020\u000b2\u0006\u00108\u001a\u00020\u000bH\u0016J'\u00109\u001a\b\u0012\u0004\u0012\u0002H:0\t\"\u0004\b\u0002\u0010:2\f\u0010;\u001a\b\u0012\u0004\u0012\u0002H:0\tH\u0016¢\u0006\u0002\u0010<J\u0015\u00109\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\tH\u0016¢\u0006\u0002\u0010=J\u0013\u0010>\u001a\u00020\u001d2\b\u0010?\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010@\u001a\u00020\u000bH\u0016J\b\u0010A\u001a\u00020BH\u0016J\b\u0010C\u001a\u00020\u0016H\u0002J\b\u0010D\u001a\u00020\u0016H\u0002J\b\u0010E\u001a\u00020\u0016H\u0002J\u0014\u0010H\u001a\u00020\u001d2\n\u0010?\u001a\u0006\u0012\u0002\b\u00030IH\u0002J\u001d\u0010J\u001a\u00020\u00162\u0006\u0010K\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00028\u0001H\u0002¢\u0006\u0002\u0010-J&\u0010L\u001a\u00020\u00162\u0006\u0010K\u001a\u00020\u000b2\f\u0010/\u001a\b\u0012\u0004\u0012\u00028\u0001002\u0006\u0010M\u001a\u00020\u000bH\u0002J\u0015\u0010N\u001a\u00028\u00012\u0006\u0010K\u001a\u00020\u000bH\u0002¢\u0006\u0002\u0010 J\u0018\u0010O\u001a\u00020\u00162\u0006\u0010P\u001a\u00020\u000b2\u0006\u0010Q\u001a\u00020\u000bH\u0002J.\u0010R\u001a\u00020\u000b2\u0006\u0010P\u001a\u00020\u000b2\u0006\u0010Q\u001a\u00020\u000b2\f\u0010/\u001a\b\u0012\u0004\u0012\u00028\u0001002\u0006\u0010S\u001a\u00020\u001dH\u0002R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0012R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010F\u001a\u00020\u001d8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bF\u0010G¨\u0006U"}, d2 = {"Lkotlin/collections/builders/ListBuilder$BuilderSubList;", ExifInterface.LONGITUDE_EAST, "", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "Lkotlin/collections/AbstractMutableList;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "backing", "", TypedValues$CycleType.S_WAVE_OFFSET, "", "length", "parent", "root", "Lkotlin/collections/builders/ListBuilder;", "<init>", "([Ljava/lang/Object;IILkotlin/collections/builders/ListBuilder$BuilderSubList;Lkotlin/collections/builders/ListBuilder;)V", "[Ljava/lang/Object;", "writeReplace", "", "readObject", "", "input", "Ljava/io/ObjectInputStream;", "size", "getSize", "()I", "isEmpty", "", "get", "index", "(I)Ljava/lang/Object;", "set", "element", "(ILjava/lang/Object;)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "iterator", "", "listIterator", "", "add", "(Ljava/lang/Object;)Z", "(ILjava/lang/Object;)V", "addAll", "elements", "", "clear", "removeAt", "remove", "removeAll", "retainAll", "subList", "fromIndex", "toIndex", "toArray", ExifInterface.GPS_DIRECTION_TRUE, "array", "([Ljava/lang/Object;)[Ljava/lang/Object;", "()[Ljava/lang/Object;", "equals", "other", "hashCode", "toString", "", "registerModification", "checkForComodification", "checkIsMutable", "isReadOnly", "()Z", "contentEquals", "", "addAtInternal", "i", "addAllInternal", "n", "removeAtInternal", "removeRangeInternal", "rangeOffset", "rangeLength", "retainOrRemoveAllInternal", "retain", "Itr", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
public final class ListBuilder$BuilderSubList<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, Serializable, KMutableList {
    private E[] backing;
    private int length;
    private final int offset;
    private final ListBuilder$BuilderSubList<E> parent;
    private final ListBuilder<E> root;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ListBuilder$BuilderSubList(E[] eArr, int i9, int i10, ListBuilder$BuilderSubList<E> listBuilder$BuilderSubList, ListBuilder<E> listBuilder) {
        eArr.getClass();
        listBuilder.getClass();
        this.backing = eArr;
        this.offset = i9;
        this.length = i10;
        this.parent = listBuilder$BuilderSubList;
        this.root = listBuilder;
        ((AbstractList) this).modCount = ListBuilder.m562access$getModCount$p$s2084097795(listBuilder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ Object[] access$getBacking$p(ListBuilder$BuilderSubList listBuilder$BuilderSubList) {
        return listBuilder$BuilderSubList.backing;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ int access$getLength$p(ListBuilder$BuilderSubList listBuilder$BuilderSubList) {
        return listBuilder$BuilderSubList.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ int access$getModCount$p$s1462993667(ListBuilder$BuilderSubList listBuilder$BuilderSubList) {
        return ((AbstractList) listBuilder$BuilderSubList).modCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ int access$getOffset$p(ListBuilder$BuilderSubList listBuilder$BuilderSubList) {
        return listBuilder$BuilderSubList.offset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ ListBuilder access$getRoot$p(ListBuilder$BuilderSubList listBuilder$BuilderSubList) {
        return listBuilder$BuilderSubList.root;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void addAllInternal(int i9, Collection<? extends E> elements, int n9) {
        registerModification();
        ListBuilder$BuilderSubList<E> listBuilder$BuilderSubList = this.parent;
        if (listBuilder$BuilderSubList != null) {
            listBuilder$BuilderSubList.addAllInternal(i9, elements, n9);
        } else {
            ListBuilder.access$addAllInternal(this.root, i9, elements, n9);
        }
        this.backing = (E[]) ListBuilder.access$getBacking$p(this.root);
        this.length += n9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void addAtInternal(int i9, E element) {
        registerModification();
        ListBuilder$BuilderSubList<E> listBuilder$BuilderSubList = this.parent;
        if (listBuilder$BuilderSubList != null) {
            listBuilder$BuilderSubList.addAtInternal(i9, element);
        } else {
            ListBuilder.access$addAtInternal(this.root, i9, element);
        }
        this.backing = (E[]) ListBuilder.access$getBacking$p(this.root);
        this.length++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void checkForComodification() {
        if (ListBuilder.m562access$getModCount$p$s2084097795(this.root) == ((AbstractList) this).modCount) {
            return;
        }
        b.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void checkIsMutable() {
        if (isReadOnly()) {
            androidx.navigation.b.a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean contentEquals(List<?> other) {
        return ListBuilderKt.access$subarrayContentEquals(this.backing, this.offset, this.length, other);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final boolean isReadOnly() {
        return ListBuilder.access$isReadOnly$p(this.root);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void readObject(ObjectInputStream input) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void registerModification() {
        ((AbstractList) this).modCount++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final E removeAtInternal(int i9) {
        registerModification();
        ListBuilder$BuilderSubList<E> listBuilder$BuilderSubList = this.parent;
        E eRemoveAtInternal = listBuilder$BuilderSubList != null ? listBuilder$BuilderSubList.removeAtInternal(i9) : (E) ListBuilder.access$removeAtInternal(this.root, i9);
        this.length--;
        return eRemoveAtInternal;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void removeRangeInternal(int rangeOffset, int rangeLength) {
        if (rangeLength > 0) {
            registerModification();
        }
        ListBuilder$BuilderSubList<E> listBuilder$BuilderSubList = this.parent;
        if (listBuilder$BuilderSubList != null) {
            listBuilder$BuilderSubList.removeRangeInternal(rangeOffset, rangeLength);
        } else {
            ListBuilder.access$removeRangeInternal(this.root, rangeOffset, rangeLength);
        }
        this.length -= rangeLength;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int retainOrRemoveAllInternal(int rangeOffset, int rangeLength, Collection<? extends E> elements, boolean retain) {
        ListBuilder$BuilderSubList<E> listBuilder$BuilderSubList = this.parent;
        int iRetainOrRemoveAllInternal = listBuilder$BuilderSubList != null ? listBuilder$BuilderSubList.retainOrRemoveAllInternal(rangeOffset, rangeLength, elements, retain) : ListBuilder.access$retainOrRemoveAllInternal(this.root, rangeOffset, rangeLength, elements, retain);
        if (iRetainOrRemoveAllInternal > 0) {
            registerModification();
        }
        this.length -= iRetainOrRemoveAllInternal;
        return iRetainOrRemoveAllInternal;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final Object writeReplace() throws NotSerializableException {
        if (isReadOnly()) {
            return new SerializedCollection(this, 0);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public void add(int index, E element) {
        checkIsMutable();
        checkForComodification();
        kotlin.collections.AbstractList.Companion.checkPositionIndex$kotlin_stdlib(index, this.length);
        addAtInternal(this.offset + index, element);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, Collection<? extends E> elements) {
        elements.getClass();
        checkIsMutable();
        checkForComodification();
        kotlin.collections.AbstractList.Companion.checkPositionIndex$kotlin_stdlib(index, this.length);
        int size = elements.size();
        addAllInternal(this.offset + index, elements, size);
        return size > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        checkIsMutable();
        checkForComodification();
        removeRangeInternal(this.offset, this.length);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object other) {
        checkForComodification();
        if (other != this) {
            return (other instanceof List) && contentEquals((List) other);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.List
    public E get(int index) {
        checkForComodification();
        kotlin.collections.AbstractList.Companion.checkElementIndex$kotlin_stdlib(index, this.length);
        return this.backing[this.offset + index];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.collections.AbstractMutableList
    /* JADX INFO: renamed from: getSize */
    public int getLength() {
        checkForComodification();
        return this.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        checkForComodification();
        return ListBuilderKt.access$subarrayContentHashCode(this.backing, this.offset, this.length);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        checkForComodification();
        for (int i9 = 0; i9 < this.length; i9++) {
            if (Intrinsics.areEqual(this.backing[this.offset + i9], element)) {
                return i9;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        checkForComodification();
        return this.length == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return listIterator(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object element) {
        checkForComodification();
        for (int i9 = this.length - 1; i9 >= 0; i9--) {
            if (Intrinsics.areEqual(this.backing[this.offset + i9], element)) {
                return i9;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int index) {
        checkForComodification();
        kotlin.collections.AbstractList.Companion.checkPositionIndex$kotlin_stdlib(index, this.length);
        return new ListBuilder$BuilderSubList$Itr(this, index);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object element) {
        checkIsMutable();
        checkForComodification();
        int iIndexOf = indexOf(element);
        if (iIndexOf >= 0) {
            removeAt(iIndexOf);
        }
        return iIndexOf >= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.util.Collection<?> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> elements) {
        elements.getClass();
        checkIsMutable();
        checkForComodification();
        return retainOrRemoveAllInternal(this.offset, this.length, elements, false) > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.collections.AbstractMutableList
    public E removeAt(int index) {
        checkIsMutable();
        checkForComodification();
        kotlin.collections.AbstractList.Companion.checkElementIndex$kotlin_stdlib(index, this.length);
        return removeAtInternal(this.offset + index);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.util.Collection<?> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<?> elements) {
        elements.getClass();
        checkIsMutable();
        checkForComodification();
        return retainOrRemoveAllInternal(this.offset, this.length, elements, true) > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public E set(int index, E element) {
        checkIsMutable();
        checkForComodification();
        kotlin.collections.AbstractList.Companion.checkElementIndex$kotlin_stdlib(index, this.length);
        E[] eArr = this.backing;
        int i9 = this.offset;
        E e = eArr[i9 + index];
        eArr[i9 + index] = element;
        return e;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractList, java.util.List
    public List<E> subList(int fromIndex, int toIndex) {
        kotlin.collections.AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(fromIndex, toIndex, this.length);
        return new ListBuilder$BuilderSubList(this.backing, this.offset + fromIndex, toIndex - fromIndex, this, this.root);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public <T> T[] toArray(T[] array) {
        array.getClass();
        checkForComodification();
        int length = array.length;
        int i9 = this.length;
        E[] eArr = this.backing;
        int i10 = this.offset;
        if (length >= i9) {
            ArraysKt.m(eArr, array, 0, i10, i9 + i10);
            return (T[]) CollectionsKt.terminateCollectionToArray(this.length, array);
        }
        T[] tArr = (T[]) Arrays.copyOfRange(eArr, i10, i9 + i10, array.getClass());
        tArr.getClass();
        return tArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection
    public String toString() {
        checkForComodification();
        return ListBuilderKt.access$subarrayContentToString(this.backing, this.offset, this.length, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E element) {
        checkIsMutable();
        checkForComodification();
        addAtInternal(this.offset + this.length, element);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> elements) {
        elements.getClass();
        checkIsMutable();
        checkForComodification();
        int size = elements.size();
        addAllInternal(this.offset + this.length, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        checkForComodification();
        E[] eArr = this.backing;
        int i9 = this.offset;
        return ArraysKt.copyOfRange(eArr, i9, this.length + i9);
    }
}
