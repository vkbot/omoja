package androidx.emoji2.text;

import android.graphics.Paint;
import android.graphics.Paint$FontMetricsInt;
import android.text.style.ReplacementSpan;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.util.Preconditions;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(19)
public abstract class EmojiSpan extends ReplacementSpan {

    @NonNull
    private final TypefaceEmojiRasterizer mRasterizer;
    private final Paint$FontMetricsInt mTmpFontMetrics = new Paint$FontMetricsInt();
    private short mWidth = -1;
    private short mHeight = -1;
    private float mRatio = 1.0f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public EmojiSpan(@NonNull TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        Preconditions.checkNotNull(typefaceEmojiRasterizer, "rasterizer cannot be null");
        this.mRasterizer = typefaceEmojiRasterizer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.TESTS})
    public final int getHeight() {
        return this.mHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.TESTS})
    public final int getId() {
        return getTypefaceRasterizer().getId();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public final float getRatio() {
        return this.mRatio;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.text.style.ReplacementSpan
    public int getSize(@NonNull Paint paint, CharSequence charSequence, int i9, int i10, @Nullable Paint$FontMetricsInt paint$FontMetricsInt) {
        paint.getFontMetricsInt(this.mTmpFontMetrics);
        Paint$FontMetricsInt paint$FontMetricsInt2 = this.mTmpFontMetrics;
        this.mRatio = (Math.abs(paint$FontMetricsInt2.descent - paint$FontMetricsInt2.ascent) * 1.0f) / this.mRasterizer.getHeight();
        this.mHeight = (short) (this.mRasterizer.getHeight() * this.mRatio);
        short width = (short) (this.mRasterizer.getWidth() * this.mRatio);
        this.mWidth = width;
        if (paint$FontMetricsInt != null) {
            Paint$FontMetricsInt paint$FontMetricsInt3 = this.mTmpFontMetrics;
            paint$FontMetricsInt.ascent = paint$FontMetricsInt3.ascent;
            paint$FontMetricsInt.descent = paint$FontMetricsInt3.descent;
            paint$FontMetricsInt.top = paint$FontMetricsInt3.top;
            paint$FontMetricsInt.bottom = paint$FontMetricsInt3.bottom;
        }
        return width;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public final TypefaceEmojiRasterizer getTypefaceRasterizer() {
        return this.mRasterizer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public final int getWidth() {
        return this.mWidth;
    }
}
