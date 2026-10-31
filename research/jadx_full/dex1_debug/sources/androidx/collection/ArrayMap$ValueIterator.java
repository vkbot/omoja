package androidx.collection;

/* JADX INFO: Add missing generic type declarations: [V] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ArrayMap$ValueIterator<V> extends IndexBasedArrayIterator<V> {
    final /* synthetic */ ArrayMap this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArrayMap$ValueIterator(ArrayMap arrayMap) {
        super(arrayMap.getSize());
        this.this$0 = arrayMap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.collection.IndexBasedArrayIterator
    public V elementAt(int i9) {
        return this.this$0.valueAt(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.collection.IndexBasedArrayIterator
    public void removeAt(int i9) {
        this.this$0.removeAt(i9);
    }
}
