package androidx.appcompat.widget;

import android.text.Layout$Alignment;
import android.text.StaticLayout;
import android.text.StaticLayout$Builder;
import android.text.TextPaint;
import android.util.Log;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(23)
public final class AppCompatTextViewAutoSizeHelper$Api23Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AppCompatTextViewAutoSizeHelper$Api23Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    @DoNotInline
    public static StaticLayout createStaticLayoutForMeasuring(@NonNull CharSequence charSequence, @NonNull Layout$Alignment layout$Alignment, int i9, int i10, @NonNull TextView textView, @NonNull TextPaint textPaint, @NonNull AppCompatTextViewAutoSizeHelper$Impl appCompatTextViewAutoSizeHelper$Impl) {
        StaticLayout$Builder staticLayout$BuilderObtain = StaticLayout$Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i9);
        StaticLayout$Builder hyphenationFrequency = staticLayout$BuilderObtain.setAlignment(layout$Alignment).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setBreakStrategy(textView.getBreakStrategy()).setHyphenationFrequency(textView.getHyphenationFrequency());
        if (i10 == -1) {
            i10 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i10);
        try {
            appCompatTextViewAutoSizeHelper$Impl.computeAndSetTextDirection(staticLayout$BuilderObtain, textView);
        } catch (ClassCastException unused) {
            Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return staticLayout$BuilderObtain.build();
    }
}
