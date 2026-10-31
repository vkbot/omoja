package androidx.core.util;

import android.util.SizeF;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public final class SizeFCompat$Api21Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SizeFCompat$Api21Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @DoNotInline
    public static SizeF toSizeF(@NonNull SizeFCompat sizeFCompat) {
        Preconditions.checkNotNull(sizeFCompat);
        return new SizeF(sizeFCompat.getWidth(), sizeFCompat.getHeight());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @DoNotInline
    public static SizeFCompat toSizeFCompat(@NonNull SizeF sizeF) {
        Preconditions.checkNotNull(sizeF);
        return new SizeFCompat(sizeF.getWidth(), sizeF.getHeight());
    }
}
