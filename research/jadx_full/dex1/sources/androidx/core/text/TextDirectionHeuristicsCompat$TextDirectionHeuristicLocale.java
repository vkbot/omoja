package androidx.core.text;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale extends TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl {
    static final TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale INSTANCE = new TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale() {
        super(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.text.TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl
    public boolean defaultIsRtl() {
        return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }
}
