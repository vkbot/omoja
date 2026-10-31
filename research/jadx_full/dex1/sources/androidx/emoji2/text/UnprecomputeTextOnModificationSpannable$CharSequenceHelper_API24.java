package androidx.emoji2.text;

import androidx.annotation.RequiresApi;
import java.util.stream.IntStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(24)
public class UnprecomputeTextOnModificationSpannable$CharSequenceHelper_API24 {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private UnprecomputeTextOnModificationSpannable$CharSequenceHelper_API24() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static IntStream chars(CharSequence charSequence) {
        return charSequence.chars();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static IntStream codePoints(CharSequence charSequence) {
        return charSequence.codePoints();
    }
}
