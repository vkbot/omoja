package s3;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build$VERSION;
import android.text.Layout$Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils$TruncateAt;
import android.view.Gravity;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.GravityCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {
    public CharSequence B;
    public CharSequence C;
    public boolean D;
    public float F;
    public float G;
    public float H;
    public float I;
    public float J;
    public int K;
    public int L;
    public int[] M;
    public boolean N;
    public final TextPaint O;
    public final TextPaint P;
    public TimeInterpolator Q;
    public TimeInterpolator R;
    public float S;
    public float T;
    public float U;
    public ColorStateList V;
    public float W;
    public float X;
    public float Y;
    public StaticLayout Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextInputLayout f5244a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public float f5245a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f5246b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public float f5247b0;
    public final Rect c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public float f5248c0;
    public final Rect d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public CharSequence f5249d0;
    public final RectF e;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f5259j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f5261k;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f5262k0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5263l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f5264m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f5265n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f5266o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f5267p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f5268q;
    public float r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Typeface f5269s;
    public Typeface t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Typeface f5270u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Typeface f5271v;
    public Typeface w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Typeface f5272x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Typeface f5273y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public w3.a f5274z;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5251f = 16;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5253g = 16;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f5255h = 15.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f5257i = 15.0f;
    public final TextUtils$TruncateAt A = TextUtils$TruncateAt.END;
    public final boolean E = true;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f5250e0 = 1;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f5252f0 = 1;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final float f5254g0 = 1.0f;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final int f5256h0 = 1;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f5258i0 = -1;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f5260j0 = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(TextInputLayout textInputLayout) {
        this.f5244a = textInputLayout;
        TextPaint textPaint = new TextPaint(129);
        this.O = textPaint;
        this.P = new TextPaint(textPaint);
        this.d = new Rect();
        this.c = new Rect();
        this.e = new RectF();
        i(textInputLayout.getContext().getResources().getConfiguration());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int a(int i9, int i10, float f8) {
        float f9 = 1.0f - f8;
        return Color.argb(Math.round((Color.alpha(i10) * f8) + (Color.alpha(i9) * f9)), Math.round((Color.red(i10) * f8) + (Color.red(i9) * f9)), Math.round((Color.green(i10) * f8) + (Color.green(i9) * f9)), Math.round((Color.blue(i10) * f8) + (Color.blue(i9) * f9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float h(float f8, float f9, float f10, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f10 = timeInterpolator.getInterpolation(f10);
        }
        return b3.a.a(f8, f9, f10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        float f8 = this.f5246b;
        Rect rect = this.c;
        float f9 = rect.left;
        Rect rect2 = this.d;
        float fH = h(f9, rect2.left, f8, this.Q);
        RectF rectF = this.e;
        rectF.left = fH;
        rectF.top = h(this.f5264m, this.f5265n, f8, this.Q);
        rectF.right = h(rect.right, rect2.right, f8, this.Q);
        rectF.bottom = h(rect.bottom, rect2.bottom, f8, this.Q);
        this.f5268q = h(this.f5266o, this.f5267p, f8, this.Q);
        this.r = h(this.f5264m, this.f5265n, f8, this.Q);
        d(f8, false);
        TextInputLayout textInputLayout = this.f5244a;
        textInputLayout.postInvalidateOnAnimation();
        FastOutSlowInInterpolator fastOutSlowInInterpolator = b3.a.f306b;
        this.f5247b0 = 1.0f - h(0.0f, 1.0f, 1.0f - f8, fastOutSlowInInterpolator);
        textInputLayout.postInvalidateOnAnimation();
        this.f5248c0 = h(1.0f, 0.0f, f8, fastOutSlowInInterpolator);
        textInputLayout.postInvalidateOnAnimation();
        ColorStateList colorStateList = this.f5261k;
        ColorStateList colorStateList2 = this.f5259j;
        TextPaint textPaint = this.O;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(a(g(colorStateList2), g(this.f5261k), f8));
        } else {
            textPaint.setColor(g(colorStateList));
        }
        float f10 = this.W;
        float f11 = this.X;
        if (f10 != f11) {
            textPaint.setLetterSpacing(h(f11, f10, f8, fastOutSlowInInterpolator));
        } else {
            textPaint.setLetterSpacing(f10);
        }
        this.H = b3.a.a(0.0f, this.S, f8);
        this.I = b3.a.a(0.0f, this.T, f8);
        this.J = b3.a.a(0.0f, this.U, f8);
        int iA = a(0, g(this.V), f8);
        this.K = iA;
        textPaint.setShadowLayer(this.H, this.I, this.J, iA);
        textInputLayout.postInvalidateOnAnimation();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean c(CharSequence charSequence) {
        boolean z8 = this.f5244a.getLayoutDirection() == 1;
        if (this.E) {
            return (z8 ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(float f8, boolean z8) {
        float f9;
        Typeface typeface;
        float f10;
        if (this.B == null) {
            return;
        }
        float fWidth = this.d.width();
        float fWidth2 = this.c.width();
        if (Math.abs(f8 - 1.0f) < 1.0E-5f) {
            f9 = o() ? this.f5257i : this.f5255h;
            f10 = o() ? this.W : this.X;
            this.F = o() ? 1.0f : h(this.f5255h, this.f5257i, f8, this.R) / this.f5255h;
            if (!o()) {
                fWidth = fWidth2;
            }
            typeface = this.f5269s;
            fWidth2 = fWidth;
        } else {
            f9 = this.f5255h;
            float f11 = this.X;
            typeface = this.f5271v;
            if (Math.abs(f8 - 0.0f) < 1.0E-5f) {
                this.F = 1.0f;
            } else {
                this.F = h(this.f5255h, this.f5257i, f8, this.R) / this.f5255h;
            }
            float f12 = this.f5257i / this.f5255h;
            float f13 = fWidth2 * f12;
            if (!z8 && f13 > fWidth && o()) {
                fWidth2 = Math.min(fWidth / f12, fWidth2);
            }
            f10 = f11;
        }
        int i9 = f8 < 0.5f ? this.f5250e0 : this.f5252f0;
        TextPaint textPaint = this.O;
        boolean z9 = false;
        if (fWidth2 > 0.0f) {
            boolean z10 = this.G != f9;
            boolean z11 = this.Y != f10;
            boolean z12 = this.f5273y != typeface;
            StaticLayout staticLayout = this.Z;
            boolean z13 = z10 || z11 || (staticLayout != null && (fWidth2 > ((float) staticLayout.getWidth()) ? 1 : (fWidth2 == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z12 || (this.L != i9) || this.N;
            this.G = f9;
            this.Y = f10;
            this.f5273y = typeface;
            this.N = false;
            this.L = i9;
            textPaint.setLinearText(this.F != 1.0f);
            z9 = z13;
        }
        if (this.C == null || z9) {
            textPaint.setTextSize(this.G);
            textPaint.setTypeface(this.f5273y);
            textPaint.setLetterSpacing(this.Y);
            boolean zC = c(this.B);
            this.D = zC;
            StaticLayout staticLayoutE = e(((this.f5250e0 > 1 || this.f5252f0 > 1) && !zC) ? i9 : 1, textPaint, this.B, fWidth2 * (o() ? 1.0f : this.F), this.D);
            this.Z = staticLayoutE;
            this.C = staticLayoutE.getText();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final StaticLayout e(int i9, TextPaint textPaint, CharSequence charSequence, float f8, boolean z8) {
        Layout$Alignment layout$Alignment;
        if (i9 == 1) {
            layout$Alignment = Layout$Alignment.ALIGN_NORMAL;
        } else {
            int absoluteGravity = Gravity.getAbsoluteGravity(this.f5251f, this.D ? 1 : 0) & 7;
            if (absoluteGravity != 1) {
                boolean z9 = this.D;
                if (absoluteGravity != 5) {
                    layout$Alignment = z9 ? Layout$Alignment.ALIGN_OPPOSITE : Layout$Alignment.ALIGN_NORMAL;
                } else {
                    layout$Alignment = z9 ? Layout$Alignment.ALIGN_NORMAL : Layout$Alignment.ALIGN_OPPOSITE;
                }
            } else {
                layout$Alignment = Layout$Alignment.ALIGN_CENTER;
            }
        }
        h hVar = new h(charSequence, textPaint, (int) f8);
        hVar.f5288l = this.A;
        hVar.f5287k = z8;
        hVar.e = layout$Alignment;
        hVar.f5286j = false;
        hVar.f5282f = i9;
        hVar.f5283g = 0.0f;
        hVar.f5284h = this.f5254g0;
        hVar.f5285i = this.f5256h0;
        hVar.f5289m = null;
        return (StaticLayout) Preconditions.checkNotNull(hVar.a());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float f() {
        int i9 = this.f5258i0;
        if (i9 != -1) {
            return i9;
        }
        float f8 = this.f5257i;
        TextPaint textPaint = this.P;
        textPaint.setTextSize(f8);
        textPaint.setTypeface(this.f5269s);
        textPaint.setLetterSpacing(this.W);
        return -textPaint.ascent();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int g(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.M;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(Configuration configuration) {
        if (Build$VERSION.SDK_INT >= 31) {
            Typeface typeface = this.f5270u;
            if (typeface != null) {
                this.t = w3.i.a(configuration, typeface);
            }
            Typeface typeface2 = this.f5272x;
            if (typeface2 != null) {
                this.w = w3.i.a(configuration, typeface2);
            }
            Typeface typeface3 = this.t;
            if (typeface3 == null) {
                typeface3 = this.f5270u;
            }
            this.f5269s = typeface3;
            Typeface typeface4 = this.w;
            if (typeface4 == null) {
                typeface4 = this.f5272x;
            }
            this.f5271v = typeface4;
            j(true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j(boolean z8) {
        float fMeasureText;
        TextInputLayout textInputLayout = this.f5244a;
        if ((textInputLayout.getHeight() <= 0 || textInputLayout.getWidth() <= 0) && !z8) {
            return;
        }
        d(1.0f, z8);
        CharSequence charSequence = this.C;
        TextPaint textPaint = this.O;
        if (charSequence != null && this.Z != null) {
            boolean zO = o();
            CharSequence charSequenceEllipsize = this.C;
            if (zO) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint, this.Z.getWidth(), this.A);
            }
            this.f5249d0 = charSequenceEllipsize;
        }
        CharSequence charSequence2 = this.f5249d0;
        if (charSequence2 != null) {
            this.f5245a0 = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.f5245a0 = 0.0f;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(this.f5253g, this.D ? 1 : 0);
        int i9 = absoluteGravity & 112;
        Rect rect = this.d;
        if (i9 == 48) {
            this.f5265n = rect.top;
        } else if (i9 != 80) {
            this.f5265n = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.f5265n = textPaint.ascent() + rect.bottom;
        }
        int i10 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i10 == 1) {
            this.f5267p = rect.centerX() - (this.f5245a0 / 2.0f);
        } else if (i10 != 5) {
            this.f5267p = rect.left;
        } else {
            this.f5267p = rect.right - this.f5245a0;
        }
        if (this.f5245a0 <= rect.width()) {
            float f8 = this.f5267p;
            float fMax = Math.max(0.0f, rect.left - f8) + f8;
            this.f5267p = fMax;
            this.f5267p = Math.min(0.0f, rect.right - (this.f5245a0 + fMax)) + fMax;
        }
        float f9 = this.f5257i;
        TextPaint textPaint2 = this.P;
        textPaint2.setTextSize(f9);
        textPaint2.setTypeface(this.f5269s);
        textPaint2.setLetterSpacing(this.W);
        if (textPaint2.descent() + (-textPaint2.ascent()) <= rect.height()) {
            float f10 = this.f5265n;
            float fMax2 = Math.max(0.0f, rect.top - f10) + f10;
            this.f5265n = fMax2;
            this.f5265n = Math.min(0.0f, rect.bottom - (f() + fMax2)) + fMax2;
        }
        d(0.0f, z8);
        StaticLayout staticLayout = this.Z;
        float height = staticLayout != null ? staticLayout.getHeight() : 0.0f;
        StaticLayout staticLayout2 = this.Z;
        if (staticLayout2 == null || this.f5250e0 <= 1) {
            CharSequence charSequence3 = this.C;
            fMeasureText = charSequence3 != null ? textPaint.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        } else {
            fMeasureText = staticLayout2.getWidth();
        }
        StaticLayout staticLayout3 = this.Z;
        this.f5263l = staticLayout3 != null ? staticLayout3.getLineCount() : 0;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.f5251f, this.D ? 1 : 0);
        int i11 = absoluteGravity2 & 112;
        Rect rect2 = this.c;
        if (i11 == 48) {
            this.f5264m = rect2.top;
        } else if (i11 != 80) {
            this.f5264m = rect2.centerY() - (height / 2.0f);
        } else {
            this.f5264m = (rect2.bottom - height) + (this.f5262k0 ? textPaint.descent() : 0.0f);
        }
        int i12 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i12 == 1) {
            this.f5266o = rect2.centerX() - (fMeasureText / 2.0f);
        } else if (i12 != 5) {
            this.f5266o = rect2.left;
        } else {
            this.f5266o = rect2.right - fMeasureText;
        }
        d(this.f5246b, false);
        textInputLayout.postInvalidateOnAnimation();
        b();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void k(ColorStateList colorStateList) {
        if (this.f5261k == colorStateList && this.f5259j == colorStateList) {
            return;
        }
        this.f5261k = colorStateList;
        this.f5259j = colorStateList;
        j(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean l(Typeface typeface) {
        w3.a aVar = this.f5274z;
        if (aVar != null) {
            aVar.c = true;
        }
        if (this.f5270u == typeface) {
            return false;
        }
        this.f5270u = typeface;
        Typeface typefaceA = w3.i.a(this.f5244a.getContext().getResources().getConfiguration(), typeface);
        this.t = typefaceA;
        if (typefaceA == null) {
            typefaceA = this.f5270u;
        }
        this.f5269s = typefaceA;
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void m(float f8) {
        float fClamp = MathUtils.clamp(f8, 0.0f, 1.0f);
        if (fClamp != this.f5246b) {
            this.f5246b = fClamp;
            b();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n(Typeface typeface) {
        boolean z8;
        boolean zL = l(typeface);
        if (this.f5272x != typeface) {
            this.f5272x = typeface;
            Typeface typefaceA = w3.i.a(this.f5244a.getContext().getResources().getConfiguration(), typeface);
            this.w = typefaceA;
            if (typefaceA == null) {
                typefaceA = this.f5272x;
            }
            this.f5271v = typefaceA;
            z8 = true;
        } else {
            z8 = false;
        }
        if (zL || z8) {
            j(false);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean o() {
        return this.f5252f0 == 1;
    }
}
