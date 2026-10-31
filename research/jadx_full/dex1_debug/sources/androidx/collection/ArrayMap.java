package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {

    /* JADX WARN: Incorrect inner types in field signature: Landroidx/collection/ArrayMap<TK;TV;>.EntrySet; */
    @Nullable
    ArrayMap$EntrySet mEntrySet;

    /* JADX WARN: Incorrect inner types in field signature: Landroidx/collection/ArrayMap<TK;TV;>.KeySet; */
    @Nullable
    ArrayMap$KeySet mKeySet;

    /* JADX WARN: Incorrect inner types in field signature: Landroidx/collection/ArrayMap<TK;TV;>.ValueCollection; */
    @Nullable
    ArrayMap$ValueCollection mValues;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayMap() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> boolean equalsSetHelper(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size() && set.containsAll(set2)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean containsAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public boolean containsKey(@Nullable Object obj) {
        return super.containsKey(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public boolean containsValue(@Nullable Object obj) {
        return super.containsValue(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    @NonNull
    public Set<Map$Entry<K, V>> entrySet() {
        ArrayMap$EntrySet arrayMap$EntrySet = this.mEntrySet;
        if (arrayMap$EntrySet != null) {
            return arrayMap$EntrySet;
        }
        ArrayMap$EntrySet arrayMap$EntrySet2 = new ArrayMap$EntrySet(this);
        this.mEntrySet = arrayMap$EntrySet2;
        return arrayMap$EntrySet2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public V get(@Nullable Object obj) {
        return (V) super.get(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    @NonNull
    public Set<K> keySet() {
        ArrayMap$KeySet arrayMap$KeySet = this.mKeySet;
        if (arrayMap$KeySet != null) {
            return arrayMap$KeySet;
        }
        ArrayMap$KeySet arrayMap$KeySet2 = new ArrayMap$KeySet(this);
        this.mKeySet = arrayMap$KeySet2;
        return arrayMap$KeySet2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public void putAll(@NonNull Map<? extends K, ? extends V> map) {
        ensureCapacity(map.size() + getSize());
        for (Map$Entry<? extends K, ? extends V> map$Entry : map.entrySet()) {
            put(map$Entry.getKey(), map$Entry.getValue());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public V remove(@Nullable Object obj) {
        return (V) super.remove(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean removeAll(@NonNull Collection<?> collection) {
        int size = getSize();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
        return size != getSize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean retainAll(@NonNull Collection<?> collection) {
        int size = getSize();
        for (int size2 = getSize() - 1; size2 >= 0; size2--) {
            if (!collection.contains(keyAt(size2))) {
                removeAt(size2);
            }
        }
        return size != getSize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    @NonNull
    public Collection<V> values() {
        ArrayMap$ValueCollection arrayMap$ValueCollection = this.mValues;
        if (arrayMap$ValueCollection != null) {
            return arrayMap$ValueCollection;
        }
        ArrayMap$ValueCollection arrayMap$ValueCollection2 = new ArrayMap$ValueCollection(this);
        this.mValues = arrayMap$ValueCollection2;
        return arrayMap$ValueCollection2;
    }

    public ArrayMap(int i9) {
        super(i9);
    }

    public ArrayMap(@Nullable SimpleArrayMap simpleArrayMap) {
        super(simpleArrayMap);
    }
}
