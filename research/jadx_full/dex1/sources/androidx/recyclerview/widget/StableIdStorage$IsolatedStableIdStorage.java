package androidx.recyclerview.widget;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class StableIdStorage$IsolatedStableIdStorage implements StableIdStorage {
    long mNextStableId = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.StableIdStorage
    @NonNull
    public StableIdStorage$StableIdLookup createStableIdLookup() {
        return new StableIdStorage$IsolatedStableIdStorage$WrapperStableIdLookup(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long obtainId() {
        long j9 = this.mNextStableId;
        this.mNextStableId = 1 + j9;
        return j9;
    }
}
