package androidx.core.text;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TextDirectionHeuristicsCompat$AnyStrong implements TextDirectionHeuristicsCompat$TextDirectionAlgorithm {
    static final TextDirectionHeuristicsCompat$AnyStrong INSTANCE_RTL = new TextDirectionHeuristicsCompat$AnyStrong(true);
    private final boolean mLookForRtl;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private TextDirectionHeuristicsCompat$AnyStrong(boolean z8) {
        this.mLookForRtl = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:24:0x0023 */
    @Override // androidx.core.text.TextDirectionHeuristicsCompat$TextDirectionAlgorithm
    public int checkRtl(CharSequence charSequence, int i9, int i10) {
        int i11 = i10 + i9;
        boolean z8 = false;
        while (i9 < i11) {
            int iIsRtlText = TextDirectionHeuristicsCompat.isRtlText(Character.getDirectionality(charSequence.charAt(i9)));
            if (iIsRtlText != 0) {
                if (iIsRtlText != 1) {
                    continue;
                } else if (!this.mLookForRtl) {
                    return 1;
                }
                i9++;
                z8 = z8;
            } else if (this.mLookForRtl) {
                return 0;
            }
            z8 = true;
            i9++;
            z8 = z8;
        }
        if (z8) {
            return this.mLookForRtl ? 1 : 0;
        }
        return 2;
    }
}
