package androidx.core.text;

import android.os.Build$VERSION;
import android.text.PrecomputedText$Params;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.activity.j;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.graphics.a;
import androidx.core.util.ObjectsCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class PrecomputedTextCompat$Params {
    private final int mBreakStrategy;
    private final int mHyphenationFrequency;

    @NonNull
    private final TextPaint mPaint;

    @Nullable
    private final TextDirectionHeuristic mTextDir;
    final PrecomputedText$Params mWrapped;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PrecomputedTextCompat$Params(@NonNull TextPaint textPaint, @NonNull TextDirectionHeuristic textDirectionHeuristic, int i9, int i10) {
        if (Build$VERSION.SDK_INT >= 29) {
            this.mWrapped = j.n(j.l(j.C(j.k(j.m(textPaint), i9), i10), textDirectionHeuristic));
        } else {
            this.mWrapped = null;
        }
        this.mPaint = textPaint;
        this.mTextDir = textDirectionHeuristic;
        this.mBreakStrategy = i9;
        this.mHyphenationFrequency = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PrecomputedTextCompat$Params)) {
            return false;
        }
        PrecomputedTextCompat$Params precomputedTextCompat$Params = (PrecomputedTextCompat$Params) obj;
        return equalsWithoutTextDirection(precomputedTextCompat$Params) && this.mTextDir == precomputedTextCompat$Params.getTextDirection();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean equalsWithoutTextDirection(@NonNull PrecomputedTextCompat$Params precomputedTextCompat$Params) {
        if (this.mBreakStrategy != precomputedTextCompat$Params.getBreakStrategy() || this.mHyphenationFrequency != precomputedTextCompat$Params.getHyphenationFrequency() || this.mPaint.getTextSize() != precomputedTextCompat$Params.getTextPaint().getTextSize() || this.mPaint.getTextScaleX() != precomputedTextCompat$Params.getTextPaint().getTextScaleX() || this.mPaint.getTextSkewX() != precomputedTextCompat$Params.getTextPaint().getTextSkewX() || this.mPaint.getLetterSpacing() != precomputedTextCompat$Params.getTextPaint().getLetterSpacing() || !TextUtils.equals(this.mPaint.getFontFeatureSettings(), precomputedTextCompat$Params.getTextPaint().getFontFeatureSettings()) || this.mPaint.getFlags() != precomputedTextCompat$Params.getTextPaint().getFlags() || !this.mPaint.getTextLocales().equals(precomputedTextCompat$Params.getTextPaint().getTextLocales())) {
            return false;
        }
        if (this.mPaint.getTypeface() == null) {
            return precomputedTextCompat$Params.getTextPaint().getTypeface() == null;
        }
        return this.mPaint.getTypeface().equals(precomputedTextCompat$Params.getTextPaint().getTypeface());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(23)
    public int getBreakStrategy() {
        return this.mBreakStrategy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(23)
    public int getHyphenationFrequency() {
        return this.mHyphenationFrequency;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public TextDirectionHeuristic getTextDirection() {
        return this.mTextDir;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public TextPaint getTextPaint() {
        return this.mPaint;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return ObjectsCompat.hash(Float.valueOf(this.mPaint.getTextSize()), Float.valueOf(this.mPaint.getTextScaleX()), Float.valueOf(this.mPaint.getTextSkewX()), Float.valueOf(this.mPaint.getLetterSpacing()), Integer.valueOf(this.mPaint.getFlags()), this.mPaint.getTextLocales(), this.mPaint.getTypeface(), Boolean.valueOf(this.mPaint.isElegantTextHeight()), this.mTextDir, Integer.valueOf(this.mBreakStrategy), Integer.valueOf(this.mHyphenationFrequency));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder("{");
        sb.append("textSize=" + this.mPaint.getTextSize());
        sb.append(", textScaleX=" + this.mPaint.getTextScaleX());
        sb.append(", textSkewX=" + this.mPaint.getTextSkewX());
        sb.append(", letterSpacing=" + this.mPaint.getLetterSpacing());
        sb.append(", elegantTextHeight=" + this.mPaint.isElegantTextHeight());
        sb.append(", textLocale=" + this.mPaint.getTextLocales());
        sb.append(", typeface=" + this.mPaint.getTypeface());
        if (Build$VERSION.SDK_INT >= 26) {
            sb.append(", variationSettings=" + a.q(this.mPaint));
        }
        sb.append(", textDir=" + this.mTextDir);
        sb.append(", breakStrategy=" + this.mBreakStrategy);
        sb.append(", hyphenationFrequency=" + this.mHyphenationFrequency);
        sb.append("}");
        return sb.toString();
    }

    @RequiresApi(28)
    public PrecomputedTextCompat$Params(@NonNull PrecomputedText$Params precomputedText$Params) {
        this.mPaint = j.r(precomputedText$Params);
        this.mTextDir = j.q(precomputedText$Params);
        this.mBreakStrategy = j.b(precomputedText$Params);
        this.mHyphenationFrequency = j.A(precomputedText$Params);
        this.mWrapped = Build$VERSION.SDK_INT < 29 ? null : precomputedText$Params;
    }
}
