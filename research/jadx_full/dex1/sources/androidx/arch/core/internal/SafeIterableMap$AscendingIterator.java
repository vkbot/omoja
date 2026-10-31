package androidx.arch.core.internal;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SafeIterableMap$AscendingIterator<K, V> extends SafeIterableMap$ListIterator<K, V> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SafeIterableMap$AscendingIterator(SafeIterableMap$Entry<K, V> safeIterableMap$Entry, SafeIterableMap$Entry<K, V> safeIterableMap$Entry2) {
        super(safeIterableMap$Entry, safeIterableMap$Entry2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.arch.core.internal.SafeIterableMap$ListIterator
    public SafeIterableMap$Entry<K, V> backward(SafeIterableMap$Entry<K, V> safeIterableMap$Entry) {
        return safeIterableMap$Entry.mPrevious;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.arch.core.internal.SafeIterableMap$ListIterator
    public SafeIterableMap$Entry<K, V> forward(SafeIterableMap$Entry<K, V> safeIterableMap$Entry) {
        return safeIterableMap$Entry.mNext;
    }
}
