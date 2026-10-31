package androidx.recyclerview.widget;

import androidx.collection.LongSparseArray;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup implements StableIdStorage$StableIdLookup {
    private final LongSparseArray<Long> mLocalToGlobalLookup = new LongSparseArray<>();
    final /* synthetic */ StableIdStorage$IsolatedStableIdStorage this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup(StableIdStorage$IsolatedStableIdStorage stableIdStorage$IsolatedStableIdStorage) {
        this.this$0 = stableIdStorage$IsolatedStableIdStorage;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.StableIdStorage$StableIdLookup
    public long localToGlobal(long j9) {
        Long lValueOf = this.mLocalToGlobalLookup.get(j9);
        if (lValueOf == null) {
            lValueOf = Long.valueOf(this.this$0.obtainId());
            this.mLocalToGlobalLookup.put(j9, lValueOf);
        }
        return lValueOf.longValue();
    }
}
