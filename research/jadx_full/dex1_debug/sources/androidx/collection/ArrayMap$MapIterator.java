package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import j1.i;
import java.util.Iterator;
import java.util.Map$Entry;
import n0.b;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ArrayMap$MapIterator<K, V> implements Iterator<Map$Entry<K, V>>, Map$Entry<K, V> {
    int mEnd;
    boolean mEntryValid;
    int mIndex = -1;
    final /* synthetic */ ArrayMap this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayMap$MapIterator(ArrayMap arrayMap) {
        this.this$0 = arrayMap;
        this.mEnd = arrayMap.getSize() - 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    public boolean equals(Object obj) {
        if (!this.mEntryValid) {
            i.l("This container does not support retaining Map.Entry objects");
            return false;
        }
        if (!(obj instanceof Map$Entry)) {
            return false;
        }
        Map$Entry map$Entry = (Map$Entry) obj;
        return ContainerHelpersKt.equal(map$Entry.getKey(), this.this$0.keyAt(this.mIndex)) && ContainerHelpersKt.equal(map$Entry.getValue(), this.this$0.valueAt(this.mIndex));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    public K getKey() {
        if (this.mEntryValid) {
            return this.this$0.keyAt(this.mIndex);
        }
        i.l("This container does not support retaining Map.Entry objects");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    public V getValue() {
        if (this.mEntryValid) {
            return this.this$0.valueAt(this.mIndex);
        }
        i.l("This container does not support retaining Map.Entry objects");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.mIndex < this.mEnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    public int hashCode() {
        if (!this.mEntryValid) {
            i.l("This container does not support retaining Map.Entry objects");
            return 0;
        }
        K kKeyAt = this.this$0.keyAt(this.mIndex);
        V vValueAt = this.this$0.valueAt(this.mIndex);
        return (kKeyAt == null ? 0 : kKeyAt.hashCode()) ^ (vValueAt != null ? vValueAt.hashCode() : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public Map$Entry<K, V> next() {
        if (!hasNext()) {
            b.x();
            return null;
        }
        this.mIndex++;
        this.mEntryValid = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public void remove() {
        if (!this.mEntryValid) {
            throw new IllegalStateException();
        }
        this.this$0.removeAt(this.mIndex);
        this.mIndex--;
        this.mEnd--;
        this.mEntryValid = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map$Entry
    public V setValue(V v8) {
        if (this.mEntryValid) {
            return this.this$0.setValueAt(this.mIndex, v8);
        }
        i.l("This container does not support retaining Map.Entry objects");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return getKey() + "=" + getValue();
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return next();
    }
}
