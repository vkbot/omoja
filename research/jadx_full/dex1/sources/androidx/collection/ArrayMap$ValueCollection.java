package androidx.collection;

import androidx.annotation.NonNull;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: Add missing generic type declarations: [V] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ArrayMap$ValueCollection<V> implements Collection<V> {
    final /* synthetic */ ArrayMap this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayMap$ValueCollection(ArrayMap arrayMap) {
        this.this$0 = arrayMap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Collection
    public boolean add(V v8) {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Collection
    public boolean addAll(@NonNull Collection<? extends V> collection) {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Collection
    public void clear() {
        this.this$0.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return this.this$0.__restricted$indexOfValue(obj) >= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.this$0.isEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Collection, java.lang.Iterable
    @NonNull
    public Iterator<V> iterator() {
        return new ArrayMap$ValueIterator(this.this$0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Collection
    public boolean remove(Object obj) {
        int i__restricted$indexOfValue = this.this$0.__restricted$indexOfValue(obj);
        if (i__restricted$indexOfValue < 0) {
            return false;
        }
        this.this$0.removeAt(i__restricted$indexOfValue);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Collection
    public boolean removeAll(@NonNull Collection<?> collection) {
        int size = this.this$0.getSize();
        int i9 = 0;
        boolean z8 = false;
        while (i9 < size) {
            if (collection.contains(this.this$0.valueAt(i9))) {
                this.this$0.removeAt(i9);
                i9--;
                size--;
                z8 = true;
            }
            i9++;
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Collection
    public boolean retainAll(@NonNull Collection<?> collection) {
        int size = this.this$0.getSize();
        int i9 = 0;
        boolean z8 = false;
        while (i9 < size) {
            if (!collection.contains(this.this$0.valueAt(i9))) {
                this.this$0.removeAt(i9);
                i9--;
                size--;
                z8 = true;
            }
            i9++;
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Collection
    public int size() {
        return this.this$0.getSize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Collection
    @NonNull
    public <T> T[] toArray(@NonNull T[] tArr) {
        int size = size();
        if (tArr.length < size) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        }
        for (int i9 = 0; i9 < size; i9++) {
            tArr[i9] = this.this$0.valueAt(i9);
        }
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }

    @Override // java.util.Collection
    @NonNull
    public Object[] toArray() {
        int size = this.this$0.getSize();
        Object[] objArr = new Object[size];
        for (int i9 = 0; i9 < size; i9++) {
            objArr[i9] = this.this$0.valueAt(i9);
        }
        return objArr;
    }
}
