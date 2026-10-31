package androidx.emoji2.text;

import androidx.annotation.RequiresApi;
import androidx.core.text.PrecomputedTextCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(28)
public class UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector_28 extends UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector
    public boolean isPrecomputedText(CharSequence charSequence) {
        return androidx.core.view.accessibility.a.s(charSequence) || (charSequence instanceof PrecomputedTextCompat);
    }
}
