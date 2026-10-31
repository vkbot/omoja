package androidx.collection;

import androidx.annotation.NonNull;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ArrayMap$EntrySet<K, V> extends AbstractSet<Map$Entry<K, V>> {
    final /* synthetic */ ArrayMap this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayMap$EntrySet(ArrayMap arrayMap) {
        this.this$0 = arrayMap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    @NonNull
    public Iterator<Map$Entry<K, V>> iterator() {
        return new ArrayMap$MapIterator(this.this$0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.this$0.getSize();
    }
}
