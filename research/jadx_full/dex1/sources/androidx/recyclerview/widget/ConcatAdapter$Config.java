package androidx.recyclerview.widget;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class ConcatAdapter$Config {

    @NonNull
    public static final ConcatAdapter$Config DEFAULT = new ConcatAdapter$Config(true, ConcatAdapter$Config$StableIdMode.NO_STABLE_IDS);
    public final boolean isolateViewTypes;

    @NonNull
    public final ConcatAdapter$Config$StableIdMode stableIdMode;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConcatAdapter$Config(boolean z8, @NonNull ConcatAdapter$Config$StableIdMode concatAdapter$Config$StableIdMode) {
        this.isolateViewTypes = z8;
        this.stableIdMode = concatAdapter$Config$StableIdMode;
    }
}
