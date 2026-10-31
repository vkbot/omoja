package androidx.recyclerview.widget;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ConcatAdapter$Config$Builder {
    private boolean mIsolateViewTypes;
    private ConcatAdapter$Config$StableIdMode mStableIdMode;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConcatAdapter$Config$Builder() {
        ConcatAdapter$Config concatAdapter$Config = ConcatAdapter$Config.DEFAULT;
        this.mIsolateViewTypes = concatAdapter$Config.isolateViewTypes;
        this.mStableIdMode = concatAdapter$Config.stableIdMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ConcatAdapter$Config build() {
        return new ConcatAdapter$Config(this.mIsolateViewTypes, this.mStableIdMode);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ConcatAdapter$Config$Builder setIsolateViewTypes(boolean z8) {
        this.mIsolateViewTypes = z8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public ConcatAdapter$Config$Builder setStableIdMode(@NonNull ConcatAdapter$Config$StableIdMode concatAdapter$Config$StableIdMode) {
        this.mStableIdMode = concatAdapter$Config$StableIdMode;
        return this;
    }
}
