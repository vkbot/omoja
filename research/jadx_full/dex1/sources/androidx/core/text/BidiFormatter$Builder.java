package androidx.core.text;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class BidiFormatter$Builder {
    private int mFlags;
    private boolean mIsRtlContext;
    private TextDirectionHeuristicCompat mTextDirectionHeuristicCompat;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BidiFormatter$Builder() {
        initialize(BidiFormatter.isRtlLocale(Locale.getDefault()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static BidiFormatter getDefaultInstanceFromContext(boolean z8) {
        return z8 ? BidiFormatter.DEFAULT_RTL_INSTANCE : BidiFormatter.DEFAULT_LTR_INSTANCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void initialize(boolean z8) {
        this.mIsRtlContext = z8;
        this.mTextDirectionHeuristicCompat = BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC;
        this.mFlags = 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BidiFormatter build() {
        return (this.mFlags == 2 && this.mTextDirectionHeuristicCompat == BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC) ? getDefaultInstanceFromContext(this.mIsRtlContext) : new BidiFormatter(this.mIsRtlContext, this.mFlags, this.mTextDirectionHeuristicCompat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BidiFormatter$Builder setTextDirectionHeuristic(TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        this.mTextDirectionHeuristicCompat = textDirectionHeuristicCompat;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BidiFormatter$Builder stereoReset(boolean z8) {
        int i9 = this.mFlags;
        if (z8) {
            this.mFlags = i9 | 2;
            return this;
        }
        this.mFlags = i9 & (-3);
        return this;
    }

    public BidiFormatter$Builder(boolean z8) {
        initialize(z8);
    }

    public BidiFormatter$Builder(Locale locale) {
        initialize(BidiFormatter.isRtlLocale(locale));
    }
}
