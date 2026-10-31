package androidx.core.provider;

import android.graphics.Typeface;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class FontRequestWorker$TypefaceResult {
    final int mResult;
    final Typeface mTypeface;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FontRequestWorker$TypefaceResult(int i9) {
        this.mTypeface = null;
        this.mResult = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isSuccess() {
        return this.mResult == 0;
    }

    public FontRequestWorker$TypefaceResult(@NonNull Typeface typeface) {
        this.mTypeface = typeface;
        this.mResult = 0;
    }
}
