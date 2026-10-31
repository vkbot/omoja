package androidx.collection;

import androidx.annotation.NonNull;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: Add missing generic type declarations: [K] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ArrayMap$KeySet<K> implements Set<K> {
    final /* synthetic */ ArrayMap this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayMap$KeySet(ArrayMap arrayMap) {
        this.this$0 = arrayMap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Set, java.util.Collection
    public boolean add(K k6) {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Set, java.util.Collection
    public boolean addAll(@NonNull Collection<? extends K> collection) {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.this$0.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return this.this$0.containsKey(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(@NonNull Collection<?> collection) {
        return this.this$0.containsAll(collection);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Set, java.util.Collection
    public boolean equals(Object obj) {
        return ArrayMap.equalsSetHelper(this, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Set, java.util.Collection
    public int hashCode() {
        int iHashCode = 0;
        for (int size = this.this$0.getSize() - 1; size >= 0; size--) {
            K kKeyAt = this.this$0.keyAt(size);
            iHashCode += kKeyAt == null ? 0 : kKeyAt.hashCode();
        }
        return iHashCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.this$0.isEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    @NonNull
    public Iterator<K> iterator() {
        return new ArrayMap$KeyIterator(this.this$0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        int iIndexOfKey = this.this$0.indexOfKey(obj);
        if (iIndexOfKey < 0) {
            return false;
        }
        this.this$0.removeAt(iIndexOfKey);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(@NonNull Collection<?> collection) {
        return this.this$0.removeAll(collection);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(@NonNull Collection<?> collection) {
        return this.this$0.retainAll(collection);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Set, java.util.Collection
    public int size() {
        return this.this$0.getSize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Set, java.util.Collection
    @NonNull
    public <T> T[] toArray(@NonNull T[] tArr) {
        int size = size();
        if (tArr.length < size) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        }
        for (int i9 = 0; i9 < size; i9++) {
            tArr[i9] = this.this$0.keyAt(i9);
        }
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }

    @Override // java.util.Set, java.util.Collection
    @NonNull
    public Object[] toArray() {
        int size = this.this$0.getSize();
        Object[] objArr = new Object[size];
        for (int i9 = 0; i9 < size; i9++) {
            objArr[i9] = this.this$0.keyAt(i9);
        }
        return objArr;
    }
}
