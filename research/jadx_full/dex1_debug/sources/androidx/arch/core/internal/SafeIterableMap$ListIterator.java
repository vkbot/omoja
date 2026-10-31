package androidx.arch.core.internal;

import androidx.annotation.NonNull;
import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class SafeIterableMap$ListIterator<K, V> extends SafeIterableMap$SupportRemove<K, V> implements Iterator<Map$Entry<K, V>> {
    SafeIterableMap$Entry<K, V> mExpectedEnd;
    SafeIterableMap$Entry<K, V> mNext;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SafeIterableMap$ListIterator(SafeIterableMap$Entry<K, V> safeIterableMap$Entry, SafeIterableMap$Entry<K, V> safeIterableMap$Entry2) {
        this.mExpectedEnd = safeIterableMap$Entry2;
        this.mNext = safeIterableMap$Entry;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SafeIterableMap$Entry<K, V> nextNode() {
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry = this.mNext;
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry2 = this.mExpectedEnd;
        if (safeIterableMap$Entry == safeIterableMap$Entry2 || safeIterableMap$Entry2 == null) {
            return null;
        }
        return forward(safeIterableMap$Entry);
    }

    public abstract SafeIterableMap$Entry<K, V> backward(SafeIterableMap$Entry<K, V> safeIterableMap$Entry);

    public abstract SafeIterableMap$Entry<K, V> forward(SafeIterableMap$Entry<K, V> safeIterableMap$Entry);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.mNext != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public Map$Entry<K, V> next() {
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry = this.mNext;
        this.mNext = nextNode();
        return safeIterableMap$Entry;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.arch.core.internal.SafeIterableMap$SupportRemove
    public void supportRemove(@NonNull SafeIterableMap$Entry<K, V> safeIterableMap$Entry) {
        if (this.mExpectedEnd == safeIterableMap$Entry && safeIterableMap$Entry == this.mNext) {
            this.mNext = null;
            this.mExpectedEnd = null;
        }
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry2 = this.mExpectedEnd;
        if (safeIterableMap$Entry2 == safeIterableMap$Entry) {
            this.mExpectedEnd = backward(safeIterableMap$Entry2);
        }
        if (this.mNext == safeIterableMap$Entry) {
            this.mNext = nextNode();
        }
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return next();
    }
}
