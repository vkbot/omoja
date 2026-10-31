package androidx.core.text;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TextDirectionHeuristicsCompat$FirstStrong implements TextDirectionHeuristicsCompat$TextDirectionAlgorithm {
    static final TextDirectionHeuristicsCompat$FirstStrong INSTANCE = new TextDirectionHeuristicsCompat$FirstStrong();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private TextDirectionHeuristicsCompat$FirstStrong() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.text.TextDirectionHeuristicsCompat$TextDirectionAlgorithm
    public int checkRtl(CharSequence charSequence, int i9, int i10) {
        int i11 = i10 + i9;
        int iIsRtlTextOrFormat = 2;
        while (i9 < i11 && iIsRtlTextOrFormat == 2) {
            iIsRtlTextOrFormat = TextDirectionHeuristicsCompat.isRtlTextOrFormat(Character.getDirectionality(charSequence.charAt(i9)));
            i9++;
        }
        return iIsRtlTextOrFormat;
    }
}
