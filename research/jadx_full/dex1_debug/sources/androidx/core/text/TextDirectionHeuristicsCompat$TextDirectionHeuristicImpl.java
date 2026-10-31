package androidx.core.text;

import java.nio.CharBuffer;
import l9.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl implements TextDirectionHeuristicCompat {
    private final TextDirectionHeuristicsCompat$TextDirectionAlgorithm mAlgorithm;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl(TextDirectionHeuristicsCompat$TextDirectionAlgorithm textDirectionHeuristicsCompat$TextDirectionAlgorithm) {
        this.mAlgorithm = textDirectionHeuristicsCompat$TextDirectionAlgorithm;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean doCheck(CharSequence charSequence, int i9, int i10) {
        int iCheckRtl = this.mAlgorithm.checkRtl(charSequence, i9, i10);
        if (iCheckRtl == 0) {
            return true;
        }
        if (iCheckRtl != 1) {
            return defaultIsRtl();
        }
        return false;
    }

    public abstract boolean defaultIsRtl();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.text.TextDirectionHeuristicCompat
    public boolean isRtl(CharSequence charSequence, int i9, int i10) {
        if (charSequence != null && i9 >= 0 && i10 >= 0 && charSequence.length() - i10 >= i9) {
            return this.mAlgorithm == null ? defaultIsRtl() : doCheck(charSequence, i9, i10);
        }
        i.a();
        return false;
    }

    @Override // androidx.core.text.TextDirectionHeuristicCompat
    public boolean isRtl(char[] cArr, int i9, int i10) {
        return isRtl(CharBuffer.wrap(cArr), i9, i10);
    }
}
