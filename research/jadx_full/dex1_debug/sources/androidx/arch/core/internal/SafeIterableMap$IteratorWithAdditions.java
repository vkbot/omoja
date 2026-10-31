package androidx.arch.core.internal;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import java.util.Iterator;
import java.util.Map$Entry;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public class SafeIterableMap$IteratorWithAdditions<K, V> extends SafeIterableMap$SupportRemove<K, V> implements Iterator<Map$Entry<K, V>> {
    private boolean mBeforeStart = true;
    private SafeIterableMap$Entry<K, V> mCurrent;
    final /* synthetic */ SafeIterableMap this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SafeIterableMap$IteratorWithAdditions(SafeIterableMap safeIterableMap) {
        this.this$0 = safeIterableMap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.mBeforeStart) {
            return this.this$0.mStart != null;
        }
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry = this.mCurrent;
        return (safeIterableMap$Entry == null || safeIterableMap$Entry.mNext == null) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Iterator
    public Map$Entry<K, V> next() {
        if (this.mBeforeStart) {
            this.mBeforeStart = false;
            this.mCurrent = this.this$0.mStart;
        } else {
            SafeIterableMap$Entry<K, V> safeIterableMap$Entry = this.mCurrent;
            this.mCurrent = safeIterableMap$Entry != null ? safeIterableMap$Entry.mNext : null;
        }
        return this.mCurrent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.arch.core.internal.SafeIterableMap$SupportRemove
    public void supportRemove(@NonNull SafeIterableMap$Entry<K, V> safeIterableMap$Entry) {
        SafeIterableMap$Entry<K, V> safeIterableMap$Entry2 = this.mCurrent;
        if (safeIterableMap$Entry == safeIterableMap$Entry2) {
            SafeIterableMap$Entry<K, V> safeIterableMap$Entry3 = safeIterableMap$Entry2.mPrevious;
            this.mCurrent = safeIterableMap$Entry3;
            this.mBeforeStart = safeIterableMap$Entry3 == null;
        }
    }

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Object next() {
        return next();
    }
}
