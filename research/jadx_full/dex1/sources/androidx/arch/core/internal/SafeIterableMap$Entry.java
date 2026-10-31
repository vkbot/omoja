package androidx.arch.core.internal;

import androidx.annotation.NonNull;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SafeIterableMap$Entry<K, V> implements Map$Entry<K, V> {

    @NonNull
    final K mKey;
    SafeIterableMap$Entry<K, V> mNext;
    SafeIterableMap$Entry<K, V> mPrevious;

    @NonNull
    final V mValue;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SafeIterableMap$Entry(@NonNull K k6, @NonNull V v8) {
        this.mKey = k6;
        this.mValue = v8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SafeIterableMap$Entry)) {
            return false;
        }
        SafeIterableMap$Entry safeIterableMap$Entry = (SafeIterableMap$Entry) obj;
        return this.mKey.equals(safeIterableMap$Entry.mKey) && this.mValue.equals(safeIterableMap$Entry.mValue);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    @NonNull
    public K getKey() {
        return this.mKey;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    @NonNull
    public V getValue() {
        return this.mValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    public int hashCode() {
        return this.mKey.hashCode() ^ this.mValue.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    public V setValue(V v8) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.mKey + "=" + this.mValue;
    }
}
