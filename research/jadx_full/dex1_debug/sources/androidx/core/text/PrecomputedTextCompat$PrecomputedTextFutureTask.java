package androidx.core.text;

import androidx.annotation.NonNull;
import java.util.concurrent.FutureTask;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PrecomputedTextCompat$PrecomputedTextFutureTask extends FutureTask<PrecomputedTextCompat> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PrecomputedTextCompat$PrecomputedTextFutureTask(@NonNull PrecomputedTextCompat$Params precomputedTextCompat$Params, @NonNull CharSequence charSequence) {
        super(new PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback(precomputedTextCompat$Params, charSequence));
    }
}
