package p192s3;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.fragment.app.C0566h;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: renamed from: s3.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3194h {

    /* JADX INFO: renamed from: a */
    public CharSequence f9349a;

    /* JADX INFO: renamed from: b */
    public final TextPaint f9350b;

    /* JADX INFO: renamed from: c */
    public final int f9351c;

    /* JADX INFO: renamed from: d */
    public int f9352d;

    /* JADX INFO: renamed from: k */
    public boolean f9359k;

    /* JADX INFO: renamed from: m */
    public C0566h f9361m;

    /* JADX INFO: renamed from: e */
    public Layout.Alignment f9353e = Layout.Alignment.ALIGN_NORMAL;

    /* JADX INFO: renamed from: f */
    public int f9354f = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: g */
    public float f9355g = 0.0f;

    /* JADX INFO: renamed from: h */
    public float f9356h = 1.0f;

    /* JADX INFO: renamed from: i */
    public int f9357i = 1;

    /* JADX INFO: renamed from: j */
    public boolean f9358j = true;

    /* JADX INFO: renamed from: l */
    public TextUtils.TruncateAt f9360l = null;

    public C3194h(CharSequence charSequence, TextPaint textPaint, int i10) {
        this.f9349a = charSequence;
        this.f9350b = textPaint;
        this.f9351c = i10;
        this.f9352d = charSequence.length();
    }

    /* JADX INFO: renamed from: a */
    public final StaticLayout m5130a() {
        if (this.f9349a == null) {
            this.f9349a = "";
        }
        int iMax = Math.max(0, this.f9351c);
        CharSequence charSequenceEllipsize = this.f9349a;
        int i10 = this.f9354f;
        TextPaint textPaint = this.f9350b;
        if (i10 == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint, iMax, this.f9360l);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.f9352d);
        this.f9352d = iMin;
        if (this.f9359k && this.f9354f == 1) {
            this.f9353e = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, 0, iMin, textPaint, iMax);
        builderObtain.setAlignment(this.f9353e);
        builderObtain.setIncludePad(this.f9358j);
        builderObtain.setTextDirection(this.f9359k ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f9360l;
        if (truncateAt != null) {
            builderObtain.setEllipsize(truncateAt);
        }
        builderObtain.setMaxLines(this.f9354f);
        float f8 = this.f9355g;
        if (f8 != 0.0f || this.f9356h != 1.0f) {
            builderObtain.setLineSpacing(f8, this.f9356h);
        }
        if (this.f9354f > 1) {
            builderObtain.setHyphenationFrequency(this.f9357i);
        }
        C0566h c0566h = this.f9361m;
        if (c0566h != null) {
            builderObtain.setBreakStrategy(((TextInputLayout) c0566h.f453c).f2554v.getBreakStrategy());
        }
        return builderObtain.build();
    }
}
