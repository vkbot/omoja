package androidx.arch.core.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import java.util.Iterator;
import java.util.Map$Entry;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public class SafeIterableMap<K, V> implements Iterable<Map$Entry<K, V>> {
    private SafeIterableMap$Entry<K, V> mEnd;
    private final WeakHashMap<SafeIterableMap$SupportRemove<K, V>, Boolean> mIterators = new WeakHashMap<>();
    private int mSize = 0;
    SafeIterableMap$Entry<K, V> mStart;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Iterator<Map$Entry<K, V>> descendingIterator() {
        SafeIterableMap$DescendingIterator safeIterableMap$DescendingIterator = new SafeIterableMap$DescendingIterator(this.mEnd, this.mStart);
        this.mIterators.put(safeIterableMap$DescendingIterator, Boolean.FALSE);
        return safeIterableMap$DescendingIterator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Map$Entry<K, V> eldest() {
        return this.mStart;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SafeIterableMap)) {
            return false;
        }
        SafeIterableMap safeIterableMap = (SafeIterableMap) obj;
        if (size() != safeIterableMap.size()) {
            return false;
        }
        Iterator<Map$Entry<K, V>> it = iterator();
        Iterator<Map$Entry<K, V>> it2 = safeIterableMap.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map$Entry<K, V> next = it.next();
            Map$Entry<K, V> next2 = it2.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public SafeIterableMap$Entry<K, V> get(K k6) {
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry = this.mStart;
        while (safeIterableMap$Entry != null && !safeIterableMap$Entry.mKey.equals(k6)) {
            safeIterableMap$Entry = safeIterableMap$Entry.mNext;
        }
        return safeIterableMap$Entry;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        Iterator<Map$Entry<K, V>> it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            iHashCode += it.next().hashCode();
        }
        return iHashCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Map$Entry<K, V>> iterator() {
        SafeIterableMap$AscendingIterator safeIterableMap$AscendingIterator = new SafeIterableMap$AscendingIterator(this.mStart, this.mEnd);
        this.mIterators.put(safeIterableMap$AscendingIterator, Boolean.FALSE);
        return safeIterableMap$AscendingIterator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Incorrect inner types in method signature: ()Landroidx/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions; */
    @NonNull
    public SafeIterableMap$IteratorWithAdditions iteratorWithAdditions() {
        SafeIterableMap$IteratorWithAdditions safeIterableMap$IteratorWithAdditions = new SafeIterableMap$IteratorWithAdditions(this);
        this.mIterators.put(safeIterableMap$IteratorWithAdditions, Boolean.FALSE);
        return safeIterableMap$IteratorWithAdditions;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Map$Entry<K, V> newest() {
        return this.mEnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SafeIterableMap$Entry<K, V> put(@NonNull K k6, @NonNull V v8) {
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry = new SafeIterableMap$Entry<>(k6, v8);
        this.mSize++;
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry2 = this.mEnd;
        if (safeIterableMap$Entry2 == null) {
            this.mStart = safeIterableMap$Entry;
            this.mEnd = safeIterableMap$Entry;
            return safeIterableMap$Entry;
        }
        safeIterableMap$Entry2.mNext = safeIterableMap$Entry;
        safeIterableMap$Entry.mPrevious = safeIterableMap$Entry2;
        this.mEnd = safeIterableMap$Entry;
        return safeIterableMap$Entry;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public V putIfAbsent(@NonNull K k6, @NonNull V v8) {
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry = get(k6);
        if (safeIterableMap$Entry != null) {
            return safeIterableMap$Entry.mValue;
        }
        put(k6, v8);
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public V remove(@NonNull K k6) {
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry = get(k6);
        if (safeIterableMap$Entry == null) {
            return null;
        }
        this.mSize--;
        if (!this.mIterators.isEmpty()) {
            Iterator<SafeIterableMap$SupportRemove<K, V>> it = this.mIterators.keySet().iterator();
            while (it.hasNext()) {
                it.next().supportRemove(safeIterableMap$Entry);
            }
        }
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry2 = safeIterableMap$Entry.mPrevious;
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry3 = safeIterableMap$Entry.mNext;
        if (safeIterableMap$Entry2 != null) {
            safeIterableMap$Entry2.mNext = safeIterableMap$Entry3;
        } else {
            this.mStart = safeIterableMap$Entry3;
        }
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry4 = safeIterableMap$Entry.mNext;
        if (safeIterableMap$Entry4 != null) {
            safeIterableMap$Entry4.mPrevious = safeIterableMap$Entry2;
        } else {
            this.mEnd = safeIterableMap$Entry2;
        }
        safeIterableMap$Entry.mNext = null;
        safeIterableMap$Entry.mPrevious = null;
        return safeIterableMap$Entry.mValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int size() {
        return this.mSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator<Map$Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
