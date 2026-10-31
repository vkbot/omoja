package s3;

import android.text.Layout$Alignment;
import android.text.StaticLayout;
import android.text.StaticLayout$Builder;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils$TruncateAt;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CharSequence f5280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextPaint f5281b;
    public final int c;
    public int d;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f5287k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public androidx.fragment.app.h f5289m;
    public Layout$Alignment e = Layout$Alignment.ALIGN_NORMAL;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5282f = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f5283g = 0.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f5284h = 1.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5285i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5286j = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public TextUtils$TruncateAt f5288l = null;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(CharSequence charSequence, TextPaint textPaint, int i9) {
        this.f5280a = charSequence;
        this.f5281b = textPaint;
        this.c = i9;
        this.d = charSequence.length();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final StaticLayout a() {
        if (this.f5280a == null) {
            this.f5280a = "";
        }
        int iMax = Math.max(0, this.c);
        CharSequence charSequenceEllipsize = this.f5280a;
        int i9 = this.f5282f;
        TextPaint textPaint = this.f5281b;
        if (i9 == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint, iMax, this.f5288l);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.d);
        this.d = iMin;
        if (this.f5287k && this.f5282f == 1) {
            this.e = Layout$Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout$Builder staticLayout$BuilderObtain = StaticLayout$Builder.obtain(charSequenceEllipsize, 0, iMin, textPaint, iMax);
        staticLayout$BuilderObtain.setAlignment(this.e);
        staticLayout$BuilderObtain.setIncludePad(this.f5286j);
        staticLayout$BuilderObtain.setTextDirection(this.f5287k ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils$TruncateAt textUtils$TruncateAt = this.f5288l;
        if (textUtils$TruncateAt != null) {
            staticLayout$BuilderObtain.setEllipsize(textUtils$TruncateAt);
        }
        staticLayout$BuilderObtain.setMaxLines(this.f5282f);
        float f8 = this.f5283g;
        if (f8 != 0.0f || this.f5284h != 1.0f) {
            staticLayout$BuilderObtain.setLineSpacing(f8, this.f5284h);
        }
        if (this.f5282f > 1) {
            staticLayout$BuilderObtain.setHyphenationFrequency(this.f5285i);
        }
        androidx.fragment.app.h hVar = this.f5289m;
        if (hVar != null) {
            staticLayout$BuilderObtain.setBreakStrategy(((TextInputLayout) hVar.c).f1416v.getBreakStrategy());
        }
        return staticLayout$BuilderObtain.build();
    }
}
