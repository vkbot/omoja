package androidx.core.text;

import androidx.annotation.NonNull;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback implements Callable<PrecomputedTextCompat> {
    private PrecomputedTextCompat$Params mParams;
    private CharSequence mText;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PrecomputedTextCompat$PrecomputedTextFutureTask$PrecomputedTextCallback(@NonNull PrecomputedTextCompat$Params precomputedTextCompat$Params, @NonNull CharSequence charSequence) {
        this.mParams = precomputedTextCompat$Params;
        this.mText = charSequence;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public PrecomputedTextCompat call() {
        return PrecomputedTextCompat.create(this.mText, this.mParams);
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ PrecomputedTextCompat call() {
        return call();
    }
}
