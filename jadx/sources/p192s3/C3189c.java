package p192s3;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Gravity;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.GravityCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.textfield.TextInputLayout;
import p018b3.AbstractC0884a;
import p228w3.AbstractC3524i;
import p228w3.C3516a;

/* JADX INFO: renamed from: s3.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3189c {

    /* JADX INFO: renamed from: B */
    public CharSequence f9279B;

    /* JADX INFO: renamed from: C */
    public CharSequence f9280C;

    /* JADX INFO: renamed from: D */
    public boolean f9281D;

    /* JADX INFO: renamed from: F */
    public float f9283F;

    /* JADX INFO: renamed from: G */
    public float f9284G;

    /* JADX INFO: renamed from: H */
    public float f9285H;

    /* JADX INFO: renamed from: I */
    public float f9286I;

    /* JADX INFO: renamed from: J */
    public float f9287J;

    /* JADX INFO: renamed from: K */
    public int f9288K;

    /* JADX INFO: renamed from: L */
    public int f9289L;

    /* JADX INFO: renamed from: M */
    public int[] f9290M;

    /* JADX INFO: renamed from: N */
    public boolean f9291N;

    /* JADX INFO: renamed from: O */
    public final TextPaint f9292O;

    /* JADX INFO: renamed from: P */
    public final TextPaint f9293P;

    /* JADX INFO: renamed from: Q */
    public TimeInterpolator f9294Q;

    /* JADX INFO: renamed from: R */
    public TimeInterpolator f9295R;

    /* JADX INFO: renamed from: S */
    public float f9296S;

    /* JADX INFO: renamed from: T */
    public float f9297T;

    /* JADX INFO: renamed from: U */
    public float f9298U;

    /* JADX INFO: renamed from: V */
    public ColorStateList f9299V;

    /* JADX INFO: renamed from: W */
    public float f9300W;

    /* JADX INFO: renamed from: X */
    public float f9301X;

    /* JADX INFO: renamed from: Y */
    public float f9302Y;

    /* JADX INFO: renamed from: Z */
    public StaticLayout f9303Z;

    /* JADX INFO: renamed from: a */
    public final TextInputLayout f9304a;

    /* JADX INFO: renamed from: a0 */
    public float f9305a0;

    /* JADX INFO: renamed from: b */
    public float f9306b;

    /* JADX INFO: renamed from: b0 */
    public float f9307b0;

    /* JADX INFO: renamed from: c */
    public final Rect f9308c;

    /* JADX INFO: renamed from: c0 */
    public float f9309c0;

    /* JADX INFO: renamed from: d */
    public final Rect f9310d;

    /* JADX INFO: renamed from: d0 */
    public CharSequence f9311d0;

    /* JADX INFO: renamed from: e */
    public final RectF f9312e;

    /* JADX INFO: renamed from: j */
    public ColorStateList f9322j;

    /* JADX INFO: renamed from: k */
    public ColorStateList f9324k;

    /* JADX INFO: renamed from: k0 */
    public boolean f9325k0;

    /* JADX INFO: renamed from: l */
    public int f9326l;

    /* JADX INFO: renamed from: m */
    public float f9327m;

    /* JADX INFO: renamed from: n */
    public float f9328n;

    /* JADX INFO: renamed from: o */
    public float f9329o;

    /* JADX INFO: renamed from: p */
    public float f9330p;

    /* JADX INFO: renamed from: q */
    public float f9331q;

    /* JADX INFO: renamed from: r */
    public float f9332r;

    /* JADX INFO: renamed from: s */
    public Typeface f9333s;

    /* JADX INFO: renamed from: t */
    public Typeface f9334t;

    /* JADX INFO: renamed from: u */
    public Typeface f9335u;

    /* JADX INFO: renamed from: v */
    public Typeface f9336v;

    /* JADX INFO: renamed from: w */
    public Typeface f9337w;

    /* JADX INFO: renamed from: x */
    public Typeface f9338x;

    /* JADX INFO: renamed from: y */
    public Typeface f9339y;

    /* JADX INFO: renamed from: z */
    public C3516a f9340z;

    /* JADX INFO: renamed from: f */
    public int f9314f = 16;

    /* JADX INFO: renamed from: g */
    public int f9316g = 16;

    /* JADX INFO: renamed from: h */
    public float f9318h = 15.0f;

    /* JADX INFO: renamed from: i */
    public float f9320i = 15.0f;

    /* JADX INFO: renamed from: A */
    public final TextUtils.TruncateAt f9278A = TextUtils.TruncateAt.END;

    /* JADX INFO: renamed from: E */
    public final boolean f9282E = true;

    /* JADX INFO: renamed from: e0 */
    public int f9313e0 = 1;

    /* JADX INFO: renamed from: f0 */
    public int f9315f0 = 1;

    /* JADX INFO: renamed from: g0 */
    public final float f9317g0 = 1.0f;

    /* JADX INFO: renamed from: h0 */
    public final int f9319h0 = 1;

    /* JADX INFO: renamed from: i0 */
    public int f9321i0 = -1;

    /* JADX INFO: renamed from: j0 */
    public int f9323j0 = -1;

    public C3189c(TextInputLayout textInputLayout) {
        this.f9304a = textInputLayout;
        TextPaint textPaint = new TextPaint(129);
        this.f9292O = textPaint;
        this.f9293P = new TextPaint(textPaint);
        this.f9310d = new Rect();
        this.f9308c = new Rect();
        this.f9312e = new RectF();
        m5121i(textInputLayout.getContext().getResources().getConfiguration());
    }

    /* JADX INFO: renamed from: a */
    public static int m5113a(int i10, int i11, float f8) {
        float f10 = 1.0f - f8;
        return Color.argb(Math.round((Color.alpha(i11) * f8) + (Color.alpha(i10) * f10)), Math.round((Color.red(i11) * f8) + (Color.red(i10) * f10)), Math.round((Color.green(i11) * f8) + (Color.green(i10) * f10)), Math.round((Color.blue(i11) * f8) + (Color.blue(i10) * f10)));
    }

    /* JADX INFO: renamed from: h */
    public static float m5114h(float f8, float f10, float f11, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f11 = timeInterpolator.getInterpolation(f11);
        }
        return AbstractC0884a.m1015a(f8, f10, f11);
    }

    /* JADX INFO: renamed from: b */
    public final void m5115b() {
        float f8 = this.f9306b;
        Rect rect = this.f9308c;
        float f10 = rect.left;
        Rect rect2 = this.f9310d;
        float fM5114h = m5114h(f10, rect2.left, f8, this.f9294Q);
        RectF rectF = this.f9312e;
        rectF.left = fM5114h;
        rectF.top = m5114h(this.f9327m, this.f9328n, f8, this.f9294Q);
        rectF.right = m5114h(rect.right, rect2.right, f8, this.f9294Q);
        rectF.bottom = m5114h(rect.bottom, rect2.bottom, f8, this.f9294Q);
        this.f9331q = m5114h(this.f9329o, this.f9330p, f8, this.f9294Q);
        this.f9332r = m5114h(this.f9327m, this.f9328n, f8, this.f9294Q);
        m5117d(f8, false);
        TextInputLayout textInputLayout = this.f9304a;
        textInputLayout.postInvalidateOnAnimation();
        FastOutSlowInInterpolator fastOutSlowInInterpolator = AbstractC0884a.f662b;
        this.f9307b0 = 1.0f - m5114h(0.0f, 1.0f, 1.0f - f8, fastOutSlowInInterpolator);
        textInputLayout.postInvalidateOnAnimation();
        this.f9309c0 = m5114h(1.0f, 0.0f, f8, fastOutSlowInInterpolator);
        textInputLayout.postInvalidateOnAnimation();
        ColorStateList colorStateList = this.f9324k;
        ColorStateList colorStateList2 = this.f9322j;
        TextPaint textPaint = this.f9292O;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(m5113a(m5120g(colorStateList2), m5120g(this.f9324k), f8));
        } else {
            textPaint.setColor(m5120g(colorStateList));
        }
        float f11 = this.f9300W;
        float f12 = this.f9301X;
        if (f11 != f12) {
            textPaint.setLetterSpacing(m5114h(f12, f11, f8, fastOutSlowInInterpolator));
        } else {
            textPaint.setLetterSpacing(f11);
        }
        this.f9285H = AbstractC0884a.m1015a(0.0f, this.f9296S, f8);
        this.f9286I = AbstractC0884a.m1015a(0.0f, this.f9297T, f8);
        this.f9287J = AbstractC0884a.m1015a(0.0f, this.f9298U, f8);
        int iM5113a = m5113a(0, m5120g(this.f9299V), f8);
        this.f9288K = iM5113a;
        textPaint.setShadowLayer(this.f9285H, this.f9286I, this.f9287J, iM5113a);
        textInputLayout.postInvalidateOnAnimation();
    }

    /* JADX INFO: renamed from: c */
    public final boolean m5116c(CharSequence charSequence) {
        boolean z9 = this.f9304a.getLayoutDirection() == 1;
        if (this.f9282E) {
            return (z9 ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
        }
        return z9;
    }

    /* JADX INFO: renamed from: d */
    public final void m5117d(float f8, boolean z9) {
        float f10;
        Typeface typeface;
        float f11;
        if (this.f9279B == null) {
            return;
        }
        float fWidth = this.f9310d.width();
        float fWidth2 = this.f9308c.width();
        if (Math.abs(f8 - 1.0f) < 1.0E-5f) {
            f10 = m5127o() ? this.f9320i : this.f9318h;
            f11 = m5127o() ? this.f9300W : this.f9301X;
            this.f9283F = m5127o() ? 1.0f : m5114h(this.f9318h, this.f9320i, f8, this.f9295R) / this.f9318h;
            if (!m5127o()) {
                fWidth = fWidth2;
            }
            typeface = this.f9333s;
            fWidth2 = fWidth;
        } else {
            f10 = this.f9318h;
            float f12 = this.f9301X;
            typeface = this.f9336v;
            if (Math.abs(f8 - 0.0f) < 1.0E-5f) {
                this.f9283F = 1.0f;
            } else {
                this.f9283F = m5114h(this.f9318h, this.f9320i, f8, this.f9295R) / this.f9318h;
            }
            float f13 = this.f9320i / this.f9318h;
            float f14 = fWidth2 * f13;
            if (!z9 && f14 > fWidth && m5127o()) {
                fWidth2 = Math.min(fWidth / f13, fWidth2);
            }
            f11 = f12;
        }
        int i10 = f8 < 0.5f ? this.f9313e0 : this.f9315f0;
        TextPaint textPaint = this.f9292O;
        boolean z10 = false;
        if (fWidth2 > 0.0f) {
            boolean z11 = this.f9284G != f10;
            boolean z12 = this.f9302Y != f11;
            boolean z13 = this.f9339y != typeface;
            StaticLayout staticLayout = this.f9303Z;
            boolean z14 = z11 || z12 || (staticLayout != null && (fWidth2 > ((float) staticLayout.getWidth()) ? 1 : (fWidth2 == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z13 || (this.f9289L != i10) || this.f9291N;
            this.f9284G = f10;
            this.f9302Y = f11;
            this.f9339y = typeface;
            this.f9291N = false;
            this.f9289L = i10;
            textPaint.setLinearText(this.f9283F != 1.0f);
            z10 = z14;
        }
        if (this.f9280C == null || z10) {
            textPaint.setTextSize(this.f9284G);
            textPaint.setTypeface(this.f9339y);
            textPaint.setLetterSpacing(this.f9302Y);
            boolean zM5116c = m5116c(this.f9279B);
            this.f9281D = zM5116c;
            StaticLayout staticLayoutM5118e = m5118e(((this.f9313e0 > 1 || this.f9315f0 > 1) && !zM5116c) ? i10 : 1, textPaint, this.f9279B, fWidth2 * (m5127o() ? 1.0f : this.f9283F), this.f9281D);
            this.f9303Z = staticLayoutM5118e;
            this.f9280C = staticLayoutM5118e.getText();
        }
    }

    /* JADX INFO: renamed from: e */
    public final StaticLayout m5118e(int i10, TextPaint textPaint, CharSequence charSequence, float f8, boolean z9) {
        Layout.Alignment alignment;
        if (i10 == 1) {
            alignment = Layout.Alignment.ALIGN_NORMAL;
        } else {
            int absoluteGravity = Gravity.getAbsoluteGravity(this.f9314f, this.f9281D ? 1 : 0) & 7;
            if (absoluteGravity != 1) {
                boolean z10 = this.f9281D;
                if (absoluteGravity != 5) {
                    alignment = z10 ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
                } else {
                    alignment = z10 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
                }
            } else {
                alignment = Layout.Alignment.ALIGN_CENTER;
            }
        }
        C3194h c3194h = new C3194h(charSequence, textPaint, (int) f8);
        c3194h.f9360l = this.f9278A;
        c3194h.f9359k = z9;
        c3194h.f9353e = alignment;
        c3194h.f9358j = false;
        c3194h.f9354f = i10;
        c3194h.f9355g = 0.0f;
        c3194h.f9356h = this.f9317g0;
        c3194h.f9357i = this.f9319h0;
        c3194h.f9361m = null;
        return (StaticLayout) Preconditions.checkNotNull(c3194h.m5130a());
    }

    /* JADX INFO: renamed from: f */
    public final float m5119f() {
        int i10 = this.f9321i0;
        if (i10 != -1) {
            return i10;
        }
        float f8 = this.f9320i;
        TextPaint textPaint = this.f9293P;
        textPaint.setTextSize(f8);
        textPaint.setTypeface(this.f9333s);
        textPaint.setLetterSpacing(this.f9300W);
        return -textPaint.ascent();
    }

    /* JADX INFO: renamed from: g */
    public final int m5120g(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f9290M;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    /* JADX INFO: renamed from: i */
    public final void m5121i(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.f9335u;
            if (typeface != null) {
                this.f9334t = AbstractC3524i.m5599a(configuration, typeface);
            }
            Typeface typeface2 = this.f9338x;
            if (typeface2 != null) {
                this.f9337w = AbstractC3524i.m5599a(configuration, typeface2);
            }
            Typeface typeface3 = this.f9334t;
            if (typeface3 == null) {
                typeface3 = this.f9335u;
            }
            this.f9333s = typeface3;
            Typeface typeface4 = this.f9337w;
            if (typeface4 == null) {
                typeface4 = this.f9338x;
            }
            this.f9336v = typeface4;
            m5122j(true);
        }
    }

    /* JADX INFO: renamed from: j */
    public final void m5122j(boolean z9) {
        float fMeasureText;
        TextInputLayout textInputLayout = this.f9304a;
        if ((textInputLayout.getHeight() <= 0 || textInputLayout.getWidth() <= 0) && !z9) {
            return;
        }
        m5117d(1.0f, z9);
        CharSequence charSequence = this.f9280C;
        TextPaint textPaint = this.f9292O;
        if (charSequence != null && this.f9303Z != null) {
            boolean zM5127o = m5127o();
            CharSequence charSequenceEllipsize = this.f9280C;
            if (zM5127o) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint, this.f9303Z.getWidth(), this.f9278A);
            }
            this.f9311d0 = charSequenceEllipsize;
        }
        CharSequence charSequence2 = this.f9311d0;
        if (charSequence2 != null) {
            this.f9305a0 = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.f9305a0 = 0.0f;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(this.f9316g, this.f9281D ? 1 : 0);
        int i10 = absoluteGravity & 112;
        Rect rect = this.f9310d;
        if (i10 == 48) {
            this.f9328n = rect.top;
        } else if (i10 != 80) {
            this.f9328n = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.f9328n = textPaint.ascent() + rect.bottom;
        }
        int i11 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i11 == 1) {
            this.f9330p = rect.centerX() - (this.f9305a0 / 2.0f);
        } else if (i11 != 5) {
            this.f9330p = rect.left;
        } else {
            this.f9330p = rect.right - this.f9305a0;
        }
        if (this.f9305a0 <= rect.width()) {
            float f8 = this.f9330p;
            float fMax = Math.max(0.0f, rect.left - f8) + f8;
            this.f9330p = fMax;
            this.f9330p = Math.min(0.0f, rect.right - (this.f9305a0 + fMax)) + fMax;
        }
        float f10 = this.f9320i;
        TextPaint textPaint2 = this.f9293P;
        textPaint2.setTextSize(f10);
        textPaint2.setTypeface(this.f9333s);
        textPaint2.setLetterSpacing(this.f9300W);
        if (textPaint2.descent() + (-textPaint2.ascent()) <= rect.height()) {
            float f11 = this.f9328n;
            float fMax2 = Math.max(0.0f, rect.top - f11) + f11;
            this.f9328n = fMax2;
            this.f9328n = Math.min(0.0f, rect.bottom - (m5119f() + fMax2)) + fMax2;
        }
        m5117d(0.0f, z9);
        StaticLayout staticLayout = this.f9303Z;
        float height = staticLayout != null ? staticLayout.getHeight() : 0.0f;
        StaticLayout staticLayout2 = this.f9303Z;
        if (staticLayout2 == null || this.f9313e0 <= 1) {
            CharSequence charSequence3 = this.f9280C;
            fMeasureText = charSequence3 != null ? textPaint.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        } else {
            fMeasureText = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.f9303Z;
        this.f9326l = staticLayout3 != null ? staticLayout3.getLineCount() : 0;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.f9314f, this.f9281D ? 1 : 0);
        int i12 = absoluteGravity2 & 112;
        Rect rect2 = this.f9308c;
        if (i12 == 48) {
            this.f9327m = rect2.top;
        } else if (i12 != 80) {
            this.f9327m = rect2.centerY() - (height / 2.0f);
        } else {
            this.f9327m = (rect2.bottom - height) + (this.f9325k0 ? textPaint.descent() : 0.0f);
        }
        int i13 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i13 == 1) {
            this.f9329o = rect2.centerX() - (fMeasureText / 2.0f);
        } else if (i13 != 5) {
            this.f9329o = rect2.left;
        } else {
            this.f9329o = rect2.right - fMeasureText;
        }
        m5117d(this.f9306b, false);
        textInputLayout.postInvalidateOnAnimation();
        m5115b();
    }

    /* JADX INFO: renamed from: k */
    public final void m5123k(ColorStateList colorStateList) {
        if (this.f9324k == colorStateList && this.f9322j == colorStateList) {
            return;
        }
        this.f9324k = colorStateList;
        this.f9322j = colorStateList;
        m5122j(false);
    }

    /* JADX INFO: renamed from: l */
    public final boolean m5124l(Typeface typeface) {
        C3516a c3516a = this.f9340z;
        if (c3516a != null) {
            c3516a.f10434c = true;
        }
        if (this.f9335u == typeface) {
            return false;
        }
        this.f9335u = typeface;
        Typeface typefaceM5599a = AbstractC3524i.m5599a(this.f9304a.getContext().getResources().getConfiguration(), typeface);
        this.f9334t = typefaceM5599a;
        if (typefaceM5599a == null) {
            typefaceM5599a = this.f9335u;
        }
        this.f9333s = typefaceM5599a;
        return true;
    }

    /* JADX INFO: renamed from: m */
    public final void m5125m(float f8) {
        float fClamp = MathUtils.clamp(f8, 0.0f, 1.0f);
        if (fClamp != this.f9306b) {
            this.f9306b = fClamp;
            m5115b();
        }
    }

    /* JADX INFO: renamed from: n */
    public final void m5126n(Typeface typeface) {
        boolean z9;
        boolean zM5124l = m5124l(typeface);
        if (this.f9338x != typeface) {
            this.f9338x = typeface;
            Typeface typefaceM5599a = AbstractC3524i.m5599a(this.f9304a.getContext().getResources().getConfiguration(), typeface);
            this.f9337w = typefaceM5599a;
            if (typefaceM5599a == null) {
                typefaceM5599a = this.f9338x;
            }
            this.f9336v = typefaceM5599a;
            z9 = true;
        } else {
            z9 = false;
        }
        if (zM5124l || z9) {
            m5122j(false);
        }
    }

    /* JADX INFO: renamed from: o */
    public final boolean m5127o() {
        return this.f9315f0 == 1;
    }
}
