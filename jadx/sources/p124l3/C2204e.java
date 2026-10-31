package p124l3;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.material.chip.Chip;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p018b3.C0888e;
import p192s3.AbstractC3203q;
import p192s3.C3196j;
import p192s3.InterfaceC3195i;
import p228w3.C3521f;
import p238x3.AbstractC3567a;
import p258z3.C3711a;
import p258z3.C3722h;
import p258z3.C3725k;
import p258z3.C3728n;

/* JADX INFO: renamed from: l3.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2204e extends C3725k implements Drawable.Callback, InterfaceC3195i {

    /* JADX INFO: renamed from: Q0 */
    public static final int[] f5733Q0 = {R.attr.state_enabled};

    /* JADX INFO: renamed from: R0 */
    public static final ShapeDrawable f5734R0 = new ShapeDrawable(new OvalShape());

    /* JADX INFO: renamed from: A0 */
    public int f5735A0;

    /* JADX INFO: renamed from: B0 */
    public int f5736B0;

    /* JADX INFO: renamed from: C0 */
    public boolean f5737C0;

    /* JADX INFO: renamed from: D0 */
    public int f5738D0;

    /* JADX INFO: renamed from: E0 */
    public int f5739E0;

    /* JADX INFO: renamed from: F0 */
    public ColorFilter f5740F0;

    /* JADX INFO: renamed from: G0 */
    public PorterDuffColorFilter f5741G0;

    /* JADX INFO: renamed from: H0 */
    public ColorStateList f5742H0;

    /* JADX INFO: renamed from: I */
    public ColorStateList f5743I;

    /* JADX INFO: renamed from: I0 */
    public PorterDuff.Mode f5744I0;

    /* JADX INFO: renamed from: J */
    public ColorStateList f5745J;

    /* JADX INFO: renamed from: J0 */
    public int[] f5746J0;

    /* JADX INFO: renamed from: K */
    public float f5747K;

    /* JADX INFO: renamed from: K0 */
    public ColorStateList f5748K0;

    /* JADX INFO: renamed from: L */
    public float f5749L;

    /* JADX INFO: renamed from: L0 */
    public WeakReference f5750L0;

    /* JADX INFO: renamed from: M */
    public ColorStateList f5751M;

    /* JADX INFO: renamed from: M0 */
    public TextUtils.TruncateAt f5752M0;

    /* JADX INFO: renamed from: N */
    public float f5753N;

    /* JADX INFO: renamed from: N0 */
    public boolean f5754N0;

    /* JADX INFO: renamed from: O */
    public ColorStateList f5755O;

    /* JADX INFO: renamed from: O0 */
    public int f5756O0;

    /* JADX INFO: renamed from: P */
    public CharSequence f5757P;

    /* JADX INFO: renamed from: P0 */
    public boolean f5758P0;

    /* JADX INFO: renamed from: Q */
    public boolean f5759Q;

    /* JADX INFO: renamed from: R */
    public Drawable f5760R;

    /* JADX INFO: renamed from: S */
    public ColorStateList f5761S;

    /* JADX INFO: renamed from: T */
    public float f5762T;

    /* JADX INFO: renamed from: U */
    public boolean f5763U;

    /* JADX INFO: renamed from: V */
    public boolean f5764V;

    /* JADX INFO: renamed from: W */
    public Drawable f5765W;

    /* JADX INFO: renamed from: X */
    public RippleDrawable f5766X;

    /* JADX INFO: renamed from: Y */
    public ColorStateList f5767Y;

    /* JADX INFO: renamed from: Z */
    public float f5768Z;

    /* JADX INFO: renamed from: a0 */
    public CharSequence f5769a0;

    /* JADX INFO: renamed from: b0 */
    public boolean f5770b0;

    /* JADX INFO: renamed from: c0 */
    public boolean f5771c0;

    /* JADX INFO: renamed from: d0 */
    public Drawable f5772d0;

    /* JADX INFO: renamed from: e0 */
    public ColorStateList f5773e0;

    /* JADX INFO: renamed from: f0 */
    public C0888e f5774f0;

    /* JADX INFO: renamed from: g0 */
    public C0888e f5775g0;

    /* JADX INFO: renamed from: h0 */
    public float f5776h0;

    /* JADX INFO: renamed from: i0 */
    public float f5777i0;

    /* JADX INFO: renamed from: j0 */
    public float f5778j0;

    /* JADX INFO: renamed from: k0 */
    public float f5779k0;

    /* JADX INFO: renamed from: l0 */
    public float f5780l0;

    /* JADX INFO: renamed from: m0 */
    public float f5781m0;

    /* JADX INFO: renamed from: n0 */
    public float f5782n0;

    /* JADX INFO: renamed from: o0 */
    public float f5783o0;

    /* JADX INFO: renamed from: p0 */
    public final Context f5784p0;

    /* JADX INFO: renamed from: q0 */
    public final Paint f5785q0;

    /* JADX INFO: renamed from: r0 */
    public final Paint.FontMetrics f5786r0;

    /* JADX INFO: renamed from: s0 */
    public final RectF f5787s0;

    /* JADX INFO: renamed from: t0 */
    public final PointF f5788t0;

    /* JADX INFO: renamed from: u0 */
    public final Path f5789u0;

    /* JADX INFO: renamed from: v0 */
    public final C3196j f5790v0;

    /* JADX INFO: renamed from: w0 */
    public int f5791w0;

    /* JADX INFO: renamed from: x0 */
    public int f5792x0;

    /* JADX INFO: renamed from: y0 */
    public int f5793y0;

    /* JADX INFO: renamed from: z0 */
    public int f5794z0;

    public C2204e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.example.navistart.R.attr.chipStyle, com.example.navistart.R.style.Widget_MaterialComponents_Chip_Action);
        this.f5749L = -1.0f;
        this.f5785q0 = new Paint(1);
        this.f5786r0 = new Paint.FontMetrics();
        this.f5787s0 = new RectF();
        this.f5788t0 = new PointF();
        this.f5789u0 = new Path();
        this.f5739E0 = 255;
        this.f5744I0 = PorterDuff.Mode.SRC_IN;
        this.f5750L0 = new WeakReference(null);
        m5944m(context);
        this.f5784p0 = context;
        C3196j c3196j = new C3196j(this);
        this.f5790v0 = c3196j;
        this.f5757P = "";
        c3196j.f9362a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = f5733Q0;
        setState(iArr);
        m3527W(iArr);
        this.f5754N0 = true;
        f5734R0.setTint(-1);
    }

    /* JADX INFO: renamed from: D */
    public static boolean m3504D(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    /* JADX INFO: renamed from: E */
    public static boolean m3505E(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* JADX INFO: renamed from: f0 */
    public static void m3506f0(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    /* JADX INFO: renamed from: A */
    public final float m3507A() {
        if (!m3534d0() && !m3533c0()) {
            return 0.0f;
        }
        float f8 = this.f5777i0;
        Drawable drawable = this.f5737C0 ? this.f5772d0 : this.f5760R;
        float intrinsicWidth = this.f5762T;
        if (intrinsicWidth <= 0.0f && drawable != null) {
            intrinsicWidth = drawable.getIntrinsicWidth();
        }
        return intrinsicWidth + f8 + this.f5778j0;
    }

    /* JADX INFO: renamed from: B */
    public final float m3508B() {
        if (m3535e0()) {
            return this.f5781m0 + this.f5768Z + this.f5782n0;
        }
        return 0.0f;
    }

    /* JADX INFO: renamed from: C */
    public final float m3509C() {
        return this.f5758P0 ? m5942k() : this.f5749L;
    }

    /* JADX INFO: renamed from: F */
    public final void m3510F() {
        InterfaceC2203d interfaceC2203d = (InterfaceC2203d) this.f5750L0.get();
        if (interfaceC2203d != null) {
            Chip chip = (Chip) interfaceC2203d;
            chip.m1791c(chip.f2243m);
            chip.requestLayout();
            chip.invalidateOutline();
        }
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00a0  */
    /* JADX INFO: renamed from: G */
    public final boolean m3511G(int[] iArr, int[] iArr2) {
        int colorForState;
        boolean z9;
        boolean z10;
        ColorStateList colorStateList;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList2 = this.f5743I;
        int iM5936d = m5936d(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f5791w0) : 0);
        boolean state = true;
        if (this.f5791w0 != iM5936d) {
            this.f5791w0 = iM5936d;
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.f5745J;
        int iM5936d2 = m5936d(colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.f5792x0) : 0);
        if (this.f5792x0 != iM5936d2) {
            this.f5792x0 = iM5936d2;
            zOnStateChange = true;
        }
        int iCompositeColors = ColorUtils.compositeColors(iM5936d2, iM5936d);
        if ((this.f5793y0 != iCompositeColors) | (this.f11048c.f11024d == null)) {
            this.f5793y0 = iCompositeColors;
            m5948q(ColorStateList.valueOf(iCompositeColors));
            zOnStateChange = true;
        }
        ColorStateList colorStateList4 = this.f5751M;
        int colorForState2 = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.f5794z0) : 0;
        if (this.f5794z0 != colorForState2) {
            this.f5794z0 = colorForState2;
            zOnStateChange = true;
        }
        if (this.f5748K0 != null) {
            int[] iArr3 = AbstractC3567a.f10626a;
            boolean z11 = false;
            boolean z12 = false;
            for (int i10 : iArr) {
                if (i10 == 16842910) {
                    z11 = true;
                } else if (i10 == 16842908 || i10 == 16842919 || i10 == 16843623) {
                    z12 = true;
                }
            }
            if (z11 && z12) {
                colorForState = this.f5748K0.getColorForState(iArr, this.f5735A0);
            } else {
                colorForState = 0;
            }
        } else {
            colorForState = 0;
        }
        if (this.f5735A0 != colorForState) {
            this.f5735A0 = colorForState;
        }
        C3521f c3521f = this.f5790v0.f9368g;
        int colorForState3 = (c3521f == null || (colorStateList = c3521f.f10451k) == null) ? 0 : colorStateList.getColorForState(iArr, this.f5736B0);
        if (this.f5736B0 != colorForState3) {
            this.f5736B0 = colorForState3;
            zOnStateChange = true;
        }
        int[] state2 = getState();
        if (state2 == null) {
            z9 = false;
            break;
        }
        int length = state2.length;
        int i11 = 0;
        while (true) {
            if (i11 < length) {
                if (state2[i11] == 16842912) {
                    if (this.f5770b0) {
                        z9 = true;
                        break;
                    }
                } else {
                    i11++;
                }
            }
            z9 = false;
            break;
        }
        if (this.f5737C0 == z9 || this.f5772d0 == null) {
            z10 = false;
        } else {
            float fM3507A = m3507A();
            this.f5737C0 = z9;
            if (fM3507A != m3507A()) {
                zOnStateChange = true;
                z10 = true;
            } else {
                z10 = false;
                zOnStateChange = true;
            }
        }
        ColorStateList colorStateList5 = this.f5742H0;
        int colorForState4 = colorStateList5 != null ? colorStateList5.getColorForState(iArr, this.f5738D0) : 0;
        if (this.f5738D0 != colorForState4) {
            this.f5738D0 = colorForState4;
            ColorStateList colorStateList6 = this.f5742H0;
            PorterDuff.Mode mode = this.f5744I0;
            this.f5741G0 = (colorStateList6 == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList6.getColorForState(getState(), 0), mode);
        } else {
            state = zOnStateChange;
        }
        if (m3505E(this.f5760R)) {
            state |= this.f5760R.setState(iArr);
        }
        if (m3505E(this.f5772d0)) {
            state |= this.f5772d0.setState(iArr);
        }
        if (m3505E(this.f5765W)) {
            int[] iArr4 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr4, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr4, iArr.length, iArr2.length);
            state |= this.f5765W.setState(iArr4);
        }
        if (m3505E(this.f5766X)) {
            state |= this.f5766X.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z10) {
            m3510F();
        }
        return state;
    }

    /* JADX INFO: renamed from: H */
    public final void m3512H(boolean z9) {
        if (this.f5770b0 != z9) {
            this.f5770b0 = z9;
            float fM3507A = m3507A();
            if (!z9 && this.f5737C0) {
                this.f5737C0 = false;
            }
            float fM3507A2 = m3507A();
            invalidateSelf();
            if (fM3507A != fM3507A2) {
                m3510F();
            }
        }
    }

    /* JADX INFO: renamed from: I */
    public final void m3513I(Drawable drawable) {
        if (this.f5772d0 != drawable) {
            float fM3507A = m3507A();
            this.f5772d0 = drawable;
            float fM3507A2 = m3507A();
            m3506f0(this.f5772d0);
            m3536y(this.f5772d0);
            invalidateSelf();
            if (fM3507A != fM3507A2) {
                m3510F();
            }
        }
    }

    /* JADX INFO: renamed from: J */
    public final void m3514J(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.f5773e0 != colorStateList) {
            this.f5773e0 = colorStateList;
            if (this.f5771c0 && (drawable = this.f5772d0) != null && this.f5770b0) {
                drawable.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: K */
    public final void m3515K(boolean z9) {
        if (this.f5771c0 != z9) {
            boolean zM3533c0 = m3533c0();
            this.f5771c0 = z9;
            boolean zM3533c1 = m3533c0();
            if (zM3533c0 != zM3533c1) {
                Drawable drawable = this.f5772d0;
                if (zM3533c1) {
                    m3536y(drawable);
                } else {
                    m3506f0(drawable);
                }
                invalidateSelf();
                m3510F();
            }
        }
    }

    /* JADX INFO: renamed from: L */
    public final void m3516L(float f8) {
        if (this.f5749L != f8) {
            this.f5749L = f8;
            C3728n c3728nM5963g = this.f11048c.f11021a.m5963g();
            c3728nM5963g.f11077e = new C3711a(f8);
            c3728nM5963g.f11078f = new C3711a(f8);
            c3728nM5963g.f11079g = new C3711a(f8);
            c3728nM5963g.f11080h = new C3711a(f8);
            setShapeAppearanceModel(c3728nM5963g.m5956a());
        }
    }

    /* JADX INFO: renamed from: M */
    public final void m3517M(Drawable drawable) {
        Drawable drawable2 = this.f5760R;
        Drawable drawableUnwrap = drawable2 != null ? DrawableCompat.unwrap(drawable2) : null;
        if (drawableUnwrap != drawable) {
            float fM3507A = m3507A();
            this.f5760R = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float fM3507A2 = m3507A();
            m3506f0(drawableUnwrap);
            if (m3534d0()) {
                m3536y(this.f5760R);
            }
            invalidateSelf();
            if (fM3507A != fM3507A2) {
                m3510F();
            }
        }
    }

    /* JADX INFO: renamed from: N */
    public final void m3518N(float f8) {
        if (this.f5762T != f8) {
            float fM3507A = m3507A();
            this.f5762T = f8;
            float fM3507A2 = m3507A();
            invalidateSelf();
            if (fM3507A != fM3507A2) {
                m3510F();
            }
        }
    }

    /* JADX INFO: renamed from: O */
    public final void m3519O(ColorStateList colorStateList) {
        this.f5763U = true;
        if (this.f5761S != colorStateList) {
            this.f5761S = colorStateList;
            if (m3534d0()) {
                this.f5760R.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: P */
    public final void m3520P(boolean z9) {
        if (this.f5759Q != z9) {
            boolean zM3534d0 = m3534d0();
            this.f5759Q = z9;
            boolean zM3534d1 = m3534d0();
            if (zM3534d0 != zM3534d1) {
                Drawable drawable = this.f5760R;
                if (zM3534d1) {
                    m3536y(drawable);
                } else {
                    m3506f0(drawable);
                }
                invalidateSelf();
                m3510F();
            }
        }
    }

    /* JADX INFO: renamed from: Q */
    public final void m3521Q(ColorStateList colorStateList) {
        if (this.f5751M != colorStateList) {
            this.f5751M = colorStateList;
            if (this.f5758P0) {
                C3722h c3722h = this.f11048c;
                if (c3722h.f11025e != colorStateList) {
                    c3722h.f11025e = colorStateList;
                    onStateChange(getState());
                }
            }
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: R */
    public final void m3522R(float f8) {
        if (this.f5753N != f8) {
            this.f5753N = f8;
            this.f5785q0.setStrokeWidth(f8);
            if (this.f5758P0) {
                this.f11048c.f11031k = f8;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    /* JADX INFO: renamed from: S */
    public final void m3523S(Drawable drawable) {
        Drawable drawable2 = this.f5765W;
        Drawable drawableUnwrap = drawable2 != null ? DrawableCompat.unwrap(drawable2) : null;
        if (drawableUnwrap != drawable) {
            float fM3508B = m3508B();
            this.f5765W = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            this.f5766X = new RippleDrawable(AbstractC3567a.m5684b(this.f5755O), this.f5765W, f5734R0);
            float fM3508B2 = m3508B();
            m3506f0(drawableUnwrap);
            if (m3535e0()) {
                m3536y(this.f5765W);
            }
            invalidateSelf();
            if (fM3508B != fM3508B2) {
                m3510F();
            }
        }
    }

    /* JADX INFO: renamed from: T */
    public final void m3524T(float f8) {
        if (this.f5782n0 != f8) {
            this.f5782n0 = f8;
            invalidateSelf();
            if (m3535e0()) {
                m3510F();
            }
        }
    }

    /* JADX INFO: renamed from: U */
    public final void m3525U(float f8) {
        if (this.f5768Z != f8) {
            this.f5768Z = f8;
            invalidateSelf();
            if (m3535e0()) {
                m3510F();
            }
        }
    }

    /* JADX INFO: renamed from: V */
    public final void m3526V(float f8) {
        if (this.f5781m0 != f8) {
            this.f5781m0 = f8;
            invalidateSelf();
            if (m3535e0()) {
                m3510F();
            }
        }
    }

    /* JADX INFO: renamed from: W */
    public final boolean m3527W(int[] iArr) {
        if (Arrays.equals(this.f5746J0, iArr)) {
            return false;
        }
        this.f5746J0 = iArr;
        if (m3535e0()) {
            return m3511G(getState(), iArr);
        }
        return false;
    }

    /* JADX INFO: renamed from: X */
    public final void m3528X(ColorStateList colorStateList) {
        if (this.f5767Y != colorStateList) {
            this.f5767Y = colorStateList;
            if (m3535e0()) {
                this.f5765W.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: Y */
    public final void m3529Y(boolean z9) {
        if (this.f5764V != z9) {
            boolean zM3535e0 = m3535e0();
            this.f5764V = z9;
            boolean zM3535e1 = m3535e0();
            if (zM3535e0 != zM3535e1) {
                Drawable drawable = this.f5765W;
                if (zM3535e1) {
                    m3536y(drawable);
                } else {
                    m3506f0(drawable);
                }
                invalidateSelf();
                m3510F();
            }
        }
    }

    /* JADX INFO: renamed from: Z */
    public final void m3530Z(float f8) {
        if (this.f5778j0 != f8) {
            float fM3507A = m3507A();
            this.f5778j0 = f8;
            float fM3507A2 = m3507A();
            invalidateSelf();
            if (fM3507A != fM3507A2) {
                m3510F();
            }
        }
    }

    @Override // p192s3.InterfaceC3195i
    /* JADX INFO: renamed from: a */
    public final void mo2262a() {
        m3510F();
        invalidateSelf();
    }

    /* JADX INFO: renamed from: a0 */
    public final void m3531a0(float f8) {
        if (this.f5777i0 != f8) {
            float fM3507A = m3507A();
            this.f5777i0 = f8;
            float fM3507A2 = m3507A();
            invalidateSelf();
            if (fM3507A != fM3507A2) {
                m3510F();
            }
        }
    }

    /* JADX INFO: renamed from: b0 */
    public final void m3532b0(ColorStateList colorStateList) {
        if (this.f5755O != colorStateList) {
            this.f5755O = colorStateList;
            this.f5748K0 = null;
            onStateChange(getState());
        }
    }

    /* JADX INFO: renamed from: c0 */
    public final boolean m3533c0() {
        return this.f5771c0 && this.f5772d0 != null && this.f5737C0;
    }

    /* JADX INFO: renamed from: d0 */
    public final boolean m3534d0() {
        return this.f5759Q && this.f5760R != null;
    }

    /* JADX WARN: Failed to calculate best type for var: r0v12 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v12 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r0v13 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v13 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r0v14 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v14 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r11v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r11v0 ??, new type: android.graphics.RectF
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r11v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r11v0 ??, new type: android.graphics.RectF
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v1 ??, new type: android.graphics.Canvas
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v1 ??, new type: android.graphics.Canvas
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v10 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v10 ??, new type: android.graphics.Canvas
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v2 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v2 ??, new type: android.graphics.Canvas
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v3 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v3 ??, new type: android.graphics.Canvas
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r1v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v5 ??, new type: android.graphics.Canvas
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r22v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r22v0 'this'  ??, new type: l3.e
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r2v10 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v10 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r3v13 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v13 ??, new type: android.graphics.drawable.RippleDrawable
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r3v14 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v14 ??, new type: float
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r3v55 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v55 ??, new type: android.graphics.drawable.Drawable
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r3v57 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v57 ??, new type: android.graphics.drawable.Drawable
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r7v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r7v0 ??, new type: android.graphics.Rect
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to calculate best type for var: r7v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r7v0 ??, new type: android.graphics.Rect
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$1(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /* JADX WARN: Failed to set immutable type for var: r22v0 'this'  ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r22v0 'this'  ??, new type: l3.e
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setImmutableType(TypeInferenceVisitor.java:111)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$0(TypeInferenceVisitor.java:102)
    	at java.base/java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:102)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r3v13 ??, new type: android.graphics.drawable.LayerDrawable
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderAllow(TypeUpdate.java:66)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryWiderObjects(FixTypesVisitor.java:795)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:249)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        */
    @Override // p258z3.C3725k, android.graphics.drawable.Drawable
    public final void draw(android.graphics.Canvas r23) {
        /*
            Method dump skipped, instruction units count: 727
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p124l3.C2204e.draw(android.graphics.Canvas):void");
    }

    /* JADX INFO: renamed from: e0 */
    public final boolean m3535e0() {
        return this.f5764V && this.f5765W != null;
    }

    @Override // p258z3.C3725k, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f5739E0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f5740F0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.f5747K;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        float fM3507A = m3507A() + this.f5776h0 + this.f5779k0;
        String string = this.f5757P.toString();
        C3196j c3196j = this.f5790v0;
        if (c3196j.f9366e) {
            c3196j.m5131a(string);
        }
        return Math.min(Math.round(m3508B() + c3196j.f9364c + fM3507A + this.f5780l0 + this.f5783o0), this.f5756O0);
    }

    @Override // p258z3.C3725k, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // p258z3.C3725k, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Outline outline2;
        if (this.f5758P0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline2 = outline;
            outline2.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.f5747K, this.f5749L);
        } else {
            outline.setRoundRect(bounds, this.f5749L);
            outline2 = outline;
        }
        outline2.setAlpha(this.f5739E0 / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // p258z3.C3725k, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        if (m3504D(this.f5743I) || m3504D(this.f5745J) || m3504D(this.f5751M)) {
            return true;
        }
        C3521f c3521f = this.f5790v0.f9368g;
        if (c3521f == null || (colorStateList = c3521f.f10451k) == null || !colorStateList.isStateful()) {
            return (this.f5771c0 && this.f5772d0 != null && this.f5770b0) || m3505E(this.f5760R) || m3505E(this.f5772d0) || m3504D(this.f5742H0);
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i10) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i10);
        if (m3534d0()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f5760R, i10);
        }
        if (m3533c0()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f5772d0, i10);
        }
        if (m3535e0()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f5765W, i10);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i10) {
        boolean zOnLevelChange = super.onLevelChange(i10);
        if (m3534d0()) {
            zOnLevelChange |= this.f5760R.setLevel(i10);
        }
        if (m3533c0()) {
            zOnLevelChange |= this.f5772d0.setLevel(i10);
        }
        if (m3535e0()) {
            zOnLevelChange |= this.f5765W.setLevel(i10);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // p258z3.C3725k, android.graphics.drawable.Drawable, p192s3.InterfaceC3195i
    public final boolean onStateChange(int[] iArr) {
        if (this.f5758P0) {
            super.onStateChange(iArr);
        }
        return m3511G(iArr, this.f5746J0);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j10);
        }
    }

    @Override // p258z3.C3725k, android.graphics.drawable.Drawable
    public final void setAlpha(int i10) {
        if (this.f5739E0 != i10) {
            this.f5739E0 = i10;
            invalidateSelf();
        }
    }

    @Override // p258z3.C3725k, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f5740F0 != colorFilter) {
            this.f5740F0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // p258z3.C3725k, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f5742H0 != colorStateList) {
            this.f5742H0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // p258z3.C3725k, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f5744I0 != mode) {
            this.f5744I0 = mode;
            ColorStateList colorStateList = this.f5742H0;
            this.f5741G0 = (colorStateList == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z9, boolean z10) {
        boolean visible = super.setVisible(z9, z10);
        if (m3534d0()) {
            visible |= this.f5760R.setVisible(z9, z10);
        }
        if (m3533c0()) {
            visible |= this.f5772d0.setVisible(z9, z10);
        }
        if (m3535e0()) {
            visible |= this.f5765W.setVisible(z9, z10);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* JADX INFO: renamed from: y */
    public final void m3536y(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f5765W) {
            if (drawable.isStateful()) {
                drawable.setState(this.f5746J0);
            }
            drawable.setTintList(this.f5767Y);
            return;
        }
        Drawable drawable2 = this.f5760R;
        if (drawable == drawable2 && this.f5763U) {
            drawable2.setTintList(this.f5761S);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    /* JADX INFO: renamed from: z */
    public final void m3537z(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (m3534d0() || m3533c0()) {
            float f8 = this.f5776h0 + this.f5777i0;
            Drawable drawable = this.f5737C0 ? this.f5772d0 : this.f5760R;
            float intrinsicWidth = this.f5762T;
            if (intrinsicWidth <= 0.0f && drawable != null) {
                intrinsicWidth = drawable.getIntrinsicWidth();
            }
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f10 = rect.left + f8;
                rectF.left = f10;
                rectF.right = f10 + intrinsicWidth;
            } else {
                float f11 = rect.right - f8;
                rectF.right = f11;
                rectF.left = f11 - intrinsicWidth;
            }
            Drawable drawable2 = this.f5737C0 ? this.f5772d0 : this.f5760R;
            float fCeil = this.f5762T;
            if (fCeil <= 0.0f && drawable2 != null) {
                fCeil = (float) Math.ceil(AbstractC3203q.m5138a(24, this.f5784p0));
                if (drawable2.getIntrinsicHeight() <= fCeil) {
                    fCeil = drawable2.getIntrinsicHeight();
                }
            }
            float fExactCenterY = rect.exactCenterY() - (fCeil / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fCeil;
        }
    }
}
