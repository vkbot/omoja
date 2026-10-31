package androidx.core.text;

import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PrecomputedTextCompat$Params$Builder {

    @NonNull
    private final TextPaint mPaint;
    private int mBreakStrategy = 1;
    private int mHyphenationFrequency = 1;
    private TextDirectionHeuristic mTextDir = TextDirectionHeuristics.FIRSTSTRONG_LTR;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PrecomputedTextCompat$Params$Builder(@NonNull TextPaint textPaint) {
        this.mPaint = textPaint;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public PrecomputedTextCompat$Params build() {
        return new PrecomputedTextCompat$Params(this.mPaint, this.mTextDir, this.mBreakStrategy, this.mHyphenationFrequency);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(23)
    public PrecomputedTextCompat$Params$Builder setBreakStrategy(int i9) {
        this.mBreakStrategy = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(23)
    public PrecomputedTextCompat$Params$Builder setHyphenationFrequency(int i9) {
        this.mHyphenationFrequency = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PrecomputedTextCompat$Params$Builder setTextDirection(@NonNull TextDirectionHeuristic textDirectionHeuristic) {
        this.mTextDir = textDirectionHeuristic;
        return this;
    }
}
